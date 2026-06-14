; =========================================================
; Game Engine Function: sub_1DC868
; Address            : 0x1DC868 - 0x1DC8E0
; =========================================================

1DC868:  SUB             R2, R2, #1; switch 5 cases
1DC86C:  CMP             R2, #4
1DC870:  BHI             def_1DC880; jumptable 001DC880 default case
1DC874:  MOV             R1, R2,LSL#2
1DC878:  ADR             R2, jpt_1DC880
1DC87C:  LDR             R1, [R1,R2]
1DC880:  ADD             PC, R1, R2; switch jump
1DC884:  DCD loc_1DC898 - 0x1DC884; jump table for switch statement
1DC888:  DCD loc_1DC8B0 - 0x1DC884; jumptable 001DC880 case 2
1DC88C:  DCD loc_1DC8BC - 0x1DC884; jumptable 001DC880 case 3
1DC890:  DCD loc_1DC8C8 - 0x1DC884; jumptable 001DC880 case 4
1DC894:  DCD loc_1DC8D4 - 0x1DC884; jumptable 001DC880 case 5
1DC898:  LDR             R0, [R0,#0x70]; jumptable 001DC880 case 1
1DC89C:  STR             R0, [R3]
1DC8A0:  BX              LR
1DC8A4:  MOV             R0, R1; jumptable 001DC880 default case
1DC8A8:  MOVW            R1, #0xA002
1DC8AC:  B               j_alSetError
1DC8B0:  LDR             R0, [R0,#0x74]; jumptable 001DC880 case 2
1DC8B4:  STR             R0, [R3]
1DC8B8:  BX              LR
1DC8BC:  LDR             R0, [R0,#0x78]; jumptable 001DC880 case 3
1DC8C0:  STR             R0, [R3]
1DC8C4:  BX              LR
1DC8C8:  LDR             R0, [R0,#0x7C]; jumptable 001DC880 case 4
1DC8CC:  STR             R0, [R3]
1DC8D0:  BX              LR
1DC8D4:  LDR             R0, [R0,#0x80]; jumptable 001DC880 case 5
1DC8D8:  STR             R0, [R3]
1DC8DC:  BX              LR
