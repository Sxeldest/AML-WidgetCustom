; =========================================================
; Game Engine Function: sub_F9276
; Address            : 0xF9276 - 0xF9292
; =========================================================

F9276:  LDRB            R2, [R0]
F9278:  LSLS            R2, R2, #0x1F
F927A:  BNE             loc_F9288
F927C:  ADDS            R2, R0, R1
F927E:  MOVS            R3, #0
F9280:  LSLS            R1, R1, #1
F9282:  STRB            R3, [R2,#1]
F9284:  STRB            R1, [R0]
F9286:  BX              LR
F9288:  LDR             R2, [R0,#8]
F928A:  MOVS            R3, #0
F928C:  STRB            R3, [R2,R1]
F928E:  STR             R1, [R0,#4]
F9290:  BX              LR
