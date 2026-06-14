; =========================================================
; Game Engine Function: sub_F5A66
; Address            : 0xF5A66 - 0xF5A7A
; =========================================================

F5A66:  LDR             R3, [R0,#0xC]
F5A68:  LDRD.W          R2, R1, [R0,#4]
F5A6C:  ADD.W           R0, R2, R3,ASR#1
F5A70:  LSLS            R2, R3, #0x1F
F5A72:  ITT NE
F5A74:  LDRNE           R2, [R0]
F5A76:  LDRNE           R1, [R2,R1]
F5A78:  BX              R1
