; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarSetPedInAsPassenger10ProcessPedEP4CPed
; Address            : 0x502754 - 0x502A5A
; =========================================================

502754:  PUSH            {R4-R7,LR}
502756:  ADD             R7, SP, #0xC
502758:  PUSH.W          {R8-R11}
50275C:  SUB             SP, SP, #0x1C
50275E:  MOV             R5, R1
502760:  MOV             R10, R0
502762:  LDRB.W          R0, [R5,#0x485]
502766:  ADDW            R11, R5, #0x484
50276A:  LSLS            R0, R0, #0x1F
50276C:  BEQ             loc_50277C
50276E:  LDR.W           R0, [R10,#4]
502772:  CMP             R0, #0
502774:  ITTT NE
502776:  LDRNE           R1, [R0]
502778:  LDRNE           R1, [R1,#0x14]
50277A:  BLXNE           R1
50277C:  LDR.W           R0, [R5,#0x590]; this
502780:  ADD.W           R6, R5, #0x590
502784:  CMP             R0, #0
502786:  ITT NE
502788:  MOVNE           R1, R6; CEntity **
50278A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50278E:  LDR.W           R0, [R10,#0x10]; this
502792:  MOV             R1, R6; CEntity **
502794:  STR.W           R0, [R5,#0x590]
502798:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50279C:  LDR.W           R0, [R11]
5027A0:  ORR.W           R0, R0, #0x100
5027A4:  STR.W           R0, [R11]
5027A8:  LDR.W           R0, [R5,#0x55C]
5027AC:  STR.W           R0, [R5,#0x560]
5027B0:  MOV             R0, R5; this
5027B2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5027B6:  CMP             R0, #1
5027B8:  BNE             loc_5027CA
5027BA:  LDR.W           R0, [R5,#0x444]
5027BE:  MOVS            R1, #1
5027C0:  STRB.W          R1, [R0,#0x8D]
5027C4:  MOV             R0, R5; this
5027C6:  BLX             j__ZN10CPlayerPed15ClearAdrenalineEv; CPlayerPed::ClearAdrenaline(void)
5027CA:  MOV             R0, R5; this
5027CC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5027D0:  CMP             R0, #1
5027D2:  BNE             loc_502808
5027D4:  LDR.W           R1, [R10,#0x10]
5027D8:  LDR.W           R0, [R1,#0x42C]
5027DC:  TST.W           R0, #0x20000
5027E0:  BNE             loc_502808
5027E2:  LDR.W           R2, [R1,#0x430]
5027E6:  ADDW            R1, R1, #0x42C
5027EA:  ORR.W           R0, R0, #0x20000
5027EE:  STRD.W          R0, R2, [R1]
5027F2:  MOV.W           R0, #0xFFFFFFFF; int
5027F6:  LDR.W           R6, [R10,#0x10]
5027FA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5027FE:  MOV             R2, R0
502800:  MOVS            R0, #6
502802:  MOV             R1, R6
502804:  BLX             j__ZN6CCrime11ReportCrimeE10eCrimeTypeP7CEntityP4CPed; CCrime::ReportCrime(eCrimeType,CEntity *,CPed *)
502808:  LDR.W           R0, [R10,#0x10]; this
50280C:  LDRB.W          R1, [R0,#0x42D]
502810:  LSLS            R1, R1, #0x1E
502812:  BMI.W           loc_50291C
502816:  LDR.W           R1, [R10,#0x14]; CVehicle *
50281A:  BLX             j__ZN13CCarEnterExit32ComputePassengerIndexFromCarDoorERK8CVehiclei; CCarEnterExit::ComputePassengerIndexFromCarDoor(CVehicle const&,int)
50281E:  MOV             R8, R0
502820:  ADDS.W          R0, R8, #1
502824:  BEQ             loc_50291C
502826:  LDR.W           R0, [R10,#0x10]
50282A:  ADD.W           R0, R0, R8,LSL#2
50282E:  LDR.W           R0, [R0,#0x468]
502832:  CMP             R0, R5
502834:  IT NE
502836:  CMPNE           R0, #0
502838:  BEQ             loc_502920
50283A:  LDR.W           R0, [R0,#0x440]
50283E:  MOV.W           R1, #0x2C0; int
502842:  ADDS            R0, #4; this
502844:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
502848:  CMP             R0, #0
50284A:  BNE             loc_502920
50284C:  LDR.W           R0, [R10,#0x10]
502850:  MOV.W           R1, #0x338; int
502854:  ADD.W           R0, R0, R8,LSL#2
502858:  LDR.W           R0, [R0,#0x468]
50285C:  LDR.W           R0, [R0,#0x440]
502860:  ADDS            R0, #4; this
502862:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
502866:  CMP             R0, #0
502868:  BNE             loc_502920
50286A:  LDR.W           R0, [R10,#0x10]
50286E:  MOVW            R1, #0x2C1; int
502872:  ADD.W           R0, R0, R8,LSL#2
502876:  LDR.W           R0, [R0,#0x468]
50287A:  LDR.W           R0, [R0,#0x440]
50287E:  ADDS            R0, #4; this
502880:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
502884:  CMP             R0, #0
502886:  BNE             loc_502920
502888:  LDR.W           R0, [R10,#0x10]
50288C:  MOVW            R1, #0x33A; int
502890:  ADD.W           R0, R0, R8,LSL#2
502894:  LDR.W           R0, [R0,#0x468]
502898:  LDR.W           R0, [R0,#0x440]
50289C:  ADDS            R0, #4; this
50289E:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
5028A2:  CBNZ            R0, loc_502920
5028A4:  LDR.W           R9, [R10,#0x10]
5028A8:  ADD.W           R0, R9, R8,LSL#2
5028AC:  LDR.W           R1, [R0,#0x468]; CVehicle *
5028B0:  MOV             R0, R9; this
5028B2:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
5028B6:  MOV             R6, R0
5028B8:  ADD             R0, SP, #0x38+var_34; this
5028BA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5028BE:  LDR             R0, =(_ZTV23CTaskSimpleCarSetPedOut_ptr - 0x5028C8)
5028C0:  STR.W           R9, [SP,#0x38+var_2C]
5028C4:  ADD             R0, PC; _ZTV23CTaskSimpleCarSetPedOut_ptr
5028C6:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedOut ...
5028C8:  ADD.W           R4, R0, #8
5028CC:  MOVS            R0, #1
5028CE:  STR             R4, [SP,#0x38+var_34]
5028D0:  STR             R6, [SP,#0x38+var_28]
5028D2:  STRB.W          R0, [SP,#0x38+var_24]
5028D6:  MOVS            R0, #0
5028D8:  STRB.W          R0, [SP,#0x38+var_1F]
5028DC:  STR.W           R0, [SP,#0x38+var_23]
5028E0:  ADD             R0, SP, #0x38+var_34
5028E2:  ADD.W           R6, R0, #8
5028E6:  MOV             R0, R9; this
5028E8:  MOV             R1, R6; CEntity **
5028EA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5028EE:  MOVS            R0, #1
5028F0:  STRB.W          R0, [SP,#0x38+var_23]
5028F4:  LDR.W           R0, [R10,#0x10]
5028F8:  ADD.W           R0, R0, R8,LSL#2
5028FC:  LDR.W           R1, [R0,#0x468]; CPed *
502900:  ADD             R0, SP, #0x38+var_34; this
502902:  BLX             j__ZN23CTaskSimpleCarSetPedOut10ProcessPedEP4CPed; CTaskSimpleCarSetPedOut::ProcessPed(CPed *)
502906:  LDR             R0, [SP,#0x38+var_2C]; this
502908:  STR             R4, [SP,#0x38+var_34]
50290A:  CMP             R0, #0
50290C:  ITT NE
50290E:  MOVNE           R1, R6; CEntity **
502910:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
502914:  ADD             R0, SP, #0x38+var_34; this
502916:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
50291A:  B               loc_502920
50291C:  MOV.W           R8, #0xFFFFFFFF
502920:  LDRB.W          R0, [R10,#0x1C]
502924:  CBZ             R0, loc_502958
502926:  LDR.W           R0, [R10,#0x10]
50292A:  LDR             R1, [R5,#0x14]
50292C:  LDR             R2, [R0,#0x14]
50292E:  ADD.W           R6, R2, #0x30 ; '0'
502932:  CMP             R2, #0
502934:  IT EQ
502936:  ADDEQ           R6, R0, #4
502938:  CMP             R1, #0
50293A:  LDRD.W          R3, R2, [R6]
50293E:  LDR             R0, [R6,#8]
502940:  BEQ             loc_50294E
502942:  STR             R3, [R1,#0x30]
502944:  LDR             R1, [R5,#0x14]
502946:  STR             R2, [R1,#0x34]
502948:  LDR             R1, [R5,#0x14]
50294A:  ADDS            R1, #0x38 ; '8'
50294C:  B               loc_502956
50294E:  ADD.W           R1, R5, #0xC
502952:  STRD.W          R3, R2, [R5,#4]
502956:  STR             R0, [R1]
502958:  LDR.W           R0, [R10,#0x10]; this
50295C:  ADDS.W          R1, R8, #1
502960:  BEQ             loc_50296E
502962:  UXTB.W          R2, R8; unsigned __int8
502966:  MOV             R1, R5; CPed *
502968:  BLX             j__ZN8CVehicle12AddPassengerEP4CPedh; CVehicle::AddPassenger(CPed *,uchar)
50296C:  B               loc_502974
50296E:  MOV             R1, R5; CPed *
502970:  BLX             j__ZN8CVehicle12AddPassengerEP4CPed; CVehicle::AddPassenger(CPed *)
502974:  MOV             R0, R5; this
502976:  BLX             j__ZN4CPed25UpdateStatEnteringVehicleEv; CPed::UpdateStatEnteringVehicle(void)
50297A:  MOV             R0, R5
50297C:  MOVS            R1, #0
50297E:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
502982:  LDR             R0, [R5]
502984:  LDR             R1, [R0,#0x60]
502986:  MOV             R0, R5
502988:  BLX             R1
50298A:  LDR             R0, [R5,#0x1C]
50298C:  MOVW            R2, #0xFFFF
502990:  BIC.W           R0, R0, #1
502994:  STR             R0, [R5,#0x1C]
502996:  LDR.W           R0, [R10,#0x10]
50299A:  LDRH.W          R1, [R0,#0x460]
50299E:  CMP             R1, R2
5029A0:  ITT EQ
5029A2:  MOVWEQ          R1, #0x3A98
5029A6:  STRHEQ.W        R1, [R0,#0x460]
5029AA:  MOV             R0, R5; CPed *
5029AC:  MOVS            R1, #0x32 ; '2'
5029AE:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
5029B2:  LDRB.W          R1, [R10,#0x1D]; unsigned __int8
5029B6:  CMP             R1, #0
5029B8:  ITT NE
5029BA:  LDRNE.W         R0, [R10,#0x10]; this
5029BE:  BLXNE           j__ZN8CVehicle19ClearGettingInFlagsEh; CVehicle::ClearGettingInFlags(uchar)
5029C2:  LDRB.W          R0, [R10,#0x1E]
5029C6:  CMP             R0, #0
5029C8:  ITTTT NE
5029CA:  LDRNE.W         R1, [R10,#0x10]
5029CE:  LDRBNE.W        R2, [R1,#0x489]
5029D2:  SUBNE           R0, R2, R0
5029D4:  STRBNE.W        R0, [R1,#0x489]
5029D8:  MOV             R0, R5; this
5029DA:  MOVS            R1, #0; int
5029DC:  BLX             j__ZN4CPed31RemoveWeaponWhenEnteringVehicleEi; CPed::RemoveWeaponWhenEnteringVehicle(int)
5029E0:  LDR.W           R0, [R10,#0x10]
5029E4:  LDR.W           R0, [R0,#0x42C]
5029E8:  LDM.W           R11, {R1-R3,R6}; CPed *
5029EC:  TST.W           R0, #0x200
5029F0:  ORR.W           R4, R1, #0x2000
5029F4:  MOV             R0, R5; this
5029F6:  IT NE
5029F8:  BICNE.W         R4, R1, #0x2000
5029FC:  STRD.W          R4, R2, [R11]
502A00:  STRD.W          R3, R6, [R11,#8]
502A04:  BLX             j__ZN13CCarEnterExit16RemoveGetInAnimsERK4CPed; CCarEnterExit::RemoveGetInAnims(CPed const&)
502A08:  LDR.W           R0, [R10,#0x10]; this
502A0C:  MOV             R1, R5; CVehicle *
502A0E:  MOVS            R2, #0; CPed *
502A10:  BLX             j__ZN13CCarEnterExit12AddInCarAnimERK8CVehicleP4CPedb; CCarEnterExit::AddInCarAnim(CVehicle const&,CPed *,bool)
502A14:  LDRB.W          R0, [R10,#0x1C]
502A18:  CBNZ            R0, loc_502A2A
502A1A:  LDR.W           R2, [R10,#0x10]; CVehicle *
502A1E:  MOV             R1, R5; CPed *
502A20:  LDR.W           R0, [R10,#0x18]; this
502A24:  MOVS            R3, #0; CAnimBlendAssociation *
502A26:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
502A2A:  MOVS            R0, #dword_60; this
502A2C:  LDR.W           R4, [R5,#0x440]
502A30:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
502A34:  LDR.W           R1, [R10,#0x10]; CVehicle *
502A38:  MOVS            R3, #0; bool
502A3A:  LDR.W           R2, [R10,#0x18]; CTaskUtilityLineUpPedWithCar *
502A3E:  MOV             R5, R0
502A40:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
502A44:  ADDS            R0, R4, #4; this
502A46:  MOV             R1, R5; CTask *
502A48:  MOVS            R2, #4; int
502A4A:  MOVS            R3, #0; bool
502A4C:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
502A50:  MOVS            R0, #1
502A52:  ADD             SP, SP, #0x1C
502A54:  POP.W           {R8-R11}
502A58:  POP             {R4-R7,PC}
