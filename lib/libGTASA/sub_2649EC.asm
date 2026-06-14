; =========================================================
; Game Engine Function: sub_2649EC
; Address            : 0x2649EC - 0x264A2E
; =========================================================

2649EC:  PUSH            {R4,R6,R7,LR}
2649EE:  ADD             R7, SP, #8
2649F0:  LDR             R0, =(TrapALError_ptr - 0x2649F8)
2649F2:  MOV             R4, R1
2649F4:  ADD             R0, PC; TrapALError_ptr
2649F6:  LDR             R0, [R0]; TrapALError
2649F8:  LDRB            R0, [R0]
2649FA:  CMP             R0, #0
2649FC:  ITT NE
2649FE:  MOVNE           R0, #5; sig
264A00:  BLXNE           raise
264A04:  LDREX.W         R0, [R4,#0x50]
264A08:  CBNZ            R0, loc_264A24
264A0A:  ADD.W           R0, R4, #0x50 ; 'P'
264A0E:  MOVW            R1, #0xA002
264A12:  DMB.W           ISH
264A16:  STREX.W         R2, R1, [R0]
264A1A:  CBZ             R2, loc_264A28
264A1C:  LDREX.W         R2, [R0]
264A20:  CMP             R2, #0
264A22:  BEQ             loc_264A16
264A24:  CLREX.W
264A28:  DMB.W           ISH
264A2C:  POP             {R4,R6,R7,PC}
