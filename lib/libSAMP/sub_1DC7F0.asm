; =========================================================
; Game Engine Function: sub_1DC7F0
; Address            : 0x1DC7F0 - 0x1DC868
; =========================================================

1DC7F0:  SUB             R2, R2, #1; switch 5 cases
1DC7F4:  CMP             R2, #4
1DC7F8:  BHI             def_1DC808; jumptable 001DC808 default case
1DC7FC:  MOV             R1, R2,LSL#2
1DC800:  ADR             R2, jpt_1DC808
1DC804:  LDR             R1, [R1,R2]
1DC808:  ADD             PC, R1, R2; switch jump
1DC80C:  DCD loc_1DC820 - 0x1DC80C; jump table for switch statement
1DC810:  DCD loc_1DC838 - 0x1DC80C; jumptable 001DC808 case 2
1DC814:  DCD loc_1DC844 - 0x1DC80C; jumptable 001DC808 case 3
1DC818:  DCD loc_1DC850 - 0x1DC80C; jumptable 001DC808 case 4
1DC81C:  DCD loc_1DC85C - 0x1DC80C; jumptable 001DC808 case 5
1DC820:  LDR             R0, [R0,#0x70]; jumptable 001DC808 case 1
1DC824:  STR             R0, [R3]
1DC828:  BX              LR
1DC82C:  MOV             R0, R1; jumptable 001DC808 default case
1DC830:  MOVW            R1, #0xA002
1DC834:  B               j_alSetError
1DC838:  LDR             R0, [R0,#0x74]; jumptable 001DC808 case 2
1DC83C:  STR             R0, [R3]
1DC840:  BX              LR
1DC844:  LDR             R0, [R0,#0x78]; jumptable 001DC808 case 3
1DC848:  STR             R0, [R3]
1DC84C:  BX              LR
1DC850:  LDR             R0, [R0,#0x7C]; jumptable 001DC808 case 4
1DC854:  STR             R0, [R3]
1DC858:  BX              LR
1DC85C:  LDR             R0, [R0,#0x80]; jumptable 001DC808 case 5
1DC860:  STR             R0, [R3]
1DC864:  BX              LR
