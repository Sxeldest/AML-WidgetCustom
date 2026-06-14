; =========================================================
; Game Engine Function: sub_11B1D8
; Address            : 0x11B1D8 - 0x11B204
; =========================================================

11B1D8:  PUSH            {R4,R6,R7,LR}
11B1DA:  ADD             R7, SP, #8
11B1DC:  MOV             R4, R0
11B1DE:  LDR             R0, [R1,#0x10]
11B1E0:  CBZ             R0, loc_11B1EE
11B1E2:  CMP             R1, R0
11B1E4:  BEQ             loc_11B1F4
11B1E6:  LDR             R1, [R0]
11B1E8:  LDR             R1, [R1,#8]
11B1EA:  BLX             R1
11B1EC:  B               loc_11B1F0
11B1EE:  MOVS            R0, #0
11B1F0:  STR             R0, [R4,#0x10]
11B1F2:  B               loc_11B200
11B1F4:  STR             R4, [R4,#0x10]
11B1F6:  LDR             R0, [R1,#0x10]
11B1F8:  LDR             R1, [R0]
11B1FA:  LDR             R2, [R1,#0xC]
11B1FC:  MOV             R1, R4
11B1FE:  BLX             R2
11B200:  MOV             R0, R4
11B202:  POP             {R4,R6,R7,PC}
