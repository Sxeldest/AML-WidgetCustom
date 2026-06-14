; =========================================================
; Game Engine Function: sub_264EEC
; Address            : 0x264EEC - 0x264F2E
; =========================================================

264EEC:  PUSH            {R4,R6,R7,LR}
264EEE:  ADD             R7, SP, #8
264EF0:  LDR             R0, =(TrapALError_ptr - 0x264EF8)
264EF2:  MOV             R4, R1
264EF4:  ADD             R0, PC; TrapALError_ptr
264EF6:  LDR             R0, [R0]; TrapALError
264EF8:  LDRB            R0, [R0]
264EFA:  CMP             R0, #0
264EFC:  ITT NE
264EFE:  MOVNE           R0, #5; sig
264F00:  BLXNE           raise
264F04:  LDREX.W         R0, [R4,#0x50]
264F08:  CBNZ            R0, loc_264F24
264F0A:  ADD.W           R0, R4, #0x50 ; 'P'
264F0E:  MOVW            R1, #0xA002
264F12:  DMB.W           ISH
264F16:  STREX.W         R2, R1, [R0]
264F1A:  CBZ             R2, loc_264F28
264F1C:  LDREX.W         R2, [R0]
264F20:  CMP             R2, #0
264F22:  BEQ             loc_264F16
264F24:  CLREX.W
264F28:  DMB.W           ISH
264F2C:  POP             {R4,R6,R7,PC}
