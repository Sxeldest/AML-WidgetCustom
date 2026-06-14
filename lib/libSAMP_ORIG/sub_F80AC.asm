; =========================================================
; Game Engine Function: sub_F80AC
; Address            : 0xF80AC - 0xF80B8
; =========================================================

F80AC:  PUSH            {R7,LR}
F80AE:  MOV             R7, SP
F80B0:  LDR             R0, [R0]; key
F80B2:  BLX             pthread_getspecific
F80B6:  POP             {R7,PC}
