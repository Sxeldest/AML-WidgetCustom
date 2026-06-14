; =========================================================
; Game Engine Function: sub_E9E46
; Address            : 0xE9E46 - 0xE9E8E
; =========================================================

E9E46:  PUSH            {R4,R6,R7,LR}
E9E48:  ADD             R7, SP, #8
E9E4A:  LDR             R2, [R1,#4]
E9E4C:  CBZ             R2, loc_E9E58
E9E4E:  MOV             R4, R2
E9E50:  LDR             R2, [R2]
E9E52:  CMP             R2, #0
E9E54:  BNE             loc_E9E4E
E9E56:  B               loc_E9E74
E9E58:  MOV             R2, R1
E9E5A:  LDR.W           R4, [R2,#8]!
E9E5E:  LDR             R3, [R4]
E9E60:  CMP             R3, R1
E9E62:  BEQ             loc_E9E74
E9E64:  LDR.W           R12, [R2]
E9E68:  MOV             R2, R12
E9E6A:  LDR.W           R4, [R2,#8]!
E9E6E:  LDR             R3, [R4]
E9E70:  CMP             R3, R12
E9E72:  BNE             loc_E9E64
E9E74:  LDR             R2, [R0]
E9E76:  CMP             R2, R1
E9E78:  IT EQ
E9E7A:  STREQ           R4, [R0]
E9E7C:  LDRD.W          R2, R3, [R0,#4]
E9E80:  SUBS            R3, #1
E9E82:  STR             R3, [R0,#8]
E9E84:  MOV             R0, R2
E9E86:  BL              sub_E9E8E
E9E8A:  MOV             R0, R4
E9E8C:  POP             {R4,R6,R7,PC}
