#Requires AutoHotkey v2.0

; 使用 #HotIf 指令提高性能，只在目标应用程序中激活热字符串
#HotIf WinActive("ahk_exe ONENOTE.EXE") or WinActive("ahk_exe WINWORD.EXE")

; ===== 常用字母 =====
:co?:\pd::\partial{Space}

:co?:\di::d{Space}

:co?:\dt::d{Space}/d{Space}t{Space}

:co?:\R::\doubleR{Space}

:co?:\Q::\doubleQ{Space}

:co?:\Z::\doubleZ{Space}

:co?:\N::\doubleN{Space}

:co?:\C::\doubleC{Space}

:co?:\J::\doubleJ{Space}

:co?:\E::\doubleE{Space}[]{Space}{Left}

:co?:\inf::\infty{Space}

:co?:\ejw::e{^}j\omega{Space 2}

; ===== 操作符 =====
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

; ===== 希腊字母 =====
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

; ===== 矩阵 =====
:co?:\m4::[\matrix({@}{@}{@}{&}{&}{&}){Space}]{Space}{Left 2}

:co?:\m3::[\matrix({@}{@}{&}{&}){Space}]{Space}{Left 2}

:co?:\m2::[\matrix({@}{&}){Space}]{Space}{Left 2}

:co?:\m::[]{Space}{Left}\matrix(){Left}

; ===== 修饰符 =====
:co?:\d1::\dot{Space 2}

:co?:\d2::\ddot{Space 2}

:co?:\d3::\dddot{Space 2}

:co?:\d4::\ddddot{Space 2}

:co?:\~::\tilde{Space 2}

:co?:\v::\vec{Space 2}

:co?:\h::\hat{Space 2}

:co?:\ub::\underbar{Space 2}{Left}

; ===== 箭头 =====
:co?:\lr::\leftrightarrow{Space}

:co?:\Lr::\Leftrightarrow{Space}

:co?:\lrs::\leftrightarrows{Enter}{Left}

:co?:\la::\leftarrow{Space}

:co?:\La::\Leftarrow{Space}

:co?:\ra::\rightarrow{Space}

:co?:\Ra::\Rightarrow{Space}

:co?:\down::\downarrow{Space}

:co?:\up::\uparrow{Space}

:co?:\ul::\nwarrow{Space}

:co?:\ur::\nearrow{Space}

:co?:\dl::\swarrow{Space}

:co?:\dr::\searrow{Space}

; ===== 虚数/四元数符号 =====
:co?:\i::i{Space}

:co?:\j::j{Space}

:co?:\k::k{Space}

; ===== 符号 =====
:co?:\de::\degree{Space}

:co?:\st::\star{Space}

; ===== 结构 =====
:co?:\ceil::\lceil{Space}\rceil{Space 2}{Left}

:co?:\floor::\lfloor{Space}\rfloor{Space 2}{Left}

:co?:\brak::\bra{Space}\ket{Space 2}{Left}

:co?:\Norm::\norm{Space}\norm{Space 2}{Left}

; ===== 极限 =====
:co?:\limx::lim_(x->\infty{Space}){Space}

:co?:\limn::lim_(n->\infty{Space}){Space}

:co?:\limk::lim_(k->\infty{Space}){Space}

:co?:\limt::lim_(t->0{Space}){Space}

:co?:\limh::lim_(h->0{Space}){Space}

; ===== 其他结构 =====
:co?:\r::\right.{Left}

:co?:\ls::{^}{_}{Space}P{Space}{Left 4}

:co?:\fu::\funcapply{Space 2}

:co?:\lebox::\left\box{Space 2}{Left}

:co?:\xe::\times{Space}10{^}{Space}{Left}

:co?:\test::{up 2}

; ===== 多列方程 =====
:co?:\eq2::\eqarray(&=@&=){Space}{Left 6}

:co?:\eq3::\eqarray(&=@&=@&=){Space}{Left 9}

:co?:\eq4::\eqarray(&=@&=@&=@&=){Space}{Left 12}

:co?:\eq5::\eqarray(&=@&=@&=@&=@&=){Space}{Left 15}

; ===== 花体字母前缀 =====
:co?:\sc::\script

:co?:\do::\double

:co?:\fr::\fraktur

; 重置热键条件
#HotIf