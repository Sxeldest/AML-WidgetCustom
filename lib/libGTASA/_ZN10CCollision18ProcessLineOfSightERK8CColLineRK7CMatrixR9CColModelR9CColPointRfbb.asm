; =========================================================
; Game Engine Function: _ZN10CCollision18ProcessLineOfSightERK8CColLineRK7CMatrixR9CColModelR9CColPointRfbb
; Address            : 0x2DC424 - 0x2DC684
; =========================================================

2DC424:  PUSH            {R4-R7,LR}
2DC426:  ADD             R7, SP, #0xC
2DC428:  PUSH.W          {R8-R11}
2DC42C:  SUB             SP, SP, #4
2DC42E:  VPUSH           {D8}
2DC432:  SUB             SP, SP, #0x58
2DC434:  MOV             R9, R0
2DC436:  LDR             R0, =(byte_7930B8 - 0x2DC440)
2DC438:  STR             R3, [SP,#0x80+var_68]
2DC43A:  MOV             R8, R2
2DC43C:  ADD             R0, PC; byte_7930B8
2DC43E:  MOV             R11, R1
2DC440:  LDRB            R0, [R0]
2DC442:  DMB.W           ISH
2DC446:  TST.W           R0, #1
2DC44A:  BNE             loc_2DC476
2DC44C:  LDR             R0, =(byte_7930B8 - 0x2DC452)
2DC44E:  ADD             R0, PC; byte_7930B8 ; __guard *
2DC450:  BLX             j___cxa_guard_acquire
2DC454:  CBZ             R0, loc_2DC476
2DC456:  LDR             R0, =(_ZN7CMatrixD2Ev_ptr_0 - 0x2DC460)
2DC458:  MOVS            R3, #0
2DC45A:  LDR             R1, =(unk_793070 - 0x2DC464)
2DC45C:  ADD             R0, PC; _ZN7CMatrixD2Ev_ptr_0
2DC45E:  LDR             R2, =(unk_67A000 - 0x2DC468)
2DC460:  ADD             R1, PC; unk_793070 ; obj
2DC462:  LDR             R0, [R0]; CMatrix::~CMatrix() ; lpfunc
2DC464:  ADD             R2, PC; unk_67A000 ; lpdso_handle
2DC466:  STRD.W          R3, R3, [R1,#(dword_7930B0 - 0x793070)]
2DC46A:  BLX             __cxa_atexit
2DC46E:  LDR             R0, =(byte_7930B8 - 0x2DC474)
2DC470:  ADD             R0, PC; byte_7930B8 ; __guard *
2DC472:  BLX             j___cxa_guard_release
2DC476:  LDR.W           R6, [R8,#0x2C]
2DC47A:  CMP             R6, #0
2DC47C:  BEQ.W           loc_2DC674
2DC480:  LDR             R5, =(unk_793070 - 0x2DC488)
2DC482:  MOV             R0, R11; CMatrix *
2DC484:  ADD             R5, PC; unk_793070
2DC486:  MOV             R1, R5; CMatrix *
2DC488:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
2DC48C:  ADD.W           R10, SP, #0x80+var_58
2DC490:  MOV             R1, R5
2DC492:  MOV             R2, R9
2DC494:  MOV             R0, R10
2DC496:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DC49A:  ADD             R4, SP, #0x80+var_64
2DC49C:  ADD.W           R2, R9, #0x10
2DC4A0:  MOV             R1, R5
2DC4A2:  MOV             R0, R4
2DC4A4:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DC4A8:  ADD             R0, SP, #0x80+var_48; this
2DC4AA:  MOV             R1, R10; CVector *
2DC4AC:  MOV             R2, R4; CVector *
2DC4AE:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
2DC4B2:  MOV             R1, R8; CColLine *
2DC4B4:  BLX             j__ZN10CCollision14TestLineBox_DWERK8CColLineRK4CBox; CCollision::TestLineBox_DW(CColLine const&,CBox const&)
2DC4B8:  CMP             R0, #1
2DC4BA:  BNE.W           loc_2DC674
2DC4BE:  STR.W           R11, [SP,#0x80+var_70]
2DC4C2:  LDRD.W          R0, R11, [R7,#arg_0]
2DC4C6:  LDR             R0, [R0]
2DC4C8:  STR             R0, [SP,#0x80+var_64]
2DC4CA:  LDRSH.W         R0, [R6]
2DC4CE:  CMP             R0, #1
2DC4D0:  BLT             loc_2DC52C
2DC4D2:  LDR             R0, =(g_surfaceInfos_ptr - 0x2DC4E0)
2DC4D4:  ADD.W           R8, SP, #0x80+var_64
2DC4D8:  MOVS            R4, #0
2DC4DA:  MOVS            R5, #0x10
2DC4DC:  ADD             R0, PC; g_surfaceInfos_ptr
2DC4DE:  LDR.W           R9, [R0]; g_surfaceInfos
2DC4E2:  LDR             R0, =(g_surfaceInfos_ptr - 0x2DC4E8)
2DC4E4:  ADD             R0, PC; g_surfaceInfos_ptr
2DC4E6:  LDR.W           R10, [R0]; g_surfaceInfos
2DC4EA:  CMP.W           R11, #1
2DC4EE:  BNE             loc_2DC4FC
2DC4F0:  LDR             R0, [R6,#8]
2DC4F2:  LDRB            R1, [R0,R5]; unsigned int
2DC4F4:  MOV             R0, R9; this
2DC4F6:  BLX             j__ZN14SurfaceInfos_c12IsSeeThroughEj; SurfaceInfos_c::IsSeeThrough(uint)
2DC4FA:  CBNZ            R0, loc_2DC520
2DC4FC:  LDR             R0, [R7,#arg_8]
2DC4FE:  CMP             R0, #1
2DC500:  BNE             loc_2DC50E
2DC502:  LDR             R0, [R6,#8]
2DC504:  LDRB            R1, [R0,R5]; unsigned int
2DC506:  MOV             R0, R10; this
2DC508:  BLX             j__ZN14SurfaceInfos_c14IsShootThroughEj; SurfaceInfos_c::IsShootThrough(uint)
2DC50C:  CBNZ            R0, loc_2DC520
2DC50E:  LDR             R0, [R6,#8]
2DC510:  MOV             R3, R8
2DC512:  LDR             R2, [SP,#0x80+var_68]
2DC514:  ADD             R0, R5
2DC516:  SUB.W           R1, R0, #0x10
2DC51A:  ADD             R0, SP, #0x80+var_48
2DC51C:  BLX             j__ZN10CCollision17ProcessLineSphereERK8CColLineRK10CColSphereR9CColPointRf; CCollision::ProcessLineSphere(CColLine const&,CColSphere const&,CColPoint &,float &)
2DC520:  LDRSH.W         R0, [R6]
2DC524:  ADDS            R4, #1
2DC526:  ADDS            R5, #0x14
2DC528:  CMP             R4, R0
2DC52A:  BLT             loc_2DC4EA
2DC52C:  LDRSH.W         R0, [R6,#2]
2DC530:  CMP             R0, #1
2DC532:  BLT             loc_2DC58E
2DC534:  LDR             R0, =(g_surfaceInfos_ptr - 0x2DC542)
2DC536:  ADD.W           R8, SP, #0x80+var_64
2DC53A:  MOVS            R4, #0
2DC53C:  MOVS            R5, #0x18
2DC53E:  ADD             R0, PC; g_surfaceInfos_ptr
2DC540:  LDR.W           R9, [R0]; g_surfaceInfos
2DC544:  LDR             R0, =(g_surfaceInfos_ptr - 0x2DC54A)
2DC546:  ADD             R0, PC; g_surfaceInfos_ptr
2DC548:  LDR.W           R10, [R0]; g_surfaceInfos
2DC54C:  CMP.W           R11, #1
2DC550:  BNE             loc_2DC55E
2DC552:  LDR             R0, [R6,#0xC]
2DC554:  LDRB            R1, [R0,R5]; unsigned int
2DC556:  MOV             R0, R9; this
2DC558:  BLX             j__ZN14SurfaceInfos_c12IsSeeThroughEj; SurfaceInfos_c::IsSeeThrough(uint)
2DC55C:  CBNZ            R0, loc_2DC582
2DC55E:  LDR             R0, [R7,#arg_8]
2DC560:  CMP             R0, #1
2DC562:  BNE             loc_2DC570
2DC564:  LDR             R0, [R6,#0xC]
2DC566:  LDRB            R1, [R0,R5]; unsigned int
2DC568:  MOV             R0, R10; this
2DC56A:  BLX             j__ZN14SurfaceInfos_c14IsShootThroughEj; SurfaceInfos_c::IsShootThrough(uint)
2DC56E:  CBNZ            R0, loc_2DC582
2DC570:  LDR             R0, [R6,#0xC]
2DC572:  MOV             R3, R8
2DC574:  LDR             R2, [SP,#0x80+var_68]
2DC576:  ADD             R0, R5
2DC578:  SUB.W           R1, R0, #0x18
2DC57C:  ADD             R0, SP, #0x80+var_48
2DC57E:  BLX             j__ZN10CCollision14ProcessLineBoxERK8CColLineRK7CColBoxR9CColPointRf; CCollision::ProcessLineBox(CColLine const&,CColBox const&,CColPoint &,float &)
2DC582:  LDRSH.W         R0, [R6,#2]
2DC586:  ADDS            R4, #1
2DC588:  ADDS            R5, #0x1C
2DC58A:  CMP             R4, R0
2DC58C:  BLT             loc_2DC54C
2DC58E:  MOV             R0, R6; this
2DC590:  BLX             j__ZN10CCollision23CalculateTrianglePlanesEP14CCollisionData; CCollision::CalculateTrianglePlanes(CCollisionData *)
2DC594:  LDRSH.W         R0, [R6,#4]
2DC598:  CMP             R0, #1
2DC59A:  BLT             loc_2DC626
2DC59C:  LDR             R0, =(g_surfaceInfos_ptr - 0x2DC5AC)
2DC59E:  MOV.W           R8, #0xC
2DC5A2:  MOV.W           R9, #0
2DC5A6:  MOVS            R4, #0
2DC5A8:  ADD             R0, PC; g_surfaceInfos_ptr
2DC5AA:  LDR             R5, [R0]; g_surfaceInfos
2DC5AC:  LDR             R0, =(g_surfaceInfos_ptr - 0x2DC5B2)
2DC5AE:  ADD             R0, PC; g_surfaceInfos_ptr
2DC5B0:  LDR             R0, [R0]; g_surfaceInfos
2DC5B2:  STR             R0, [SP,#0x80+var_6C]
2DC5B4:  LDR             R0, =(_ZN10CCollision27ms_iProcessLineNumCrossingsE_ptr - 0x2DC5BA)
2DC5B6:  ADD             R0, PC; _ZN10CCollision27ms_iProcessLineNumCrossingsE_ptr
2DC5B8:  LDR.W           R10, [R0]; CCollision::ms_iProcessLineNumCrossings ...
2DC5BC:  CMP.W           R11, #1
2DC5C0:  BNE             loc_2DC5D0
2DC5C2:  LDR             R0, [R6,#0x18]
2DC5C4:  LDRB.W          R1, [R0,R8]; unsigned int
2DC5C8:  MOV             R0, R5; this
2DC5CA:  BLX             j__ZN14SurfaceInfos_c12IsSeeThroughEj; SurfaceInfos_c::IsSeeThrough(uint)
2DC5CE:  CBNZ            R0, loc_2DC614
2DC5D0:  LDR             R0, [R7,#arg_8]
2DC5D2:  CMP             R0, #1
2DC5D4:  BNE             loc_2DC5E4
2DC5D6:  LDR             R0, [R6,#0x18]
2DC5D8:  LDRB.W          R1, [R0,R8]; unsigned int
2DC5DC:  LDR             R0, [SP,#0x80+var_6C]; this
2DC5DE:  BLX             j__ZN14SurfaceInfos_c14IsShootThroughEj; SurfaceInfos_c::IsShootThrough(uint)
2DC5E2:  CBNZ            R0, loc_2DC614
2DC5E4:  LDRD.W          R1, R0, [R6,#0x14]
2DC5E8:  LDR             R3, [SP,#0x80+var_68]
2DC5EA:  ADD             R0, R8
2DC5EC:  LDR             R2, [R6,#0x1C]
2DC5EE:  STR             R3, [SP,#0x80+var_80]
2DC5F0:  ADD             R3, SP, #0x80+var_64
2DC5F2:  STR             R3, [SP,#0x80+var_7C]
2DC5F4:  MOVS            R3, #0
2DC5F6:  STR             R3, [SP,#0x80+var_78]
2DC5F8:  ADD.W           R3, R2, R9
2DC5FC:  SUB.W           R2, R0, #0xC
2DC600:  ADD             R0, SP, #0x80+var_48
2DC602:  BLX             j__ZN10CCollision19ProcessLineTriangleERK8CColLinePK7CVectorRK12CColTriangleRK17CColTrianglePlaneR9CColPointRfP15CStoredCollPoly; CCollision::ProcessLineTriangle(CColLine const&,CVector const*,CColTriangle const&,CColTrianglePlane const&,CColPoint &,float &,CStoredCollPoly *)
2DC606:  CMP             R0, #1
2DC608:  ITTT EQ
2DC60A:  LDREQ.W         R0, [R10]; CCollision::ms_iProcessLineNumCrossings
2DC60E:  ADDEQ           R0, #1
2DC610:  STREQ.W         R0, [R10]; CCollision::ms_iProcessLineNumCrossings
2DC614:  LDRSH.W         R0, [R6,#4]
2DC618:  ADDS            R4, #1
2DC61A:  ADD.W           R9, R9, #0x14
2DC61E:  ADD.W           R8, R8, #0x10
2DC622:  CMP             R4, R0
2DC624:  BLT             loc_2DC5BC
2DC626:  LDR             R6, [R7,#arg_0]
2DC628:  VLDR            S16, [SP,#0x80+var_64]
2DC62C:  VLDR            S0, [R6]
2DC630:  VCMPE.F32       S16, S0
2DC634:  VMRS            APSR_nzcv, FPSCR
2DC638:  BGE             loc_2DC674
2DC63A:  LDR             R5, [SP,#0x80+var_70]
2DC63C:  ADD             R0, SP, #0x80+var_58
2DC63E:  LDR             R4, [SP,#0x80+var_68]
2DC640:  MOV             R1, R5
2DC642:  MOV             R2, R4
2DC644:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DC648:  LDR             R0, [SP,#0x80+var_50]
2DC64A:  ADD.W           R2, R4, #0x10
2DC64E:  VLDR            D16, [SP,#0x80+var_58]
2DC652:  MOV             R1, R5; CVector *
2DC654:  STR             R0, [R4,#8]
2DC656:  ADD             R0, SP, #0x80+var_58; CMatrix *
2DC658:  VSTR            D16, [R4]
2DC65C:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
2DC660:  VLDR            D16, [SP,#0x80+var_58]
2DC664:  LDR             R0, [SP,#0x80+var_50]
2DC666:  STR             R0, [R4,#0x18]
2DC668:  MOVS            R0, #1
2DC66A:  VSTR            D16, [R4,#0x10]
2DC66E:  VSTR            S16, [R6]
2DC672:  B               loc_2DC676
2DC674:  MOVS            R0, #0
2DC676:  ADD             SP, SP, #0x58 ; 'X'
2DC678:  VPOP            {D8}
2DC67C:  ADD             SP, SP, #4
2DC67E:  POP.W           {R8-R11}
2DC682:  POP             {R4-R7,PC}
