; =========================================================
; Game Engine Function: sub_1800F0
; Address            : 0x1800F0 - 0x180118
; =========================================================

1800F0:  PUSH            {R4,R5,R7,LR}
1800F2:  ADD             R7, SP, #8
1800F4:  MOV             R4, R2
1800F6:  CMP             R2, #0xFF
1800F8:  IT GE
1800FA:  MOVGE           R4, #0xFF
1800FC:  CMP             R1, #0
1800FE:  IT EQ
180100:  MOVEQ           R4, R1
180102:  MOV             R5, R0
180104:  CMP             R4, #1
180106:  ITTT GE
180108:  ADDGE.W         R0, R5, #0x23C; dest
18010C:  MOVGE           R2, R4; n
18010E:  BLXGE           j_memcpy
180112:  STRB.W          R4, [R5,#0x33C]
180116:  POP             {R4,R5,R7,PC}
