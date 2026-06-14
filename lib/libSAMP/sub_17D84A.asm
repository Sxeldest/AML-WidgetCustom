; =========================================================
; Game Engine Function: sub_17D84A
; Address            : 0x17D84A - 0x17D884
; =========================================================

17D84A:  PUSH            {R4,R6,R7,LR}
17D84C:  ADD             R7, SP, #8
17D84E:  MOVS            R1, #1
17D850:  MOV             R4, R0
17D852:  BL              sub_17D5BA
17D856:  LDR             R0, [R4]
17D858:  ANDS.W          R1, R0, #7
17D85C:  BEQ             loc_17D874
17D85E:  LDR             R2, [R4,#0xC]
17D860:  ASRS            R0, R0, #3
17D862:  MOVS            R3, #0x80
17D864:  LSR.W           R1, R3, R1
17D868:  LDRB.W          R12, [R2,R0]
17D86C:  ORR.W           R1, R1, R12
17D870:  STRB            R1, [R2,R0]
17D872:  B               loc_17D87C
17D874:  LDR             R1, [R4,#0xC]
17D876:  ASRS            R0, R0, #3
17D878:  MOVS            R2, #0x80
17D87A:  STRB            R2, [R1,R0]
17D87C:  LDR             R0, [R4]
17D87E:  ADDS            R0, #1
17D880:  STR             R0, [R4]
17D882:  POP             {R4,R6,R7,PC}
