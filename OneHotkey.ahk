#Requires AutoHotkey v2.0
#HotIf WinActive("ahk_exe ONENOTE.EXE") or WinActive("ahk_exe WINWORD.EXE")
;===============================================================================
; Context Sensitivity Settings | 上下文敏感性设置
;===============================================================================
; Only activate hotkeys in OneNote and Word
; 仅在 OneNote 和 Word 中启用以下快捷键

;===============================================================================
; Frequently Used Letters | 常用字母和符号
;===============================================================================

:co?:\pd::\partial{Space}

:co?:\di::"d"{Space}

:co?:\dt::"d"{Space}/"d"{Space}t{Space}

:co?:\R::\doubleR{Space}

:co?:\Q::\doubleQ{Space}

:co?:\Z::\doubleZ{Space}

:co?:\N::\doubleN{Space}

:co?:\C::\doubleC{Space}

:co?:\J::\doubleJ{Space}

:co?:\E::\doubleE{Space}[]{Space}{Left}

:co?:\inf::\infty{Space}

:co?:\ejw::e{^}j\omega{Space 2}

;===============================================================================
; Operators | 运算符
;===============================================================================

:co?:\x::\cdot{Space}

:co?:\X::\times{Space}

:co?:\sq::\sqrt{Space 2}{Left}

:co?:\pa::\parallel{Space}

:co?:\ss::\subset{Space}

:co?:\sse::\subseteq{Space}

:co?:\op::\oplus{Space}

:co?:\ox::\otimes{Space}

:co?:\od::\odot{Space}

:co?:\dd::\ddots{Space}

:co?:\cd::\cdots{Space}

:co?:\vd::\vdots{Space}

:co?:\map::\mapsto{Space}

:co?:\pro::\propto{Space}

:co?:\as::\because{Space}

:co?:\so::\therefore{Space}

:co?:\eq::\equiv{Space}

;===============================================================================
; Greek Letters | 希腊字母
;===============================================================================

:co?:\a::\alpha{Space}

:co?:\b::\beta{Space}

:co?:\e::\varepsilon{Space}

:co?:\ve::\epsilon{Space}

:co?:\d::\delta{Space}        

:co?:\D::\Delta{Space}

:co?:\s::\sigma{Space}

:co?:\S::\Sigma{Space}

:co?:\l::\lambda{Space}

:co?:\L::\Lambda{Space}

:co?:\t::\theta{Space}

:co?:\T::\Theta{Space}

:co?:\p::\phi{Space}

:co?:\P::\Phi{Space}

:co?:\o::\omega{Space}

:co?:\O::\Omega{Space}

:co?:\g::\gamma{Space}

:co?:\G::\Gamma{Space}

;===============================================================================
; Matrix | 矩阵相关
;===============================================================================

:co?:\m4::[\matrix({@}{@}{@}{&}{&}{&}){Space}]{Space}{Left 2}


:co?:\m3::[\matrix({@}{@}{&}{&}){Space}]{Space}{Left 2}


:co?:\m2::[\matrix({@}{&}){Space}]{Space}{Left 2}


:co?:\m::[]{Space}{Left}\matrix(){Left}

;===============================================================================
; Modifiers | 修饰符
;===============================================================================

:co?:\d1::\dot{Space 2}

:co?:\d2::\ddot{Space 2}

:co?:\d3::\dddot{Space 2}

:co?:\d4::\ddddot{Space 2}

:co?:\~::\tilde{Space 2}

:co?:\v::\vec{Space 2}

:co?:\h::\hat{Space 2}

:co?:\ub::\underbar{Space 2}{Left}

;===============================================================================
; Arrows | 箭头符号
;===============================================================================

:co?:\lr::\leftrightarrow{Space}

:co?:\Lr::\Leftrightarrow{Space}

:co?:\lrs::\leftrightarrows{Enter}{Left} ;{Space} might fail in OneNote, so use {Enter} instead

:co?:\la::\leftarrow{Space}

:co?:\La::\Leftarrow{Space}

:co?:\ra::\rightarrow{Space}

:co?:\Ra::\Rightarrow{Space}  ; this is needed for Word

:co?:\down::\downarrow{Space}

:co?:\up::\uparrow{Space}

:co?:\ul::\nwarrow{Space}

:co?:\ur::\nearrow{Space}

:co?:\dl::\swarrow{Space}

:co?:\dr::\searrow{Space}

;===============================================================================
; Imaginary/Quaternion Symbols | 虚数/四元数符号
;===============================================================================

:co?:\i::"i"{Space}

:co?:\j::"j"{Space}

:co?:\k::"k"{Space}

;===============================================================================
; Symbols | 其他符号
;===============================================================================

:co?:\de::\degree{Space}

:co?:\st::\star{Space}

;===============================================================================
; Structures | 结构符号
;===============================================================================

:co?:\ceil::\lceil{Space}\rceil{Space 2}{Left}

:co?:\floor::\lfloor{Space}\rfloor{Space 2}{Left}

:co?:\brak::\bra{Space}\ket{Space 2}{Left}
; braket

:co?:\Norm::\norm{Space}\norm{Space 2}{Left}

:co?:\limx::lim_(x->\infty{Space}){Space}

:co?:\limx0::lim_(x->0{Space}){Space}

:co?:\limt::lim_(t->\infty{Space}){Space}

:co?:\limt0::lim_(t->0{Space}){Space}

:co?:\limn::lim_(n->\infty{Space}){Space}

:co?:\limk::lim_(k->\infty{Space}){Space}

:co?:\limh::lim_(h->0{Space}){Space}

:co?:\r::\right.{Left}
; right subscript, usually used after left bracket "{"

:co?:\leb::\left\box{Space 2}{Left}
; left subscript, usually used before right bracket "}"

:co?:\ls::{^}{_}{Space}P{Space}{Left 4}
; left super script

:co?:\ab::\above{Space 2}

:co?:\be::\below{Space 2}

:co?:\fu::\funcapply{Space 2}
; function structure

:co?:\xe::\times{Space}10{^}{Space}{Left}

;===============================================================================
; Multi-column Equations | 多列等式
;===============================================================================

:co?:\eq2::\eqarray(&=@&=){Space}{Left 6}

:co?:\eq3::\eqarray(&=@&=@&=){Space}{Left 9}

:co?:\eq4::\eqarray(&=@&=@&=@&=){Space}{Left 12}

:co?:\eq5::\eqarray(&=@&=@&=@&=@&=){Space}{Left 15}

;===============================================================================
; Prefix for Fancy Letters | 特殊字体前缀
;===============================================================================

:co?:\sc::\script

:co?:\do::\double

:co?:\fr::\fraktur

;===============================================================================
; End of Context Sensitivity | 结束上下文敏感性
;===============================================================================
#HotIf  ; Turn off context sensitivity
; 关闭上下文敏感性
