# OneHotkey -- 公式输入简化工具

这是一个用于简化 `OneNote`, `Word` 和 `PowerPoint` 中数学公式输入的 `AutoHotKey` 脚本，例如，`\a` 代表 $\alpha$ (`\alpha`)。

This is a script that simplifies math formula inputs in `OneNote`, `Word` and `PowerPoint` with `AutoHotKey` script, e.g., `\a` for $\alpha$ (`\alpha`).

English version of introduction: [README_EN.md](README_EN.md)

展示视频（早期版本）：

[AutoHotKey增强OneNote公式输入_测试1_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1Jp421S78r/)

这一项目还在开发中，欢迎你的建议和参与。

如果网页公式显示异常，请阅读：[README.pdf](README.pdf)

## 如何使用

1. 下载并运行[symbol_assist_OneNote.exe](https://github.com/RUSRUSHB/OneHotkey/raw/main/OneHotkey.exe)。
2. 输入代码，然后按`Space`键输出符号与公式。例如，输入`\a`，然后按`Space`键，就会输出 $\alpha$ 。
3. 想要自行修改公式映射，请参考[映射自定义指南](#映射自定义指南)。如果需要帮助，请前往[AutoHotKey官网](https://www.autohotkey.com)。
4. 想要停止脚本，用鼠标右键点击系统状态栏中的`H`图标，然后选择`Exit`。

## 目录

- [OneHotkey -- 公式输入简化工具](#onehotkey----公式输入简化工具)
  - [如何使用](#如何使用)
  - [目录](#目录)
  - [符号映射](#符号映射)
    - [概览](#概览)
    - [完整映射表格](#完整映射表格)
      - [常用字符](#常用字符)
      - [运算符](#运算符)
      - [希腊字母](#希腊字母)
      - [矩阵](#矩阵)
      - [修饰符](#修饰符)
      - [箭头](#箭头)
      - [其他符号](#其他符号)
      - [结构](#结构)
      - [花体字母](#花体字母)
  - [更多建议](#更多建议)
  - [实验性功能(`experimental/`文件夹内)](#实验性功能experimental文件夹内)
  - [映射自定义指南](#映射自定义指南)



## 符号映射

### 概览

此脚本包括多种类型的符号映射，包括希腊字母、数学字体、常用字母和结构。以下是其中的一些映射。请确保您已经使用`Alt`+`=`进入了公式输入模式。

|输入|输出|分类|实际代码|
|----|------|----|---|
|`\a`| $\alpha$ |小写希腊字母|`\alpha `|
|`\D`| $\Delta$ |大写希腊字母|`\Delta `|
|`\R`, `\C`, `\Z`, `\N`, `\J`| $\mathbb{R}$, $\mathbb{C}$, $\mathbb{Z}$, $\mathbb{N}$, $\mathbb{J}$|常用双线体字母|`\doubleR `, ...|
|`\do X`, `\sc X`, `\fr X`| $\mathbb{X}$, $\mathcal{X}$, $\mathfrak{X}$ |花体字母|`\doubleX `, `\scriptX `, `\frakturX `|
|`\m3`, `\m4`, ..., `\m`|3×3空白矩阵, 4×4空白矩阵..., 待定形状矩阵|矩阵|`[\matrix(@@&&)] `, ...|
|`x\h`, `x\~`, `x\d2`| $\hat{x}$, $\tilde{x}$, $\ddot{x}$ |修饰符|`\hat  `, `\tilde  `, `\ddot  `|
|`\x`, `\X`, `\sq`, `\pa`, `\eq`| $\cdot$, $\times$, $\sqrt{\Box}$, $\parallel$, $\equiv$ |运算符|`\cdot `, `\times`, `\sqrt  `, `\parallel `, `\equiv `|
|`\pd`, `\di`, `\inf`| $\partial$, $\text{d}$, $\infty$ |常用符号|`\partial `, `"d" `, `\infty `|
|`\ls`| $^\Box_\Box P$ |左侧上下标|`^_ P `|
|`\i`, `\j`, `\k`| $\text{i}$, $\text{j}$, $\text{k}$ |虚数/四元数符号|`"i"`, `"j"`, `"k"`|
|`\ejw`| $e^{j\omega}$ |复指数旋转因子|`e^j\omega  `|

你应该注意到` `(空格键)是常用的，这是OneNote公式输入的关键特性。代码中的大写字母应该使用`Shift`键输入，而不是`CapsLock`键。

### 完整映射表格

#### 常用字符

| 输入 | 输出| 源代码 | 输入 | 输出| 源代码 |
|------|--------|--------|------|--------|--------|
| `\pd` | $\partial$ | `\partial{Space}` |`\di`|$\text{d}$|`"d"`|
| `\inf` | $\infty$ | `\infty{Space}` | `\R` | $\mathbb{R}$ | `\doubleR{Space}` |
| `\Q` | $\mathbb{Q}$ | `\doubleQ{Space}` | `\Z` | $\mathbb{Z}$ | `\doubleZ{Space}` |
| `\N` | $\mathbb{N}$ | `\doubleN{Space}` | `\C` | $\mathbb{C}$ | `\doubleC{Space}` |
| `\J` | $\mathbb{J}$ | `\doubleJ{Space}` |`\E`|$\mathbb{E}[]$|`\doubleE{Space}[]{Space}{Left}`|

#### 运算符

| 输入 | 输出| 源代码 | 输入 | 输出| 源代码 |
|------|--------|--------|------|--------|--------|
| `\x` | $\cdot$ | `\cdot{Space}` | `\X` | $\times$ | `\times{Space}` |
| `\sq` | $\sqrt{\Box}$ | `\sqrt{Space 2}{Left}` | `\pa` | $\parallel$ | `\parallel{Space}` |
| `\ss` | $\subset$ | `\subset{Space}` | `\sse` | $\subseteq$ | `\subseteq{Space}` |
| `\op` | $\oplus$ | `\oplus{Space}` | `\ox` | $\otimes$ | `\otimes{Space}` |
| `\od` | $\odot$ | `\odot{Space}` | `\dd` | $\ddots$ | `\ddots{Space}` |
| `\cd` | $\cdots$ | `\cdots{Space}` | `\vd` | $\vdots$ | `\vdots{Space}` |
| `\map` | $\mapsto$ | `\mapsto{Space}` | `\pro` | $\propto$ | `\propto{Space}` |
| `\as` | $\because$ | `\because{Space}` | `\so` | $\therefore$ | `\therefore{Space}` |
|`\eq`| $\equiv$ |`\equiv`|

#### 希腊字母

| 输入 | 输出| 源代码 | 输入 | 输出| 源代码 |
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

- `ve` 指的是epsilon的变体(variant epsilon)。为了方便，`\e`被设置为 $\varepsilon$ ，`\ve`被设置为 $\epsilon$ 。这和它们的原始代码相反。

#### 矩阵

| 输入 | 输出| 源代码 |
|------|--------|--------|
| `\m4` | 4×4空白矩阵 | `[\matrix(@@@&&&){Space}]{Space}` |
| `\m3` | 3×3空白矩阵 | `[\matrix(@@&&){Space}]{Space}` |
| `\m2` | 2×2空白矩阵 | `[\matrix(@&){Space}]{Space}` |
| `\m` | 空白矩阵，输入`&` `@`来设置大小 | `[]{Space}{Left}\matrix(){Left}` |

#### 修饰符

| 输入 | 输出| 源代码 |
|------|--------|--------|
| `\d1` | $\dot{x}$ | `\dot{Space 2}` |
| `\d2` | $\ddot{x}$ | `\ddot{Space 2}` |
| `\d3` | 上方有3个点 | `\dddot{Space 2}` |
| `\d4` | 上方有4个点 | `\ddddot{Space 2}` |
| `\~` | $\tilde{x}$ | `\tilde{Space 2}` |
| `\v` | $\vec{x}$ | `\vec{Space 2}` |
| `\h` | $\hat{x}$ | `\hat{Space 2}` |

#### 箭头

| 输入 | 输出| 源代码 | 输入 | 输出| 源代码 |
|------|--------|--------|------|--------|--------|
| `\lr` | $\leftrightarrow$ | `\leftrightarrow{Space}` | `\lrs` | $\leftrightarrows$ | `\leftrightarrows{Enter}{Left}` |
| `\la` | $\leftarrow$ | `\leftarrow{Space}` | `\La` | $\Leftarrow$ | `\Leftarrow{Space}` |
| `\down` | $\downarrow$ | `\downarrow{Space}` | `\up` | $\uparrow$ | `\uparrow{Space}` |
| `\ul` | $\nwarrow$ | `\nwarrow{Space}` | `\ur` | $\nearrow$ | `\nearrow{Space}` |
| `\dl` | $\swarrow$ | `\swarrow{Space}` | `\dr` | $\searrow$ | `\searrow{Space}` |

#### 其他符号

| 输入 | 输出| 源代码 | 输入 | 输出| 源代码 |
|------|--------|--------|------|--------|--------|
| `\de` | $\degree$ | `\degree{Space}` | `\st` | $\star$ | `\star{Space}` |

#### 结构

| 输入 | 输出| 源代码 |
|------|--------|--------|
| `\r` | $\lbrace\Box$ | `\right.{Left}` |
| `\ceil` | $\lceil\rceil$ | `\lceil{Space}\rceil{Space 2}{Left}` |
| `\floor` | $\lfloor\rfloor$ | `\lfloor{Space}\rfloor{Space 2}{Left}` |
| `\brak` | $\lang\rang$ |`\bra{Space}\ket{Space 2}{Left}`|
| `\ls` | $^\Box_\Box P$ | `^_ P {Left 4}` |
| `\fu` | $\text{myfunction}{\Box}$ | `\funcapply  ` |
| `\Norm` | $ \Vert \Vert $ | `\norm{Space}\norm{Space 2}{Left}` |
| `\limx`, `\limn` | $ \lim_{x \rightarrow \infty} $, $ \lim_{n \rightarrow \infty} $ | `lim_(x->\infty{Space}){Space}`, `lim_(x->\infty{Space}){Space}` |

- `\funcapply` 与 `\of` 有些许不同。建议自行尝试一下。

#### 花体字母

| 输入 | 输出| 源代码 |
|------|--------|--------|
| `\sc` | $\mathcal{X}$ | `\script` |
| `\do` | $\mathbb{X}$ | `\double` |
| `\fr` | $\mathfrak{X}$ | `\fraktur` |

- 对于以上代码，你实际应当输入的内容形如`\sc X `。

## 更多建议

- 了解更多关于公式输入的内容：[UTN28-PlainTextMath-v3.pdf](https://www.unicode.org/notes/tn28/UTN28-PlainTextMath-v3.pdf)。第39~47页非常有用。
- 直接输入Unicode数学符号：<https://github.com/gtj1/symbol_assist>
- 符合直觉的类Vim文本光标控制：<https://github.com/RUSRUSHB/AutoTextCursor>

## 实验性功能(`experimental/`文件夹内)

`key_combination.exe`

- 使用组合键输入特别字符、结构
- 包括：进入公式输入、分割线、boxed text、text block

`rus_hotkey.exe`

- 输入俄语字母。这可以和公式输入适应。
- 输入格式：`\`+罗马转写+`R`
- 例子：`\dR`输出д，`\DR`输出Д

## 映射自定义指南

想要自定义映射，请编辑`symbol_assist.ahk`，使用`Ahk2Exe`进行编译，然后运行编译后的`.exe`文件。建议你从[AutoHotKey官网](https://www.autohotkey.com)了解更多关于`AutoHotKey`的知识。

`symbol_assist_OneNote.ahk`中的代码非常容易理解，即使你没有学习过`AutoHotKey`。对于新手，代码的解释如下：

代码的每一行都是一个输入到符号的映射。格式为`:(参数):输入::输出`。例如，`::\a::\alpha `意味着当你输入`\a`时，脚本会输出`\alpha `。

我添加了一些参数`co?`：

|参数|作用|
|-|-|
|`c`|区分大小写，比如`\a`和`\A`是不同的。|
|`o`|删除你在代码末尾输入的`空格键`。|
|`?`|即使代码紧跟在数字或字母后面，它也能正常输出。否则，在像是`x\h`的情况下它不会输出。|
