; =========================================================
; Game Engine Function: _ZN13CWidgetSlider15GetTweenedValueEv
; Address            : 0x2C757C - 0x2C75FC
; =========================================================

2C757C:  PUSH            {R4,R6,R7,LR}
2C757E:  ADD             R7, SP, #8
2C7580:  VPUSH           {D8-D9}
2C7584:  VMOV.F32        S16, #1.0
2C7588:  MOV             R4, R0
2C758A:  VLDR            S0, [R4,#0x224]
2C758E:  VCMP.F32        S0, S16
2C7592:  VMRS            APSR_nzcv, FPSCR
2C7596:  BNE             loc_2C75A6
2C7598:  LDR.W           R0, [R4,#0x228]
2C759C:  ADD.W           R0, R4, R0,LSL#2
2C75A0:  VLDR            S0, [R0,#0x94]
2C75A4:  B               loc_2C75F2
2C75A6:  LDR.W           R0, [R4,#0x90]
2C75AA:  VMOV.F32        S2, #-1.0
2C75AE:  VMOV            S4, R0
2C75B2:  VMOV            R0, S0; x
2C75B6:  VCVT.F32.S32    S4, S4
2C75BA:  VADD.F32        S2, S4, S2
2C75BE:  VDIV.F32        S18, S16, S2
2C75C2:  VMOV            R1, S18; y
2C75C6:  BLX             fmodf
2C75CA:  VDIV.F32        S0, S16, S18
2C75CE:  LDR.W           R1, [R4,#0x228]
2C75D2:  VMOV            S2, R0
2C75D6:  ADD.W           R0, R4, R1,LSL#2
2C75DA:  VLDR            S4, [R0,#0x94]
2C75DE:  VMUL.F32        S0, S2, S0
2C75E2:  VLDR            S6, [R0,#0x98]
2C75E6:  VSUB.F32        S2, S6, S4
2C75EA:  VMUL.F32        S0, S2, S0
2C75EE:  VADD.F32        S0, S4, S0
2C75F2:  VMOV            R0, S0
2C75F6:  VPOP            {D8-D9}
2C75FA:  POP             {R4,R6,R7,PC}
