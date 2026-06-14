; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarGetIn17GetPositionInAnimEv
; Address            : 0x501F0C - 0x501F40
; =========================================================

501F0C:  LDRB            R1, [R0,#8]
501F0E:  CMP             R1, #0
501F10:  ITTT NE
501F12:  VMOVNE.F32      S0, #1.0
501F16:  VMOVNE          R0, S0
501F1A:  BXNE            LR
501F1C:  LDR             R0, [R0,#0xC]
501F1E:  CMP             R0, #0
501F20:  ITTT EQ
501F22:  VLDREQ          S0, =0.0
501F26:  VMOVEQ          R0, S0
501F2A:  BXEQ            LR
501F2C:  LDR             R1, [R0,#0x14]
501F2E:  VLDR            S0, [R0,#0x20]
501F32:  VLDR            S2, [R1,#0x10]
501F36:  VDIV.F32        S0, S0, S2
501F3A:  VMOV            R0, S0
501F3E:  BX              LR
