; =========================================================
; Game Engine Function: _ZN11FxPrtMult_cC2Efffffff
; Address            : 0x36F344 - 0x36F36A
; =========================================================

36F344:  VLDR            S0, [SP,#arg_4]
36F348:  VLDR            S2, [SP,#arg_8]
36F34C:  VLDR            S4, [SP,#arg_C]
36F350:  VLDR            S6, [SP,#arg_0]
36F354:  STM.W           R0, {R1-R3}
36F358:  VSTR            S6, [R0,#0xC]
36F35C:  VSTR            S0, [R0,#0x10]
36F360:  VSTR            S2, [R0,#0x14]
36F364:  VSTR            S4, [R0,#0x18]
36F368:  BX              LR
