; =========================================================
; Game Engine Function: sub_165A4E
; Address            : 0x165A4E - 0x165A6E
; =========================================================

165A4E:  SUB             SP, SP, #8
165A50:  PUSH            {R7,LR}
165A52:  MOV             R7, SP
165A54:  SUB             SP, SP, #8
165A56:  STRD.W          R2, R3, [R7,#8]
165A5A:  ADD.W           R2, R7, #8; arg
165A5E:  STR             R2, [SP,#0x18+var_14]
165A60:  BL              sub_165A70
165A64:  ADD             SP, SP, #8
165A66:  POP.W           {R7,LR}
165A6A:  ADD             SP, SP, #8
165A6C:  BX              LR
