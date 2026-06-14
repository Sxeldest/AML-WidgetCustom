; =========================================================
; Game Engine Function: _ZN13CEventScanner13ScanForEventsER4CPed
; Address            : 0x4BFB50 - 0x4BFED8
; =========================================================

4BFB50:  PUSH            {R4-R7,LR}
4BFB52:  ADD             R7, SP, #0xC
4BFB54:  PUSH.W          {R8-R10}
4BFB58:  SUB             SP, SP, #0x58
4BFB5A:  MOV             R5, R0
4BFB5C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BFB66)
4BFB5E:  MOV             R4, R1
4BFB60:  LDR             R1, [R5]
4BFB62:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BFB64:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BFB66:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4BFB68:  CMP             R0, R1
4BFB6A:  BLS.W           loc_4BFEB6
4BFB6E:  ADDS            R0, R5, #4; this
4BFB70:  MOV             R1, R4; CPed *
4BFB72:  LDR.W           R10, [R4,#0x440]
4BFB76:  BLX             j__ZN33CVehiclePotentialCollisionScanner38ScanForVehiclePotentialCollisionEventsERK4CPedPP7CEntityi; CVehiclePotentialCollisionScanner::ScanForVehiclePotentialCollisionEvents(CPed const&,CEntity **,int)
4BFB7A:  LDR.W           R2, [R10,#0x170]; CPed *
4BFB7E:  MOV             R1, R4; CPed *
4BFB80:  BLX             j__ZNK29CPedPotentialCollisionScanner34ScanForPedPotentialCollisionEventsERK4CPedPS0_; CPedPotentialCollisionScanner::ScanForPedPotentialCollisionEvents(CPed const&,CPed*)
4BFB84:  ADD.W           R0, R5, #0x10; this
4BFB88:  MOV             R1, R4; CPed *
4BFB8A:  BLX             j__ZN32CObjectPotentialCollisionScanner37ScanForObjectPotentialCollisionEventsERK4CPed; CObjectPotentialCollisionScanner::ScanForObjectPotentialCollisionEvents(CPed const&)
4BFB8E:  LDRB.W          R0, [R5,#0xB4]
4BFB92:  ADD.W           R6, R5, #0xAC
4BFB96:  CBNZ            R0, loc_4BFBB2
4BFB98:  LDR             R1, =(_ZN23CPedAcquaintanceScanner26ms_iAcquaintanceScanPeriodE_ptr - 0x4BFBA0)
4BFB9A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BFBA2)
4BFB9C:  ADD             R1, PC; _ZN23CPedAcquaintanceScanner26ms_iAcquaintanceScanPeriodE_ptr
4BFB9E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BFBA0:  LDR             R1, [R1]; CPedAcquaintanceScanner::ms_iAcquaintanceScanPeriod ...
4BFBA2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BFBA4:  LDR             R1, [R1]; CPedAcquaintanceScanner::ms_iAcquaintanceScanPeriod
4BFBA6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4BFBA8:  STRD.W          R0, R1, [R5,#0xAC]
4BFBAC:  MOVS            R0, #1
4BFBAE:  STRB.W          R0, [R5,#0xB4]
4BFBB2:  LDRB.W          R0, [R5,#0xB5]
4BFBB6:  ADD.W           R8, R10, #0x130
4BFBBA:  CBZ             R0, loc_4BFBD2
4BFBBC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BFBC4)
4BFBBE:  MOVS            R1, #0
4BFBC0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BFBC2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BFBC4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4BFBC6:  STRB.W          R1, [R5,#0xB5]
4BFBCA:  STR.W           R0, [R5,#0xAC]
4BFBCE:  MOV             R1, R0
4BFBD0:  B               loc_4BFBDC
4BFBD2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BFBDA)
4BFBD4:  LDR             R1, [R6]
4BFBD6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BFBD8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BFBDA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4BFBDC:  LDR.W           R2, [R5,#0xB0]
4BFBE0:  ADD             R1, R2
4BFBE2:  CMP             R1, R0
4BFBE4:  BHI             loc_4BFC28
4BFBE6:  LDR             R1, =(_ZN23CPedAcquaintanceScanner26ms_iAcquaintanceScanPeriodE_ptr - 0x4BFBEC)
4BFBE8:  ADD             R1, PC; _ZN23CPedAcquaintanceScanner26ms_iAcquaintanceScanPeriodE_ptr
4BFBEA:  LDR             R1, [R1]; CPedAcquaintanceScanner::ms_iAcquaintanceScanPeriod ...
4BFBEC:  LDR             R1, [R1]; CPedAcquaintanceScanner::ms_iAcquaintanceScanPeriod
4BFBEE:  STRD.W          R0, R1, [R5,#0xAC]
4BFBF2:  MOVS            R0, #1
4BFBF4:  STRB.W          R0, [R5,#0xB4]
4BFBF8:  MOV             R0, R6; this
4BFBFA:  MOV             R1, R4; CPed *
4BFBFC:  BLX             j__ZNK23CPedAcquaintanceScanner15IsScanPermittedERK4CPed; CPedAcquaintanceScanner::IsScanPermitted(CPed const&)
4BFC00:  CMP             R0, #1
4BFC02:  BNE             loc_4BFC28
4BFC04:  MOVS            R0, #0
4BFC06:  ADD             R1, SP, #0x70+var_5C
4BFC08:  STR             R0, [SP,#0x70+var_5C]
4BFC0A:  MOV.W           R0, #0xFFFFFFFF
4BFC0E:  STR             R0, [SP,#0x70+var_1C]
4BFC10:  MOVS            R2, #0x10
4BFC12:  ADD             R0, SP, #0x70+var_1C
4BFC14:  STRD.W          R2, R1, [SP,#0x70+var_70]; int
4BFC18:  STR             R0, [SP,#0x70+var_68]; int *
4BFC1A:  MOV             R0, R6; this
4BFC1C:  MOV             R1, R4; CPed *
4BFC1E:  MOV.W           R2, #0xFFFFFFFF; int
4BFC22:  MOV             R3, R8; CEntity **
4BFC24:  BLX             j__ZN23CPedAcquaintanceScanner23FindClosestAcquaintanceER4CPediPP7CEntityiRPS0_Ri; CPedAcquaintanceScanner::FindClosestAcquaintance(CPed &,int,CEntity **,int,CPed*&,int &)
4BFC28:  ADD.W           R0, R5, #0x1C; this
4BFC2C:  MOV             R1, R4; CPed *
4BFC2E:  BLX             j__ZN17CAttractorScanner24ScanForAttractorsInRangeERK4CPed; CAttractorScanner::ScanForAttractorsInRange(CPed const&)
4BFC32:  ADD.W           R0, R5, #0xC8; this
4BFC36:  MOV             R1, R4; CPed *
4BFC38:  BLX             j__ZN18CNearbyFireScanner18ScanForNearbyFiresERK4CPed; CNearbyFireScanner::ScanForNearbyFires(CPed const&)
4BFC3C:  ADD.W           R0, R10, #0x174; this
4BFC40:  MOV             R1, R4; CPed *
4BFC42:  BLX             j__ZN12CMentalState7ProcessERK4CPed; CMentalState::Process(CPed const&)
4BFC46:  LDR.W           R0, [R4,#0x484]
4BFC4A:  ADDW            R9, R4, #0x484
4BFC4E:  TST.W           R0, #1
4BFC52:  BNE             loc_4BFC80
4BFC54:  LSLS            R0, R0, #0x16
4BFC56:  BMI             loc_4BFC60
4BFC58:  MOV             R0, R4; this
4BFC5A:  BLX             j__ZN20CPedGeometryAnalyser7IsInAirERK4CPed; CPedGeometryAnalyser::IsInAir(CPed const&)
4BFC5E:  CBZ             R0, loc_4BFC7C
4BFC60:  ADD             R6, SP, #0x70+var_5C
4BFC62:  MOV             R0, R6; this
4BFC64:  BLX             j__ZN11CEventInAirC2Ev; CEventInAir::CEventInAir(void)
4BFC68:  ADD.W           R0, R10, #0x68 ; 'h'; this
4BFC6C:  MOV             R1, R6; CEvent *
4BFC6E:  MOVS            R2, #0; bool
4BFC70:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BFC74:  MOV             R0, R6; this
4BFC76:  BLX             j__ZN6CEventD2Ev_6; CEvent::~CEvent()
4BFC7A:  B               loc_4BFCAC
4BFC7C:  LDR.W           R0, [R9]
4BFC80:  LSLS            R0, R0, #0x16
4BFC82:  BPL             loc_4BFCAC
4BFC84:  ADD.W           R6, R10, #0x38 ; '8'
4BFC88:  MOV             R0, R6; this
4BFC8A:  BLX             j__ZNK20CEventHandlerHistory15GetCurrentEventEv; CEventHandlerHistory::GetCurrentEvent(void)
4BFC8E:  CBZ             R0, loc_4BFCA0
4BFC90:  MOV             R0, R6; this
4BFC92:  BLX             j__ZNK20CEventHandlerHistory15GetCurrentEventEv; CEventHandlerHistory::GetCurrentEvent(void)
4BFC96:  LDR             R1, [R0]
4BFC98:  LDR             R1, [R1,#8]
4BFC9A:  BLX             R1
4BFC9C:  CMP             R0, #0x21 ; '!'
4BFC9E:  BEQ             loc_4BFCAC
4BFCA0:  LDR.W           R0, [R9]
4BFCA4:  BIC.W           R0, R0, #0x200
4BFCA8:  STR.W           R0, [R9]
4BFCAC:  LDR.W           R0, [R4,#0x738]
4BFCB0:  CBZ             R0, loc_4BFCF8
4BFCB2:  ADD             R0, SP, #0x70+var_5C; this
4BFCB4:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
4BFCB8:  LDR             R0, =(_ZTV12CEventOnFire_ptr - 0x4BFCBE)
4BFCBA:  ADD             R0, PC; _ZTV12CEventOnFire_ptr
4BFCBC:  LDR             R0, [R0]; `vtable for'CEventOnFire ...
4BFCBE:  ADDS            R0, #8
4BFCC0:  STR             R0, [SP,#0x70+var_5C]
4BFCC2:  MOV             R0, R4; this
4BFCC4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BFCC8:  CBNZ            R0, loc_4BFCE6
4BFCCA:  ADD.W           R0, R10, #4; this
4BFCCE:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BFCD2:  CBZ             R0, loc_4BFCE6
4BFCD4:  LDR             R1, [R0]
4BFCD6:  ADD             R3, SP, #0x70+var_5C
4BFCD8:  MOVS            R2, #1
4BFCDA:  LDR             R6, [R1,#0x1C]
4BFCDC:  MOV             R1, R4
4BFCDE:  BLX             R6
4BFCE0:  CMP             R0, #0
4BFCE2:  BEQ.W           loc_4BFEBE
4BFCE6:  ADD.W           R0, R10, #0x68 ; 'h'; this
4BFCEA:  ADD             R1, SP, #0x70+var_5C; CEvent *
4BFCEC:  MOVS            R2, #0; bool
4BFCEE:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BFCF2:  ADD             R0, SP, #0x70+var_5C; this
4BFCF4:  BLX             j__ZN6CEventD2Ev_3; CEvent::~CEvent()
4BFCF8:  ADD.W           R0, R5, #0xBC; this
4BFCFC:  MOV             R1, R4; CPed *
4BFCFE:  MOV             R2, R8; CEntity **
4BFD00:  MOVS            R3, #0x10; int
4BFD02:  BLX             j__ZN15CSexyPedScanner20ScanForSexyPedEventsERK4CPedPP7CEntityi; CSexyPedScanner::ScanForSexyPedEvents(CPed const&,CEntity **,int)
4BFD06:  LDR.W           R0, [R4,#0x440]
4BFD0A:  MOVS            R1, #4; int
4BFD0C:  MOV.W           R2, #0x3E8; int
4BFD10:  ADDS            R5, R0, #4
4BFD12:  MOV             R0, R5; this
4BFD14:  BLX             j__ZNK12CTaskManager14FindTaskByTypeEii; CTaskManager::FindTaskByType(int,int)
4BFD18:  CBNZ            R0, loc_4BFD44
4BFD1A:  MOV             R0, R5; this
4BFD1C:  MOVS            R1, #3; int
4BFD1E:  MOV.W           R2, #0x3E8; int
4BFD22:  BLX             j__ZNK12CTaskManager14FindTaskByTypeEii; CTaskManager::FindTaskByType(int,int)
4BFD26:  CBNZ            R0, loc_4BFD44
4BFD28:  MOV             R0, R5; this
4BFD2A:  MOVS            R1, #1; int
4BFD2C:  MOV.W           R2, #0x3E8; int
4BFD30:  BLX             j__ZNK12CTaskManager14FindTaskByTypeEii; CTaskManager::FindTaskByType(int,int)
4BFD34:  CBNZ            R0, loc_4BFD44
4BFD36:  MOV             R0, R5; this
4BFD38:  MOVS            R1, #2; int
4BFD3A:  MOV.W           R2, #0x3E8; int
4BFD3E:  BLX             j__ZNK12CTaskManager14FindTaskByTypeEii; CTaskManager::FindTaskByType(int,int)
4BFD42:  CBZ             R0, loc_4BFD82
4BFD44:  LDR             R1, [R0,#0x10]; CPed *
4BFD46:  CMP             R1, #0
4BFD48:  ITT NE
4BFD4A:  LDRNE.W         R0, [R1,#0x588]
4BFD4E:  CMPNE           R0, #0
4BFD50:  BEQ             loc_4BFD82
4BFD52:  LDR.W           R2, [R4,#0x588]
4BFD56:  CMP             R2, #0
4BFD58:  ITTT NE
4BFD5A:  LDRBNE.W        R2, [R2,#0x33]
4BFD5E:  LDRBNE.W        R0, [R0,#0x33]
4BFD62:  CMPNE           R0, R2
4BFD64:  BEQ             loc_4BFD82
4BFD66:  ADD             R5, SP, #0x70+var_5C
4BFD68:  MOV             R0, R5; this
4BFD6A:  BLX             j__ZN15CEventAreaCodesC2EP4CPed_0; CEventAreaCodes::CEventAreaCodes(CPed *)
4BFD6E:  LDR.W           R0, [R4,#0x440]
4BFD72:  MOV             R1, R5; CEvent *
4BFD74:  MOVS            R2, #0; bool
4BFD76:  ADDS            R0, #0x68 ; 'h'; this
4BFD78:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BFD7C:  MOV             R0, R5; this
4BFD7E:  BLX             j__ZN15CEventAreaCodesD2Ev; CEventAreaCodes::~CEventAreaCodes()
4BFD82:  LDR.W           R0, [R4,#0x588]
4BFD86:  CBZ             R0, loc_4BFDCA
4BFD88:  LDR             R1, =(MI_ESCALATORSTEP_ptr - 0x4BFD92)
4BFD8A:  LDRSH.W         R0, [R0,#0x26]
4BFD8E:  ADD             R1, PC; MI_ESCALATORSTEP_ptr
4BFD90:  LDR             R1, [R1]; MI_ESCALATORSTEP
4BFD92:  LDRH            R1, [R1]
4BFD94:  CMP             R0, R1
4BFD96:  BEQ             loc_4BFDA4
4BFD98:  LDR             R1, =(MI_ESCALATORSTEP8_ptr - 0x4BFD9E)
4BFD9A:  ADD             R1, PC; MI_ESCALATORSTEP8_ptr
4BFD9C:  LDR             R1, [R1]; MI_ESCALATORSTEP8
4BFD9E:  LDRH            R1, [R1]
4BFDA0:  CMP             R0, R1
4BFDA2:  BNE             loc_4BFDCA
4BFDA4:  ADD             R5, SP, #0x70+var_5C
4BFDA6:  MOV             R0, R5; this
4BFDA8:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
4BFDAC:  LDR             R0, =(_ZTV15CEventEscalator_ptr - 0x4BFDB6)
4BFDAE:  MOV             R1, R5; CEvent *
4BFDB0:  MOVS            R2, #0; bool
4BFDB2:  ADD             R0, PC; _ZTV15CEventEscalator_ptr
4BFDB4:  LDR             R0, [R0]; `vtable for'CEventEscalator ...
4BFDB6:  ADDS            R0, #8
4BFDB8:  STR             R0, [SP,#0x70+var_5C]
4BFDBA:  LDR.W           R0, [R4,#0x440]
4BFDBE:  ADDS            R0, #0x68 ; 'h'; this
4BFDC0:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BFDC4:  MOV             R0, R5; this
4BFDC6:  BLX             j__ZN6CEventD2Ev_3; CEvent::~CEvent()
4BFDCA:  LDRB.W          R0, [R9,#1]
4BFDCE:  LSLS            R0, R0, #0x1F
4BFDD0:  ITT NE
4BFDD2:  LDRNE.W         R0, [R4,#0x590]
4BFDD6:  CMPNE           R0, #0
4BFDD8:  BEQ             loc_4BFE32
4BFDDA:  LDR.W           R0, [R0,#0x5A0]
4BFDDE:  CMP             R0, #5
4BFDE0:  BNE             loc_4BFE32
4BFDE2:  MOV             R0, R4; this
4BFDE4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BFDE8:  CBNZ            R0, loc_4BFE32
4BFDEA:  MOV.W           R0, #0xFFFFFFFF; int
4BFDEE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4BFDF2:  LDR.W           R1, [R4,#0x590]
4BFDF6:  LDR.W           R0, [R0,#0x588]
4BFDFA:  CMP             R0, R1
4BFDFC:  BNE             loc_4BFE32
4BFDFE:  MOV.W           R0, #0xFFFFFFFF; int
4BFE02:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4BFE06:  LDR.W           R2, [R4,#0x590]; CVehicle *
4BFE0A:  ADD             R5, SP, #0x70+var_5C
4BFE0C:  MOV             R1, R0; CPed *
4BFE0E:  MOVS            R3, #0xA; int
4BFE10:  MOV             R0, R5; this
4BFE12:  BLX             j__ZN25CEventPedEnteredMyVehicleC2EPK4CPedPK8CVehiclei; CEventPedEnteredMyVehicle::CEventPedEnteredMyVehicle(CPed const*,CVehicle const*,int)
4BFE16:  MOVW            R0, #0x2C2
4BFE1A:  MOV             R1, R5; CEvent *
4BFE1C:  STRH.W          R0, [SP,#0x70+var_52]
4BFE20:  MOVS            R2, #0; bool
4BFE22:  LDR.W           R0, [R4,#0x440]
4BFE26:  ADDS            R0, #0x68 ; 'h'; this
4BFE28:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BFE2C:  MOV             R0, R5; this
4BFE2E:  BLX             j__ZN25CEventPedEnteredMyVehicleD2Ev; CEventPedEnteredMyVehicle::~CEventPedEnteredMyVehicle()
4BFE32:  ADDW            R0, R4, #0x544
4BFE36:  VLDR            S0, [R0]
4BFE3A:  VCMPE.F32       S0, #0.0
4BFE3E:  VMRS            APSR_nzcv, FPSCR
4BFE42:  BGT             loc_4BFEB6
4BFE44:  MOV             R0, R4; this
4BFE46:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4BFE4A:  CMP             R0, #1
4BFE4C:  BNE             loc_4BFEB6
4BFE4E:  LDR             R0, =(_ZN13CEventScanner22m_sDeadPedWalkingTimerE_ptr - 0x4BFE56)
4BFE50:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BFE58)
4BFE52:  ADD             R0, PC; _ZN13CEventScanner22m_sDeadPedWalkingTimerE_ptr
4BFE54:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BFE56:  LDR             R0, [R0]; CEventScanner::m_sDeadPedWalkingTimer ...
4BFE58:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4BFE5A:  LDR             R0, [R0]; CEventScanner::m_sDeadPedWalkingTimer
4BFE5C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4BFE5E:  CMP             R1, R0
4BFE60:  BLS             loc_4BFEB6
4BFE62:  ADD             R5, SP, #0x70+var_5C
4BFE64:  MOVS            R6, #0
4BFE66:  MOV.W           R8, #3
4BFE6A:  MOVS            R1, #0; this
4BFE6C:  MOV             R0, R5; int
4BFE6E:  MOVS            R2, #0; int
4BFE70:  MOVS            R3, #0x37 ; '7'; int
4BFE72:  STRD.W          R8, R6, [SP,#0x70+var_70]; int
4BFE76:  STRD.W          R6, R6, [SP,#0x70+var_68]; int
4BFE7A:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
4BFE7E:  LDR.W           R0, [R4,#0x440]
4BFE82:  MOV             R1, R5; CEvent *
4BFE84:  ADDS            R0, #0x68 ; 'h'; this
4BFE86:  BLX             j__ZNK11CEventGroup14HasEventOfTypeEPK6CEvent; CEventGroup::HasEventOfType(CEvent const*)
4BFE8A:  CBNZ            R0, loc_4BFEB0
4BFE8C:  MOV             R0, R4
4BFE8E:  MOVS            R1, #0
4BFE90:  MOVS            R2, #0x36 ; '6'
4BFE92:  MOVS            R3, #0xA
4BFE94:  STRD.W          R8, R6, [SP,#0x70+var_70]
4BFE98:  BLX             j__ZN7CWeapon19GenerateDamageEventEP4CPedP7CEntity11eWeaponTypei14ePedPieceTypesi; CWeapon::GenerateDamageEvent(CPed *,CEntity *,eWeaponType,int,ePedPieceTypes,int)
4BFE9C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BFEA4)
4BFE9E:  LDR             R1, =(_ZN13CEventScanner22m_sDeadPedWalkingTimerE_ptr - 0x4BFEA6)
4BFEA0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BFEA2:  ADD             R1, PC; _ZN13CEventScanner22m_sDeadPedWalkingTimerE_ptr
4BFEA4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BFEA6:  LDR             R1, [R1]; CEventScanner::m_sDeadPedWalkingTimer ...
4BFEA8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4BFEAA:  ADD.W           R0, R0, #0x7D0
4BFEAE:  STR             R0, [R1]; CEventScanner::m_sDeadPedWalkingTimer
4BFEB0:  ADD             R0, SP, #0x70+var_5C; this
4BFEB2:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
4BFEB6:  ADD             SP, SP, #0x58 ; 'X'
4BFEB8:  POP.W           {R8-R10}
4BFEBC:  POP             {R4-R7,PC}
4BFEBE:  LDR.W           R0, [R4,#0x738]
4BFEC2:  MOVS            R2, #3
4BFEC4:  MOVS            R3, #5
4BFEC6:  LDR             R1, [R0,#0x14]
4BFEC8:  MOVS            R0, #0
4BFECA:  STRD.W          R2, R0, [SP,#0x70+var_70]
4BFECE:  MOV             R0, R4
4BFED0:  MOVS            R2, #0x25 ; '%'
4BFED2:  BLX             j__ZN7CWeapon19GenerateDamageEventEP4CPedP7CEntity11eWeaponTypei14ePedPieceTypesi; CWeapon::GenerateDamageEvent(CPed *,CEntity *,eWeaponType,int,ePedPieceTypes,int)
4BFED6:  B               loc_4BFCF2
