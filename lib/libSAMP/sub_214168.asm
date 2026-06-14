; =========================================================
; Game Engine Function: sub_214168
; Address            : 0x214168 - 0x214184
; =========================================================

214168:  PUSH            {R4,R6,R7,LR}
21416A:  ADD             R7, SP, #8
21416C:  CMP.W           R3, #0xFFFFFFFF
214170:  BGT             loc_21417E
214172:  CMP             R1, R2
214174:  ITTT NE
214176:  MOVNE           R4, #0x2D ; '-'
214178:  STRBNE.W        R4, [R1],#1; unsigned int
21417C:  NEGNE           R3, R3; this
21417E:  BL              sub_214184
214182:  POP             {R4,R6,R7,PC}
