; =========================================================
; Game Engine Function: sub_1659EC
; Address            : 0x1659EC - 0x165A4E
; =========================================================

1659EC:  PUSH            {R4-R7,LR}
1659EE:  ADD             R7, SP, #0xC
1659F0:  PUSH.W          {R8,R9,R11}
1659F4:  SUB             SP, SP, #8
1659F6:  LDR.W           LR, [R0,#8]
1659FA:  LDR.W           R12, [R0]
1659FE:  CMP.W           R12, #0
165A02:  MOV             R3, LR
165A04:  BEQ             loc_165A28
165A06:  MOV             R3, LR
165A08:  MOV             R4, R12
165A0A:  LSRS            R5, R4, #1
165A0C:  MVN.W           R9, R4,LSR#1
165A10:  ADD.W           R6, R3, R5,LSL#3
165A14:  LDR.W           R8, [R6],#8
165A18:  CMP             R8, R1
165A1A:  ITT CC
165A1C:  ADDCC.W         R5, R4, R9
165A20:  MOVCC           R3, R6
165A22:  CMP             R5, #0
165A24:  MOV             R4, R5
165A26:  BNE             loc_165A0A
165A28:  ADD.W           R6, LR, R12,LSL#3
165A2C:  CMP             R3, R6
165A2E:  BEQ             loc_165A3A
165A30:  LDR             R6, [R3]
165A32:  CMP             R6, R1
165A34:  BNE             loc_165A3A
165A36:  STR             R2, [R3,#4]
165A38:  B               loc_165A46
165A3A:  STRD.W          R1, R2, [SP,#0x20+var_20]
165A3E:  MOV             R2, SP
165A40:  MOV             R1, R3
165A42:  BL              sub_16590C
165A46:  ADD             SP, SP, #8
165A48:  POP.W           {R8,R9,R11}
165A4C:  POP             {R4-R7,PC}
