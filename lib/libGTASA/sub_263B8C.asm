; =========================================================
; Game Engine Function: sub_263B8C
; Address            : 0x263B8C - 0x263BCE
; =========================================================

263B8C:  PUSH            {R4,R6,R7,LR}
263B8E:  ADD             R7, SP, #8
263B90:  LDR             R0, =(TrapALError_ptr - 0x263B98)
263B92:  MOV             R4, R1
263B94:  ADD             R0, PC; TrapALError_ptr
263B96:  LDR             R0, [R0]; TrapALError
263B98:  LDRB            R0, [R0]
263B9A:  CMP             R0, #0
263B9C:  ITT NE
263B9E:  MOVNE           R0, #5; sig
263BA0:  BLXNE           raise
263BA4:  LDREX.W         R0, [R4,#0x50]
263BA8:  CBNZ            R0, loc_263BC4
263BAA:  ADD.W           R0, R4, #0x50 ; 'P'
263BAE:  MOVW            R1, #0xA002
263BB2:  DMB.W           ISH
263BB6:  STREX.W         R2, R1, [R0]
263BBA:  CBZ             R2, loc_263BC8
263BBC:  LDREX.W         R2, [R0]
263BC0:  CMP             R2, #0
263BC2:  BEQ             loc_263BB6
263BC4:  CLREX.W
263BC8:  DMB.W           ISH
263BCC:  POP             {R4,R6,R7,PC}
