# OneHotkey

这是一个用于简化 OneNote, Word 和 PowerPoint 中数学公式输入的 AutoHotKey 脚本，例如，\a 代表 \alpha。

这一项目还在开发中

## 如何使用

1. 下载并运行`symbol_assist.exe`。
2. 输入代码，然后按`Space`键输出符号与公式。
3. 想要自行修改公式映射，请参考`symbol_assist.ahk`。编辑它，使用`Ahk2Exe`或者其他转换器编译，然后运行编译后的`.exe`文件。如果需要帮助，请前往[AutoHotKey官网](www.autohotkey.com)。
4. 想要停止脚本，用鼠标右键点击系统状态栏中的`H`图标，然后选择`Exit`。

## 符号映射

### 概览

此脚本包括多种类型的符号映射，包括希腊字母、数学字体、常用字母和结构。以下是其中的一些映射。请确保您已经在OneNote或Word中使用`Alt`+`=`进入了公式输入模式，或者在PowerPoint中使用`Ctrl`+`=`。

|输入|输出|分类|实际代码|
|----|------|----|---|
|`\a`|$\alpha$|小写希腊字母|`\alpha `|
|`\D`|$\Delta$|大写希腊字母|`\Delta `|
|`\R`, `\C`, `\Z`, `\N`|$\mathbb{R}$, $\mathbb{C}$, $\mathbb{Z}$, $\mathbb{N}$|常用字母|`\doubleR `, ...|
|`\do X`, `\sc X`, `\fr X`|$\mathbb{X}$, $\mathcal{X}$, $\mathfrak{X}$|花体字母|`\doubleX `, `\scriptX `, `\frakturX `|
|`\m3`, `\m4`, ...|3 by 3 empty matrix, ...|矩阵|`[\matrix(@@&&)] `, ...|
|`x\h`, `x\~`, `x\d2`|$\hat{x}$, $\tilde{x}$, $\ddot{x}$|修饰符|`\hat  `, `\tilde  `, `\ddot  `|
|`\x`, `\X`, `\sq`, `\pa`|$\cdot$, $\times$, $\sqrt{\Box}$, $\parallel$|运算符|`\cdot `, `\times`, `\sqrt  `, `\parallel `|
|`\pd`, `\inf`|$\partial$, $\infty$|常用符号|`\partial `, `\infty `|
|`\ls`|$^\Box_\Box P$|左侧上下标|`^_ P `|

### 完整映射表格

#### 希腊字母

`TODO`

## 映射自定义指南

`symbol_assist_OneNote.ahk`中的代码非常容易理解，即使你没有学习过`AutoHotKey`。对于新手，代码的解释如下：

代码的每一行都是一个输入到符号的映射。格式为`::输入::输出`。例如，`::\a::\alpha`意味着当你输入`\a`时，脚本会输出`\alpha`。

在前两个冒号(`::`)之间，我添加了一些参数：

|参数|作用|
|-|-|
|` `(空格键)|仅在代码末尾输入`空格键`后输出公式。|
|`c`|区分大小写，比如`\a`和`\A`是不同的。|
|`o`|删除你在代码末尾输入的`空格键`。|
|`?`|即使代码紧跟在数字或字母后面，它也能正常输出。否则，像是`x\h`的情况下它不会输出。|

建议你从[AutoHotKey官网](www.autohotkey.com)了解更多关于`AutoHotKey`的知识。