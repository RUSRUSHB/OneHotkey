-- Core math and structure hotstring rules for OneHotkey on macOS (Hammerspoon)
-- This file defines data only; the matching/expansion engine lives in init.lua.

local M = {}

-- Each rule:
--   trigger:   the typed sequence that should trigger expansion (e.g. "\\a")
--   replacement: text to insert (literal, will be sent via hs.eventtap.keyStrokes)
--   postActions: optional list of key actions, each:
--       { type = "key", key = "return" | "left" | "right" | ... , count = N (default 1) }
--   contexts: optional list of allowed app names (frontmostApplication():name())

---@type { trigger: string, replacement: string, postActions?: table[], contexts?: string[] }[]
M.rules = {
  ---------------------------------------------------------------------------
  -- Frequently used letters and symbols
  ---------------------------------------------------------------------------
  { trigger = [[\pd]], replacement = [[\partial ]], postActions = {} },
  { trigger = [[\R]], replacement = [[\doubleR ]], postActions = {} },
  { trigger = [[\N]], replacement = [[\doubleN ]], postActions = {} },
  { trigger = [[\C]], replacement = [[\doubleC ]], postActions = {} },
  { trigger = [[\inf]], replacement = [[\infty ]], postActions = {} },
  { trigger = [[\oo]], replacement = [[\infty ]], postActions = {} },

  ---------------------------------------------------------------------------
  -- Operators
  ---------------------------------------------------------------------------
  { trigger = [[\x]], replacement = [[\cdot ]], postActions = {} },
  { trigger = [[\X]], replacement = [[\times ]], postActions = {} },
  { trigger = [[\sq]], replacement = [[\sqrt  ]], postActions = {
      { type = "key", key = "left", count = 1 },
    } },
  { trigger = [[\pa]], replacement = [[\parallel ]], postActions = {} },
  { trigger = [[\ss]], replacement = [[\subset ]], postActions = {} },
  { trigger = [[\sse]], replacement = [[\subseteq ]], postActions = {} },
  { trigger = [[\op]], replacement = [[\oplus ]], postActions = {} },
  { trigger = [[\ox]], replacement = [[\otimes ]], postActions = {} },
  { trigger = [[\od]], replacement = [[\odot ]], postActions = {} },
  { trigger = [[\dd]], replacement = [[\ddots ]], postActions = {} },
  { trigger = [[\cd]], replacement = [[\cdots ]], postActions = {} },
  { trigger = [[\vd]], replacement = [[\vdots ]], postActions = {} },
  { trigger = [[\map]], replacement = [[\mapsto ]], postActions = {} },
  { trigger = [[\pro]], replacement = [[\propto ]], postActions = {} },
  { trigger = [[\as]], replacement = [[\because ]], postActions = {} },
  { trigger = [[\so]], replacement = [[\therefore ]], postActions = {} },
  { trigger = [[\eq]], replacement = [[\equiv ]], postActions = {} },
  { trigger = [[\ex]], replacement = [[\exists ]], postActions = {} },
  { trigger = [[\fa]], replacement = [[\forall ]], postActions = {} },

  ---------------------------------------------------------------------------
  -- Greek letters
  ---------------------------------------------------------------------------
  { trigger = [[\a]], replacement = [[\alpha ]], postActions = {} },
  { trigger = [[\b]], replacement = [[\beta ]], postActions = {} },
  { trigger = [[\e]], replacement = [[\varepsilon ]], postActions = {} },
  { trigger = [[\ve]], replacement = [[\epsilon ]], postActions = {} },
  { trigger = [[\de]], replacement = [[\delta ]], postActions = {} },
  { trigger = [[\D]], replacement = [[\Delta ]], postActions = {} },
  { trigger = [[\s]], replacement = [[\sigma ]], postActions = {} },
  { trigger = [[\S]], replacement = [[\Sigma ]], postActions = {} },
  { trigger = [[\l]], replacement = [[\lambda ]], postActions = {} },
  { trigger = [[\L]], replacement = [[\Lambda ]], postActions = {} },
  { trigger = [[\t]], replacement = [[\theta ]], postActions = {} },
  { trigger = [[\T]], replacement = [[\Theta ]], postActions = {} },
  { trigger = [[\p]], replacement = [[\phi ]], postActions = {} },
  { trigger = [[\P]], replacement = [[\Phi ]], postActions = {} },
  { trigger = [[\o]], replacement = [[\omega ]], postActions = {} },
  { trigger = [[\O]], replacement = [[\Omega ]], postActions = {} },
  { trigger = [[\g]], replacement = [[\gamma ]], postActions = {} },
  { trigger = [[\G]], replacement = [[\Gamma ]], postActions = {} },
  { trigger = [[\n]], replacement = [[\nabla ]], postActions = {} },

  ---------------------------------------------------------------------------
  -- Modifiers
  ---------------------------------------------------------------------------
  { trigger = [[\d1]], replacement = [[\dot  ]], postActions = {} },
  { trigger = [[\d2]], replacement = [[\ddot  ]], postActions = {} },
  { trigger = [[\d3]], replacement = [[\dddot  ]], postActions = {} },
  { trigger = [[\d4]], replacement = [[\ddddot  ]], postActions = {} },
  { trigger = [[\~]], replacement = [[\tilde  ]], postActions = {} },
  { trigger = [[\v]], replacement = [[\vec  ]], postActions = {} },
  { trigger = [[\h]], replacement = [[\hat  ]], postActions = {} },

  ---------------------------------------------------------------------------
  -- Imaginary / quaternion symbols
  ---------------------------------------------------------------------------
  { trigger = [[\i]], replacement = [[i ]], postActions = {} },
  { trigger = [[\j]], replacement = [[j ]], postActions = {} },
  { trigger = [[\k]], replacement = [[k ]], postActions = {} },

  ---------------------------------------------------------------------------
  -- Simple structures & limits
  ---------------------------------------------------------------------------
  { trigger = [[\ceil]], replacement = [[\lceil \rceil  ]], postActions = {
      { type = "key", key = "left", count = 1 },
    } },
  { trigger = [[\floor]], replacement = [[\lfloor \rfloor  ]], postActions = {
      { type = "key", key = "left", count = 1 },
    } },
  { trigger = [[\limx]], replacement = [[lim_(x->\infty ) ]], postActions = {} },
  { trigger = [[\limx0]], replacement = [[lim_(x->0 ) ]], postActions = {} },
  { trigger = [[\limt]], replacement = [[lim_(t->\infty ) ]], postActions = {} },
  { trigger = [[\limt0]], replacement = [[lim_(t->0 ) ]], postActions = {} },
  { trigger = [[\limn]], replacement = [[lim_(n->\infty ) ]], postActions = {} },
  { trigger = [[\limk]], replacement = [[lim_(k->\infty ) ]], postActions = {} },
  { trigger = [[\limh]], replacement = [[lim_(h->0 ) ]], postActions = {} },

  ---------------------------------------------------------------------------
  -- Degree, star, scientific notation
  ---------------------------------------------------------------------------
  { trigger = [[\deg]], replacement = [[\degree ]], postActions = {} },
  { trigger = [[\st]], replacement = [[\star ]], postActions = {} },
  { trigger = [[\xe]], replacement = [[\times 10^ ]], postActions = {
      { type = "key", key = "left", count = 1 },
    } },

  ---------------------------------------------------------------------------
  -- Proof / theorem / question blocks (textual)
  ---------------------------------------------------------------------------
  { trigger = [[\pf]], replacement = [[Proof. 

!= #\qed
]], postActions = {
      -- Move cursor back before the "= #\\qed" line (approximation of AHK behavior)
      { type = "key", key = "up", count = 1 },
      { type = "key", key = "up", count = 1 },
    } },
  { trigger = [[\thm]], replacement = [[Theorem. ]], postActions = {} },
  { trigger = [[\que]], replacement = [[Question. ]], postActions = {} },
}

return M

