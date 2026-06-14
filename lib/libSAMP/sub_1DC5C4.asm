; =========================================================
; Game Engine Function: sub_1DC5C4
; Address            : 0x1DC5C4 - 0x1DC6AC
; =========================================================

1DC5C4:  SUB             R2, R2, #1; switch 12 cases
1DC5C8:  CMP             R2, #0xB
1DC5CC:  BHI             def_1DC5DC; jumptable 001DC5DC default case
1DC5D0:  MOV             R1, R2,LSL#2
1DC5D4:  ADR             R2, jpt_1DC5DC
1DC5D8:  LDR             R1, [R1,R2]
1DC5DC:  ADD             PC, R1, R2; switch jump
1DC5E0:  DCD loc_1DC610 - 0x1DC5E0; jump table for switch statement
1DC5E4:  DCD loc_1DC61C - 0x1DC5E0; jumptable 001DC5DC case 2
1DC5E8:  DCD loc_1DC628 - 0x1DC5E0; jumptable 001DC5DC case 3
1DC5EC:  DCD loc_1DC634 - 0x1DC5E0; jumptable 001DC5DC case 4
1DC5F0:  DCD loc_1DC640 - 0x1DC5E0; jumptable 001DC5DC case 5
1DC5F4:  DCD loc_1DC64C - 0x1DC5E0; jumptable 001DC5DC case 6
1DC5F8:  DCD loc_1DC658 - 0x1DC5E0; jumptable 001DC5DC case 7
1DC5FC:  DCD loc_1DC664 - 0x1DC5E0; jumptable 001DC5DC case 8
1DC600:  DCD loc_1DC670 - 0x1DC5E0; jumptable 001DC5DC case 9
1DC604:  DCD loc_1DC67C - 0x1DC5E0; jumptable 001DC5DC case 10
1DC608:  DCD loc_1DC688 - 0x1DC5E0; jumptable 001DC5DC case 11
1DC60C:  DCD loc_1DC694 - 0x1DC5E0; jumptable 001DC5DC case 12
1DC610:  LDR             R0, [R0,#4]; jumptable 001DC5DC case 1
1DC614:  STR             R0, [R3]
1DC618:  BX              LR
1DC61C:  LDR             R0, [R0,#8]; jumptable 001DC5DC case 2
1DC620:  STR             R0, [R3]
1DC624:  BX              LR
1DC628:  LDR             R0, [R0,#0xC]; jumptable 001DC5DC case 3
1DC62C:  STR             R0, [R3]
1DC630:  BX              LR
1DC634:  LDR             R0, [R0,#0x10]; jumptable 001DC5DC case 4
1DC638:  STR             R0, [R3]
1DC63C:  BX              LR
1DC640:  LDR             R0, [R0,#0x14]; jumptable 001DC5DC case 5
1DC644:  STR             R0, [R3]
1DC648:  BX              LR
1DC64C:  LDR             R0, [R0,#0x18]; jumptable 001DC5DC case 6
1DC650:  STR             R0, [R3]
1DC654:  BX              LR
1DC658:  LDR             R0, [R0,#0x1C]; jumptable 001DC5DC case 7
1DC65C:  STR             R0, [R3]
1DC660:  BX              LR
1DC664:  LDR             R0, [R0,#0x20]; jumptable 001DC5DC case 8
1DC668:  STR             R0, [R3]
1DC66C:  BX              LR
1DC670:  LDR             R0, [R0,#0x24]; jumptable 001DC5DC case 9
1DC674:  STR             R0, [R3]
1DC678:  BX              LR
1DC67C:  LDR             R0, [R0,#0x28]; jumptable 001DC5DC case 10
1DC680:  STR             R0, [R3]
1DC684:  BX              LR
1DC688:  LDR             R0, [R0,#0x2C]; jumptable 001DC5DC case 11
1DC68C:  STR             R0, [R3]
1DC690:  BX              LR
1DC694:  LDR             R0, [R0,#0x30]; jumptable 001DC5DC case 12
1DC698:  STR             R0, [R3]
1DC69C:  BX              LR
1DC6A0:  MOV             R0, R1; jumptable 001DC5DC default case
1DC6A4:  MOVW            R1, #0xA002
1DC6A8:  B               j_alSetError
