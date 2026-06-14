; =========================================================
; Game Engine Function: sub_F6A5C
; Address            : 0xF6A5C - 0xF6A76
; =========================================================

F6A5C:  CMP             R0, R1
F6A5E:  BEQ             sub_F6A76
F6A60:  CMP             R1, R2
F6A62:  BEQ             loc_F6A74
F6A64:  PUSH            {R7,LR}
F6A66:  MOV             R7, SP
F6A68:  BL              sub_F6AC4
F6A6C:  MOV             R2, R0
F6A6E:  POP.W           {R7,LR}
F6A72:  B               sub_F6A76
F6A74:  MOV             R2, R0
