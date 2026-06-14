; =========================================================
; Game Engine Function: sub_FC3F0
; Address            : 0xFC3F0 - 0xFC40C
; =========================================================

FC3F0:  PUSH            {R4,R6,R7,LR}
FC3F2:  ADD             R7, SP, #8
FC3F4:  CMP.W           R3, #0xFFFFFFFF
FC3F8:  BGT             loc_FC406
FC3FA:  CMP             R1, R2
FC3FC:  ITTT NE
FC3FE:  MOVNE           R4, #0x2D ; '-'
FC400:  STRBNE.W        R4, [R1],#1; unsigned int
FC404:  NEGNE           R3, R3; this
FC406:  BL              sub_FC40C
FC40A:  POP             {R4,R6,R7,PC}
