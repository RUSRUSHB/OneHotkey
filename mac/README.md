## OneHotkey macOS 使用说明（Hammerspoon 版）

本目录包含 OneHotkey 在 macOS 上的原型实现，通过 **Hammerspoon + Lua** 模拟 Windows 版 `OneHotkey.ahk` 的核心热字符串功能（数学符号、结构模板等），不提供 UI，只作为后台常驻工具使用。

- 核心代码位置：
  - `mac/hammerspoon/init.lua`：Hammerspoon 入口脚本（引擎 + 上下文判断）。
  - `mac/hammerspoon/rules_core.lua`：首批热字符串规则表（数据配置）。

下面分步骤说明在 macOS 上如何配置和自定义。

---

## 一、安装与基础配置

1. **在 macOS 上安装 Hammerspoon**
   - 前往 Hammerspoon 官网下载并安装。
   - 首次启动后，按提示在「系统设置 → 隐私与安全性 → 辅助功能」中勾选 Hammerspoon，允许其控制键盘输入。

2. **让 Hammerspoon 能找到仓库中的脚本**

   推荐做法是：在用户目录下使用 Hammerspoon 默认配置路径 `~/.hammerspoon/`，然后从这里引用仓库里的 `mac/hammerspoon`。

   假设你的仓库路径是：

   ```text
   ~/Code/OneHotkey
   ```

   则有两种常见方式：

   - **方式 A：复制代码到配置目录（最简单）**
     1. 创建目录（如不存在）：
        ```bash
        mkdir -p ~/.hammerspoon/mac/hammerspoon
        ```
     2. 将仓库中的脚本复制过去：
        ```bash
        cp -r ~/Code/OneHotkey/mac/hammerspoon/* ~/.hammerspoon/mac/hammerspoon/
        ```
     3. 在 `~/.hammerspoon/init.lua` 中加入：
        ```lua
        require("mac.hammerspoon.init")
        ```

   - **方式 B：使用符号链接（保持与仓库同步）**
     1. 确保 `~/.hammerspoon` 存在：
        ```bash
        mkdir -p ~/.hammerspoon/mac
        ```
     2. 在 `~/.hammerspoon/mac` 下创建指向仓库的链接：
        ```bash
        ln -s ~/Code/OneHotkey/mac/hammerspoon ~/.hammerspoon/mac/hammerspoon
        ```
     3. 在 `~/.hammerspoon/init.lua` 中加入同样一行：
        ```lua
        require("mac.hammerspoon.init")
        ```

3. **重载 Hammerspoon 配置**
   - 点击菜单栏中的 Hammerspoon 图标，选择「Reload Config」。
   - 如果配置正确，会在屏幕右上角弹出提示：
     ```text
     OneHotkey macOS prototype loaded
     ```

---

## 二、如何在应用中使用

1. **默认启用的应用**

   在 `mac/hammerspoon/init.lua` 中有一个应用白名单：

   ```lua
   local allowedApps = {
     ["Microsoft Word"] = true,
     ["OneNote"] = true,
     ["Notion"] = true,
     ["Pages"] = true,
   }
   ```

   只有当前前台应用的名称在这个表里时，OneHotkey 的热字符串才会生效。  
   - 你可以按需添加/删除条目，例如加入 `["Visual Studio Code"] = true`。

2. **触发方式（热字符串）**

   - 行为类似 AutoHotkey 的 `::\code::展开内容`：
     - 在白名单应用里输入特定前缀，比如：
       - `\a` → 展开为 `\alpha `。
       - `\inf` 或 `\oo` → 展开为 `\infty `。
       - `\sq` → 展开为 `\sqrt  ` 并把光标移动到根号内部。
   - 脚本通过监听你最近输入的字符，自动匹配 `rules_core.lua` 中的 `trigger` 字符串并完成替换和光标移动。

3. **注意事项**

   - 这是基于「模拟键盘输入」的方案，具体效果可能会随目标应用的编辑器实现略有差异，需要实际尝试微调。
   - 如果在某个应用中行为异常，可以先从 `allowedApps` 里移除它，或只在 Word / OneNote 中使用。

---

## 三、如何修改配置（重点）

### 1. 控制在哪些应用中生效

编辑 `mac/hammerspoon/init.lua` 顶部的 `allowedApps` 表：

```lua
local allowedApps = {
  ["Microsoft Word"] = true,
  ["OneNote"] = true,
  ["Notion"] = true,
  ["Pages"] = true,
}
```

- **添加新应用**：增加一行，例如：

  ```lua
  ["Visual Studio Code"] = true,
  ```

- **关闭某个应用**：把对应条目删除或改成 `false`。

应用名称可以在 Hammerspoon 控制台里打印 `hs.application.frontmostApplication():name()` 来确认，也可以先在菜单栏看到的名称为准尝试。

### 2. 添加 / 修改热字符串规则

所有规则都在 `mac/hammerspoon/rules_core.lua` 中，用一个 Lua 表来描述。例如：

```lua
{ trigger = [[\a]], replacement = [[\alpha ]], postActions = {} },
```

每条规则字段含义：

- **`trigger`**：触发字符串（你键盘实际输入的内容），例如：
  - `[[\a]]`、`[[\pd]]`、`[[\limx]]`。
- **`replacement`**：要插入的文本内容，通常是 OneNote/Word 公式语法，例如：
  - `[[\alpha ]]`、`[[\partial ]]`、`[[lim_(x->\infty ) ]]`。
- **`postActions`**（可选）：替换后要额外发送的按键动作列表，例如移动光标：

  ```lua
  postActions = {
    { type = "key", key = "left", count = 1 },
  }
  ```

典型示例：

- **简单替换：**

  ```lua
  { trigger = [[\inf]], replacement = [[\infty ]], postActions = {} },
  ```

- **需要把光标移动回去的结构（如 `\sqrt`）：**

  ```lua
  { trigger = [[\sq]], replacement = [[\sqrt  ]], postActions = {
      { type = "key", key = "left", count = 1 },
    } },
  ```

> 建议：从你最常用的 20–50 条规则开始迁移和调整，确认行为 OK 后再继续扩展。

### 3. 分模块维护（可选）

如果规则越来越多，可以把它们拆成多个文件（例如 `rules_math.lua`、`rules_structure.lua`），然后在 `init.lua` 里统一 `require` 并合并 `rules` 表，保持结构清晰。当前版本先放在一个 `rules_core.lua` 里，便于你快速上手。

---

## 四、调试与常见问题

- **看不到 “OneHotkey macOS prototype loaded” 提示**
  - 检查 `~/.hammerspoon/init.lua` 中是否有 `require("mac.hammerspoon.init")`。
  - 检查 `mac/hammerspoon/init.lua` 路径是否正确（复制/链接是否成功）。

- **在目标应用中没有触发任何规则**
  - 确认该应用的名称是否在 `allowedApps` 表中。
  - 确认 Hammerspoon 在系统设置中已经获得「辅助功能」权限。

- **替换后光标位置不对**
  - 可以在对应规则的 `postActions` 中调整 `left` / `right` 的 `count` 值，通过反复实验微调。

---

如果你后续在 macOS 上增加新的规则文件或配置结构，也可以继续在 `mac/` 下补充文档，保持 Windows 版和 macOS 版的规则一一对应、易于维护。 

