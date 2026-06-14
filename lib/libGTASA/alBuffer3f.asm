; =========================================================
; Game Engine Function: alBuffer3f
; Address            : 0x246D54 - 0x246DE6
; =========================================================

246D54:  PUSH            {R4,R5,R7,LR}
246D56:  ADD             R7, SP, #8
246D58:  MOV             R5, R0
246D5A:  BLX             j_GetContextRef
246D5E:  MOV             R4, R0
246D60:  CMP             R4, #0
246D62:  IT EQ
246D64:  POPEQ           {R4,R5,R7,PC}
246D66:  LDR.W           R0, [R4,#0x88]
246D6A:  MOV             R1, R5
246D6C:  ADDS            R0, #0x40 ; '@'
246D6E:  BLX             j_LookupUIntMapKey
246D72:  LDR             R1, =(TrapALError_ptr - 0x246D7A)
246D74:  CMP             R0, #0
246D76:  ADD             R1, PC; TrapALError_ptr
246D78:  LDR             R1, [R1]; TrapALError
246D7A:  LDRB            R1, [R1]
246D7C:  BEQ             loc_246DAA
246D7E:  CMP             R1, #0
246D80:  ITT NE
246D82:  MOVNE           R0, #5; sig
246D84:  BLXNE           raise
246D88:  LDREX.W         R0, [R4,#0x50]
246D8C:  CBNZ            R0, loc_246DD4
246D8E:  ADD.W           R0, R4, #0x50 ; 'P'
246D92:  MOVW            R1, #0xA002
246D96:  DMB.W           ISH
246D9A:  STREX.W         R2, R1, [R0]
246D9E:  CBZ             R2, loc_246DD8
246DA0:  LDREX.W         R2, [R0]
246DA4:  CMP             R2, #0
246DA6:  BEQ             loc_246D9A
246DA8:  B               loc_246DD4
246DAA:  CMP             R1, #0
246DAC:  ITT NE
246DAE:  MOVNE           R0, #5; sig
246DB0:  BLXNE           raise
246DB4:  LDREX.W         R0, [R4,#0x50]
246DB8:  CBNZ            R0, loc_246DD4
246DBA:  ADD.W           R0, R4, #0x50 ; 'P'
246DBE:  MOVW            R1, #0xA001
246DC2:  DMB.W           ISH
246DC6:  STREX.W         R2, R1, [R0]
246DCA:  CBZ             R2, loc_246DD8
246DCC:  LDREX.W         R2, [R0]
246DD0:  CMP             R2, #0
246DD2:  BEQ             loc_246DC6
246DD4:  CLREX.W
246DD8:  DMB.W           ISH
246DDC:  MOV             R0, R4
246DDE:  POP.W           {R4,R5,R7,LR}
246DE2:  B.W             ALCcontext_DecRef
