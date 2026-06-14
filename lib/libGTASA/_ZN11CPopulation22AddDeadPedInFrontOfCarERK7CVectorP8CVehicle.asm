; =========================================================
; Game Engine Function: _ZN11CPopulation22AddDeadPedInFrontOfCarERK7CVectorP8CVehicle
; Address            : 0x4CF744 - 0x4CF94E
; =========================================================

4CF744:  PUSH            {R4-R7,LR}
4CF746:  ADD             R7, SP, #0xC
4CF748:  PUSH.W          {R8-R11}
4CF74C:  SUB             SP, SP, #4
4CF74E:  VPUSH           {D8}
4CF752:  SUB.W           SP, SP, #0x5C8
4CF756:  MOV             R6, R0
4CF758:  LDR             R0, =(TheCamera_ptr - 0x4CF762)
4CF75A:  MOV             R9, R1
4CF75C:  MOV             R1, R6; CVector *
4CF75E:  ADD             R0, PC; TheCamera_ptr
4CF760:  MOV.W           R2, #0x40000000; float
4CF764:  LDR             R0, [R0]; TheCamera ; this
4CF766:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
4CF76A:  CMP             R0, #1
4CF76C:  BNE             loc_4CF7B8
4CF76E:  MOV.W           R0, #0xFFFFFFFF; int
4CF772:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4CF776:  LDR             R1, [R0,#0x14]
4CF778:  VLDR            D16, [R6]
4CF77C:  ADD.W           R2, R1, #0x30 ; '0'
4CF780:  CMP             R1, #0
4CF782:  IT EQ
4CF784:  ADDEQ           R2, R0, #4
4CF786:  VLDR            D17, [R2]
4CF78A:  VSUB.F32        D16, D16, D17
4CF78E:  VMUL.F32        D0, D16, D16
4CF792:  VADD.F32        S0, S0, S1
4CF796:  VSQRT.F32       S16, S0
4CF79A:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CF79E:  VLDR            S0, =42.5
4CF7A2:  VMOV            S2, R0
4CF7A6:  VMUL.F32        S0, S2, S0
4CF7AA:  VCMPE.F32       S16, S0
4CF7AE:  VMRS            APSR_nzcv, FPSCR
4CF7B2:  BGE             loc_4CF7B8
4CF7B4:  MOVS            R4, #0
4CF7B6:  B               loc_4CF93C
4CF7B8:  VMOV.F32        S16, #1.0
4CF7BC:  VLDR            S0, [R6,#8]
4CF7C0:  LDRD.W          R0, R1, [R6]; float
4CF7C4:  SUB.W           R3, R7, #-var_2D; float
4CF7C8:  MOVS            R4, #0
4CF7CA:  STR             R4, [SP,#0x5F0+var_5F0]; bool *
4CF7CC:  VADD.F32        S0, S0, S16
4CF7D0:  VMOV            R2, S0; float
4CF7D4:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
4CF7D8:  LDRB.W          R1, [R7,#var_2D]
4CF7DC:  CMP             R1, #0
4CF7DE:  BEQ.W           loc_4CF93C
4CF7E2:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CF7EA)
4CF7E4:  MOVS            R4, #0
4CF7E6:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CF7E8:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4CF7EA:  LDR             R1, [R1,#(dword_91DCD4 - 0x91DCB8)]
4CF7EC:  LDR             R1, [R1,#0x34]
4CF7EE:  CMP             R1, #0
4CF7F0:  BEQ.W           loc_4CF93C
4CF7F4:  VMOV            S0, R0
4CF7F8:  VLDR            S2, [R6,#8]
4CF7FC:  ADD.W           R8, SP, #0x5F0+var_5D8
4CF800:  LDRD.W          R0, R1, [R6]
4CF804:  VADD.F32        S0, S0, S16
4CF808:  STRD.W          R0, R1, [SP,#0x5F0+var_5D8]
4CF80C:  MOVS            R0, #4
4CF80E:  MOVS            R1, #7
4CF810:  MOV             R2, R8
4CF812:  MOVS            R3, #0
4CF814:  VMAX.F32        D0, D1, D0
4CF818:  VSTR            S0, [SP,#0x5F0+var_5D0]
4CF81C:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
4CF820:  MOV             R10, R0
4CF822:  MOVS            R0, #word_28; this
4CF824:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4CF828:  MOV             R5, R0
4CF82A:  MOV.W           R0, #0x40800000
4CF82E:  STRD.W          R0, R4, [SP,#0x5F0+var_5F0]; float
4CF832:  MOV             R0, R5; int
4CF834:  MOVS            R1, #0; int
4CF836:  MOVS            R2, #0; int
4CF838:  MOVS            R3, #0xF; int
4CF83A:  STRD.W          R4, R4, [SP,#0x5F0+var_5E8]; int
4CF83E:  STRD.W          R4, R4, [SP,#0x5F0+var_5E0]; int
4CF842:  BLX             j__ZN15CTaskComplexDieC2E11eWeaponType12AssocGroupId11AnimationIdffbbib; CTaskComplexDie::CTaskComplexDie(eWeaponType,AssocGroupId,AnimationId,float,float,bool,bool,int,bool)
4CF846:  SUB.W           R11, R7, #-var_48
4CF84A:  MOVS            R1, #4; int
4CF84C:  MOV             R2, R5; CTask *
4CF84E:  MOVS            R3, #0; bool
4CF850:  MOV             R0, R11; this
4CF852:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
4CF856:  LDR.W           R0, [R10,#0x440]
4CF85A:  MOV             R1, R11; CEvent *
4CF85C:  MOVS            R2, #0; bool
4CF85E:  ADDS            R0, #0x68 ; 'h'; this
4CF860:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4CF864:  STRH.W          R4, [R10,#0x75E]
4CF868:  ADDW            R1, R10, #0x594; CEntity **
4CF86C:  LDR.W           R0, [R10,#0x488]
4CF870:  STR.W           R9, [R10,#0x594]
4CF874:  ORR.W           R0, R0, #0x400000
4CF878:  STR.W           R0, [R10,#0x488]
4CF87C:  MOV             R0, R9; this
4CF87E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4CF882:  MOVS            R0, #(stderr+1)
4CF884:  SUB.W           R3, R7, #-var_58; int
4CF888:  STRD.W          R4, R4, [R7,#var_58]
4CF88C:  MOV.W           R1, #0x40000000; CVector *
4CF890:  STR.W           R4, [R7,#var_50]
4CF894:  MOVS            R2, #3; float
4CF896:  STRD.W          R0, R0, [SP,#0x5F0+var_5F0]; CEntity **
4CF89A:  STR             R0, [SP,#0x5F0+var_5E8]; unsigned __int8
4CF89C:  MOV             R0, R6; this
4CF89E:  BLX             j__ZN13CPedPlacement21IsPositionClearForPedERK7CVectorfiPP7CEntityhhh; CPedPlacement::IsPositionClearForPed(CVector const&,float,int,CEntity **,uchar,uchar,uchar)
4CF8A2:  CBZ             R0, loc_4CF8DE
4CF8A4:  MOV             R0, R9; this
4CF8A6:  LDR.W           R4, [R9,#0x14]
4CF8AA:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
4CF8AE:  MOV             R1, R0; int
4CF8B0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CF8BA)
4CF8B2:  LDRSH.W         R2, [R10,#0x26]
4CF8B6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CF8B8:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CF8BA:  LDR.W           R0, [R0,R2,LSL#2]
4CF8BE:  LDR.W           R2, [R10,#0x14]; CMatrix *
4CF8C2:  LDR             R3, [R0,#0x2C]; int
4CF8C4:  MOVS            R0, #0
4CF8C6:  STRD.W          R8, R0, [SP,#0x5F0+var_5F0]; int
4CF8CA:  STRD.W          R0, R0, [SP,#0x5F0+var_5E8]; int
4CF8CE:  MOV             R0, R4; int
4CF8D0:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
4CF8D4:  CBZ             R0, loc_4CF928
4CF8D6:  MOV             R0, R10; this
4CF8D8:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4CF8DC:  B               loc_4CF91A
4CF8DE:  LDR.W           R0, [R7,#var_58]
4CF8E2:  CMP             R0, R10
4CF8E4:  IT NE
4CF8E6:  CMPNE           R0, #0
4CF8E8:  BEQ             loc_4CF8EE
4CF8EA:  CMP             R0, R9
4CF8EC:  BNE             loc_4CF90E
4CF8EE:  LDR.W           R0, [R7,#var_54]
4CF8F2:  CMP             R0, R10
4CF8F4:  BEQ             loc_4CF8FE
4CF8F6:  CMP             R0, #0
4CF8F8:  IT NE
4CF8FA:  CMPNE           R0, R9
4CF8FC:  BNE             loc_4CF90E
4CF8FE:  LDR.W           R0, [R7,#var_50]
4CF902:  CMP             R0, R10
4CF904:  IT NE
4CF906:  CMPNE           R0, #0
4CF908:  BEQ             loc_4CF8A4
4CF90A:  CMP             R0, R9
4CF90C:  BEQ             loc_4CF8A4
4CF90E:  MOV             R0, R10; this
4CF910:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4CF914:  CMP.W           R10, #0
4CF918:  BEQ             loc_4CF924
4CF91A:  LDR.W           R0, [R10]
4CF91E:  LDR             R1, [R0,#4]
4CF920:  MOV             R0, R10
4CF922:  BLX             R1
4CF924:  MOVS            R4, #0
4CF926:  B               loc_4CF934
4CF928:  LDR.W           R0, [R10,#0x18]
4CF92C:  MOVS            R1, #0
4CF92E:  BLX             j__ZN18CVisibilityPlugins13SetClumpAlphaEP7RpClumpi; CVisibilityPlugins::SetClumpAlpha(RpClump *,int)
4CF932:  MOV             R4, R10
4CF934:  SUB.W           R0, R7, #-var_48; this
4CF938:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
4CF93C:  MOV             R0, R4
4CF93E:  ADD.W           SP, SP, #0x5C8
4CF942:  VPOP            {D8}
4CF946:  ADD             SP, SP, #4
4CF948:  POP.W           {R8-R11}
4CF94C:  POP             {R4-R7,PC}
