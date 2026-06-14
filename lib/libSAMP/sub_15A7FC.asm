; =========================================================
; Game Engine Function: sub_15A7FC
; Address            : 0x15A7FC - 0x15A822
; =========================================================

15A7FC:  PUSH            {R4,R6,R7,LR}
15A7FE:  ADD             R7, SP, #8
15A800:  SUB             SP, SP, #8
15A802:  MOV             R2, R1
15A804:  MOV             R4, R0
15A806:  MOVS            R0, #0
15A808:  ADD             R1, SP, #0x10+var_C; int
15A80A:  STR             R0, [SP,#0x10+var_C]
15A80C:  MOV             R0, R2; int
15A80E:  MOVS            R2, #0x20 ; ' '
15A810:  MOVS            R3, #1
15A812:  BL              sub_17D786
15A816:  LDR             R0, [R4,#0x58]
15A818:  LDR             R1, [SP,#0x10+var_C]
15A81A:  BL              sub_152ABA
15A81E:  ADD             SP, SP, #8
15A820:  POP             {R4,R6,R7,PC}
