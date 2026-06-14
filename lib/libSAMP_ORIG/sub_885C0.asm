; =========================================================
; Game Engine Function: sub_885C0
; Address            : 0x885C0 - 0x885E4
; =========================================================

885C0:  CMP             R2, #0
885C2:  IT EQ
885C4:  BXEQ            LR
885C6:  PUSH            {R4,R6,R7,LR}
885C8:  ADD             R7, SP, #0x10+var_8
885CA:  CMP             R2, #1
885CC:  BNE             loc_885D2
885CE:  MOVS            R4, #0
885D0:  B               loc_885DA
885D2:  SUBS            R4, R2, #1
885D4:  MOV             R2, R4; n
885D6:  BLX             strncpy
885DA:  MOVS            R1, #0
885DC:  STRB            R1, [R0,R4]
885DE:  POP.W           {R4,R6,R7,LR}
885E2:  BX              LR
