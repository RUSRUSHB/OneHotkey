#Requires AutoHotkey v2.0
;===============================================================================
#HotIf WinActive("ahk_exe ONENOTE.EXE") or WinActive("ahk_exe WINWORD.EXE")
; Context Sensitivity Settings | 上下文敏感性设置
; Only activate hotkeys in OneNote and Word
; 仅在 OneNote 和 Word 中启用以下快捷键
;===============================================================================
#Hotstring c o ?
; 设置热字串默认选项：
; c -> Case-sensitive (区分大小写)
; o -> Omit ending character (自动删除触发用的空格/回车)
; ? -> Trigger inside words (允许在字母/数字后直接触发，如 x\pd)
;===============================================================================

;===============================================================================
; Frequently Used Letters | 常用字母和符号
;===============================================================================

::\pd::\partial{Space}

::\d::"d"{Space}

::\dt::"d"{Space}/"d"{Space}t{Space}

::\R::\doubleR{Space}

::\Q::\doubleQ{Space}

::\Z::\doubleZ{Space}

::\N::\doubleN{Space}

::\C::\doubleC{Space}

::\J::\doubleJ{Space}

::\E::\doubleE{Space}[]{Space}{Left}

::\inf::\infty{Space}

::\ejw::e{^}j\omega{Space 2}

;===============================================================================
; Operators | 运算符
;===============================================================================

::\x::\cdot{Space}

::\X::\times{Space}

::\sq::\sqrt{Space 2}{Left}

::\pa::\parallel{Space}

::\ss::\subset{Space}

::\sse::\subseteq{Space}

::\op::\oplus{Space}

::\ox::\otimes{Space}

::\od::\odot{Space}

::\dd::\ddots{Space}

::\cd::\cdots{Space}

::\vd::\vdots{Space}

::\map::\mapsto{Space}

::\pro::\propto{Space}

::\as::\because{Space}

::\so::\therefore{Space}

::\eq::\equiv{Space}

::\ex::\exists{Space}

::\fa::\forall{Space}

;===============================================================================
; Greek Letters | 希腊字母
;===============================================================================

::\a::\alpha{Space}

::\b::\beta{Space}

::\e::\varepsilon{Space}

::\ve::\epsilon{Space}

::\de::\delta{Space}        

::\D::\Delta{Space}

::\s::\sigma{Space}

::\S::\Sigma{Space}

::\l::\lambda{Space}

::\L::\Lambda{Space}

::\t::\theta{Space}

::\T::\Theta{Space}

::\p::\phi{Space}

::\P::\Phi{Space}

::\o::\omega{Space}

::\O::\Omega{Space}

::\g::\gamma{Space}

::\G::\Gamma{Space}

::\n::\nabla{Space}

;===============================================================================
; Matrix | 矩阵相关
;===============================================================================

::\m4::[\matrix({@}{@}{@}{&}{&}{&}){Space}]{Space}{Left 2}


::\m3::[\matrix({@}{@}{&}{&}){Space}]{Space}{Left 2}


::\m2::[\matrix({@}{&}){Space}]{Space}{Left 2}


::\m::[]{Space}{Left}\matrix(){Left}

;===============================================================================
; Modifiers | 修饰符
;===============================================================================

::\d1::\dot{Space 2}

::\d2::\ddot{Space 2}

::\d3::\dddot{Space 2}

::\d4::\ddddot{Space 2}

::\~::\tilde{Space 2}

::\v::\vec{Space 2}

::\h::\hat{Space 2}

::\ub::\underbar{Space 2}{Left}

;===============================================================================
; Arrows | 箭头符号
;===============================================================================

::\lr::\leftrightarrow{Space}

::\Lr::\Leftrightarrow{Space}

::\lrs::\leftrightarrows{Enter}{Left} ;{Space} might fail in OneNote, so use {Enter} instead

::\la::\leftarrow{Space}

::\La::\Leftarrow{Space}

::\ra::\rightarrow{Space}

::\Ra::\Rightarrow{Space}  ; this is needed for Word

::\down::\downarrow{Space}

::\up::\uparrow{Space}

;===============================================================================
; Imaginary/Quaternion Symbols | 虚数/四元数符号
;===============================================================================

::\i::"i"{Space}

::\j::"j"{Space}

::\k::"k"{Space}

;===============================================================================
; Symbols | 其他符号
;===============================================================================

::\deg::\degree{Space}

::\st::\star{Space}

;===============================================================================
; Structures | 结构符号
;===============================================================================

::\ceil::\lceil{Space}\rceil{Space 2}{Left}

::\floor::\lfloor{Space}\rfloor{Space 2}{Left}

::\brak::\bra{Space}\ket{Space 2}{Left}
; braket

::\Norm::\norm{Space}\norm{Space 2}{Left}

::\limx::lim_(x->\infty{Space}){Space}

::\limx0::lim_(x->0{Space}){Space}

::\limt::lim_(t->\infty{Space}){Space}

::\limt0::lim_(t->0{Space}){Space}

::\limn::lim_(n->\infty{Space}){Space}

::\limk::lim_(k->\infty{Space}){Space}

::\limh::lim_(h->0{Space}){Space}

::\r::\right.{Left}
; right subscript, usually used after left bracket "{"

::\leb::\left\box{Space 2}{Left}
; left subscript, usually used before right bracket "}"

::\ls::{^}{_}{Space}P{Space}{Left 4}
; left super script

::\ab::\above{Space 2}{Left}

::\be::\below{Space 2}{Left}

::\abb::\overbrace{Space 2}

::\beb::\underbrace{Space 2}

::\fu::\funcapply{Space 2}
; function structure

::\xe::\times{Space}10{^}{Space}{Left}

::\ppd::\partial{Space}/\partial{Space 2}{Left 3}

::\BO::\boxed{Enter}{Left 2}

::\qu::\quad{Enter}{Left}

::\diverge::\partial/\partial{Space}x{Space}{+}\partial/\partial{Space}y{Space}{+}\partial/\partial{Space}z{Space}

::\gradient::\partial/\partial{Space}x{Space}a\vec_x{+}\partial/\partial{Space}y{Space}a\vec_y{+}\partial/\partial{Space}z{Space}a\vec_z{Space}

::\curl::|\matrix(a\vec_x&a\vec_y&a\vec_z@\partial/\partial{Space}x&\partial/\partial{Space}y&\partial/\partial{Space}z@A\vec_x&A\vec_y&A\vec_z)|{Space}

;===============================================================================
; Multi-column Equations | 多列等式
;===============================================================================

::\eq2::\eqarray(&=@&=){Space}{Left 6}

::\eq3::\eqarray(&=@&=@&=){Space}{Left 9}

::\eq4::\eqarray(&=@&=@&=@&=){Space}{Left 12}

::\eq5::\eqarray(&=@&=@&=@&=@&=){Space}{Left 15}

;===============================================================================
; Prefix for Fancy Letters | 特殊字体前缀
;===============================================================================

::\sc::\script

::\do::\double

::\fr::\fraktur

;===============================================================================
; End of Context Sensitivity | 结束上下文敏感性
;===============================================================================
#HotIf  ; 关闭窗口过滤
#Hotstring Reset  ; 恢复热字串默认设置