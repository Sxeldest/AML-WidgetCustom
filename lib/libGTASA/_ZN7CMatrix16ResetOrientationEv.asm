; =========================================================
; Game Engine Function: _ZN7CMatrix16ResetOrientationEv
; Address            : 0x44EF38 - 0x44EF52
; =========================================================

44EF38:  MOVS            R1, #0
44EF3A:  MOV.W           R2, #0x3F800000
44EF3E:  STRD.W          R2, R1, [R0]
44EF42:  STR             R1, [R0,#8]
44EF44:  STRD.W          R1, R2, [R0,#0x10]
44EF48:  STR             R1, [R0,#0x18]
44EF4A:  STRD.W          R1, R1, [R0,#0x20]
44EF4E:  STR             R2, [R0,#0x28]
44EF50:  BX              LR
