; =========================================================
; Game Engine Function: sub_FC480
; Address            : 0xFC480 - 0xFC49C
; =========================================================

FC480:  PUSH            {R4,R6,R7,LR}
FC482:  ADD             R7, SP, #8
FC484:  CMP.W           R3, #0xFFFFFFFF
FC488:  BGT             loc_FC496
FC48A:  CMP             R1, R2
FC48C:  ITTT NE
FC48E:  MOVNE           R4, #0x2D ; '-'
FC490:  STRBNE.W        R4, [R1],#1; unsigned int
FC494:  NEGNE           R3, R3; this
FC496:  BL              sub_FC49C
FC49A:  POP             {R4,R6,R7,PC}
