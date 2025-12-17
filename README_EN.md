# OneHotkey -- Math Formula Input Simplification Tool

This is a script that simplifies math formula inputs in `OneNote` and `Word` with `AutoHotKey` script, e.g., `\a` for $\alpha$ (`\alpha`).

Demonstration video (Early version):

- [AutoHotKey增强OneNote公式输入_测试1_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1Jp421S78r/)

This project is still updating. Your suggestions and contributions are welcome.

If the formulas aren't displayed correctly, go to [README_EN.pdf](README_EN.pdf).

## How to Use

1. Download and run [OneHotkey.exe](https://github.com/RUSRUSHB/OneHotkey/raw/main/OneHotkey.exe).
2. Input the code of the symbol, then press `Space` to get the symbol. For example, input `\a` and press `Space` to get $\alpha$.
3. For editting the symbol mapping, please refer to [Code Editing Guide](#code-editing-guide). If you need help, go to the [AutoHotKey official website](https://www.autohotkey.com).
4. To stop the script, right click the `H` icon in the system tray and select `Exit`.

## Table of Contents

<!-- TOC -->

- [OneHotkey -- Math Formula Input Simplification Tool](#onehotkey----math-formula-input-simplification-tool)
  - [How to Use](#how-to-use)
  - [Table of Contents](#table-of-contents)
  - [Symbol Mapping](#symbol-mapping)
    - [Overview](#overview)
    - [Full Table](#full-table)
      - [Frequently Used Letters](#frequently-used-letters)
      - [Operators](#operators)
      - [Greek Letters](#greek-letters)
      - [Matrix](#matrix)
      - [Modifiers](#modifiers)
      - [Arrows](#arrows)
      - [Symbols](#symbols)
      - [Structures](#structures)
      - [Prefix for Fancy Letters](#prefix-for-fancy-letters)
      - [Multi-column Equations](#multi-column-equations)
  - [Recommendations](#recommendations)
  - [Experimental Features (In folder `experimental/`)](#experimental-features-in-folder-experimental)
  - [Code Editing Guide](#code-editing-guide)

<!-- /TOC -->

## Symbol Mapping

### Overview

The script contains multiple symbol mappings, including Greek letters, math fonts, frequently used letters, and structures. The following is a list of some typical mappings. Make sure that you have entered the formula input mode with `Alt`+`=`.

|Code|Output|Category|Source|
|----|------|----|---|
|`\a`| $\alpha$ |lowercase Greek letters|`\alpha `|
|`\D`| $\Delta$ |uppercase Greek letters|`\Delta `|
|`\R`, `\C`, `\Z`, `\N`, `\J`| ℝ, ℂ, ℤ, ℕ, 𝕁 |frequently used letters|`\doubleR `, ...|
|`\do X`, `\sc X`, `\fr X`| 𝕏, 𝒳, 𝔛 |fancy letter forms|`\doubleX `, `\scriptX `, `\frakturX `|
|`\m3`, `\m4`, ...|specific shape matrices|matrices|`[\matrix(@@&&)] `, ...|
|`x\h`, `x\~`, `x\d2`| $\hat{x}$, $\tilde{x}$, $\ddot{x}$ |modifiers|`\hat  `, `\tilde  `, `\ddot  `|
|`\x`, `\X`, `\sq`, `\pa`, `\eq`| $\cdot$, $\times$, $\sqrt{⬚}$, $\parallel$, $\equiv$ |operators|`\cdot `, `\times`, `\sqrt  `, `\parallel `, `\equiv`|
|`\pd`, `\di`, `\dt`, `\inf`| $\partial$, $\text{d}$, $\frac{\text{d}}{\text{d}t}$, $\infty$ |frequently used symbols|`\partial `, `"d" `, `"d" /"d" t `, `\infty `|
|`\limx`, `\limx0`| $ \lim_{x \rightarrow \infty} $, $ \lim_{x \rightarrow 0} $ |limits|`lim_(x->\infty ) `, `lim_(x->0 ) `|
|`\ls`| $^⬚_⬚ P$ |left super-and-lowerscript|`^_ P `|
|`\i`, `\j`, `\k`| $\text{i}$, $\text{j}$, $\text{k}$ |imaginary/quaternion symbols|`"i"`, `"j"`, `"k"`|
|`\ejw`| $e^{j\omega}$ |complex exponential factor|`e^j\omega  `|

You shall notice that ` `(space) is commonly used, which is the key feature of OneNote formula input.

### Full Table

#### Frequently Used Letters

| Code | Output | Source | Code | Output | Source |
|------|--------|--------|------|--------|--------|
| `\pd` | $\partial$ | `\partial{Space}` |`\di`|$\text{d}$|`"d"`|
| `\inf` | $\infty$ | `\infty{Space}` | `\dt` | $\frac{\text{d}}{\text{d}t}$ | `"d"{Space}/"d"{Space}t{Space}` |
| `\R` | $\mathbb{R}$ | `\doubleR{Space}` | `\E`|$\mathbb{E}[⬚]$|`\doubleE{Space}[]{Space}{Left}`|
| `\Q` | $\mathbb{Q}$ | `\doubleQ{Space}` | `\Z` | $\mathbb{Z}$ | `\doubleZ{Space}` |
| `\N` | $\mathbb{N}$ | `\doubleN{Space}` | `\C` | $\mathbb{C}$ | `\doubleC{Space}` |
| `\J` | $\mathbb{J}$ | `\doubleJ{Space}` | `\n` | $\nabla$ | `\nabla{Space}` |

#### Operators

| Code | Output | Source | Code | Output | Source |
|------|--------|--------|------|--------|--------|
| `\x` | $\cdot$ | `\cdot{Space}` | `\X` | $\times$ | `\times{Space}` |
| `\sq` | $\sqrt{⬚}$ | `\sqrt{Space 2}{Left}` | `\pa` | $\parallel$ | `\parallel{Space}` |
| `\ss` | $\subset$ | `\subset{Space}` | `\sse` | $\subseteq$ | `\subseteq{Space}` |
| `\op` | $\oplus$ | `\oplus{Space}` | `\ox` | $\otimes$ | `\otimes{Space}` |
| `\od` | $\odot$ | `\odot{Space}` | `\dd` | $\ddots$ | `\ddots{Space}` |
| `\cd` | $\cdots$ | `\cdots{Space}` | `\vd` | $\vdots$ | `\vdots{Space}` |
| `\map` | $\mapsto$ | `\mapsto{Space}` | `\pro` | $\propto$ | `\propto{Space}` |
| `\as` | $\because$ | `\because{Space}` | `\so` | $\therefore$ | `\therefore{Space}` |
| `\eq` | $\equiv$ | `\equiv{Space}` | `\xe` | $\times 10^{⬚}$ | `\times{Space}10{^}{Space}{Left}` |
| `\ex` | $\exists$ | `\exists{Space}` | `\fa` | $\forall$ | `\forall{Space}` |
| `\ppd` | $\frac{\partial}{\partial}$ | `\partial{Space}/\partial{Space 2}{Left 3}` |

#### Greek Letters

| Code | Output | Source | Code | Output | Source |
|------|--------|--------|------|--------|--------|
| `\a` | $\alpha$ | `\alpha{Space}` | `\b` | $\beta$ | `\beta{Space}` |
| `\e` | $\varepsilon$ | `\varepsilon{Space}` | `\ve` | $\epsilon$ | `\epsilon{Space}` |
| `\d` | $\delta$ | `\delta{Space}` | `\D` | $\Delta$ | `\Delta{Space}` |
| `\s` | $\sigma$ | `\sigma{Space}` | `\S` | $\Sigma$ | `\Sigma{Space}` |
| `\l` | $\lambda$ | `\lambda{Space}` | `\L` | $\Lambda$ | `\Lambda{Space}` |
| `\t` | $\theta$ | `\theta{Space}` | `\T` | $\Theta$ | `\Theta{Space}` |
| `\p` | $\phi$ | `\phi{Space}` | `\P` | $\Phi$ | `\Phi{Space}` |
| `\o` | $\omega$ | `\omega{Space}` | `\O` | $\Omega$ | `\Omega{Space}` |
| `\g` | $\gamma$ | `\gamma{Space}` | `\G` | $\Gamma$ | `\Gamma{Space}` |

- `ve` means variant epsilon. For convenience, `\e` is set to $\varepsilon$ and `\ve` is set to $\epsilon$, which is different from their original code.

#### Matrix

| Code | Output | Source |
|------|--------|--------|
| `\m4` | 4 by 4 empty matrix | `[\matrix(@@@&&&){Space}]{Space}` |
| `\m3` | 3 by 3 empty matrix | `[\matrix(@@&&){Space}]{Space}` |
| `\m2` | 2 by 2 empty matrix | `[\matrix(@&){Space}]{Space}` |
| `\m` | empty matrix awaiting `&` `@` to set size | `[]{Space}{Left}\matrix(){Left}` |

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
| `\ub` | $\underline{x}$ | `\underbar{Space 2}{Left}` |

- For the above codes, you should input like `x\h  `.

#### Arrows

| Code | Output | Source | Code | Output | Source |
|------|--------|--------|------|--------|--------|
| `\lr` | $\leftrightarrow$ | `\leftrightarrow{Space}` | `\Lr` | $\Leftrightarrow$ | `\Leftrightarrow{Space}` |
| `\lrs` | $\leftrightarrows$ | `\leftrightarrows{Enter}{Left}` | `\la` | $\leftarrow$ | `\leftarrow{Space}` |
| `\La` | $\Leftarrow$ | `\Leftarrow{Space}` | `\ra` | $\rightarrow$ | `\rightarrow{Space}` |
| `\Ra` | $\Rightarrow$ | `\Rightarrow{Space}` | `\down` | $\downarrow$ | `\downarrow{Space}` |
| `\up` | $\uparrow$ | `\uparrow{Space}` |

#### Symbols

| Code | Output | Source | Code | Output | Source |
|------|--------|--------|------|--------|--------|
| `\de` | $\degree$ | `\degree{Space}` | `\st` | $\star$ | `\star{Space}` |

#### Structures

| Code | Output | Source |
|------|--------|--------|
| `\r` | $\lbrace⬚$ | `\right.{Left}` |
| `\leb` | $⬚\rbrace$ | `\left\box{Space 2}{Left}` |
| `\ceil` | $\lceil⬚\rceil$ | `\lceil{Space}\rceil{Space 2}{Left}` |
| `\floor` | $\lfloor⬚\rfloor$ | `\lfloor{Space}\rfloor{Space 2}{Left}` |
| `\brak` | ⟨⬚⟩ |`\bra{Space}\ket{Space 2}{Left}`|
| `\ls` | $^⬚_⬚ P$ | `^_ P {Left 4}` |
| `\ab` | $\stackrel{⬚}{x}$ | `\above{Space 2}{Left}` |
| `\be` | $\underset{⬚}{x}$ | `\below{Space 2}{Left}` |
| `\abb` | $\overbrace{x}$ | `\overbrace{Space 2}` |
| `\beb` | $\underbrace{x}$ | `\underbrace{Space 2}` |
| `\fu` | $\text{myfunction}{⬚}$ | `\funcapply  ` |
| `\Norm` | $\Vert⬚\Vert$ | `\norm{Space}\norm{Space 2}{Left}` |
| `\limx`, `\limx0` | $ \lim_{x \rightarrow \infty} $, $ \lim_{x \rightarrow 0} $ | `lim_(x->\infty{Space}){Space}`, `lim_(x->0{Space}){Space}` |
| `\limt`, `\limt0` | $ \lim_{t \rightarrow \infty} $, $ \lim_{t \rightarrow 0} $ | `lim_(t->\infty{Space}){Space}`, `lim_(t->0{Space}){Space}` |
| `\limn`, `\limk` | $ \lim_{n \rightarrow \infty} $, $ \lim_{k \rightarrow \infty} $ | `lim_(n->\infty{Space}){Space}`, `lim_(k->\infty{Space}){Space}` |
| `\limh` | $ \lim_{h \rightarrow 0} $ | `lim_(h->0{Space}){Space}` |
| `\BO` | $\boxed{⬚}$ | `\boxed{Enter}{Left 2}` |
| `\qu` | $\quad$ | `\quad{Enter}{Left}` |
| `\diverge` | $\frac{\partial}{\partial x}+\frac{\partial}{\partial y}+\frac{\partial}{\partial z}$ | `\partial/\partial{Space}x{Space}{+}\partial/\partial{Space}y{Space}{+}\partial/\partial{Space}z{Space}` |
| `\gradient` | $\frac{\partial}{\partial x}\vec{a}_x+\frac{\partial}{\partial y}\vec{a}_y+\frac{\partial}{\partial z}\vec{a}_z$ | `\partial/\partial{Space}x{Space}a\vec_x{+}\partial/\partial{Space}y{Space}a\vec_y{+}\partial/\partial{Space}z{Space}a\vec_z{Space}` |
| `\curl` | Curl matrix |  |

- `\funcapply` is a little different from `\of`. Have a try by yourself!

#### Prefix for Fancy Letters

| Code | Output | Source |
|------|--------|--------|
| `\sc` | $\mathcal{X}$ | `\script` |
| `\do` | $\mathbb{X}$ | `\double` |
| `\fr` | $\mathfrak{X}$ | `\fraktur` |

- For these mappings, your input should be like `\sc X `.

#### Multi-column Equations
| Code | Output | Source |
|------|--------|--------|
| `\eq2` | Two-column equation | `\eqarray(&=@&=){Space}{Left 6}` |
| `\eq3` | Three-column equation | `\eqarray(&=@&=@&=){Space}{Left 9}` |
| `\eq4` | Four-column equation | `\eqarray(&=@&=@&=@&=){Space}{Left 12}` |
| `\eq5` | Five-column equation | `\eqarray(&=@&=@&=@&=@&=){Space}{Left 15}` |

Note: Multi-column equations are used for aligning multiple equations, using `@` as placeholder and `&` as alignment point.

## Recommendations

- Learn more about the math input from this document: [UTN28-PlainTextMath-v3.pdf](https://www.unicode.org/notes/tn28/UTN28-PlainTextMath-v3.pdf). Page 39~47 is useful.
- Input Unicode characters directly: <https://github.com/gtj1/symbol_assist>
- Intuitive Vim-like text cursor control: <https://github.com/RUSRUSHB/AutoTextCursor>

## Experimental Features (In folder `experimental/`)

`key_combination.exe`

- Use key combinations to input special characters and structures
- Contains: Start formula inputting; Division line; Boxed text; Text block

`rus_hotkey.exe`

- Input Russian alphabets. They can be integrated into formula inputting.
- Format: `\`+Romanized Alphabet+`R`
- e.g.,`\dR` generates д，`\DR` generates Д

## Code Editing Guide

For editing the mapping, please: Edit `OneHotkey.ahk`, compile it with `Ahk2Exe`, and run the compiled `.exe` file. You are recommended to learn more about `AutoHotKey` from its [website](https://www.autohotkey.com).

The code of `OneHotkey.ahk` is very easy to understand, even if you have not learnt about `AutoHotKey`. For newcomers, the explanation of the code is as follows:

Each line of the code is a mapping of the input code to the output symbol. The format is `:(parameters):input::output`. For example, `::\a::\alpha ` means that when you input `\a`, the script will output `\alpha `.

I added some parameters `co?`:

|Parameter|Meaning|
|-|-|
|`c`|Case-sensitive. `\a` and `\A` are different.|
|`o`|Delete the `Space` you entered at the end.|
|`?`|Output formula even if you have typed something before the code. Otherwise, it will fail in cases like `x\h`|
