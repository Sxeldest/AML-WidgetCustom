; =========================================================
; Game Engine Function: sub_220A40
; Address            : 0x220A40 - 0x220A6C
; =========================================================

220A40:  PUSH            {R4,R7,LR}
220A44:  ADD             R7, SP, #4
220A48:  EOR             R4, R0, R1
220A4C:  EOR             R2, R0, R0,ASR#31
220A50:  EOR             R3, R1, R1,ASR#31
220A54:  SUB             R0, R2, R0,ASR#31
220A58:  SUB             R1, R3, R1,ASR#31
220A5C:  BL              sub_220A6C
220A60:  EOR             R0, R0, R4,ASR#31
220A64:  SUB             R0, R0, R4,ASR#31
220A68:  POP             {R4,R7,PC}
