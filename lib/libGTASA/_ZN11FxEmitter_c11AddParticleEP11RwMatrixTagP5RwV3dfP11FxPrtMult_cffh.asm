; =========================================================
; Game Engine Function: _ZN11FxEmitter_c11AddParticleEP11RwMatrixTagP5RwV3dfP11FxPrtMult_cffh
; Address            : 0x36950C - 0x3696B8
; =========================================================

36950C:  PUSH            {R4-R7,LR}
36950E:  ADD             R7, SP, #0xC
369510:  PUSH.W          {R8-R11}
369514:  SUB             SP, SP, #4
369516:  VPUSH           {D8-D10}
36951A:  SUB             SP, SP, #0x80
36951C:  STR             R2, [SP,#0xB8+var_A4]
36951E:  MOV             R8, R0
369520:  MOV             R6, R1
369522:  LDRD.W          R0, R1, [R8,#4]
369526:  LDR             R2, [R1,#8]
369528:  MOV             R10, R3
36952A:  LDRB.W          R1, [R1,#0x56]
36952E:  ADDS            R0, #0x2C ; ','
369530:  MOVS            R5, #0
369532:  LDR             R3, [R2,#0xC]
369534:  ADD             R2, SP, #0xB8+var_A0
369536:  STRD.W          R1, R2, [SP,#0xB8+var_B8]; float
36953A:  MOVS            R1, #0
36953C:  MOVS            R2, #0
36953E:  BLX             j__ZN15FxInfoManager_c19ProcessEmissionInfoEfffhP14EmissionInfo_t; FxInfoManager_c::ProcessEmissionInfo(float,float,float,uchar,EmissionInfo_t *)
369542:  LDR             R0, =(g_fxMan_ptr - 0x369548)
369544:  ADD             R0, PC; g_fxMan_ptr
369546:  LDR             R4, [R0]; g_fxMan
369548:  MOV             R0, R4; this
36954A:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
36954E:  MOV             R9, R0
369550:  MOV             R0, R4; this
369552:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
369556:  MOV             R11, R0
369558:  MOV             R0, R4; this
36955A:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
36955E:  MOV             R4, R0
369560:  MOV.W           R0, #0x3F800000
369564:  STRD.W          R0, R5, [R4]
369568:  MOV             R1, R4
36956A:  STR             R5, [R4,#8]
36956C:  MOV             R2, R4
36956E:  STRD.W          R5, R0, [R4,#0x24]
369572:  STRD.W          R0, R5, [R4,#0x14]
369576:  MOV             R0, R4
369578:  STRD.W          R5, R5, [R4,#0x34]
36957C:  STR.W           R5, [R0,#0x10]!
369580:  STR.W           R5, [R1,#0x30]!
369584:  STR.W           R5, [R2,#0x20]!
369588:  LDR             R3, [R4,#0xC]
36958A:  ORR.W           R3, R3, #0x20000
36958E:  ORR.W           R3, R3, #3
369592:  STR             R3, [R4,#0xC]
369594:  MOV             R3, R6
369596:  VLD1.32         {D16-D17}, [R3]!
36959A:  VLD1.32         {D18-D19}, [R3]
36959E:  ADD.W           R3, R6, #0x30 ; '0'
3695A2:  VLD1.32         {D20-D21}, [R3]
3695A6:  ADD.W           R3, R6, #0x20 ; ' '
3695AA:  VLD1.32         {D22-D23}, [R3]
3695AE:  VST1.32         {D22-D23}, [R2]
3695B2:  VST1.32         {D20-D21}, [R1]
3695B6:  VST1.32         {D16-D17}, [R4]
3695BA:  VST1.32         {D18-D19}, [R0]
3695BE:  MOV             R0, R4
3695C0:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
3695C4:  LDR.W           R0, [R8,#8]
3695C8:  VMOV            S20, R10
3695CC:  VLDR            S18, [R7,#arg_8]
3695D0:  VLDR            S16, [R7,#arg_4]
3695D4:  LDR             R2, [R0,#0xC]
3695D6:  CBZ             R2, loc_3695E2
3695D8:  MOV             R0, R11
3695DA:  MOV             R1, R4
3695DC:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
3695E0:  B               loc_369616
3695E2:  MOV             R0, R4
3695E4:  ADD.W           R1, R4, #0x20 ; ' '
3695E8:  VLD1.32         {D16-D17}, [R0]!
3695EC:  VLD1.32         {D20-D21}, [R0]
3695F0:  ADD.W           R0, R4, #0x30 ; '0'
3695F4:  VLD1.32         {D22-D23}, [R0]
3695F8:  ADD.W           R0, R11, #0x30 ; '0'
3695FC:  VLD1.32         {D18-D19}, [R1]
369600:  VST1.32         {D22-D23}, [R0]
369604:  ADD.W           R0, R11, #0x20 ; ' '
369608:  VST1.32         {D18-D19}, [R0]
36960C:  MOV             R0, R11
36960E:  VST1.32         {D16-D17}, [R0]!
369612:  VST1.32         {D20-D21}, [R0]
369616:  MOV             R0, R11
369618:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36961C:  LDR             R0, =(g_fxMan_ptr - 0x369622)
36961E:  ADD             R0, PC; g_fxMan_ptr
369620:  LDR             R6, [R0]; g_fxMan
369622:  MOV             R0, R6; this
369624:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
369628:  MOV             R5, R0
36962A:  LDR.W           R0, [R8,#4]
36962E:  MOV             R1, R5
369630:  BLX             j__ZN10FxPrimBP_c11GetRWMatrixEP11RwMatrixTag; FxPrimBP_c::GetRWMatrix(RwMatrixTag *)
369634:  MOV             R0, R9
369636:  MOV             R1, R5
369638:  MOV             R2, R11
36963A:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
36963E:  MOV             R0, R6
369640:  MOV             R1, R5
369642:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
369646:  MOV             R0, R9
369648:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36964C:  LDR             R0, [R7,#arg_C]
36964E:  ADD             R1, SP, #0xB8+var_A0; int
369650:  LDR             R3, [SP,#0xB8+var_A4]; int
369652:  MOV             R2, R9; int
369654:  STR             R0, [SP,#0xB8+var_AC]; int
369656:  LDR             R0, [R7,#arg_0]
369658:  VSTR            S18, [SP,#0xB8+var_B0]
36965C:  STR             R0, [SP,#0xB8+var_B4]; int
36965E:  MOV             R0, R8; int
369660:  VSTR            S20, [SP,#0xB8+var_B8]
369664:  BLX             j__ZN11FxEmitter_c14CreateParticleEP14EmissionInfo_tP11RwMatrixTagP5RwV3dfP11FxPrtMult_cfh; FxEmitter_c::CreateParticle(EmissionInfo_t *,RwMatrixTag *,RwV3d *,float,FxPrtMult_c *,float,uchar)
369668:  VCMPE.F32       S16, #0.0
36966C:  VMRS            APSR_nzcv, FPSCR
369670:  BLT             loc_36968C
369672:  CMP             R0, #0
369674:  ITTTT NE
369676:  VMOVNE.F32      S0, #0.5
36967A:  VMULNE.F32      S0, S16, S0
36967E:  VCVTNE.U32.F32  S0, S0
369682:  VMOVNE          R1, S0
369686:  IT NE
369688:  STRBNE.W        R1, [R0,#0x36]
36968C:  LDR             R0, =(g_fxMan_ptr - 0x369694)
36968E:  MOV             R1, R4
369690:  ADD             R0, PC; g_fxMan_ptr
369692:  LDR             R5, [R0]; g_fxMan
369694:  MOV             R0, R5
369696:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
36969A:  MOV             R0, R5
36969C:  MOV             R1, R11
36969E:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
3696A2:  MOV             R0, R5
3696A4:  MOV             R1, R9
3696A6:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
3696AA:  ADD             SP, SP, #0x80
3696AC:  VPOP            {D8-D10}
3696B0:  ADD             SP, SP, #4
3696B2:  POP.W           {R8-R11}
3696B6:  POP             {R4-R7,PC}
