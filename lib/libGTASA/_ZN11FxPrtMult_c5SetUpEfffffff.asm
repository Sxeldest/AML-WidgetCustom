; =========================================================
; Game Engine Function: _ZN11FxPrtMult_c5SetUpEfffffff
; Address            : 0x36F36A - 0x36F390
; =========================================================

36F36A:  VLDR            S0, [SP,#arg_4]
36F36E:  VLDR            S2, [SP,#arg_8]
36F372:  VLDR            S4, [SP,#arg_C]
36F376:  VLDR            S6, [SP,#arg_0]
36F37A:  STM.W           R0, {R1-R3}
36F37E:  VSTR            S6, [R0,#0xC]
36F382:  VSTR            S0, [R0,#0x10]
36F386:  VSTR            S2, [R0,#0x14]
36F38A:  VSTR            S4, [R0,#0x18]
36F38E:  BX              LR
