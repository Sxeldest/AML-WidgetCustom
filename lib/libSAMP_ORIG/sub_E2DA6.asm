; =========================================================
; Game Engine Function: sub_E2DA6
; Address            : 0xE2DA6 - 0xE2DB8
; =========================================================

E2DA6:  PUSH            {R7,LR}
E2DA8:  MOV             R7, SP
E2DAA:  MOV             R2, R0
E2DAC:  LDR             R0, [R0]
E2DAE:  STR             R1, [R2]
E2DB0:  CBZ             R0, locret_E2DB6
E2DB2:  LDR             R1, [R2,#4]
E2DB4:  BLX             R1
E2DB6:  POP             {R7,PC}
