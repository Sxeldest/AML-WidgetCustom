; =========================================================
; Game Engine Function: sub_264A34
; Address            : 0x264A34 - 0x264A76
; =========================================================

264A34:  PUSH            {R4,R6,R7,LR}
264A36:  ADD             R7, SP, #8
264A38:  LDR             R0, =(TrapALError_ptr - 0x264A40)
264A3A:  MOV             R4, R1
264A3C:  ADD             R0, PC; TrapALError_ptr
264A3E:  LDR             R0, [R0]; TrapALError
264A40:  LDRB            R0, [R0]
264A42:  CMP             R0, #0
264A44:  ITT NE
264A46:  MOVNE           R0, #5; sig
264A48:  BLXNE           raise
264A4C:  LDREX.W         R0, [R4,#0x50]
264A50:  CBNZ            R0, loc_264A6C
264A52:  ADD.W           R0, R4, #0x50 ; 'P'
264A56:  MOVW            R1, #0xA002
264A5A:  DMB.W           ISH
264A5E:  STREX.W         R2, R1, [R0]
264A62:  CBZ             R2, loc_264A70
264A64:  LDREX.W         R2, [R0]
264A68:  CMP             R2, #0
264A6A:  BEQ             loc_264A5E
264A6C:  CLREX.W
264A70:  DMB.W           ISH
264A74:  POP             {R4,R6,R7,PC}
