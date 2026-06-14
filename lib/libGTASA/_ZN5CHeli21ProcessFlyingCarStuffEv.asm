; =========================================================
; Game Engine Function: _ZN5CHeli21ProcessFlyingCarStuffEv
; Address            : 0x572324 - 0x5727C4
; =========================================================

572324:  PUSH            {R4-R7,LR}
572326:  ADD             R7, SP, #0xC
572328:  PUSH.W          {R11}
57232C:  VPUSH           {D8-D11}
572330:  SUB             SP, SP, #0xC0; float
572332:  MOV             R4, R0
572334:  LDRB.W          R0, [R4,#0x3A]
572338:  LSRS            R0, R0, #3
57233A:  CMP             R0, #8
57233C:  BHI             loc_572384
57233E:  MOVS            R1, #1
572340:  LSL.W           R0, R1, R0
572344:  MOVW            R1, #0x109
572348:  TST             R0, R1
57234A:  BEQ             loc_572384
57234C:  ADD.W           R5, R4, #0x860
572350:  VLDR            S2, =0.22
572354:  VLDR            S0, [R5]
572358:  VCMPE.F32       S0, S2
57235C:  VMRS            APSR_nzcv, FPSCR
572360:  BGE             loc_5723E2
572362:  LDRB.W          R0, [R4,#0x45]
572366:  LSLS            R0, R0, #0x1F
572368:  BNE             loc_5723E2
57236A:  LDRSH.W         R0, [R4,#0x26]
57236E:  MOVW            R1, #0x1F5
572372:  CMP             R0, R1
572374:  ITT NE
572376:  MOVWNE          R1, #0x1D1
57237A:  CMPNE           R0, R1
57237C:  BNE             loc_5723D6
57237E:  VLDR            S2, =0.003
572382:  B               loc_5723DA
572384:  LDR.W           R0, [R4,#0x388]
572388:  LDRB.W          R0, [R0,#0xCF]
57238C:  LSLS            R0, R0, #0x1E
57238E:  BPL.W           loc_5727B8
572392:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57239E)
572396:  LDR.W           R1, [R4,#0x42C]
57239A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57239C:  VLDR            S0, =0.00055
5723A0:  BIC.W           R1, R1, #0x10
5723A4:  STR.W           R1, [R4,#0x42C]
5723A8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5723AA:  VLDR            S2, [R0]
5723AE:  ADD.W           R0, R4, #0x860
5723B2:  VMUL.F32        S0, S2, S0
5723B6:  VLDR            S2, [R0]
5723BA:  VCMPE.F32       S2, S0
5723BE:  VMRS            APSR_nzcv, FPSCR
5723C2:  BLE.W           loc_572544
5723C6:  VSUB.F32        S0, S2, S0
5723CA:  VSTR            S0, [R0]
5723CE:  MOVS            R0, #0
5723D0:  STRB.W          R0, [R4,#0xBC]
5723D4:  B               loc_57254C
5723D6:  VLDR            S2, =0.001
5723DA:  VADD.F32        S0, S2, S0
5723DE:  VSTR            S0, [R5]
5723E2:  VLDR            S16, =0.15
5723E6:  VCMPE.F32       S0, S16
5723EA:  VMRS            APSR_nzcv, FPSCR
5723EE:  BLE             loc_5724BC
5723F0:  LDRB.W          R0, [R4,#0x47]
5723F4:  LSLS            R0, R0, #0x1C
5723F6:  BPL             loc_572410
5723F8:  LDRSH.W         R0, [R4,#0x26]
5723FC:  MOVW            R1, #0x1BF
572400:  CMP             R0, R1
572402:  ITT NE
572404:  MOVWNE          R1, #0x1A1
572408:  CMPNE           R0, R1
57240A:  BNE             loc_572410
57240C:  MOVS            R0, #1
57240E:  B               loc_572412
572410:  MOVS            R0, #0
572412:  LDRB.W          R1, [R4,#0x430]
572416:  LSLS            R1, R1, #0x18
572418:  BMI             loc_572494
57241A:  LDRB.W          R2, [R4,#0x974]
57241E:  MOVS            R1, #0
572420:  CMP             R2, #3
572422:  ADDW            R2, R4, #0x9AC
572426:  IT HI
572428:  MOVHI           R1, #1
57242A:  VLDR            S0, [R2]
57242E:  VCMPE.F32       S0, #0.0
572432:  VMRS            APSR_nzcv, FPSCR
572436:  BGT             loc_572476
572438:  ORRS            R0, R1
57243A:  BEQ             loc_572476
57243C:  VLDR            S2, [R4,#0x48]
572440:  VABS.F32        S4, S2
572444:  VLDR            S2, =0.02
572448:  VCMPE.F32       S4, S2
57244C:  VMRS            APSR_nzcv, FPSCR
572450:  BGT             loc_572476
572452:  VLDR            S4, [R4,#0x4C]
572456:  VABS.F32        S4, S4
57245A:  VCMPE.F32       S4, S2
57245E:  VMRS            APSR_nzcv, FPSCR
572462:  BGT             loc_572476
572464:  VLDR            S4, [R4,#0x50]
572468:  VABS.F32        S4, S4
57246C:  VCMPE.F32       S4, S2
572470:  VMRS            APSR_nzcv, FPSCR
572474:  BLE             loc_5724BC
572476:  ADDW            R0, R4, #0x9A8
57247A:  LDR.W           R2, [R4,#0x9A0]
57247E:  LDR.W           R3, [R4,#0x9A4]
572482:  MOVS            R1, #6
572484:  VLDR            S2, [R0]
572488:  MOV             R0, R4
57248A:  VSTR            S2, [SP,#0xF0+var_F0]
57248E:  VSTR            S0, [SP,#0xF0+var_EC]
572492:  B               loc_5724B8
572494:  ADDW            R0, R4, #0x9A8
572498:  LDR.W           R2, [R4,#0x9A0]; int
57249C:  LDR.W           R3, [R4,#0x9A4]; int
5724A0:  MOVS            R1, #2; int
5724A2:  VLDR            S0, [R0]
5724A6:  ADDW            R0, R4, #0x9AC
5724AA:  VLDR            S2, [R0]
5724AE:  MOV             R0, R4; int
5724B0:  VSTR            S0, [SP,#0xF0+var_F0]
5724B4:  VSTR            S2, [SP,#0xF0+var_EC]
5724B8:  BLX             j__ZN8CVehicle13FlyingControlE12eFlightModelffff; CVehicle::FlyingControl(eFlightModel,float,float,float,float)
5724BC:  VLDR            S0, =0.015
5724C0:  VLDR            S2, [R5]
5724C4:  VCMPE.F32       S2, S0
5724C8:  VMRS            APSR_nzcv, FPSCR
5724CC:  BLE.W           loc_572640
5724D0:  LDR.W           R0, [R4,#0x68C]
5724D4:  CMP             R0, #0
5724D6:  BEQ.W           loc_572640
5724DA:  ADD.W           R1, R0, #0x10
5724DE:  ADD             R0, SP, #0xF0+var_78
5724E0:  MOVS            R6, #0
5724E2:  MOVS            R2, #0
5724E4:  STRD.W          R6, R6, [SP,#0xF0+var_38]
5724E8:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
5724EC:  LDR             R0, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x5724F6)
5724EE:  ADD             R2, SP, #0xF0+var_C0
5724F0:  STR             R6, [SP,#0xF0+var_C0]
5724F2:  ADD             R0, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
5724F4:  LDR             R1, [R0]; GetCurrentAtomicObjectCB(RwObject *,void *)
5724F6:  LDR.W           R0, [R4,#0x68C]
5724FA:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
5724FE:  LDR             R0, [SP,#0xF0+var_C0]
572500:  CMP             R0, #0
572502:  BEQ             loc_5725BE
572504:  LDRB.W          R1, [R0,#0x4C]
572508:  LSLS            R1, R1, #0x1E
57250A:  BPL             loc_572512
57250C:  BLX             j__Z33_rpAtomicResyncInterpolatedSphereP8RpAtomic; _rpAtomicResyncInterpolatedSphere(RpAtomic *)
572510:  LDR             R0, [SP,#0xF0+var_C0]
572512:  VLDR            S2, =0.1
572516:  VLDR            S0, [R0,#0x28]
57251A:  VCMPE.F32       S0, S2
57251E:  VMRS            APSR_nzcv, FPSCR
572522:  BLE             loc_5725BE
572524:  LDRSH.W         R0, [R4,#0x26]
572528:  VLDR            S2, =0.9
57252C:  CMP.W           R0, #0x1D4
572530:  BGT             loc_572568
572532:  MOVW            R1, #0x1BF
572536:  CMP             R0, R1
572538:  BEQ             loc_572590
57253A:  MOVW            R1, #0x1D1
57253E:  CMP             R0, R1
572540:  BEQ             loc_572594
572542:  B               loc_572578
572544:  VLDR            S0, =0.0
572548:  MOVS            R1, #0
57254A:  STR             R1, [R0]
57254C:  LDRSH.W         R0, [R4,#0x26]
572550:  MOVW            R1, #0x1D1
572554:  CMP             R0, R1
572556:  ITT NE
572558:  MOVWNE          R1, #0x1F5
57255C:  CMPNE           R0, R1
57255E:  BEQ.W           loc_5727B8
572562:  VLDR            S2, =0.154
572566:  B               loc_57265E
572568:  MOVW            R1, #0x1D5
57256C:  CMP             R0, R1
57256E:  BEQ             loc_572590
572570:  MOVW            R1, #0x1F5
572574:  CMP             R0, R1
572576:  BEQ             loc_572594
572578:  VMOV.F32        S4, #0.5
57257C:  UXTH            R0, R0
57257E:  MOVW            R1, #0x1A9
572582:  VMOV.F32        S2, #1.0
572586:  CMP             R0, R1
572588:  IT EQ
57258A:  VMOVEQ.F32      S2, S4
57258E:  B               loc_572594
572590:  VLDR            S2, =0.8
572594:  LDRB.W          R0, [R4,#0x3A]
572598:  MOVS            R1, #8
57259A:  ORR.W           R0, R1, R0,LSR#3
57259E:  CMP             R0, #8
5725A0:  BNE             loc_5725BE
5725A2:  ADD             R3, SP, #0xF0+var_48
5725A4:  MOV             R6, #0xFFFFFFFD
5725A8:  LDM             R3, {R1-R3}
5725AA:  LDR             R0, [R4,#0x14]
5725AC:  VSTR            S0, [SP,#0xF0+var_E8]
5725B0:  VSTR            S2, [SP,#0xF0+var_E4]
5725B4:  STRD.W          R0, R6, [SP,#0xF0+var_F0]
5725B8:  MOV             R0, R4
5725BA:  BLX             j__ZN8CVehicle16DoBladeCollisionE7CVectorR7CMatrixsff; CVehicle::DoBladeCollision(CVector,CMatrix &,short,float,float)
5725BE:  LDRB.W          R0, [R4,#0x3A]
5725C2:  MOVS            R1, #3
5725C4:  CMP.W           R1, R0,LSR#3
5725C8:  IT NE
5725CA:  MOVSNE.W        R1, R0,LSR#3
5725CE:  BNE             loc_572618
5725D0:  VLDR            S2, =0.0075
5725D4:  VLDR            S0, [R5]
5725D8:  VCMPE.F32       S0, S2
5725DC:  VMRS            APSR_nzcv, FPSCR
5725E0:  BLE             loc_572618
5725E2:  VDIV.F32        S0, S0, S16
5725E6:  LDR             R0, [R4,#0x14]
5725E8:  ADD.W           R2, R0, #0x30 ; '0'
5725EC:  CMP             R0, #0
5725EE:  IT EQ
5725F0:  ADDEQ           R2, R4, #4
5725F2:  LDM             R2, {R0-R2}
5725F4:  VMOV.F32        S2, #1.0
5725F8:  VMIN.F32        D0, D0, D1
5725FC:  VSTR            S0, [SP,#0xF0+var_F0]
572600:  B               loc_572634
572602:  ALIGN 4
572604:  DCFS 0.22
572608:  DCFS 0.003
57260C:  DCFS 0.00055
572610:  DCFS 0.001
572614:  DCFS 0.15
572618:  AND.W           R0, R0, #0xF8
57261C:  CMP             R0, #0x10
57261E:  BNE             loc_57263A
572620:  LDR             R0, [R4,#0x14]
572622:  MOV.W           R3, #0x3F800000
572626:  ADD.W           R2, R0, #0x30 ; '0'
57262A:  CMP             R0, #0
57262C:  IT EQ
57262E:  ADDEQ           R2, R4, #4
572630:  LDM             R2, {R0-R2}
572632:  STR             R3, [SP,#0xF0+var_F0]
572634:  MOVS            R3, #1
572636:  BLX             j__ZN14CWindModifiers11RegisterOneE7CVectorif; CWindModifiers::RegisterOne(CVector,int,float)
57263A:  ADD             R0, SP, #0xF0+var_78; this
57263C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
572640:  LDRSH.W         R0, [R4,#0x26]
572644:  MOVW            R1, #0x1D1
572648:  CMP             R0, R1
57264A:  ITT NE
57264C:  MOVWNE          R1, #0x1F5
572650:  CMPNE           R0, R1
572652:  BEQ.W           loc_5727B8
572656:  VLDR            S2, =0.154
57265A:  VLDR            S0, [R5]
57265E:  VCMPE.F32       S0, S2
572662:  VMRS            APSR_nzcv, FPSCR
572666:  BGE.W           loc_5727B8
57266A:  VLDR            S2, =0.0044
57266E:  VCMPE.F32       S0, S2
572672:  VMRS            APSR_nzcv, FPSCR
572676:  BLE.W           loc_5727B8
57267A:  LDR.W           R0, [R4,#0x68C]
57267E:  CMP             R0, #0
572680:  BEQ.W           loc_5727B8
572684:  LDR             R1, =(TheCamera_ptr - 0x57268C)
572686:  LDR             R2, [R4,#0x14]
572688:  ADD             R1, PC; TheCamera_ptr
57268A:  ADD.W           R3, R2, #0x30 ; '0'
57268E:  CMP             R2, #0
572690:  LDR             R1, [R1]; TheCamera
572692:  LDR             R6, [R1,#(dword_951FBC - 0x951FA8)]
572694:  IT EQ
572696:  ADDEQ           R3, R4, #4
572698:  VLDR            S0, [R3]
57269C:  ADD.W           R2, R6, #0x30 ; '0'
5726A0:  CMP             R6, #0
5726A2:  VLDR            S2, [R3,#4]
5726A6:  VLDR            S4, [R3,#8]
5726AA:  IT EQ
5726AC:  ADDEQ           R2, R1, #4
5726AE:  VLDR            S6, [R2]
5726B2:  VLDR            S8, [R2,#4]
5726B6:  VSUB.F32        S18, S6, S0
5726BA:  VLDR            S10, [R2,#8]
5726BE:  VSUB.F32        S20, S8, S2
5726C2:  VSUB.F32        S16, S10, S4
5726C6:  VMUL.F32        S2, S18, S18
5726CA:  VMUL.F32        S0, S20, S20
5726CE:  VMUL.F32        S4, S16, S16
5726D2:  VADD.F32        S0, S2, S0
5726D6:  VADD.F32        S22, S0, S4
5726DA:  VLDR            S0, =400.0
5726DE:  VCMPE.F32       S22, S0
5726E2:  VMRS            APSR_nzcv, FPSCR
5726E6:  BGE             loc_5727B8
5726E8:  ADD.W           R1, R4, #0x840
5726EC:  VLDR            S0, [R1]
5726F0:  ADDW            R1, R4, #0x96C
5726F4:  VLDR            S2, [R1]
5726F8:  VSUB.F32        S0, S2, S0
5726FC:  VLDR            S2, =0.5236
572700:  VABS.F32        S0, S0
572704:  VCMPE.F32       S0, S2
572708:  VMRS            APSR_nzcv, FPSCR
57270C:  BLE             loc_5727B8
57270E:  MOVS            R1, #0
572710:  MOVS            R2, #0
572712:  STRD.W          R1, R1, [SP,#0xF0+var_38]
572716:  STRD.W          R1, R1, [SP,#0xF0+var_80]
57271A:  ADD.W           R1, R0, #0x10
57271E:  ADD             R0, SP, #0xF0+var_78
572720:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
572724:  VLDR            D16, [SP,#0xF0+var_78]
572728:  ADD             R2, SP, #0xF0+var_D0
57272A:  LDR             R0, [SP,#0xF0+var_70]
57272C:  STR             R0, [SP,#0xF0+var_C8]
57272E:  ADD             R0, SP, #0xF0+var_E0; CMatrix *
572730:  VSTR            D16, [SP,#0xF0+var_D0]
572734:  LDR             R1, [R4,#0x14]; CVector *
572736:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
57273A:  VSQRT.F32       S0, S22
57273E:  LDR             R0, [SP,#0xF0+var_D8]
572740:  STR             R0, [SP,#0xF0+var_C8]
572742:  VLDR            S4, =0.01
572746:  VMOV.F32        S2, #1.0
57274A:  VLDR            D16, [SP,#0xF0+var_E0]
57274E:  VMAX.F32        D0, D0, D2
572752:  VSTR            D16, [SP,#0xF0+var_D0]
572756:  VLDR            S6, [SP,#0xF0+var_D0]
57275A:  VLDR            S8, [SP,#0xF0+var_D0+4]
57275E:  VLDR            S10, [SP,#0xF0+var_C8]
572762:  VDIV.F32        S0, S2, S0
572766:  VMUL.F32        S2, S20, S0
57276A:  VMUL.F32        S4, S18, S0
57276E:  VMUL.F32        S0, S16, S0
572772:  VMUL.F32        S2, S2, S8
572776:  VMUL.F32        S4, S4, S6
57277A:  VMUL.F32        S0, S0, S10
57277E:  VADD.F32        S2, S4, S2
572782:  VADD.F32        S0, S2, S0
572786:  VLDR            S2, =0.95
57278A:  VABS.F32        S0, S0
57278E:  VCMPE.F32       S0, S2
572792:  VMRS            APSR_nzcv, FPSCR
572796:  BLE             loc_5727AC
572798:  ADD.W           R0, R4, #0x13C; this
57279C:  MOVS            R1, #0x5E ; '^'; int
57279E:  MOVS            R2, #0; float
5727A0:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
5727A4:  LDR.W           R0, [R4,#0x840]
5727A8:  STR.W           R0, [R4,#0x96C]
5727AC:  ADD             R0, SP, #0xF0+var_C0; this
5727AE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5727B2:  ADD             R0, SP, #0xF0+var_78; this
5727B4:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5727B8:  ADD             SP, SP, #0xC0
5727BA:  VPOP            {D8-D11}
5727BE:  POP.W           {R11}
5727C2:  POP             {R4-R7,PC}
