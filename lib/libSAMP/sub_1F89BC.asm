; =========================================================
; Game Engine Function: sub_1F89BC
; Address            : 0x1F89BC - 0x1F89D6
; =========================================================

1F89BC:  PUSH            {R4,R6,R7,LR}
1F89BE:  ADD             R7, SP, #8
1F89C0:  MOV             R4, R0
1F89C2:  LDR             R0, [R0,#0x4C]
1F89C4:  ADDS            R1, R0, #1
1F89C6:  BNE             loc_1F89D2
1F89C8:  MOV             R0, R4
1F89CA:  MOVS            R1, #0x20 ; ' '
1F89CC:  BL              sub_1F6198
1F89D0:  STR             R0, [R4,#0x4C]
1F89D2:  UXTB            R0, R0
1F89D4:  POP             {R4,R6,R7,PC}
