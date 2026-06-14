; =========================================================
; Game Engine Function: _Z16AllowDistanceFogv
; Address            : 0x40ED90 - 0x40EDA0
; =========================================================

40ED90:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x40ED96)
40ED92:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
40ED94:  LDR             R0, [R0]; MobileSettings::settings ...
40ED96:  LDR             R0, [R0,#(dword_6E03FC - 0x6E03F4)]
40ED98:  CMP             R0, #0
40ED9A:  IT NE
40ED9C:  MOVNE           R0, #1
40ED9E:  BX              LR
