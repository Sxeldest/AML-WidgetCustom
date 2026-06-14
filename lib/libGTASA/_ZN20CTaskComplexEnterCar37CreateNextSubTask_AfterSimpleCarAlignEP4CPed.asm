; =========================================================
; Game Engine Function: _ZN20CTaskComplexEnterCar37CreateNextSubTask_AfterSimpleCarAlignEP4CPed
; Address            : 0x4F6810 - 0x4F6F2C
; =========================================================

4F6810:  PUSH            {R4-R7,LR}
4F6812:  ADD             R7, SP, #0xC
4F6814:  PUSH.W          {R8-R11}
4F6818:  SUB             SP, SP, #4
4F681A:  VPUSH           {D8-D11}
4F681E:  SUB             SP, SP, #0x58
4F6820:  MOV             R10, R1
4F6822:  MOV             R5, R0
4F6824:  MOV             R0, R10; this
4F6826:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F682A:  CBNZ            R0, loc_4F685C
4F682C:  LDR             R0, [R5,#0xC]
4F682E:  VLDR            S0, [R0,#0x48]
4F6832:  VLDR            S2, [R0,#0x4C]
4F6836:  VMUL.F32        S0, S0, S0
4F683A:  LDR.W           R0, =(_ZN13CCarEnterExit26ms_fMaxSpeed_CanDragPedOutE_ptr - 0x4F6846)
4F683E:  VMUL.F32        S2, S2, S2
4F6842:  ADD             R0, PC; _ZN13CCarEnterExit26ms_fMaxSpeed_CanDragPedOutE_ptr
4F6844:  LDR             R0, [R0]; CCarEnterExit::ms_fMaxSpeed_CanDragPedOut ...
4F6846:  VADD.F32        S0, S0, S2
4F684A:  VLDR            S2, [R0]
4F684E:  VSQRT.F32       S0, S0
4F6852:  VCMPE.F32       S0, S2
4F6856:  VMRS            APSR_nzcv, FPSCR
4F685A:  BGT             loc_4F6896
4F685C:  MOV             R0, R10; this
4F685E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F6862:  CMP             R0, #1
4F6864:  BNE             loc_4F68B4
4F6866:  LDR             R0, [R5,#0xC]
4F6868:  VLDR            S0, [R0,#0x48]
4F686C:  VLDR            S2, [R0,#0x4C]
4F6870:  VMUL.F32        S0, S0, S0
4F6874:  LDR.W           R0, =(_ZN13CCarEnterExit32ms_fMaxSpeed_PlayerCanDragPedOutE_ptr - 0x4F6880)
4F6878:  VMUL.F32        S2, S2, S2
4F687C:  ADD             R0, PC; _ZN13CCarEnterExit32ms_fMaxSpeed_PlayerCanDragPedOutE_ptr
4F687E:  LDR             R0, [R0]; CCarEnterExit::ms_fMaxSpeed_PlayerCanDragPedOut ...
4F6880:  VADD.F32        S0, S0, S2
4F6884:  VLDR            S2, [R0]
4F6888:  VSQRT.F32       S0, S0
4F688C:  VCMPE.F32       S0, S2
4F6890:  VMRS            APSR_nzcv, FPSCR
4F6894:  BLE             loc_4F68B4
4F6896:  LDR.W           R0, [R10,#0x1C]
4F689A:  ORR.W           R0, R0, #1
4F689E:  STR.W           R0, [R10,#0x1C]
4F68A2:  MOV             R0, R10; this
4F68A4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F68A8:  CMP             R0, #1
4F68AA:  BEQ.W           loc_4F6C3E
4F68AE:  MOV             R0, R5
4F68B0:  MOVS            R1, #0xD0
4F68B2:  B               loc_4F6C44
4F68B4:  LDRB            R0, [R5,#0x10]
4F68B6:  TST.W           R0, #2
4F68BA:  BNE             loc_4F68D0
4F68BC:  LSLS            R0, R0, #0x1D
4F68BE:  BMI             loc_4F690A
4F68C0:  LDR             R0, [R5,#0xC]; this
4F68C2:  MOV             R2, R10; int
4F68C4:  LDR             R1, [R5,#0x14]; CVehicle *
4F68C6:  BLX             j__ZN13CCarEnterExit22IsCarQuickJackPossibleERK8CVehicleiRK4CPed; CCarEnterExit::IsCarQuickJackPossible(CVehicle const&,int,CPed const&)
4F68CA:  CBZ             R0, loc_4F690A
4F68CC:  MOVS            R6, #0
4F68CE:  B               loc_4F6C4C
4F68D0:  LDR             R0, [R5,#0xC]; this
4F68D2:  LDR             R1, [R5,#0x14]; CVehicle *
4F68D4:  BLX             j__ZN13CCarEnterExit16CarHasDoorToOpenERK8CVehiclei; CCarEnterExit::CarHasDoorToOpen(CVehicle const&,int)
4F68D8:  CMP             R0, #1
4F68DA:  BNE             loc_4F69C8
4F68DC:  LDR             R0, [R5,#0xC]; this
4F68DE:  MOV             R2, R10; CPed *
4F68E0:  LDR             R1, [R5,#0x14]; CVehicle *
4F68E2:  BLX             j__ZN13CCarEnterExit18CarHasOpenableDoorERK8CVehicleiRK4CPed; CCarEnterExit::CarHasOpenableDoor(CVehicle const&,int,CPed const&)
4F68E6:  CMP             R0, #1
4F68E8:  BNE.W           loc_4F6ABA
4F68EC:  MOVS            R0, #dword_24; this
4F68EE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F68F2:  MOV             R6, R0
4F68F4:  LDRB            R0, [R5,#0x10]
4F68F6:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F68F8:  LDR             R2, [R5,#0x14]; int
4F68FA:  LDR             R1, [R5,#0xC]; CVehicle *
4F68FC:  UBFX.W          R0, R0, #1, #1
4F6900:  STR             R0, [SP,#0x98+var_98]; bool
4F6902:  MOV             R0, R6; this
4F6904:  BLX             j__ZN33CTaskSimpleCarOpenDoorFromOutsideC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarOpenDoorFromOutside::CTaskSimpleCarOpenDoorFromOutside(CVehicle *,int,CTaskUtilityLineUpPedWithCar *,bool)
4F6908:  B               loc_4F6C4C
4F690A:  LDR             R0, [R5,#0xC]; this
4F690C:  LDR.W           R1, [R0,#0x5A0]
4F6910:  CMP             R1, #9
4F6912:  ITT NE
4F6914:  LDRNE.W         R1, [R0,#0x5A4]
4F6918:  CMPNE           R1, #2
4F691A:  BNE.W           loc_4F6A74
4F691E:  LDR             R1, [R5,#0x14]; CVehicle *
4F6920:  MOV             R2, R10; int
4F6922:  BLX             j__ZN13CCarEnterExit21IsCarSlowJackRequiredERK8CVehicleiRK4CPed; CCarEnterExit::IsCarSlowJackRequired(CVehicle const&,int,CPed const&)
4F6926:  CMP             R0, #1
4F6928:  BNE             loc_4F69D2
4F692A:  LDR             R0, [R5,#0xC]; this
4F692C:  LDR             R1, [R5,#0x14]; CVehicle *
4F692E:  BLX             j__ZN13CCarEnterExit20ComputeSlowJackedPedERK8CVehiclei; CCarEnterExit::ComputeSlowJackedPed(CVehicle const&,int)
4F6932:  ADD.W           R8, R5, #0x40 ; '@'
4F6936:  CMP             R0, #0
4F6938:  STR             R0, [R5,#0x40]
4F693A:  BEQ             loc_4F6A06
4F693C:  MOV             R1, R8; CEntity **
4F693E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F6942:  LDR.W           R0, [R8]; this
4F6946:  CMP             R0, #0
4F6948:  BEQ             loc_4F6A06
4F694A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F694E:  CMP             R0, #1
4F6950:  BNE             loc_4F6A06
4F6952:  LDR.W           R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x4F695A)
4F6956:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
4F6958:  LDR             R0, [R0]; CGameLogic::SkipState ...
4F695A:  LDR             R0, [R0]; CGameLogic::SkipState
4F695C:  CMP             R0, #2
4F695E:  BNE             loc_4F6A06
4F6960:  MOV             R0, R5; this
4F6962:  MOVW            R1, #0x516; int
4F6966:  MOV             R2, R10; CPed *
4F6968:  BLX             j__ZN20CTaskComplexEnterCar13CreateSubTaskEiP4CPed; CTaskComplexEnterCar::CreateSubTask(int,CPed *)
4F696C:  MOV             R6, R0
4F696E:  LDR             R0, [R5,#0x40]; this
4F6970:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4F6974:  MOV             R4, R0
4F6976:  CMP             R4, #0
4F6978:  BEQ.W           loc_4F6D98
4F697C:  LDR.W           R1, [R8]; CPed *
4F6980:  ADD.W           R0, R4, #8; this
4F6984:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
4F6988:  CMP             R0, #1
4F698A:  BNE.W           loc_4F6D98
4F698E:  MOVS            R0, #(byte_9+3); this
4F6990:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4F6994:  MOV             R5, R0
4F6996:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
4F699A:  LDR.W           R0, =(_ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr - 0x4F69A4)
4F699E:  MOV             R2, R5; CEvent *
4F69A0:  ADD             R0, PC; _ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr
4F69A2:  LDR             R0, [R0]; `vtable for'CEventLeaderQuitEnteringCarAsDriver ...
4F69A4:  ADDS            R0, #8
4F69A6:  STR             R0, [R5]
4F69A8:  LDR.W           R1, [R8]; CPed *
4F69AC:  ADD.W           R8, SP, #0x98+var_5C
4F69B0:  MOV             R0, R8; this
4F69B2:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
4F69B6:  ADD.W           R0, R4, #0x30 ; '0'; this
4F69BA:  MOV             R1, R8; CEvent *
4F69BC:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
4F69C0:  MOV             R0, R8; this
4F69C2:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
4F69C6:  B               loc_4F6D98
4F69C8:  LDRB            R0, [R5,#0x10]
4F69CA:  AND.W           R0, R0, #0xFD
4F69CE:  STRB            R0, [R5,#0x10]
4F69D0:  B               loc_4F6C3E
4F69D2:  LDRB            R0, [R5,#0x10]
4F69D4:  LSLS            R0, R0, #0x1D
4F69D6:  BMI.W           loc_4F6C3E
4F69DA:  LDR             R0, [R5,#0xC]
4F69DC:  LDRB.W          R1, [R0,#0x3A]
4F69E0:  AND.W           R1, R1, #0xF8
4F69E4:  CMP             R1, #0x20 ; ' '
4F69E6:  ITT EQ
4F69E8:  LDREQ.W         R1, [R0,#0x5A0]; unsigned int
4F69EC:  CMPEQ           R1, #9
4F69EE:  BEQ.W           loc_4F6BF0
4F69F2:  MOVS            R0, #dword_24; this
4F69F4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F69F8:  LDR             R1, [R5,#0xC]; CVehicle *
4F69FA:  MOV             R6, R0
4F69FC:  LDR             R2, [R5,#0x14]; int
4F69FE:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F6A00:  BLX             j__ZN19CTaskSimpleCarGetInC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarGetIn::CTaskSimpleCarGetIn(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F6A04:  B               loc_4F6C4C
4F6A06:  LDRB            R0, [R5,#0x10]
4F6A08:  MOV.W           R1, #0x334
4F6A0C:  LSLS            R0, R0, #0x1D
4F6A0E:  BMI             loc_4F6A1A
4F6A10:  LDR             R0, [R5,#0x14]
4F6A12:  CMP             R0, #0x12
4F6A14:  IT EQ
4F6A16:  MOVWEQ          R1, #0x327; int
4F6A1A:  MOV             R0, R5; this
4F6A1C:  MOV             R2, R10; CPed *
4F6A1E:  BLX             j__ZN20CTaskComplexEnterCar13CreateSubTaskEiP4CPed; CTaskComplexEnterCar::CreateSubTask(int,CPed *)
4F6A22:  MOV             R9, R0
4F6A24:  LDR             R0, [R5,#0x14]
4F6A26:  CMP             R0, #0x12
4F6A28:  BNE             loc_4F6A36
4F6A2A:  LDR             R0, [R5,#0xC]
4F6A2C:  LDR.W           R0, [R0,#0x468]
4F6A30:  CMP             R0, #0
4F6A32:  BEQ.W           loc_4F6DA8
4F6A36:  MOV.W           R11, #0xA
4F6A3A:  LDR             R0, [R5,#0x40]
4F6A3C:  LDR.W           R6, [R0,#0x440]
4F6A40:  MOVS            R0, #word_2C; this
4F6A42:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F6A46:  LDR             R1, [R5,#0xC]; CVehicle *
4F6A48:  MOV             R4, R0
4F6A4A:  LDR             R3, [R5,#0x20]; int
4F6A4C:  MOVS            R0, #1
4F6A4E:  STRD.W          R10, R0, [SP,#0x98+var_98]; CPed *
4F6A52:  MOV             R0, R4; this
4F6A54:  MOV             R2, R11; int
4F6A56:  BLX             j__ZN21CTaskSimpleBikeJackedC2EP8CVehicleiiP4CPedb; CTaskSimpleBikeJacked::CTaskSimpleBikeJacked(CVehicle *,int,int,CPed *,bool)
4F6A5A:  MOV             R0, R6; this
4F6A5C:  MOV             R1, R4; CTask *
4F6A5E:  MOVS            R2, #1; bool
4F6A60:  BLX             j__ZN16CPedIntelligence26AddTaskPrimaryMaybeInGroupEP5CTaskb; CPedIntelligence::AddTaskPrimaryMaybeInGroup(CTask *,bool)
4F6A64:  LDR             R0, [R5,#0xC]
4F6A66:  LDR             R1, [R5,#0x40]; unsigned int
4F6A68:  LDR.W           R2, [R0,#0x464]
4F6A6C:  CMP             R1, R2
4F6A6E:  BEQ             loc_4F6B5A
4F6A70:  MOV             R6, R9
4F6A72:  B               loc_4F6C4C
4F6A74:  LDR             R1, [R5,#0x14]; CVehicle *
4F6A76:  BLX             j__ZN13CCarEnterExit16CarHasDoorToOpenERK8CVehiclei; CCarEnterExit::CarHasDoorToOpen(CVehicle const&,int)
4F6A7A:  MOV             R2, R0
4F6A7C:  LDR             R0, [R5,#0xC]; this
4F6A7E:  LDR             R1, [R5,#0x14]; CVehicle *
4F6A80:  CMP             R2, #1
4F6A82:  BNE             loc_4F6ACE
4F6A84:  MOV             R2, R10; CPed *
4F6A86:  BLX             j__ZN13CCarEnterExit18CarHasOpenableDoorERK8CVehicleiRK4CPed; CCarEnterExit::CarHasOpenableDoor(CVehicle const&,int,CPed const&)
4F6A8A:  CMP             R0, #1
4F6A8C:  BNE             loc_4F6ABA
4F6A8E:  LDRB            R0, [R5,#0x10]
4F6A90:  TST.W           R0, #6
4F6A94:  BNE.W           loc_4F68EC
4F6A98:  LDR             R0, [R5,#0xC]
4F6A9A:  LDR.W           R1, [R0,#0x388]
4F6A9E:  LDRB.W          R1, [R1,#0xDE]
4F6AA2:  CMP             R1, #0x13
4F6AA4:  ITT EQ
4F6AA6:  LDREQ           R1, [R5,#0x14]
4F6AA8:  CMPEQ           R1, #0xA
4F6AAA:  BNE.W           loc_4F68EC
4F6AAE:  LDR.W           R0, [R0,#0x464]
4F6AB2:  CMP             R0, #0
4F6AB4:  BNE.W           loc_4F68EC
4F6AB8:  B               loc_4F69F2
4F6ABA:  MOVS            R0, #dword_1C; this
4F6ABC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F6AC0:  LDR             R1, [R5,#0xC]; CVehicle *
4F6AC2:  MOV             R6, R0
4F6AC4:  LDR             R2, [R5,#0x14]; int
4F6AC6:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F6AC8:  BLX             j__ZN39CTaskSimpleCarOpenLockedDoorFromOutsideC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarOpenLockedDoorFromOutside::CTaskSimpleCarOpenLockedDoorFromOutside(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F6ACC:  B               loc_4F6C4C
4F6ACE:  MOV             R2, R10; int
4F6AD0:  BLX             j__ZN13CCarEnterExit21IsCarSlowJackRequiredERK8CVehicleiRK4CPed; CCarEnterExit::IsCarSlowJackRequired(CVehicle const&,int,CPed const&)
4F6AD4:  CMP             R0, #1
4F6AD6:  BNE.W           loc_4F6C36
4F6ADA:  LDR             R0, [R5,#0xC]; this
4F6ADC:  LDR             R1, [R5,#0x14]; CVehicle *
4F6ADE:  BLX             j__ZN13CCarEnterExit20ComputeSlowJackedPedERK8CVehiclei; CCarEnterExit::ComputeSlowJackedPed(CVehicle const&,int)
4F6AE2:  ADD.W           R8, R5, #0x40 ; '@'
4F6AE6:  CMP             R0, #0
4F6AE8:  STR             R0, [R5,#0x40]
4F6AEA:  BEQ.W           loc_4F6DAE
4F6AEE:  MOV             R1, R8; CEntity **
4F6AF0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F6AF4:  LDR.W           R0, [R8]; this
4F6AF8:  CMP             R0, #0
4F6AFA:  BEQ.W           loc_4F6DAE
4F6AFE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F6B02:  CMP             R0, #1
4F6B04:  BNE.W           loc_4F6DAE
4F6B08:  LDR.W           R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x4F6B10)
4F6B0C:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
4F6B0E:  LDR             R0, [R0]; CGameLogic::SkipState ...
4F6B10:  LDR             R0, [R0]; CGameLogic::SkipState
4F6B12:  CMP             R0, #2
4F6B14:  BNE.W           loc_4F6DAE
4F6B18:  MOV             R0, R5; this
4F6B1A:  MOVW            R1, #0x516; int
4F6B1E:  MOV             R2, R10; CPed *
4F6B20:  BLX             j__ZN20CTaskComplexEnterCar13CreateSubTaskEiP4CPed; CTaskComplexEnterCar::CreateSubTask(int,CPed *)
4F6B24:  MOV             R6, R0
4F6B26:  LDR             R0, [R5,#0x40]; this
4F6B28:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4F6B2C:  MOV             R4, R0
4F6B2E:  CMP             R4, #0
4F6B30:  BEQ.W           loc_4F6C4C
4F6B34:  LDR.W           R1, [R8]; CPed *
4F6B38:  ADD.W           R0, R4, #8; this
4F6B3C:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
4F6B40:  CMP             R0, #1
4F6B42:  BNE.W           loc_4F6C4C
4F6B46:  MOVS            R0, #(byte_9+3); this
4F6B48:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4F6B4C:  MOV             R9, R0
4F6B4E:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
4F6B52:  LDR.W           R0, =(_ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr - 0x4F6B5A)
4F6B56:  ADD             R0, PC; _ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr
4F6B58:  B               loc_4F6BC6
4F6B5A:  LDR.W           R0, [R0,#0x468]
4F6B5E:  MOV             R6, R9
4F6B60:  CMP             R0, #0
4F6B62:  BEQ             loc_4F6C4C
4F6B64:  LDR.W           R9, [R0,#0x440]
4F6B68:  MOVS            R0, #word_2C; this
4F6B6A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F6B6E:  MOV             R4, R0
4F6B70:  LDR             R0, [R5,#0x20]
4F6B72:  LDR             R1, [R5,#0xC]; CVehicle *
4F6B74:  MOVS            R2, #0
4F6B76:  ADD.W           R3, R0, #0xC8; int
4F6B7A:  STRD.W          R10, R2, [SP,#0x98+var_98]; CPed *
4F6B7E:  MOV             R0, R4; this
4F6B80:  MOVS            R2, #0xB; int
4F6B82:  BLX             j__ZN21CTaskSimpleBikeJackedC2EP8CVehicleiiP4CPedb; CTaskSimpleBikeJacked::CTaskSimpleBikeJacked(CVehicle *,int,int,CPed *,bool)
4F6B86:  MOV             R0, R9; this
4F6B88:  MOV             R1, R4; CTask *
4F6B8A:  MOVS            R2, #1; bool
4F6B8C:  BLX             j__ZN16CPedIntelligence26AddTaskPrimaryMaybeInGroupEP5CTaskb; CPedIntelligence::AddTaskPrimaryMaybeInGroup(CTask *,bool)
4F6B90:  LDR             R0, [R5,#0xC]
4F6B92:  LDR             R1, [R5,#0x40]; CPed *
4F6B94:  LDR.W           R0, [R0,#0x464]; this
4F6B98:  CMP             R0, R1
4F6B9A:  BNE             loc_4F6C4C
4F6B9C:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4F6BA0:  MOV             R4, R0
4F6BA2:  CMP             R4, #0
4F6BA4:  BEQ             loc_4F6C4C
4F6BA6:  LDR.W           R1, [R8]; CPed *
4F6BAA:  ADD.W           R0, R4, #8; this
4F6BAE:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
4F6BB2:  CMP             R0, #1
4F6BB4:  BNE             loc_4F6C4C
4F6BB6:  MOVS            R0, #word_10; this
4F6BB8:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4F6BBC:  MOV             R9, R0
4F6BBE:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4F6BC2:  LDR             R0, =(_ZTV29CEventLeaderExitedCarAsDriver_ptr - 0x4F6BC8)
4F6BC4:  ADD             R0, PC; _ZTV29CEventLeaderExitedCarAsDriver_ptr
4F6BC6:  LDR             R0, [R0]; `vtable for'CEventLeaderExitedCarAsDriver
4F6BC8:  MOV             R2, R9; CEvent *
4F6BCA:  ADDS            R0, #8
4F6BCC:  STR.W           R0, [R9]
4F6BD0:  LDR.W           R1, [R8]; CPed *
4F6BD4:  ADD.W           R8, SP, #0x98+var_5C
4F6BD8:  MOV             R0, R8; this
4F6BDA:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
4F6BDE:  ADD.W           R0, R4, #0x30 ; '0'; this
4F6BE2:  MOV             R1, R8; CEvent *
4F6BE4:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
4F6BE8:  MOV             R0, R8; this
4F6BEA:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
4F6BEE:  B               loc_4F6C4C
4F6BF0:  VMOV.F32        S2, #0.5
4F6BF4:  LDR             R0, [R0,#0x14]
4F6BF6:  VLDR            S0, [R0,#8]
4F6BFA:  VCMPE.F32       S0, S2
4F6BFE:  VMRS            APSR_nzcv, FPSCR
4F6C02:  BGE             loc_4F6C22
4F6C04:  VMOV.F32        S2, #-0.5
4F6C08:  VCMPE.F32       S0, S2
4F6C0C:  VMRS            APSR_nzcv, FPSCR
4F6C10:  ITTT GT
4F6C12:  VLDRGT          S0, [R0,#0x28]
4F6C16:  VCMPEGT.F32     S0, #0.0
4F6C1A:  VMRSGT          APSR_nzcv, FPSCR
4F6C1E:  BGT.W           loc_4F6E52
4F6C22:  MOVS            R0, #dword_1C; this
4F6C24:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F6C28:  LDR             R1, [R5,#0xC]; CVehicle *
4F6C2A:  MOV             R6, R0
4F6C2C:  LDR             R2, [R5,#0x14]; int
4F6C2E:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F6C30:  BLX             j__ZN21CTaskSimplePickUpBikeC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimplePickUpBike::CTaskSimplePickUpBike(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F6C34:  B               loc_4F6C4C
4F6C36:  LDRB            R0, [R5,#0x10]
4F6C38:  LSLS            R0, R0, #0x1D
4F6C3A:  BPL.W           loc_4F69F2
4F6C3E:  MOV             R0, R5; this
4F6C40:  MOVW            R1, #0x516; int
4F6C44:  MOV             R2, R10; CPed *
4F6C46:  BLX             j__ZN20CTaskComplexEnterCar13CreateSubTaskEiP4CPed; CTaskComplexEnterCar::CreateSubTask(int,CPed *)
4F6C4A:  MOV             R6, R0
4F6C4C:  LDR             R0, [R5,#0xC]
4F6C4E:  LDRB.W          R1, [R0,#0x42D]
4F6C52:  LSLS            R1, R1, #0x1E
4F6C54:  BMI.W           loc_4F6D98
4F6C58:  LDR             R1, =(g_ikChainMan_ptr - 0x4F6C66)
4F6C5A:  MOV             R11, R5
4F6C5C:  STR             R6, [SP,#0x98+var_74]
4F6C5E:  MOV.W           R5, #0x11A
4F6C62:  ADD             R1, PC; g_ikChainMan_ptr
4F6C64:  VLDR            S18, =1000.0
4F6C68:  VLDR            S16, =0.000015259
4F6C6C:  MOVS            R4, #0
4F6C6E:  LDR             R6, [R1]; g_ikChainMan
4F6C70:  MOV             R8, R10
4F6C72:  VLDR            S20, =2000.0
4F6C76:  LDR.W           R1, [R0,R5,LSL#2]; CPed *
4F6C7A:  CMP             R1, #0
4F6C7C:  BEQ             loc_4F6D02
4F6C7E:  LDR.W           R0, [R10,#0x440]; this
4F6C82:  BLX             j__ZNK16CPedIntelligence14IsFriendlyWithERK4CPed; CPedIntelligence::IsFriendlyWith(CPed const&)
4F6C86:  CBNZ            R0, loc_4F6C9A
4F6C88:  LDR.W           R0, [R11,#0xC]
4F6C8C:  LDR.W           R1, [R0,R5,LSL#2]; CPed *
4F6C90:  MOV             R0, R10; this
4F6C92:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
4F6C96:  CMP             R0, #1
4F6C98:  BNE             loc_4F6CA4
4F6C9A:  VMOV.F32        S22, S18
4F6C9E:  MOV.W           R10, #0x7D0
4F6CA2:  B               loc_4F6CAC
4F6CA4:  MOVW            R10, #0x1770
4F6CA8:  VMOV.F32        S22, S20
4F6CAC:  BLX             rand
4F6CB0:  UXTH            R0, R0
4F6CB2:  MOV             R9, R11
4F6CB4:  VMOV            S0, R0
4F6CB8:  ADR             R1, aTaskentercar; "TaskEnterCar"
4F6CBA:  VCVT.F32.S32    S0, S0
4F6CBE:  LDR.W           R0, [R9,#0xC]
4F6CC2:  LDR.W           R2, [R0,R5,LSL#2]; CPed *
4F6CC6:  MOVS            R0, #3
4F6CC8:  STR             R4, [SP,#0x98+var_7C]; int
4F6CCA:  STR             R0, [SP,#0x98+var_80]; int
4F6CCC:  MOV.W           R0, #0x15E
4F6CD0:  STR             R0, [SP,#0x98+var_84]; int
4F6CD2:  MOV.W           R0, #0x3F000000
4F6CD6:  VMUL.F32        S0, S0, S16
4F6CDA:  STR             R0, [SP,#0x98+var_88]; float
4F6CDC:  STRD.W          R4, R4, [SP,#0x98+var_90]; int
4F6CE0:  MOVS            R0, #5
4F6CE2:  VMUL.F32        S0, S22, S0
4F6CE6:  VCVT.S32.F32    S0, S0
4F6CEA:  STR             R0, [SP,#0x98+var_94]; int
4F6CEC:  VMOV            R0, S0
4F6CF0:  ADD             R0, R10
4F6CF2:  MOV             R10, R8
4F6CF4:  STR             R0, [SP,#0x98+var_98]; int
4F6CF6:  MOV             R0, R6; int
4F6CF8:  MOV             R3, R10; int
4F6CFA:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
4F6CFE:  LDR.W           R0, [R9,#0xC]
4F6D02:  ADDS            R5, #1
4F6D04:  CMP.W           R5, #0x122
4F6D08:  BNE             loc_4F6C76
4F6D0A:  LDR.W           R1, [R0,#0x464]; CPed *
4F6D0E:  CBZ             R1, loc_4F6D36
4F6D10:  LDR.W           R0, [R10,#0x440]; this
4F6D14:  BLX             j__ZNK16CPedIntelligence14IsFriendlyWithERK4CPed; CPedIntelligence::IsFriendlyWith(CPed const&)
4F6D18:  CBNZ            R0, loc_4F6D2C
4F6D1A:  LDR.W           R0, [R11,#0xC]
4F6D1E:  LDR.W           R1, [R0,#0x464]; CPed *
4F6D22:  MOV             R0, R10; this
4F6D24:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
4F6D28:  CMP             R0, #1
4F6D2A:  BNE             loc_4F6D3A
4F6D2C:  VLDR            S18, =1000.0
4F6D30:  MOV.W           R4, #0x7D0
4F6D34:  B               loc_4F6D42
4F6D36:  LDR             R6, [SP,#0x98+var_74]
4F6D38:  B               loc_4F6D98
4F6D3A:  VLDR            S18, =2000.0
4F6D3E:  MOVW            R4, #0x1770
4F6D42:  LDR             R6, [SP,#0x98+var_74]
4F6D44:  BLX             rand
4F6D48:  UXTH            R0, R0
4F6D4A:  MOVS            R3, #0
4F6D4C:  VMOV            S0, R0
4F6D50:  LDR             R0, =(g_ikChainMan_ptr - 0x4F6D5E)
4F6D52:  VCVT.F32.S32    S0, S0
4F6D56:  LDR.W           R1, [R11,#0xC]
4F6D5A:  ADD             R0, PC; g_ikChainMan_ptr
4F6D5C:  LDR.W           R2, [R1,#0x464]; CPed *
4F6D60:  MOVS            R1, #3
4F6D62:  STR             R3, [SP,#0x98+var_7C]; int
4F6D64:  STR             R1, [SP,#0x98+var_80]; int
4F6D66:  MOV.W           R1, #0x15E
4F6D6A:  STR             R1, [SP,#0x98+var_84]; int
4F6D6C:  MOV.W           R1, #0x3F000000
4F6D70:  VMUL.F32        S0, S0, S16
4F6D74:  STR             R1, [SP,#0x98+var_88]; float
4F6D76:  STRD.W          R3, R3, [SP,#0x98+var_90]; int
4F6D7A:  MOVS            R1, #5
4F6D7C:  LDR             R0, [R0]; g_ikChainMan ; int
4F6D7E:  VMUL.F32        S0, S18, S0
4F6D82:  VCVT.S32.F32    S0, S0
4F6D86:  STR             R1, [SP,#0x98+var_94]; int
4F6D88:  VMOV            R1, S0
4F6D8C:  ADDS            R3, R4, R1
4F6D8E:  ADR             R1, aTaskentercar; "TaskEnterCar"
4F6D90:  STR             R3, [SP,#0x98+var_98]; int
4F6D92:  MOV             R3, R10; int
4F6D94:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
4F6D98:  MOV             R0, R6
4F6D9A:  ADD             SP, SP, #0x58 ; 'X'
4F6D9C:  VPOP            {D8-D11}
4F6DA0:  ADD             SP, SP, #4
4F6DA2:  POP.W           {R8-R11}
4F6DA6:  POP             {R4-R7,PC}
4F6DA8:  MOV.W           R11, #0xB
4F6DAC:  B               loc_4F6A3A
4F6DAE:  LDRB            R0, [R5,#0x10]
4F6DB0:  TST.W           R0, #4
4F6DB4:  BNE             loc_4F6DD8
4F6DB6:  LDR.W           R0, [R8]; this
4F6DBA:  CMP             R0, #0
4F6DBC:  BEQ.W           loc_4F69F2
4F6DC0:  MOV             R1, R10; CPed *
4F6DC2:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
4F6DC6:  LDR.W           R4, [R8]
4F6DCA:  CMP             R0, #0
4F6DCC:  BNE             loc_4F6E74
4F6DCE:  LDRB.W          R0, [R4,#0x487]
4F6DD2:  LSLS            R0, R0, #0x1A
4F6DD4:  BMI             loc_4F6E74
4F6DD6:  LDRB            R0, [R5,#0x10]
4F6DD8:  LSLS            R0, R0, #0x1D
4F6DDA:  BPL             loc_4F6DE6
4F6DDC:  LDR.W           R0, [R8]
4F6DE0:  CMP             R0, #0
4F6DE2:  BEQ.W           loc_4F6C3E
4F6DE6:  MOV             R0, R5; this
4F6DE8:  MOV.W           R1, #0x334; int
4F6DEC:  MOV             R2, R10; CPed *
4F6DEE:  BLX             j__ZN20CTaskComplexEnterCar13CreateSubTaskEiP4CPed; CTaskComplexEnterCar::CreateSubTask(int,CPed *)
4F6DF2:  MOV             R6, R0
4F6DF4:  LDR             R0, [R5,#0x40]
4F6DF6:  LDR.W           R9, [R0,#0x440]
4F6DFA:  MOVS            R0, #dword_14; this
4F6DFC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F6E00:  LDR             R1, [R5,#0xC]; CVehicle *
4F6E02:  MOV             R4, R0
4F6E04:  LDR             R2, [R5,#0x14]; int
4F6E06:  BLX             j__ZN41CTaskComplexCarSlowBeDraggedOutAndStandUpC2EP8CVehiclei; CTaskComplexCarSlowBeDraggedOutAndStandUp::CTaskComplexCarSlowBeDraggedOutAndStandUp(CVehicle *,int)
4F6E0A:  MOV             R0, R9; this
4F6E0C:  MOV             R1, R4; CTask *
4F6E0E:  MOVS            R2, #1; bool
4F6E10:  BLX             j__ZN16CPedIntelligence26AddTaskPrimaryMaybeInGroupEP5CTaskb; CPedIntelligence::AddTaskPrimaryMaybeInGroup(CTask *,bool)
4F6E14:  LDR             R1, [R5,#0xC]; CVehicle *
4F6E16:  ADD             R4, SP, #0x98+var_5C
4F6E18:  LDR             R0, [R5,#0x40]
4F6E1A:  MOVS            R3, #0
4F6E1C:  LDR.W           R2, [R1,#0x464]
4F6E20:  CMP             R2, R0
4F6E22:  MOV             R0, R4; this
4F6E24:  IT EQ
4F6E26:  MOVEQ           R3, #1; bool
4F6E28:  MOV             R2, R10; CPed *
4F6E2A:  BLX             j__ZN19CEventDraggedOutCarC2EPK8CVehiclePK4CPedb; CEventDraggedOutCar::CEventDraggedOutCar(CVehicle const*,CPed const*,bool)
4F6E2E:  LDR             R0, [R5,#0x40]
4F6E30:  MOV             R1, R4; CEvent *
4F6E32:  MOVS            R2, #1; bool
4F6E34:  LDR.W           R0, [R0,#0x440]
4F6E38:  ADDS            R0, #0x68 ; 'h'; this
4F6E3A:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4F6E3E:  LDR             R0, [R5,#0xC]
4F6E40:  LDR             R1, [R5,#0x40]; CPed *
4F6E42:  LDR.W           R0, [R0,#0x464]; this
4F6E46:  CMP             R0, R1
4F6E48:  BEQ             loc_4F6ED8
4F6E4A:  ADD             R0, SP, #0x98+var_5C; this
4F6E4C:  BLX             j__ZN19CEventDraggedOutCarD2Ev; CEventDraggedOutCar::~CEventDraggedOutCar()
4F6E50:  B               loc_4F6C4C
4F6E52:  MOVS            R0, #dword_24; this
4F6E54:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F6E58:  LDR             R1, [R5,#0xC]; CVehicle *
4F6E5A:  MOV             R6, R0
4F6E5C:  LDR             R2, [R5,#0x14]; int
4F6E5E:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F6E60:  BLX             j__ZN19CTaskSimpleCarGetInC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarGetIn::CTaskSimpleCarGetIn(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F6E64:  LDR             R0, [R5,#0xC]
4F6E66:  LDRB.W          R1, [R0,#0x628]
4F6E6A:  ORR.W           R1, R1, #8
4F6E6E:  STRB.W          R1, [R0,#0x628]
4F6E72:  B               loc_4F6C4C
4F6E74:  CMP             R4, #0
4F6E76:  BEQ.W           loc_4F69F2
4F6E7A:  LDRB            R0, [R5,#0x10]
4F6E7C:  LSLS            R0, R0, #0x1F
4F6E7E:  BEQ             loc_4F6E96
4F6E80:  LDR             R0, [R5,#0xC]; this
4F6E82:  MOV             R1, R4; CPed *
4F6E84:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
4F6E88:  CMP             R0, #1
4F6E8A:  BEQ             loc_4F6EB6
4F6E8C:  LDR.W           R4, [R8]
4F6E90:  CMP             R4, #0
4F6E92:  BEQ.W           loc_4F69F2
4F6E96:  LDRB            R0, [R5,#0x10]
4F6E98:  LSLS            R0, R0, #0x1F
4F6E9A:  BNE.W           loc_4F69F2
4F6E9E:  LDR             R6, [R5,#0xC]
4F6EA0:  LDR             R1, [R5,#0x14]; CVehicle *
4F6EA2:  MOV             R0, R6; this
4F6EA4:  BLX             j__ZN13CCarEnterExit32ComputePassengerIndexFromCarDoorERK8CVehiclei; CCarEnterExit::ComputePassengerIndexFromCarDoor(CVehicle const&,int)
4F6EA8:  ADD.W           R0, R6, R0,LSL#2
4F6EAC:  LDR.W           R0, [R0,#0x468]
4F6EB0:  CMP             R4, R0
4F6EB2:  BNE.W           loc_4F69F2
4F6EB6:  LDR             R0, [R5,#0xC]; this
4F6EB8:  LDR             R1, [R5,#0x14]; CVehicle *
4F6EBA:  BLX             j__ZN13CCarEnterExit17CarHasDoorToCloseERK8CVehiclei; CCarEnterExit::CarHasDoorToClose(CVehicle const&,int)
4F6EBE:  CMP             R0, #1
4F6EC0:  BNE.W           loc_4F6C3E
4F6EC4:  MOVS            R0, #dword_1C; this
4F6EC6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F6ECA:  LDR             R1, [R5,#0xC]; CVehicle *
4F6ECC:  MOV             R6, R0
4F6ECE:  LDR             R2, [R5,#0x14]; int
4F6ED0:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F6ED2:  BLX             j__ZN34CTaskSimpleCarCloseDoorFromOutsideC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarCloseDoorFromOutside::CTaskSimpleCarCloseDoorFromOutside(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F6ED6:  B               loc_4F6C4C
4F6ED8:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4F6EDC:  MOV             R4, R0
4F6EDE:  CMP             R4, #0
4F6EE0:  BEQ             loc_4F6E4A
4F6EE2:  LDR.W           R1, [R8]; CPed *
4F6EE6:  ADD.W           R0, R4, #8; this
4F6EEA:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
4F6EEE:  CMP             R0, #1
4F6EF0:  BNE             loc_4F6E4A
4F6EF2:  MOVS            R0, #word_10; this
4F6EF4:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4F6EF8:  MOV             R9, R0
4F6EFA:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4F6EFE:  LDR             R0, =(_ZTV29CEventLeaderExitedCarAsDriver_ptr - 0x4F6F06)
4F6F00:  MOV             R2, R9; CEvent *
4F6F02:  ADD             R0, PC; _ZTV29CEventLeaderExitedCarAsDriver_ptr
4F6F04:  LDR             R0, [R0]; `vtable for'CEventLeaderExitedCarAsDriver ...
4F6F06:  ADDS            R0, #8
4F6F08:  STR.W           R0, [R9]
4F6F0C:  LDR.W           R1, [R8]; CPed *
4F6F10:  ADD.W           R8, SP, #0x98+var_70
4F6F14:  MOV             R0, R8; this
4F6F16:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
4F6F1A:  ADD.W           R0, R4, #0x30 ; '0'; this
4F6F1E:  MOV             R1, R8; CEvent *
4F6F20:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
4F6F24:  MOV             R0, R8; this
4F6F26:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
4F6F2A:  B               loc_4F6E4A
