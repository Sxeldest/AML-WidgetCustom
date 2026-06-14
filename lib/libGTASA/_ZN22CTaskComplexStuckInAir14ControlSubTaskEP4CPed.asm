; =========================================================
; Game Engine Function: _ZN22CTaskComplexStuckInAir14ControlSubTaskEP4CPed
; Address            : 0x5325F4 - 0x5328EC
; =========================================================

5325F4:  PUSH            {R4-R7,LR}
5325F6:  ADD             R7, SP, #0xC
5325F8:  PUSH.W          {R8,R9,R11}
5325FC:  SUB             SP, SP, #8; float
5325FE:  MOV             R5, R0
532600:  MOV             R4, R1
532602:  LDR             R6, [R5,#8]
532604:  LDR             R0, [R6]
532606:  LDR             R1, [R0,#0x14]
532608:  MOV             R0, R6
53260A:  BLX             R1
53260C:  CMP             R0, #0xD2
53260E:  BGT             loc_532666
532610:  CMP             R0, #0xCB
532612:  BEQ             loc_532684
532614:  CMP             R0, #0xD0
532616:  BNE.W           loc_5328D0
53261A:  LDR             R0, [R5,#8]
53261C:  LDR             R1, [R0]
53261E:  LDR             R1, [R1,#0xC]
532620:  BLX             R1
532622:  CMP             R0, #0
532624:  BEQ.W           loc_5328D0
532628:  LDR             R0, [R5,#8]
53262A:  LDR             R1, [R0]
53262C:  LDR             R1, [R1,#0xC]
53262E:  BLX             R1
532630:  LDR             R1, [R0]
532632:  LDR             R1, [R1,#0x14]
532634:  BLX             R1
532636:  CMP             R0, #0xCF
532638:  BNE.W           loc_5328D0
53263C:  LDR             R0, [R5,#8]
53263E:  LDR             R1, [R0]
532640:  LDR             R1, [R1,#0xC]
532642:  BLX             R1
532644:  LDRB            R0, [R0,#8]
532646:  CMP             R0, #0
532648:  BEQ.W           loc_5328D0
53264C:  LDR.W           R0, [R4,#0x440]
532650:  LDRH.W          R0, [R0,#0x276]
532654:  CMP             R0, #0
532656:  ITTT NE
532658:  LDRNE.W         R0, [R4,#0x484]
53265C:  ORRNE.W         R0, R0, #1
532660:  STRNE.W         R0, [R4,#0x484]
532664:  B               loc_5328D0
532666:  CMP             R0, #0xD3
532668:  BEQ.W           loc_532856
53266C:  CMP.W           R0, #0x38C
532670:  BNE.W           loc_5328D0
532674:  LDR.W           R0, [R4,#0x440]
532678:  LDRH.W          R0, [R0,#0x276]
53267C:  CMP             R0, #0
53267E:  BNE.W           loc_5328A4
532682:  B               loc_5328D0
532684:  LDR.W           R0, [R4,#0x440]
532688:  LDRH.W          R0, [R0,#0x276]
53268C:  CMP             R0, #0
53268E:  BEQ.W           loc_5328CE
532692:  LDR.W           R0, [R4,#0x444]
532696:  CMP             R0, #0
532698:  BEQ             loc_532738
53269A:  MOV             R0, R4; this
53269C:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
5326A0:  MOV             R8, R0
5326A2:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
5326A6:  MOV             R9, R0
5326A8:  MOV             R0, R8; this
5326AA:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
5326AE:  ORRS.W          R1, R0, R9
5326B2:  BEQ             loc_5326F6
5326B4:  VMOV            S0, R9
5326B8:  MOVS            R1, #0; float
5326BA:  VMOV            S2, R0
5326BE:  VCVT.F32.S32    S0, S0
5326C2:  VCVT.F32.S32    S2, S2
5326C6:  VMOV            R0, S0
5326CA:  VMOV            R3, S2; float
5326CE:  EOR.W           R2, R0, #0x80000000; float
5326D2:  MOVS            R0, #0; this
5326D4:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
5326D8:  LDR             R1, =(TheCamera_ptr - 0x5326E2)
5326DA:  VMOV            S0, R0
5326DE:  ADD             R1, PC; TheCamera_ptr
5326E0:  LDR             R1, [R1]; TheCamera ; float
5326E2:  VLDR            S2, [R1,#0x14C]
5326E6:  VSUB.F32        S0, S0, S2
5326EA:  VMOV            R0, S0; this
5326EE:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
5326F2:  STR.W           R0, [R4,#0x560]
5326F6:  MOV             R0, R8; this
5326F8:  BLX             j__ZN4CPad12JumpJustDownEv; CPad::JumpJustDown(void)
5326FC:  CMP             R0, #1
5326FE:  BNE             loc_532738
532700:  LDR.W           R0, [R4,#0x440]
532704:  MOV.W           R8, #0
532708:  LDR.W           R1, [R4,#0x484]
53270C:  ORR.W           R1, R1, #1; unsigned int
532710:  STR.W           R1, [R4,#0x484]
532714:  STR.W           R8, [R0,#0x274]
532718:  MOVS            R0, #dword_14; this
53271A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53271E:  MOV             R6, R0
532720:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
532724:  LDR             R0, =(_ZTV16CTaskComplexJump_ptr - 0x532730)
532726:  MOV.W           R1, #0xFFFFFFFF
53272A:  STR             R1, [R6,#0xC]
53272C:  ADD             R0, PC; _ZTV16CTaskComplexJump_ptr
53272E:  LDR             R0, [R0]; `vtable for'CTaskComplexJump ...
532730:  ADDS            R0, #8
532732:  STR             R0, [R6]
532734:  STRB.W          R8, [R6,#0x10]
532738:  LDR.W           R1, [R4,#0x484]
53273C:  MOVW            R2, #0x201
532740:  LDR             R0, [R4,#0x18]
532742:  BICS            R1, R2
532744:  ORR.W           R1, R1, #1
532748:  STR.W           R1, [R4,#0x484]
53274C:  MOVS            R1, #0x74 ; 't'
53274E:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
532752:  CBZ             R0, loc_532776
532754:  VLDR            S0, [R0,#0x18]
532758:  VCMPE.F32       S0, #0.0
53275C:  VMRS            APSR_nzcv, FPSCR
532760:  BLE             loc_532776
532762:  VLDR            S0, [R0,#0x1C]
532766:  VCMPE.F32       S0, #0.0
53276A:  VMRS            APSR_nzcv, FPSCR
53276E:  ITT GE
532770:  MOVGE.W         R1, #0xC1000000
532774:  STRGE           R1, [R0,#0x1C]
532776:  LDR             R0, [R4,#0x18]
532778:  MOVS            R1, #0x75 ; 'u'
53277A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
53277E:  CBZ             R0, loc_5327A2
532780:  VLDR            S0, [R0,#0x18]
532784:  VCMPE.F32       S0, #0.0
532788:  VMRS            APSR_nzcv, FPSCR
53278C:  BLE             loc_5327A2
53278E:  VLDR            S0, [R0,#0x1C]
532792:  VCMPE.F32       S0, #0.0
532796:  VMRS            APSR_nzcv, FPSCR
53279A:  ITT GE
53279C:  MOVGE.W         R1, #0xC1000000
5327A0:  STRGE           R1, [R0,#0x1C]
5327A2:  LDR             R0, [R4,#0x18]
5327A4:  MOVS            R1, #0x76 ; 'v'
5327A6:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5327AA:  CBZ             R0, loc_5327CE
5327AC:  VLDR            S0, [R0,#0x18]
5327B0:  VCMPE.F32       S0, #0.0
5327B4:  VMRS            APSR_nzcv, FPSCR
5327B8:  BLE             loc_5327CE
5327BA:  VLDR            S0, [R0,#0x1C]
5327BE:  VCMPE.F32       S0, #0.0
5327C2:  VMRS            APSR_nzcv, FPSCR
5327C6:  ITT GE
5327C8:  MOVGE.W         R1, #0xC1000000
5327CC:  STRGE           R1, [R0,#0x1C]
5327CE:  LDR             R0, [R4,#0x18]
5327D0:  MOVS            R1, #0x77 ; 'w'
5327D2:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5327D6:  CBZ             R0, loc_5327FA
5327D8:  VLDR            S0, [R0,#0x18]
5327DC:  VCMPE.F32       S0, #0.0
5327E0:  VMRS            APSR_nzcv, FPSCR
5327E4:  BLE             loc_5327FA
5327E6:  VLDR            S0, [R0,#0x1C]
5327EA:  VCMPE.F32       S0, #0.0
5327EE:  VMRS            APSR_nzcv, FPSCR
5327F2:  ITT GE
5327F4:  MOVGE.W         R1, #0xC1000000
5327F8:  STRGE           R1, [R0,#0x1C]
5327FA:  LDR             R0, [R4,#0x18]
5327FC:  MOVS            R1, #0x78 ; 'x'
5327FE:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
532802:  CBZ             R0, loc_532826
532804:  VLDR            S0, [R0,#0x18]
532808:  VCMPE.F32       S0, #0.0
53280C:  VMRS            APSR_nzcv, FPSCR
532810:  BLE             loc_532826
532812:  VLDR            S0, [R0,#0x1C]
532816:  VCMPE.F32       S0, #0.0
53281A:  VMRS            APSR_nzcv, FPSCR
53281E:  ITT GE
532820:  MOVGE.W         R1, #0xC1000000
532824:  STRGE           R1, [R0,#0x1C]
532826:  LDR             R0, [R4,#0x18]
532828:  MOVS            R1, #0x79 ; 'y'
53282A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
53282E:  CMP             R0, #0
532830:  BEQ             loc_5328D0
532832:  VLDR            S0, [R0,#0x18]
532836:  VCMPE.F32       S0, #0.0
53283A:  VMRS            APSR_nzcv, FPSCR
53283E:  BLE             loc_5328D0
532840:  VLDR            S0, [R0,#0x1C]
532844:  VCMPE.F32       S0, #0.0
532848:  VMRS            APSR_nzcv, FPSCR
53284C:  ITT GE
53284E:  MOVGE.W         R1, #0xC1000000
532852:  STRGE           R1, [R0,#0x1C]
532854:  B               loc_5328D0
532856:  LDR.W           R0, [R4,#0x440]
53285A:  LDRH.W          R0, [R0,#0x276]
53285E:  CBZ             R0, loc_5328D0
532860:  LDR             R0, [R5,#8]
532862:  LDR             R1, [R0]
532864:  LDR             R1, [R1,#0xC]
532866:  BLX             R1
532868:  CBZ             R0, loc_5328D0
53286A:  LDR             R0, [R5,#8]
53286C:  LDR             R1, [R0]
53286E:  LDR             R1, [R1,#0xC]
532870:  BLX             R1
532872:  LDR             R1, [R0]
532874:  LDR             R1, [R1,#0x14]
532876:  BLX             R1
532878:  CMP             R0, #0xF1
53287A:  BEQ             loc_5328A4
53287C:  LDR             R0, [R5,#8]
53287E:  LDR             R1, [R0]
532880:  LDR             R1, [R1,#0xC]
532882:  BLX             R1
532884:  LDR             R1, [R0]
532886:  LDR             R1, [R1,#0xC]
532888:  BLX             R1
53288A:  CBZ             R0, loc_5328D0
53288C:  LDR             R0, [R5,#8]
53288E:  LDR             R1, [R0]
532890:  LDR             R1, [R1,#0xC]
532892:  BLX             R1
532894:  LDR             R1, [R0]
532896:  LDR             R1, [R1,#0xC]
532898:  BLX             R1
53289A:  LDR             R1, [R0]
53289C:  LDR             R1, [R1,#0x14]
53289E:  BLX             R1
5328A0:  CMP             R0, #0xF1
5328A2:  BNE             loc_5328D0
5328A4:  LDR.W           R0, [R4,#0x484]
5328A8:  ORR.W           R0, R0, #1
5328AC:  STR.W           R0, [R4,#0x484]
5328B0:  MOVS            R0, #dword_20; this
5328B2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5328B6:  MOV             R6, R0
5328B8:  MOV.W           R0, #0x41000000
5328BC:  STR             R0, [SP,#0x20+var_20]; float
5328BE:  MOV             R0, R6; this
5328C0:  MOVW            R1, #0x1388; int
5328C4:  MOVS            R2, #0; bool
5328C6:  MOVS            R3, #0; bool
5328C8:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5328CC:  B               loc_5328D0
5328CE:  MOVS            R6, #0
5328D0:  LDR             R0, [R5,#8]
5328D2:  CMP             R6, R0
5328D4:  BEQ             loc_5328E2
5328D6:  LDR             R1, [R0]
5328D8:  MOVS            R2, #1
5328DA:  MOVS            R3, #0
5328DC:  LDR             R5, [R1,#0x1C]
5328DE:  MOV             R1, R4
5328E0:  BLX             R5
5328E2:  MOV             R0, R6
5328E4:  ADD             SP, SP, #8
5328E6:  POP.W           {R8,R9,R11}
5328EA:  POP             {R4-R7,PC}
