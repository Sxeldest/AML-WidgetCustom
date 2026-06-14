; =========================================================
; Game Engine Function: _Z16NvBuildOrthoMatfPA4_fffffff
; Address            : 0x27926A - 0x2792FC
; =========================================================

27926A:  VMOV            S10, R1
27926E:  VLDR            S0, [SP,#arg_8]
279272:  VLDR            S4, [SP,#arg_4]
279276:  VMOV            S6, R2
27927A:  VLDR            S2, [SP,#arg_0]
27927E:  VMOV            S8, R3
279282:  VADD.F32        S12, S4, S0
279286:  MOVS            R1, #0
279288:  VADD.F32        S14, S8, S2
27928C:  STR             R1, [R0,#0x2C]
27928E:  VADD.F32        S1, S10, S6
279292:  MOV.W           R1, #0x3F800000
279296:  VSUB.F32        S0, S0, S4
27929A:  STR             R1, [R0,#0x3C]
27929C:  VSUB.F32        S6, S6, S10
2792A0:  ADDS            R1, R0, #4
2792A2:  VSUB.F32        S2, S2, S8
2792A6:  VMOV.F32        S3, #-2.0
2792AA:  VNEG.F32        S8, S12
2792AE:  VNEG.F32        S10, S14
2792B2:  VMOV.F32        S4, #2.0
2792B6:  VNEG.F32        S12, S1
2792BA:  VMOV.I32        Q8, #0
2792BE:  VDIV.F32        S14, S3, S0
2792C2:  VDIV.F32        S1, S4, S6
2792C6:  VDIV.F32        S4, S4, S2
2792CA:  VDIV.F32        S0, S8, S0
2792CE:  VDIV.F32        S2, S10, S2
2792D2:  VDIV.F32        S6, S12, S6
2792D6:  VST1.32         {D16-D17}, [R1]
2792DA:  ADD.W           R1, R0, #0x18
2792DE:  VST1.32         {D16-D17}, [R1]
2792E2:  VSTR            S14, [R0,#0x28]
2792E6:  VSTR            S1, [R0]
2792EA:  VSTR            S4, [R0,#0x14]
2792EE:  VSTR            S6, [R0,#0x30]
2792F2:  VSTR            S2, [R0,#0x34]
2792F6:  VSTR            S0, [R0,#0x38]
2792FA:  BX              LR
