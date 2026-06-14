; =========================================================
; Game Engine Function: sub_2166CC
; Address            : 0x2166CC - 0x2166EE
; =========================================================

2166CC:  PUSH            {R4,R6,R7,LR}
2166CE:  ADD             R7, SP, #8
2166D0:  LDRD.W          R3, R0, [R0]
2166D4:  SUBS            R4, R2, R1
2166D6:  SUBS            R0, R0, R3
2166D8:  CMP             R4, R0
2166DA:  BLS             loc_2166E0
2166DC:  MOVS            R0, #0
2166DE:  POP             {R4,R6,R7,PC}
2166E0:  MOV             R0, R1
2166E2:  MOV             R1, R2
2166E4:  MOV             R2, R3
2166E6:  POP.W           {R4,R6,R7,LR}
2166EA:  B.W             sub_2166EE
