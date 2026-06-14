; =========================================================
; Game Engine Function: sub_264FC4
; Address            : 0x264FC4 - 0x265006
; =========================================================

264FC4:  PUSH            {R4,R6,R7,LR}
264FC6:  ADD             R7, SP, #8
264FC8:  LDR             R0, =(TrapALError_ptr - 0x264FD0)
264FCA:  MOV             R4, R1
264FCC:  ADD             R0, PC; TrapALError_ptr
264FCE:  LDR             R0, [R0]; TrapALError
264FD0:  LDRB            R0, [R0]
264FD2:  CMP             R0, #0
264FD4:  ITT NE
264FD6:  MOVNE           R0, #5; sig
264FD8:  BLXNE           raise
264FDC:  LDREX.W         R0, [R4,#0x50]
264FE0:  CBNZ            R0, loc_264FFC
264FE2:  ADD.W           R0, R4, #0x50 ; 'P'
264FE6:  MOVW            R1, #0xA002
264FEA:  DMB.W           ISH
264FEE:  STREX.W         R2, R1, [R0]
264FF2:  CBZ             R2, loc_265000
264FF4:  LDREX.W         R2, [R0]
264FF8:  CMP             R2, #0
264FFA:  BEQ             loc_264FEE
264FFC:  CLREX.W
265000:  DMB.W           ISH
265004:  POP             {R4,R6,R7,PC}
