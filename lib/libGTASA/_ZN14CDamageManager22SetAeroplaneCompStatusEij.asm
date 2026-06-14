; =========================================================
; Game Engine Function: _ZN14CDamageManager22SetAeroplaneCompStatusEij
; Address            : 0x56E792 - 0x56E7B0
; =========================================================

56E792:  MOVS            R3, #0xE8
56E794:  ADD.W           R1, R3, R1,LSL#1
56E798:  LDR.W           R12, [R0,#0x14]
56E79C:  MOVS            R3, #3
56E79E:  UXTB            R1, R1
56E7A0:  LSLS            R2, R1
56E7A2:  LSL.W           R1, R3, R1
56E7A6:  BIC.W           R1, R12, R1
56E7AA:  ORRS            R1, R2
56E7AC:  STR             R1, [R0,#0x14]
56E7AE:  BX              LR
