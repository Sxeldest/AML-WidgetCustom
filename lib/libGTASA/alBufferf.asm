; =========================================================
; Game Engine Function: alBufferf
; Address            : 0x246CBC - 0x246D4E
; =========================================================

246CBC:  PUSH            {R4,R5,R7,LR}
246CBE:  ADD             R7, SP, #8
246CC0:  MOV             R5, R0
246CC2:  BLX             j_GetContextRef
246CC6:  MOV             R4, R0
246CC8:  CMP             R4, #0
246CCA:  IT EQ
246CCC:  POPEQ           {R4,R5,R7,PC}
246CCE:  LDR.W           R0, [R4,#0x88]
246CD2:  MOV             R1, R5
246CD4:  ADDS            R0, #0x40 ; '@'
246CD6:  BLX             j_LookupUIntMapKey
246CDA:  LDR             R1, =(TrapALError_ptr - 0x246CE2)
246CDC:  CMP             R0, #0
246CDE:  ADD             R1, PC; TrapALError_ptr
246CE0:  LDR             R1, [R1]; TrapALError
246CE2:  LDRB            R1, [R1]
246CE4:  BEQ             loc_246D12
246CE6:  CMP             R1, #0
246CE8:  ITT NE
246CEA:  MOVNE           R0, #5; sig
246CEC:  BLXNE           raise
246CF0:  LDREX.W         R0, [R4,#0x50]
246CF4:  CBNZ            R0, loc_246D3C
246CF6:  ADD.W           R0, R4, #0x50 ; 'P'
246CFA:  MOVW            R1, #0xA002
246CFE:  DMB.W           ISH
246D02:  STREX.W         R2, R1, [R0]
246D06:  CBZ             R2, loc_246D40
246D08:  LDREX.W         R2, [R0]
246D0C:  CMP             R2, #0
246D0E:  BEQ             loc_246D02
246D10:  B               loc_246D3C
246D12:  CMP             R1, #0
246D14:  ITT NE
246D16:  MOVNE           R0, #5; sig
246D18:  BLXNE           raise
246D1C:  LDREX.W         R0, [R4,#0x50]
246D20:  CBNZ            R0, loc_246D3C
246D22:  ADD.W           R0, R4, #0x50 ; 'P'
246D26:  MOVW            R1, #0xA001
246D2A:  DMB.W           ISH
246D2E:  STREX.W         R2, R1, [R0]
246D32:  CBZ             R2, loc_246D40
246D34:  LDREX.W         R2, [R0]
246D38:  CMP             R2, #0
246D3A:  BEQ             loc_246D2E
246D3C:  CLREX.W
246D40:  DMB.W           ISH
246D44:  MOV             R0, R4
246D46:  POP.W           {R4,R5,R7,LR}
246D4A:  B.W             ALCcontext_DecRef
