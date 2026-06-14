; =========================================================
; Game Engine Function: sub_264DEC
; Address            : 0x264DEC - 0x264E2E
; =========================================================

264DEC:  PUSH            {R4,R6,R7,LR}
264DEE:  ADD             R7, SP, #8
264DF0:  LDR             R0, =(TrapALError_ptr - 0x264DF8)
264DF2:  MOV             R4, R1
264DF4:  ADD             R0, PC; TrapALError_ptr
264DF6:  LDR             R0, [R0]; TrapALError
264DF8:  LDRB            R0, [R0]
264DFA:  CMP             R0, #0
264DFC:  ITT NE
264DFE:  MOVNE           R0, #5; sig
264E00:  BLXNE           raise
264E04:  LDREX.W         R0, [R4,#0x50]
264E08:  CBNZ            R0, loc_264E24
264E0A:  ADD.W           R0, R4, #0x50 ; 'P'
264E0E:  MOVW            R1, #0xA002
264E12:  DMB.W           ISH
264E16:  STREX.W         R2, R1, [R0]
264E1A:  CBZ             R2, loc_264E28
264E1C:  LDREX.W         R2, [R0]
264E20:  CMP             R2, #0
264E22:  BEQ             loc_264E16
264E24:  CLREX.W
264E28:  DMB.W           ISH
264E2C:  POP             {R4,R6,R7,PC}
