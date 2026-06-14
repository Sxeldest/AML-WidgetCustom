; =========================================================
; Game Engine Function: _ZN10BoneNode_c10CalcWldMatEP11RwMatrixTag
; Address            : 0x4D233C - 0x4D2434
; =========================================================

4D233C:  PUSH            {R4,R5,R7,LR}
4D233E:  ADD             R7, SP, #8
4D2340:  SUB             SP, SP, #0x40
4D2342:  MOV             R4, R0
4D2344:  MOVS            R0, #2
4D2346:  VLDR            S0, [R4,#0x10]
4D234A:  ADD.W           R5, R4, #0x3C ; '<'
4D234E:  VLDR            S2, [R4,#0x14]
4D2352:  MOV             R2, R1
4D2354:  VMUL.F32        S10, S0, S0
4D2358:  VLDR            S4, [R4,#0x18]
4D235C:  VMUL.F32        S8, S2, S2
4D2360:  VLDR            S6, [R4,#0x1C]
4D2364:  VMUL.F32        S12, S4, S4
4D2368:  MOV             R1, SP
4D236A:  VADD.F32        S8, S10, S8
4D236E:  VMUL.F32        S10, S6, S6
4D2372:  VADD.F32        S8, S8, S12
4D2376:  VMOV.F32        S12, #2.0
4D237A:  VADD.F32        S8, S10, S8
4D237E:  VDIV.F32        S8, S12, S8
4D2382:  VMUL.F32        S10, S4, S8
4D2386:  VMUL.F32        S12, S2, S8
4D238A:  VMUL.F32        S8, S0, S8
4D238E:  VMUL.F32        S3, S4, S10
4D2392:  VMUL.F32        S5, S2, S12
4D2396:  VMUL.F32        S1, S0, S12
4D239A:  VMUL.F32        S14, S6, S10
4D239E:  VMUL.F32        S0, S0, S8
4D23A2:  VMUL.F32        S12, S6, S12
4D23A6:  VMUL.F32        S4, S4, S8
4D23AA:  VMUL.F32        S6, S6, S8
4D23AE:  VMUL.F32        S2, S2, S10
4D23B2:  VADD.F32        S7, S5, S3
4D23B6:  VADD.F32        S10, S1, S14
4D23BA:  VADD.F32        S3, S3, S0
4D23BE:  VMOV.F32        S8, #1.0
4D23C2:  VADD.F32        S0, S0, S5
4D23C6:  VSUB.F32        S9, S4, S12
4D23CA:  VSUB.F32        S14, S1, S14
4D23CE:  VADD.F32        S1, S2, S6
4D23D2:  VSTR            S10, [SP,#0x48+var_44]
4D23D6:  VSUB.F32        S2, S2, S6
4D23DA:  VADD.F32        S4, S4, S12
4D23DE:  VSUB.F32        S6, S8, S7
4D23E2:  VSUB.F32        S10, S8, S3
4D23E6:  VSUB.F32        S0, S8, S0
4D23EA:  VSTR            S9, [SP,#0x48+var_40]
4D23EE:  VSTR            S14, [SP,#0x48+var_38]
4D23F2:  VSTR            S1, [SP,#0x48+var_30]
4D23F6:  VSTR            S2, [SP,#0x48+var_24]
4D23FA:  VSTR            S4, [SP,#0x48+var_28]
4D23FE:  STR             R0, [SP,#0x48+var_3C]
4D2400:  VSTR            S6, [SP,#0x48+var_48]
4D2404:  VSTR            S10, [SP,#0x48+var_34]
4D2408:  VSTR            S0, [SP,#0x48+var_20]
4D240C:  VLDR            D16, [R4,#0x20]
4D2410:  LDR             R0, [R4,#0x28]
4D2412:  STR             R0, [SP,#0x48+var_10]
4D2414:  MOV             R0, R5
4D2416:  VSTR            D16, [SP,#0x48+var_18]
4D241A:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
4D241E:  LDR             R4, [R4,#0x30]
4D2420:  CBZ             R4, loc_4D2430
4D2422:  MOV             R0, R4
4D2424:  MOV             R1, R5
4D2426:  BLX             j__ZN10BoneNode_c10CalcWldMatEP11RwMatrixTag; BoneNode_c::CalcWldMat(RwMatrixTag *)
4D242A:  LDR             R4, [R4,#4]
4D242C:  CMP             R4, #0
4D242E:  BNE             loc_4D2422
4D2430:  ADD             SP, SP, #0x40 ; '@'
4D2432:  POP             {R4,R5,R7,PC}
