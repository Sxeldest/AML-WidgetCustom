; =========================================================
; Game Engine Function: _ZNK14CDamageManager14GetLightStatusE7eLights
; Address            : 0x56E6F2 - 0x56E700
; =========================================================

56E6F2:  LDR             R0, [R0,#0x10]
56E6F4:  LSLS            R1, R1, #1
56E6F6:  UXTB            R1, R1
56E6F8:  LSRS            R0, R1
56E6FA:  AND.W           R0, R0, #3
56E6FE:  BX              LR
