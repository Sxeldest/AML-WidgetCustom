; =========================================================
; Game Engine Function: sub_263BD4
; Address            : 0x263BD4 - 0x263C16
; =========================================================

263BD4:  PUSH            {R4,R6,R7,LR}
263BD6:  ADD             R7, SP, #8
263BD8:  LDR             R0, =(TrapALError_ptr - 0x263BE0)
263BDA:  MOV             R4, R1
263BDC:  ADD             R0, PC; TrapALError_ptr
263BDE:  LDR             R0, [R0]; TrapALError
263BE0:  LDRB            R0, [R0]
263BE2:  CMP             R0, #0
263BE4:  ITT NE
263BE6:  MOVNE           R0, #5; sig
263BE8:  BLXNE           raise
263BEC:  LDREX.W         R0, [R4,#0x50]
263BF0:  CBNZ            R0, loc_263C0C
263BF2:  ADD.W           R0, R4, #0x50 ; 'P'
263BF6:  MOVW            R1, #0xA002
263BFA:  DMB.W           ISH
263BFE:  STREX.W         R2, R1, [R0]
263C02:  CBZ             R2, loc_263C10
263C04:  LDREX.W         R2, [R0]
263C08:  CMP             R2, #0
263C0A:  BEQ             loc_263BFE
263C0C:  CLREX.W
263C10:  DMB.W           ISH
263C14:  POP             {R4,R6,R7,PC}
