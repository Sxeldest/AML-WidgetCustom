; =========================================================
; Game Engine Function: sub_F5286
; Address            : 0xF5286 - 0xF529A
; =========================================================

F5286:  LDR             R3, [R0,#0xC]
F5288:  LDRD.W          R2, R1, [R0,#4]
F528C:  ADD.W           R0, R2, R3,ASR#1
F5290:  LSLS            R2, R3, #0x1F
F5292:  ITT NE
F5294:  LDRNE           R2, [R0]
F5296:  LDRNE           R1, [R2,R1]
F5298:  BX              R1
