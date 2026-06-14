; =========================================================
; Game Engine Function: _ZN7CMatrix8SetScaleEf
; Address            : 0x44EF52 - 0x44EF6E
; =========================================================

44EF52:  MOVS            R2, #0
44EF54:  STRD.W          R1, R2, [R0]
44EF58:  STR             R2, [R0,#8]
44EF5A:  STRD.W          R2, R1, [R0,#0x10]
44EF5E:  STR             R2, [R0,#0x18]
44EF60:  STRD.W          R2, R2, [R0,#0x20]
44EF64:  STR             R1, [R0,#0x28]
44EF66:  STRD.W          R2, R2, [R0,#0x30]
44EF6A:  STR             R2, [R0,#0x38]
44EF6C:  BX              LR
