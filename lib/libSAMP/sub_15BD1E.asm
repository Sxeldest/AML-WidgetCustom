; =========================================================
; Game Engine Function: sub_15BD1E
; Address            : 0x15BD1E - 0x15BD48
; =========================================================

15BD1E:  PUSH            {R7,LR}
15BD20:  MOV             R7, SP
15BD22:  SUB             SP, SP, #8
15BD24:  LDRB            R1, [R0,#0x11]
15BD26:  CBZ             R1, loc_15BD42
15BD28:  LDR             R2, [R0]
15BD2A:  MOVS            R0, #0
15BD2C:  CBZ             R2, loc_15BD44
15BD2E:  STRD.W          R0, R0, [SP,#0x10+var_10]
15BD32:  MOV             R1, SP
15BD34:  MOV             R0, R2
15BD36:  BL              sub_1521A2
15BD3A:  CLZ.W           R0, R0
15BD3E:  LSRS            R0, R0, #5
15BD40:  B               loc_15BD44
15BD42:  MOVS            R0, #1
15BD44:  ADD             SP, SP, #8
15BD46:  POP             {R7,PC}
