; =========================================================
; Game Engine Function: _ZN7CObject15SetRemapTextureEP9RwTexturePKc
; Address            : 0x455B44 - 0x455B54
; =========================================================

455B44:  STRD.W          R2, R1, [R0,#0x170]
455B48:  CMP             R2, #0
455B4A:  ITTT NE
455B4C:  LDRNE           R0, [R1,#0x54]
455B4E:  ADDNE           R0, #1
455B50:  STRNE           R0, [R1,#0x54]
455B52:  BX              LR
