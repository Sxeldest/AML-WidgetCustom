; =========================================================
; Game Engine Function: sub_1159B4
; Address            : 0x1159B4 - 0x1159FC
; =========================================================

1159B4:  PUSH            {R4,R5,R7,LR}
1159B6:  ADD             R7, SP, #8
1159B8:  MOV             R4, R0
1159BA:  LDR             R0, [R0,#0x10]
1159BC:  MOV             R5, R1
1159BE:  MOVS            R1, #0
1159C0:  CMP             R4, R0
1159C2:  STR             R1, [R4,#0x10]
1159C4:  BEQ             loc_1159CC
1159C6:  CBZ             R0, loc_1159D6
1159C8:  MOVS            R1, #5
1159CA:  B               loc_1159CE
1159CC:  MOVS            R1, #4
1159CE:  LDR             R2, [R0]
1159D0:  LDR.W           R1, [R2,R1,LSL#2]
1159D4:  BLX             R1
1159D6:  LDR             R0, [R5,#0x10]
1159D8:  CBZ             R0, loc_1159E6
1159DA:  CMP             R5, R0
1159DC:  BEQ             loc_1159EC
1159DE:  STR             R0, [R4,#0x10]
1159E0:  MOVS            R0, #0
1159E2:  STR             R0, [R5,#0x10]
1159E4:  B               loc_1159F8
1159E6:  MOVS            R0, #0
1159E8:  STR             R0, [R4,#0x10]
1159EA:  B               loc_1159F8
1159EC:  STR             R4, [R4,#0x10]
1159EE:  LDR             R0, [R5,#0x10]
1159F0:  LDR             R1, [R0]
1159F2:  LDR             R2, [R1,#0xC]
1159F4:  MOV             R1, R4
1159F6:  BLX             R2
1159F8:  MOV             R0, R4
1159FA:  POP             {R4,R5,R7,PC}
