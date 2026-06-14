; =========================================================
; Game Engine Function: sub_E9A4C
; Address            : 0xE9A4C - 0xE9A78
; =========================================================

E9A4C:  PUSH            {R4,R6,R7,LR}
E9A4E:  ADD             R7, SP, #8
E9A50:  MOV             R4, R0
E9A52:  LDR             R0, [R0]
E9A54:  LDRB            R0, [R0]
E9A56:  CMP             R0, #2
E9A58:  BEQ             loc_E9A66
E9A5A:  CMP             R0, #1
E9A5C:  BNE             loc_E9A6E
E9A5E:  ADDS            R0, R4, #4
E9A60:  BL              sub_E5E4C
E9A64:  B               loc_E9A74
E9A66:  LDR             R0, [R4,#8]
E9A68:  ADDS            R0, #0x10
E9A6A:  STR             R0, [R4,#8]
E9A6C:  B               loc_E9A74
E9A6E:  LDR             R0, [R4,#0xC]
E9A70:  ADDS            R0, #1
E9A72:  STR             R0, [R4,#0xC]
E9A74:  MOV             R0, R4
E9A76:  POP             {R4,R6,R7,PC}
