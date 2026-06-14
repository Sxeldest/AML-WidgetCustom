; =========================================================
; Game Engine Function: sub_F78F6
; Address            : 0xF78F6 - 0xF7900
; =========================================================

F78F6:  PUSH            {R7,LR}
F78F8:  MOV             R7, SP
F78FA:  BLX             sched_yield
F78FE:  POP             {R7,PC}
