; =========================================================
; Game Engine Function: _ZN22CTaskSimpleStealthKill10ManageAnimEP4CPed
; Address            : 0x4E8884 - 0x4E89F8
; =========================================================

4E8884:  PUSH            {R4-R7,LR}
4E8886:  ADD             R7, SP, #0xC
4E8888:  PUSH.W          {R8-R11}
4E888C:  SUB             SP, SP, #0x64
4E888E:  MOV             R4, R0
4E8890:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x4E889A)
4E8892:  MOV             R5, R1
4E8894:  LDR             R1, [R4,#0x10]; int
4E8896:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
4E8898:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
4E889A:  ADD.W           R2, R1, R1,LSL#2
4E889E:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups
4E88A0:  LDR.W           R0, [R0,R2,LSL#2]
4E88A4:  CMP             R0, #0
4E88A6:  ITT NE
4E88A8:  LDRBNE          R0, [R0,#0x10]
4E88AA:  CMPNE           R0, #0
4E88AC:  BNE             loc_4E88E4
4E88AE:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4E88B8)
4E88B0:  VLDR            S0, =50.0
4E88B4:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4E88B6:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4E88B8:  VLDR            S2, [R0]
4E88BC:  LDR             R0, [R4,#0x1C]
4E88BE:  VDIV.F32        S0, S2, S0
4E88C2:  VLDR            S2, =1000.0
4E88C6:  VMUL.F32        S0, S0, S2
4E88CA:  VCVT.U32.F32    S0, S0
4E88CE:  VMOV            R1, S0
4E88D2:  ADD             R0, R1
4E88D4:  MOVW            R1, #0x2711
4E88D8:  CMP             R0, R1
4E88DA:  STR             R0, [R4,#0x1C]
4E88DC:  ITT CS
4E88DE:  MOVCS           R0, #1
4E88E0:  STRBCS          R0, [R4,#0x14]
4E88E2:  B               loc_4E89F0
4E88E4:  LDRB            R0, [R4,#8]
4E88E6:  CBZ             R0, loc_4E88FE
4E88E8:  LDR             R0, [R5,#0x18]; int
4E88EA:  MOV.W           R2, #0x15C; unsigned int
4E88EE:  MOV.W           R3, #0x41000000
4E88F2:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4E88F6:  STR             R0, [R4,#0x18]
4E88F8:  ADD.W           R6, R4, #0x15
4E88FC:  B               loc_4E89E0
4E88FE:  MOV             R6, R4
4E8900:  LDR             R0, [R5,#0x18]; int
4E8902:  LDRB.W          R2, [R6,#0x15]!
4E8906:  CMP             R2, #0
4E8908:  BEQ             loc_4E89D2
4E890A:  MOV.W           R2, #0x15E; unsigned int
4E890E:  MOV.W           R3, #0x41000000
4E8912:  MOV.W           R10, #0x15E
4E8916:  MOV.W           R9, #0x41000000
4E891A:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4E891E:  LDR             R2, =(_ZN28CPedDamageResponseCalculator21ms_fStealthKillDamageE_ptr - 0x4E8930)
4E8920:  MOV.W           R8, #0
4E8924:  STR             R0, [R4,#0x18]
4E8926:  MOV.W           R11, #3
4E892A:  LDR             R1, [R4,#0xC]
4E892C:  ADD             R2, PC; _ZN28CPedDamageResponseCalculator21ms_fStealthKillDamageE_ptr
4E892E:  LDR             R0, [R2]; CPedDamageResponseCalculator::ms_fStealthKillDamage ...
4E8930:  LDRSB.W         R3, [R1,#0x71C]
4E8934:  LDR             R2, [R0]; CPedDamageResponseCalculator::ms_fStealthKillDamage
4E8936:  RSB.W           R0, R3, R3,LSL#3
4E893A:  ADD.W           R0, R1, R0,LSL#2
4E893E:  LDR.W           R3, [R0,#0x5A4]
4E8942:  ADD             R0, SP, #0x80+var_30
4E8944:  STRD.W          R11, R8, [SP,#0x80+var_80]
4E8948:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
4E894C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E8954)
4E894E:  LDR             R1, [R4,#0xC]; this
4E8950:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E8952:  LDRSB.W         R3, [R1,#0x71C]
4E8956:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E8958:  RSB.W           R3, R3, R3,LSL#3
4E895C:  LDR             R2, [R0]; int
4E895E:  LDR.W           R0, [R5,#0x484]
4E8962:  ADD.W           R3, R1, R3,LSL#2
4E8966:  LDR.W           R3, [R3,#0x5A4]; int
4E896A:  UBFX.W          R0, R0, #8, #1
4E896E:  STRD.W          R11, R8, [SP,#0x80+var_80]; int
4E8972:  STRD.W          R8, R0, [SP,#0x80+var_78]; int
4E8976:  ADD.W           R8, SP, #0x80+var_70
4E897A:  MOV             R0, R8; int
4E897C:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
4E8980:  MOV             R1, R5; CPed *
4E8982:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
4E8986:  CMP             R0, #1
4E8988:  BNE             loc_4E89C2
4E898A:  ADD.W           R2, R8, #0x34 ; '4'
4E898E:  ADD             R0, SP, #0x80+var_30; int
4E8990:  MOV             R1, R5; this
4E8992:  MOVS            R3, #1
4E8994:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
4E8998:  LDR             R0, [R4,#0x10]
4E899A:  MOVS            R2, #0; bool
4E899C:  LDRB.W          R1, [SP,#0x80+var_4F]
4E89A0:  STRD.W          R0, R10, [SP,#0x80+var_4C]
4E89A4:  MOV.W           R0, #0x3F800000
4E89A8:  STR.W           R9, [SP,#0x80+var_44]
4E89AC:  STR             R0, [SP,#0x80+var_40]
4E89AE:  ORR.W           R0, R1, #4
4E89B2:  STRB.W          R0, [SP,#0x80+var_4F]
4E89B6:  MOV             R1, R8; CEvent *
4E89B8:  LDR.W           R0, [R5,#0x440]
4E89BC:  ADDS            R0, #0x68 ; 'h'; this
4E89BE:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4E89C2:  ADD             R0, SP, #0x80+var_70; this
4E89C4:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
4E89C8:  ADD             R0, SP, #0x80+var_30; this
4E89CA:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
4E89CE:  LDR             R0, [R4,#0x18]
4E89D0:  B               loc_4E89E0
4E89D2:  MOVW            R2, #0x15D; unsigned int
4E89D6:  MOV.W           R3, #0x41000000
4E89DA:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4E89DE:  STR             R0, [R4,#0x18]
4E89E0:  LDR             R1, =(_ZN22CTaskSimpleStealthKill23FinishAnimStealthKillCBEP21CAnimBlendAssociationPv_ptr - 0x4E89E8)
4E89E2:  MOV             R2, R4; void *
4E89E4:  ADD             R1, PC; _ZN22CTaskSimpleStealthKill23FinishAnimStealthKillCBEP21CAnimBlendAssociationPv_ptr
4E89E6:  LDR             R1, [R1]; CTaskSimpleStealthKill::FinishAnimStealthKillCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4E89E8:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4E89EC:  MOVS            R0, #1
4E89EE:  STRB            R0, [R6]
4E89F0:  ADD             SP, SP, #0x64 ; 'd'
4E89F2:  POP.W           {R8-R11}
4E89F6:  POP             {R4-R7,PC}
