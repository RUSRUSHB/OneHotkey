; #SingleInstance, Force
; SendMode Input
; SetWorkingDir, %A_ScriptDir%
; some helpful setup first

;;;;;;;;;;;;;;;;;;;;;

; Prefix for Fancy Letters

: co?:\sc::\script

: co?:\do::\double

: co?:\fr::\fraktur

; Greek Letters

: co?:\a::\alpha{Space}

: co?:\b::\beta{Space}

: co?:\e::\varepsilon{Space}

: co?:\k::\kappa{Space}

: co?:\d::\delta{Space}        

: co?:\D::\Delta{Space}

: co?:\s::\sigma{Space}

: co?:\S::\Sigma{Space}

: co?:\l::\lambda{Space}

: co?:\L::\Lambda{Space}

: co?:\t::\theta{Space}

: co?:\T::\Theta{Space}

: co?:\p::\phi{Space}

: co?:\P::\Phi{Space}

: co?:\o::\omega{Space}

: co?:\O::\Omega{Space}

: co?:\g::\gamma{Space}

: co?:\G::\Gamma{Space}




; Operators

: co?:\x::\cdot{Space}

: co?:\X::\times{Space}

: co?:\sq::\sqrt{Space 2}{Left}

: co?:\pa::\parallel{Space}

: co?:\ss::\subset{Space}

: co?:\sse::\subseteq{Space}

: co?:\op::\oplus{Space}

: co?:\ox::\otimes{Space}

: co?:\od::\odot{Space}

: co?:\dd::\ddots{Space}

: co?:\map::\mapsto{Space}

: co?:\pro::\propto{Space}

; Symbols

: co?:\lr::\leftrightarrow{Space}

: co?:\lrs::\leftrightarrows{Enter}{Left} ;{Space} might fail in OneNote

: co?:\la::\leftarrow{Space}

: co?:\La::\Leftarrow{Space}

: co?:\cd::\cdots{Space}

: co?:\vd::\vdots{Space}

: co?:\down::\downarrow{Space}

: co?:\up::\uparrow{Space}

: co?:\ul::\upleftarrow{Space}

: co?:\ur::\uprightarrow{Space}

: co?:\dl::\downleftarrow{Space}

: co?:\dr::\downrightarrow{Space}

: co?:\de::\degree{Space}

: co?:\st::\star{Space}

: co?:\lc::\lceil{Space}

: co?:\rc::\rceil{Space}

: co?:\lf::\lfloor{Space}

: co?:\rf::\rfloor{Space}

; Frequently Used Letters
: co?:\pd::\partial{Space}

: co?:\R::\doubleR{Space}

: co?:\Q::\doubleQ{Space}

: co?:\Z::\doubleZ{Space}

: co?:\N::\doubleN{Space}

: co?:\C::\doubleC{Space}

: co?:\J::\doubleJ{Space}

: co?:\inf::\infty{Space}


; Structures

: co?:\ls::Send,{^}{_}{Space}P{Space}{Left 4}
    ; left super script

: co?:\fu::\funcapply{Space 2}

; Matrix

: co?:\m4::[\matrix({@}{@}{@}{&}{&}{&}){Space}]{Space}


: co?:\m3::[\matrix({@}{@}{&}{&}){Space}]{Space}


: co?:\m2::[\matrix({@}{&}){Space}]{Space}


: co?:\m::[]{Space}{Left}\matrix(){Left}

; Modifiers

: co?:\h::\hat{Space 2}

: co?:\d1::\dot{Space 2}

: co?:\d2::\ddot{Space 2}

: co?:\d3::\dddot{Space 2}

: co?:\d4::\ddddot{Space 2}

: co?:\~::\tilde{Space 2}

: co?:\v::\vec{Space 2}