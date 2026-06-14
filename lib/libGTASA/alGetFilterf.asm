; =========================================================
; Game Engine Function: alGetFilterf
; Address            : 0x254E08 - 0x254E86
; =========================================================

254E08:  PUSH            {R4-R7,LR}
254E0A:  ADD             R7, SP, #0xC
254E0C:  PUSH.W          {R8}
254E10:  MOV             R8, R2
254E12:  MOV             R6, R1
254E14:  MOV             R5, R0
254E16:  BLX             j_GetContextRef
254E1A:  MOV             R4, R0
254E1C:  CBZ             R4, loc_254E38
254E1E:  LDR.W           R0, [R4,#0x88]
254E22:  MOV             R1, R5
254E24:  ADDS            R0, #0x88
254E26:  BLX             j_LookupUIntMapKey
254E2A:  CBZ             R0, loc_254E3E
254E2C:  LDR             R5, [R0,#0x24]
254E2E:  MOV             R1, R4
254E30:  MOV             R2, R6
254E32:  MOV             R3, R8
254E34:  BLX             R5
254E36:  B               loc_254E78
254E38:  POP.W           {R8}
254E3C:  POP             {R4-R7,PC}
254E3E:  LDR             R0, =(TrapALError_ptr - 0x254E44)
254E40:  ADD             R0, PC; TrapALError_ptr
254E42:  LDR             R0, [R0]; TrapALError
254E44:  LDRB            R0, [R0]
254E46:  CMP             R0, #0
254E48:  ITT NE
254E4A:  MOVNE           R0, #5; sig
254E4C:  BLXNE           raise
254E50:  LDREX.W         R0, [R4,#0x50]
254E54:  CBNZ            R0, loc_254E70
254E56:  ADD.W           R0, R4, #0x50 ; 'P'
254E5A:  MOVW            R1, #0xA001
254E5E:  DMB.W           ISH
254E62:  STREX.W         R2, R1, [R0]
254E66:  CBZ             R2, loc_254E74
254E68:  LDREX.W         R2, [R0]
254E6C:  CMP             R2, #0
254E6E:  BEQ             loc_254E62
254E70:  CLREX.W
254E74:  DMB.W           ISH
254E78:  MOV             R0, R4
254E7A:  POP.W           {R8}
254E7E:  POP.W           {R4-R7,LR}
254E82:  B.W             ALCcontext_DecRef
