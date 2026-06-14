; =========================================================
; Game Engine Function: sub_10BDC6
; Address            : 0x10BDC6 - 0x10BDE6
; =========================================================

10BDC6:  PUSH            {R4,R6,R7,LR}
10BDC8:  ADD             R7, SP, #8
10BDCA:  MOV             R4, R0
10BDCC:  LDR             R0, [R0,#0x10]
10BDCE:  CMP             R4, R0
10BDD0:  BEQ             loc_10BDD8
10BDD2:  CBZ             R0, loc_10BDE2
10BDD4:  MOVS            R1, #5
10BDD6:  B               loc_10BDDA
10BDD8:  MOVS            R1, #4
10BDDA:  LDR             R2, [R0]
10BDDC:  LDR.W           R1, [R2,R1,LSL#2]
10BDE0:  BLX             R1
10BDE2:  MOV             R0, R4
10BDE4:  POP             {R4,R6,R7,PC}
