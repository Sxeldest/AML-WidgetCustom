; =========================================================
; Game Engine Function: sub_621C8
; Address            : 0x621C8 - 0x621DC
; =========================================================

621C8:  PUSH            {R7,LR}
621CA:  MOV             R7, SP
621CC:  LDR             R0, =(off_1A39FC - 0x621D2)
621CE:  ADD             R0, PC; off_1A39FC
621D0:  LDR             R0, [R0]
621D2:  BLX             R0
621D4:  POP.W           {R7,LR}
621D8:  B.W             sub_6C2C0
