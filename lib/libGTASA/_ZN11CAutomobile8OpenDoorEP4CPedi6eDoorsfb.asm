; =========================================================
; Game Engine Function: _ZN11CAutomobile8OpenDoorEP4CPedi6eDoorsfb
; Address            : 0x550784 - 0x550A1C
; =========================================================

550784:  PUSH            {R4-R7,LR}
550786:  ADD             R7, SP, #0xC
550788:  PUSH.W          {R8-R11}
55078C:  SUB             SP, SP, #4
55078E:  VPUSH           {D8-D11}
550792:  SUB             SP, SP, #0x88
550794:  MOV             R5, R0
550796:  ADD.W           R6, R5, R2,LSL#2
55079A:  MOV             R11, R3
55079C:  MOV             R8, R1
55079E:  LDR.W           R0, [R6,#0x65C]
5507A2:  CMP             R0, #0
5507A4:  BEQ.W           loc_550A0E
5507A8:  ADD.W           R1, R0, #0x10
5507AC:  ADD             R0, SP, #0xC8+var_88
5507AE:  MOVS            R2, #0
5507B0:  LDR.W           R10, [R7,#arg_4]
5507B4:  VLDR            S22, [R7,#arg_0]
5507B8:  MOVS            R4, #0
5507BA:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
5507BE:  ADD.W           R0, R11, R11,LSL#1
5507C2:  VLDR            S16, [SP,#0xC8+var_58]
5507C6:  VLDR            S18, [SP,#0xC8+var_54]
5507CA:  ADD.W           R9, R5, R0,LSL#3
5507CE:  VLDR            S20, [SP,#0xC8+var_50]
5507D2:  STRD.W          R4, R4, [SP,#0xC8+var_98]
5507D6:  STR             R4, [SP,#0xC8+var_90]
5507D8:  ADDW            R4, R9, #0x5CC
5507DC:  MOV             R0, R4; this
5507DE:  BLX             j__ZNK5CDoor8IsClosedEv; CDoor::IsClosed(void)
5507E2:  CMP             R0, #1
5507E4:  BNE             loc_5508C0
5507E6:  LDR             R1, =(_ZN17CVehicleModelInfo17ClearAtomicFlagCBEP8RwObjectPv_ptr - 0x5507F4)
5507E8:  ADDW            R6, R6, #0x65C
5507EC:  MOV.W           R2, #0x400
5507F0:  ADD             R1, PC; _ZN17CVehicleModelInfo17ClearAtomicFlagCBEP8RwObjectPv_ptr
5507F2:  LDR             R0, [R6]
5507F4:  LDR             R1, [R1]; CVehicleModelInfo::ClearAtomicFlagCB(RwObject *,void *)
5507F6:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
5507FA:  VMOV            R1, S22; float
5507FE:  MOV             R0, R4; this
550800:  BLX             j__ZN5CDoor4OpenEf; CDoor::Open(float)
550804:  ADD.W           R0, R9, #0x5D0
550808:  VLDR            S0, [R0]
55080C:  ADD.W           R0, R9, #0x5D8
550810:  VLDR            S2, [R0]
550814:  VCMP.F32        S2, S0
550818:  VMRS            APSR_nzcv, FPSCR
55081C:  BEQ.W           loc_5509C4
550820:  LDR             R1, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x55082C)
550822:  MOV.W           R2, #0x400
550826:  LDR             R0, [R6]
550828:  ADD             R1, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
55082A:  LDR             R1, [R1]; CVehicleModelInfo::SetAtomicFlagCB(RwObject *,void *)
55082C:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
550830:  CMP.W           R10, #1
550834:  BNE.W           loc_5509C4
550838:  ADD.W           R0, R5, #0x13C; this
55083C:  ADD.W           R1, R11, #0x4E ; 'N'; int
550840:  MOVS            R2, #0; float
550842:  MOVS            R4, #0
550844:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
550848:  CMP.W           R8, #0
55084C:  BEQ.W           loc_5509C4
550850:  ADD             R0, SP, #0xC8+var_C0; this
550852:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
550856:  LDR             R1, =(_ZTV16CEventSoundQuiet_ptr - 0x550866)
550858:  MOVS            R2, #0
55085A:  ADD.W           R5, R0, #0x10
55085E:  MOVT            R2, #0x4270
550862:  ADD             R1, PC; _ZTV16CEventSoundQuiet_ptr
550864:  STR.W           R8, [SP,#0xC8+var_B0]
550868:  STR             R2, [SP,#0xC8+var_AC]
55086A:  MOV.W           R2, #0xFFFFFFFF
55086E:  LDR             R1, [R1]; `vtable for'CEventSoundQuiet ...
550870:  MOV             R0, R8; this
550872:  STR             R2, [SP,#0xC8+var_A8]
550874:  ADDS            R1, #8
550876:  STRD.W          R4, R4, [SP,#0xC8+var_A4]
55087A:  STR             R4, [SP,#0xC8+var_9C]
55087C:  STR             R1, [SP,#0xC8+var_C0]
55087E:  MOV             R1, R5; CEntity **
550880:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
550884:  LDR             R0, [SP,#0xC8+var_A8]
550886:  ADDS            R0, #1
550888:  BNE             loc_5508AE
55088A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x550892)
55088C:  LDR             R1, [SP,#0xC8+var_B0]
55088E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
550890:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
550892:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
550894:  STR             R0, [SP,#0xC8+var_A8]
550896:  LDR             R0, [R1,#0x14]
550898:  ADD.W           R2, R0, #0x30 ; '0'
55089C:  CMP             R0, #0
55089E:  IT EQ
5508A0:  ADDEQ           R2, R1, #4
5508A2:  VLDR            D16, [R2]
5508A6:  LDR             R0, [R2,#8]
5508A8:  STR             R0, [SP,#0xC8+var_9C]
5508AA:  VSTR            D16, [SP,#0xC8+var_A4]
5508AE:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
5508B2:  ADD             R1, SP, #0xC8+var_C0; CEvent *
5508B4:  MOVS            R2, #0; bool
5508B6:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5508BA:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x5508C0)
5508BC:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
5508BE:  B               loc_5509AC
5508C0:  VMOV            R1, S22; float
5508C4:  MOV             R0, R4; this
5508C6:  BLX             j__ZN5CDoor4OpenEf; CDoor::Open(float)
5508CA:  VCMP.F32        S22, #0.0
5508CE:  VMRS            APSR_nzcv, FPSCR
5508D2:  BNE             loc_5509C4
5508D4:  ADDW            R4, R5, #0x5B4
5508D8:  MOV             R1, R11
5508DA:  MOV             R0, R4
5508DC:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
5508E0:  CMP             R0, #1
5508E2:  BNE             loc_5508EC
5508E4:  MOV             R0, R4
5508E6:  MOV             R1, R11
5508E8:  MOVS            R2, #0
5508EA:  B               loc_5508FE
5508EC:  MOV             R0, R4
5508EE:  MOV             R1, R11
5508F0:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
5508F4:  CMP             R0, #3
5508F6:  BNE             loc_550902
5508F8:  MOV             R0, R4
5508FA:  MOV             R1, R11
5508FC:  MOVS            R2, #2
5508FE:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
550902:  CMP.W           R10, #1
550906:  BNE             loc_5509C4
550908:  ADD.W           R0, R5, #0x13C; this
55090C:  ADD.W           R1, R11, #0x54 ; 'T'; int
550910:  MOVS            R2, #0; float
550912:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
550916:  NOP
550918:  MOVS            R0, #0; int
55091A:  MOVS            R1, #0; bool
55091C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
550920:  CMP             R0, R5
550922:  BNE             loc_550936
550924:  BLX             j__ZN10TouchSense8instanceEv; TouchSense::instance(void)
550928:  MOVS            R1, #0x14
55092A:  MOVS            R2, #0xE; int
55092C:  STR             R1, [SP,#0xC8+var_C8]; int
55092E:  MOVS            R1, #2; int
550930:  MOVS            R3, #0x73 ; 's'; int
550932:  BLX             j__ZN10TouchSense17playBuiltinEffectEiiii; TouchSense::playBuiltinEffect(int,int,int,int)
550936:  CMP.W           R8, #0
55093A:  BEQ             loc_5509C4
55093C:  ADD             R0, SP, #0xC8+var_C0; this
55093E:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
550942:  LDR             R1, =(_ZTV16CEventSoundQuiet_ptr - 0x550952)
550944:  MOVS            R2, #0x42F00000
55094A:  STR.W           R8, [SP,#0xC8+var_B0]
55094E:  ADD             R1, PC; _ZTV16CEventSoundQuiet_ptr
550950:  STR             R2, [SP,#0xC8+var_AC]
550952:  MOV.W           R2, #0xFFFFFFFF
550956:  ADD.W           R5, R0, #0x10
55095A:  LDR             R1, [R1]; `vtable for'CEventSoundQuiet ...
55095C:  MOV             R0, R8; this
55095E:  STR             R2, [SP,#0xC8+var_A8]
550960:  MOVS            R2, #0
550962:  ADDS            R1, #8
550964:  STRD.W          R2, R2, [SP,#0xC8+var_A4]
550968:  STR             R2, [SP,#0xC8+var_9C]
55096A:  STR             R1, [SP,#0xC8+var_C0]
55096C:  MOV             R1, R5; CEntity **
55096E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
550972:  LDR             R0, [SP,#0xC8+var_A8]
550974:  ADDS            R0, #1
550976:  BNE             loc_55099C
550978:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x550980)
55097A:  LDR             R1, [SP,#0xC8+var_B0]
55097C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
55097E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
550980:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
550982:  STR             R0, [SP,#0xC8+var_A8]
550984:  LDR             R0, [R1,#0x14]
550986:  ADD.W           R2, R0, #0x30 ; '0'
55098A:  CMP             R0, #0
55098C:  IT EQ
55098E:  ADDEQ           R2, R1, #4
550990:  VLDR            D16, [R2]
550994:  LDR             R0, [R2,#8]
550996:  STR             R0, [SP,#0xC8+var_9C]
550998:  VSTR            D16, [SP,#0xC8+var_A4]
55099C:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
5509A0:  ADD             R1, SP, #0xC8+var_C0; CEvent *
5509A2:  MOVS            R2, #0; bool
5509A4:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5509A8:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x5509AE)
5509AA:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
5509AC:  LDR             R1, [R0]; `vtable for'CEventSoundQuiet ...
5509AE:  LDR             R0, [SP,#0xC8+var_B0]; this
5509B0:  ADDS            R1, #8
5509B2:  STR             R1, [SP,#0xC8+var_C0]
5509B4:  CMP             R0, #0
5509B6:  ITT NE
5509B8:  MOVNE           R1, R5; CEntity **
5509BA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5509BE:  ADD             R0, SP, #0xC8+var_C0; this
5509C0:  BLX             j__ZN6CEventD2Ev_0; CEvent::~CEvent()
5509C4:  LDRB.W          R0, [R9,#0x5D6]
5509C8:  ADD             R2, SP, #0xC8+var_98
5509CA:  LDR.W           R1, [R9,#0x5D8]
5509CE:  ADD             R3, SP, #0xC8+var_98
5509D0:  ADD             R4, SP, #0xC8+var_88
5509D2:  STR.W           R1, [R2,R0,LSL#2]
5509D6:  MOV             R0, R4; this
5509D8:  LDM             R3, {R1-R3}; float
5509DA:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
5509DE:  VLDR            S0, [SP,#0xC8+var_58]
5509E2:  MOV             R0, R4; this
5509E4:  VLDR            S2, [SP,#0xC8+var_54]
5509E8:  VLDR            S4, [SP,#0xC8+var_50]
5509EC:  VADD.F32        S0, S16, S0
5509F0:  VADD.F32        S2, S18, S2
5509F4:  VADD.F32        S4, S20, S4
5509F8:  VSTR            S0, [SP,#0xC8+var_58]
5509FC:  VSTR            S2, [SP,#0xC8+var_54]
550A00:  VSTR            S4, [SP,#0xC8+var_50]
550A04:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
550A08:  MOV             R0, R4; this
550A0A:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
550A0E:  ADD             SP, SP, #0x88
550A10:  VPOP            {D8-D11}
550A14:  ADD             SP, SP, #4
550A16:  POP.W           {R8-R11}
550A1A:  POP             {R4-R7,PC}
