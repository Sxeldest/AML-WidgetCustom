; =========================================================
; Game Engine Function: _ZN14CDamageManager23ProgressAeroplaneDamageEh
; Address            : 0x56E880 - 0x56E8B2
; =========================================================

56E880:  MOVS            R3, #0xE8
56E882:  ADD.W           R1, R3, R1,LSL#1
56E886:  LDR.W           R12, [R0,#0x14]
56E88A:  UXTB            R1, R1
56E88C:  LSR.W           R3, R12, R1
56E890:  AND.W           R3, R3, #3
56E894:  CMP             R3, #2
56E896:  ITT EQ
56E898:  MOVEQ           R0, #0
56E89A:  BXEQ            LR
56E89C:  MOVS            R2, #3
56E89E:  ADDS            R3, #1
56E8A0:  LSLS            R2, R1
56E8A2:  BIC.W           R2, R12, R2
56E8A6:  LSL.W           R1, R3, R1
56E8AA:  ORRS            R1, R2
56E8AC:  STR             R1, [R0,#0x14]
56E8AE:  MOVS            R0, #1
56E8B0:  BX              LR
