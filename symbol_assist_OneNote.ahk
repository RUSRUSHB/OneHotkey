; #SingleInstance, Force
; SendMode Input
; SetWorkingDir, %A_ScriptDir%
; some helpful setup first

;;;;;;;;;;;;;;;;;;;;;

; Prefix

: co?:\sc::\script

: co?:\do::\double

: co?:\fr::\fraktur

; Greek Letters

: co?:\a::\alpha{Space}

: co?:\b::\beta{Space}

: co?:\e::\varepsilon{Space}

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


; Operators

: co?:\x::\cdot{Space}

: co?:\X::\times{Space}

: co?:\sq::\sqrt{Space 2}{Left}

: co?:\pa::\parallel{Space}

: co?:\lr::\leftrightarrow{Space}

: co?:\lrs::\leftrightarrows{Enter}{Left}

: co?:\la::\Leftarrow{Space}


; Frequently Used Letters
: co?:\pd::\partial{Space}

: co?:\R::\doubleR{Space}

: co?:\Q::\doubleQ{Space}

: co?:\Z::\doubleZ{Space}

: co?:\N::\doubleN{Space}

: co?:\C::\doubleN{Space}

: co?:\inf::\infty{Space}


; Structures

: co?:\ls::Send,{^}{_}{Space}P{Space}{Left 4}
    ; left super script

: co?:\fu::{BackSpace}\funcapply{Space 2}

; Matrix

: co?:\m4::[\matrix({@}{@}{@}{&}{&}{&}){Space}]{Space}


: co?:\m3::[\matrix({@}{@}{&}{&}){Space}]{Space}


: co?:\m2::[\matrix({@}{&}){Space}]{Space}


: co?:\m::[]{Space}{Left}\matrix(){Left}

; Modifiers

: co?:\h::\hat{Space 2}

: co?:\d1::\dot{Space 2}

: co?:\d2::\ddot{Space 2}

: co?:\~::\tilde{Space 2}

