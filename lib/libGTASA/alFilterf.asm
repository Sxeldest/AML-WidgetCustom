; =========================================================
; Game Engine Function: alFilterf
; Address            : 0x254B88 - 0x254C06
; =========================================================

254B88:  PUSH            {R4-R7,LR}
254B8A:  ADD             R7, SP, #0xC
254B8C:  PUSH.W          {R8}
254B90:  MOV             R8, R2
254B92:  MOV             R6, R1
254B94:  MOV             R5, R0
254B96:  BLX             j_GetContextRef
254B9A:  MOV             R4, R0
254B9C:  CBZ             R4, loc_254BB8
254B9E:  LDR.W           R0, [R4,#0x88]
254BA2:  MOV             R1, R5
254BA4:  ADDS            R0, #0x88
254BA6:  BLX             j_LookupUIntMapKey
254BAA:  CBZ             R0, loc_254BBE
254BAC:  LDR             R5, [R0,#0x14]
254BAE:  MOV             R1, R4
254BB0:  MOV             R2, R6
254BB2:  MOV             R3, R8
254BB4:  BLX             R5
254BB6:  B               loc_254BF8
254BB8:  POP.W           {R8}
254BBC:  POP             {R4-R7,PC}
254BBE:  LDR             R0, =(TrapALError_ptr - 0x254BC4)
254BC0:  ADD             R0, PC; TrapALError_ptr
254BC2:  LDR             R0, [R0]; TrapALError
254BC4:  LDRB            R0, [R0]
254BC6:  CMP             R0, #0
254BC8:  ITT NE
254BCA:  MOVNE           R0, #5; sig
254BCC:  BLXNE           raise
254BD0:  LDREX.W         R0, [R4,#0x50]
254BD4:  CBNZ            R0, loc_254BF0
254BD6:  ADD.W           R0, R4, #0x50 ; 'P'
254BDA:  MOVW            R1, #0xA001
254BDE:  DMB.W           ISH
254BE2:  STREX.W         R2, R1, [R0]
254BE6:  CBZ             R2, loc_254BF4
254BE8:  LDREX.W         R2, [R0]
254BEC:  CMP             R2, #0
254BEE:  BEQ             loc_254BE2
254BF0:  CLREX.W
254BF4:  DMB.W           ISH
254BF8:  MOV             R0, R4
254BFA:  POP.W           {R8}
254BFE:  POP.W           {R4-R7,LR}
254C02:  B.W             ALCcontext_DecRef
