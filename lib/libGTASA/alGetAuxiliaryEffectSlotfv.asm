; =========================================================
; Game Engine Function: alGetAuxiliaryEffectSlotfv
; Address            : 0x23EA0C - 0x23EAFE
; =========================================================

23EA0C:  PUSH            {R4-R7,LR}
23EA0E:  ADD             R7, SP, #0xC
23EA10:  PUSH.W          {R11}
23EA14:  MOV             R6, R2
23EA16:  MOV             R5, R0
23EA18:  CMP             R1, #2
23EA1A:  BNE             loc_23EA38
23EA1C:  BLX             j_GetContextRef
23EA20:  MOV             R4, R0
23EA22:  CBZ             R4, loc_23EA84
23EA24:  ADD.W           R0, R4, #0x2C ; ','
23EA28:  MOV             R1, R5
23EA2A:  BLX             j_LookupUIntMapKey
23EA2E:  CBZ             R0, loc_23EA8A
23EA30:  LDR.W           R0, [R0,#0xB8]
23EA34:  STR             R0, [R6]
23EA36:  B               loc_23EAF0
23EA38:  BLX             j_GetContextRef
23EA3C:  MOV             R4, R0
23EA3E:  CBZ             R4, loc_23EA84
23EA40:  ADD.W           R0, R4, #0x2C ; ','
23EA44:  MOV             R1, R5
23EA46:  BLX             j_LookupUIntMapKey
23EA4A:  LDR             R1, =(TrapALError_ptr - 0x23EA52)
23EA4C:  CMP             R0, #0
23EA4E:  ADD             R1, PC; TrapALError_ptr
23EA50:  LDR             R1, [R1]; TrapALError
23EA52:  LDRB            R1, [R1]
23EA54:  BEQ             loc_23EABE
23EA56:  CMP             R1, #0
23EA58:  ITT NE
23EA5A:  MOVNE           R0, #5; sig
23EA5C:  BLXNE           raise
23EA60:  LDREX.W         R0, [R4,#0x50]
23EA64:  CMP             R0, #0
23EA66:  BNE             loc_23EAE8
23EA68:  ADD.W           R0, R4, #0x50 ; 'P'
23EA6C:  MOVW            R1, #0xA002
23EA70:  DMB.W           ISH
23EA74:  STREX.W         R2, R1, [R0]
23EA78:  CBZ             R2, loc_23EAEC
23EA7A:  LDREX.W         R2, [R0]
23EA7E:  CMP             R2, #0
23EA80:  BEQ             loc_23EA74
23EA82:  B               loc_23EAE8
23EA84:  POP.W           {R11}
23EA88:  POP             {R4-R7,PC}
23EA8A:  LDR             R0, =(TrapALError_ptr - 0x23EA90)
23EA8C:  ADD             R0, PC; TrapALError_ptr
23EA8E:  LDR             R0, [R0]; TrapALError
23EA90:  LDRB            R0, [R0]
23EA92:  CMP             R0, #0
23EA94:  ITT NE
23EA96:  MOVNE           R0, #5; sig
23EA98:  BLXNE           raise
23EA9C:  LDREX.W         R0, [R4,#0x50]
23EAA0:  CBNZ            R0, loc_23EAE8
23EAA2:  ADD.W           R0, R4, #0x50 ; 'P'
23EAA6:  MOVW            R1, #0xA001
23EAAA:  DMB.W           ISH
23EAAE:  STREX.W         R2, R1, [R0]
23EAB2:  CBZ             R2, loc_23EAEC
23EAB4:  LDREX.W         R2, [R0]
23EAB8:  CMP             R2, #0
23EABA:  BEQ             loc_23EAAE
23EABC:  B               loc_23EAE8
23EABE:  CMP             R1, #0
23EAC0:  ITT NE
23EAC2:  MOVNE           R0, #5; sig
23EAC4:  BLXNE           raise
23EAC8:  LDREX.W         R0, [R4,#0x50]
23EACC:  CBNZ            R0, loc_23EAE8
23EACE:  ADD.W           R0, R4, #0x50 ; 'P'
23EAD2:  MOVW            R1, #0xA001
23EAD6:  DMB.W           ISH
23EADA:  STREX.W         R2, R1, [R0]
23EADE:  CBZ             R2, loc_23EAEC
23EAE0:  LDREX.W         R2, [R0]
23EAE4:  CMP             R2, #0
23EAE6:  BEQ             loc_23EADA
23EAE8:  CLREX.W
23EAEC:  DMB.W           ISH
23EAF0:  MOV             R0, R4
23EAF2:  POP.W           {R11}
23EAF6:  POP.W           {R4-R7,LR}
23EAFA:  B.W             ALCcontext_DecRef
