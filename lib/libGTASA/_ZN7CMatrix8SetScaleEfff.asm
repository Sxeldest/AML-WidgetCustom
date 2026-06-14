; =========================================================
; Game Engine Function: _ZN7CMatrix8SetScaleEfff
; Address            : 0x44EF6E - 0x44EF92
; =========================================================

44EF6E:  MOV.W           R12, #0
44EF72:  STRD.W          R1, R12, [R0]
44EF76:  STR.W           R12, [R0,#8]
44EF7A:  STRD.W          R12, R2, [R0,#0x10]
44EF7E:  STR.W           R12, [R0,#0x18]
44EF82:  STRD.W          R12, R12, [R0,#0x20]
44EF86:  STR             R3, [R0,#0x28]
44EF88:  STRD.W          R12, R12, [R0,#0x30]
44EF8C:  STR.W           R12, [R0,#0x38]
44EF90:  BX              LR
