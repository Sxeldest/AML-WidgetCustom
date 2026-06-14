; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarJumpOut10ProcessPedEP4CPed
; Address            : 0x5036BC - 0x5039A2
; =========================================================

5036BC:  PUSH            {R4-R7,LR}
5036BE:  ADD             R7, SP, #0xC
5036C0:  PUSH.W          {R8,R9,R11}
5036C4:  VPUSH           {D8}
5036C8:  SUB             SP, SP, #0x20
5036CA:  MOV             R4, R0
5036CC:  MOV             R5, R1
5036CE:  LDRB            R0, [R4,#8]
5036D0:  CBZ             R0, loc_5036E0
5036D2:  MOVS            R0, #1
5036D4:  ADD             SP, SP, #0x20 ; ' '
5036D6:  VPOP            {D8}
5036DA:  POP.W           {R8,R9,R11}
5036DE:  POP             {R4-R7,PC}
5036E0:  LDR             R0, [R4,#0x10]
5036E2:  CMP             R0, #0
5036E4:  BEQ             loc_5036D2
5036E6:  LDR             R1, [R4,#0xC]
5036E8:  CBZ             R1, loc_503720
5036EA:  VLDR            S2, =0.73333
5036EE:  VLDR            S0, [R1,#0x20]
5036F2:  VCMPE.F32       S0, S2
5036F6:  VMRS            APSR_nzcv, FPSCR
5036FA:  BGE             loc_50370C
5036FC:  LDR.W           R1, [R0,#0x5A0]
503700:  CMP             R1, #9
503702:  ITT NE
503704:  LDRNE.W         R1, [R0,#0x5A4]
503708:  CMPNE           R1, #2
50370A:  BEQ             loc_503720
50370C:  VLDR            S2, =0.45
503710:  VCMPE.F32       S0, S2
503714:  VMRS            APSR_nzcv, FPSCR
503718:  BGE             loc_50375E
50371A:  LDR.W           R0, [R0,#0x5A0]
50371E:  CBNZ            R0, loc_50375E
503720:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x503726)
503722:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
503724:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
503726:  VLDR            S16, [R0]
50372A:  MOV             R0, #0x3F75C28F; x
503732:  VMOV            R1, S16; y
503736:  BLX             powf
50373A:  VMOV            S2, R0
50373E:  VLDR            S0, [R4,#0x14]
503742:  ADD.W           R0, R5, #0x4E8
503746:  VMUL.F32        S0, S2, S0
50374A:  VMUL.F32        S2, S16, S0
50374E:  VSTR            S0, [R4,#0x14]
503752:  VLDR            S0, [R0]
503756:  VADD.F32        S0, S0, S2
50375A:  VSTR            S0, [R0]
50375E:  LDR.W           R0, [R5,#0x484]
503762:  ADDW            R9, R5, #0x484
503766:  TST.W           R0, #0x100
50376A:  BNE             loc_50379C
50376C:  LDR             R1, [R4,#0x10]
50376E:  CBZ             R1, loc_503790
503770:  LDR.W           R1, [R1,#0x5A0]
503774:  CBNZ            R1, loc_503790
503776:  ADD.W           R3, R5, #0x488
50377A:  LDM             R3, {R1-R3}
50377C:  LDR.W           R6, [R5,#0x534]
503780:  ORR.W           R2, R2, #0x100000
503784:  ORR.W           R6, R6, #8
503788:  STR.W           R6, [R5,#0x534]
50378C:  STM.W           R9, {R0-R3}
503790:  LDR             R1, [R4,#0xC]
503792:  MOVS            R0, #0
503794:  CMP             R1, #0
503796:  IT EQ
503798:  MOVEQ           R0, #1
50379A:  B               loc_5036D4
50379C:  LDR             R0, [R4,#0xC]
50379E:  CMP             R0, #0
5037A0:  BEQ             loc_503844
5037A2:  LDR             R6, [R4,#0x10]
5037A4:  VLDR            S0, =0.35
5037A8:  LDR.W           R1, [R6,#0x5A0]
5037AC:  CMP             R1, #9
5037AE:  ITT NE
5037B0:  LDRNE.W         R2, [R6,#0x5A4]
5037B4:  CMPNE           R2, #2
5037B6:  BEQ             loc_5037C4
5037B8:  ADR             R3, dword_5039B4
5037BA:  CMP             R2, #4
5037BC:  IT EQ
5037BE:  ADDEQ           R3, #4
5037C0:  VLDR            S0, [R3]
5037C4:  VLDR            S2, [R0,#0x20]
5037C8:  VCMPE.F32       S2, S0
5037CC:  VMRS            APSR_nzcv, FPSCR
5037D0:  BLE             loc_503890
5037D2:  ADD             R0, SP, #0x40+var_38; this
5037D4:  LDR.W           R8, [R4,#0x18]
5037D8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5037DC:  LDR             R1, =(_ZTV23CTaskSimpleCarSetPedOut_ptr - 0x5037EC)
5037DE:  MOVS            R2, #1
5037E0:  STRD.W          R6, R8, [SP,#0x40+var_30]
5037E4:  ADD.W           R8, R0, #8
5037E8:  ADD             R1, PC; _ZTV23CTaskSimpleCarSetPedOut_ptr
5037EA:  STRB.W          R2, [SP,#0x40+var_28]
5037EE:  MOVS            R2, #0
5037F0:  CMP             R6, #0
5037F2:  LDR             R1, [R1]; `vtable for'CTaskSimpleCarSetPedOut ...
5037F4:  STRB.W          R2, [SP,#0x40+var_23]
5037F8:  STR.W           R2, [SP,#0x40+var_27]
5037FC:  ADD.W           R1, R1, #8
503800:  STR             R1, [SP,#0x40+var_38]
503802:  ITTT NE
503804:  MOVNE           R0, R6; this
503806:  MOVNE           R1, R8; CEntity **
503808:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50380C:  LDRB            R0, [R4,#0x1C]
50380E:  MOV             R1, R5; CPed *
503810:  STRB.W          R0, [SP,#0x40+var_27+3]
503814:  LDRB            R0, [R4,#0x1D]
503816:  STRB.W          R0, [SP,#0x40+var_23]
50381A:  ADD             R0, SP, #0x40+var_38; this
50381C:  BLX             j__ZN23CTaskSimpleCarSetPedOut10ProcessPedEP4CPed; CTaskSimpleCarSetPedOut::ProcessPed(CPed *)
503820:  MOV             R0, R5; this
503822:  BLX             j__ZN13CCarEnterExit16RemoveCarSitAnimERK4CPed; CCarEnterExit::RemoveCarSitAnim(CPed const&)
503826:  LDR             R0, [R4,#0x10]
503828:  LDR             R1, [R0,#0x14]; float
50382A:  CMP             R1, #0
50382C:  VLDR            S16, [R1,#0x28]
503830:  BEQ             loc_5038DE
503832:  LDRD.W          R0, R1, [R1,#0x10]; x
503836:  EOR.W           R0, R0, #0x80000000; y
50383A:  BLX             atan2f
50383E:  VMOV            S0, R0
503842:  B               loc_5038E2
503844:  LDR             R0, [R4,#0x10]
503846:  MOVS            R3, #0x94
503848:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x503858)
50384A:  MOVW            R6, #0x181
50384E:  LDR             R1, [R4,#0x18]
503850:  LDR.W           R0, [R0,#0x388]
503854:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
503856:  BIC.W           R1, R1, #1
50385A:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
50385C:  CMP             R1, #0xA
50385E:  LDRB.W          R0, [R0,#0xDE]
503862:  IT EQ
503864:  MOVEQ.W         R6, #0x180
503868:  MOV             R1, R6; int
50386A:  SMLABB.W        R0, R0, R3, R2; this
50386E:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
503872:  MOV             R1, R0; int
503874:  LDR             R0, [R5,#0x18]; int
503876:  MOV             R2, R6; unsigned int
503878:  MOV.W           R3, #0x41000000
50387C:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
503880:  LDR             R1, =(_ZN21CTaskSimpleCarJumpOut22FinishAnimCarJumpOutCBEP21CAnimBlendAssociationPv_ptr - 0x50388A)
503882:  MOV             R2, R4; void *
503884:  STR             R0, [R4,#0xC]
503886:  ADD             R1, PC; _ZN21CTaskSimpleCarJumpOut22FinishAnimCarJumpOutCBEP21CAnimBlendAssociationPv_ptr
503888:  LDR             R1, [R1]; CTaskSimpleCarJumpOut::FinishAnimCarJumpOutCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50388A:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50388E:  B               loc_50399E
503890:  CMP             R1, #0
503892:  BNE.W           loc_50399E
503896:  LDR.W           R0, [R6,#0x388]
50389A:  MOVS            R3, #0x94
50389C:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5038A8)
50389E:  MOVW            R6, #0x181
5038A2:  LDR             R2, [R4,#0x18]
5038A4:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5038A6:  LDRB.W          R0, [R0,#0xDE]
5038AA:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5038AC:  SMLABB.W        R0, R0, R3, R1; this
5038B0:  BIC.W           R1, R2, #1
5038B4:  CMP             R1, #0xA
5038B6:  IT EQ
5038B8:  MOVEQ.W         R6, #0x180
5038BC:  MOV             R1, R6; int
5038BE:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5038C2:  MOV             R3, R0
5038C4:  LDRD.W          R1, R0, [R4,#0xC]
5038C8:  LDR             R2, [R4,#0x18]
5038CA:  LDR             R4, [R0]
5038CC:  VLDR            S0, [R1,#0x20]
5038D0:  MOV             R1, R5
5038D2:  LDR             R4, [R4,#0x74]
5038D4:  VSTR            S0, [SP,#0x40+var_3C]
5038D8:  STR             R6, [SP,#0x40+var_40]
5038DA:  BLX             R4
5038DC:  B               loc_50399E
5038DE:  VLDR            S0, [R0,#0x10]
5038E2:  VCMPE.F32       S16, #0.0
5038E6:  VMRS            APSR_nzcv, FPSCR
5038EA:  BGE             loc_503900
5038EC:  VLDR            S2, =3.1416
5038F0:  VADD.F32        S0, S0, S2
5038F4:  VMOV            R0, S0; this
5038F8:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
5038FC:  VMOV            S0, R0
503900:  ADDW            R1, R5, #0x55C
503904:  LDR             R0, [R5,#0x14]; this
503906:  VSTR            S0, [R1]
50390A:  ADD.W           R1, R5, #0x560
50390E:  CMP             R0, #0
503910:  VSTR            S0, [R1]
503914:  BEQ             loc_503920
503916:  VMOV            R1, S0; x
50391A:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
50391E:  B               loc_503924
503920:  VSTR            S0, [R5,#0x10]
503924:  LDR             R0, [R4,#0x10]
503926:  VLDR            D16, [R0,#0x48]
50392A:  LDR             R0, [R0,#0x50]
50392C:  STR             R0, [R5,#0x50]
50392E:  VSTR            D16, [R5,#0x48]
503932:  LDR             R0, [R4,#0x10]
503934:  STR.W           R0, [R5,#0x12C]
503938:  LDR.W           R0, [R9,#4]
50393C:  ORR.W           R0, R0, #0x80000000
503940:  STR.W           R0, [R9,#4]
503944:  LDR             R0, [R4,#0x10]
503946:  LDR.W           R1, [R0,#0x5A0]
50394A:  CBNZ            R1, loc_503982
50394C:  LDR             R1, [R4,#0x18]; int
50394E:  ADDW            R0, R0, #0x5B4; this
503952:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
503956:  CBZ             R0, loc_503968
503958:  LDR             R0, [R4,#0x10]
50395A:  LDR             R1, [R4,#0x18]; int
50395C:  ADDW            R0, R0, #0x5B4; this
503960:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
503964:  CMP             R0, #2
503966:  BNE             loc_503982
503968:  LDR             R0, [R4,#0x10]
50396A:  LDR             R1, [R4,#0x18]; int
50396C:  ADDW            R0, R0, #0x5B4; this
503970:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
503974:  LDR             R3, [R4,#0x10]
503976:  ADDS            R2, R0, #1; unsigned int
503978:  LDR             R1, [R4,#0x18]; int
50397A:  ADDW            R0, R3, #0x5B4; this
50397E:  BLX             j__ZN14CDamageManager13SetDoorStatusEij; CDamageManager::SetDoorStatus(int,uint)
503982:  LDR             R0, =(_ZTV23CTaskSimpleCarSetPedOut_ptr - 0x503988)
503984:  ADD             R0, PC; _ZTV23CTaskSimpleCarSetPedOut_ptr
503986:  LDR             R1, [R0]; `vtable for'CTaskSimpleCarSetPedOut ...
503988:  LDR             R0, [SP,#0x40+var_30]; this
50398A:  ADDS            R1, #8
50398C:  STR             R1, [SP,#0x40+var_38]
50398E:  CMP             R0, #0
503990:  ITT NE
503992:  MOVNE           R1, R8; CEntity **
503994:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
503998:  ADD             R0, SP, #0x40+var_38; this
50399A:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
50399E:  MOVS            R0, #0
5039A0:  B               loc_5036D4
