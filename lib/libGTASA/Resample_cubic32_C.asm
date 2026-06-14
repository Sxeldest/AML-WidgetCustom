; =========================================================
; Game Engine Function: Resample_cubic32_C
; Address            : 0x2605B4 - 0x26066E
; =========================================================

2605B4:  PUSH            {R4,R6,R7,LR}
2605B6:  ADD             R7, SP, #8
2605B8:  LDR.W           R12, [R7,#arg_0]
2605BC:  ADDS.W          R12, R12, #1
2605C0:  IT EQ
2605C2:  POPEQ           {R4,R6,R7,PC}
2605C4:  VMOV.F32        S0, #1.5
2605C8:  VLDR            S8, =0.000061035
2605CC:  VMOV.F32        S2, #-0.5
2605D0:  MOV.W           LR, #0
2605D4:  VMOV.F32        S4, #-2.5
2605D8:  VMOV.F32        S6, #0.5
2605DC:  ADD.W           R4, R0, LR,LSL#2
2605E0:  VMOV            S11, R1
2605E4:  ADD             R1, R2
2605E6:  SUBS.W          R12, R12, #1
2605EA:  VLDR            S12, [R4]
2605EE:  VLDR            S10, [R4,#-4]
2605F2:  ADD.W           LR, LR, R1,LSR#14
2605F6:  VMUL.F32        S3, S12, S0
2605FA:  VLDR            S14, [R4,#4]
2605FE:  VMUL.F32        S5, S10, S2
260602:  VLDR            S1, [R4,#8]
260606:  VMUL.F32        S7, S12, S4
26060A:  BFC.W           R1, #0xE, #0x12
26060E:  VMUL.F32        S9, S14, S0
260612:  VADD.F32        S13, S14, S14
260616:  VCVT.F32.U32    S11, S11
26061A:  VMUL.F32        S1, S1, S6
26061E:  VMUL.F32        S14, S14, S6
260622:  VADD.F32        S3, S5, S3
260626:  VADD.F32        S10, S10, S7
26062A:  VMUL.F32        S7, S11, S8
26062E:  VADD.F32        S14, S5, S14
260632:  VSUB.F32        S3, S3, S9
260636:  VADD.F32        S10, S10, S13
26063A:  VMUL.F32        S9, S7, S7
26063E:  VMUL.F32        S14, S7, S14
260642:  VADD.F32        S3, S3, S1
260646:  VSUB.F32        S10, S10, S1
26064A:  VMUL.F32        S1, S7, S3
26064E:  VMUL.F32        S10, S9, S10
260652:  VMUL.F32        S1, S9, S1
260656:  VADD.F32        S10, S10, S1
26065A:  VADD.F32        S10, S14, S10
26065E:  VADD.F32        S10, S12, S10
260662:  VSTR            S10, [R3]
260666:  ADD.W           R3, R3, #4
26066A:  BNE             loc_2605DC
26066C:  POP             {R4,R6,R7,PC}
