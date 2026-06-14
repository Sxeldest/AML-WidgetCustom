; =========================================================
; Game Engine Function: _ZN14CDamageManager15SetEngineStatusEj
; Address            : 0x56E784 - 0x56E78E
; =========================================================

56E784:  CMP             R1, #0xFA
56E786:  IT CS
56E788:  MOVCS           R1, #0xFA
56E78A:  STRB            R1, [R0,#4]
56E78C:  BX              LR
