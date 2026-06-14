; =========================================================
; Game Engine Function: sub_158DB0
; Address            : 0x158DB0 - 0x158DDA
; =========================================================

158DB0:  PUSH            {R4-R7,LR}
158DB2:  ADD             R7, SP, #0xC
158DB4:  PUSH.W          {R11}
158DB8:  LDRD.W          R5, R6, [R0,#0xC]
158DBC:  MOV             R4, R0
158DBE:  CMP             R5, R6
158DC0:  BEQ             loc_158DD2
158DC2:  LDR             R0, [R4,#8]
158DC4:  LDR.W           R1, [R5],#4
158DC8:  BL              sub_164CC8
158DCC:  CMP             R5, R6
158DCE:  BNE             loc_158DC2
158DD0:  LDR             R5, [R4,#0xC]
158DD2:  STR             R5, [R4,#0x10]
158DD4:  POP.W           {R11}
158DD8:  POP             {R4-R7,PC}
