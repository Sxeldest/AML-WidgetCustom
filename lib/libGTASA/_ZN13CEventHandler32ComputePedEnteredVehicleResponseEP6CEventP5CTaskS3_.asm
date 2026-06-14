; =========================================================
; Game Engine Function: _ZN13CEventHandler32ComputePedEnteredVehicleResponseEP6CEventP5CTaskS3_
; Address            : 0x380AB8 - 0x380CA4
; =========================================================

380AB8:  PUSH            {R4-R7,LR}
380ABA:  ADD             R7, SP, #0xC
380ABC:  PUSH.W          {R8-R10}
380AC0:  SUB             SP, SP, #0x10
380AC2:  MOV             R4, R1
380AC4:  MOV             R10, R0
380AC6:  LDR             R5, [R4,#0x14]
380AC8:  CBZ             R5, loc_380B2E
380ACA:  LDR             R6, [R4,#0x10]
380ACC:  CMP             R6, #0
380ACE:  ITTT NE
380AD0:  LDRNE.W         R1, [R10]; CPed *
380AD4:  LDRBNE.W        R0, [R1,#0x485]
380AD8:  MOVSNE.W        R0, R0,LSL#31
380ADC:  BEQ             loc_380B2E
380ADE:  LDR.W           R0, [R1,#0x590]; this
380AE2:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
380AE6:  LDR.W           R0, [R5,#0x388]
380AEA:  LDRB.W          R0, [R0,#0xDE]
380AEE:  CMP             R0, #0xF
380AF0:  BNE             loc_380B36
380AF2:  MOVS            R0, #dword_40; this
380AF4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380AF8:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x380B02)
380AFA:  LDR             R5, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x380B06)
380AFC:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x380B08)
380AFE:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
380B00:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x380B0C)
380B02:  ADD             R5, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
380B04:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
380B06:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
380B08:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
380B0A:  LDR             R5, [R5]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
380B0C:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
380B0E:  LDR             R4, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
380B10:  VLDR            S0, [R2]
380B14:  LDR             R2, [R5]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
380B16:  LDR             R3, [R1]; float
380B18:  LDR             R1, [R4]; CTaskComplexSmartFleeEntity::ms_iFleeTime
380B1A:  STRD.W          R1, R2, [SP,#0x28+var_28]; int
380B1E:  MOV             R1, R6; CEntity *
380B20:  MOVS            R2, #0; bool
380B22:  VSTR            S0, [SP,#0x28+var_20]
380B26:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
380B2A:  STR.W           R0, [R10,#0x24]
380B2E:  ADD             SP, SP, #0x10
380B30:  POP.W           {R8-R10}
380B34:  POP             {R4-R7,PC}
380B36:  LDR             R0, =(g_InterestingEvents_ptr - 0x380B40)
380B38:  MOVS            R1, #0x14
380B3A:  MOV             R2, R5
380B3C:  ADD             R0, PC; g_InterestingEvents_ptr
380B3E:  LDR             R0, [R0]; g_InterestingEvents
380B40:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
380B44:  LDR.W           R8, [R4,#0x18]
380B48:  BLX             rand
380B4C:  UXTH            R0, R0
380B4E:  VLDR            S2, =0.000015259
380B52:  VMOV            S0, R0
380B56:  VCVT.F32.S32    S0, S0
380B5A:  VMUL.F32        S0, S0, S2
380B5E:  VLDR            S2, =300.0
380B62:  VMUL.F32        S0, S0, S2
380B66:  VCVT.S32.F32    S0, S0
380B6A:  LDRSH.W         R0, [R4,#0xA]
380B6E:  CMP.W           R0, #0x3E8
380B72:  VMOV            R1, S0
380B76:  ADD.W           R9, R1, #0x12C
380B7A:  BGE             loc_380BAA
380B7C:  SUB.W           R1, R0, #0x2C0; switch 5 cases
380B80:  CMP             R1, #4
380B82:  BHI             def_380B84; jumptable 00380B84 default case
380B84:  TBB.W           [PC,R1]; switch jump
380B88:  DCB 4; jump table for switch statement
380B89:  DCB 3
380B8A:  DCB 0x72
380B8B:  DCB 0x2A
380B8C:  DCB 0x35
380B8D:  ALIGN 2
380B8E:  B               loc_380B2E; jumptable 00380B84 case 705
380B90:  MOVS            R0, #dword_34; jumptable 00380B84 case 704
380B92:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380B96:  MOVS            R1, #1
380B98:  MOVS            R2, #0
380B9A:  STRD.W          R2, R1, [SP,#0x28+var_28]; bool
380B9E:  MOV             R1, R5; CVehicle *
380BA0:  MOV             R2, R8; int
380BA2:  MOV             R3, R9; int
380BA4:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
380BA8:  B               loc_380B2A
380BAA:  BEQ             loc_380C12
380BAC:  MOVW            R1, #0x3EB; unsigned int
380BB0:  CMP             R0, R1
380BB2:  BEQ             loc_380C8E
380BB4:  MOVW            R1, #0x451
380BB8:  CMP             R0, R1
380BBA:  BNE             loc_380B2E
380BBC:  MOV             R0, R6; this
380BBE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
380BC2:  CBNZ            R0, loc_380BD8
380BC4:  MOVS            R0, #dword_20; this
380BC6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380BCA:  MOV             R1, R6; CPed *
380BCC:  MOVS            R2, #0; bool
380BCE:  BLX             j__ZN24CTaskComplexKillCriminalC2EP4CPedb; CTaskComplexKillCriminal::CTaskComplexKillCriminal(CPed *,bool)
380BD2:  B               loc_380B2A
380BD4:  CMP             R0, #0xC8; jumptable 00380B84 default case
380BD6:  BNE             loc_380B2E
380BD8:  MOVS            R0, #0
380BDA:  B               loc_380B2A
380BDC:  MOVS            R0, #dword_1C; jumptable 00380B84 case 707
380BDE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380BE2:  MOVS            R1, #0
380BE4:  MOV             R2, R8; int
380BE6:  STR             R1, [SP,#0x28+var_28]; bool
380BE8:  MOV             R1, R5; CVehicle *
380BEA:  MOV             R3, R9; int
380BEC:  BLX             j__ZN29CTaskComplexLeaveCarAndWanderC2EP8CVehicleiib; CTaskComplexLeaveCarAndWander::CTaskComplexLeaveCarAndWander(CVehicle *,int,int,bool)
380BF0:  B               loc_380B2A
380BF2:  MOV             R0, R6; jumptable 00380B84 case 708
380BF4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
380BF8:  CMP             R0, #1
380BFA:  BNE             loc_380C02
380BFC:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
380C00:  CBNZ            R0, loc_380C6C; jumptable 00380B84 case 706
380C02:  MOVS            R0, #dword_20; this
380C04:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380C08:  MOV             R1, R5; CVehicle *
380C0A:  MOV             R2, R8; int
380C0C:  BLX             j__ZN32CTaskComplexScreamInCarThenLeaveC2EP8CVehiclei; CTaskComplexScreamInCarThenLeave::CTaskComplexScreamInCarThenLeave(CVehicle *,int)
380C10:  B               loc_380B2A
380C12:  LDR.W           R0, [R10]
380C16:  LDRB.W          R1, [R0,#0x448]
380C1A:  CMP             R1, #2
380C1C:  BEQ             loc_380C4E
380C1E:  LDRSB.W         R1, [R0,#0x71C]
380C22:  LDRSB.W         R4, [R6,#0x71C]
380C26:  RSB.W           R1, R1, R1,LSL#3
380C2A:  ADD.W           R0, R0, R1,LSL#2
380C2E:  ADDW            R0, R0, #0x5A4; this
380C32:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
380C36:  CMP             R0, #1
380C38:  BNE             loc_380C4E
380C3A:  RSB.W           R0, R4, R4,LSL#3
380C3E:  ADD.W           R0, R6, R0,LSL#2
380C42:  ADDW            R0, R0, #0x5A4; this
380C46:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
380C4A:  CMP             R0, #1
380C4C:  BNE             loc_380C6C; jumptable 00380B84 case 706
380C4E:  MOVS            R0, #dword_38; this
380C50:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380C54:  MOVS            R2, #0
380C56:  MOVS            R1, #1
380C58:  STRD.W          R2, R2, [SP,#0x28+var_28]; unsigned int
380C5C:  MOV.W           R2, #0xFFFFFFFF; int
380C60:  STR             R1, [SP,#0x28+var_20]; int
380C62:  MOV             R1, R6; CPed *
380C64:  MOVS            R3, #0; unsigned int
380C66:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
380C6A:  B               loc_380B2A
380C6C:  MOVS            R0, #word_28; jumptable 00380B84 case 706
380C6E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380C72:  LDR             R1, [R5,#0x14]
380C74:  MOVS            R2, #0
380C76:  STRD.W          R9, R2, [SP,#0x28+var_28]; int
380C7A:  MOV             R3, R8; int
380C7C:  ADD.W           R2, R1, #0x30 ; '0'
380C80:  CMP             R1, #0
380C82:  IT EQ
380C84:  ADDEQ           R2, R5, #4; CVector *
380C86:  MOV             R1, R5; CVehicle *
380C88:  BLX             j__ZN27CTaskComplexLeaveCarAndFleeC2EP8CVehicleRK7CVectoriib; CTaskComplexLeaveCarAndFlee::CTaskComplexLeaveCarAndFlee(CVehicle *,CVector const&,int,int,bool)
380C8C:  B               loc_380B2A
380C8E:  MOVS            R0, #dword_20; this
380C90:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380C94:  MOVS            R1, #0
380C96:  MOVS            R2, #0; unsigned int
380C98:  STR             R1, [SP,#0x28+var_28]; unsigned int
380C9A:  MOV             R1, R5; CVehicle *
380C9C:  MOVS            R3, #0; unsigned int
380C9E:  BLX             j__ZN22CTaskComplexDestroyCarC2EP8CVehiclejjj; CTaskComplexDestroyCar::CTaskComplexDestroyCar(CVehicle *,uint,uint,uint)
380CA2:  B               loc_380B2A
