; =========================================================
; Game Engine Function: Resample_lerp32_C
; Address            : 0x260558 - 0x2605AE
; =========================================================

260558:  PUSH            {R4,R6,R7,LR}
26055A:  ADD             R7, SP, #8
26055C:  LDR.W           R12, [R7,#arg_0]
260560:  ADDS.W          R12, R12, #1
260564:  IT EQ
260566:  POPEQ           {R4,R6,R7,PC}
260568:  VLDR            S0, =0.000061035
26056C:  MOV.W           LR, #0
260570:  VMOV            S2, R1
260574:  ADD.W           R4, R0, LR,LSL#2
260578:  ADD             R1, R2
26057A:  SUBS.W          R12, R12, #1
26057E:  VCVT.F32.U32    S2, S2
260582:  VLDR            S4, [R4]
260586:  VLDR            S6, [R4,#4]
26058A:  ADD.W           LR, LR, R1,LSR#14
26058E:  BFC.W           R1, #0xE, #0x12
260592:  VSUB.F32        S6, S6, S4
260596:  VMUL.F32        S2, S2, S0
26059A:  VMUL.F32        S2, S2, S6
26059E:  VADD.F32        S2, S4, S2
2605A2:  VSTR            S2, [R3]
2605A6:  ADD.W           R3, R3, #4
2605AA:  BNE             loc_260570
2605AC:  POP             {R4,R6,R7,PC}
