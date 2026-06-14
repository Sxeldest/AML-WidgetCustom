; =========================================================
; Game Engine Function: _ZN10FxSystem_c5PauseEv
; Address            : 0x36E190 - 0x36E1A8
; =========================================================

36E190:  LDRB.W          R1, [R0,#0x54]
36E194:  CMP             R1, #1
36E196:  IT EQ
36E198:  BXEQ            LR
36E19A:  MOVS            R2, #2
36E19C:  CMP             R1, #2
36E19E:  IT EQ
36E1A0:  MOVEQ           R2, #0
36E1A2:  STRB.W          R2, [R0,#0x54]
36E1A6:  BX              LR
