; When ctrl alt s is pressed

^!s::{
    Send "**"
    Send "^a"
    Send "^!h"
    Send "{Enter}"
    Send "^!h"

}

^!8::{
    Send "********************"
    Send "^a"
    Send "^u"
    Send "{Right}{Enter}"
    Send "^u"
}

^!`;::{
    Send "!="
    Send "\boxed{enter}"
    send "{left 2}Recall"
    send "{end}{enter}{enter}"
    Send "!="
    Send "\boxed{enter}"
    send "{left 2}End of Recall"
    send "{home}{left}{tab}"
}

^!b::{
    Send "\boxed{enter}"
    send "{left 2}"
}

; {alt} & {ctrl} & {right} ::{
;     send "+!"
;     send "!="
;     send "\Rightarrow{space}"
;     send "!="
;     send "+!"
; }