; =========================================================
; Game Engine Function: _ZN12CCarPathLink16OneWayLaneOffsetEv
; Address            : 0x319418 - 0x31946C
; =========================================================

319418:  LDRH.W          R2, [R0,#0xB]
31941C:  ANDS.W          R1, R2, #7
319420:  UBFX.W          R2, R2, #3, #3
319424:  BEQ             loc_319448
319426:  CBZ             R2, loc_319450
319428:  LDRB            R0, [R0,#0xA]
31942A:  VLDR            S2, =86.4
31942E:  VMOV            S0, R0
319432:  VCVT.F32.U32    S0, S0
319436:  VDIV.F32        S0, S0, S2
31943A:  VMOV.F32        S2, #0.5
31943E:  VADD.F32        S0, S0, S2
319442:  VMOV            R0, S0
319446:  BX              LR
319448:  VMOV.F32        S0, #0.5
31944C:  UXTH            R0, R2
31944E:  B               loc_319456
319450:  VMOV.F32        S0, #0.5
319454:  UXTH            R0, R1
319456:  VMOV            S2, R0
31945A:  VCVT.F32.U32    S2, S2
31945E:  VMUL.F32        S2, S2, S0
319462:  VSUB.F32        S0, S0, S2
319466:  VMOV            R0, S0
31946A:  BX              LR
