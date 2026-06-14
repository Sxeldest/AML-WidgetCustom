; =========================================================
; Game Engine Function: alBuffer3i
; Address            : 0x246F64 - 0x246FF6
; =========================================================

246F64:  PUSH            {R4,R5,R7,LR}
246F66:  ADD             R7, SP, #8
246F68:  MOV             R5, R0
246F6A:  BLX             j_GetContextRef
246F6E:  MOV             R4, R0
246F70:  CMP             R4, #0
246F72:  IT EQ
246F74:  POPEQ           {R4,R5,R7,PC}
246F76:  LDR.W           R0, [R4,#0x88]
246F7A:  MOV             R1, R5
246F7C:  ADDS            R0, #0x40 ; '@'
246F7E:  BLX             j_LookupUIntMapKey
246F82:  LDR             R1, =(TrapALError_ptr - 0x246F8A)
246F84:  CMP             R0, #0
246F86:  ADD             R1, PC; TrapALError_ptr
246F88:  LDR             R1, [R1]; TrapALError
246F8A:  LDRB            R1, [R1]
246F8C:  BEQ             loc_246FBA
246F8E:  CMP             R1, #0
246F90:  ITT NE
246F92:  MOVNE           R0, #5; sig
246F94:  BLXNE           raise
246F98:  LDREX.W         R0, [R4,#0x50]
246F9C:  CBNZ            R0, loc_246FE4
246F9E:  ADD.W           R0, R4, #0x50 ; 'P'
246FA2:  MOVW            R1, #0xA002
246FA6:  DMB.W           ISH
246FAA:  STREX.W         R2, R1, [R0]
246FAE:  CBZ             R2, loc_246FE8
246FB0:  LDREX.W         R2, [R0]
246FB4:  CMP             R2, #0
246FB6:  BEQ             loc_246FAA
246FB8:  B               loc_246FE4
246FBA:  CMP             R1, #0
246FBC:  ITT NE
246FBE:  MOVNE           R0, #5; sig
246FC0:  BLXNE           raise
246FC4:  LDREX.W         R0, [R4,#0x50]
246FC8:  CBNZ            R0, loc_246FE4
246FCA:  ADD.W           R0, R4, #0x50 ; 'P'
246FCE:  MOVW            R1, #0xA001
246FD2:  DMB.W           ISH
246FD6:  STREX.W         R2, R1, [R0]
246FDA:  CBZ             R2, loc_246FE8
246FDC:  LDREX.W         R2, [R0]
246FE0:  CMP             R2, #0
246FE2:  BEQ             loc_246FD6
246FE4:  CLREX.W
246FE8:  DMB.W           ISH
246FEC:  MOV             R0, R4
246FEE:  POP.W           {R4,R5,R7,LR}
246FF2:  B.W             ALCcontext_DecRef
