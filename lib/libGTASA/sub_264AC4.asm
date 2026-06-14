; =========================================================
; Game Engine Function: sub_264AC4
; Address            : 0x264AC4 - 0x264B06
; =========================================================

264AC4:  PUSH            {R4,R6,R7,LR}
264AC6:  ADD             R7, SP, #8
264AC8:  LDR             R0, =(TrapALError_ptr - 0x264AD0)
264ACA:  MOV             R4, R1
264ACC:  ADD             R0, PC; TrapALError_ptr
264ACE:  LDR             R0, [R0]; TrapALError
264AD0:  LDRB            R0, [R0]
264AD2:  CMP             R0, #0
264AD4:  ITT NE
264AD6:  MOVNE           R0, #5; sig
264AD8:  BLXNE           raise
264ADC:  LDREX.W         R0, [R4,#0x50]
264AE0:  CBNZ            R0, loc_264AFC
264AE2:  ADD.W           R0, R4, #0x50 ; 'P'
264AE6:  MOVW            R1, #0xA002
264AEA:  DMB.W           ISH
264AEE:  STREX.W         R2, R1, [R0]
264AF2:  CBZ             R2, loc_264B00
264AF4:  LDREX.W         R2, [R0]
264AF8:  CMP             R2, #0
264AFA:  BEQ             loc_264AEE
264AFC:  CLREX.W
264B00:  DMB.W           ISH
264B04:  POP             {R4,R6,R7,PC}
