; =========================================================
; Game Engine Function: sub_2648CC
; Address            : 0x2648CC - 0x26490E
; =========================================================

2648CC:  PUSH            {R4,R6,R7,LR}
2648CE:  ADD             R7, SP, #8
2648D0:  LDR             R0, =(TrapALError_ptr - 0x2648D8)
2648D2:  MOV             R4, R1
2648D4:  ADD             R0, PC; TrapALError_ptr
2648D6:  LDR             R0, [R0]; TrapALError
2648D8:  LDRB            R0, [R0]
2648DA:  CMP             R0, #0
2648DC:  ITT NE
2648DE:  MOVNE           R0, #5; sig
2648E0:  BLXNE           raise
2648E4:  LDREX.W         R0, [R4,#0x50]
2648E8:  CBNZ            R0, loc_264904
2648EA:  ADD.W           R0, R4, #0x50 ; 'P'
2648EE:  MOVW            R1, #0xA002
2648F2:  DMB.W           ISH
2648F6:  STREX.W         R2, R1, [R0]
2648FA:  CBZ             R2, loc_264908
2648FC:  LDREX.W         R2, [R0]
264900:  CMP             R2, #0
264902:  BEQ             loc_2648F6
264904:  CLREX.W
264908:  DMB.W           ISH
26490C:  POP             {R4,R6,R7,PC}
