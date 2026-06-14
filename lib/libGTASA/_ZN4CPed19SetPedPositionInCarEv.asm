; =========================================================
; Game Engine Function: _ZN4CPed19SetPedPositionInCarEv
; Address            : 0x4A7340 - 0x4A7670
; =========================================================

4A7340:  PUSH            {R4-R7,LR}
4A7342:  ADD             R7, SP, #0xC
4A7344:  PUSH.W          {R8,R9,R11}
4A7348:  VPUSH           {D8}
4A734C:  SUB             SP, SP, #0xE8
4A734E:  MOV             R4, R0
4A7350:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4A735A)
4A7352:  LDR.W           R1, [R4,#0x590]
4A7356:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4A7358:  LDRSH.W         R2, [R1,#0x26]
4A735C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4A735E:  LDR             R1, [R1,#0x14]; CMatrix *
4A7360:  LDR.W           R5, [R0,R2,LSL#2]
4A7364:  ADD             R0, SP, #0x108+var_C0; this
4A7366:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
4A736A:  MOVS            R0, #0
4A736C:  STRD.W          R0, R0, [SP,#0x108+var_C8]
4A7370:  LDR.W           R0, [R4,#0x590]; this
4A7374:  LDR.W           R1, [R0,#0x464]
4A7378:  CMP             R1, R4
4A737A:  BEQ             loc_4A73A6
4A737C:  LDR.W           R1, [R0,#0x468]
4A7380:  CMP             R1, R4
4A7382:  BEQ             loc_4A73FE
4A7384:  LDR.W           R1, [R0,#0x46C]
4A7388:  CMP             R1, R4
4A738A:  BEQ             loc_4A741E
4A738C:  LDR.W           R1, [R0,#0x470]
4A7390:  CMP             R1, R4
4A7392:  BEQ             loc_4A740E
4A7394:  LDR             R1, [R5,#0x54]
4A7396:  LDR             R2, [R5,#0x74]
4A7398:  CMP             R1, #5
4A739A:  IT NE
4A739C:  ADDNE           R2, #0x30 ; '0'
4A739E:  LDR             R1, [R2,#8]
4A73A0:  VLDR            D16, [R2]
4A73A4:  B               loc_4A7416
4A73A6:  LDR             R1, [R5,#0x54]
4A73A8:  LDR             R2, [R5,#0x74]
4A73AA:  CMP             R1, #5
4A73AC:  IT NE
4A73AE:  ADDNE           R2, #0x30 ; '0'
4A73B0:  VLDR            D16, [R2]
4A73B4:  LDR             R1, [R2,#8]
4A73B6:  STR             R1, [SP,#0x108+var_70]
4A73B8:  VSTR            D16, [SP,#0x108+var_78]
4A73BC:  LDR.W           R1, [R0,#0x5A0]
4A73C0:  CMP             R1, #5
4A73C2:  BEQ             loc_4A73D4
4A73C4:  CMP             R1, #9
4A73C6:  ITTT NE
4A73C8:  VLDRNE          S0, [SP,#0x108+var_78]
4A73CC:  VNEGNE.F32      S0, S0
4A73D0:  VSTRNE          S0, [SP,#0x108+var_78]
4A73D4:  LDR.W           R1, [R0,#0x5A4]
4A73D8:  CMP             R1, #0xA
4A73DA:  BNE             loc_4A7438
4A73DC:  ADDW            R1, R0, #0x828
4A73E0:  VLDR            S2, =-0.001
4A73E4:  VLDR            S0, [R1]
4A73E8:  VABS.F32        S0, S0
4A73EC:  VMUL.F32        S0, S0, S2
4A73F0:  VLDR            S2, [SP,#0x108+var_70]
4A73F4:  VADD.F32        S0, S2, S0
4A73F8:  VSTR            S0, [SP,#0x108+var_70]
4A73FC:  B               loc_4A7438
4A73FE:  LDR.W           R1, [R0,#0x5A0]
4A7402:  CMP             R1, #9
4A7404:  ITT NE
4A7406:  LDRNE.W         R1, [R0,#0x5A4]
4A740A:  CMPNE           R1, #2
4A740C:  BNE             loc_4A7394
4A740E:  LDR             R1, [R5,#0x74]
4A7410:  VLDR            D16, [R1,#0x3C]
4A7414:  LDR             R1, [R1,#0x44]
4A7416:  STR             R1, [SP,#0x108+var_70]
4A7418:  VSTR            D16, [SP,#0x108+var_78]
4A741C:  B               loc_4A7438
4A741E:  LDR             R1, [R5,#0x74]
4A7420:  VLDR            D16, [R1,#0x3C]
4A7424:  VSTR            D16, [SP,#0x108+var_78]
4A7428:  VLDR            S0, [SP,#0x108+var_78]
4A742C:  LDR             R1, [R1,#0x44]
4A742E:  VNEG.F32        S0, S0
4A7432:  STR             R1, [SP,#0x108+var_70]
4A7434:  VSTR            S0, [SP,#0x108+var_78]
4A7438:  LDR.W           R1, [R0,#0x5A0]
4A743C:  CMP             R1, #9
4A743E:  BNE             loc_4A7454
4A7440:  BLX             j__ZN5CBike19CalculateLeanMatrixEv; CBike::CalculateLeanMatrix(void)
4A7444:  LDR.W           R0, [R4,#0x590]
4A7448:  ADD.W           R1, R0, #0x5E0
4A744C:  ADD             R0, SP, #0x108+var_C0
4A744E:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
4A7452:  B               loc_4A74E6
4A7454:  LDRH            R1, [R0,#0x26]
4A7456:  CMP.W           R1, #0x214
4A745A:  BNE             loc_4A74E6
4A745C:  LDR.W           R0, [R0,#0x660]
4A7460:  CBZ             R0, loc_4A747C
4A7462:  ADD.W           R1, R0, #0x10
4A7466:  MOV             R5, SP
4A7468:  MOV             R0, R5
4A746A:  MOVS            R2, #0
4A746C:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
4A7470:  MOV             R0, R5; this
4A7472:  VLDR            S16, [SP,#0x108+var_D0]
4A7476:  BLX             j__ZN7CMatrix6DetachEv; CMatrix::Detach(void)
4A747A:  B               loc_4A7480
4A747C:  VLDR            S16, =0.0
4A7480:  VMOV            R0, S16
4A7484:  MOV             R8, SP
4A7486:  MOVS            R1, #0; float
4A7488:  MOVS            R2, #0; float
4A748A:  EOR.W           R3, R0, #0x80000000; float
4A748E:  MOV             R0, R8; this
4A7490:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
4A7494:  LDR.W           R0, [R4,#0x590]
4A7498:  LDR.W           R1, [R0,#0x960]; x
4A749C:  MOV             R0, R8; this
4A749E:  BLX             j__ZN7CMatrix7RotateYEf; CMatrix::RotateY(float)
4A74A2:  VLDR            S0, =0.0
4A74A6:  ADD             R6, SP, #0x108+var_68
4A74A8:  VLDR            S2, [SP,#0x108+var_D8]
4A74AC:  ADD             R5, SP, #0x108+var_C0
4A74AE:  VLDR            S4, [SP,#0x108+var_D4]
4A74B2:  MOV             R0, R6
4A74B4:  VLDR            S6, [SP,#0x108+var_D0]
4A74B8:  VADD.F32        S2, S2, S0
4A74BC:  VADD.F32        S0, S4, S0
4A74C0:  MOV             R1, R5
4A74C2:  VADD.F32        S4, S16, S6
4A74C6:  MOV             R2, R8
4A74C8:  VSTR            S2, [SP,#0x108+var_D8]
4A74CC:  VSTR            S0, [SP,#0x108+var_D4]
4A74D0:  VSTR            S4, [SP,#0x108+var_D0]
4A74D4:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
4A74D8:  MOV             R0, R5
4A74DA:  MOV             R1, R6
4A74DC:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
4A74E0:  MOV             R0, R6; this
4A74E2:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4A74E6:  ADD             R0, SP, #0x108+var_68; CMatrix *
4A74E8:  ADD             R1, SP, #0x108+var_C0; CVector *
4A74EA:  ADD             R2, SP, #0x108+var_78
4A74EC:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4A74F0:  VLDR            S0, [SP,#0x108+var_68]
4A74F4:  MOV             R0, SP; this
4A74F6:  VLDR            S6, [SP,#0x108+var_90]
4A74FA:  VLDR            S2, [SP,#0x108+var_64]
4A74FE:  VLDR            S8, [SP,#0x108+var_8C]
4A7502:  VADD.F32        S0, S0, S6
4A7506:  VLDR            S10, [SP,#0x108+var_88]
4A750A:  VLDR            S4, [SP,#0x108+var_60]
4A750E:  VADD.F32        S2, S2, S8
4A7512:  VADD.F32        S4, S4, S10
4A7516:  VSTR            S0, [SP,#0x108+var_90]
4A751A:  VSTR            S2, [SP,#0x108+var_8C]
4A751E:  VSTR            S4, [SP,#0x108+var_88]
4A7522:  BLX             j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
4A7526:  LDR.W           R0, [R4,#0x590]
4A752A:  LDR.W           R1, [R0,#0x388]
4A752E:  LDRB.W          R1, [R1,#0xDE]
4A7532:  CMP             R1, #0xD
4A7534:  BNE             loc_4A755C
4A7536:  LDR.W           R1, [R0,#0x46C]
4A753A:  CMP             R1, R4
4A753C:  BEQ             loc_4A7572
4A753E:  LDR             R1, [R0,#0x14]
4A7540:  LDR.W           R5, [R0,#0x470]
4A7544:  CBZ             R1, loc_4A758E
4A7546:  LDRD.W          R0, R1, [R1,#0x10]; x
4A754A:  EOR.W           R0, R0, #0x80000000; y
4A754E:  BLX             atan2f
4A7552:  VMOV            S0, R0
4A7556:  CMP             R5, R4
4A7558:  BNE             loc_4A7596
4A755A:  B               loc_4A75A0
4A755C:  LDR             R1, [R0,#0x14]
4A755E:  CBZ             R1, loc_4A7588
4A7560:  LDRD.W          R0, R1, [R1,#0x10]; x
4A7564:  EOR.W           R0, R0, #0x80000000; y
4A7568:  BLX             atan2f
4A756C:  VMOV            S0, R0
4A7570:  B               loc_4A7596
4A7572:  LDR             R1, [R0,#0x14]
4A7574:  CBZ             R1, loc_4A75CE
4A7576:  LDRD.W          R0, R1, [R1,#0x10]; x
4A757A:  EOR.W           R0, R0, #0x80000000; y
4A757E:  BLX             atan2f
4A7582:  VMOV            S0, R0
4A7586:  B               loc_4A75D2
4A7588:  VLDR            S0, [R0,#0x10]
4A758C:  B               loc_4A7596
4A758E:  VLDR            S0, [R0,#0x10]
4A7592:  CMP             R5, R4
4A7594:  BEQ             loc_4A75A0
4A7596:  ADDW            R5, R4, #0x55C
4A759A:  VSTR            S0, [R5]
4A759E:  B               loc_4A7648
4A75A0:  VLDR            S2, =1.5708
4A75A4:  MOV             R8, SP
4A75A6:  ADDW            R5, R4, #0x55C
4A75AA:  MOV             R0, R8; this
4A75AC:  VADD.F32        S0, S0, S2
4A75B0:  MOVS            R1, #0; float
4A75B2:  MOVS            R2, #0; float
4A75B4:  MOVS            R3, #0; float
4A75B6:  VSTR            S0, [R5]
4A75BA:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
4A75BE:  MOVW            R1, #0xFDB
4A75C2:  MOV             R0, R8; this
4A75C4:  MOVT            R1, #0x3FC9; x
4A75C8:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
4A75CC:  B               loc_4A762A
4A75CE:  VLDR            S0, [R0,#0x10]
4A75D2:  VLDR            S2, =-1.5708
4A75D6:  MOV             R8, SP
4A75D8:  ADDW            R5, R4, #0x55C
4A75DC:  MOV             R0, R8; this
4A75DE:  VADD.F32        S0, S0, S2
4A75E2:  MOVS            R1, #0; float
4A75E4:  MOVS            R2, #0; float
4A75E6:  MOVS            R3, #0; float
4A75E8:  VSTR            S0, [R5]
4A75EC:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
4A75F0:  MOVW            R1, #0xFDB
4A75F4:  MOV             R0, R8; this
4A75F6:  MOVT            R1, #0xBFC9; x
4A75FA:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
4A75FE:  VLDR            S0, =0.0
4A7602:  VLDR            S2, [SP,#0x108+var_D8]
4A7606:  VLDR            S4, [SP,#0x108+var_D4]
4A760A:  VLDR            S8, =0.6
4A760E:  VADD.F32        S2, S2, S0
4A7612:  VLDR            S6, [SP,#0x108+var_D0]
4A7616:  VADD.F32        S4, S4, S8
4A761A:  VADD.F32        S0, S6, S0
4A761E:  VSTR            S2, [SP,#0x108+var_D8]
4A7622:  VSTR            S4, [SP,#0x108+var_D4]
4A7626:  VSTR            S0, [SP,#0x108+var_D0]
4A762A:  ADD             R6, SP, #0x108+var_68
4A762C:  ADD.W           R9, SP, #0x108+var_C0
4A7630:  MOV             R2, R8
4A7632:  MOV             R0, R6
4A7634:  MOV             R1, R9
4A7636:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
4A763A:  MOV             R0, R9
4A763C:  MOV             R1, R6
4A763E:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
4A7642:  MOV             R0, R6; this
4A7644:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4A7648:  LDR             R0, [R5]
4A764A:  ADD             R5, SP, #0x108+var_C0
4A764C:  STR.W           R0, [R4,#0x560]
4A7650:  MOV             R0, R4; this
4A7652:  MOV             R1, R5; CMatrix *
4A7654:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
4A7658:  MOV             R0, SP; this
4A765A:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4A765E:  MOV             R0, R5; this
4A7660:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4A7664:  ADD             SP, SP, #0xE8
4A7666:  VPOP            {D8}
4A766A:  POP.W           {R8,R9,R11}
4A766E:  POP             {R4-R7,PC}
