; =========================================================
; Game Engine Function: sub_107688
; Address            : 0x107688 - 0x1076EE
; =========================================================

107688:  PUSH            {R4-R7,LR}
10768A:  ADD             R7, SP, #0xC
10768C:  PUSH.W          {R6-R10}
107690:  LDR             R1, =(__stack_chk_guard_ptr - 0x107696)
107692:  ADD             R1, PC; __stack_chk_guard_ptr
107694:  LDR             R1, [R1]; __stack_chk_guard
107696:  LDR             R1, [R1]
107698:  STR             R1, [SP,#0x20+var_1C]
10769A:  CBZ             R2, loc_1076E6
10769C:  MVNS            R0, R0
10769E:  LDR.W           R8, [R7,#arg_0]
1076A2:  ADD.W           R4, R2, R0,LSL#2
1076A6:  MOV             R10, R3
1076A8:  MOV             R9, SP
1076AA:  MOV             R6, R4
1076AC:  LDR             R5, [R6]
1076AE:  CBZ             R5, loc_1076C8
1076B0:  LDR             R0, [R4,R5]
1076B2:  MOV             R2, R9
1076B4:  STR.W           R8, [SP,#0x20+var_20]
1076B8:  LDR             R1, [R0]
1076BA:  LDR             R3, [R1,#0x10]
1076BC:  MOV             R1, R10
1076BE:  BLX             R3
1076C0:  ADDS            R4, #4
1076C2:  ADDS            R6, #4
1076C4:  CMP             R0, #0
1076C6:  BEQ             loc_1076AC
1076C8:  LDR             R0, [SP,#0x20+var_1C]
1076CA:  LDR             R1, =(__stack_chk_guard_ptr - 0x1076D0)
1076CC:  ADD             R1, PC; __stack_chk_guard_ptr
1076CE:  LDR             R1, [R1]; __stack_chk_guard
1076D0:  LDR             R1, [R1]
1076D2:  CMP             R1, R0
1076D4:  ITTTT EQ
1076D6:  CLZEQ.W         R0, R5
1076DA:  LSREQ           R0, R0, #5
1076DC:  POPEQ.W         {R2,R3,R8-R10}
1076E0:  POPEQ           {R4-R7,PC}
1076E2:  BLX             __stack_chk_fail
1076E6:  LDR             R1, [R7,#arg_4]; void *
1076E8:  MOVS            R0, #0; int
1076EA:  BL              sub_1073FC
