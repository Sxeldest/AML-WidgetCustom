; =========================================================
; Game Engine Function: _ZN7CMatrix8SetUnityEv
; Address            : 0x44EF18 - 0x44EF38
; =========================================================

44EF18:  MOVS            R1, #0
44EF1A:  MOV.W           R2, #0x3F800000
44EF1E:  STRD.W          R2, R1, [R0]
44EF22:  STR             R1, [R0,#8]
44EF24:  STRD.W          R1, R2, [R0,#0x10]
44EF28:  STR             R1, [R0,#0x18]
44EF2A:  STRD.W          R1, R1, [R0,#0x20]
44EF2E:  STR             R2, [R0,#0x28]
44EF30:  STRD.W          R1, R1, [R0,#0x30]
44EF34:  STR             R1, [R0,#0x38]
44EF36:  BX              LR
