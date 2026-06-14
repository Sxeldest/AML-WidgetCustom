; =========================================================
; Game Engine Function: sub_1156E4
; Address            : 0x1156E4 - 0x115710
; =========================================================

1156E4:  PUSH            {R4,R6,R7,LR}
1156E6:  ADD             R7, SP, #8
1156E8:  MOV             R4, R0
1156EA:  LDR             R0, [R1,#0x10]
1156EC:  CBZ             R0, loc_1156FA
1156EE:  CMP             R1, R0
1156F0:  BEQ             loc_115700
1156F2:  LDR             R1, [R0]
1156F4:  LDR             R1, [R1,#8]
1156F6:  BLX             R1
1156F8:  B               loc_1156FC
1156FA:  MOVS            R0, #0
1156FC:  STR             R0, [R4,#0x10]
1156FE:  B               loc_11570C
115700:  STR             R4, [R4,#0x10]
115702:  LDR             R0, [R1,#0x10]
115704:  LDR             R1, [R0]
115706:  LDR             R2, [R1,#0xC]
115708:  MOV             R1, R4
11570A:  BLX             R2
11570C:  MOV             R0, R4
11570E:  POP             {R4,R6,R7,PC}
