; =========================================================
; Game Engine Function: _ZNK14CDamageManager14GetPanelStatusEi
; Address            : 0x56E71A - 0x56E728
; =========================================================

56E71A:  LDR             R0, [R0,#0x14]
56E71C:  LSLS            R1, R1, #2
56E71E:  UXTB            R1, R1
56E720:  LSRS            R0, R1
56E722:  AND.W           R0, R0, #0xF
56E726:  BX              LR
