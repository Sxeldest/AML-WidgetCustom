; =========================================================
; Game Engine Function: sub_11D4C4
; Address            : 0x11D4C4 - 0x11D502
; =========================================================

11D4C4:  PUSH            {R4-R7,LR}
11D4C6:  ADD             R7, SP, #0xC
11D4C8:  PUSH.W          {R8}
11D4CC:  SUB             SP, SP, #0x10
11D4CE:  CBZ             R2, loc_11D4F8
11D4D0:  LDR.W           R12, [R7,#arg_0]
11D4D4:  CMP.W           R12, #0
11D4D8:  BEQ             loc_11D4F8
11D4DA:  LDR             R4, [R0]
11D4DC:  MOV             R0, R1
11D4DE:  LDRD.W          R8, LR, [R7,#arg_C]
11D4E2:  MOV             R1, R2
11D4E4:  LDRD.W          R6, R5, [R7,#arg_4]
11D4E8:  MOV             R2, R3
11D4EA:  MOV             R3, R12
11D4EC:  STRD.W          R6, R5, [SP,#0x20+var_20]
11D4F0:  STRD.W          R8, LR, [SP,#0x20+var_18]
11D4F4:  BLX             R4
11D4F6:  B               loc_11D4FA
11D4F8:  MOVS            R0, #0
11D4FA:  ADD             SP, SP, #0x10
11D4FC:  POP.W           {R8}
11D500:  POP             {R4-R7,PC}
