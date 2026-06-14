; =========================================================
; Game Engine Function: sub_2649A4
; Address            : 0x2649A4 - 0x2649E6
; =========================================================

2649A4:  PUSH            {R4,R6,R7,LR}
2649A6:  ADD             R7, SP, #8
2649A8:  LDR             R0, =(TrapALError_ptr - 0x2649B0)
2649AA:  MOV             R4, R1
2649AC:  ADD             R0, PC; TrapALError_ptr
2649AE:  LDR             R0, [R0]; TrapALError
2649B0:  LDRB            R0, [R0]
2649B2:  CMP             R0, #0
2649B4:  ITT NE
2649B6:  MOVNE           R0, #5; sig
2649B8:  BLXNE           raise
2649BC:  LDREX.W         R0, [R4,#0x50]
2649C0:  CBNZ            R0, loc_2649DC
2649C2:  ADD.W           R0, R4, #0x50 ; 'P'
2649C6:  MOVW            R1, #0xA002
2649CA:  DMB.W           ISH
2649CE:  STREX.W         R2, R1, [R0]
2649D2:  CBZ             R2, loc_2649E0
2649D4:  LDREX.W         R2, [R0]
2649D8:  CMP             R2, #0
2649DA:  BEQ             loc_2649CE
2649DC:  CLREX.W
2649E0:  DMB.W           ISH
2649E4:  POP             {R4,R6,R7,PC}
