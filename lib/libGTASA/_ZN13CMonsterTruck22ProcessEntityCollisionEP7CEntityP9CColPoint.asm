; =========================================================
; Game Engine Function: _ZN13CMonsterTruck22ProcessEntityCollisionEP7CEntityP9CColPoint
; Address            : 0x575600 - 0x57587A
; =========================================================

575600:  PUSH            {R4-R7,LR}
575602:  ADD             R7, SP, #0xC
575604:  PUSH.W          {R8-R11}
575608:  SUB             SP, SP, #0x3C
57560A:  STR             R1, [SP,#0x58+var_3C]
57560C:  MOV             R4, R0
57560E:  LDRB.W          R0, [R4,#0x3A]
575612:  MOV             R8, R2
575614:  AND.W           R0, R0, #0xF8
575618:  CMP             R0, #0x10
57561A:  ITTT NE
57561C:  LDRNE.W         R0, [R4,#0x42C]
575620:  ORRNE.W         R0, R0, #0x1000000
575624:  STRNE.W         R0, [R4,#0x42C]
575628:  MOV             R0, R4; this
57562A:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
57562E:  MOV             R10, R0
575630:  ADDW            R0, R4, #0x84C
575634:  VLD1.32         {D16-D17}, [R0]
575638:  ADD             R0, SP, #0x58+var_30
57563A:  LDR.W           R11, [R10,#0x2C]
57563E:  VST1.64         {D16-D17}, [R0]
575642:  LDRB.W          R0, [R4,#0x45]
575646:  TST.W           R0, #0x90
57564A:  LDR             R0, [SP,#0x58+var_3C]; this
57564C:  BNE             loc_57565A
57564E:  LDRB.W          R1, [R0,#0x3A]
575652:  AND.W           R1, R1, #7
575656:  CMP             R1, #3
575658:  BNE             loc_575660
57565A:  MOVS            R1, #0
57565C:  STRB.W          R1, [R11,#6]
575660:  LDR             R6, [R0,#0x14]
575662:  LDR.W           R9, [R4,#0x14]
575666:  CBNZ            R6, loc_57567C
575668:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
57566C:  LDR             R0, [SP,#0x58+var_3C]
57566E:  LDR             R1, [R0,#0x14]; CMatrix *
575670:  LDR             R0, [SP,#0x58+var_3C]
575672:  ADDS            R0, #4; this
575674:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
575678:  LDR             R0, [SP,#0x58+var_3C]; this
57567A:  LDR             R6, [R0,#0x14]
57567C:  MOV             R5, R0
57567E:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
575682:  MOV             R3, R0; int
575684:  ADD.W           R0, R4, #0x738
575688:  MOVS            R1, #0
57568A:  MOV             R2, R6; CMatrix *
57568C:  STRD.W          R8, R0, [SP,#0x58+var_58]; int
575690:  ADD             R0, SP, #0x58+var_30
575692:  STRD.W          R0, R1, [SP,#0x58+var_50]; int
575696:  MOV             R0, R9; int
575698:  MOV             R1, R10; int
57569A:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
57569E:  MOV             R12, R0
5756A0:  LDRB.W          R0, [R11,#6]
5756A4:  STR.W           R12, [SP,#0x58+var_40]
5756A8:  CMP             R0, #0
5756AA:  BEQ.W           loc_575810
5756AE:  ADDW            R0, R4, #0x914
5756B2:  STR             R0, [SP,#0x58+var_44]
5756B4:  ADD.W           R0, R5, #0x1C
5756B8:  STR             R0, [SP,#0x58+var_48]
5756BA:  ADD.W           R0, R4, #0x1C
5756BE:  ADD.W           LR, SP, #0x58+var_30
5756C2:  STR             R0, [SP,#0x58+var_38]
5756C4:  MOVS            R0, #0
5756C6:  MOVW            R8, #0x584
5756CA:  MOV.W           R11, #0
5756CE:  MOV.W           R10, #0
5756D2:  MOVS            R6, #0
5756D4:  MOV             R3, R5
5756D6:  STR             R0, [SP,#0x58+var_34]
5756D8:  ADD.W           R1, LR, R6
5756DC:  ADDS            R0, R4, R6
5756DE:  VLDR            S0, [R1]
5756E2:  ADDW            R1, R0, #0x84C
5756E6:  VLDR            S2, [R1]
5756EA:  VCMPE.F32       S0, S2
5756EE:  VMRS            APSR_nzcv, FPSCR
5756F2:  BLE.W           loc_5757FA
5756F6:  CMP.W           R12, #0
5756FA:  BEQ             loc_575706
5756FC:  LDR             R2, [SP,#0x58+var_38]
5756FE:  LDR             R2, [R2]
575700:  ANDS.W          R2, R2, #1
575704:  BEQ             loc_5757FA
575706:  MOVS            R2, #0
575708:  ADD.W           R5, R4, R10
57570C:  STR.W           R2, [R0,#0x7E8]
575710:  VSTR            S0, [R1]
575714:  LDRB.W          R1, [R5,#0x75D]
575718:  STRB.W          R1, [R4,R8]
57571C:  LDRB.W          R1, [R3,#0x3A]
575720:  LDR             R2, [SP,#0x58+var_34]
575722:  AND.W           R1, R1, #7
575726:  CMP             R1, #4
575728:  ADD.W           R2, R2, #1
57572C:  STR             R2, [SP,#0x58+var_34]
57572E:  IT NE
575730:  CMPNE           R1, #2
575732:  BNE             loc_5757BA
575734:  STR.W           R3, [R0,#0x8FC]
575738:  LDR.W           R9, [SP,#0x58+var_44]
57573C:  ADD.W           R0, R9, R6
575740:  SUB.W           R1, R0, #0x18; CEntity **
575744:  MOV             R0, R3; this
575746:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
57574A:  LDRD.W          R12, R3, [SP,#0x58+var_40]
57574E:  ADD.W           R1, R5, #0x738
575752:  LDR             R0, [R3,#0x14]
575754:  ADD.W           LR, SP, #0x58+var_30
575758:  VLDR            S0, [R1]
57575C:  ADD.W           R1, R0, #0x30 ; '0'
575760:  CMP             R0, #0
575762:  ADDW            R0, R5, #0x73C
575766:  IT EQ
575768:  ADDEQ           R1, R3, #4
57576A:  VLDR            S2, [R1]
57576E:  VLDR            S8, [R0]
575772:  ADD.W           R0, R5, #0x740
575776:  VLDR            S4, [R1,#4]
57577A:  VSUB.F32        S0, S0, S2
57577E:  VLDR            S6, [R1,#8]
575782:  ADD.W           R1, R4, R11
575786:  VSUB.F32        S2, S8, S4
57578A:  VLDR            S4, [R0]
57578E:  ADD.W           R0, R9, R11
575792:  ADD.W           R1, R1, #0x910
575796:  VSUB.F32        S4, S4, S6
57579A:  VSTR            S0, [R0,#-8]
57579E:  VSTR            S2, [R1]
5757A2:  VSTR            S4, [R0]
5757A6:  LDRB.W          R0, [R3,#0x3A]
5757AA:  AND.W           R0, R0, #7
5757AE:  CMP             R0, #2
5757B0:  ITT EQ
5757B2:  LDRBEQ.W        R0, [R3,R8]
5757B6:  STRBEQ.W        R0, [R4,R8]
5757BA:  LDRB.W          R0, [R5,#0x75B]
5757BE:  STRB.W          R0, [R4,#0xBE]
5757C2:  LDRB.W          R0, [R3,#0x3A]
5757C6:  AND.W           R0, R0, #7
5757CA:  CMP             R0, #1
5757CC:  BNE             loc_5757FA
5757CE:  STR.W           R3, [R4,#0x490]
5757D2:  MOV             R9, R12
5757D4:  LDR             R0, [SP,#0x58+var_48]
5757D6:  LDR             R1, [SP,#0x58+var_38]
5757D8:  MOV             R5, R0
5757DA:  LDR             R0, [R5]
5757DC:  MOV             R12, R1
5757DE:  LDRD.W          R1, R2, [R12]
5757E2:  LSRS            R0, R0, #0x1E
5757E4:  BFI.W           R1, R0, #0x1E, #1
5757E8:  STRD.W          R1, R2, [R12]
5757EC:  LDR             R0, [R5]
5757EE:  LSRS            R0, R0, #0x1F
5757F0:  BFI.W           R1, R0, #0x1F, #1
5757F4:  STRD.W          R1, R2, [R12]
5757F8:  MOV             R12, R9
5757FA:  ADDS            R6, #4
5757FC:  ADD.W           R11, R11, #0xC
575800:  ADD.W           R8, R8, #1
575804:  ADD.W           R10, R10, #0x2C ; ','
575808:  CMP             R6, #0x10
57580A:  BNE.W           loc_5756D8
57580E:  B               loc_57581C
575810:  MOVS            R0, #4
575812:  MOV             R3, R5
575814:  STRB.W          R0, [R11,#6]
575818:  MOVS            R0, #0
57581A:  STR             R0, [SP,#0x58+var_34]
57581C:  CMP.W           R12, #0
575820:  ITT LE
575822:  LDRLE           R0, [SP,#0x58+var_34]
575824:  CMPLE           R0, #1
575826:  BLT             loc_575870
575828:  MOV             R0, R4; this
57582A:  MOV             R1, R3; CEntity *
57582C:  BLX             j__ZN9CPhysical18AddCollisionRecordEP7CEntity; CPhysical::AddCollisionRecord(CEntity *)
575830:  LDR             R0, [SP,#0x58+var_3C]; this
575832:  LDRB.W          R1, [R0,#0x3A]
575836:  AND.W           R1, R1, #7
57583A:  CMP             R1, #1
57583C:  BEQ             loc_575846
57583E:  MOV             R1, R4; CEntity *
575840:  BLX             j__ZN9CPhysical18AddCollisionRecordEP7CEntity; CPhysical::AddCollisionRecord(CEntity *)
575844:  LDR             R0, [SP,#0x58+var_3C]
575846:  LDR.W           R12, [SP,#0x58+var_40]
57584A:  CMP.W           R12, #1
57584E:  BLT             loc_575870
575850:  LDRB.W          R1, [R0,#0x3A]
575854:  AND.W           R1, R1, #7
575858:  CMP             R1, #1
57585A:  BEQ             loc_575868
57585C:  CMP             R1, #4
57585E:  BNE             loc_575870
575860:  LDRB.W          R0, [R0,#0x44]
575864:  LSLS            R0, R0, #0x1D
575866:  BPL             loc_575870
575868:  LDR             R0, [R4,#0x1C]
57586A:  ORR.W           R0, R0, #0x1000
57586E:  STR             R0, [R4,#0x1C]
575870:  MOV             R0, R12
575872:  ADD             SP, SP, #0x3C ; '<'
575874:  POP.W           {R8-R11}
575878:  POP             {R4-R7,PC}
