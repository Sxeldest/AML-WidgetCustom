; =========================================================
; Game Engine Function: sub_1280DC
; Address            : 0x1280DC - 0x128108
; =========================================================

1280DC:  PUSH            {R4,R6,R7,LR}
1280DE:  ADD             R7, SP, #8
1280E0:  MOV             R4, R0
1280E2:  LDR             R0, [R1,#0x10]
1280E4:  CBZ             R0, loc_1280F2
1280E6:  CMP             R1, R0
1280E8:  BEQ             loc_1280F8
1280EA:  LDR             R1, [R0]
1280EC:  LDR             R1, [R1,#8]
1280EE:  BLX             R1
1280F0:  B               loc_1280F4
1280F2:  MOVS            R0, #0
1280F4:  STR             R0, [R4,#0x10]
1280F6:  B               loc_128104
1280F8:  STR             R4, [R4,#0x10]
1280FA:  LDR             R0, [R1,#0x10]
1280FC:  LDR             R1, [R0]
1280FE:  LDR             R2, [R1,#0xC]
128100:  MOV             R1, R4
128102:  BLX             R2
128104:  MOV             R0, R4
128106:  POP             {R4,R6,R7,PC}
