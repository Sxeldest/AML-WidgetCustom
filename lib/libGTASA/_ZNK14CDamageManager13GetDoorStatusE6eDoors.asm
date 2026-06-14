; =========================================================
; Game Engine Function: _ZNK14CDamageManager13GetDoorStatusE6eDoors
; Address            : 0x56E75C - 0x56E768
; =========================================================

56E75C:  CMP             R1, #5
56E75E:  ITEE HI
56E760:  MOVHI           R0, #4
56E762:  ADDLS           R0, R1
56E764:  LDRBLS          R0, [R0,#9]
56E766:  BX              LR
