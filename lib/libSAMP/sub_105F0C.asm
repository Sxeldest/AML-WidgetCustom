; =========================================================
; Game Engine Function: sub_105F0C
; Address            : 0x105F0C - 0x105F20
; =========================================================

105F0C:  LDR             R0, [R0,#0x5C]
105F0E:  CBZ             R0, loc_105F1C
105F10:  LDRB.W          R0, [R0,#0x484]
105F14:  LSLS            R0, R0, #0x1E
105F16:  ITT NE
105F18:  MOVNE           R0, #1
105F1A:  BXNE            LR
105F1C:  MOVS            R0, #0
105F1E:  BX              LR
