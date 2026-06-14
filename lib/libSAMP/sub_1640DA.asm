; =========================================================
; Game Engine Function: sub_1640DA
; Address            : 0x1640DA - 0x164106
; =========================================================

1640DA:  PUSH            {R4,R6,R7,LR}
1640DC:  ADD             R7, SP, #8
1640DE:  MOV             R4, R1
1640E0:  MOVS            R1, #2
1640E2:  BL              sub_1640AC
1640E6:  CBZ             R0, loc_1640FE
1640E8:  LDR             R1, [R0]
1640EA:  CBZ             R1, loc_1640FE
1640EC:  ADDS            R0, #4
1640EE:  CMP             R1, R4
1640F0:  BEQ             loc_164102
1640F2:  LDR             R1, [R0,#4]
1640F4:  ADD.W           R2, R0, #8
1640F8:  CMP             R1, #0
1640FA:  MOV             R0, R2
1640FC:  BNE             loc_1640EE
1640FE:  MOVS            R0, #0
164100:  POP             {R4,R6,R7,PC}
164102:  LDR             R0, [R0]
164104:  POP             {R4,R6,R7,PC}
