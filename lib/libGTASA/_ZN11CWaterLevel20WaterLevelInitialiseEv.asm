; =========================================================
; Game Engine Function: _ZN11CWaterLevel20WaterLevelInitialiseEv
; Address            : 0x5932B8 - 0x59386E
; =========================================================

5932B8:  PUSH            {R4-R7,LR}
5932BA:  ADD             R7, SP, #0xC
5932BC:  PUSH.W          {R8-R11}
5932C0:  SUB             SP, SP, #4
5932C2:  VPUSH           {D8}
5932C6:  SUB             SP, SP, #0x128
5932C8:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x5932D8)
5932CC:  LDR.W           R1, =(_ZN11CWaterLevel22m_nNumOfWaterTrianglesE_ptr - 0x5932DE)
5932D0:  LDR.W           R2, =(_ZN11CWaterLevel21m_nNumOfWaterVerticesE_ptr - 0x5932E4)
5932D4:  ADD             R0, PC; __stack_chk_guard_ptr
5932D6:  LDR.W           R3, =(_ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr - 0x5932EA)
5932DA:  ADD             R1, PC; _ZN11CWaterLevel22m_nNumOfWaterTrianglesE_ptr
5932DC:  LDR.W           R6, =(_ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr - 0x5932EC)
5932E0:  ADD             R2, PC; _ZN11CWaterLevel21m_nNumOfWaterVerticesE_ptr
5932E2:  LDR.W           R5, =(_ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr - 0x5932F0)
5932E6:  ADD             R3, PC; _ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr
5932E8:  ADD             R6, PC; _ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr
5932EA:  LDR             R4, [R0]; __stack_chk_guard
5932EC:  ADD             R5, PC; _ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr
5932EE:  LDR             R1, [R1]; CWaterLevel::m_nNumOfWaterTriangles ...
5932F0:  LDR             R0, [R6]; CWaterLevel::m_QuadsAndTrianglesInEachBlock ...
5932F2:  LDR             R6, [R5]; CWaterLevel::m_nNumOfWaterQuads ...
5932F4:  LDR             R2, [R2]; CWaterLevel::m_nNumOfWaterVertices ...
5932F6:  LDR             R3, [R3]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList ...
5932F8:  LDR             R5, [R4]
5932FA:  MOVS            R4, #0
5932FC:  STR             R4, [R1]; CWaterLevel::m_nNumOfWaterTriangles
5932FE:  MOV.W           R1, #0x120
593302:  STR             R4, [R6]; CWaterLevel::m_nNumOfWaterQuads
593304:  STR             R4, [R2]; CWaterLevel::m_nNumOfWaterVertices
593306:  STR             R4, [R3]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList
593308:  STR             R5, [SP,#0x150+var_2C]
59330A:  BLX             j___aeabi_memclr8_1
59330E:  LDR.W           R0, =(_ZN11CWaterLevel21m_nWaterConfigurationE_ptr - 0x593316)
593312:  ADD             R0, PC; _ZN11CWaterLevel21m_nWaterConfigurationE_ptr
593314:  LDR             R0, [R0]; CWaterLevel::m_nWaterConfiguration ...
593316:  LDR             R0, [R0]; CWaterLevel::m_nWaterConfiguration
593318:  CMP             R0, #1
59331A:  BEQ             loc_59333E
59331C:  CBNZ            R0, loc_59334E
59331E:  LDR.W           R0, =(aDataWaterDat - 0x593328); "DATA\\water.dat"
593322:  ADD             R2, SP, #0x150+var_50
593324:  ADD             R0, PC; "DATA\\water.dat"
593326:  ADDS            R1, R0, #7
593328:  VLDR            D16, [R0]
59332C:  ORR.W           R0, R2, #7
593330:  VLD1.8          {D17}, [R1]
593334:  VST1.8          {D17}, [R0]
593338:  VSTR            D16, [SP,#0x150+var_50]
59333C:  B               loc_59334E
59333E:  LDR.W           R0, =(aDataWater1Dat - 0x593346); "DATA\\water1.dat"
593342:  ADD             R0, PC; "DATA\\water1.dat"
593344:  VLD1.64         {D16-D17}, [R0]
593348:  ADD             R0, SP, #0x150+var_50
59334A:  VST1.64         {D16-D17}, [R0]
59334E:  ADD             R0, SP, #0x150+var_50; this
593350:  ADR.W           R1, dword_593894; char *
593354:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
593358:  MOV             R8, R0
59335A:  LDR.W           R0, =(_ZN11CWaterLevel22m_nNumOfWaterTrianglesE_ptr - 0x59336C)
59335E:  LDR.W           R1, =(_ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr - 0x59336E)
593362:  MOVS            R3, #0
593364:  LDR.W           R2, =(_ZN11CWaterLevel21m_nNumOfWaterVerticesE_ptr - 0x593370)
593368:  ADD             R0, PC; _ZN11CWaterLevel22m_nNumOfWaterTrianglesE_ptr
59336A:  ADD             R1, PC; _ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr
59336C:  ADD             R2, PC; _ZN11CWaterLevel21m_nNumOfWaterVerticesE_ptr
59336E:  LDR             R0, [R0]; CWaterLevel::m_nNumOfWaterTriangles ...
593370:  LDR             R1, [R1]; unsigned int
593372:  LDR             R2, [R2]; CWaterLevel::m_nNumOfWaterVertices ...
593374:  STR             R3, [R0]; CWaterLevel::m_nNumOfWaterTriangles
593376:  MOV             R0, R8; this
593378:  STR             R3, [R1]; CWaterLevel::m_nNumOfWaterQuads
59337A:  STR             R3, [R2]; CWaterLevel::m_nNumOfWaterVertices
59337C:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
593380:  MOV             R9, R0
593382:  CMP.W           R9, #0
593386:  BEQ.W           loc_5937E0
59338A:  ADD.W           R10, SP, #0x150+var_90
59338E:  ADD             R1, SP, #0x150+var_9C; unsigned int
593390:  STR             R0, [SP,#0x150+var_D0]
593392:  ADD             R5, SP, #0x150+var_8C
593394:  STR             R0, [SP,#0x150+var_D4]
593396:  ADD.W           R11, SP, #0x150+var_BC
59339A:  STR             R0, [SP,#0x150+var_C8]
59339C:  ADD             R2, SP, #0x150+var_AC
59339E:  STR             R0, [SP,#0x150+var_D8]
5933A0:  ADD             R3, SP, #0x150+var_7C
5933A2:  STR             R0, [SP,#0x150+var_CC]
5933A4:  ADD             R4, SP, #0x150+var_68
5933A6:  ADD             R6, SP, #0x150+var_64
5933A8:  ADD.W           R12, SP, #0x150+var_98
5933AC:  ADD.W           LR, SP, #0x150+var_88
5933B0:  VLDR            S16, =64.0
5933B4:  STR             R0, [SP,#0x150+var_E0]
5933B6:  STR             R0, [SP,#0x150+var_DC]
5933B8:  LDRB.W          R0, [R9]
5933BC:  CMP             R0, #0x3A ; ':'
5933BE:  BGT.W           loc_593618
5933C2:  CMP             R0, #0
5933C4:  IT NE
5933C6:  CMPNE           R0, #0x2A ; '*'
5933C8:  BEQ.W           loc_593622
5933CC:  MOVS            R0, #1
5933CE:  STR.W           R10, [SP,#0x150+var_F0]
5933D2:  STR             R0, [SP,#0x150+var_C4]
5933D4:  ADD             R0, SP, #0x150+var_A0
5933D6:  STR             R0, [SP,#0x150+var_EC]
5933D8:  ADD             R0, SP, #0x150+var_C4
5933DA:  STR             R0, [SP,#0x150+var_E8]
5933DC:  ADD             R0, SP, #0x150+var_6C
5933DE:  STRD.W          R11, R5, [SP,#0x150+var_110]
5933E2:  STR             R1, [SP,#0x150+var_108]
5933E4:  STR             R0, [SP,#0x150+var_104]
5933E6:  ADD             R0, SP, #0x150+var_70
5933E8:  STR             R0, [SP,#0x150+var_100]
5933EA:  ADD             R0, SP, #0x150+var_80
5933EC:  STR             R0, [SP,#0x150+var_FC]
5933EE:  ADD             R0, SP, #0x150+var_B0
5933F0:  STR             R0, [SP,#0x150+var_F8]
5933F2:  ADD             R0, SP, #0x150+var_C0
5933F4:  STR             R0, [SP,#0x150+var_F4]
5933F6:  ADD             R0, SP, #0x150+var_A8
5933F8:  STR             R0, [SP,#0x150+var_130]
5933FA:  ADD             R0, SP, #0x150+var_B8
5933FC:  STRD.W          R0, LR, [SP,#0x150+var_12C]
593400:  ADD             R0, SP, #0x150+var_74
593402:  STRD.W          R12, R6, [SP,#0x150+var_124]
593406:  MOV             R6, R12
593408:  STRD.W          R4, R3, [SP,#0x150+var_11C]
59340C:  ADD             R3, SP, #0x150+var_58
59340E:  STR             R2, [SP,#0x150+var_114]
593410:  ADD             R2, SP, #0x150+var_54
593412:  STR             R0, [SP,#0x150+var_150]
593414:  ADD             R0, SP, #0x150+var_A4
593416:  STR             R0, [SP,#0x150+var_14C]
593418:  ADD             R0, SP, #0x150+var_B4
59341A:  STR             R0, [SP,#0x150+var_148]
59341C:  ADD             R0, SP, #0x150+var_84
59341E:  STR             R0, [SP,#0x150+var_144]
593420:  ADD             R0, SP, #0x150+var_94
593422:  LDR.W           R1, =(aFFFFFFFFFFFFFF_0 - 0x593438); "%f %f %f %f %f %f %f %f %f %f %f %f %f "...
593426:  MOV             R4, LR
593428:  STR             R0, [SP,#0x150+var_140]
59342A:  ADD             R0, SP, #0x150+var_5C
59342C:  STR             R0, [SP,#0x150+var_13C]
59342E:  ADD             R0, SP, #0x150+var_60
593430:  STR             R0, [SP,#0x150+var_138]
593432:  ADD             R0, SP, #0x150+var_78
593434:  ADD             R1, PC; "%f %f %f %f %f %f %f %f %f %f %f %f %f "...
593436:  STR             R0, [SP,#0x150+var_134]
593438:  MOV             R0, R9; s
59343A:  BLX.W           sscanf
59343E:  CMP             R0, #0x1D
593440:  BEQ             loc_5934B6
593442:  ADD             R0, SP, #0x150+var_A0
593444:  STR.W           R10, [SP,#0x150+var_F0]
593448:  STR             R0, [SP,#0x150+var_EC]
59344A:  ADD             R0, SP, #0x150+var_9C
59344C:  STRD.W          R11, R5, [SP,#0x150+var_110]
593450:  ADD             R1, SP, #0x150+var_12C
593452:  STR             R0, [SP,#0x150+var_108]
593454:  ADD             R0, SP, #0x150+var_6C
593456:  STR             R0, [SP,#0x150+var_104]
593458:  ADD             R0, SP, #0x150+var_70
59345A:  STR             R0, [SP,#0x150+var_100]
59345C:  ADD             R0, SP, #0x150+var_80
59345E:  STR             R0, [SP,#0x150+var_FC]
593460:  ADD             R0, SP, #0x150+var_B0
593462:  STR             R0, [SP,#0x150+var_F8]
593464:  ADD             R0, SP, #0x150+var_C0
593466:  STR             R0, [SP,#0x150+var_F4]
593468:  ADD             R0, SP, #0x150+var_A8
59346A:  STR             R0, [SP,#0x150+var_130]
59346C:  ADD             R0, SP, #0x150+var_B8
59346E:  STM             R1!, {R0,R4,R6}
593470:  ADD             R0, SP, #0x150+var_64
593472:  ADD             R2, SP, #0x150+var_54
593474:  STR             R0, [SP,#0x150+var_120]
593476:  ADD             R0, SP, #0x150+var_68
593478:  STR             R0, [SP,#0x150+var_11C]
59347A:  ADD             R0, SP, #0x150+var_7C
59347C:  STR             R0, [SP,#0x150+var_118]
59347E:  ADD             R0, SP, #0x150+var_AC
593480:  STR             R0, [SP,#0x150+var_114]
593482:  ADD             R0, SP, #0x150+var_74
593484:  STR             R0, [SP,#0x150+var_150]
593486:  ADD             R0, SP, #0x150+var_A4
593488:  STR             R0, [SP,#0x150+var_14C]
59348A:  ADD             R0, SP, #0x150+var_B4
59348C:  STR             R0, [SP,#0x150+var_148]
59348E:  ADD             R0, SP, #0x150+var_84
593490:  STR             R0, [SP,#0x150+var_144]
593492:  ADD             R0, SP, #0x150+var_94
593494:  LDR.W           R1, =(aFFFFFFFFFFFFFF_1 - 0x5934AA); "%f %f %f %f %f %f %f %f %f %f %f %f %f "...
593498:  ADD             R3, SP, #0x150+var_58
59349A:  STR             R0, [SP,#0x150+var_140]
59349C:  ADD             R0, SP, #0x150+var_5C
59349E:  STR             R0, [SP,#0x150+var_13C]
5934A0:  ADD             R0, SP, #0x150+var_60
5934A2:  STR             R0, [SP,#0x150+var_138]
5934A4:  ADD             R0, SP, #0x150+var_78
5934A6:  ADD             R1, PC; "%f %f %f %f %f %f %f %f %f %f %f %f %f "...
5934A8:  STR             R0, [SP,#0x150+var_134]
5934AA:  MOV             R0, R9; s
5934AC:  BLX.W           sscanf
5934B0:  CMP             R0, #0x1C
5934B2:  BNE.W           loc_59364C
5934B6:  LDR             R0, [SP,#0x150+var_74]
5934B8:  STR             R0, [SP,#0x150+var_E4]
5934BA:  VLDR            S1, [SP,#0x150+var_A8]
5934BE:  VLDR            S3, [SP,#0x150+var_C0]
5934C2:  LDR             R4, [SP,#0x150+var_84]
5934C4:  VMUL.F32        S1, S1, S16
5934C8:  VLDR            S0, [SP,#0x150+var_58]
5934CC:  VMUL.F32        S3, S3, S16
5934D0:  VLDR            S2, [SP,#0x150+var_54]
5934D4:  VLDR            S4, [SP,#0x150+var_5C]
5934D8:  VLDR            S6, [SP,#0x150+var_60]
5934DC:  VLDR            S8, [SP,#0x150+var_64]
5934E0:  VLDR            S10, [SP,#0x150+var_68]
5934E4:  VLDR            S12, [SP,#0x150+var_6C]
5934E8:  VLDR            S14, [SP,#0x150+var_70]
5934EC:  LDR             R6, [SP,#0x150+var_88]
5934EE:  LDRD.W          R5, R12, [SP,#0x150+var_98]
5934F2:  LDRD.W          R3, LR, [SP,#0x150+var_7C]
5934F6:  VLDR            S7, [SP,#0x150+var_A4]
5934FA:  VLDR            S9, [SP,#0x150+var_AC]
5934FE:  VLDR            S11, [SP,#0x150+var_BC]
593502:  VMUL.F32        S7, S7, S16
593506:  VLDR            S13, [SP,#0x150+var_B0]
59350A:  VMUL.F32        S9, S9, S16
59350E:  VMUL.F32        S11, S11, S16
593512:  VLDR            S5, [SP,#0x150+var_B8]
593516:  VMUL.F32        S13, S13, S16
59351A:  LDR.W           R9, [SP,#0x150+var_80]
59351E:  LDRD.W          R10, R2, [SP,#0x150+var_90]
593522:  VMUL.F32        S5, S5, S16
593526:  LDRD.W          R11, R1, [SP,#0x150+var_A0]
59352A:  LDR             R0, [SP,#0x150+var_C4]
59352C:  STR             R0, [SP,#0x150+var_100]
59352E:  ADD             R0, SP, #0x150+var_110
593530:  STM.W           R0, {R9-R11}
593534:  MOVW            R0, #0xFFFF
593538:  STRD.W          R2, R1, [SP,#0x150+var_124]
59353C:  STR             R3, [SP,#0x150+var_128]
59353E:  STR             R5, [SP,#0x150+var_138]
593540:  STRD.W          LR, R6, [SP,#0x150+var_140]
593544:  VCVT.S32.F32    S13, S13
593548:  STR.W           R12, [SP,#0x150+var_150]
59354C:  VCVT.S32.F32    S11, S11
593550:  VCVT.S32.F32    S9, S9
593554:  LDR             R1, [SP,#0x150+var_D0]
593556:  VCVT.S32.F32    S7, S7
59355A:  BIC.W           R0, R1, R0
59355E:  VCVT.S32.F32    S5, S5
593562:  LDR             R2, [SP,#0x150+var_C8]
593564:  BFC.W           R2, #0, #0x10
593568:  VMOV            R1, S7
59356C:  UXTB            R1, R1
59356E:  ORRS            R0, R1
593570:  VMOV            R1, S5
593574:  UXTB            R1, R1
593576:  ORR.W           R6, R0, R1,LSL#8
59357A:  VMOV            R0, S9
59357E:  UXTB            R0, R0
593580:  ORRS            R0, R2
593582:  VMOV            R2, S11
593586:  UXTB            R2, R2
593588:  ORR.W           R3, R0, R2,LSL#8
59358C:  VMOV            R0, S13
593590:  LDR             R2, [SP,#0x150+var_CC]
593592:  VCVT.S32.F32    S3, S3
593596:  BFC.W           R2, #0, #0x10
59359A:  UXTB            R0, R0
59359C:  ORRS            R0, R2
59359E:  VMOV            R2, S3
5935A2:  UXTB            R2, R2
5935A4:  ORR.W           R2, R0, R2,LSL#8
5935A8:  LDR             R0, [SP,#0x150+var_D4]
5935AA:  VCVT.S32.F32    S1, S1
5935AE:  VCVT.S32.F32    S14, S14
5935B2:  BFC.W           R0, #0, #0x10
5935B6:  VCVT.S32.F32    S12, S12
5935BA:  ORR.W           R0, R0, R1,LSL#8
5935BE:  VCVT.S32.F32    S10, S10
5935C2:  VCVT.S32.F32    S8, S8
5935C6:  VCVT.S32.F32    S6, S6
5935CA:  VCVT.S32.F32    S4, S4
5935CE:  VMOV            R1, S1
5935D2:  VCVT.S32.F32    S2, S2
5935D6:  VCVT.S32.F32    S0, S0
5935DA:  VSTR            S12, [SP,#0x150+var_118]
5935DE:  VSTR            S14, [SP,#0x150+var_114]
5935E2:  VSTR            S8, [SP,#0x150+var_130]
5935E6:  VSTR            S10, [SP,#0x150+var_12C]
5935EA:  VSTR            S4, [SP,#0x150+var_148]
5935EE:  VSTR            S6, [SP,#0x150+var_144]
5935F2:  STR             R2, [SP,#0x150+var_104]
5935F4:  STR             R3, [SP,#0x150+var_C8]
5935F6:  STR             R3, [SP,#0x150+var_11C]
5935F8:  MOV             R3, R4
5935FA:  STRD.W          R6, R2, [SP,#0x150+var_D0]
5935FE:  STR             R6, [SP,#0x150+var_14C]
593600:  LDR             R2, [SP,#0x150+var_E4]
593602:  UXTB            R1, R1
593604:  ORRS            R0, R1
593606:  STR             R0, [SP,#0x150+var_D4]
593608:  VMOV            R1, S0
59360C:  STR             R0, [SP,#0x150+var_134]
59360E:  VMOV            R0, S2
593612:  BLX.W           j__ZN11CWaterLevel17AddWaterLevelQuadEii7CRenPariiS0_iiS0_iiS0_j; CWaterLevel::AddWaterLevelQuad(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar,int,int,CRenPar,uint)
593616:  B               loc_5937B4
593618:  CMP             R0, #0x70 ; 'p'
59361A:  IT NE
59361C:  CMPNE           R0, #0x3B ; ';'
59361E:  BNE.W           loc_5933CC
593622:  MOV             R0, R8; this
593624:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
593628:  ADD.W           LR, SP, #0x150+var_88
59362C:  ADD.W           R12, SP, #0x150+var_98
593630:  ADD             R6, SP, #0x150+var_64
593632:  ADD             R4, SP, #0x150+var_68
593634:  ADD             R3, SP, #0x150+var_7C
593636:  ADD             R2, SP, #0x150+var_AC
593638:  ADD             R1, SP, #0x150+var_9C
59363A:  MOV             R9, R0
59363C:  CMP.W           R9, #0
593640:  BNE.W           loc_5933B8
593644:  B               loc_5937E0
593646:  ALIGN 4
593648:  DCFS 64.0
59364C:  ADD             R0, SP, #0x150+var_9C
59364E:  STRD.W          R11, R5, [SP,#0x150+var_110]
593652:  STR             R0, [SP,#0x150+var_108]
593654:  ADD             R0, SP, #0x150+var_C4
593656:  STR             R0, [SP,#0x150+var_104]
593658:  ADD             R0, SP, #0x150+var_A8
59365A:  STR             R0, [SP,#0x150+var_130]
59365C:  ADD             R0, SP, #0x150+var_B8
59365E:  ADD             R1, SP, #0x150+var_12C
593660:  ADD             R2, SP, #0x150+var_54
593662:  STM             R1!, {R0,R4,R6}
593664:  ADD             R0, SP, #0x150+var_64
593666:  ADD             R3, SP, #0x150+var_58
593668:  STR             R0, [SP,#0x150+var_120]
59366A:  ADD             R0, SP, #0x150+var_68
59366C:  STR             R0, [SP,#0x150+var_11C]
59366E:  ADD             R0, SP, #0x150+var_7C
593670:  STR             R0, [SP,#0x150+var_118]
593672:  ADD             R0, SP, #0x150+var_AC
593674:  STR             R0, [SP,#0x150+var_114]
593676:  ADD             R0, SP, #0x150+var_74
593678:  STR             R0, [SP,#0x150+var_150]
59367A:  ADD             R0, SP, #0x150+var_A4
59367C:  STR             R0, [SP,#0x150+var_14C]
59367E:  ADD             R0, SP, #0x150+var_B4
593680:  STR             R0, [SP,#0x150+var_148]
593682:  ADD             R0, SP, #0x150+var_84
593684:  STR             R0, [SP,#0x150+var_144]
593686:  ADD             R0, SP, #0x150+var_94
593688:  LDR             R1, =(aFFFFFFFFFFFFFF_0+0x15 - 0x59369A); "%f %f %f %f %f %f %f %f %f %f %f %f %f "...
59368A:  STR             R0, [SP,#0x150+var_140]
59368C:  ADD             R0, SP, #0x150+var_5C
59368E:  STR             R0, [SP,#0x150+var_13C]
593690:  ADD             R0, SP, #0x150+var_60
593692:  STR             R0, [SP,#0x150+var_138]
593694:  ADD             R0, SP, #0x150+var_78
593696:  ADD             R1, PC; "%f %f %f %f %f %f %f %f %f %f %f %f %f "... ; format
593698:  STR             R0, [SP,#0x150+var_134]
59369A:  MOV             R0, R9; s
59369C:  BLX.W           sscanf
5936A0:  LDR             R2, [SP,#0x150+var_74]
5936A2:  LDRD.W          R4, R3, [SP,#0x150+var_88]
5936A6:  LDRD.W          R9, R12, [SP,#0x150+var_98]
5936AA:  LDRD.W          R0, LR, [SP,#0x150+var_7C]
5936AE:  LDR             R6, [SP,#0x150+var_9C]
5936B0:  VLDR            S10, [SP,#0x150+var_AC]
5936B4:  VLDR            S14, [SP,#0x150+var_A8]
5936B8:  VLDR            S1, [SP,#0x150+var_B8]
5936BC:  VMUL.F32        S10, S10, S16
5936C0:  VLDR            S3, [SP,#0x150+var_A4]
5936C4:  VMUL.F32        S14, S14, S16
5936C8:  VLDR            S7, [SP,#0x150+var_B4]
5936CC:  VMUL.F32        S1, S1, S16
5936D0:  VLDR            S0, [SP,#0x150+var_60]
5936D4:  VMUL.F32        S3, S3, S16
5936D8:  VLDR            S2, [SP,#0x150+var_64]
5936DC:  VMUL.F32        S7, S7, S16
5936E0:  VLDR            S4, [SP,#0x150+var_58]
5936E4:  VLDR            S6, [SP,#0x150+var_54]
5936E8:  VLDR            S12, [SP,#0x150+var_5C]
5936EC:  VLDR            S5, [SP,#0x150+var_68]
5936F0:  LDR             R5, [SP,#0x150+var_C4]
5936F2:  LDR             R1, [SP,#0x150+var_8C]
5936F4:  VLDR            S8, [SP,#0x150+var_BC]
5936F8:  STR             R5, [SP,#0x150+var_118]
5936FA:  STRD.W          R1, R6, [SP,#0x150+var_124]
5936FE:  VCVT.S32.F32    S5, S5
593702:  VCVT.S32.F32    S12, S12
593706:  VCVT.S32.F32    S6, S6
59370A:  VCVT.S32.F32    S4, S4
59370E:  VCVT.S32.F32    S2, S2
593712:  VCVT.S32.F32    S0, S0
593716:  STR             R0, [SP,#0x150+var_128]
593718:  STR.W           R9, [SP,#0x150+var_138]
59371C:  VMUL.F32        S8, S8, S16
593720:  STRD.W          LR, R4, [SP,#0x150+var_140]
593724:  STR.W           R12, [SP,#0x150+var_150]
593728:  VSTR            S5, [SP,#0x150+var_12C]
59372C:  VCVT.S32.F32    S5, S7
593730:  VSTR            S2, [SP,#0x150+var_130]
593734:  VCVT.S32.F32    S2, S3
593738:  VSTR            S0, [SP,#0x150+var_144]
59373C:  VCVT.S32.F32    S0, S1
593740:  VSTR            S12, [SP,#0x150+var_148]
593744:  VCVT.S32.F32    S12, S14
593748:  LDR             R1, [SP,#0x150+var_D8]
59374A:  VCVT.S32.F32    S10, S10
59374E:  VCVT.S32.F32    S8, S8
593752:  BFC.W           R1, #0, #0x10
593756:  VMOV            R0, S10
59375A:  UXTB            R0, R0
59375C:  ORRS            R0, R1
59375E:  VMOV            R1, S8
593762:  UXTB            R1, R1
593764:  ORR.W           R0, R0, R1,LSL#8
593768:  STR             R0, [SP,#0x150+var_D8]
59376A:  STR             R0, [SP,#0x150+var_11C]
59376C:  VMOV            R0, S12
593770:  LDR             R1, [SP,#0x150+var_DC]
593772:  BFC.W           R1, #0, #0x10
593776:  UXTB            R0, R0
593778:  ORRS            R0, R1
59377A:  VMOV            R1, S0
59377E:  UXTB            R1, R1
593780:  ORR.W           R0, R0, R1,LSL#8
593784:  LDR             R1, [SP,#0x150+var_E0]
593786:  STR             R0, [SP,#0x150+var_DC]
593788:  STR             R0, [SP,#0x150+var_134]
59378A:  MOVW            R0, #0xFFFF
59378E:  BIC.W           R0, R1, R0
593792:  VMOV            R1, S2
593796:  UXTB            R1, R1
593798:  ORRS            R0, R1
59379A:  VMOV            R1, S5
59379E:  UXTB            R1, R1
5937A0:  ORR.W           R0, R0, R1,LSL#8
5937A4:  STR             R0, [SP,#0x150+var_E0]
5937A6:  STR             R0, [SP,#0x150+var_14C]
5937A8:  VMOV            R0, S6
5937AC:  VMOV            R1, S4
5937B0:  BLX             j__ZN11CWaterLevel21AddWaterLevelTriangleEii7CRenPariiS0_iiS0_j; CWaterLevel::AddWaterLevelTriangle(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar,uint)
5937B4:  MOV             R0, R8; this
5937B6:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
5937BA:  ADD.W           R10, SP, #0x150+var_90
5937BE:  ADD             R1, SP, #0x150+var_9C; unsigned int
5937C0:  ADD             R5, SP, #0x150+var_8C
5937C2:  ADD.W           R11, SP, #0x150+var_BC
5937C6:  ADD             R2, SP, #0x150+var_AC
5937C8:  ADD             R3, SP, #0x150+var_7C
5937CA:  ADD             R4, SP, #0x150+var_68
5937CC:  ADD             R6, SP, #0x150+var_64
5937CE:  ADD.W           R12, SP, #0x150+var_98
5937D2:  ADD.W           LR, SP, #0x150+var_88
5937D6:  MOV             R9, R0
5937D8:  CMP.W           R9, #0
5937DC:  BNE.W           loc_5933B8
5937E0:  MOV             R0, R8; this
5937E2:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
5937E6:  BLX.W           j__ZN11CWaterLevel25FillQuadsAndTrianglesListEv; CWaterLevel::FillQuadsAndTrianglesList(void)
5937EA:  BLX.W           j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
5937EE:  ADR             R0, aParticle_3; "particle"
5937F0:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
5937F4:  MOVS            R1, #0; int
5937F6:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
5937FA:  LDR             R0, =(gpWaterTex_ptr - 0x593800)
5937FC:  ADD             R0, PC; gpWaterTex_ptr
5937FE:  LDR             R0, [R0]; gpWaterTex
593800:  LDR             R0, [R0]
593802:  CBNZ            R0, loc_593814
593804:  ADR             R0, aWaterclear256; "waterclear256"
593806:  MOVS            R1, #0; char *
593808:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
59380C:  LDR             R1, =(gpWaterTex_ptr - 0x593812)
59380E:  ADD             R1, PC; gpWaterTex_ptr
593810:  LDR             R1, [R1]; gpWaterTex
593812:  STR             R0, [R1]
593814:  LDR             R0, =(gpSeaBedTex_ptr - 0x59381A)
593816:  ADD             R0, PC; gpSeaBedTex_ptr
593818:  LDR             R0, [R0]; gpSeaBedTex
59381A:  LDR             R0, [R0]
59381C:  CBNZ            R0, loc_59382E
59381E:  ADR             R0, aSeabd32; "seabd32"
593820:  MOVS            R1, #0; char *
593822:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
593826:  LDR             R1, =(gpSeaBedTex_ptr - 0x59382C)
593828:  ADD             R1, PC; gpSeaBedTex_ptr
59382A:  LDR             R1, [R1]; gpSeaBedTex
59382C:  STR             R0, [R1]
59382E:  LDR             R0, =(gpWaterWakeTex_ptr - 0x593834)
593830:  ADD             R0, PC; gpWaterWakeTex_ptr
593832:  LDR             R0, [R0]; gpWaterWakeTex
593834:  LDR             R0, [R0]
593836:  CBNZ            R0, loc_593848
593838:  ADR             R0, aWaterwake; "waterwake"
59383A:  MOVS            R1, #0; char *
59383C:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
593840:  LDR             R1, =(gpWaterWakeTex_ptr - 0x593846)
593842:  ADD             R1, PC; gpWaterWakeTex_ptr
593844:  LDR             R1, [R1]; gpWaterWakeTex
593846:  STR             R0, [R1]
593848:  BLX             j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
59384C:  LDR             R0, =(__stack_chk_guard_ptr - 0x593854)
59384E:  LDR             R1, [SP,#0x150+var_2C]
593850:  ADD             R0, PC; __stack_chk_guard_ptr
593852:  LDR             R0, [R0]; __stack_chk_guard
593854:  LDR             R0, [R0]
593856:  SUBS            R0, R0, R1
593858:  ITTTT EQ
59385A:  ADDEQ           SP, SP, #0x128
59385C:  VPOPEQ          {D8}
593860:  ADDEQ           SP, SP, #4
593862:  POPEQ.W         {R8-R11}
593866:  IT EQ
593868:  POPEQ           {R4-R7,PC}
59386A:  BLX             __stack_chk_fail
