; =========================================================
; Game Engine Function: sub_7DAAC
; Address            : 0x7DAAC - 0x7DACC
; =========================================================

7DAAC:  PUSH            {R4,R6,R7,LR}
7DAAE:  ADD             R7, SP, #8
7DAB0:  MOV             R4, R0
7DAB2:  LDR             R0, [R0,#0x10]
7DAB4:  CMP             R4, R0
7DAB6:  BEQ             loc_7DABE
7DAB8:  CBZ             R0, loc_7DAC8
7DABA:  MOVS            R1, #5
7DABC:  B               loc_7DAC0
7DABE:  MOVS            R1, #4
7DAC0:  LDR             R2, [R0]
7DAC2:  LDR.W           R1, [R2,R1,LSL#2]
7DAC6:  BLX             R1
7DAC8:  MOV             R0, R4
7DACA:  POP             {R4,R6,R7,PC}
