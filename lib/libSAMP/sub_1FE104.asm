; =========================================================
; Game Engine Function: sub_1FE104
; Address            : 0x1FE104 - 0x1FE11A
; =========================================================

1FE104:  LDRB            R2, [R2]
1FE106:  CMP             R0, R1
1FE108:  BEQ             loc_1FE116
1FE10A:  LDRB            R3, [R0]
1FE10C:  CMP             R3, R2
1FE10E:  BEQ             loc_1FE114
1FE110:  ADDS            R0, #1
1FE112:  B               loc_1FE106
1FE114:  MOV             R1, R0
1FE116:  MOV             R0, R1
1FE118:  BX              LR
