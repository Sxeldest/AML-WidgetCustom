; =========================================================
; Game Engine Function: alSetError
; Address            : 0x23CDE8 - 0x23CE28
; =========================================================

23CDE8:  PUSH            {R4,R5,R7,LR}
23CDEA:  ADD             R7, SP, #8
23CDEC:  MOV             R5, R0
23CDEE:  LDR             R0, =(TrapALError_ptr - 0x23CDF6)
23CDF0:  MOV             R4, R1
23CDF2:  ADD             R0, PC; TrapALError_ptr
23CDF4:  LDR             R0, [R0]; TrapALError
23CDF6:  LDRB            R0, [R0]
23CDF8:  CMP             R0, #0
23CDFA:  ITT NE
23CDFC:  MOVNE           R0, #5; sig
23CDFE:  BLXNE           raise
23CE02:  LDREX.W         R0, [R5,#0x50]
23CE06:  CBNZ            R0, loc_23CE1E
23CE08:  ADD.W           R0, R5, #0x50 ; 'P'
23CE0C:  DMB.W           ISH
23CE10:  STREX.W         R1, R4, [R0]
23CE14:  CBZ             R1, loc_23CE22
23CE16:  LDREX.W         R1, [R0]
23CE1A:  CMP             R1, #0
23CE1C:  BEQ             loc_23CE10
23CE1E:  CLREX.W
23CE22:  DMB.W           ISH
23CE26:  POP             {R4,R5,R7,PC}
