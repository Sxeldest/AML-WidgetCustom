; =========================================================
; Game Engine Function: _ZN12CMenuManager18HasLanguageChangedEv
; Address            : 0x432B4C - 0x432B62
; =========================================================

432B4C:  LDRB.W          R1, [R0,#0x48]
432B50:  LDRB.W          R2, [R0,#0x49]
432B54:  CMP             R2, R1
432B56:  ITEE EQ
432B58:  MOVEQ           R0, #0
432B5A:  STRBNE.W        R1, [R0,#(dword_48+1)]
432B5E:  MOVNE           R0, #1
432B60:  BX              LR
