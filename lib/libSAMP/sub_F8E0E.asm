; =========================================================
; Game Engine Function: sub_F8E0E
; Address            : 0xF8E0E - 0xF8E1A
; =========================================================

F8E0E:  LDR             R0, [R0,#4]
F8E10:  CMP             R0, #0
F8E12:  ITE NE
F8E14:  LDRNE           R0, [R0,#0x18]
F8E16:  MOVEQ           R0, #0
F8E18:  BX              LR
