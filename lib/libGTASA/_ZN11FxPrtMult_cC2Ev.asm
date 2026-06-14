; =========================================================
; Game Engine Function: _ZN11FxPrtMult_cC2Ev
; Address            : 0x36F32E - 0x36F344
; =========================================================

36F32E:  VMOV.F32        Q8, #1.0; Alternative name is 'FxPrtMult_c::FxPrtMult_c(void)'
36F332:  MOV.W           R1, #0x3F800000
36F336:  MOV             R2, R0
36F338:  STRD.W          R1, R1, [R0,#0x14]
36F33C:  VST1.32         {D16-D17}, [R2]!
36F340:  STR             R1, [R2]
36F342:  BX              LR
