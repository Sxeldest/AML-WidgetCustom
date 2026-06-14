; =========================================================
; Game Engine Function: _ZN22CTaskSimpleGangDriveBy7FireGunEP4CPed
; Address            : 0x4E53DC - 0x4E58CA
; =========================================================

4E53DC:  PUSH            {R4-R7,LR}
4E53DE:  ADD             R7, SP, #0xC
4E53E0:  PUSH.W          {R8,R9,R11}
4E53E4:  SUB             SP, SP, #0x58
4E53E6:  MOV             R8, R0
4E53E8:  MOV             R4, R1
4E53EA:  LDR.W           R0, [R8,#0x30]
4E53EE:  VLDR            D16, [R0,#0x24]
4E53F2:  LDR             R0, [R0,#0x2C]
4E53F4:  STR             R0, [SP,#0x70+var_20]
4E53F6:  VSTR            D16, [SP,#0x70+var_28]
4E53FA:  LDR             R0, [R4,#0x18]
4E53FC:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
4E5400:  MOV             R6, R0
4E5402:  LDR.W           R0, [R4,#0x4AC]
4E5406:  LDR             R1, [R0,#0x14]
4E5408:  MOV             R0, R6
4E540A:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4E540E:  MOV             R5, R0
4E5410:  MOV             R0, R6
4E5412:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4E5416:  ADD.W           R3, R0, R5,LSL#6
4E541A:  ADD             R0, SP, #0x70+var_28
4E541C:  MOVS            R2, #1
4E541E:  MOV             R1, R0
4E5420:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
4E5424:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4E5430)
4E5428:  LDR.W           R1, [R4,#0x590]
4E542C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4E542E:  VLDR            S0, [SP,#0x70+var_28]
4E5432:  VLDR            S2, [SP,#0x70+var_28+4]
4E5436:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4E5438:  LDRSH.W         R2, [R1,#0x26]
4E543C:  VLDR            S4, [SP,#0x70+var_20]
4E5440:  LDR.W           R0, [R0,R2,LSL#2]
4E5444:  LDR.W           R9, [R0,#0x2C]
4E5448:  LDR             R0, [R1,#0x14]
4E544A:  ADD.W           R2, R0, #0x30 ; '0'
4E544E:  CMP             R0, #0
4E5450:  IT EQ
4E5452:  ADDEQ           R2, R1, #4
4E5454:  MOV             R0, R4; this
4E5456:  VLDR            S6, [R2]
4E545A:  VLDR            S8, [R2,#4]
4E545E:  VLDR            S10, [R2,#8]
4E5462:  VSUB.F32        S0, S0, S6
4E5466:  VSUB.F32        S2, S2, S8
4E546A:  VSUB.F32        S4, S4, S10
4E546E:  VSTR            S0, [SP,#0x70+var_40]
4E5472:  VSTR            S2, [SP,#0x70+var_40+4]
4E5476:  VSTR            S4, [SP,#0x70+var_38]
4E547A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4E547E:  CMP             R0, #1
4E5480:  BNE             loc_4E5502
4E5482:  LDR.W           R0, =(TheCamera_ptr - 0x4E548A)
4E5486:  ADD             R0, PC; TheCamera_ptr
4E5488:  LDR             R1, [R0]; TheCamera
4E548A:  LDRB.W          R0, [R1,#(byte_951FFF - 0x951FA8)]
4E548E:  ADD.W           R0, R0, R0,LSL#5
4E5492:  ADD.W           R1, R1, R0,LSL#4
4E5496:  LDRH.W          R1, [R1,#0x17E]
4E549A:  CMP             R1, #0x37 ; '7'
4E549C:  BEQ             loc_4E5572
4E549E:  CMP             R1, #0x31 ; '1'
4E54A0:  BNE.W           loc_4E58B4
4E54A4:  LDR.W           R1, =(TheCamera_ptr - 0x4E54AE)
4E54A8:  LDR             R2, [R4,#0x14]
4E54AA:  ADD             R1, PC; TheCamera_ptr
4E54AC:  ADD.W           R3, R2, #0x30 ; '0'
4E54B0:  CMP             R2, #0
4E54B2:  LDR             R1, [R1]; TheCamera
4E54B4:  IT EQ
4E54B6:  ADDEQ           R3, R4, #4
4E54B8:  VLDR            S0, [R3]
4E54BC:  ADD.W           R0, R1, R0,LSL#4
4E54C0:  VLDR            S2, [R3,#4]
4E54C4:  VLDR            S4, [R3,#8]
4E54C8:  VLDR            S6, [R0,#0x2E4]
4E54CC:  VLDR            S8, [R0,#0x2E8]
4E54D0:  VSUB.F32        S0, S0, S6
4E54D4:  VLDR            S10, [R0,#0x2EC]
4E54D8:  VSUB.F32        S2, S2, S8
4E54DC:  VSUB.F32        S4, S4, S10
4E54E0:  VMUL.F32        S0, S0, S0
4E54E4:  VMUL.F32        S2, S2, S2
4E54E8:  VMUL.F32        S4, S4, S4
4E54EC:  VADD.F32        S0, S0, S2
4E54F0:  VMOV.F32        S2, #20.0
4E54F4:  VADD.F32        S0, S0, S4
4E54F8:  VSQRT.F32       S0, S0
4E54FC:  VADD.F32        S0, S0, S2
4E5500:  B               loc_4E5576
4E5502:  LDR.W           R6, [R8,#0x34]
4E5506:  CBZ             R6, loc_4E5540
4E5508:  LDR             R1, [R6,#0x14]
4E550A:  CBNZ            R1, loc_4E551C
4E550C:  MOV             R0, R6; this
4E550E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4E5512:  LDR             R1, [R6,#0x14]; CMatrix *
4E5514:  ADDS            R0, R6, #4; this
4E5516:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4E551A:  LDR             R1, [R6,#0x14]
4E551C:  ADD.W           R2, R8, #0x38 ; '8'
4E5520:  ADD             R0, SP, #0x70+var_50
4E5522:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4E5526:  VLDR            S0, [SP,#0x70+var_28]
4E552A:  VLDR            S2, [SP,#0x70+var_28+4]
4E552E:  VLDR            S4, [SP,#0x70+var_20]
4E5532:  VLDR            S6, [SP,#0x70+var_50]
4E5536:  VLDR            S8, [SP,#0x70+var_50+4]
4E553A:  VLDR            S10, [SP,#0x70+var_48]
4E553E:  B               loc_4E5558
4E5540:  VLDR            S0, [SP,#0x70+var_28]
4E5544:  VLDR            S2, [SP,#0x70+var_28+4]
4E5548:  VLDR            S4, [SP,#0x70+var_20]
4E554C:  VLDR            S6, [R8,#0x38]
4E5550:  VLDR            S8, [R8,#0x3C]
4E5554:  VLDR            S10, [R8,#0x40]
4E5558:  VSUB.F32        S0, S6, S0
4E555C:  VSUB.F32        S2, S8, S2
4E5560:  VSUB.F32        S4, S10, S4
4E5564:  VSTR            S0, [SP,#0x70+var_34]
4E5568:  VSTR            S2, [SP,#0x70+var_30]
4E556C:  VSTR            S4, [SP,#0x70+var_2C]
4E5570:  B               loc_4E55CA
4E5572:  VMOV.F32        S0, #20.0
4E5576:  VMOV            R1, S0
4E557A:  LDR             R0, =(TheCamera_ptr - 0x4E5584)
4E557C:  ADD             R6, SP, #0x70+var_28
4E557E:  ADD             R5, SP, #0x70+var_34
4E5580:  ADD             R0, PC; TheCamera_ptr
4E5582:  LDM             R6, {R2,R3,R6}
4E5584:  LDR             R0, [R0]; TheCamera
4E5586:  STR             R5, [SP,#0x70+var_68]
4E5588:  ADD             R5, SP, #0x70+var_50
4E558A:  STRD.W          R6, R5, [SP,#0x70+var_70]
4E558E:  BLX             j__ZN7CCamera28Find3rdPersonCamTargetVectorEf7CVectorRS0_S1_; CCamera::Find3rdPersonCamTargetVector(float,CVector,CVector&,CVector&)
4E5592:  VLDR            S0, [SP,#0x70+var_28]
4E5596:  MOVS            R1, #0
4E5598:  VLDR            S6, [SP,#0x70+var_34]
4E559C:  VLDR            S2, [SP,#0x70+var_28+4]
4E55A0:  VLDR            S8, [SP,#0x70+var_30]
4E55A4:  VSUB.F32        S0, S6, S0
4E55A8:  VLDR            S10, [SP,#0x70+var_2C]
4E55AC:  VLDR            S4, [SP,#0x70+var_20]
4E55B0:  VSUB.F32        S2, S8, S2
4E55B4:  VSUB.F32        S4, S10, S4
4E55B8:  VSTR            S0, [SP,#0x70+var_34]
4E55BC:  VSTR            S2, [SP,#0x70+var_30]
4E55C0:  VSTR            S4, [SP,#0x70+var_2C]
4E55C4:  LDR.W           R0, [R4,#0x444]
4E55C8:  STR             R1, [R0,#0x2C]
4E55CA:  ADD             R0, SP, #0x70+var_34; this
4E55CC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4E55D0:  LDR.W           R0, [R8,#0x2C]
4E55D4:  CBZ             R0, loc_4E55E2
4E55D6:  LDRSH.W         R1, [R0,#0x2C]
4E55DA:  CMP             R1, #0xE7
4E55DC:  IT NE
4E55DE:  CMPNE           R1, #0xEC
4E55E0:  BEQ             loc_4E55EA
4E55E2:  LDRB.W          R1, [R8,#0x14]
4E55E6:  CMP             R1, #1
4E55E8:  BNE             loc_4E5666
4E55EA:  LDR.W           R0, [R4,#0x590]
4E55EE:  VLDR            S0, [SP,#0x70+var_34]
4E55F2:  VLDR            S2, [SP,#0x70+var_30]
4E55F6:  LDR             R0, [R0,#0x14]
4E55F8:  VLDR            S4, [SP,#0x70+var_2C]
4E55FC:  VLDR            S6, [R0]
4E5600:  VLDR            S12, [R0,#4]
4E5604:  VMUL.F32        S14, S6, S0
4E5608:  VLDR            S10, [R0,#8]
4E560C:  VMUL.F32        S8, S12, S2
4E5610:  VMUL.F32        S1, S10, S4
4E5614:  VADD.F32        S8, S14, S8
4E5618:  VLDR            S14, =-0.1
4E561C:  VADD.F32        S8, S8, S1
4E5620:  VCMPE.F32       S8, S14
4E5624:  VMRS            APSR_nzcv, FPSCR
4E5628:  BGE.W           loc_4E57FE
4E562C:  VLDR            S14, [SP,#0x70+var_40]
4E5630:  VLDR            S1, [SP,#0x70+var_40+4]
4E5634:  VMUL.F32        S6, S6, S14
4E5638:  VLDR            S3, [SP,#0x70+var_38]
4E563C:  VMUL.F32        S12, S12, S1
4E5640:  VMUL.F32        S10, S10, S3
4E5644:  VADD.F32        S6, S6, S12
4E5648:  VADD.F32        S6, S6, S10
4E564C:  VLDR            S10, [R9]
4E5650:  VSUB.F32        S6, S10, S6
4E5654:  VLDR            S10, =-0.2
4E5658:  VNEG.F32        S8, S8
4E565C:  VADD.F32        S6, S6, S10
4E5660:  VDIV.F32        S6, S6, S8
4E5664:  B               loc_4E56EE
4E5666:  CBZ             R0, loc_4E5674
4E5668:  LDRSH.W         R2, [R0,#0x2C]
4E566C:  CMP             R2, #0xE8
4E566E:  IT NE
4E5670:  CMPNE           R2, #0xEB
4E5672:  BEQ             loc_4E5678
4E5674:  CMP             R1, #3
4E5676:  BNE             loc_4E5720
4E5678:  LDR.W           R0, [R4,#0x590]
4E567C:  VLDR            S0, [SP,#0x70+var_34]
4E5680:  VLDR            S2, [SP,#0x70+var_30]
4E5684:  LDR             R0, [R0,#0x14]
4E5686:  VLDR            S4, [SP,#0x70+var_2C]
4E568A:  VLDR            S8, [R0]
4E568E:  VLDR            S12, [R0,#4]
4E5692:  VMUL.F32        S14, S8, S0
4E5696:  VLDR            S10, [R0,#8]
4E569A:  VMUL.F32        S6, S12, S2
4E569E:  VMUL.F32        S1, S10, S4
4E56A2:  VADD.F32        S6, S14, S6
4E56A6:  VLDR            S14, =0.1
4E56AA:  VADD.F32        S6, S6, S1
4E56AE:  VCMPE.F32       S6, S14
4E56B2:  VMRS            APSR_nzcv, FPSCR
4E56B6:  BLE.W           loc_4E57FE
4E56BA:  VLDR            S14, [SP,#0x70+var_40]
4E56BE:  VLDR            S1, [SP,#0x70+var_40+4]
4E56C2:  VMUL.F32        S8, S8, S14
4E56C6:  VLDR            S3, [SP,#0x70+var_38]
4E56CA:  VMUL.F32        S12, S12, S1
4E56CE:  VMUL.F32        S10, S10, S3
4E56D2:  VADD.F32        S8, S8, S12
4E56D6:  VADD.F32        S8, S8, S10
4E56DA:  VLDR            S10, [R9,#0xC]
4E56DE:  VSUB.F32        S8, S10, S8
4E56E2:  VLDR            S10, =0.2
4E56E6:  VADD.F32        S8, S8, S10
4E56EA:  VDIV.F32        S6, S8, S6
4E56EE:  VMUL.F32        S0, S0, S6
4E56F2:  VLDR            S8, [SP,#0x70+var_28+4]
4E56F6:  VMUL.F32        S2, S2, S6
4E56FA:  VLDR            S10, [SP,#0x70+var_20]
4E56FE:  VMUL.F32        S4, S4, S6
4E5702:  VLDR            S6, [SP,#0x70+var_28]
4E5706:  VADD.F32        S0, S6, S0
4E570A:  VADD.F32        S2, S8, S2
4E570E:  VADD.F32        S4, S10, S4
4E5712:  VSTR            S0, [SP,#0x70+var_40]
4E5716:  VSTR            S2, [SP,#0x70+var_40+4]
4E571A:  VSTR            S4, [SP,#0x70+var_38]
4E571E:  B               loc_4E580A
4E5720:  CBZ             R0, loc_4E572E
4E5722:  LDRSH.W         R0, [R0,#0x2C]
4E5726:  ORR.W           R0, R0, #4
4E572A:  CMP             R0, #0xEE
4E572C:  BEQ             loc_4E5732
4E572E:  CMP             R1, #2
4E5730:  BNE             loc_4E5798
4E5732:  LDR.W           R0, [R4,#0x590]
4E5736:  VLDR            S0, [SP,#0x70+var_34]
4E573A:  VLDR            S2, [SP,#0x70+var_30]
4E573E:  LDR             R0, [R0,#0x14]
4E5740:  VLDR            S4, [SP,#0x70+var_2C]
4E5744:  VLDR            S6, [R0,#0x10]
4E5748:  VLDR            S12, [R0,#0x14]
4E574C:  VMUL.F32        S14, S6, S0
4E5750:  VLDR            S10, [R0,#0x18]
4E5754:  VMUL.F32        S8, S12, S2
4E5758:  VMUL.F32        S1, S10, S4
4E575C:  VADD.F32        S8, S14, S8
4E5760:  VLDR            S14, =-0.1
4E5764:  VADD.F32        S8, S8, S1
4E5768:  VCMPE.F32       S8, S14
4E576C:  VMRS            APSR_nzcv, FPSCR
4E5770:  BGE             loc_4E57FE
4E5772:  VLDR            S14, [SP,#0x70+var_40]
4E5776:  VLDR            S1, [SP,#0x70+var_40+4]
4E577A:  VMUL.F32        S6, S6, S14
4E577E:  VLDR            S3, [SP,#0x70+var_38]
4E5782:  VMUL.F32        S12, S12, S1
4E5786:  VMUL.F32        S10, S10, S3
4E578A:  VADD.F32        S6, S6, S12
4E578E:  VADD.F32        S6, S6, S10
4E5792:  VLDR            S10, [R9,#4]
4E5796:  B               loc_4E5650
4E5798:  LDR.W           R0, [R4,#0x590]
4E579C:  VLDR            S0, [SP,#0x70+var_34]
4E57A0:  VLDR            S2, [SP,#0x70+var_30]
4E57A4:  LDR             R0, [R0,#0x14]
4E57A6:  VLDR            S4, [SP,#0x70+var_2C]
4E57AA:  VLDR            S8, [R0,#0x10]
4E57AE:  VLDR            S12, [R0,#0x14]
4E57B2:  VMUL.F32        S14, S8, S0
4E57B6:  VLDR            S10, [R0,#0x18]
4E57BA:  VMUL.F32        S6, S12, S2
4E57BE:  VMUL.F32        S1, S10, S4
4E57C2:  VADD.F32        S6, S14, S6
4E57C6:  VLDR            S14, =0.1
4E57CA:  VADD.F32        S6, S6, S1
4E57CE:  VCMPE.F32       S6, S14
4E57D2:  VMRS            APSR_nzcv, FPSCR
4E57D6:  BLE             loc_4E57FE
4E57D8:  VLDR            S14, [SP,#0x70+var_40]
4E57DC:  VLDR            S1, [SP,#0x70+var_40+4]
4E57E0:  VMUL.F32        S8, S8, S14
4E57E4:  VLDR            S3, [SP,#0x70+var_38]
4E57E8:  VMUL.F32        S12, S12, S1
4E57EC:  VMUL.F32        S10, S10, S3
4E57F0:  VADD.F32        S8, S8, S12
4E57F4:  VADD.F32        S8, S8, S10
4E57F8:  VLDR            S10, [R9,#0x10]
4E57FC:  B               loc_4E56DE
4E57FE:  VLDR            D16, [SP,#0x70+var_28]
4E5802:  LDR             R0, [SP,#0x70+var_20]
4E5804:  STR             R0, [SP,#0x70+var_38]
4E5806:  VSTR            D16, [SP,#0x70+var_40]
4E580A:  LDR.W           R0, [R4,#0x534]
4E580E:  ORR.W           R0, R0, #1
4E5812:  STR.W           R0, [R4,#0x534]
4E5816:  VLDR            S0, [R8,#0x38]
4E581A:  VCMP.F32        S0, #0.0
4E581E:  VMRS            APSR_nzcv, FPSCR
4E5822:  BNE             loc_4E5840
4E5824:  VLDR            S0, [R8,#0x3C]
4E5828:  VCMP.F32        S0, #0.0
4E582C:  VMRS            APSR_nzcv, FPSCR
4E5830:  BNE             loc_4E5840
4E5832:  VLDR            S0, [R8,#0x40]
4E5836:  VCMP.F32        S0, #0.0
4E583A:  VMRS            APSR_nzcv, FPSCR
4E583E:  BEQ             loc_4E58BC
4E5840:  ADD.W           R0, R8, #0x38 ; '8'
4E5844:  VLDR            D16, [R0]
4E5848:  LDR             R0, [R0,#8]
4E584A:  STR             R0, [SP,#0x70+var_48]
4E584C:  VSTR            D16, [SP,#0x70+var_50]
4E5850:  LDR.W           R6, [R8,#0x34]
4E5854:  CBZ             R6, loc_4E5884
4E5856:  LDR             R1, [R6,#0x14]
4E5858:  CBNZ            R1, loc_4E586A
4E585A:  MOV             R0, R6; this
4E585C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4E5860:  LDR             R1, [R6,#0x14]; CMatrix *
4E5862:  ADDS            R0, R6, #4; this
4E5864:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4E5868:  LDR             R1, [R6,#0x14]
4E586A:  ADD             R0, SP, #0x70+var_60
4E586C:  ADD             R2, SP, #0x70+var_50
4E586E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4E5872:  VLDR            D16, [SP,#0x70+var_60]
4E5876:  LDR             R0, [SP,#0x70+var_58]
4E5878:  STR             R0, [SP,#0x70+var_48]
4E587A:  VSTR            D16, [SP,#0x70+var_50]
4E587E:  LDR.W           R0, [R8,#0x34]
4E5882:  B               loc_4E5886
4E5884:  MOVS            R0, #0
4E5886:  LDRSB.W         R1, [R4,#0x71C]
4E588A:  ADD             R2, SP, #0x70+var_40
4E588C:  ADD             R3, SP, #0x70+var_50
4E588E:  STRD.W          R0, R3, [SP,#0x70+var_70]; CEntity *
4E5892:  RSB.W           R0, R1, R1,LSL#3
4E5896:  STR             R2, [SP,#0x70+var_68]; CVector *
4E5898:  ADD             R2, SP, #0x70+var_28; CVector *
4E589A:  ADD.W           R0, R4, R0,LSL#2
4E589E:  MOV             R1, R4; CEntity *
4E58A0:  ADDW            R0, R0, #0x5A4; this
4E58A4:  MOV             R3, R2; CVector *
4E58A6:  BLX             j__ZN7CWeapon4FireEP7CEntityP7CVectorS3_S1_S3_S3_; CWeapon::Fire(CEntity *,CVector *,CVector *,CEntity *,CVector *,CVector *)
4E58AA:  MOV             R0, R4; this
4E58AC:  MOVS            R1, #0xFA; int
4E58AE:  MOVS            R2, #0; bool
4E58B0:  BLX             j__ZN4CPed10DoGunFlashEib; CPed::DoGunFlash(int,bool)
4E58B4:  ADD             SP, SP, #0x58 ; 'X'
4E58B6:  POP.W           {R8,R9,R11}
4E58BA:  POP             {R4-R7,PC}
4E58BC:  LDR.W           R0, [R8,#0x34]
4E58C0:  ADD             R2, SP, #0x70+var_40
4E58C2:  LDRSB.W         R1, [R4,#0x71C]
4E58C6:  MOVS            R3, #0
4E58C8:  B               loc_4E588E
