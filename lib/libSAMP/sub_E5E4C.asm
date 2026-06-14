; =========================================================
; Game Engine Function: sub_E5E4C
; Address            : 0xE5E4C - 0xE5E74
; =========================================================

E5E4C:  LDR.W           R12, [R0]
E5E50:  LDR.W           R2, [R12,#4]
E5E54:  CBZ             R2, loc_E5E64
E5E56:  MOV             R1, R2
E5E58:  LDR             R2, [R2]
E5E5A:  CMP             R2, #0
E5E5C:  BNE             loc_E5E56
E5E5E:  B               loc_E5E70
E5E60:  LDR.W           R12, [R2]
E5E64:  MOV             R2, R12
E5E66:  LDR.W           R1, [R2,#8]!
E5E6A:  LDR             R3, [R1]
E5E6C:  CMP             R3, R12
E5E6E:  BNE             loc_E5E60
E5E70:  STR             R1, [R0]
E5E72:  BX              LR
