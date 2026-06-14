; =========================================================
; Game Engine Function: sub_E6138
; Address            : 0xE6138 - 0xE614E
; =========================================================

E6138:  LDRB            R2, [R2]
E613A:  CMP             R0, R1
E613C:  BEQ             loc_E614A
E613E:  LDRB            R3, [R0]
E6140:  CMP             R3, R2
E6142:  BEQ             loc_E6148
E6144:  ADDS            R0, #1
E6146:  B               loc_E613A
E6148:  MOV             R1, R0
E614A:  MOV             R0, R1
E614C:  BX              LR
