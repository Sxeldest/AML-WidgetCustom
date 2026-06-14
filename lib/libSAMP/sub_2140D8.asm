; =========================================================
; Game Engine Function: sub_2140D8
; Address            : 0x2140D8 - 0x2140F4
; =========================================================

2140D8:  PUSH            {R4,R6,R7,LR}
2140DA:  ADD             R7, SP, #8
2140DC:  CMP.W           R3, #0xFFFFFFFF
2140E0:  BGT             loc_2140EE
2140E2:  CMP             R1, R2
2140E4:  ITTT NE
2140E6:  MOVNE           R4, #0x2D ; '-'
2140E8:  STRBNE.W        R4, [R1],#1; unsigned int
2140EC:  NEGNE           R3, R3; this
2140EE:  BL              sub_2140F4
2140F2:  POP             {R4,R6,R7,PC}
