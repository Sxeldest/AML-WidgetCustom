; =========================================================
; Game Engine Function: _ZN17ProcSurfaceInfo_c9AddObjectE7CVectorS0_h
; Address            : 0x4562E0 - 0x45679C
; =========================================================

4562E0:  PUSH            {R4-R7,LR}
4562E2:  ADD             R7, SP, #0xC
4562E4:  PUSH.W          {R8-R11}
4562E8:  SUB             SP, SP, #4
4562EA:  VPUSH           {D8-D15}
4562EE:  SUB             SP, SP, #0x78
4562F0:  MOV             R5, R0
4562F2:  LDR.W           R0, =(g_procObjMan_ptr - 0x4562FE)
4562F6:  MOV             R8, R2
4562F8:  MOV             R9, R1
4562FA:  ADD             R0, PC; g_procObjMan_ptr
4562FC:  LDRD.W          R2, R1, [R7,#arg_0]
456300:  STRD.W          R2, R1, [SP,#0xD8+var_6C]
456304:  MOVW            R1, #0x4C08
456308:  LDR             R0, [R0]; g_procObjMan
45630A:  MOV             R10, R3
45630C:  LDR             R6, [R7,#arg_8]
45630E:  ADD             R0, R1; this
456310:  STR             R6, [SP,#0xD8+var_64]
456312:  BLX             j__ZN6List_c10RemoveHeadEv; List_c::RemoveHead(void)
456316:  MOV             R4, R0
456318:  CBZ             R4, loc_456376
45631A:  LDRB.W          R0, [R5,#0x34]
45631E:  CBZ             R0, loc_45634E
456320:  VMOV            S0, R6
456324:  VLDR            S2, =0.95
456328:  VCMPE.F32       S0, S2
45632C:  VMRS            APSR_nzcv, FPSCR
456330:  BGE             loc_45634E
456332:  LDR.W           R0, =(g_procObjMan_ptr - 0x45633A)
456336:  ADD             R0, PC; g_procObjMan_ptr
456338:  LDR             R0, [R0]; g_procObjMan
45633A:  LDR             R0, [R0]
45633C:  CMP             R0, #0xC8
45633E:  BLT             loc_45634E
456340:  LDR.W           R0, =(aCannotCreatePr - 0x456348); "Cannot create procedural object aligned"...
456344:  ADD             R0, PC; "Cannot create procedural object aligned"...
456346:  BLX             j__ZN6CDebug8DebugLogEPKcz; CDebug::DebugLog(char const*,...)
45634A:  MOVS            R4, #0
45634C:  B               loc_456378
45634E:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x456358)
456352:  LDR             R1, [R5,#4]
456354:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
456356:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
456358:  LDR.W           R0, [R0,R1,LSL#2]
45635C:  LDRH.W          R11, [R0,#0x26]
456360:  MOVW            R0, #0xFFFF
456364:  CMP             R11, R0
456366:  BEQ             loc_456388
456368:  LDR.W           R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x456370)
45636C:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
45636E:  LDR             R0, [R0]; CObject::nNoTempObjects ...
456370:  LDRH            R0, [R0]; CObject::nNoTempObjects
456372:  CMP             R0, #0x95
456374:  BLS             loc_4563C0
456376:  MOVS            R4, #0
456378:  MOV             R0, R4
45637A:  ADD             SP, SP, #0x78 ; 'x'
45637C:  VPOP            {D8-D15}
456380:  ADD             SP, SP, #4
456382:  POP.W           {R8-R11}
456386:  POP             {R4-R7,PC}
456388:  LDR.W           R0, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x456392)
45638C:  MOVS            R1, #1; unsigned int
45638E:  ADD             R0, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
456390:  LDR             R0, [R0]; CPools::ms_pBuildingPool ...
456392:  LDR             R0, [R0]; CPools::ms_pBuildingPool
456394:  STRB            R1, [R0,#0x11]
456396:  MOVS            R0, #off_3C; this
456398:  BLX             j__ZN9CBuildingnwEj; CBuilding::operator new(uint)
45639C:  BLX             j__ZN9CBuildingC2Ev_0; CBuilding::CBuilding(void)
4563A0:  CMP             R0, #0
4563A2:  STR             R0, [R4,#8]
4563A4:  BEQ.W           loc_4565C6
4563A8:  LDR             R2, [R0]
4563AA:  LDR             R1, [R5,#4]
4563AC:  LDR             R2, [R2,#0x1C]
4563AE:  BLX             R2
4563B0:  LDR.W           R0, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x4563BA)
4563B4:  MOVS            R1, #0
4563B6:  ADD             R0, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
4563B8:  LDR             R0, [R0]; CPools::ms_pBuildingPool ...
4563BA:  LDR             R0, [R0]; CPools::ms_pBuildingPool
4563BC:  STRB            R1, [R0,#0x11]
4563BE:  B               loc_456410
4563C0:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4563CA)
4563C4:  MOVS            R1, #1; unsigned int
4563C6:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4563C8:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
4563CA:  LDR             R0, [R0]; CPools::ms_pObjectPool
4563CC:  STRB            R1, [R0,#0x11]
4563CE:  MOV.W           R0, #(elf_hash_bucket+0x88); this
4563D2:  BLX             j__ZN7CObjectnwEj; CObject::operator new(uint)
4563D6:  LDR             R1, [R5,#4]; int
4563D8:  MOVS            R2, #0; bool
4563DA:  MOVS            R6, #0
4563DC:  BLX             j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
4563E0:  CMP             R0, #0
4563E2:  STR             R0, [R4,#8]
4563E4:  BEQ.W           loc_4565D4
4563E8:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4563F6)
4563EC:  MOVS            R2, #5
4563EE:  STRB.W          R2, [R0,#0x140]
4563F2:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4563F4:  LDR             R0, [R4,#8]
4563F6:  LDR.W           R2, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x456404)
4563FA:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
4563FC:  STRD.W          R6, R6, [R0,#0x48]
456400:  ADD             R2, PC; _ZN7CObject14nNoTempObjectsE_ptr
456402:  STR             R6, [R0,#0x50]
456404:  LDR             R0, [R1]; CPools::ms_pObjectPool
456406:  LDR             R1, [R2]; CObject::nNoTempObjects ...
456408:  STRB            R6, [R0,#0x11]
45640A:  LDRH            R0, [R1]; CObject::nNoTempObjects
45640C:  ADDS            R0, #1
45640E:  STRH            R0, [R1]; CObject::nNoTempObjects
456410:  LDR             R0, =(g_surfaceInfos_ptr - 0x456418)
456412:  LDRB            R1, [R5]; unsigned int
456414:  ADD             R0, PC; g_surfaceInfos_ptr
456416:  LDR             R0, [R0]; g_surfaceInfos ; this
456418:  BLX             j__ZN14SurfaceInfos_c7IsWaterEj; SurfaceInfos_c::IsWater(uint)
45641C:  CMP             R0, #0
45641E:  ITTTT NE
456420:  LDRNE           R0, [R4,#8]
456422:  LDRDNE.W        R1, R2, [R0,#0x1C]
456426:  ORRNE.W         R1, R1, #0x100000
45642A:  STRDNE.W        R1, R2, [R0,#0x1C]
45642E:  LDR             R0, [R4,#8]
456430:  LDRD.W          R1, R2, [R0,#0x1C]
456434:  ORR.W           R1, R1, #0x4000000
456438:  STRD.W          R1, R2, [R0,#0x1C]
45643C:  VLDR            S18, [R5,#0x1C]
456440:  VLDR            S22, [R5,#0x20]
456444:  BLX             rand
456448:  VMOV            S0, R0
45644C:  VLDR            S20, [R5,#0x24]
456450:  VLDR            S24, [R5,#0x28]
456454:  VCVT.F32.S32    S26, S0
456458:  BLX             rand
45645C:  VMOV            S0, R0
456460:  VLDR            S16, [R5,#0x14]
456464:  VLDR            S17, [R5,#0x18]
456468:  VCVT.F32.S32    S28, S0
45646C:  BLX             rand
456470:  VMOV            S0, R0
456474:  VLDR            S19, [R5,#0x2C]
456478:  VLDR            S21, [R5,#0x30]
45647C:  VCVT.F32.S32    S23, S0
456480:  BLX             rand
456484:  VMOV            S0, R0
456488:  VLDR            S30, =4.6566e-10
45648C:  VSUB.F32        S2, S17, S16
456490:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4564A0)
456492:  VCVT.F32.S32    S0, S0
456496:  LDR             R1, [R5,#4]
456498:  VMUL.F32        S4, S23, S30
45649C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
45649E:  VSUB.F32        S6, S21, S19
4564A2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4564A4:  LDR.W           R0, [R0,R1,LSL#2]
4564A8:  VMUL.F32        S0, S0, S30
4564AC:  VMUL.F32        S2, S2, S4
4564B0:  LDRB.W          R1, [R5,#0x34]
4564B4:  LDR             R0, [R0,#0x2C]
4564B6:  CMP             R1, #0
4564B8:  VMUL.F32        S4, S6, S0
4564BC:  VADD.F32        S0, S16, S2
4564C0:  VLDR            S16, [R0,#8]
4564C4:  VADD.F32        S17, S19, S4
4564C8:  BEQ             loc_4565A2
4564CA:  VLDR            S2, [SP,#0xD8+var_64]
4564CE:  VLDR            S4, =0.95
4564D2:  VCMPE.F32       S2, S4
4564D6:  VMRS            APSR_nzcv, FPSCR
4564DA:  BGE             loc_4565A2
4564DC:  VMOV            R6, S0
4564E0:  MOVS            R0, #0
4564E2:  STRD.W          R0, R0, [SP,#0xD8+var_74]
4564E6:  STR             R0, [SP,#0xD8+var_B8]
4564E8:  MOV             R0, R6; x
4564EA:  BLX             sinf
4564EE:  STR             R0, [SP,#0xD8+var_BC]
4564F0:  MOV             R0, R6; x
4564F2:  BLX             cosf
4564F6:  ADD             R6, SP, #0xD8+var_CC
4564F8:  ADD             R1, SP, #0xD8+var_6C; CVector *
4564FA:  ADD             R2, SP, #0xD8+var_C0
4564FC:  STR             R0, [SP,#0xD8+var_C0]
4564FE:  MOV             R0, R6; CVector *
456500:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
456504:  MOV             R0, R6; this
456506:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
45650A:  ADD             R2, SP, #0xD8+var_6C
45650C:  MOV             R0, SP; CVector *
45650E:  MOV             R1, R6; CVector *
456510:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
456514:  MOV             R0, SP; this
456516:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
45651A:  VSUB.F32        S0, S17, S16
45651E:  VLDR            S6, [SP,#0xD8+var_6C]
456522:  VLDR            S8, [SP,#0xD8+var_68]
456526:  VMOV            S2, R8
45652A:  VLDR            S10, [SP,#0xD8+var_64]
45652E:  VMOV            S4, R9
456532:  VMOV            S12, R10
456536:  ADD             R3, SP, #0xD8+var_B4
456538:  LDMFD.W         SP, {R0-R2}
45653C:  STM             R3!, {R0-R2}
45653E:  VMUL.F32        S14, S0, S6
456542:  VMUL.F32        S1, S0, S8
456546:  VSTR            S6, [SP,#0xD8+var_94]
45654A:  VMUL.F32        S0, S0, S10
45654E:  LDRD.W          R1, R0, [SP,#0xD8+var_C8]
456552:  LDR             R2, [SP,#0xD8+var_CC]
456554:  VSTR            S8, [SP,#0xD8+var_90]
456558:  VSTR            S10, [SP,#0xD8+var_8C]
45655C:  STRD.W          R2, R1, [SP,#0xD8+var_A4]
456560:  VADD.F32        S4, S14, S4
456564:  STR             R0, [SP,#0xD8+var_9C]
456566:  VADD.F32        S2, S1, S2
45656A:  VADD.F32        S0, S0, S12
45656E:  VSTR            S4, [SP,#0xD8+var_84]
456572:  VSTR            S2, [SP,#0xD8+var_80]
456576:  VSTR            S0, [SP,#0xD8+var_7C]
45657A:  LDR             R0, [R4,#8]; this
45657C:  BLX             j__ZN10CPlaceable20AllocateStaticMatrixEv; CPlaceable::AllocateStaticMatrix(void)
456580:  ADD             R6, SP, #0xD8+var_B4
456582:  LDR             R0, [R4,#8]; this
456584:  MOV             R1, R6; CMatrix *
456586:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
45658A:  LDR             R0, =(g_procObjMan_ptr - 0x456594)
45658C:  MOVS            R1, #1
45658E:  STRB            R1, [R4,#0x10]
456590:  ADD             R0, PC; g_procObjMan_ptr
456592:  LDR             R0, [R0]; g_procObjMan
456594:  LDR             R1, [R0]
456596:  ADDS            R1, #1
456598:  STR             R1, [R0]
45659A:  MOV             R0, R6; this
45659C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4565A0:  B               loc_45663A
4565A2:  VMOV            S2, R10
4565A6:  LDR             R0, [R4,#8]
4565A8:  VSUB.F32        S2, S2, S16
4565AC:  LDR             R1, [R0,#0x14]
4565AE:  CMP             R1, #0
4565B0:  VADD.F32        S2, S17, S2
4565B4:  BEQ             loc_4565E2
4565B6:  STR.W           R9, [R1,#0x30]
4565BA:  LDR             R1, [R0,#0x14]
4565BC:  STR.W           R8, [R1,#0x34]
4565C0:  LDR             R0, [R0,#0x14]
4565C2:  ADDS            R0, #0x38 ; '8'
4565C4:  B               loc_4565E8
4565C6:  LDR             R0, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x4565CE)
4565C8:  MOVS            R4, #0
4565CA:  ADD             R0, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
4565CC:  LDR             R0, [R0]; CPools::ms_pBuildingPool ...
4565CE:  LDR             R0, [R0]; CPools::ms_pBuildingPool
4565D0:  STRB            R4, [R0,#0x11]
4565D2:  B               loc_456378
4565D4:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4565DC)
4565D6:  MOVS            R4, #0
4565D8:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4565DA:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
4565DC:  LDR             R0, [R0]; CPools::ms_pObjectPool
4565DE:  STRB            R6, [R0,#0x11]
4565E0:  B               loc_456378
4565E2:  STRD.W          R9, R8, [R0,#4]
4565E6:  ADDS            R0, #0xC
4565E8:  VSTR            S2, [R0]
4565EC:  LDR             R6, [R4,#8]
4565EE:  LDR             R0, [R6,#0x14]; this
4565F0:  CBZ             R0, loc_456632
4565F2:  VMOV            R3, S0; float
4565F6:  MOVS            R1, #0; x
4565F8:  MOVS            R2, #0; float
4565FA:  VLDR            S17, [R0,#0x30]
4565FE:  VLDR            S19, [R0,#0x34]
456602:  VLDR            S21, [R0,#0x38]
456606:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
45660A:  LDR             R0, [R6,#0x14]
45660C:  VLDR            S0, [R0,#0x30]
456610:  VLDR            S2, [R0,#0x34]
456614:  VLDR            S4, [R0,#0x38]
456618:  VADD.F32        S0, S17, S0
45661C:  VADD.F32        S2, S19, S2
456620:  VADD.F32        S4, S21, S4
456624:  VSTR            S0, [R0,#0x30]
456628:  VSTR            S2, [R0,#0x34]
45662C:  VSTR            S4, [R0,#0x38]
456630:  B               loc_456636
456632:  VSTR            S0, [R6,#0x10]
456636:  MOVS            R0, #0
456638:  STRB            R0, [R4,#0x10]
45663A:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x456642)
45663C:  LDR             R1, [R4,#8]
45663E:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
456640:  LDR             R0, [R0]; CGame::currArea ...
456642:  LDR             R0, [R0]; CGame::currArea
456644:  STRB.W          R0, [R1,#0x33]
456648:  LDR             R0, [R4,#8]
45664A:  LDR             R1, [R0]
45664C:  LDR             R2, [R1,#0x14]
45664E:  MOVS            R1, #1
456650:  BLX             R2
456652:  LDR             R0, [R4,#8]
456654:  LDR             R1, [R0]
456656:  LDR             R1, [R1,#0x20]
456658:  BLX             R1
45665A:  LDR             R2, [R4,#8]
45665C:  LDR             R0, [R2,#0x18]
45665E:  CBZ             R0, loc_45667A
456660:  LDR             R1, [R0,#4]
456662:  LDR             R0, [R2,#0x14]
456664:  ADDS            R1, #0x10
456666:  CBZ             R0, loc_456674
456668:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
45666C:  B               loc_45667A
45666E:  ALIGN 0x10
456670:  DCFS 0.95
456674:  ADDS            R0, R2, #4
456676:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
45667A:  LDR             R0, [R4,#8]; this
45667C:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
456680:  LDR             R0, [R4,#8]; this
456682:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
456686:  ADD.W           R0, R5, #0x3C ; '<'; this
45668A:  MOV             R1, R4; ListItem_c *
45668C:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
456690:  MOVW            R0, #0xFFFF
456694:  CMP             R11, R0
456696:  BNE.W           loc_456378
45669A:  VSUB.F32        S0, S22, S18
45669E:  VMUL.F32        S2, S26, S30
4566A2:  VSUB.F32        S4, S24, S20
4566A6:  VMUL.F32        S6, S28, S30
4566AA:  VMUL.F32        S0, S0, S2
4566AE:  VMUL.F32        S2, S4, S6
4566B2:  VADD.F32        S18, S18, S0
4566B6:  VMOV.F32        S0, #1.0
4566BA:  VADD.F32        S20, S20, S2
4566BE:  VCMP.F32        S18, S0
4566C2:  VMRS            APSR_nzcv, FPSCR
4566C6:  ITT EQ
4566C8:  VCMPEQ.F32      S20, S0
4566CC:  VMRSEQ          APSR_nzcv, FPSCR
4566D0:  BEQ.W           loc_456378
4566D4:  LDR             R0, [R4,#8]
4566D6:  LDR             R0, [R0,#0x18]
4566D8:  CMP             R0, #0
4566DA:  BEQ.W           loc_456378
4566DE:  LDR             R0, [R0,#4]
4566E0:  ADD             R5, SP, #0xD8+var_B4
4566E2:  MOVS            R2, #0
4566E4:  ADD.W           R1, R0, #0x10
4566E8:  MOV             R0, R5
4566EA:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
4566EE:  VLDR            S0, [SP,#0xD8+var_9C]
4566F2:  VMUL.F32        S7, S20, S16
4566F6:  VLDR            S2, [SP,#0xD8+var_B4]
4566FA:  VLDR            S4, [SP,#0xD8+var_B0]
4566FE:  VMUL.F32        S0, S20, S0
456702:  VLDR            S6, [SP,#0xD8+var_AC]
456706:  VMUL.F32        S2, S18, S2
45670A:  VLDR            S8, [SP,#0xD8+var_A4]
45670E:  VMUL.F32        S4, S18, S4
456712:  VLDR            S10, [SP,#0xD8+var_8C]
456716:  VMUL.F32        S6, S20, S6
45671A:  VLDR            S1, [SP,#0xD8+var_A0]
45671E:  VMUL.F32        S8, S18, S8
456722:  VLDR            S3, [SP,#0xD8+var_94]
456726:  VMUL.F32        S10, S20, S10
45672A:  VLDR            S5, [SP,#0xD8+var_90]
45672E:  VMUL.F32        S1, S18, S1
456732:  VLDR            S14, [SP,#0xD8+var_84]
456736:  VMUL.F32        S3, S18, S3
45673A:  VLDR            S12, =0.0
45673E:  VMUL.F32        S5, S18, S5
456742:  VSTR            S2, [SP,#0xD8+var_B4]
456746:  VSUB.F32        S2, S7, S16
45674A:  VADD.F32        S14, S14, S12
45674E:  VSTR            S4, [SP,#0xD8+var_B0]
456752:  VSTR            S6, [SP,#0xD8+var_AC]
456756:  VSTR            S8, [SP,#0xD8+var_A4]
45675A:  VSTR            S1, [SP,#0xD8+var_A0]
45675E:  VSTR            S0, [SP,#0xD8+var_9C]
456762:  VSTR            S3, [SP,#0xD8+var_94]
456766:  VSTR            S5, [SP,#0xD8+var_90]
45676A:  VSTR            S10, [SP,#0xD8+var_8C]
45676E:  VSTR            S14, [SP,#0xD8+var_84]
456772:  VLDR            S0, [SP,#0xD8+var_80]
456776:  VADD.F32        S0, S0, S12
45677A:  VSTR            S0, [SP,#0xD8+var_80]
45677E:  VLDR            S0, [SP,#0xD8+var_7C]
456782:  VSUB.F32        S0, S0, S2
456786:  VSTR            S0, [SP,#0xD8+var_7C]
45678A:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
45678E:  LDR             R0, [R4,#8]; this
456790:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
456794:  MOV             R0, R5; this
456796:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
45679A:  B               loc_456378
