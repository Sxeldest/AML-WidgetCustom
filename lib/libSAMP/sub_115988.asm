; =========================================================
; Game Engine Function: sub_115988
; Address            : 0x115988 - 0x1159B4
; =========================================================

115988:  PUSH            {R4,R6,R7,LR}
11598A:  ADD             R7, SP, #8
11598C:  MOV             R4, R0
11598E:  LDR             R0, [R1,#0x10]
115990:  CBZ             R0, loc_11599E
115992:  CMP             R1, R0
115994:  BEQ             loc_1159A4
115996:  LDR             R1, [R0]
115998:  LDR             R1, [R1,#8]
11599A:  BLX             R1
11599C:  B               loc_1159A0
11599E:  MOVS            R0, #0
1159A0:  STR             R0, [R4,#0x10]
1159A2:  B               loc_1159B0
1159A4:  STR             R4, [R4,#0x10]
1159A6:  LDR             R0, [R1,#0x10]
1159A8:  LDR             R1, [R0]
1159AA:  LDR             R2, [R1,#0xC]
1159AC:  MOV             R1, R4
1159AE:  BLX             R2
1159B0:  MOV             R0, R4
1159B2:  POP             {R4,R6,R7,PC}
