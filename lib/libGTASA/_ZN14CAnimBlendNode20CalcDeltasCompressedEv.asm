; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode20CalcDeltasCompressedEv
; Address            : 0x38B46C - 0x38B5DE
; =========================================================

38B46C:  PUSH            {R4-R7,LR}
38B46E:  ADD             R7, SP, #0xC
38B470:  PUSH.W          {R8}
38B474:  VPUSH           {D8}
38B478:  SUB             SP, SP, #8
38B47A:  MOV             R8, R0
38B47C:  LDR.W           R0, [R8,#0x10]
38B480:  LDRH            R1, [R0,#4]
38B482:  TST.W           R1, #1
38B486:  BEQ.W           loc_38B5D2
38B48A:  LDRSH.W         R3, [R8,#0xA]
38B48E:  ANDS.W          R1, R1, #2
38B492:  LDRSH.W         R2, [R8,#8]
38B496:  LDR             R0, [R0,#8]
38B498:  ADD.W           R1, R3, R3,LSL#2
38B49C:  VLDR            S10, =0.00024414
38B4A0:  MOV.W           R1, R1,LSL#1
38B4A4:  IT NE
38B4A6:  LSLNE           R1, R3, #4
38B4A8:  ADD.W           R3, R2, R2,LSL#2
38B4AC:  LDRSH           R4, [R0,R1]
38B4AE:  ADD             R1, R0
38B4B0:  MOV.W           R3, R3,LSL#1
38B4B4:  IT NE
38B4B6:  LSLNE           R3, R2, #4
38B4B8:  LDRSH.W         R5, [R1,#2]
38B4BC:  LDR             R2, [R0,R3]
38B4BE:  ADD             R0, R3
38B4C0:  LDRSH.W         R6, [R1,#4]
38B4C4:  LDRSH.W         R1, [R1,#6]
38B4C8:  VMOV            S0, R4
38B4CC:  STR             R2, [SP,#0x20+var_20]
38B4CE:  VMOV            S2, R5
38B4D2:  LDR             R2, [R0,#4]
38B4D4:  VMOV            S4, R6
38B4D8:  STR             R2, [SP,#0x20+var_1C]
38B4DA:  MOV             R2, SP
38B4DC:  VCVT.F32.S32    S0, S0
38B4E0:  VLD1.16         {D16}, [R2@64,#0x20+var_20]
38B4E4:  VCVT.F32.S32    S2, S2
38B4E8:  MOV.W           R2, #0x39800000
38B4EC:  VMOVL.S16       Q8, D16
38B4F0:  VDUP.32         Q9, R2
38B4F4:  VCVT.F32.S32    S8, S4
38B4F8:  VMOV            S4, R1
38B4FC:  VCVT.F32.S32    Q8, Q8
38B500:  VMUL.F32        S0, S0, S10
38B504:  VMUL.F32        S2, S2, S10
38B508:  VCVT.F32.S32    S12, S4
38B50C:  VMUL.F32        Q1, Q8, Q9
38B510:  VMUL.F32        S8, S8, S10
38B514:  VMUL.F32        S14, S0, S4
38B518:  VMUL.F32        S1, S2, S5
38B51C:  VMUL.F32        S10, S12, S10
38B520:  VMUL.F32        S12, S8, S6
38B524:  VADD.F32        S14, S14, S1
38B528:  VMUL.F32        S1, S10, S7
38B52C:  VADD.F32        S12, S14, S12
38B530:  VADD.F32        S12, S12, S1
38B534:  VCMPE.F32       S12, #0.0
38B538:  VMRS            APSR_nzcv, FPSCR
38B53C:  BGE             loc_38B57E
38B53E:  VLDR            S12, =-4096.0
38B542:  VMUL.F32        S14, S5, S12
38B546:  VMUL.F32        S1, S6, S12
38B54A:  VMUL.F32        S3, S7, S12
38B54E:  VMUL.F32        S12, S4, S12
38B552:  VNEG.F32        Q1, Q1
38B556:  VCVT.S32.F32    S14, S14
38B55A:  VCVT.S32.F32    S1, S1
38B55E:  VCVT.S32.F32    S3, S3
38B562:  VCVT.S32.F32    S12, S12
38B566:  VMOV            R1, S14
38B56A:  STRH            R1, [R0,#2]
38B56C:  VMOV            R1, S12
38B570:  STRH            R1, [R0]
38B572:  VMOV            R1, S1
38B576:  STRH            R1, [R0,#4]
38B578:  VMOV            R1, S3
38B57C:  STRH            R1, [R0,#6]
38B57E:  VMUL.F32        S2, S2, S5
38B582:  VMUL.F32        S0, S0, S4
38B586:  VMUL.F32        S8, S8, S6
38B58A:  VMOV.F32        S16, #1.0
38B58E:  VADD.F32        S0, S0, S2
38B592:  VMUL.F32        S2, S10, S7
38B596:  VADD.F32        S0, S0, S8
38B59A:  VADD.F32        S0, S0, S2
38B59E:  VMIN.F32        D0, D0, D8
38B5A2:  VMOV            R0, S0; x
38B5A6:  BLX             acosf
38B5AA:  VMOV            S0, R0; x
38B5AE:  STR.W           R0, [R8]
38B5B2:  VCMP.F32        S0, #0.0
38B5B6:  VMRS            APSR_nzcv, FPSCR
38B5BA:  BEQ             loc_38B5CA
38B5BC:  BLX             sinf
38B5C0:  VMOV            S0, R0
38B5C4:  VDIV.F32        S0, S16, S0
38B5C8:  B               loc_38B5CE
38B5CA:  VLDR            S0, =0.0
38B5CE:  VSTR            S0, [R8,#4]
38B5D2:  ADD             SP, SP, #8
38B5D4:  VPOP            {D8}
38B5D8:  POP.W           {R8}
38B5DC:  POP             {R4-R7,PC}
