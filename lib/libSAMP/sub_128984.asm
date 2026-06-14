; =========================================================
; Game Engine Function: sub_128984
; Address            : 0x128984 - 0x1289B0
; =========================================================

128984:  PUSH            {R4,R6,R7,LR}
128986:  ADD             R7, SP, #8
128988:  MOV             R4, R0
12898A:  LDR             R0, [R1,#0x10]
12898C:  CBZ             R0, loc_12899A
12898E:  CMP             R1, R0
128990:  BEQ             loc_1289A0
128992:  LDR             R1, [R0]
128994:  LDR             R1, [R1,#8]
128996:  BLX             R1
128998:  B               loc_12899C
12899A:  MOVS            R0, #0
12899C:  STR             R0, [R4,#0x10]
12899E:  B               loc_1289AC
1289A0:  STR             R4, [R4,#0x10]
1289A2:  LDR             R0, [R1,#0x10]
1289A4:  LDR             R1, [R0]
1289A6:  LDR             R2, [R1,#0xC]
1289A8:  MOV             R1, R4
1289AA:  BLX             R2
1289AC:  MOV             R0, R4
1289AE:  POP             {R4,R6,R7,PC}
