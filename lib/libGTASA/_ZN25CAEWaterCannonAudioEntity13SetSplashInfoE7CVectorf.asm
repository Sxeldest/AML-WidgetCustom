; =========================================================
; Game Engine Function: _ZN25CAEWaterCannonAudioEntity13SetSplashInfoE7CVectorf
; Address            : 0x3B97DC - 0x3B97F6
; =========================================================

3B97DC:  MOV.W           R12, #1
3B97E0:  VLDR            S0, [SP,#arg_0]
3B97E4:  STRB.W          R12, [R0,#0x7D]
3B97E8:  ADD.W           R12, R0, #0x80
3B97EC:  STM.W           R12, {R1-R3}
3B97F0:  VSTR            S0, [R0,#0x8C]
3B97F4:  BX              LR
