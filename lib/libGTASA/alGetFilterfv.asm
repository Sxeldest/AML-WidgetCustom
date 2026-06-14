; =========================================================
; Game Engine Function: alGetFilterfv
; Address            : 0x254E8C - 0x254F0A
; =========================================================

254E8C:  PUSH            {R4-R7,LR}
254E8E:  ADD             R7, SP, #0xC
254E90:  PUSH.W          {R8}
254E94:  MOV             R8, R2
254E96:  MOV             R6, R1
254E98:  MOV             R5, R0
254E9A:  BLX             j_GetContextRef
254E9E:  MOV             R4, R0
254EA0:  CBZ             R4, loc_254EBC
254EA2:  LDR.W           R0, [R4,#0x88]
254EA6:  MOV             R1, R5
254EA8:  ADDS            R0, #0x88
254EAA:  BLX             j_LookupUIntMapKey
254EAE:  CBZ             R0, loc_254EC2
254EB0:  LDR             R5, [R0,#0x28]
254EB2:  MOV             R1, R4
254EB4:  MOV             R2, R6
254EB6:  MOV             R3, R8
254EB8:  BLX             R5
254EBA:  B               loc_254EFC
254EBC:  POP.W           {R8}
254EC0:  POP             {R4-R7,PC}
254EC2:  LDR             R0, =(TrapALError_ptr - 0x254EC8)
254EC4:  ADD             R0, PC; TrapALError_ptr
254EC6:  LDR             R0, [R0]; TrapALError
254EC8:  LDRB            R0, [R0]
254ECA:  CMP             R0, #0
254ECC:  ITT NE
254ECE:  MOVNE           R0, #5; sig
254ED0:  BLXNE           raise
254ED4:  LDREX.W         R0, [R4,#0x50]
254ED8:  CBNZ            R0, loc_254EF4
254EDA:  ADD.W           R0, R4, #0x50 ; 'P'
254EDE:  MOVW            R1, #0xA001
254EE2:  DMB.W           ISH
254EE6:  STREX.W         R2, R1, [R0]
254EEA:  CBZ             R2, loc_254EF8
254EEC:  LDREX.W         R2, [R0]
254EF0:  CMP             R2, #0
254EF2:  BEQ             loc_254EE6
254EF4:  CLREX.W
254EF8:  DMB.W           ISH
254EFC:  MOV             R0, R4
254EFE:  POP.W           {R8}
254F02:  POP.W           {R4-R7,LR}
254F06:  B.W             ALCcontext_DecRef
