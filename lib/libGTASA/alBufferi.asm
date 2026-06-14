; =========================================================
; Game Engine Function: alBufferi
; Address            : 0x246ECC - 0x246F5E
; =========================================================

246ECC:  PUSH            {R4,R5,R7,LR}
246ECE:  ADD             R7, SP, #8
246ED0:  MOV             R5, R0
246ED2:  BLX             j_GetContextRef
246ED6:  MOV             R4, R0
246ED8:  CMP             R4, #0
246EDA:  IT EQ
246EDC:  POPEQ           {R4,R5,R7,PC}
246EDE:  LDR.W           R0, [R4,#0x88]
246EE2:  MOV             R1, R5
246EE4:  ADDS            R0, #0x40 ; '@'
246EE6:  BLX             j_LookupUIntMapKey
246EEA:  LDR             R1, =(TrapALError_ptr - 0x246EF2)
246EEC:  CMP             R0, #0
246EEE:  ADD             R1, PC; TrapALError_ptr
246EF0:  LDR             R1, [R1]; TrapALError
246EF2:  LDRB            R1, [R1]
246EF4:  BEQ             loc_246F22
246EF6:  CMP             R1, #0
246EF8:  ITT NE
246EFA:  MOVNE           R0, #5; sig
246EFC:  BLXNE           raise
246F00:  LDREX.W         R0, [R4,#0x50]
246F04:  CBNZ            R0, loc_246F4C
246F06:  ADD.W           R0, R4, #0x50 ; 'P'
246F0A:  MOVW            R1, #0xA002
246F0E:  DMB.W           ISH
246F12:  STREX.W         R2, R1, [R0]
246F16:  CBZ             R2, loc_246F50
246F18:  LDREX.W         R2, [R0]
246F1C:  CMP             R2, #0
246F1E:  BEQ             loc_246F12
246F20:  B               loc_246F4C
246F22:  CMP             R1, #0
246F24:  ITT NE
246F26:  MOVNE           R0, #5; sig
246F28:  BLXNE           raise
246F2C:  LDREX.W         R0, [R4,#0x50]
246F30:  CBNZ            R0, loc_246F4C
246F32:  ADD.W           R0, R4, #0x50 ; 'P'
246F36:  MOVW            R1, #0xA001
246F3A:  DMB.W           ISH
246F3E:  STREX.W         R2, R1, [R0]
246F42:  CBZ             R2, loc_246F50
246F44:  LDREX.W         R2, [R0]
246F48:  CMP             R2, #0
246F4A:  BEQ             loc_246F3E
246F4C:  CLREX.W
246F50:  DMB.W           ISH
246F54:  MOV             R0, R4
246F56:  POP.W           {R4,R5,R7,LR}
246F5A:  B.W             ALCcontext_DecRef
