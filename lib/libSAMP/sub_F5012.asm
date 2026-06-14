; =========================================================
; Game Engine Function: sub_F5012
; Address            : 0xF5012 - 0xF502A
; =========================================================

F5012:  LDR             R2, [R0,#0xC]
F5014:  LDRD.W          R3, R12, [R0,#4]
F5018:  LDR             R1, [R1]
F501A:  ADD.W           R0, R3, R2,ASR#1
F501E:  LSLS            R2, R2, #0x1F
F5020:  ITT NE
F5022:  LDRNE           R2, [R0]
F5024:  LDRNE.W         R12, [R2,R12]
F5028:  BX              R12
