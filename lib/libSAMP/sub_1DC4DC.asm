; =========================================================
; Game Engine Function: sub_1DC4DC
; Address            : 0x1DC4DC - 0x1DC5C4
; =========================================================

1DC4DC:  SUB             R2, R2, #1; switch 12 cases
1DC4E0:  CMP             R2, #0xB
1DC4E4:  BHI             def_1DC4F4; jumptable 001DC4F4 default case
1DC4E8:  MOV             R1, R2,LSL#2
1DC4EC:  ADR             R2, jpt_1DC4F4
1DC4F0:  LDR             R1, [R1,R2]
1DC4F4:  ADD             PC, R1, R2; switch jump
1DC4F8:  DCD loc_1DC528 - 0x1DC4F8; jump table for switch statement
1DC4FC:  DCD loc_1DC534 - 0x1DC4F8; jumptable 001DC4F4 case 2
1DC500:  DCD loc_1DC540 - 0x1DC4F8; jumptable 001DC4F4 case 3
1DC504:  DCD loc_1DC54C - 0x1DC4F8; jumptable 001DC4F4 case 4
1DC508:  DCD loc_1DC558 - 0x1DC4F8; jumptable 001DC4F4 case 5
1DC50C:  DCD loc_1DC564 - 0x1DC4F8; jumptable 001DC4F4 case 6
1DC510:  DCD loc_1DC570 - 0x1DC4F8; jumptable 001DC4F4 case 7
1DC514:  DCD loc_1DC57C - 0x1DC4F8; jumptable 001DC4F4 case 8
1DC518:  DCD loc_1DC588 - 0x1DC4F8; jumptable 001DC4F4 case 9
1DC51C:  DCD loc_1DC594 - 0x1DC4F8; jumptable 001DC4F4 case 10
1DC520:  DCD loc_1DC5A0 - 0x1DC4F8; jumptable 001DC4F4 case 11
1DC524:  DCD loc_1DC5AC - 0x1DC4F8; jumptable 001DC4F4 case 12
1DC528:  LDR             R0, [R0,#4]; jumptable 001DC4F4 case 1
1DC52C:  STR             R0, [R3]
1DC530:  BX              LR
1DC534:  LDR             R0, [R0,#8]; jumptable 001DC4F4 case 2
1DC538:  STR             R0, [R3]
1DC53C:  BX              LR
1DC540:  LDR             R0, [R0,#0xC]; jumptable 001DC4F4 case 3
1DC544:  STR             R0, [R3]
1DC548:  BX              LR
1DC54C:  LDR             R0, [R0,#0x10]; jumptable 001DC4F4 case 4
1DC550:  STR             R0, [R3]
1DC554:  BX              LR
1DC558:  LDR             R0, [R0,#0x14]; jumptable 001DC4F4 case 5
1DC55C:  STR             R0, [R3]
1DC560:  BX              LR
1DC564:  LDR             R0, [R0,#0x18]; jumptable 001DC4F4 case 6
1DC568:  STR             R0, [R3]
1DC56C:  BX              LR
1DC570:  LDR             R0, [R0,#0x1C]; jumptable 001DC4F4 case 7
1DC574:  STR             R0, [R3]
1DC578:  BX              LR
1DC57C:  LDR             R0, [R0,#0x20]; jumptable 001DC4F4 case 8
1DC580:  STR             R0, [R3]
1DC584:  BX              LR
1DC588:  LDR             R0, [R0,#0x24]; jumptable 001DC4F4 case 9
1DC58C:  STR             R0, [R3]
1DC590:  BX              LR
1DC594:  LDR             R0, [R0,#0x28]; jumptable 001DC4F4 case 10
1DC598:  STR             R0, [R3]
1DC59C:  BX              LR
1DC5A0:  LDR             R0, [R0,#0x2C]; jumptable 001DC4F4 case 11
1DC5A4:  STR             R0, [R3]
1DC5A8:  BX              LR
1DC5AC:  LDR             R0, [R0,#0x30]; jumptable 001DC4F4 case 12
1DC5B0:  STR             R0, [R3]
1DC5B4:  BX              LR
1DC5B8:  MOV             R0, R1; jumptable 001DC4F4 default case
1DC5BC:  MOVW            R1, #0xA002
1DC5C0:  B               j_alSetError
