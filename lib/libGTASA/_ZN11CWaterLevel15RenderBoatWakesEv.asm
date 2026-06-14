; =========================================================
; Game Engine Function: _ZN11CWaterLevel15RenderBoatWakesEv
; Address            : 0x598280 - 0x5985EA
; =========================================================

598280:  PUSH            {R4-R7,LR}
598282:  ADD             R7, SP, #0xC
598284:  PUSH.W          {R8-R11}
598288:  SUB             SP, SP, #4
59828A:  VPUSH           {D8-D15}
59828E:  SUB             SP, SP, #0x50
598290:  LDR             R0, =(gpWaterWakeTex_ptr - 0x598296)
598292:  ADD             R0, PC; gpWaterWakeTex_ptr
598294:  LDR             R0, [R0]; gpWaterWakeTex
598296:  LDR             R0, [R0]
598298:  LDR             R1, [R0]
59829A:  MOVS            R0, #1
59829C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5982A0:  BLX             j__ZN5CBoat12FillBoatListEv; CBoat::FillBoatList(void)
5982A4:  MOVW            R0, #0xC28F
5982A8:  VMOV.F32        S24, #4.0
5982AC:  MOVT            R0, #0xBCF5
5982B0:  VMOV.F32        S28, #0.5
5982B4:  STR             R0, [SP,#0xB0+var_8C]
5982B6:  VMOV.F32        S21, #9.0
5982BA:  LDR             R0, =(_ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr - 0x5982CC)
5982BC:  VMOV.F32        S23, #1.0
5982C0:  VLDR            S16, =0.01
5982C4:  ADD.W           R10, SP, #0xB0+var_78
5982C8:  ADD             R0, PC; _ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr
5982CA:  VLDR            S18, =0.15
5982CE:  VLDR            S30, =50.0
5982D2:  ADD.W           R9, SP, #0xB0+var_80
5982D6:  LDR             R0, [R0]; CBoat::apFrameWakeGeneratingBoats ...
5982D8:  MOVS            R6, #0
5982DA:  STR             R0, [SP,#0xB0+var_90]
5982DC:  LDR             R0, =(_ZN5CBoat13WAKE_LIFETIMEE_ptr - 0x5982E6)
5982DE:  VLDR            S27, =160.0
5982E2:  ADD             R0, PC; _ZN5CBoat13WAKE_LIFETIMEE_ptr
5982E4:  LDR             R0, [R0]; CBoat::WAKE_LIFETIME ...
5982E6:  STR             R0, [SP,#0xB0+var_94]
5982E8:  LDR             R0, =(TheCamera_ptr - 0x5982EE)
5982EA:  ADD             R0, PC; TheCamera_ptr
5982EC:  LDR             R0, [R0]; TheCamera
5982EE:  STR             R0, [SP,#0xB0+var_98]
5982F0:  LDR             R0, =(_ZN5CBoat13WAKE_LIFETIMEE_ptr - 0x5982F6)
5982F2:  ADD             R0, PC; _ZN5CBoat13WAKE_LIFETIMEE_ptr
5982F4:  LDR.W           R11, [R0]; CBoat::WAKE_LIFETIME ...
5982F8:  LDR             R1, [SP,#0xB0+var_90]
5982FA:  SXTH            R0, R6
5982FC:  LDR.W           R5, [R1,R0,LSL#2]
598300:  CMP             R5, #0
598302:  BEQ.W           loc_59858C
598306:  LDR             R0, [R5,#0x14]
598308:  VLDR            S20, [R0,#0x10]
59830C:  VLDR            S25, [R0,#0x14]
598310:  MOV             R0, R5; this
598312:  BLX.W           j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
598316:  LDRB.W          R1, [R5,#0x7DC]
59831A:  VLDR            S10, =0.0
59831E:  VMOV            S0, R1
598322:  ADDW            R1, R5, #0x75C
598326:  VMOV.F32        S12, S10
59832A:  VLDR            S10, =0.65
59832E:  VCVT.F32.U32    S0, S0
598332:  VLDR            S2, [R1]
598336:  LDR             R1, [SP,#0xB0+var_94]
598338:  LDR             R4, [SP,#0xB0+var_98]
59833A:  VLDR            S8, [R0,#0xC]
59833E:  VLDR            S4, [R1]
598342:  LDR             R0, [R4,#0x14]
598344:  VMUL.F32        S31, S8, S10
598348:  LDRH            R1, [R5,#0x26]
59834A:  VMUL.F32        S0, S0, S16
59834E:  ADD.W           R2, R0, #0x30 ; '0'
598352:  CMP             R0, #0
598354:  VLDR            S10, =0.4
598358:  VMUL.F32        S10, S31, S10
59835C:  VADD.F32        S6, S0, S18
598360:  VMUL.F32        S6, S6, S12
598364:  VSTR            S6, [SP,#0xB0+var_84]
598368:  LDR             R3, [R5,#0x14]
59836A:  IT EQ
59836C:  ADDEQ           R2, R4, #4
59836E:  VLDR            D16, [R2]
598372:  ADD.W           R0, R3, #0x30 ; '0'
598376:  CMP             R3, #0
598378:  IT EQ
59837A:  ADDEQ           R0, R5, #4
59837C:  CMP.W           R1, #0x1CC
598380:  VLDR            D17, [R0]
598384:  IT EQ
598386:  VMOVEQ.F32      S31, S10
59838A:  VSUB.F32        D16, D17, D16
59838E:  VMUL.F32        D4, D16, D16
598392:  VADD.F32        S8, S8, S9
598396:  VADD.F32        S8, S8, S12
59839A:  VSQRT.F32       S22, S8
59839E:  VCMPE.F32       S22, S30
5983A2:  VMRS            APSR_nzcv, FPSCR
5983A6:  BLE             loc_5983C0
5983A8:  VLDR            S8, =80.0
5983AC:  VMOV.F32        S10, #30.0
5983B0:  VSUB.F32        S8, S8, S22
5983B4:  VDIV.F32        S8, S8, S10
5983B8:  VMUL.F32        S6, S6, S8
5983BC:  VSTR            S6, [SP,#0xB0+var_84]
5983C0:  LDRH.W          R0, [R5,#0x658]
5983C4:  CMP             R0, #2
5983C6:  BCC.W           loc_598582
5983CA:  VSUB.F32        S2, S4, S2
5983CE:  MOVS            R2, #1
5983D0:  VMUL.F32        S0, S0, S24
5983D4:  MOV.W           R8, #1
5983D8:  VDIV.F32        S2, S2, S4
5983DC:  VADD.F32        S0, S0, S28
5983E0:  VMUL.F32        S2, S31, S2
5983E4:  VMOV.F32        S4, #30.0
5983E8:  VMUL.F32        S0, S0, S2
5983EC:  VLDR            S2, =80.0
5983F0:  VSUB.F32        S2, S2, S22
5983F4:  VADD.F32        S0, S31, S0
5983F8:  VDIV.F32        S26, S2, S4
5983FC:  ADD.W           R1, R5, R2,LSL#3
598400:  ADDW            R4, R1, #0x65C
598404:  ADD.W           R3, R1, #0x658
598408:  VLDR            S2, [R4]
59840C:  ADD.W           R4, R1, #0x660
598410:  ADDW            R1, R1, #0x654
598414:  VLDR            S6, [R3]
598418:  VLDR            S4, [R4]
59841C:  VLDR            S8, [R1]
598420:  VSUB.F32        S17, S6, S4
598424:  VSUB.F32        S19, S8, S2
598428:  VMUL.F32        S10, S17, S17
59842C:  VMUL.F32        S12, S19, S19
598430:  VADD.F32        S10, S12, S10
598434:  VCMPE.F32       S10, S21
598438:  VMRS            APSR_nzcv, FPSCR
59843C:  BLE             loc_598462
59843E:  VSQRT.F32       S10, S10
598442:  VDIV.F32        S12, S23, S10
598446:  VMUL.F32        S17, S17, S12
59844A:  VMUL.F32        S19, S19, S12
59844E:  VMOV.F32        S12, #13.0
598452:  VCMPE.F32       S10, S12
598456:  VMRS            APSR_nzcv, FPSCR
59845A:  ITE GT
59845C:  MOVGT           R1, #0
59845E:  MOVLE           R1, #1
598460:  B               loc_598464
598462:  MOVS            R1, #1
598464:  ADD.W           R3, R5, R2,LSL#2
598468:  VLDR            S12, [R11]
59846C:  ADDW            R3, R3, #0x75C
598470:  ADD             R2, R5
598472:  VLDR            S10, [R3]
598476:  LDRB.W          R2, [R2,#0x7DC]
59847A:  VSUB.F32        S10, S12, S10
59847E:  VMOV            S14, R2
598482:  UXTH            R2, R0
598484:  VCVT.F32.U32    S14, S14
598488:  VDIV.F32        S1, S10, S12
59848C:  VMUL.F32        S10, S14, S16
598490:  VMOV            S12, R2
598494:  SXTH.W          R2, R8
598498:  VMUL.F32        S1, S31, S1
59849C:  CMP             R2, #2
59849E:  VCVT.F32.U32    S3, S12
5984A2:  VMOV            S12, R2
5984A6:  VCVT.F32.S32    S12, S12
5984AA:  VMUL.F32        S14, S10, S24
5984AE:  VDIV.F32        S3, S12, S3
5984B2:  VADD.F32        S14, S14, S28
5984B6:  VMUL.F32        S14, S14, S1
5984BA:  VADD.F32        S29, S31, S14
5984BE:  VMUL.F32        S14, S0, S20
5984C2:  VMUL.F32        S0, S0, S25
5984C6:  VMUL.F32        S1, S19, S29
5984CA:  VMUL.F32        S5, S17, S29
5984CE:  VSUB.F32        S9, S8, S0
5984D2:  VADD.F32        S8, S0, S8
5984D6:  VSUB.F32        S0, S23, S3
5984DA:  VADD.F32        S7, S14, S6
5984DE:  VSUB.F32        S6, S6, S14
5984E2:  VSUB.F32        S14, S4, S1
5984E6:  VADD.F32        S3, S5, S2
5984EA:  VADD.F32        S4, S1, S4
5984EE:  VSUB.F32        S2, S2, S5
5984F2:  VMUL.F32        S0, S0, S27
5984F6:  VSTR            S7, [SP,#0xB0+var_64]
5984FA:  VSTR            S6, [SP,#0xB0+var_6C]
5984FE:  VSTR            S14, [SP,#0xB0+var_74]
598502:  VSTR            S9, [SP,#0xB0+var_68]
598506:  VSTR            S4, [SP,#0xB0+var_7C]
59850A:  VSTR            S8, [SP,#0xB0+var_70]
59850E:  VSTR            S3, [SP,#0xB0+var_78]
598512:  VSTR            S2, [SP,#0xB0+var_80]
598516:  BGT             loc_598524
598518:  VMOV.F32        S2, #3.0
59851C:  VDIV.F32        S2, S12, S2
598520:  VMUL.F32        S0, S2, S0
598524:  VADD.F32        S2, S10, S18
598528:  VCMPE.F32       S22, S30
59852C:  VMRS            APSR_nzcv, FPSCR
598530:  VMUL.F32        S20, S0, S2
598534:  VMUL.F32        S0, S26, S20
598538:  IT GT
59853A:  VMOVGT.F32      S20, S0
59853E:  CMP             R1, #1
598540:  VSTR            S20, [SP,#0xB0+var_88]
598544:  BNE             loc_598562
598546:  ADD             R0, SP, #0xB0+var_84
598548:  STR             R0, [SP,#0xB0+var_A8]
59854A:  ADD             R0, SP, #0xB0+var_88
59854C:  STR             R0, [SP,#0xB0+var_A4]
59854E:  ADD             R0, SP, #0xB0+var_8C
598550:  STR             R0, [SP,#0xB0+var_A0]
598552:  ADD             R0, SP, #0xB0+var_68
598554:  ADD             R1, SP, #0xB0+var_70
598556:  MOV             R2, R10
598558:  MOV             R3, R9
59855A:  BLX.W           j__ZN11CWaterLevel17RenderWakeSegmentER9CVector2DS1_S1_S1_RfS2_S2_S2_S2_; CWaterLevel::RenderWakeSegment(CVector2D &,CVector2D &,CVector2D &,CVector2D &,float &,float &,float &,float &,float &)
59855E:  LDRH.W          R0, [R5,#0x658]
598562:  VSTR            S20, [SP,#0xB0+var_84]
598566:  VMOV.F32        S25, S17
59856A:  VMOV.F32        S20, S19
59856E:  ADD.W           R8, R8, #1
598572:  VMOV.F32        S0, S29
598576:  UXTH            R1, R0
598578:  SXTH.W          R2, R8
59857C:  CMP             R2, R1
59857E:  BLT.W           loc_5983FC
598582:  ADDS            R0, R6, #1
598584:  SXTH            R6, R0
598586:  CMP             R6, #4
598588:  BLT.W           loc_5982F8
59858C:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x598592)
59858E:  ADD             R0, PC; TempBufferVerticesStored_ptr
598590:  LDR             R0, [R0]; TempBufferVerticesStored
598592:  LDR             R0, [R0]
598594:  CBZ             R0, loc_5985CA
598596:  BLX.W           j__Z10LittleTestv; LittleTest(void)
59859A:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5985A4)
59859C:  MOVS            R3, #1
59859E:  LDR             R1, =(TempVertexBuffer_ptr - 0x5985A6)
5985A0:  ADD             R0, PC; TempBufferVerticesStored_ptr
5985A2:  ADD             R1, PC; TempVertexBuffer_ptr
5985A4:  LDR             R2, [R0]; TempBufferVerticesStored
5985A6:  LDR             R0, [R1]; TempVertexBuffer
5985A8:  LDR             R1, [R2]
5985AA:  MOVS            R2, #0
5985AC:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5985B0:  CBZ             R0, loc_5985CA
5985B2:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5985BA)
5985B4:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5985BC)
5985B6:  ADD             R0, PC; TempBufferIndicesStored_ptr
5985B8:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5985BA:  LDR             R0, [R0]; TempBufferIndicesStored
5985BC:  LDR             R1, [R1]; TempBufferRenderIndexList
5985BE:  LDR             R2, [R0]
5985C0:  MOVS            R0, #3
5985C2:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5985C6:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5985CA:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5985D4)
5985CC:  MOVS            R2, #0
5985CE:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5985D6)
5985D0:  ADD             R0, PC; TempBufferIndicesStored_ptr
5985D2:  ADD             R1, PC; TempBufferVerticesStored_ptr
5985D4:  LDR             R0, [R0]; TempBufferIndicesStored
5985D6:  LDR             R1, [R1]; TempBufferVerticesStored
5985D8:  STR             R2, [R0]
5985DA:  STR             R2, [R1]
5985DC:  ADD             SP, SP, #0x50 ; 'P'
5985DE:  VPOP            {D8-D15}
5985E2:  ADD             SP, SP, #4
5985E4:  POP.W           {R8-R11}
5985E8:  POP             {R4-R7,PC}
