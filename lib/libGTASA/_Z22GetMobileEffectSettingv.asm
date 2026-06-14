; =========================================================
; Game Engine Function: _Z22GetMobileEffectSettingv
; Address            : 0x5E5230 - 0x5E523C
; =========================================================

5E5230:  LDR             R0, =(FrontEndMenuManager_ptr - 0x5E5236)
5E5232:  ADD             R0, PC; FrontEndMenuManager_ptr
5E5234:  LDR             R0, [R0]; FrontEndMenuManager
5E5236:  LDR.W           R0, [R0,#(dword_98F1A8 - 0x98F0F8)]
5E523A:  BX              LR
