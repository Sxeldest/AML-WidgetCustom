; =========================================================
; Game Engine Function: _ZN4Fx_c9AddSparksER7CVectorS1_fiS0_hff
; Address            : 0x3643E0 - 0x364610
; =========================================================

3643E0:  PUSH            {R4-R7,LR}
3643E2:  ADD             R7, SP, #0xC
3643E4:  PUSH.W          {R8-R11}
3643E8:  SUB             SP, SP, #4
3643EA:  VPUSH           {D8-D15}
3643EE:  SUB             SP, SP, #0x50
3643F0:  LDR             R0, =(TheCamera_ptr - 0x3643FE)
3643F2:  MOV             R5, R1
3643F4:  MOV             R4, R2
3643F6:  VLDR            S0, [R5]
3643FA:  ADD             R0, PC; TheCamera_ptr
3643FC:  MOV             R6, R3
3643FE:  LDR             R0, [R0]; TheCamera
364400:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
364402:  ADD.W           R2, R1, #0x30 ; '0'
364406:  CMP             R1, #0
364408:  IT EQ
36440A:  ADDEQ           R2, R0, #4
36440C:  VLDR            D16, [R5,#4]
364410:  VLDR            S2, [R2]
364414:  VLDR            D17, [R2,#4]
364418:  VSUB.F32        S0, S2, S0
36441C:  VSUB.F32        D16, D17, D16
364420:  VMUL.F32        D1, D16, D16
364424:  VMUL.F32        S0, S0, S0
364428:  VADD.F32        S0, S0, S2
36442C:  VADD.F32        S0, S0, S3
364430:  VLDR            S2, =22500.0
364434:  VCMPE.F32       S0, S2
364438:  VMRS            APSR_nzcv, FPSCR
36443C:  BGT.W           loc_364602
364440:  VLDR            S2, =225.0
364444:  VCMPE.F32       S0, S2
364448:  VMRS            APSR_nzcv, FPSCR
36444C:  BLE             loc_36445C
36444E:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x364454)
364450:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
364452:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
364454:  LDRB            R0, [R0]; CTimer::m_FrameCounter
364456:  LSLS            R0, R0, #0x1F
364458:  BNE.W           loc_364602
36445C:  VLDR            S0, [R7,#arg_18]
364460:  MOV.W           R0, #0x3F800000
364464:  VLDR            S2, =0.8
364468:  MOVS            R1, #0
36446A:  STRD.W          R0, R0, [SP,#0xB0+var_B0]; float
36446E:  ADD             R0, SP, #0xB0+var_7C; this
364470:  VMUL.F32        S0, S0, S2
364474:  STR             R1, [SP,#0xB0+var_A8]; float
364476:  MOV.W           R1, #0x3F800000; float
36447A:  MOV.W           R2, #0x3F800000; float
36447E:  MOV.W           R3, #0x3F800000; float
364482:  LDR.W           R8, [R7,#arg_0]
364486:  VSTR            S0, [SP,#0xB0+var_A4]
36448A:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
36448E:  CMP.W           R8, #1
364492:  BLT.W           loc_364602
364496:  LDR             R3, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3644A6)
364498:  VMOV.F32        S17, #1.0
36449C:  LDR             R0, [R7,#arg_C]
36449E:  MOVW            R11, #0
3644A2:  ADD             R3, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3644A4:  LDRD.W          R2, R1, [R7,#arg_4]
3644A8:  VMOV            S0, R1
3644AC:  VLDR            S16, [R7,#arg_14]
3644B0:  LDR             R3, [R3]; CTimer::ms_fTimeStep ...
3644B2:  VMOV            S2, R0
3644B6:  LDR             R0, [R7,#arg_0]
3644B8:  VMOV            S6, R2
3644BC:  VADD.F32        S26, S16, S16
3644C0:  VLDR            S30, =4.6566e-10
3644C4:  VLDR            S4, [R3]
3644C8:  VMOV            S18, R6
3644CC:  VLDR            S19, =0.05
3644D0:  ADD.W           R9, SP, #0xB0+var_94
3644D4:  VMUL.F32        S22, S4, S0
3644D8:  ADD             R6, SP, #0xB0+var_88
3644DA:  VMOV            S0, R0
3644DE:  LDR             R0, =(g_fx_ptr - 0x3644EC)
3644E0:  VMUL.F32        S20, S4, S2
3644E4:  MOVT            R11, #0xBF80
3644E8:  ADD             R0, PC; g_fx_ptr
3644EA:  VMUL.F32        S24, S4, S6
3644EE:  VCVT.F32.S32    S28, S0
3644F2:  MOV.W           R8, #0
3644F6:  LDR             R0, [R0]; g_fx
3644F8:  STR             R0, [SP,#0xB0+var_98]
3644FA:  LDR             R0, =(g_fx_ptr - 0x364500)
3644FC:  ADD             R0, PC; g_fx_ptr
3644FE:  LDR.W           R10, [R0]; g_fx
364502:  VLDR            S21, [R4]
364506:  VLDR            S23, [R4,#4]
36450A:  VLDR            S25, [R4,#8]
36450E:  BLX             rand
364512:  VMOV            S0, R0
364516:  VCVT.F32.S32    S27, S0
36451A:  BLX             rand
36451E:  VMOV            S0, R0
364522:  VCVT.F32.S32    S29, S0
364526:  BLX             rand
36452A:  VMOV            S0, R0
36452E:  LDR             R0, [R7,#arg_10]
364530:  VMOV            S2, R8
364534:  ADD             R1, SP, #0xB0+var_7C
364536:  VCVT.F32.S32    S0, S0
36453A:  CMP             R0, #0
36453C:  VCVT.F32.S32    S2, S2
364540:  MOV             R2, R6; int
364542:  VMUL.F32        S4, S27, S30
364546:  VMUL.F32        S6, S29, S30
36454A:  VMUL.F32        S0, S0, S30
36454E:  VDIV.F32        S2, S2, S28
364552:  VMUL.F32        S4, S26, S4
364556:  VMUL.F32        S6, S26, S6
36455A:  VMUL.F32        S0, S26, S0
36455E:  VSUB.F32        S4, S4, S16
364562:  VSUB.F32        S6, S6, S16
364566:  VSUB.F32        S0, S0, S16
36456A:  VADD.F32        S4, S21, S4
36456E:  VADD.F32        S6, S23, S6
364572:  VADD.F32        S8, S25, S0
364576:  VSUB.F32        S0, S17, S2
36457A:  VMUL.F32        S2, S4, S18
36457E:  VMUL.F32        S4, S6, S18
364582:  VMUL.F32        S6, S8, S18
364586:  VMUL.F32        S8, S20, S0
36458A:  VMUL.F32        S10, S22, S0
36458E:  VMUL.F32        S12, S24, S0
364592:  VMUL.F32        S0, S0, S19
364596:  VSTR            S2, [SP,#0xB0+var_88]
36459A:  VSTR            S4, [SP,#0xB0+var_84]
36459E:  VSTR            S6, [SP,#0xB0+var_80]
3645A2:  VLDR            S2, [R5]
3645A6:  VLDR            S4, [R5,#4]
3645AA:  VLDR            S6, [R5,#8]
3645AE:  VSUB.F32        S2, S2, S12
3645B2:  VMOV            R3, S0; int
3645B6:  VSUB.F32        S4, S4, S10
3645BA:  VSUB.F32        S6, S6, S8
3645BE:  VSTR            S4, [SP,#0xB0+var_90]
3645C2:  VSTR            S2, [SP,#0xB0+var_94]
3645C6:  VSTR            S6, [SP,#0xB0+var_8C]
3645CA:  ITTE EQ
3645CC:  LDREQ           R0, [SP,#0xB0+var_98]
3645CE:  LDREQ           R0, [R0,#0x2C]
3645D0:  LDRNE.W         R0, [R10,#(dword_820548 - 0x820520)]; int
3645D4:  STRD.W          R1, R11, [SP,#0xB0+var_B0]; int
3645D8:  MOV             R1, #0x3F99999A
3645E0:  STR             R1, [SP,#0xB0+var_A8]; float
3645E2:  MOV             R1, #0x3F19999A
3645EA:  STR             R1, [SP,#0xB0+var_A4]; float
3645EC:  MOVS            R1, #0
3645EE:  STR             R1, [SP,#0xB0+var_A0]; int
3645F0:  MOV             R1, R9; int
3645F2:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
3645F6:  LDR             R0, [R7,#arg_0]
3645F8:  ADD.W           R8, R8, #1
3645FC:  CMP             R0, R8
3645FE:  BNE.W           loc_364502
364602:  ADD             SP, SP, #0x50 ; 'P'
364604:  VPOP            {D8-D15}
364608:  ADD             SP, SP, #4
36460A:  POP.W           {R8-R11}
36460E:  POP             {R4-R7,PC}
