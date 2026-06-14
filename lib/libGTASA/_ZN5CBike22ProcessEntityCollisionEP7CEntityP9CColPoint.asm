; =========================================================
; Game Engine Function: _ZN5CBike22ProcessEntityCollisionEP7CEntityP9CColPoint
; Address            : 0x5661D4 - 0x566598
; =========================================================

5661D4:  PUSH            {R4-R7,LR}
5661D6:  ADD             R7, SP, #0xC
5661D8:  PUSH.W          {R8-R11}
5661DC:  SUB             SP, SP, #4
5661DE:  VPUSH           {D8}
5661E2:  SUB             SP, SP, #0xA0
5661E4:  MOV             R4, SP
5661E6:  BFC.W           R4, #0, #4
5661EA:  MOV             SP, R4
5661EC:  STR             R1, [SP,#0xC8+var_A4]
5661EE:  MOV             R8, R2
5661F0:  LDRB.W          R1, [R0,#0x3A]
5661F4:  AND.W           R1, R1, #0xF8
5661F8:  CMP             R1, #0x10
5661FA:  ITTT NE
5661FC:  LDRNE.W         R1, [R0,#0x42C]
566200:  ORRNE.W         R1, R1, #0x1000000
566204:  STRNE.W         R1, [R0,#0x42C]
566208:  STR             R0, [SP,#0xC8+var_A8]
56620A:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
56620E:  LDR             R1, [SP,#0xC8+var_A8]
566210:  MOV             R10, R0
566212:  ADD             R0, SP, #0xC8+var_38
566214:  LDR.W           R11, [R10,#0x2C]
566218:  ADDW            R5, R1, #0x724
56621C:  VLD1.32         {D16-D17}, [R5]
566220:  VST1.64         {D16-D17}, [R0@128]
566224:  LDRB.W          R0, [R1,#0x45]
566228:  TST.W           R0, #0x90
56622C:  LDR             R0, [SP,#0xC8+var_A4]; this
56622E:  BNE             loc_56623C
566230:  LDRB.W          R2, [R0,#0x3A]
566234:  AND.W           R2, R2, #7
566238:  CMP             R2, #3
56623A:  BNE             loc_566242
56623C:  MOVS            R2, #0
56623E:  STRB.W          R2, [R11,#6]
566242:  LDR             R6, [R0,#0x14]
566244:  MOV             R4, R1
566246:  LDR.W           R9, [R1,#0x14]
56624A:  CBNZ            R6, loc_566260
56624C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
566250:  LDR             R0, [SP,#0xC8+var_A4]
566252:  LDR             R1, [R0,#0x14]; CMatrix *
566254:  LDR             R0, [SP,#0xC8+var_A4]
566256:  ADDS            R0, #4; this
566258:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
56625C:  LDR             R0, [SP,#0xC8+var_A4]; this
56625E:  LDR             R6, [R0,#0x14]
566260:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
566264:  ADDW            R1, R4, #0x674
566268:  MOV             R3, R0; int
56626A:  MOVS            R0, #0
56626C:  MOV             R2, R6; CMatrix *
56626E:  STRD.W          R8, R1, [SP,#0xC8+var_C8]; int
566272:  MOV             R1, R10; int
566274:  STRD.W          R5, R0, [SP,#0xC8+var_C0]; int
566278:  MOV             R0, R9; int
56627A:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
56627E:  MOV             R10, R0
566280:  LDR.W           R0, [R4,#0x464]; this
566284:  MOV             LR, R4
566286:  CMP             R0, #0
566288:  ITT NE
56628A:  LDRBNE.W        R1, [LR,#0x7CA]
56628E:  CMPNE           R1, #0
566290:  BEQ.W           loc_5663E0
566294:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
566298:  MOV             R6, R0
56629A:  LDR             R0, =(byte_A02538 - 0x5662A0)
56629C:  ADD             R0, PC; byte_A02538
56629E:  LDRB            R0, [R0]
5662A0:  DMB.W           ISH
5662A4:  TST.W           R0, #1
5662A8:  BNE             loc_5662BC
5662AA:  LDR             R0, =(byte_A02538 - 0x5662B0)
5662AC:  ADD             R0, PC; byte_A02538 ; __guard *
5662AE:  BLX             j___cxa_guard_acquire
5662B2:  CBZ             R0, loc_5662BC
5662B4:  LDR             R0, =(byte_A02538 - 0x5662BA)
5662B6:  ADD             R0, PC; byte_A02538 ; __guard *
5662B8:  BLX             j___cxa_guard_release
5662BC:  LDR             R0, [R6,#0x2C]
5662BE:  LDRB            R0, [R0,#6]
5662C0:  LDRD.W          LR, R4, [SP,#0xC8+var_A8]
5662C4:  CMP             R0, #0
5662C6:  BNE.W           loc_5663E2
5662CA:  LDR.W           R1, [LR,#0x14]; CMatrix *
5662CE:  ADD             R0, SP, #0xC8+var_80; this
5662D0:  MOV             R4, LR
5662D2:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
5662D6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5662E2)
5662D8:  ADD             R2, SP, #0xC8+var_90
5662DA:  LDRSH.W         R1, [R4,#0x26]
5662DE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5662E0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5662E2:  LDR.W           R0, [R0,R1,LSL#2]
5662E6:  LDR             R1, [R0,#0x54]
5662E8:  LDR             R0, [R0,#0x74]
5662EA:  CMP             R1, #5
5662EC:  IT NE
5662EE:  ADDNE           R0, #0x30 ; '0'
5662F0:  VLDR            D16, [R0]
5662F4:  LDR             R0, [R0,#8]
5662F6:  STR             R0, [SP,#0xC8+var_88]
5662F8:  ADD             R0, SP, #0xC8+var_A0; CMatrix *
5662FA:  VSTR            D16, [SP,#0xC8+var_90]
5662FE:  LDR             R1, [R4,#0x14]; CVector *
566300:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
566304:  VLDR            D16, [SP,#0xC8+var_A0]
566308:  LDR             R0, [SP,#0xC8+var_98]
56630A:  STR             R0, [SP,#0xC8+var_88]
56630C:  VSTR            D16, [SP,#0xC8+var_90]
566310:  VLDR            S0, [SP,#0xC8+var_50]
566314:  VLDR            S6, [SP,#0xC8+var_90]
566318:  VLDR            S2, [SP,#0xC8+var_4C]
56631C:  VLDR            S8, [SP,#0xC8+var_90+4]
566320:  VADD.F32        S0, S6, S0
566324:  VLDR            S4, [SP,#0xC8+var_48]
566328:  VLDR            S10, [SP,#0xC8+var_88]
56632C:  VADD.F32        S2, S8, S2
566330:  VADD.F32        S4, S10, S4
566334:  VSTR            S0, [SP,#0xC8+var_50]
566338:  VSTR            S2, [SP,#0xC8+var_4C]
56633C:  VSTR            S4, [SP,#0xC8+var_48]
566340:  LDR.W           R0, [R4,#0x464]; this
566344:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
566348:  LDR             R1, [SP,#0xC8+var_A4]
56634A:  MOV             R9, R0
56634C:  LDR             R6, [R1,#0x14]
56634E:  CBNZ            R6, loc_566366
566350:  MOV             R0, R1; this
566352:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
566356:  LDR             R0, [SP,#0xC8+var_A4]
566358:  LDR             R1, [R0,#0x14]; CMatrix *
56635A:  LDR             R0, [SP,#0xC8+var_A4]
56635C:  ADDS            R0, #4; this
56635E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
566362:  LDR             R1, [SP,#0xC8+var_A4]
566364:  LDR             R6, [R1,#0x14]
566366:  MOV             R0, R1; this
566368:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
56636C:  MOV             R3, R0; int
56636E:  LDR             R0, =(unk_A01FB8 - 0x566378)
566370:  MOVS            R1, #0
566372:  MOV             R2, R6; CMatrix *
566374:  ADD             R0, PC; unk_A01FB8
566376:  STRD.W          R0, R1, [SP,#0xC8+var_C8]; int
56637A:  ADD             R0, SP, #0xC8+var_80; int
56637C:  STRD.W          R1, R1, [SP,#0xC8+var_C0]; int
566380:  MOV             R1, R9; int
566382:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
566386:  MOV             R9, R0
566388:  CMP.W           R9, #1
56638C:  BLT             loc_5663D6
56638E:  LDR             R1, [SP,#0xC8+var_A8]
566390:  LDRB.W          R0, [R1,#0x7CA]
566394:  CMP             R0, #1
566396:  BNE             loc_5663A0
566398:  MOVS            R0, #0
56639A:  STRB.W          R0, [R1,#0x7CA]
56639E:  B               loc_5663D6
5663A0:  CMP.W           R10, #0x1E
5663A4:  BGT             loc_5663D6
5663A6:  LDR             R6, =(unk_A01FB8 - 0x5663B4)
5663A8:  MOV             R4, R8
5663AA:  MOVS            R5, #1
5663AC:  MOV.W           R8, #0x2C ; ','
5663B0:  ADD             R6, PC; unk_A01FB8
5663B2:  LDRB.W          R0, [R6,#0x21]
5663B6:  CBZ             R0, loc_5663C6
5663B8:  MLA.W           R0, R10, R8, R4
5663BC:  MOV             R1, R6
5663BE:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
5663C2:  ADD.W           R10, R10, #1
5663C6:  CMP.W           R10, #0x1E
5663CA:  BGT             loc_5663D6
5663CC:  ADDS            R0, R5, #1
5663CE:  ADDS            R6, #0x2C ; ','
5663D0:  CMP             R5, R9
5663D2:  MOV             R5, R0
5663D4:  BLT             loc_5663B2
5663D6:  ADD             R0, SP, #0xC8+var_80; this
5663D8:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5663DC:  LDR.W           LR, [SP,#0xC8+var_A8]
5663E0:  LDR             R4, [SP,#0xC8+var_A4]
5663E2:  LDRB.W          R0, [R11,#6]
5663E6:  STR.W           R10, [SP,#0xC8+var_B8]
5663EA:  CMP             R0, #0
5663EC:  BEQ.W           loc_56652E
5663F0:  VMOV.F32        S16, #1.0
5663F4:  ADDW            R3, LR, #0x584
5663F8:  ADD.W           R0, LR, #0x1C
5663FC:  MOVW            R10, #0x584
566400:  MOV.W           R9, #0
566404:  MOV.W           R8, #0
566408:  MOV.W           R11, #0
56640C:  MOVS            R6, #0
56640E:  STR             R0, [SP,#0xC8+var_B0]
566410:  ADD.W           R0, R4, #0x1C
566414:  STR             R0, [SP,#0xC8+var_B4]
566416:  STR             R3, [SP,#0xC8+var_AC]
566418:  ADD.W           R0, R3, R11
56641C:  VLDR            S0, [R0,#0x1A0]
566420:  VCMPE.F32       S0, S16
566424:  VMRS            APSR_nzcv, FPSCR
566428:  BGE             loc_566514
56642A:  ADD             R1, SP, #0xC8+var_38
56642C:  ADD             R1, R11
56642E:  VLDR            S2, [R1]
566432:  VCMPE.F32       S0, S2
566436:  VMRS            APSR_nzcv, FPSCR
56643A:  BGE             loc_566514
56643C:  ADD.W           R5, LR, R8
566440:  ADDS            R6, #1
566442:  LDRB.W          R1, [R5,#0x699]
566446:  STRB.W          R1, [LR,R10]
56644A:  LDRB.W          R1, [R4,#0x3A]
56644E:  AND.W           R1, R1, #7
566452:  CMP             R1, #4
566454:  IT NE
566456:  CMPNE           R1, #2
566458:  BNE             loc_5664D6
56645A:  ADD.W           R1, LR, R11
56645E:  STR.W           R4, [R1,#0x7D4]
566462:  ADD.W           R1, R0, #0x250; CEntity **
566466:  MOV             R0, R4; this
566468:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
56646C:  LDR             R4, [SP,#0xC8+var_A4]
56646E:  LDRD.W          R3, LR, [SP,#0xC8+var_AC]
566472:  LDR             R0, [R4,#0x14]
566474:  ADD.W           R1, R3, R8
566478:  ADD.W           R2, R0, #0x30 ; '0'
56647C:  CMP             R0, #0
56647E:  ADD.W           R0, R5, #0x678
566482:  VLDR            S0, [R1,#0xF0]
566486:  IT EQ
566488:  ADDEQ           R2, R4, #4
56648A:  VLDR            S2, [R2]
56648E:  VLDR            S8, [R0]
566492:  ADD.W           R0, R3, R9
566496:  VLDR            S4, [R2,#4]
56649A:  VSUB.F32        S0, S0, S2
56649E:  VLDR            S6, [R2,#8]
5664A2:  VSUB.F32        S2, S8, S4
5664A6:  VLDR            S4, [R1,#0xF8]
5664AA:  ADD.W           R1, LR, R9
5664AE:  VSUB.F32        S4, S4, S6
5664B2:  ADD.W           R1, R1, #0x7E8
5664B6:  VSTR            S0, [R0,#0x260]
5664BA:  VSTR            S2, [R1]
5664BE:  VSTR            S4, [R0,#0x268]
5664C2:  LDRB.W          R0, [R4,#0x3A]
5664C6:  AND.W           R0, R0, #7
5664CA:  CMP             R0, #2
5664CC:  ITT EQ
5664CE:  LDRBEQ.W        R0, [R4,R10]
5664D2:  STRBEQ.W        R0, [LR,R10]
5664D6:  LDRB.W          R0, [R5,#0x697]
5664DA:  STRB.W          R0, [LR,#0xBE]
5664DE:  LDRB.W          R0, [R4,#0x3A]
5664E2:  AND.W           R0, R0, #7
5664E6:  CMP             R0, #1
5664E8:  BNE             loc_566514
5664EA:  STR.W           R4, [LR,#0x490]
5664EE:  LDR             R0, [SP,#0xC8+var_B4]
5664F0:  LDR             R1, [SP,#0xC8+var_B0]
5664F2:  MOV             R3, R0
5664F4:  LDR             R0, [R3]
5664F6:  MOV             R5, R1
5664F8:  LDRD.W          R1, R2, [R5]
5664FC:  LSRS            R0, R0, #0x1E
5664FE:  BFI.W           R1, R0, #0x1E, #1
566502:  STRD.W          R1, R2, [R5]
566506:  LDR             R0, [R3]
566508:  LSRS            R0, R0, #0x1F
56650A:  BFI.W           R1, R0, #0x1F, #1
56650E:  STRD.W          R1, R2, [R5]
566512:  LDR             R3, [SP,#0xC8+var_AC]
566514:  ADD.W           R11, R11, #4
566518:  ADD.W           R9, R9, #0xC
56651C:  ADD.W           R8, R8, #0x2C ; ','
566520:  ADD.W           R10, R10, #1
566524:  CMP.W           R11, #0x10
566528:  BNE.W           loc_566418
56652C:  B               loc_566536
56652E:  MOVS            R0, #4
566530:  MOVS            R6, #0
566532:  STRB.W          R0, [R11,#6]
566536:  LDR             R5, [SP,#0xC8+var_B8]
566538:  CMP             R5, #0
56653A:  IT LE
56653C:  CMPLE           R6, #1
56653E:  BLT             loc_566584
566540:  MOV             R0, LR; this
566542:  MOV             R1, R4; CEntity *
566544:  BLX             j__ZN9CPhysical18AddCollisionRecordEP7CEntity; CPhysical::AddCollisionRecord(CEntity *)
566548:  LDR             R0, [SP,#0xC8+var_A4]; this
56654A:  LDRB.W          R1, [R0,#0x3A]
56654E:  AND.W           R1, R1, #7
566552:  CMP             R1, #1
566554:  BEQ             loc_56655E
566556:  LDR             R1, [SP,#0xC8+var_A8]; CEntity *
566558:  BLX             j__ZN9CPhysical18AddCollisionRecordEP7CEntity; CPhysical::AddCollisionRecord(CEntity *)
56655C:  LDR             R0, [SP,#0xC8+var_A4]
56655E:  LDR             R1, [SP,#0xC8+var_A8]
566560:  CMP             R5, #1
566562:  BLT             loc_566584
566564:  LDRB.W          R2, [R0,#0x3A]
566568:  AND.W           R2, R2, #7
56656C:  CMP             R2, #1
56656E:  BEQ             loc_56657C
566570:  CMP             R2, #4
566572:  BNE             loc_566584
566574:  LDRB.W          R0, [R0,#0x44]
566578:  LSLS            R0, R0, #0x1D
56657A:  BPL             loc_566584
56657C:  LDR             R0, [R1,#0x1C]
56657E:  ORR.W           R0, R0, #0x1000
566582:  STR             R0, [R1,#0x1C]
566584:  SUB.W           R4, R7, #-var_28
566588:  MOV             R0, R5
56658A:  MOV             SP, R4
56658C:  VPOP            {D8}
566590:  ADD             SP, SP, #4
566592:  POP.W           {R8-R11}
566596:  POP             {R4-R7,PC}
