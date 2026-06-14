; =========================================================
; Game Engine Function: alGetFilteri
; Address            : 0x254C90 - 0x254D24
; =========================================================

254C90:  PUSH            {R4-R7,LR}
254C92:  ADD             R7, SP, #0xC
254C94:  PUSH.W          {R8}
254C98:  MOV             R8, R2
254C9A:  MOV             R6, R1
254C9C:  MOV             R5, R0
254C9E:  BLX             j_GetContextRef
254CA2:  MOV             R4, R0
254CA4:  CBZ             R4, loc_254CC4
254CA6:  LDR.W           R0, [R4,#0x88]
254CAA:  MOV             R1, R5
254CAC:  ADDS            R0, #0x88
254CAE:  BLX             j_LookupUIntMapKey
254CB2:  CBZ             R0, loc_254CCA
254CB4:  MOVW            R1, #0x8001
254CB8:  CMP             R6, R1
254CBA:  BNE             loc_254D06
254CBC:  LDR             R0, [R0]
254CBE:  STR.W           R0, [R8]
254CC2:  B               loc_254D10
254CC4:  POP.W           {R8}
254CC8:  POP             {R4-R7,PC}
254CCA:  LDR             R0, =(TrapALError_ptr - 0x254CD0)
254CCC:  ADD             R0, PC; TrapALError_ptr
254CCE:  LDR             R0, [R0]; TrapALError
254CD0:  LDRB            R0, [R0]
254CD2:  CMP             R0, #0
254CD4:  ITT NE
254CD6:  MOVNE           R0, #5; sig
254CD8:  BLXNE           raise
254CDC:  LDREX.W         R0, [R4,#0x50]
254CE0:  CBNZ            R0, loc_254CFC
254CE2:  ADD.W           R0, R4, #0x50 ; 'P'
254CE6:  MOVW            R1, #0xA001
254CEA:  DMB.W           ISH
254CEE:  STREX.W         R2, R1, [R0]
254CF2:  CBZ             R2, loc_254D1E
254CF4:  LDREX.W         R2, [R0]
254CF8:  CMP             R2, #0
254CFA:  BEQ             loc_254CEE
254CFC:  CLREX.W
254D00:  DMB.W           ISH
254D04:  B               loc_254D10
254D06:  LDR             R5, [R0,#0x1C]
254D08:  MOV             R1, R4
254D0A:  MOV             R2, R6
254D0C:  MOV             R3, R8
254D0E:  BLX             R5
254D10:  MOV             R0, R4
254D12:  POP.W           {R8}
254D16:  POP.W           {R4-R7,LR}
254D1A:  B.W             ALCcontext_DecRef
254D1E:  DMB.W           ISH
254D22:  B               loc_254D10
