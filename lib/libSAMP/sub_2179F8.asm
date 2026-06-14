; =========================================================
; Game Engine Function: sub_2179F8
; Address            : 0x2179F8 - 0x217A16
; =========================================================

2179F8:  PUSH            {R4,R6,R7,LR}
2179FA:  ADD             R7, SP, #8
2179FC:  MOV             R4, R0
2179FE:  LDRB            R0, [R0,#0x10]
217A00:  CBZ             R0, loc_217A06
217A02:  MOVS            R0, #0
217A04:  POP             {R4,R6,R7,PC}
217A06:  MOVS            R0, #1
217A08:  STRB            R0, [R4,#0x10]
217A0A:  LDR             R0, [R4,#0xC]
217A0C:  BL              sub_217AE2
217A10:  MOVS            R1, #0
217A12:  STRB            R1, [R4,#0x10]
217A14:  POP             {R4,R6,R7,PC}
