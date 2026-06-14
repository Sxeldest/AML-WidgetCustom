; =========================================================
; Game Engine Function: _ZN7CCamera14FinishCutsceneEv
; Address            : 0x3DB670 - 0x3DB6BC
; =========================================================

3DB670:  LDRB.W          R1, [R0,#0x57]
3DB674:  ADD.W           R2, R1, R1,LSL#5
3DB678:  ADD.W           R2, R0, R2,LSL#4
3DB67C:  LDRH.W          R2, [R2,#0x17E]
3DB680:  CMP             R2, #0x11
3DB682:  BEQ             loc_3DB69A
3DB684:  MOVS            R2, #1
3DB686:  BIC.W           R1, R2, R1
3DB68A:  ORR.W           R2, R1, R1,LSL#5
3DB68E:  ADD.W           R2, R0, R2,LSL#4
3DB692:  LDRH.W          R2, [R2,#0x17E]
3DB696:  CMP             R2, #0x11
3DB698:  BNE             loc_3DB6AE
3DB69A:  ADD.W           R1, R1, R1,LSL#5
3DB69E:  ADD.W           R1, R0, R1,LSL#4
3DB6A2:  VLDR            S0, [R1,#0x180]
3DB6A6:  VCVT.F32.U32    S0, S0
3DB6AA:  VSTR            S0, [R1,#0x1D8]
3DB6AE:  MOVS            R1, #1
3DB6B0:  STRB            R1, [R0,#0x1D]
3DB6B2:  MOV.W           R1, #0x3F800000
3DB6B6:  STR.W           R1, [R0,#0x13C]
3DB6BA:  BX              LR
