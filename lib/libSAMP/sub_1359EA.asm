; =========================================================
; Game Engine Function: sub_1359EA
; Address            : 0x1359EA - 0x135A16
; =========================================================

1359EA:  PUSH            {R4,R6,R7,LR}
1359EC:  ADD             R7, SP, #8
1359EE:  MOV             R4, R0
1359F0:  LDR             R0, [R1,#0x10]
1359F2:  CBZ             R0, loc_135A00
1359F4:  CMP             R1, R0
1359F6:  BEQ             loc_135A06
1359F8:  LDR             R1, [R0]
1359FA:  LDR             R1, [R1,#8]
1359FC:  BLX             R1
1359FE:  B               loc_135A02
135A00:  MOVS            R0, #0
135A02:  STR             R0, [R4,#0x10]
135A04:  B               loc_135A12
135A06:  STR             R4, [R4,#0x10]
135A08:  LDR             R0, [R1,#0x10]
135A0A:  LDR             R1, [R0]
135A0C:  LDR             R2, [R1,#0xC]
135A0E:  MOV             R1, R4
135A10:  BLX             R2
135A12:  MOV             R0, R4
135A14:  POP             {R4,R6,R7,PC}
