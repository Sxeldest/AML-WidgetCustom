; =========================================================
; Game Engine Function: _ZN9CGangWars17TellGangMembersToEi
; Address            : 0x30ABAC - 0x30AD64
; =========================================================

30ABAC:  PUSH            {R4-R7,LR}
30ABAE:  ADD             R7, SP, #0xC
30ABB0:  PUSH.W          {R8-R11}
30ABB4:  SUB             SP, SP, #4
30ABB6:  VPUSH           {D8-D10}
30ABBA:  SUB             SP, SP, #0x28
30ABBC:  MOV             R11, R0
30ABBE:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x30ABC4)
30ABC0:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
30ABC2:  LDR             R0, [R0]; CPools::ms_pPedPool ...
30ABC4:  LDR.W           R10, [R0]; CPools::ms_pPedPool
30ABC8:  LDR.W           R0, [R10,#8]
30ABCC:  CMP             R0, #0
30ABCE:  BEQ.W           loc_30AD56
30ABD2:  LDR             R1, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x30ABE2)
30ABD4:  MOVW            R2, #0x7CC
30ABD8:  MULS            R2, R0
30ABDA:  VMOV.F32        S20, #8.0
30ABDE:  ADD             R1, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
30ABE0:  SUB.W           R8, R0, #1
30ABE4:  VLDR            S18, =0.000015259
30ABE8:  LDR             R1, [R1]; CTaskComplexWander::ms_fTargetRadius ...
30ABEA:  STR.W           R11, [SP,#0x60+var_54]
30ABEE:  SUB.W           R5, R2, #0x38C
30ABF2:  VLDR            S16, [R1]
30ABF6:  B               loc_30AD1E
30ABF8:  LDR.W           R0, [R4,#0x15C]
30ABFC:  CMP             R0, #8
30ABFE:  BEQ.W           loc_30AD48
30AC02:  SUBS            R0, #7
30AC04:  CMP             R0, #9
30AC06:  BHI.W           loc_30AD48
30AC0A:  CMP.W           R11, #1
30AC0E:  BEQ             loc_30AC6A
30AC10:  CMP.W           R11, #0
30AC14:  BNE.W           loc_30AD48
30AC18:  MOV.W           R0, #0xFFFFFFFF; int
30AC1C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30AC20:  MOV             R11, R0
30AC22:  MOVS            R0, #dword_38; this
30AC24:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
30AC28:  MOV             R6, R0
30AC2A:  MOVS            R0, #0
30AC2C:  STRD.W          R0, R0, [SP,#0x60+var_60]; unsigned int
30AC30:  MOVS            R0, #2
30AC32:  STR             R0, [SP,#0x60+var_58]; int
30AC34:  MOV             R1, R11; CPed *
30AC36:  MOV             R0, R6; this
30AC38:  MOV.W           R2, #0xFFFFFFFF; int
30AC3C:  MOVS            R3, #0; unsigned int
30AC3E:  LDR.W           R11, [SP,#0x60+var_54]
30AC42:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
30AC46:  ADD             R4, SP, #0x60+var_50
30AC48:  MOVS            R1, #3; int
30AC4A:  MOV             R2, R6; CTask *
30AC4C:  MOVS            R3, #0; bool
30AC4E:  MOV             R0, R4; this
30AC50:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
30AC54:  LDR.W           R0, [R9,R5]
30AC58:  MOV             R1, R4; CEvent *
30AC5A:  MOVS            R2, #0; bool
30AC5C:  ADDS            R0, #0x68 ; 'h'; this
30AC5E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
30AC62:  MOV             R0, R4; this
30AC64:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
30AC68:  B               loc_30AD48
30AC6A:  MOV             R11, R4
30AC6C:  LDR.W           R0, [R11,#0x44]!
30AC70:  TST.W           R0, #0x100
30AC74:  BEQ             loc_30ACA0
30AC76:  LDR.W           R0, [R4,#0x150]; this
30AC7A:  MOV             R1, R6; CPed *
30AC7C:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
30AC80:  CBZ             R0, loc_30AC9C
30AC82:  MOVS            R0, #dword_24; this
30AC84:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
30AC88:  LDR.W           R1, [R4,#0x150]; CVehicle *
30AC8C:  MOVS            R3, #0
30AC8E:  MOVS            R2, #0; int
30AC90:  MOVT            R3, #0x4120; float
30AC94:  MOV             R6, R0
30AC96:  BLX             j__ZN26CTaskComplexCarDriveWanderC2EP8CVehicleif; CTaskComplexCarDriveWander::CTaskComplexCarDriveWander(CVehicle *,int,float)
30AC9A:  B               loc_30ACF6
30AC9C:  LDR.W           R0, [R11]
30ACA0:  LSLS            R0, R0, #0x17
30ACA2:  BMI             loc_30ACE2
30ACA4:  MOVS            R0, #dword_38; this
30ACA6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
30ACAA:  MOV             R6, R0
30ACAC:  BLX             rand
30ACB0:  UXTH            R0, R0
30ACB2:  MOVS            R1, #4; int
30ACB4:  VMOV            S0, R0
30ACB8:  MOVS            R0, #1
30ACBA:  MOVW            R3, #0x1388; int
30ACBE:  VCVT.F32.S32    S0, S0
30ACC2:  VSTR            S16, [SP,#0x60+var_5C]
30ACC6:  VMUL.F32        S0, S0, S18
30ACCA:  VMUL.F32        S0, S0, S20
30ACCE:  VCVT.S32.F32    S0, S0
30ACD2:  STR             R0, [SP,#0x60+var_60]; bool
30ACD4:  VMOV            R0, S0
30ACD8:  UXTB            R2, R0; unsigned __int8
30ACDA:  MOV             R0, R6; this
30ACDC:  BLX             j__ZN22CTaskComplexWanderGangC2Eihibf; CTaskComplexWanderGang::CTaskComplexWanderGang(int,uchar,int,bool,float)
30ACE0:  B               loc_30ACF6
30ACE2:  MOVS            R0, #dword_60; this
30ACE4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
30ACE8:  LDR.W           R1, [R4,#0x150]; CVehicle *
30ACEC:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
30ACEE:  MOVS            R3, #0; bool
30ACF0:  MOV             R6, R0
30ACF2:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
30ACF6:  ADD             R4, SP, #0x60+var_50
30ACF8:  MOVS            R1, #3; int
30ACFA:  MOV             R2, R6; CTask *
30ACFC:  MOVS            R3, #0; bool
30ACFE:  MOV             R0, R4; this
30AD00:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
30AD04:  LDR.W           R0, [R9,R5]
30AD08:  MOV             R1, R4; CEvent *
30AD0A:  MOVS            R2, #0; bool
30AD0C:  ADDS            R0, #0x68 ; 'h'; this
30AD0E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
30AD12:  MOV             R0, R4; this
30AD14:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
30AD18:  LDR.W           R11, [SP,#0x60+var_54]
30AD1C:  B               loc_30AD48
30AD1E:  LDR.W           R0, [R10,#4]
30AD22:  LDRSB.W         R0, [R0,R8]
30AD26:  CMP             R0, #0
30AD28:  BLT             loc_30AD48
30AD2A:  LDR.W           R9, [R10]
30AD2E:  ADD.W           R4, R9, R5
30AD32:  CMP.W           R4, #0x440
30AD36:  BEQ             loc_30AD48
30AD38:  SUB.W           R6, R4, #0x440
30AD3C:  MOV             R0, R6; this
30AD3E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
30AD42:  CMP             R0, #0
30AD44:  BEQ.W           loc_30ABF8
30AD48:  SUB.W           R8, R8, #1
30AD4C:  SUBW            R5, R5, #0x7CC
30AD50:  ADDS.W          R0, R8, #1
30AD54:  BNE             loc_30AD1E
30AD56:  ADD             SP, SP, #0x28 ; '('
30AD58:  VPOP            {D8-D10}
30AD5C:  ADD             SP, SP, #4
30AD5E:  POP.W           {R8-R11}
30AD62:  POP             {R4-R7,PC}
