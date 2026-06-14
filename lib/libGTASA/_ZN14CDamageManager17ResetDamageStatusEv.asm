; =========================================================
; Game Engine Function: _ZN14CDamageManager17ResetDamageStatusEv
; Address            : 0x56E6C8 - 0x56E6D8
; =========================================================

56E6C8:  MOVS            R1, #0
56E6CA:  STRD.W          R1, R1, [R0,#0x10]
56E6CE:  STRB            R1, [R0,#0xE]
56E6D0:  STRH            R1, [R0,#0xC]
56E6D2:  STRD.W          R1, R1, [R0,#4]
56E6D6:  BX              LR
