; =========================================================
; Game Engine Function: sub_1075C0
; Address            : 0x1075C0 - 0x10765C
; =========================================================

1075C0:  PUSH            {R2-R5,R7,LR}
1075C2:  ADD             R7, SP, #0x10
1075C4:  MOV             R4, R0
1075C6:  LDR             R0, =(__stack_chk_guard_ptr - 0x1075CE)
1075C8:  CMP             R1, #0xFF
1075CA:  ADD             R0, PC; __stack_chk_guard_ptr
1075CC:  LDR             R0, [R0]; __stack_chk_guard
1075CE:  LDR             R0, [R0]
1075D0:  STR             R0, [SP,#0x10+var_C]
1075D2:  BEQ             loc_1075FA
1075D4:  MOV             R5, R1
1075D6:  LDR             R1, [R4]
1075D8:  AND.W           R0, R5, #0xF
1075DC:  STR             R1, [SP,#0x10+var_10]
1075DE:  CMP             R0, #0xC; switch 13 cases
1075E0:  BHI             def_1075E2; jumptable 001075E2 default case, cases 5-8
1075E2:  TBB.W           [PC,R0]; switch jump
1075E6:  DCB 7; jump table for switch statement
1075E7:  DCB 0xF
1075E8:  DCB 0x13
1075E9:  DCB 7
1075EA:  DCB 0xC
1075EB:  DCB 0x39
1075EC:  DCB 0x39
1075ED:  DCB 0x39
1075EE:  DCB 0x39
1075EF:  DCB 0x16
1075F0:  DCB 0x1A
1075F1:  DCB 7
1075F2:  DCB 0xC
1075F3:  ALIGN 2
1075F4:  LDR.W           R0, [R1],#4; jumptable 001075E2 cases 0,3,11
1075F8:  B               loc_10761E
1075FA:  MOVS            R0, #0
1075FC:  B               loc_107640
1075FE:  LDR.W           R0, [R1],#8; jumptable 001075E2 cases 4,12
107602:  B               loc_10761E
107604:  MOV             R0, SP; jumptable 001075E2 case 1
107606:  BL              sub_107664
10760A:  B               loc_107620
10760C:  LDRH.W          R0, [R1],#2; jumptable 001075E2 case 2
107610:  B               loc_10761E
107612:  MOV             R0, SP; jumptable 001075E2 case 9
107614:  BL              sub_1076F8
107618:  B               loc_107620
10761A:  LDRSH.W         R0, [R1],#2; jumptable 001075E2 case 10
10761E:  STR             R1, [SP,#0x10+var_10]
107620:  UBFX.W          R1, R5, #4, #3
107624:  CBZ             R1, loc_107630
107626:  CMP             R1, #1
107628:  BNE             loc_107654
10762A:  CBZ             R0, loc_10763A
10762C:  LDR             R1, [R4]
10762E:  ADD             R0, R1
107630:  CBZ             R0, loc_10763A
107632:  LSLS            R1, R5, #0x18
107634:  IT MI
107636:  LDRMI           R0, [R0]
107638:  B               loc_10763C
10763A:  MOVS            R0, #0
10763C:  LDR             R1, [SP,#0x10+var_10]
10763E:  STR             R1, [R4]
107640:  LDR             R1, [SP,#0x10+var_C]
107642:  LDR             R2, =(__stack_chk_guard_ptr - 0x107648)
107644:  ADD             R2, PC; __stack_chk_guard_ptr
107646:  LDR             R2, [R2]; __stack_chk_guard
107648:  LDR             R2, [R2]
10764A:  CMP             R2, R1
10764C:  IT EQ
10764E:  POPEQ           {R2-R5,R7,PC}
107650:  BLX             __stack_chk_fail
107654:  BLX             abort
107658:  BLX             abort; jumptable 001075E2 default case, cases 5-8
