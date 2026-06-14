; =========================================================
; Game Engine Function: _ZN14CDamageManager13SetDoorStatusE6eDoorsj
; Address            : 0x56E734 - 0x56E73E
; =========================================================

56E734:  CMP             R1, #5
56E736:  ITT LS
56E738:  ADDLS           R0, R1
56E73A:  STRBLS          R2, [R0,#9]
56E73C:  BX              LR
