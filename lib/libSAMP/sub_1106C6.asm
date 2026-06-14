; =========================================================
; Game Engine Function: sub_1106C6
; Address            : 0x1106C6 - 0x110766
; =========================================================

1106C6:  PUSH            {R4-R7,LR}
1106C8:  ADD             R7, SP, #0xC
1106CA:  PUSH.W          {R11}
1106CE:  SUB             SP, SP, #0x10
1106D0:  CMP             R1, R0
1106D2:  BEQ             loc_11075E
1106D4:  MOV             R5, R0
1106D6:  LDR             R0, [R0,#0x10]
1106D8:  MOV             R4, R1
1106DA:  CMP             R0, R5
1106DC:  BEQ             loc_1106EA
1106DE:  LDR             R1, [R4,#0x10]
1106E0:  CMP             R4, R1
1106E2:  BEQ             loc_110706
1106E4:  STR             R1, [R5,#0x10]
1106E6:  STR             R0, [R4,#0x10]
1106E8:  B               loc_11075E
1106EA:  LDR             R1, [R4,#0x10]
1106EC:  CMP             R1, R4
1106EE:  BEQ             loc_110720
1106F0:  LDR             R1, [R0]
1106F2:  LDR             R2, [R1,#0xC]
1106F4:  MOV             R1, R4
1106F6:  BLX             R2
1106F8:  LDR             R0, [R5,#0x10]
1106FA:  LDR             R1, [R0]
1106FC:  LDR             R1, [R1,#0x10]
1106FE:  BLX             R1
110700:  LDR             R0, [R4,#0x10]
110702:  STR             R0, [R5,#0x10]
110704:  B               loc_11075C
110706:  LDR             R0, [R1]
110708:  LDR             R2, [R0,#0xC]
11070A:  MOV             R0, R1
11070C:  MOV             R1, R5
11070E:  BLX             R2
110710:  LDR             R0, [R4,#0x10]
110712:  LDR             R1, [R0]
110714:  LDR             R1, [R1,#0x10]
110716:  BLX             R1
110718:  LDR             R0, [R5,#0x10]
11071A:  STR             R0, [R4,#0x10]
11071C:  STR             R5, [R5,#0x10]
11071E:  B               loc_11075E
110720:  LDR             R1, [R0]
110722:  LDR             R2, [R1,#0xC]
110724:  MOV             R1, SP
110726:  BLX             R2
110728:  LDR             R0, [R5,#0x10]
11072A:  LDR             R1, [R0]
11072C:  LDR             R1, [R1,#0x10]
11072E:  BLX             R1
110730:  MOVS            R6, #0
110732:  STR             R6, [R5,#0x10]
110734:  LDR             R0, [R4,#0x10]
110736:  LDR             R1, [R0]
110738:  LDR             R2, [R1,#0xC]
11073A:  MOV             R1, R5
11073C:  BLX             R2
11073E:  LDR             R0, [R4,#0x10]
110740:  LDR             R1, [R0]
110742:  LDR             R1, [R1,#0x10]
110744:  BLX             R1
110746:  LDR             R0, [SP,#0x20+var_20]
110748:  STR             R6, [R4,#0x10]
11074A:  STR             R5, [R5,#0x10]
11074C:  LDR             R2, [R0,#0xC]
11074E:  MOV             R0, SP
110750:  MOV             R1, R4
110752:  BLX             R2
110754:  LDR             R0, [SP,#0x20+var_20]
110756:  LDR             R1, [R0,#0x10]
110758:  MOV             R0, SP
11075A:  BLX             R1
11075C:  STR             R4, [R4,#0x10]
11075E:  ADD             SP, SP, #0x10
110760:  POP.W           {R11}
110764:  POP             {R4-R7,PC}
