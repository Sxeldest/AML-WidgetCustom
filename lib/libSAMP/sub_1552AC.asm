; =========================================================
; Game Engine Function: sub_1552AC
; Address            : 0x1552AC - 0x155300
; =========================================================

1552AC:  PUSH            {R4,R6,R7,LR}
1552AE:  ADD             R7, SP, #8
1552B0:  SUB             SP, SP, #0x118
1552B2:  MOV             R4, R0
1552B4:  MOV             R0, SP
1552B6:  BL              sub_17D4A8
1552BA:  MOV             R1, #0x1010300
1552C2:  STR             R1, [SP,#0x120+var_C]
1552C4:  ADD             R1, SP, #0x120+var_C
1552C6:  MOVS            R2, #0x20 ; ' '
1552C8:  MOVS            R3, #1
1552CA:  BL              sub_17D628
1552CE:  LDR             R0, [R4,#0x5C]
1552D0:  CBZ             R0, loc_1552DE
1552D2:  LDR             R0, [R0]
1552D4:  CBZ             R0, loc_1552E6
1552D6:  MOV             R0, SP
1552D8:  BL              sub_17D84A
1552DC:  B               loc_1552EC
1552DE:  MOV             R0, SP
1552E0:  BL              sub_17D828
1552E4:  B               loc_1552EC
1552E6:  MOV             R0, SP
1552E8:  BL              sub_17D828
1552EC:  MOV             R2, SP
1552EE:  MOV             R0, R4
1552F0:  MOVS            R1, #3
1552F2:  BL              sub_15535A
1552F6:  MOV             R0, SP
1552F8:  BL              sub_17D542
1552FC:  ADD             SP, SP, #0x118
1552FE:  POP             {R4,R6,R7,PC}
