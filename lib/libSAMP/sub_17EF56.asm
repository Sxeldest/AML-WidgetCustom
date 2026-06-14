; =========================================================
; Game Engine Function: sub_17EF56
; Address            : 0x17EF56 - 0x17EF8E
; =========================================================

17EF56:  PUSH            {R4-R7,LR}
17EF58:  ADD             R7, SP, #0xC
17EF5A:  PUSH.W          {R11}
17EF5E:  SUB             SP, SP, #8
17EF60:  SUB.W           R6, R0, #0x9D0
17EF64:  MOV             R5, R1
17EF66:  MOVS            R1, #0
17EF68:  MOV             R4, R2
17EF6A:  STR             R1, [SP,#0x18+var_18]
17EF6C:  MOV             R2, R3
17EF6E:  MOV             R0, R6
17EF70:  MOVS            R1, #1
17EF72:  MOVS            R3, #0
17EF74:  BL              sub_17FB94
17EF78:  LDR             R3, [R7,#arg_0]
17EF7A:  MOV             R0, R6; int
17EF7C:  MOV             R1, R5; name
17EF7E:  MOV             R2, R4
17EF80:  ADD             SP, SP, #8
17EF82:  POP.W           {R11}
17EF86:  POP.W           {R4-R7,LR}
17EF8A:  B.W             sub_181848
