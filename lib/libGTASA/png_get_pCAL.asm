; =========================================================
; Game Engine Function: png_get_pCAL
; Address            : 0x1F3BB8 - 0x1F3C48
; =========================================================

1F3BB8:  PUSH            {R4-R7,LR}
1F3BBA:  ADD             R7, SP, #0xC
1F3BBC:  PUSH.W          {R8-R11}
1F3BC0:  MOV             R12, R0
1F3BC2:  MOVS            R0, #0
1F3BC4:  CMP.W           R12, #0
1F3BC8:  BEQ             loc_1F3C42
1F3BCA:  CMP             R1, #0
1F3BCC:  ITTT NE
1F3BCE:  LDRNE.W         R12, [R7,#arg_10]
1F3BD2:  MOVNE           R0, #0
1F3BD4:  CMPNE.W         R12, #0
1F3BD8:  BEQ             loc_1F3C42
1F3BDA:  LDR.W           LR, [R7,#arg_C]
1F3BDE:  CMP.W           LR, #0
1F3BE2:  ITT NE
1F3BE4:  LDRNE.W         R8, [R7,#arg_8]
1F3BE8:  CMPNE.W         R8, #0
1F3BEC:  BEQ             loc_1F3C42
1F3BEE:  LDR.W           R9, [R7,#arg_4]
1F3BF2:  CMP.W           R9, #0
1F3BF6:  ITT NE
1F3BF8:  LDRNE.W         R10, [R7,#arg_0]
1F3BFC:  CMPNE.W         R10, #0
1F3C00:  BEQ             loc_1F3C42
1F3C02:  CMP             R3, #0
1F3C04:  IT NE
1F3C06:  CMPNE           R2, #0
1F3C08:  BEQ             loc_1F3C42
1F3C0A:  LDR             R4, [R1,#8]
1F3C0C:  ANDS.W          R4, R4, #0x400
1F3C10:  ITTTT NE
1F3C12:  ADDNE.W         R11, R1, #0xDC
1F3C16:  LDMNE.W         R11, {R0,R4-R6,R11}
1F3C1A:  STRNE           R0, [R2]
1F3C1C:  STRNE           R4, [R3]
1F3C1E:  ITTTT NE
1F3C20:  STRNE.W         R5, [R10]
1F3C24:  LDRBNE.W        R0, [R1,#0xF0]
1F3C28:  STRNE.W         R0, [R9]
1F3C2C:  LDRBNE.W        R0, [R1,#0xF1]
1F3C30:  ITTTT NE
1F3C32:  STRNE.W         R0, [R8]
1F3C36:  STRNE.W         R6, [LR]
1F3C3A:  STRNE.W         R11, [R12]
1F3C3E:  MOVNE.W         R0, #0x400
1F3C42:  POP.W           {R8-R11}
1F3C46:  POP             {R4-R7,PC}
