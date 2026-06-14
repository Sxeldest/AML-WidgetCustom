; =========================================================
; Game Engine Function: inflate_trees_dynamic
; Address            : 0x20F414 - 0x20F508
; =========================================================

20F414:  PUSH            {R4-R7,LR}
20F416:  ADD             R7, SP, #0xC
20F418:  PUSH.W          {R8-R11}
20F41C:  SUB             SP, SP, #0x1C
20F41E:  LDR.W           R10, [R7,#arg_10]
20F422:  MOV             R9, R0
20F424:  MOVS            R0, #0
20F426:  MOV             R5, R3
20F428:  STR             R0, [SP,#0x38+var_20]
20F42A:  MOV             R6, R2
20F42C:  LDR.W           R3, [R10,#0x20]
20F430:  MOV             R8, R1
20F432:  LDR.W           R0, [R10,#0x28]
20F436:  MOV.W           R1, #0x120
20F43A:  MOVS            R2, #4
20F43C:  BLX             R3
20F43E:  MOV             R4, R0
20F440:  CMP             R4, #0
20F442:  BEQ             loc_20F4BA
20F444:  LDR             R3, =(unk_5EFA64 - 0x20F452)
20F446:  ADD.W           R11, SP, #0x38+var_20
20F44A:  LDR             R1, =(unk_5EFAE0 - 0x20F456)
20F44C:  LDR             R2, [R7,#arg_C]
20F44E:  ADD             R3, PC; unk_5EFA64
20F450:  LDR             R0, [R7,#arg_4]
20F452:  ADD             R1, PC; unk_5EFAE0
20F454:  STRD.W          R1, R0, [SP,#0x38+var_38]
20F458:  MOV             R0, R6
20F45A:  STRD.W          R5, R2, [SP,#0x38+var_30]
20F45E:  MOV             R1, R9
20F460:  MOVW            R2, #0x101
20F464:  STRD.W          R11, R4, [SP,#0x38+var_28]
20F468:  BL              sub_20EF6C
20F46C:  ADDS            R1, R0, #4
20F46E:  BEQ             loc_20F4C4
20F470:  ADDS            R1, R0, #3
20F472:  BEQ             loc_20F4CA
20F474:  CBNZ            R0, loc_20F4C0
20F476:  LDR             R0, [R5]
20F478:  CBZ             R0, loc_20F4C0
20F47A:  LDR             R0, [R7,#arg_8]
20F47C:  LDR             R1, =(unk_5EFBD4 - 0x20F484)
20F47E:  LDR             R3, =(unk_5EFB5C - 0x20F48C)
20F480:  ADD             R1, PC; unk_5EFBD4
20F482:  STRD.W          R1, R0, [SP,#0x38+var_38]
20F486:  LDR             R2, [R7,#arg_0]
20F488:  ADD             R3, PC; unk_5EFB5C
20F48A:  LDR             R0, [R7,#arg_C]
20F48C:  MOV             R1, R8
20F48E:  STR             R2, [SP,#0x38+var_30]
20F490:  MOVS            R2, #0
20F492:  STRD.W          R0, R11, [SP,#0x38+var_2C]
20F496:  ADD.W           R0, R6, R9,LSL#2
20F49A:  STR             R4, [SP,#0x38+var_24]
20F49C:  BL              sub_20EF6C
20F4A0:  ADDS            R1, R0, #5
20F4A2:  CMP             R1, #5; switch 6 cases
20F4A4:  BHI             def_20F4AC; jumptable 0020F4AC default case, cases 3,4
20F4A6:  MOV             R5, #0xFFFFFFFC
20F4AA:  ADR             R0, aIncompleteDist; "incomplete distance tree"
20F4AC:  TBB.W           [PC,R1]; switch jump
20F4B0:  DCB 0xE; jump table for switch statement
20F4B1:  DCB 0x12
20F4B2:  DCB 3
20F4B3:  DCB 0x23
20F4B4:  DCB 0x23
20F4B5:  DCB 0x1D
20F4B6:  ADR             R0, aOversubscribed_0; jumptable 0020F4AC case 2
20F4B8:  B               loc_20F4CC; jumptable 0020F4AC case 0
20F4BA:  MOV             R5, #0xFFFFFFFC
20F4BE:  B               loc_20F4E0
20F4C0:  ADR             R0, aIncompleteLite; "incomplete literal/length tree"
20F4C2:  B               loc_20F4CC; jumptable 0020F4AC case 0
20F4C4:  MOV             R5, #0xFFFFFFFC
20F4C8:  B               loc_20F4D4; jumptable 0020F4AC case 1
20F4CA:  ADR             R0, aOversubscribed_1; "oversubscribed literal/length tree"
20F4CC:  MOV             R5, #0xFFFFFFFD; jumptable 0020F4AC case 0
20F4D0:  STR.W           R0, [R10,#0x18]
20F4D4:  LDR.W           R2, [R10,#0x24]; jumptable 0020F4AC case 1
20F4D8:  MOV             R1, R4
20F4DA:  LDR.W           R0, [R10,#0x28]
20F4DE:  BLX             R2
20F4E0:  MOV             R0, R5
20F4E2:  ADD             SP, SP, #0x1C
20F4E4:  POP.W           {R8-R11}
20F4E8:  POP             {R4-R7,PC}
20F4EA:  CMP.W           R9, #0x102; jumptable 0020F4AC case 5
20F4EE:  BCC             loc_20F4FC
20F4F0:  LDR             R0, [R7,#arg_0]
20F4F2:  LDR             R0, [R0]
20F4F4:  CBNZ            R0, loc_20F4FC
20F4F6:  LDR             R0, =(aEmptyDistanceT - 0x20F4FC); jumptable 0020F4AC default case, cases 3,4
20F4F8:  ADD             R0, PC; "empty distance tree with lengths"
20F4FA:  B               loc_20F4CC; jumptable 0020F4AC case 0
20F4FC:  LDRD.W          R2, R0, [R10,#0x24]
20F500:  MOV             R1, R4
20F502:  BLX             R2
20F504:  MOVS            R5, #0
20F506:  B               loc_20F4E0
