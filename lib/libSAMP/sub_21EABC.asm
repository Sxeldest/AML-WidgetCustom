; =========================================================
; Game Engine Function: sub_21EABC
; Address            : 0x21EABC - 0x21EADE
; =========================================================

21EABC:  PUSH            {R4,R5,R7,LR}
21EABE:  ADD             R7, SP, #8
21EAC0:  LDR             R2, [R0]
21EAC2:  MOVS            R3, #0
21EAC4:  MOVS            R1, #0
21EAC6:  LDRB.W          R4, [R2],#1
21EACA:  AND.W           R5, R4, #0x7F
21EACE:  LSLS            R5, R3
21EAD0:  ADDS            R3, #7
21EAD2:  ORRS            R1, R5
21EAD4:  LSLS            R4, R4, #0x18
21EAD6:  BMI             loc_21EAC6
21EAD8:  STR             R2, [R0]
21EADA:  MOV             R0, R1
21EADC:  POP             {R4,R5,R7,PC}
