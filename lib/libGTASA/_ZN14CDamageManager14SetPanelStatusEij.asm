; =========================================================
; Game Engine Function: _ZN14CDamageManager14SetPanelStatusEij
; Address            : 0x56E700 - 0x56E71A
; =========================================================

56E700:  LSLS            R1, R1, #2
56E702:  LDR.W           R12, [R0,#0x14]
56E706:  UXTB            R1, R1
56E708:  MOVS            R3, #0xF
56E70A:  LSLS            R2, R1
56E70C:  LSL.W           R1, R3, R1
56E710:  BIC.W           R1, R12, R1
56E714:  ORRS            R1, R2
56E716:  STR             R1, [R0,#0x14]
56E718:  BX              LR
