; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimb20ScanToGrabSectorListER8CPtrListP4CPedR7CVectorRfRhbbb
; Address            : 0x53038C - 0x530AE2
; =========================================================

53038C:  PUSH            {R4-R7,LR}
53038E:  ADD             R7, SP, #0xC
530390:  PUSH.W          {R8-R11}
530394:  SUB             SP, SP, #4
530396:  VPUSH           {D8-D15}
53039A:  SUB             SP, SP, #0x90
53039C:  MOV             R8, R0
53039E:  LDR.W           R0, =(byte_9FF854 - 0x5303AC)
5303A2:  STRD.W          R3, R2, [SP,#0xF0+var_94]
5303A6:  MOV             R6, R1
5303A8:  ADD             R0, PC; byte_9FF854
5303AA:  LDRB            R0, [R0]
5303AC:  DMB.W           ISH
5303B0:  TST.W           R0, #1
5303B4:  BNE             loc_5303EA
5303B6:  LDR.W           R0, =(byte_9FF854 - 0x5303BE)
5303BA:  ADD             R0, PC; byte_9FF854 ; __guard *
5303BC:  BLX             j___cxa_guard_acquire
5303C0:  CBZ             R0, loc_5303EA
5303C2:  LDR.W           R0, =(_ZN7CMatrixD2Ev_ptr_0 - 0x5303D0)
5303C6:  MOVS            R3, #0
5303C8:  LDR.W           R1, =(unk_9FF80C - 0x5303D6)
5303CC:  ADD             R0, PC; _ZN7CMatrixD2Ev_ptr_0
5303CE:  LDR.W           R2, =(unk_67A000 - 0x5303DA)
5303D2:  ADD             R1, PC; unk_9FF80C ; obj
5303D4:  LDR             R0, [R0]; CMatrix::~CMatrix() ; lpfunc
5303D6:  ADD             R2, PC; unk_67A000 ; lpdso_handle
5303D8:  STRD.W          R3, R3, [R1,#(dword_9FF84C - 0x9FF80C)]
5303DC:  BLX             __cxa_atexit
5303E0:  LDR.W           R0, =(byte_9FF854 - 0x5303E8)
5303E4:  ADD             R0, PC; byte_9FF854 ; __guard *
5303E6:  BLX             j___cxa_guard_release
5303EA:  LDRD.W          R10, R9, [R7,#arg_8]
5303EE:  LDR.W           R0, [R6,#0x440]; this
5303F2:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
5303F6:  STR             R0, [SP,#0xF0+var_8C]
5303F8:  LDR.W           R0, [R6,#0x444]
5303FC:  CBZ             R0, loc_53040E
5303FE:  LDR.W           R0, [R6,#0x440]; this
530402:  MOV             R5, R6
530404:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
530408:  CBZ             R0, loc_530414
53040A:  MOVS            R4, #0
53040C:  B               loc_530426
53040E:  MOV             R5, R6
530410:  MOVS            R4, #0
530412:  B               loc_530426
530414:  MOVS            R0, #0
530416:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
53041A:  VMOV            S0, R0
53041E:  VCVT.S32.F32    S0, S0
530422:  VMOV            R4, S0
530426:  LDR.W           R0, =(_ZN16CTaskSimpleClimb16ms_ClimbColModelE_ptr - 0x53043A)
53042A:  CMP.W           R9, #0
53042E:  LDR.W           R2, =(_ZN16CTaskSimpleClimb16ms_VaultColModelE_ptr - 0x530440)
530432:  ADD.W           R11, SP, #0xF0+var_6C
530436:  ADD             R0, PC; _ZN16CTaskSimpleClimb16ms_ClimbColModelE_ptr
530438:  LDR.W           R3, =(_ZN16CTaskSimpleClimb18ms_StandupColModelE_ptr - 0x530446)
53043C:  ADD             R2, PC; _ZN16CTaskSimpleClimb16ms_VaultColModelE_ptr
53043E:  LDR             R1, [R5,#0x14]
530440:  LDR             R6, [R0]; CTaskSimpleClimb::ms_ClimbColModel ...
530442:  ADD             R3, PC; _ZN16CTaskSimpleClimb18ms_StandupColModelE_ptr
530444:  MOV             R0, R11
530446:  IT NE
530448:  LDRNE           R6, [R2]; CTaskSimpleClimb::ms_VaultColModel ...
53044A:  CMP.W           R10, #0
53044E:  IT NE
530450:  LDRNE           R6, [R3]; CTaskSimpleClimb::ms_StandupColModel ...
530452:  ADD.W           R2, R6, #0x18
530456:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
53045A:  LDR.W           R8, [R8]
53045E:  CMP.W           R8, #0
530462:  BEQ.W           loc_530578
530466:  LDR             R0, [R7,#arg_4]
530468:  CMP             R4, #1
53046A:  MOV.W           R1, #0
53046E:  VLDR            D8, [SP,#0xF0+var_68]
530472:  VLDR            S18, [SP,#0xF0+var_6C]
530476:  VLDR            S20, [R6,#0x24]
53047A:  IT LT
53047C:  MOVLT           R1, #1
53047E:  IT NE
530480:  MOVNE           R4, #0
530482:  VLDR            S22, =0.05
530486:  AND.W           R2, R4, R0
53048A:  ANDS            R0, R1
53048C:  STR             R0, [SP,#0xF0+var_A4]
53048E:  ADDS            R0, R5, #4
530490:  STR             R0, [SP,#0xF0+var_AC]
530492:  ORRS            R2, R1
530494:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x5304A6)
530498:  ADD.W           R4, R11, #4
53049C:  STR             R2, [SP,#0xF0+var_A8]
53049E:  ORR.W           R2, R10, R9
5304A2:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
5304A4:  LDR.W           R1, =(g_surfaceInfos_ptr - 0x5304B6)
5304A8:  VLDR            S24, =0.0
5304AC:  MOV             R10, R11
5304AE:  LDR.W           R9, [R0]; CWorld::ms_nCurrentScanCode ...
5304B2:  ADD             R1, PC; g_surfaceInfos_ptr
5304B4:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5304C0)
5304B8:  VLDR            S26, =0.3
5304BC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5304BE:  VLDR            S28, =-0.05
5304C2:  VLDR            S30, =0.1
5304C6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5304C8:  STR             R0, [SP,#0xF0+var_74]
5304CA:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x5304D4)
5304CE:  STR             R2, [SP,#0xF0+var_78]
5304D0:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
5304D2:  STR             R4, [SP,#0xF0+var_7C]
5304D4:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
5304D6:  STR             R0, [SP,#0xF0+var_80]
5304D8:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x5304E0)
5304DC:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
5304DE:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
5304E0:  STR             R0, [SP,#0xF0+var_88]
5304E2:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x5304EA)
5304E6:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
5304E8:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
5304EA:  STR             R0, [SP,#0xF0+var_98]
5304EC:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x5304F4)
5304F0:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
5304F2:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
5304F4:  STR             R0, [SP,#0xF0+var_9C]
5304F6:  LDR             R0, [R1]; g_surfaceInfos
5304F8:  STR             R0, [SP,#0xF0+var_A0]
5304FA:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x530506)
5304FE:  LDR.W           R1, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x530508)
530502:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
530504:  ADD             R1, PC; _ZN6CWorld13m_aTempColPtsE_ptr
530506:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
530508:  STR             R0, [SP,#0xF0+var_B0]
53050A:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x530512)
53050E:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
530510:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
530512:  STR             R0, [SP,#0xF0+var_C0]
530514:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x53051C)
530518:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
53051A:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
53051C:  STR             R0, [SP,#0xF0+var_D0]
53051E:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x530526)
530522:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
530524:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
530526:  STR             R0, [SP,#0xF0+var_C4]
530528:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x530530)
53052C:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
53052E:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
530530:  STR             R0, [SP,#0xF0+var_B4]
530532:  LDR.W           R0, =(_ZN16CTaskSimpleClimb19ms_FindEdgeColModelE_ptr - 0x53053A)
530536:  ADD             R0, PC; _ZN16CTaskSimpleClimb19ms_FindEdgeColModelE_ptr
530538:  LDR             R0, [R0]; CTaskSimpleClimb::ms_FindEdgeColModel ...
53053A:  STR             R0, [SP,#0xF0+var_B8]
53053C:  LDR             R0, [R1]; CWorld::m_aTempColPts ...
53053E:  STR             R0, [SP,#0xF0+var_BC]
530540:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x530548)
530544:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
530546:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
530548:  STR             R0, [SP,#0xF0+var_C8]
53054A:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x530552)
53054E:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
530550:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
530552:  STR             R0, [SP,#0xF0+var_CC]
530554:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x53055C)
530558:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
53055A:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
53055C:  STR             R0, [SP,#0xF0+var_D4]
53055E:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x530566)
530562:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
530564:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
530566:  STR             R0, [SP,#0xF0+var_DC]
530568:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x530570)
53056C:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
53056E:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
530570:  STR             R0, [SP,#0xF0+var_D8]
530572:  MOVS            R0, #0
530574:  STR             R0, [SP,#0xF0+var_84]
530576:  B               loc_530890
530578:  MOVS            R0, #0
53057A:  STR             R0, [SP,#0xF0+var_84]
53057C:  B               loc_530A76
53057E:  CMP             R0, #6
530580:  BNE.W           loc_530A6E
530584:  VLDR            S0, [R11,#0x48]
530588:  VLDR            S2, [R11,#0x4C]
53058C:  VMUL.F32        S0, S0, S0
530590:  VLDR            S4, [R11,#0x50]
530594:  VMUL.F32        S2, S2, S2
530598:  VMUL.F32        S4, S4, S4
53059C:  VADD.F32        S0, S0, S2
5305A0:  VADD.F32        S0, S0, S4
5305A4:  VSQRT.F32       S0, S0
5305A8:  VCMPE.F32       S0, S30
5305AC:  VMRS            APSR_nzcv, FPSCR
5305B0:  BLT.W           loc_5308F8
5305B4:  B               loc_530A6E
5305B6:  STR             R6, [SP,#0xF0+var_E0]
5305B8:  LDR             R6, [SP,#0xF0+var_9C]
5305BA:  LDR             R0, [SP,#0xF0+var_A0]; this
5305BC:  LDRB.W          R1, [R6,#0x23]; unsigned int
5305C0:  BLX             j__ZN14SurfaceInfos_c8CanClimbEj; SurfaceInfos_c::CanClimb(uint)
5305C4:  LDRB.W          R1, [R6,#0x21]
5305C8:  CBZ             R0, loc_530630
5305CA:  LDR             R6, [SP,#0xF0+var_E0]
5305CC:  CMP             R1, #0x10
5305CE:  BEQ.W           loc_530A4A
5305D2:  CMP             R1, #4
5305D4:  IT NE
5305D6:  CMPNE           R1, #0xA
5305D8:  BEQ.W           loc_530A86
5305DC:  LDR             R0, [SP,#0xF0+var_A4]
5305DE:  CBZ             R0, loc_53063A
5305E0:  LDR             R0, [SP,#0xF0+var_A8]
5305E2:  CBZ             R0, loc_530652
5305E4:  LDR             R0, [SP,#0xF0+var_B0]
5305E6:  VLDR            S0, [R0,#0x10]
5305EA:  VLDR            S2, [R0,#0x14]
5305EE:  VCMPE.F32       S0, S22
5305F2:  VLDR            S4, [R0,#0x18]
5305F6:  VMRS            APSR_nzcv, FPSCR
5305FA:  BGT             loc_53066A
5305FC:  VCMPE.F32       S0, S28
530600:  VMRS            APSR_nzcv, FPSCR
530604:  BLT             loc_53066A
530606:  VCMPE.F32       S2, S22
53060A:  VMRS            APSR_nzcv, FPSCR
53060E:  BGT             loc_53066A
530610:  VCMPE.F32       S2, S28
530614:  VMRS            APSR_nzcv, FPSCR
530618:  BLT             loc_53066A
53061A:  LDR             R0, [SP,#0xF0+var_D8]
53061C:  LDR             R1, [SP,#0xF0+var_90]
53061E:  VLDR            D16, [R0]
530622:  LDR             R0, [R0,#8]
530624:  STR             R0, [R1,#8]
530626:  VSTR            D16, [R1]
53062A:  LDR.W           R0, [R5,#0x55C]
53062E:  B               loc_530704
530630:  LDR             R6, [SP,#0xF0+var_E0]
530632:  CMP             R1, #0xA
530634:  BLS.W           loc_530A36
530638:  B               loc_530A4A
53063A:  CMP             R1, #0x11
53063C:  BHI             loc_5305E0
53063E:  MOVS            R0, #1
530640:  MOVW            R2, #:lower16:(elf_hash_chain+0x106B8)
530644:  LSLS            R0, R1
530646:  MOVT            R2, #:upper16:(elf_hash_chain+0x106B8)
53064A:  TST             R0, R2
53064C:  BNE.W           loc_530A32
530650:  B               loc_5305E0
530652:  CMP             R1, #0x12
530654:  BHI             loc_5305E4
530656:  MOVS            R0, #1
530658:  LSLS            R0, R1
53065A:  MOV             R1, #0x41040
530662:  TST             R0, R1
530664:  BNE.W           loc_530A4A
530668:  B               loc_5305E4
53066A:  LDR             R1, [R5,#0x14]
53066C:  LDR             R0, [SP,#0xF0+var_AC]
53066E:  CMP             R1, #0
530670:  IT NE
530672:  ADDNE.W         R0, R1, #0x30 ; '0'
530676:  VLDR            S6, [R0]
53067A:  VLDR            S8, [R0,#4]
53067E:  LDR             R0, [SP,#0xF0+var_C0]
530680:  VLDR            S10, [R0]
530684:  VLDR            S12, [R0,#4]
530688:  VSUB.F32        S6, S10, S6
53068C:  VSUB.F32        S8, S12, S8
530690:  VMUL.F32        S10, S4, S24
530694:  VMUL.F32        S6, S0, S6
530698:  VMUL.F32        S8, S2, S8
53069C:  VADD.F32        S6, S6, S8
5306A0:  VADD.F32        S6, S10, S6
5306A4:  VCMPE.F32       S6, #0.0
5306A8:  VMRS            APSR_nzcv, FPSCR
5306AC:  ITTT LT
5306AE:  VNEGLT.F32      S4, S4
5306B2:  VNEGLT.F32      S2, S2
5306B6:  VNEGLT.F32      S0, S0
5306BA:  VLDR            S6, [R1,#0x10]
5306BE:  VLDR            S8, [R1,#0x14]
5306C2:  VLDR            S10, [R1,#0x18]
5306C6:  VMUL.F32        S8, S2, S8
5306CA:  VMUL.F32        S6, S0, S6
5306CE:  VMUL.F32        S4, S4, S10
5306D2:  VADD.F32        S6, S6, S8
5306D6:  VADD.F32        S4, S6, S4
5306DA:  VCMPE.F32       S4, S26
5306DE:  VMRS            APSR_nzcv, FPSCR
5306E2:  BLE             loc_530718
5306E4:  VMOV            R0, S0
5306E8:  LDR             R2, [SP,#0xF0+var_D0]
5306EA:  VMOV            R1, S2; x
5306EE:  LDR             R3, [SP,#0xF0+var_90]
5306F0:  VLDR            D16, [R2]
5306F4:  LDR             R2, [R2,#8]
5306F6:  STR             R2, [R3,#8]
5306F8:  VSTR            D16, [R3]
5306FC:  EOR.W           R0, R0, #0x80000000; y
530700:  BLX             atan2f
530704:  LDR             R1, [SP,#0xF0+var_94]
530706:  STR             R0, [R1]
530708:  LDR             R0, [SP,#0xF0+var_C4]
53070A:  LDR             R1, [R7,#arg_0]
53070C:  LDRB.W          R0, [R0,#0x23]
530710:  STRB            R0, [R1]
530712:  MOV             R0, R11
530714:  LDR             R1, [R5,#0x14]
530716:  STR             R0, [SP,#0xF0+var_84]
530718:  LDR.W           R4, =(unk_9FF80C - 0x530720)
53071C:  ADD             R4, PC; unk_9FF80C
53071E:  MOV             R0, R4
530720:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
530724:  LDR             R0, [SP,#0xF0+var_B4]
530726:  LDM.W           R0, {R1-R3}; float
53072A:  MOV             R0, R4; this
53072C:  BLX             j__ZN7CMatrix16SetTranslateOnlyEfff; CMatrix::SetTranslateOnly(float,float,float)
530730:  LDR.W           R4, [R11,#0x14]
530734:  CBNZ            R4, loc_53074C
530736:  MOV             R0, R11; this
530738:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
53073C:  LDR.W           R1, [R11,#0x14]; CMatrix *
530740:  ADD.W           R0, R11, #4; this
530744:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
530748:  LDR.W           R4, [R11,#0x14]
53074C:  MOV             R0, R11; this
53074E:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
530752:  MOV             R3, R0; int
530754:  LDR             R0, [SP,#0xF0+var_BC]
530756:  STR             R0, [SP,#0xF0+var_F0]; int
530758:  MOVS            R0, #0
53075A:  STRD.W          R0, R0, [SP,#0xF0+var_EC]; int
53075E:  MOV             R2, R4; CMatrix *
530760:  STR             R0, [SP,#0xF0+var_E4]; int
530762:  LDR.W           R0, =(unk_9FF80C - 0x53076C)
530766:  LDR             R1, [SP,#0xF0+var_B8]; int
530768:  ADD             R0, PC; unk_9FF80C ; int
53076A:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
53076E:  CMP             R0, #1
530770:  BLT.W           loc_53088C
530774:  LDR             R0, [SP,#0xF0+var_C8]
530776:  LDR             R4, [SP,#0xF0+var_7C]
530778:  VLDR            S0, [R0,#0x10]
53077C:  VLDR            S2, [R0,#0x14]
530780:  VCMPE.F32       S0, S22
530784:  VLDR            S4, [R0,#0x18]
530788:  VMRS            APSR_nzcv, FPSCR
53078C:  BGT             loc_5307DC
53078E:  VCMPE.F32       S0, S28
530792:  VMRS            APSR_nzcv, FPSCR
530796:  BLT             loc_5307DC
530798:  VCMPE.F32       S2, S22
53079C:  VMRS            APSR_nzcv, FPSCR
5307A0:  BGT             loc_5307DC
5307A2:  VCMPE.F32       S2, S28
5307A6:  VMRS            APSR_nzcv, FPSCR
5307AA:  BLT             loc_5307DC
5307AC:  LDR             R2, [SP,#0xF0+var_DC]
5307AE:  LDR             R1, [SP,#0xF0+var_90]
5307B0:  VLDR            D16, [R2]
5307B4:  LDR             R0, [R2,#8]
5307B6:  STR             R0, [R1,#8]
5307B8:  VSTR            D16, [R1]
5307BC:  LDR             R1, [R7,#arg_0]
5307BE:  LDRB.W          R0, [R2,#0x23]
5307C2:  STRB            R0, [R1]
5307C4:  B               loc_530A4A
5307C6:  ALIGN 4
5307C8:  DCFS 0.05
5307CC:  DCFS 0.0
5307D0:  DCFS 0.3
5307D4:  DCFS -0.05
5307D8:  DCFS 0.1
5307DC:  LDR             R0, [R5,#0x14]
5307DE:  LDR             R1, [SP,#0xF0+var_AC]
5307E0:  CMP             R0, #0
5307E2:  IT NE
5307E4:  ADDNE.W         R1, R0, #0x30 ; '0'
5307E8:  VLDR            S6, [R1]
5307EC:  VLDR            S8, [R1,#4]
5307F0:  LDR             R1, [SP,#0xF0+var_CC]
5307F2:  VLDR            S10, [R1]
5307F6:  VLDR            S12, [R1,#4]
5307FA:  VSUB.F32        S6, S10, S6
5307FE:  VSUB.F32        S8, S12, S8
530802:  VMUL.F32        S10, S4, S24
530806:  VMUL.F32        S6, S0, S6
53080A:  VMUL.F32        S8, S2, S8
53080E:  VADD.F32        S6, S6, S8
530812:  VADD.F32        S6, S10, S6
530816:  VCMPE.F32       S6, #0.0
53081A:  VMRS            APSR_nzcv, FPSCR
53081E:  ITTT LT
530820:  VNEGLT.F32      S4, S4
530824:  VNEGLT.F32      S2, S2
530828:  VNEGLT.F32      S0, S0
53082C:  VLDR            S6, [R0,#0x10]
530830:  VLDR            S8, [R0,#0x14]
530834:  VLDR            S10, [R0,#0x18]
530838:  VMUL.F32        S8, S2, S8
53083C:  VMUL.F32        S6, S0, S6
530840:  VMUL.F32        S4, S4, S10
530844:  VADD.F32        S6, S6, S8
530848:  VADD.F32        S4, S6, S4
53084C:  VCMPE.F32       S4, S26
530850:  VMRS            APSR_nzcv, FPSCR
530854:  BLE.W           loc_530A4A
530858:  VMOV            R0, S0
53085C:  LDR             R6, [SP,#0xF0+var_D4]
53085E:  VMOV            R1, S2; x
530862:  LDR             R3, [SP,#0xF0+var_90]
530864:  VLDR            D16, [R6]
530868:  LDR             R2, [R6,#8]
53086A:  STR             R2, [R3,#8]
53086C:  VSTR            D16, [R3]
530870:  EOR.W           R0, R0, #0x80000000; y
530874:  BLX             atan2f
530878:  LDR             R1, [SP,#0xF0+var_94]
53087A:  STR             R0, [R1]
53087C:  LDR             R1, [R7,#arg_0]
53087E:  LDRB.W          R0, [R6,#0x23]
530882:  LDR             R6, [SP,#0xF0+var_E0]
530884:  STRB            R0, [R1]
530886:  MOV             R0, R11
530888:  STR             R0, [SP,#0xF0+var_84]
53088A:  B               loc_530A4A
53088C:  LDR             R4, [SP,#0xF0+var_7C]
53088E:  B               loc_530A4A
530890:  LDRD.W          R11, R8, [R8]
530894:  LDRH.W          R0, [R9]; CWorld::ms_nCurrentScanCode
530898:  LDRH.W          R1, [R11,#0x30]
53089C:  CMP             R1, R0
53089E:  BEQ.W           loc_530A6E
5308A2:  LDR.W           R1, [R11,#0x1C]
5308A6:  STRH.W          R0, [R11,#0x30]
5308AA:  TST.W           R1, #1
5308AE:  BEQ.W           loc_530A6E
5308B2:  LDRB.W          R0, [R11,#0x3A]
5308B6:  AND.W           R0, R0, #7
5308BA:  CMP             R0, #1
5308BC:  BEQ             loc_5308F8
5308BE:  CMP             R0, #4
5308C0:  BNE             loc_5308DC
5308C2:  LDR.W           R2, [R11,#0x44]
5308C6:  AND.W           R1, R1, #0x40004
5308CA:  AND.W           R3, R2, #4
5308CE:  ORRS            R1, R3
5308D0:  IT NE
5308D2:  MOVNE           R1, #1
5308D4:  CBZ             R1, loc_5308DC
5308D6:  ANDS.W          R1, R2, #0x40 ; '@'
5308DA:  BEQ             loc_5308F8
5308DC:  CMP             R0, #2
5308DE:  BNE.W           loc_530A6E
5308E2:  LDR             R0, [SP,#0xF0+var_78]
5308E4:  CBNZ            R0, loc_5308F8
5308E6:  LDR             R1, [SP,#0xF0+var_8C]
5308E8:  LDR.W           R0, [R11,#0x5A4]
5308EC:  CMP             R1, #0
5308EE:  BEQ.W           loc_53057E
5308F2:  CMP             R0, #5
5308F4:  BNE.W           loc_53057E
5308F8:  MOV             R0, R10; this
5308FA:  MOV             R1, R11
5308FC:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
530900:  VLDR            S0, [SP,#0xF0+var_6C]
530904:  VLDR            D16, [R4]
530908:  VSUB.F32        S0, S18, S0
53090C:  LDRSH.W         R0, [R11,#0x26]
530910:  VSUB.F32        D16, D8, D16
530914:  LDR             R1, [SP,#0xF0+var_74]
530916:  LDR.W           R0, [R1,R0,LSL#2]
53091A:  VMUL.F32        D1, D16, D16
53091E:  VMUL.F32        S0, S0, S0
530922:  LDR             R0, [R0,#0x2C]
530924:  VADD.F32        S0, S0, S2
530928:  VADD.F32        S0, S0, S3
53092C:  VLDR            S2, [R0,#0x24]
530930:  VADD.F32        S2, S20, S2
530934:  VSQRT.F32       S0, S0
530938:  VCMPE.F32       S0, S2
53093C:  VMRS            APSR_nzcv, FPSCR
530940:  BGE.W           loc_530A6E
530944:  LDRB.W          R0, [R11,#0x3A]
530948:  AND.W           R0, R0, #7
53094C:  CMP             R0, #2
53094E:  BNE             loc_530978
530950:  LDR.W           R0, [R11,#0x5A4]
530954:  CMP             R0, #5
530956:  MOV.W           R0, #0xFFFFFFFF
53095A:  STR             R0, [SP,#0xF0+var_70]
53095C:  BNE             loc_53097E
53095E:  MOV             R0, R11; this
530960:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
530964:  LDR             R0, [R0,#0x2C]
530966:  LDRH            R0, [R0]
530968:  STR             R0, [SP,#0xF0+var_70]
53096A:  MOV             R0, R11; this
53096C:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
530970:  LDR             R0, [R0,#0x2C]
530972:  MOVS            R1, #0
530974:  STRH            R1, [R0]
530976:  B               loc_53097E
530978:  MOV.W           R0, #0xFFFFFFFF
53097C:  STR             R0, [SP,#0xF0+var_70]
53097E:  LDR.W           R10, [R11,#0x14]
530982:  LDR             R4, [R5,#0x14]
530984:  CMP.W           R10, #0
530988:  BNE             loc_5309A0
53098A:  MOV             R0, R11; this
53098C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
530990:  LDR.W           R1, [R11,#0x14]; CMatrix *
530994:  ADD.W           R0, R11, #4; this
530998:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
53099C:  LDR.W           R10, [R11,#0x14]
5309A0:  MOV             R0, R11; this
5309A2:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5309A6:  MOV             R3, R0; int
5309A8:  LDR             R0, [SP,#0xF0+var_80]
5309AA:  STR             R0, [SP,#0xF0+var_F0]; int
5309AC:  MOVS            R0, #0
5309AE:  STRD.W          R0, R0, [SP,#0xF0+var_EC]; int
5309B2:  MOV             R1, R6; int
5309B4:  STR             R0, [SP,#0xF0+var_E4]; int
5309B6:  MOV             R0, R4; int
5309B8:  MOV             R2, R10; CMatrix *
5309BA:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
5309BE:  CMP             R0, #1
5309C0:  BLT             loc_530A44
5309C2:  LDR             R0, [SP,#0xF0+var_78]
5309C4:  ADD.W           R10, SP, #0xF0+var_6C
5309C8:  LDR             R4, [SP,#0xF0+var_7C]
5309CA:  CMP             R0, #1
5309CC:  BEQ             loc_530AB4
5309CE:  LDR             R0, [SP,#0xF0+var_88]
5309D0:  LDRB.W          R1, [R0,#0x21]
5309D4:  SUBS            R0, R1, #2
5309D6:  CMP             R0, #2
5309D8:  BCC             loc_530A32
5309DA:  CMP             R1, #2
5309DC:  BCC             loc_530A86
5309DE:  LDR             R0, [SP,#0xF0+var_90]
5309E0:  VLDR            S0, [R0,#8]
5309E4:  LDR             R0, [SP,#0xF0+var_88]
5309E6:  VLDR            S2, [R0,#8]
5309EA:  VCMPE.F32       S2, S0
5309EE:  VMRS            APSR_nzcv, FPSCR
5309F2:  BGT.W           loc_5305B6
5309F6:  LDR             R2, [SP,#0xF0+var_90]
5309F8:  VSUB.F32        S0, S2, S0
5309FC:  LDR             R0, [R5,#0x14]
5309FE:  VLDR            D16, [R2]
530A02:  ADDS            R0, #0x10
530A04:  LDR             R2, [SP,#0xF0+var_98]
530A06:  VLDR            D17, [R2]
530A0A:  VSUB.F32        D16, D17, D16
530A0E:  VLD1.32         {D17}, [R0]!
530A12:  VLDR            S2, [R0]
530A16:  VMUL.F32        D2, D16, D17
530A1A:  VMUL.F32        S0, S0, S2
530A1E:  VADD.F32        S2, S4, S5
530A22:  VADD.F32        S0, S2, S0
530A26:  VCMPE.F32       S0, #0.0
530A2A:  VMRS            APSR_nzcv, FPSCR
530A2E:  BLT.W           loc_5305B6
530A32:  CMP             R1, #0xA
530A34:  BHI             loc_530A4A
530A36:  MOVS            R0, #1
530A38:  LSLS            R0, R1
530A3A:  MOVW            R1, #0x41F
530A3E:  TST             R0, R1
530A40:  BEQ             loc_530A4A
530A42:  B               loc_530A86
530A44:  ADD.W           R10, SP, #0xF0+var_6C
530A48:  LDR             R4, [SP,#0xF0+var_7C]
530A4A:  LDR             R0, [SP,#0xF0+var_70]
530A4C:  MOV.W           R1, #0xFFFFFFFF
530A50:  SXTH            R0, R0
530A52:  CMP             R0, R1
530A54:  BLE             loc_530A6E
530A56:  LDRB.W          R0, [R11,#0x3A]
530A5A:  AND.W           R0, R0, #7
530A5E:  CMP             R0, #2
530A60:  BNE             loc_530A6E
530A62:  MOV             R0, R11; this
530A64:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
530A68:  LDR             R0, [R0,#0x2C]
530A6A:  LDR             R1, [SP,#0xF0+var_70]
530A6C:  STRH            R1, [R0]
530A6E:  CMP.W           R8, #0
530A72:  BNE.W           loc_530890
530A76:  LDR             R0, [SP,#0xF0+var_84]
530A78:  ADD             SP, SP, #0x90
530A7A:  VPOP            {D8-D15}
530A7E:  ADD             SP, SP, #4
530A80:  POP.W           {R8-R11}
530A84:  POP             {R4-R7,PC}
530A86:  LDR             R0, [SP,#0xF0+var_70]
530A88:  MOV.W           R1, #0xFFFFFFFF
530A8C:  SXTH            R0, R0
530A8E:  CMP             R0, R1
530A90:  BLE             loc_530AAE
530A92:  MOVS            R0, #1
530A94:  STR             R0, [SP,#0xF0+var_84]
530A96:  LDRB.W          R0, [R11,#0x3A]
530A9A:  AND.W           R0, R0, #7
530A9E:  CMP             R0, #2
530AA0:  BNE             loc_530A76
530AA2:  MOV             R0, R11; this
530AA4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
530AA8:  LDR             R0, [R0,#0x2C]
530AAA:  LDR             R1, [SP,#0xF0+var_70]
530AAC:  STRH            R1, [R0]
530AAE:  MOVS            R0, #1
530AB0:  STR             R0, [SP,#0xF0+var_84]
530AB2:  B               loc_530A76
530AB4:  LDR             R0, [SP,#0xF0+var_70]
530AB6:  MOV.W           R1, #0xFFFFFFFF
530ABA:  SXTH            R0, R0
530ABC:  CMP             R0, R1
530ABE:  BLE             loc_530ADC
530AC0:  LDRB.W          R0, [R11,#0x3A]
530AC4:  AND.W           R0, R0, #7
530AC8:  CMP             R0, #2
530ACA:  MOV             R0, R11
530ACC:  STR             R0, [SP,#0xF0+var_84]
530ACE:  BNE             loc_530A76
530AD0:  MOV             R0, R11; this
530AD2:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
530AD6:  LDR             R0, [R0,#0x2C]
530AD8:  LDR             R1, [SP,#0xF0+var_70]
530ADA:  STRH            R1, [R0]
530ADC:  STR.W           R11, [SP,#0xF0+var_84]
530AE0:  B               loc_530A76
