; =========================================================
; Game Engine Function: sub_EEA54
; Address            : 0xEEA54 - 0xEEA62
; =========================================================

EEA54:  PUSH            {R7,LR}
EEA56:  MOV             R7, SP
EEA58:  BL              sub_F66EC
EEA5C:  EOR.W           R0, R0, #1
EEA60:  POP             {R7,PC}
