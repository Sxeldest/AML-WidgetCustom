; =========================================================
; Game Engine Function: sub_17D828
; Address            : 0x17D828 - 0x17D84A
; =========================================================

17D828:  PUSH            {R4,R6,R7,LR}
17D82A:  ADD             R7, SP, #8
17D82C:  MOVS            R1, #1
17D82E:  MOV             R4, R0
17D830:  BL              sub_17D5BA
17D834:  LDR             R0, [R4]
17D836:  LSLS            R1, R0, #0x1D
17D838:  BNE             loc_17D844
17D83A:  LDR             R1, [R4,#0xC]
17D83C:  ASRS            R0, R0, #3
17D83E:  MOVS            R2, #0
17D840:  STRB            R2, [R1,R0]
17D842:  LDR             R0, [R4]
17D844:  ADDS            R0, #1
17D846:  STR             R0, [R4]
17D848:  POP             {R4,R6,R7,PC}
