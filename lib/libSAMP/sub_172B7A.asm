; =========================================================
; Game Engine Function: sub_172B7A
; Address            : 0x172B7A - 0x172C12
; =========================================================

172B7A:  PUSH            {R4-R7,LR}
172B7C:  ADD             R7, SP, #0xC
172B7E:  PUSH.W          {R8,R9,R11}
172B82:  MOV             R4, R0
172B84:  LDR             R0, [R0,#0x4C]
172B86:  CBZ             R0, loc_172B94
172B88:  LDR             R1, [R4,#0x54]
172B8A:  ADD.W           R0, R1, R0,LSL#2
172B8E:  LDR.W           R5, [R0,#-4]
172B92:  B               loc_172B96
172B94:  MOVS            R5, #0
172B96:  LDR             R0, [R4]
172B98:  CBZ             R0, loc_172BB8
172B9A:  LDR             R1, [R4,#8]
172B9C:  CBZ             R1, loc_172BB8
172B9E:  SUB.W           R8, R0, #1
172BA2:  ADD.W           R2, R8, R8,LSL#2
172BA6:  ADD.W           R6, R1, R2,LSL#3
172BAA:  LDR             R1, [R6]
172BAC:  CBZ             R1, loc_172BB4
172BAE:  LDR             R2, [R6,#0x14]
172BB0:  CMP             R2, R5
172BB2:  BNE             loc_172BB8
172BB4:  LDR             R2, [R6,#0x20]
172BB6:  CBZ             R2, loc_172BC6
172BB8:  MOV             R0, R4
172BBA:  POP.W           {R8,R9,R11}
172BBE:  POP.W           {R4-R7,LR}
172BC2:  B.W             sub_1729EA
172BC6:  MOV.W           R9, #0
172BCA:  CMP             R0, #1
172BCC:  IT GT
172BCE:  SUBGT.W         R9, R6, #0x28 ; '('
172BD2:  CBNZ            R1, loc_172C04
172BD4:  CMP             R0, #2
172BD6:  BLT             loc_172C04
172BD8:  LDR.W           R0, [R9,#0x14]
172BDC:  CMP             R0, R5
172BDE:  BNE             loc_172C04
172BE0:  LDR             R1, [R4,#0x40]
172BE2:  ADD.W           R0, R9, #4; s1
172BE6:  CBZ             R1, loc_172BF2
172BE8:  LDR             R2, [R4,#0x48]
172BEA:  ADD.W           R1, R2, R1,LSL#4
172BEE:  SUBS            R1, #0x10
172BF0:  B               loc_172BF6
172BF2:  LDR             R1, [R4,#0x28]
172BF4:  ADDS            R1, #0x14; s2
172BF6:  MOVS            R2, #0x10; n
172BF8:  BLX             memcmp
172BFC:  CBNZ            R0, loc_172C04
172BFE:  LDR.W           R0, [R9,#0x20]
172C02:  CBZ             R0, loc_172C0C
172C04:  STR             R5, [R6,#0x14]
172C06:  POP.W           {R8,R9,R11}
172C0A:  POP             {R4-R7,PC}
172C0C:  STR.W           R8, [R4]
172C10:  B               loc_172C06
