; =========================================================
; Game Engine Function: sub_264A7C
; Address            : 0x264A7C - 0x264ABE
; =========================================================

264A7C:  PUSH            {R4,R6,R7,LR}
264A7E:  ADD             R7, SP, #8
264A80:  LDR             R0, =(TrapALError_ptr - 0x264A88)
264A82:  MOV             R4, R1
264A84:  ADD             R0, PC; TrapALError_ptr
264A86:  LDR             R0, [R0]; TrapALError
264A88:  LDRB            R0, [R0]
264A8A:  CMP             R0, #0
264A8C:  ITT NE
264A8E:  MOVNE           R0, #5; sig
264A90:  BLXNE           raise
264A94:  LDREX.W         R0, [R4,#0x50]
264A98:  CBNZ            R0, loc_264AB4
264A9A:  ADD.W           R0, R4, #0x50 ; 'P'
264A9E:  MOVW            R1, #0xA002
264AA2:  DMB.W           ISH
264AA6:  STREX.W         R2, R1, [R0]
264AAA:  CBZ             R2, loc_264AB8
264AAC:  LDREX.W         R2, [R0]
264AB0:  CMP             R2, #0
264AB2:  BEQ             loc_264AA6
264AB4:  CLREX.W
264AB8:  DMB.W           ISH
264ABC:  POP             {R4,R6,R7,PC}
