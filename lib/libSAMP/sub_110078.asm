; =========================================================
; Game Engine Function: sub_110078
; Address            : 0x110078 - 0x1100C0
; =========================================================

110078:  PUSH            {R4,R5,R7,LR}
11007A:  ADD             R7, SP, #8
11007C:  MOV             R4, R0
11007E:  LDR             R0, [R0,#0x10]
110080:  MOV             R5, R1
110082:  MOVS            R1, #0
110084:  CMP             R4, R0
110086:  STR             R1, [R4,#0x10]
110088:  BEQ             loc_110090
11008A:  CBZ             R0, loc_11009A
11008C:  MOVS            R1, #5
11008E:  B               loc_110092
110090:  MOVS            R1, #4
110092:  LDR             R2, [R0]
110094:  LDR.W           R1, [R2,R1,LSL#2]
110098:  BLX             R1
11009A:  LDR             R0, [R5,#0x10]
11009C:  CBZ             R0, loc_1100AA
11009E:  CMP             R5, R0
1100A0:  BEQ             loc_1100B0
1100A2:  STR             R0, [R4,#0x10]
1100A4:  MOVS            R0, #0
1100A6:  STR             R0, [R5,#0x10]
1100A8:  B               loc_1100BC
1100AA:  MOVS            R0, #0
1100AC:  STR             R0, [R4,#0x10]
1100AE:  B               loc_1100BC
1100B0:  STR             R4, [R4,#0x10]
1100B2:  LDR             R0, [R5,#0x10]
1100B4:  LDR             R1, [R0]
1100B6:  LDR             R2, [R1,#0xC]
1100B8:  MOV             R1, R4
1100BA:  BLX             R2
1100BC:  MOV             R0, R4
1100BE:  POP             {R4,R5,R7,PC}
