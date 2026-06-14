; =========================================================
; Game Engine Function: sub_14D828
; Address            : 0x14D828 - 0x14D89C
; =========================================================

14D828:  PUSH            {R4,R5,R7,LR}
14D82A:  ADD             R7, SP, #8
14D82C:  SUB             SP, SP, #0x118
14D82E:  LDRD.W          R1, R0, [R0]; src
14D832:  MOVS            R3, #0
14D834:  ASRS            R2, R0, #0x1F
14D836:  ADD.W           R0, R0, R2,LSR#29
14D83A:  MOVS            R2, #1
14D83C:  ADD.W           R2, R2, R0,ASR#3; size
14D840:  MOV             R0, SP; int
14D842:  BL              sub_17D4F2
14D846:  SUB.W           R1, R7, #-var_A; int
14D84A:  MOVS            R2, #0x10
14D84C:  MOVS            R3, #1
14D84E:  BL              sub_17D786
14D852:  SUB.W           R1, R7, #-var_B; int
14D856:  MOV             R0, SP; int
14D858:  MOVS            R2, #8
14D85A:  MOVS            R3, #1
14D85C:  BL              sub_17D786
14D860:  LDR             R0, =(off_23496C - 0x14D866)
14D862:  ADD             R0, PC; off_23496C
14D864:  LDR             R0, [R0]; dword_23DEF4
14D866:  LDR             R0, [R0]
14D868:  LDR.W           R0, [R0,#0x3B0]
14D86C:  LDR             R4, [R0,#4]
14D86E:  CBZ             R4, loc_14D892
14D870:  LDRH.W          R5, [R7,#var_A]
14D874:  LSRS            R0, R5, #4
14D876:  CMP             R0, #0x7C ; '|'
14D878:  BHI             loc_14D892
14D87A:  MOV             R0, R4
14D87C:  MOV             R1, R5
14D87E:  BL              sub_F2396
14D882:  CBZ             R0, loc_14D892
14D884:  LDR.W           R0, [R4,R5,LSL#2]
14D888:  CBZ             R0, loc_14D892
14D88A:  LDRB.W          R1, [R7,#var_B]
14D88E:  BL              sub_109CC0
14D892:  MOV             R0, SP
14D894:  BL              sub_17D542
14D898:  ADD             SP, SP, #0x118
14D89A:  POP             {R4,R5,R7,PC}
