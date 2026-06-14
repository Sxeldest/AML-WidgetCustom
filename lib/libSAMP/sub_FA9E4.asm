; =========================================================
; Game Engine Function: sub_FA9E4
; Address            : 0xFA9E4 - 0xFAA04
; =========================================================

FA9E4:  PUSH            {R4,R6,R7,LR}
FA9E6:  ADD             R7, SP, #8
FA9E8:  SUB             SP, SP, #0x10
FA9EA:  MOV             R4, R0
FA9EC:  MOVS            R0, #0
FA9EE:  STR             R0, [R4,#0x10]
FA9F0:  STR             R2, [SP,#0x18+var_C]
FA9F2:  STRD.W          R3, R1, [SP,#0x18+var_14]
FA9F6:  ADD             R1, SP, #0x18+var_14
FA9F8:  MOV             R0, R4
FA9FA:  BL              sub_FB098
FA9FE:  MOV             R0, R4
FAA00:  ADD             SP, SP, #0x10
FAA02:  POP             {R4,R6,R7,PC}
