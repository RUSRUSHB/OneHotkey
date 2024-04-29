# OneHotkey

This is a script that simplifies math formula inputs in OneNote, Word and PowerPoint with AutoHotKey script, e.g., \a for \alpha.

这是一个用于简化 OneNote, Word 和 PowerPoint 中数学公式输入的 AutoHotKey 脚本，例如，\a 代表 \alpha。

中文版帮助文档请见[README_CN.md](README_CN.md)。

This project is still updating.

## How to Use

1. Download and run `symbol_assist.exe`.
2. Input the code of the symbol, then press `Space` to get the symbol.
3. For editting the symbol mapping, please refer to `symbol_assist.ahk`. Edit it, compile it with converter such as `Ahk2Exe` , and run the compiled `.exe` file. If you need help, go to the [AutoHotKey official website](https://www.autohotkey.com).
4. To stop the script, right click the `H` icon in the system tray and select `Exit`.

## Symbol Mapping

### Overview

The script contains multiple symbol mappings, including Greek letters, math fonts, frequently used letters, and structures. The following is a list of some typical mappings. Make sure that you have enter the formula input mode with `Alt`+`=` in OneNote or Word, or `Ctrl`+`=` in PowerPoint.

|Code|Output|Category|Source|
|----|------|----|---|
|`\a`|$\alpha$|lowercase Greek letters|`\alpha `|
|`\D`|$\Delta$|uppercase Greek letters|`\Delta `|
|`\R`, `\C`, `\Z`, `\N`|$\mathbb{R}$, $\mathbb{C}$, $\mathbb{Z}$, $\mathbb{N}$|frequently used letters|`\doubleR `, ...|
|`\do X`, `\sc X`, `\fr X`|$\mathbb{X}$, $\mathcal{X}$, $\mathfrak{X}$|fancy letter forms|`\doubleX `, `\scriptX `, `\frakturX `|
|`\m3`, `\m4`, ...|3 by 3 empty matrix, ...|matrices|`[\matrix(@@&&)] `, ...|
|`x\h`, `x\~`, `x\d2`|$\hat{x}$, $\tilde{x}$, $\ddot{x}$|modifiers|`\hat  `, `\tilde  `, `\ddot  `|
|`\x`, `\X`, `\sq`, `\pa`|$\cdot$, $\times$, $\sqrt{\Box}$, $\parallel$|operators|`\cdot `, `\times`, `\sqrt  `, `\parallel `|
|`\pd`, `\inf`|$\partial$, $\infty$|frequently used symbols|`\partial `, `\infty `|
|`\ls`|$^\Box_\Box P$|left super-and-lowerscript|`^_ P `|

You shall notice that ` `(space) are commonly used, which is the key feature of OneNote formula input.

### Full Table

#### Greek Letters

`TODO`

## Code Editing Guide

The code of `symbol_assist_OneNote.ahk` is very easy to understand, even if you have not learn about `AutoHotKey`. For newcomers, the explanation of the code is as follows:

Each line of the code is a mapping of the input code to the output symbol. The format is `:parameters:input::output`. For example, `::\a::\alpha` means that when you input `\a`, the script will output `\alpha `.

Inside the first two colons (`::`), I added some parameters ` co?`:

|Parameter|Meaning|
|-|-|
|` `(Space)|Output formula only after pressing `Space` at the end of a code.|
|`c`|Case-sensitive. `\a` and `\A` are different.|
|`o`|Delete the `Space` you entered at the end.|
|`?`|Output formula even if you type something before the code. Otherwise, it will fail in cases like `x\h`|

You are recommended to learn more about `AutoHotKey` from its [website](https://www.autohotkey.com).