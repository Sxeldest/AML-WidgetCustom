; =========================================================
; Game Engine Function: sub_10BB58
; Address            : 0x10BB58 - 0x10BB78
; =========================================================

10BB58:  PUSH            {R4,R6,R7,LR}
10BB5A:  ADD             R7, SP, #8
10BB5C:  SUB             SP, SP, #0x10
10BB5E:  MOV             R4, R0
10BB60:  MOVS            R0, #0
10BB62:  STR             R0, [R4,#0x10]
10BB64:  STR             R2, [SP,#0x18+var_C]
10BB66:  STRD.W          R3, R1, [SP,#0x18+var_14]
10BB6A:  ADD             R1, SP, #0x18+var_14
10BB6C:  MOV             R0, R4
10BB6E:  BL              sub_10BF38
10BB72:  MOV             R0, R4
10BB74:  ADD             SP, SP, #0x10
10BB76:  POP             {R4,R6,R7,PC}
