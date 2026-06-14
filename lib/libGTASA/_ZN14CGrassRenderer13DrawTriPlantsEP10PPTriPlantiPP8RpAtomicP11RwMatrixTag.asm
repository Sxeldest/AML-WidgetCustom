; =========================================================
; Game Engine Function: _ZN14CGrassRenderer13DrawTriPlantsEP10PPTriPlantiPP8RpAtomicP11RwMatrixTag
; Address            : 0x2CD2A0 - 0x2CD65A
; =========================================================

2CD2A0:  PUSH            {R4-R7,LR}
2CD2A2:  ADD             R7, SP, #0xC
2CD2A4:  PUSH.W          {R8-R11}
2CD2A8:  SUB             SP, SP, #4
2CD2AA:  VPUSH           {D8-D15}
2CD2AE:  SUB             SP, SP, #0x58
2CD2B0:  STR             R0, [SP,#0xB8+var_A8]
2CD2B2:  MOV             R0, R1
2CD2B4:  CMP             R1, #1
2CD2B6:  STR             R2, [SP,#0xB8+var_B8]
2CD2B8:  STR             R0, [SP,#0xB8+var_A4]
2CD2BA:  BLT.W           loc_2CD64A
2CD2BE:  LDR             R0, =(_ZN14CGrassRenderer14m_vecCameraPosE_ptr - 0x2CD2D0)
2CD2C0:  VMOV.F32        S16, #0.5
2CD2C4:  VMOV.F32        S18, #20.0
2CD2C8:  VLDR            S20, =255.0
2CD2CC:  ADD             R0, PC; _ZN14CGrassRenderer14m_vecCameraPosE_ptr
2CD2CE:  VMOV.F32        S26, #1.0
2CD2D2:  VMOV.F32        S28, #-2.0
2CD2D6:  VLDR            S22, =4.6566e-10
2CD2DA:  LDR             R0, [R0]; CGrassRenderer::m_vecCameraPos ...
2CD2DC:  MOVS            R1, #0
2CD2DE:  STR             R0, [SP,#0xB8+var_AC]
2CD2E0:  LDR             R0, =(g_fx_ptr - 0x2CD2EA)
2CD2E2:  VLDR            S24, =0.0
2CD2E6:  ADD             R0, PC; g_fx_ptr
2CD2E8:  LDR             R0, [R0]; g_fx
2CD2EA:  STR             R0, [SP,#0xB8+var_B0]
2CD2EC:  LDR             R0, =(_ZN14CGrassRenderer9m_farDistE_ptr - 0x2CD2F2)
2CD2EE:  ADD             R0, PC; _ZN14CGrassRenderer9m_farDistE_ptr
2CD2F0:  LDR             R0, [R0]; CGrassRenderer::m_farDist ...
2CD2F2:  STR             R0, [SP,#0xB8+var_B4]
2CD2F4:  LDR             R0, =(_ZN14CGrassRenderer14m_vecCameraPosE_ptr - 0x2CD2FA)
2CD2F6:  ADD             R0, PC; _ZN14CGrassRenderer14m_vecCameraPosE_ptr
2CD2F8:  LDR             R0, [R0]; CGrassRenderer::m_vecCameraPos ...
2CD2FA:  STR             R0, [SP,#0xB8+var_74]
2CD2FC:  LDR             R0, =(_ZN14CGrassRenderer11m_closeDistE_ptr - 0x2CD302)
2CD2FE:  ADD             R0, PC; _ZN14CGrassRenderer11m_closeDistE_ptr
2CD300:  LDR             R0, [R0]; CGrassRenderer::m_closeDist ...
2CD302:  STR             R0, [SP,#0xB8+var_78]
2CD304:  LDR             R0, =(_ZN14CGrassRenderer13m_windBendingE_ptr - 0x2CD30A)
2CD306:  ADD             R0, PC; _ZN14CGrassRenderer13m_windBendingE_ptr
2CD308:  LDR             R0, [R0]; CGrassRenderer::m_windBending ...
2CD30A:  STR             R0, [SP,#0xB8+var_9C]
2CD30C:  MOVS            R2, #0x5C ; '\'
2CD30E:  LDR             R0, [SP,#0xB8+var_A8]
2CD310:  MLA.W           R10, R1, R2, R0
2CD314:  LDR             R0, [SP,#0xB8+var_AC]
2CD316:  STR             R1, [SP,#0xB8+var_A0]
2CD318:  VLDR            S2, [R0]
2CD31C:  VLDR            D17, [R0,#4]
2CD320:  LDR             R0, [SP,#0xB8+var_B0]; this
2CD322:  VLDR            S0, [R10,#0x24]
2CD326:  VLDR            D16, [R10,#0x28]
2CD32A:  VSUB.F32        S0, S0, S2
2CD32E:  VSUB.F32        D16, D16, D17
2CD332:  VMUL.F32        D1, D16, D16
2CD336:  VMUL.F32        S0, S0, S0
2CD33A:  VADD.F32        S0, S0, S2
2CD33E:  VADD.F32        S30, S0, S3
2CD342:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
2CD346:  VSQRT.F32       S30, S30
2CD34A:  LDR             R1, [SP,#0xB8+var_B4]
2CD34C:  CMP             R0, #1
2CD34E:  VLDR            S0, [R1]
2CD352:  VMUL.F32        S17, S0, S16
2CD356:  IT GT
2CD358:  VMOVGT.F32      S17, S0
2CD35C:  VADD.F32        S19, S17, S18
2CD360:  VCMPE.F32       S30, S19
2CD364:  VMRS            APSR_nzcv, FPSCR
2CD368:  BGT.W           loc_2CD63E
2CD36C:  LDRH.W          R0, [R10,#0x30]
2CD370:  LDR             R1, [SP,#0xB8+var_B8]
2CD372:  VLDR            S0, [R10,#0x48]
2CD376:  LDR.W           R0, [R1,R0,LSL#2]
2CD37A:  VCVT.U32.F32    S0, S0
2CD37E:  STR             R0, [SP,#0xB8+var_7C]
2CD380:  LDR.W           R9, [R0,#4]
2CD384:  VMOV            R0, S0; seed
2CD388:  BLX             srand
2CD38C:  LDRB.W          R0, [R10,#0x43]
2CD390:  VCMPE.F32       S30, S17
2CD394:  VMRS            APSR_nzcv, FPSCR
2CD398:  BLT             loc_2CD3DA
2CD39A:  VSUB.F32        S0, S19, S30
2CD39E:  VMOV            S2, R0
2CD3A2:  VCVT.F32.U32    S2, S2
2CD3A6:  VDIV.F32        S0, S0, S18
2CD3AA:  VMUL.F32        S0, S0, S2
2CD3AE:  VMOV            R0, S0; x
2CD3B2:  BLX             floorf
2CD3B6:  VMOV            S0, R0
2CD3BA:  VCVT.S32.F32    S0, S0
2CD3BE:  VCVT.F32.S32    S0, S0
2CD3C2:  VMIN.F32        D0, D0, D10
2CD3C6:  VCVT.S32.F32    S0, S0
2CD3CA:  VCVT.F32.S32    S0, S0
2CD3CE:  VMAX.F32        D0, D0, D12
2CD3D2:  VCVT.S32.F32    S0, S0
2CD3D6:  VMOV            R0, S0
2CD3DA:  LDRB.W          R1, [R10,#0x44]
2CD3DE:  ADD             R2, SP, #0xB8+var_6C
2CD3E0:  LDRB.W          R5, [R10,#0x42]
2CD3E4:  VMOV            S0, R1
2CD3E8:  VCVT.F32.U32    S0, S0
2CD3EC:  LDRB.W          R1, [R10,#0x41]
2CD3F0:  VMIN.F32        D0, D0, D10
2CD3F4:  VCVT.U32.F32    S0, S0
2CD3F8:  LDRB.W          R3, [R10,#0x40]
2CD3FC:  VMOV            R6, S0
2CD400:  MULS            R1, R6
2CD402:  MULS            R5, R6
2CD404:  MULS            R3, R6
2CD406:  LDR.W           R6, [R10,#0x3C]
2CD40A:  AND.W           R1, R1, #0xFF00
2CD40E:  ORR.W           R0, R1, R0,LSL#24
2CD412:  LSLS            R1, R5, #8
2CD414:  UXTB16.W        R1, R1
2CD418:  ORRS            R0, R1
2CD41A:  UBFX.W          R1, R3, #8, #8
2CD41E:  ORRS            R0, R1
2CD420:  LDR             R1, =(dword_70CB1C - 0x2CD42A)
2CD422:  STR             R0, [SP,#0xB8+var_6C]
2CD424:  LDR             R0, [SP,#0xB8+var_7C]
2CD426:  ADD             R1, PC; dword_70CB1C
2CD428:  LDR             R0, [R0,#0x18]
2CD42A:  STR             R6, [R1]
2CD42C:  LDR             R1, =(sub_2CD6A0+1 - 0x2CD432)
2CD42E:  ADD             R1, PC; sub_2CD6A0
2CD430:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
2CD434:  LDRH.W          R8, [R10,#0x32]
2CD438:  CMP.W           R8, #0
2CD43C:  BEQ.W           loc_2CD63E
2CD440:  ADD.W           R0, R9, #0x10
2CD444:  STR             R0, [SP,#0xB8+var_80]
2CD446:  ADD.W           R0, R10, #0x54 ; 'T'
2CD44A:  STR             R0, [SP,#0xB8+var_84]
2CD44C:  ADD.W           R0, R10, #0x58 ; 'X'
2CD450:  STR             R0, [SP,#0xB8+var_88]
2CD452:  ADD.W           R0, R10, #0x38 ; '8'
2CD456:  STR             R0, [SP,#0xB8+var_8C]
2CD458:  ADD.W           R0, R10, #0x50 ; 'P'
2CD45C:  STR             R0, [SP,#0xB8+var_90]
2CD45E:  ADD.W           R0, R10, #0x34 ; '4'
2CD462:  ADD.W           R5, R10, #0x14
2CD466:  ADD.W           R6, R10, #8
2CD46A:  ADD.W           R4, R10, #0x18
2CD46E:  ADD.W           R11, R10, #0xC
2CD472:  STR             R0, [SP,#0xB8+var_94]
2CD474:  ADD.W           R0, R10, #0x4C ; 'L'
2CD478:  STR             R0, [SP,#0xB8+var_98]
2CD47A:  ADD.W           R0, R10, #0x20 ; ' '
2CD47E:  STR             R0, [SP,#0xB8+var_70]
2CD480:  BLX             rand
2CD484:  VMOV            S0, R0
2CD488:  VCVT.F32.S32    S30, S0
2CD48C:  BLX             rand
2CD490:  VMOV            S0, R0
2CD494:  ADD             R1, SP, #0xB8+var_6C
2CD496:  VMUL.F32        S2, S30, S22
2CD49A:  ADDS            R0, R1, #4
2CD49C:  VCVT.F32.S32    S0, S0
2CD4A0:  VADD.F32        S2, S2, S24
2CD4A4:  VMUL.F32        S0, S0, S22
2CD4A8:  VSUB.F32        S6, S26, S2
2CD4AC:  VADD.F32        S0, S0, S24
2CD4B0:  VADD.F32        S4, S2, S0
2CD4B4:  VCMPE.F32       S4, S26
2CD4B8:  VMRS            APSR_nzcv, FPSCR
2CD4BC:  VSUB.F32        S4, S26, S0
2CD4C0:  IT GT
2CD4C2:  VMOVGT.F32      S2, S6
2CD4C6:  IT GT
2CD4C8:  VMOVGT.F32      S0, S4
2CD4CC:  VSUB.F32        S4, S26, S2
2CD4D0:  VLDR            D16, [R11]
2CD4D4:  VLDR            D17, [R10]
2CD4D8:  VMUL.F32        D16, D16, D1[0]
2CD4DC:  VLDR            D18, [R4]
2CD4E0:  VMUL.F32        D18, D18, D0[0]
2CD4E4:  VSUB.F32        S4, S4, S0
2CD4E8:  VMUL.F32        D17, D17, D2[0]
2CD4EC:  VADD.F32        D16, D16, D17
2CD4F0:  VADD.F32        D16, D18, D16
2CD4F4:  VST1.32         {D16[1]}, [R0@32]
2CD4F8:  LDR             R0, [SP,#0xB8+var_70]
2CD4FA:  VST1.32         {D16[0]}, [R1@32]
2CD4FE:  VLDR            S6, [R6]
2CD502:  VLDR            S8, [R5]
2CD506:  VMUL.F32        S4, S4, S6
2CD50A:  VLDR            S6, [R0]
2CD50E:  VMUL.F32        S2, S2, S8
2CD512:  LDR             R0, [SP,#0xB8+var_74]
2CD514:  VMUL.F32        S0, S0, S6
2CD518:  VLD1.32         {D17}, [R0]!
2CD51C:  VSUB.F32        D16, D16, D17
2CD520:  VADD.F32        S2, S4, S2
2CD524:  VMUL.F32        D2, D16, D16
2CD528:  VADD.F32        S0, S2, S0
2CD52C:  VLDR            S2, [R0]
2CD530:  VADD.F32        S4, S4, S5
2CD534:  LDR             R0, [SP,#0xB8+var_78]
2CD536:  VSUB.F32        S2, S0, S2
2CD53A:  VSTR            S0, [SP,#0xB8+var_64]
2CD53E:  VMUL.F32        S2, S2, S2
2CD542:  VADD.F32        S2, S4, S2
2CD546:  VLDR            S4, [R0]
2CD54A:  VADD.F32        S4, S4, S28
2CD54E:  VSQRT.F32       S2, S2
2CD552:  VCMPE.F32       S2, S4
2CD556:  VMRS            APSR_nzcv, FPSCR
2CD55A:  BGE             loc_2CD570
2CD55C:  BLX             rand
2CD560:  BLX             rand
2CD564:  BLX             rand
2CD568:  SUBS.W          R8, R8, #1
2CD56C:  BNE             loc_2CD480
2CD56E:  B               loc_2CD63E
2CD570:  MOV             R0, R9
2CD572:  MOVS            R2, #0
2CD574:  BLX             j__Z16RwFrameTranslateP7RwFramePK5RwV3d15RwOpCombineType; RwFrameTranslate(RwFrame *,RwV3d const*,RwOpCombineType)
2CD578:  LDR             R0, [SP,#0xB8+var_94]
2CD57A:  VLDR            S30, [R0]
2CD57E:  LDR             R0, [SP,#0xB8+var_98]
2CD580:  VLDR            S17, [R0]
2CD584:  BLX             rand
2CD588:  VMOV            S0, R0
2CD58C:  VCVT.F32.S32    S0, S0
2CD590:  VLDR            S2, [R9,#0x10]
2CD594:  VLDR            S4, [R9,#0x24]
2CD598:  VMUL.F32        S0, S0, S22
2CD59C:  VADD.F32        S0, S0, S24
2CD5A0:  VMUL.F32        S0, S17, S0
2CD5A4:  VADD.F32        S0, S30, S0
2CD5A8:  VMUL.F32        S2, S2, S0
2CD5AC:  VMUL.F32        S0, S4, S0
2CD5B0:  VSTR            S2, [R9,#0x10]
2CD5B4:  VSTR            S0, [R9,#0x24]
2CD5B8:  LDR             R0, [SP,#0xB8+var_8C]
2CD5BA:  VLDR            S30, [R0]
2CD5BE:  LDR             R0, [SP,#0xB8+var_90]
2CD5C0:  VLDR            S17, [R0]
2CD5C4:  BLX             rand
2CD5C8:  VMOV            S0, R0
2CD5CC:  VCVT.F32.S32    S0, S0
2CD5D0:  VLDR            S2, [R9,#0x38]
2CD5D4:  VMUL.F32        S0, S0, S22
2CD5D8:  VADD.F32        S0, S0, S24
2CD5DC:  VMUL.F32        S0, S17, S0
2CD5E0:  VADD.F32        S0, S30, S0
2CD5E4:  VMUL.F32        S0, S2, S0
2CD5E8:  VSTR            S0, [R9,#0x38]
2CD5EC:  LDR             R0, [SP,#0xB8+var_88]
2CD5EE:  VLDR            S30, [R0]
2CD5F2:  BLX             rand
2CD5F6:  VMOV            S0, R0
2CD5FA:  VCVT.F32.S32    S0, S0
2CD5FE:  LDR             R0, [SP,#0xB8+var_84]
2CD600:  VLDR            S2, [R0]
2CD604:  LDR             R0, [SP,#0xB8+var_9C]
2CD606:  VMUL.F32        S0, S0, S22
2CD60A:  VLDR            S4, [R0]
2CD60E:  VMUL.F32        S2, S4, S2
2CD612:  VADD.F32        S0, S0, S24
2CD616:  VMUL.F32        S0, S30, S0
2CD61A:  VADD.F32        S0, S0, S26
2CD61E:  VMUL.F32        S0, S2, S0
2CD622:  VSTR            S0, [R9,#0x30]
2CD626:  VSTR            S0, [R9,#0x34]
2CD62A:  LDR             R0, [SP,#0xB8+var_80]
2CD62C:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
2CD630:  LDR             R0, [SP,#0xB8+var_7C]
2CD632:  LDR             R1, [R0,#0x48]
2CD634:  BLX             R1
2CD636:  SUBS.W          R8, R8, #1
2CD63A:  BNE.W           loc_2CD480
2CD63E:  LDR             R1, [SP,#0xB8+var_A0]
2CD640:  LDR             R0, [SP,#0xB8+var_A4]
2CD642:  ADDS            R1, #1
2CD644:  CMP             R1, R0
2CD646:  BNE.W           loc_2CD30C
2CD64A:  MOVS            R0, #1
2CD64C:  ADD             SP, SP, #0x58 ; 'X'
2CD64E:  VPOP            {D8-D15}
2CD652:  ADD             SP, SP, #4
2CD654:  POP.W           {R8-R11}
2CD658:  POP             {R4-R7,PC}
