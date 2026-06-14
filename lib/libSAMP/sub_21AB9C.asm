; =========================================================
; Game Engine Function: sub_21AB9C
; Address            : 0x21AB9C - 0x21ABCA
; =========================================================

21AB9C:  PUSH            {R4,R5,R7,LR}
21AB9E:  ADD             R7, SP, #8
21ABA0:  MOV             R5, R0
21ABA2:  LDR             R0, [R0,#0xC]
21ABA4:  MOV             R4, R1
21ABA6:  LDR             R1, [R0]
21ABA8:  LDR             R2, [R1,#0x10]
21ABAA:  MOV             R1, R4
21ABAC:  BLX             R2
21ABAE:  LDR             R0, [R5,#0xC]
21ABB0:  MOV             R1, R4
21ABB2:  BL              sub_217AE2
21ABB6:  CBZ             R0, loc_21ABBA
21ABB8:  POP             {R4,R5,R7,PC}
21ABBA:  LDR             R1, =(asc_84C32 - 0x21ABC2); " " ...
21ABBC:  MOV             R0, R4
21ABBE:  ADD             R1, PC; " "
21ABC0:  ADDS            R2, R1, #1
21ABC2:  POP.W           {R4,R5,R7,LR}
21ABC6:  B.W             sub_216F98
