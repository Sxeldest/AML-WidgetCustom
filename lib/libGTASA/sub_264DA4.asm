; =========================================================
; Game Engine Function: sub_264DA4
; Address            : 0x264DA4 - 0x264DE6
; =========================================================

264DA4:  PUSH            {R4,R6,R7,LR}
264DA6:  ADD             R7, SP, #8
264DA8:  LDR             R0, =(TrapALError_ptr - 0x264DB0)
264DAA:  MOV             R4, R1
264DAC:  ADD             R0, PC; TrapALError_ptr
264DAE:  LDR             R0, [R0]; TrapALError
264DB0:  LDRB            R0, [R0]
264DB2:  CMP             R0, #0
264DB4:  ITT NE
264DB6:  MOVNE           R0, #5; sig
264DB8:  BLXNE           raise
264DBC:  LDREX.W         R0, [R4,#0x50]
264DC0:  CBNZ            R0, loc_264DDC
264DC2:  ADD.W           R0, R4, #0x50 ; 'P'
264DC6:  MOVW            R1, #0xA002
264DCA:  DMB.W           ISH
264DCE:  STREX.W         R2, R1, [R0]
264DD2:  CBZ             R2, loc_264DE0
264DD4:  LDREX.W         R2, [R0]
264DD8:  CMP             R2, #0
264DDA:  BEQ             loc_264DCE
264DDC:  CLREX.W
264DE0:  DMB.W           ISH
264DE4:  POP             {R4,R6,R7,PC}
