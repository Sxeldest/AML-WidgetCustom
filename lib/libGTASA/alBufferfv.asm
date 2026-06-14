; =========================================================
; Game Engine Function: alBufferfv
; Address            : 0x246DEC - 0x246EC2
; =========================================================

246DEC:  PUSH            {R4-R7,LR}
246DEE:  ADD             R7, SP, #0xC
246DF0:  PUSH.W          {R11}
246DF4:  MOV             R5, R2
246DF6:  MOV             R6, R0
246DF8:  BLX             j_GetContextRef
246DFC:  MOV             R4, R0
246DFE:  CBZ             R4, loc_246E48
246E00:  LDR.W           R0, [R4,#0x88]
246E04:  MOV             R1, R6
246E06:  ADDS            R0, #0x40 ; '@'
246E08:  BLX             j_LookupUIntMapKey
246E0C:  CBZ             R0, loc_246E4E
246E0E:  LDR             R0, =(TrapALError_ptr - 0x246E16)
246E10:  CMP             R5, #0
246E12:  ADD             R0, PC; TrapALError_ptr
246E14:  LDR             R0, [R0]; TrapALError
246E16:  LDRB            R0, [R0]
246E18:  BEQ             loc_246E82
246E1A:  CMP             R0, #0
246E1C:  ITT NE
246E1E:  MOVNE           R0, #5; sig
246E20:  BLXNE           raise
246E24:  LDREX.W         R0, [R4,#0x50]
246E28:  CMP             R0, #0
246E2A:  BNE             loc_246EAC
246E2C:  ADD.W           R0, R4, #0x50 ; 'P'
246E30:  MOVW            R1, #0xA002
246E34:  DMB.W           ISH
246E38:  STREX.W         R2, R1, [R0]
246E3C:  CBZ             R2, loc_246EB0
246E3E:  LDREX.W         R2, [R0]
246E42:  CMP             R2, #0
246E44:  BEQ             loc_246E38
246E46:  B               loc_246EAC
246E48:  POP.W           {R11}
246E4C:  POP             {R4-R7,PC}
246E4E:  LDR             R0, =(TrapALError_ptr - 0x246E54)
246E50:  ADD             R0, PC; TrapALError_ptr
246E52:  LDR             R0, [R0]; TrapALError
246E54:  LDRB            R0, [R0]
246E56:  CMP             R0, #0
246E58:  ITT NE
246E5A:  MOVNE           R0, #5; sig
246E5C:  BLXNE           raise
246E60:  LDREX.W         R0, [R4,#0x50]
246E64:  CBNZ            R0, loc_246EAC
246E66:  ADD.W           R0, R4, #0x50 ; 'P'
246E6A:  MOVW            R1, #0xA001
246E6E:  DMB.W           ISH
246E72:  STREX.W         R2, R1, [R0]
246E76:  CBZ             R2, loc_246EB0
246E78:  LDREX.W         R2, [R0]
246E7C:  CMP             R2, #0
246E7E:  BEQ             loc_246E72
246E80:  B               loc_246EAC
246E82:  CMP             R0, #0
246E84:  ITT NE
246E86:  MOVNE           R0, #5; sig
246E88:  BLXNE           raise
246E8C:  LDREX.W         R0, [R4,#0x50]
246E90:  CBNZ            R0, loc_246EAC
246E92:  ADD.W           R0, R4, #0x50 ; 'P'
246E96:  MOVW            R1, #0xA003
246E9A:  DMB.W           ISH
246E9E:  STREX.W         R2, R1, [R0]
246EA2:  CBZ             R2, loc_246EB0
246EA4:  LDREX.W         R2, [R0]
246EA8:  CMP             R2, #0
246EAA:  BEQ             loc_246E9E
246EAC:  CLREX.W
246EB0:  DMB.W           ISH
246EB4:  MOV             R0, R4
246EB6:  POP.W           {R11}
246EBA:  POP.W           {R4-R7,LR}
246EBE:  B.W             ALCcontext_DecRef
