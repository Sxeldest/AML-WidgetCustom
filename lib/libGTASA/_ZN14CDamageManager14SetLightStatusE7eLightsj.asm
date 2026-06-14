; =========================================================
; Game Engine Function: _ZN14CDamageManager14SetLightStatusE7eLightsj
; Address            : 0x56E6D8 - 0x56E6F2
; =========================================================

56E6D8:  LSLS            R1, R1, #1
56E6DA:  LDR.W           R12, [R0,#0x10]
56E6DE:  UXTB            R1, R1
56E6E0:  MOVS            R3, #3
56E6E2:  LSLS            R2, R1
56E6E4:  LSL.W           R1, R3, R1
56E6E8:  BIC.W           R1, R12, R1
56E6EC:  ORRS            R1, R2
56E6EE:  STR             R1, [R0,#0x10]
56E6F0:  BX              LR
