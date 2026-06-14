; =========================================================
; Game Engine Function: sub_2141F8
; Address            : 0x2141F8 - 0x214222
; =========================================================

2141F8:  PUSH            {R2-R5,R7,LR}
2141FA:  ADD             R7, SP, #0x10
2141FC:  LDRD.W          R4, R3, [R7,#arg_0]
214200:  CMP.W           R3, #0xFFFFFFFF
214204:  BGT             loc_214218
214206:  CMP             R1, R2
214208:  BEQ             loc_214218
21420A:  MOVS            R5, #0
21420C:  NEGS            R4, R4
21420E:  SBC.W           R3, R5, R3
214212:  MOVS            R5, #0x2D ; '-'
214214:  STRB.W          R5, [R1],#1
214218:  STRD.W          R4, R3, [SP,#0x10+var_10]; int
21421C:  BL              sub_214222
214220:  POP             {R2-R5,R7,PC}
