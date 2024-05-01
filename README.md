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

#### Frequently Used Letters

| Code | Output | Source | Code | Output | Source |
|------|--------|--------|------|--------|--------|
| `\pd` | $\partial$ | `\partial{Space}` | `\R` | $\mathbb{R}$ | `\doubleR{Space}` |
| `\Q` | $\mathbb{Q}$ | `\doubleQ{Space}` | `\Z` | $\mathbb{Z}$ | `\doubleZ{Space}` |
| `\N` | $\mathbb{N}$ | `\doubleN{Space}` | `\C` | $\mathbb{C}$ | `\doubleC{Space}` |
| `\J` | $\mathbb{J}$ | `\doubleJ{Space}` | `\inf` | $\infty$ | `\infty{Space}` |

#### Operators

| Code | Output | Source | Code | Output | Source |
|------|--------|--------|------|--------|--------|
| `\x` | $\cdot$ | `\cdot{Space}` | `\X` | $\times$ | `\times{Space}` |
| `\sq` | $\sqrt{\Box}$ | `\sqrt{Space 2}{Left}` | `\pa` | $\parallel$ | `\parallel{Space}` |
| `\ss` | $\subset$ | `\subset{Space}` | `\sse` | $\subseteq$ | `\subseteq{Space}` |
| `\op` | $\oplus$ | `\oplus{Space}` | `\ox` | $\otimes$ | `\otimes{Space}` |
| `\od` | $\odot$ | `\odot{Space}` | `\dd` | $\ddots$ | `\ddots{Space}` |
| `\cd` | $\cdots$ | `\cdots{Space}` | `\vd` | $\vdots$ | `\vdots{Space}` |
| `\map` | $\mapsto$ | `\mapsto{Space}` | `\pro` | $\propto$ | `\propto{Space}` |

#### Greek Letters

| Code | Output | Source | Code | Output | Source |
|------|--------|--------|------|--------|--------|
| `\a` | $\alpha$ | `\alpha{Space}` | `\b` | $\beta$ | `\beta{Space}` |
| `\e` | $\varepsilon$ | `\varepsilon{Space}` | `\k` | $\kappa$ | `\kappa{Space}` |
| `\d` | $\delta$ | `\delta{Space}` | `\D` | $\Delta$ | `\Delta{Space}` |
| `\s` | $\sigma$ | `\sigma{Space}` | `\S` | $\Sigma$ | `\Sigma{Space}` |
| `\l` | $\lambda$ | `\lambda{Space}` | `\L` | $\Lambda$ | `\Lambda{Space}` |
| `\t` | $\theta$ | `\theta{Space}` | `\T` | $\Theta$ | `\Theta{Space}` |
| `\p` | $\phi$ | `\phi{Space}` | `\P` | $\Phi$ | `\Phi{Space}` |
| `\o` | $\omega$ | `\omega{Space}` | `\O` | $\Omega$ | `\Omega{Space}` |
| `\g` | $\gamma$ | `\gamma{Space}` | `\G` | $\Gamma$ | `\Gamma{Space}` |

#### Matrix

| Code | Output | Source |
|------|--------|--------|
| `\m4` | 4 by 4 empty matrix | `[\matrix(@@@&&&){Space}]{Space}` |
| `\m3` | 3 by 3 empty matrix | `[\matrix(@@&&){Space}]{Space}` |
| `\m2` | 2 by 2 empty matrix | `[\matrix(@&){Space}]{Space}` |
| `\m` | empty matrix awaiting `&` `@` to set size. | `[]{Space}{Left}\matrix(){Left}` |

#### Modifiers

| Code | Output | Source |
|------|--------|--------|
| `\d1` | $\dot{x}$ | `\dot{Space 2}` |
| `\d2` | $\ddot{x}$ | `\ddot{Space 2}` |
| `\d3` | 3 dots above | `\dddot{Space 2}` |
| `\d4` | 4 dots above | `\ddddot{Space 2}` |
| `\~` | $\tilde{x}$ | `\tilde{Space 2}` |
| `\v` | $\vec{x}$ | `\vec{Space 2}` |
| `\h` | $\hat{x}$ | `\hat{Space 2}` |

#### Arrows

| Code | Output | Source | Code | Output | Source |
|------|--------|--------|------|--------|--------|
| `\lr` | $\leftrightarrow$ | `\leftrightarrow{Space}` | `\lrs` | $\leftrightarrows$ | `\leftrightarrows{Enter}{Left}` |
| `\la` | $\leftarrow$ | `\leftarrow{Space}` | `\La` | $\Leftarrow$ | `\Leftarrow{Space}` |
| `\down` | $\downarrow$ | `\downarrow{Space}` | `\up` | $\uparrow$ | `\uparrow{Space}` |
| `\ul` | $\nwarrow$ | `\nwarrow{Space}` | `\ur` | $\nearrow$ | `\nearrow{Space}` |
| `\dl` | $\swarrow$ | `\swarrow{Space}` | `\dr` | $\searrow$ | `\searrow{Space}` |

#### Symbols

| Code | Output | Source | Code | Output | Source |
|------|--------|--------|------|--------|--------|
| `\de` | $\degree$ | `\degree{Space}` | `\st` | $\star$ | `\star{Space}` |
| `\lc` | $\lceil$ | `\lceil{Space}` | `\rc` | $\rceil$ | `\rceil{Space}` |
| `\lf` | $\lfloor$ | `\lfloor{Space}` | `\rf` | $\rfloor$ | `\rfloor{Space}` |

#### Structures

| Code | Output | Source |
|------|--------|--------|
| `\ls` | $^\Box_\Box P$ | `^_ P {Left 4}` |
| `\fu` | $\text{myfunction}{\Box}$ | `\funcapply  ` |

#### Prefix for Fancy Letters

| Code | Output | Source |
|------|--------|--------|
| `\sc` | $\mathcal{X}$ | `\script` |
| `\do` | $\mathbb{X}$ | `\double` |
| `\fr` | $\mathfrak{X}$ | `\fraktur` |


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