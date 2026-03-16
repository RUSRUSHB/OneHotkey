-- OneHotkey macOS prototype using Hammerspoon
--
-- This file is intended to be symlinked or copied into ~/.hammerspoon/init.lua
-- on macOS. It implements:
--   - a simple app-based context filter
--   - a minimal hotstring engine based on recent typed characters
--   - expansion of rules defined in mac/hammerspoon/rules_core.lua

local eventtap = hs.eventtap
local keycodes = hs.keycodes

-- Configure which apps should have OneHotkey-style expansions enabled.
local allowedApps = {
  ["Microsoft Word"] = true,
  ["OneNote"] = true,
}

-- Load core rules
local rulesCore = require("mac.hammerspoon.rules_core")
local rules = rulesCore.rules or {}

-- Build lookup table by trigger for quick matching
local ruleByTrigger = {}
local maxTriggerLen = 0
for _, rule in ipairs(rules) do
  ruleByTrigger[rule.trigger] = rule
  if #rule.trigger > maxTriggerLen then
    maxTriggerLen = #rule.trigger
  end
end

-- Buffer of recent characters (plain text)
local buffer = ""
local maxBufferLen = math.max(maxTriggerLen + 2, 32)

-- Helpers ---------------------------------------------------------------------

local function isContextAllowed()
  local app = hs.application.frontmostApplication()
  if not app then
    return false
  end
  local name = app:name()
  if not name then
    return false
  end
  if allowedApps[name] then
    return true
  end
  return false
end

local function sendKeys(str)
  hs.eventtap.keyStrokes(str)
end

local function sendKeyAction(action)
  local count = action.count or 1
  for _ = 1, count do
    hs.eventtap.keyStroke({}, action.key, 0)
  end
end

local function applyRule(rule)
  -- Delete the trigger characters
  local triggerLen = #rule.trigger
  for _ = 1, triggerLen do
    hs.eventtap.keyStroke({}, "delete", 0)
  end

  -- Insert replacement text
  if rule.replacement and #rule.replacement > 0 then
    sendKeys(rule.replacement)
  end

  -- Execute post actions
  if rule.postActions then
    for _, action in ipairs(rule.postActions) do
      if action.type == "key" and action.key then
        sendKeyAction(action)
      end
    end
  end
end

local function tryMatch()
  -- Only attempt to match if context (frontmost app) is allowed
  if not isContextAllowed() then
    return false
  end

  -- Check suffixes of buffer, longest trigger first
  local len = #buffer
  if len == 0 then
    return false
  end

  local startIdx = math.max(1, len - maxTriggerLen + 1)
  for i = startIdx, len do
    local candidate = buffer:sub(i, len)
    local rule = ruleByTrigger[candidate]
    if rule then
      applyRule(rule)
      -- Trim buffer: remove everything up to len (we just consumed the end)
      buffer = buffer:sub(1, i - 1)
      return true
    end
  end

  return false
end

-- Event tap to watch key presses ---------------------------------------------

local keyTap = eventtap.new({ eventtap.event.types.keyDown }, function(ev)
  -- Ignore if this is not a plain character (e.g. modifiers only)
  local chars = ev:getCharacters()
  if not chars or #chars == 0 then
    return false
  end

  -- Update buffer
  buffer = buffer .. chars
  if #buffer > maxBufferLen then
    buffer = buffer:sub(#buffer - maxBufferLen + 1)
  end

  -- Try to match hotstring
  tryMatch()

  return false -- do not block the event
end)

keyTap:start()

hs.alert.show("OneHotkey macOS prototype loaded")

