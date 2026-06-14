; =========================================================
; Game Engine Function: _ZN36CTaskComplexGoToCarDoorAndStandStill18CreateFirstSubTaskEP4CPed
; Address            : 0x4FFE48 - 0x5000C2
; =========================================================

4FFE48:  PUSH            {R4-R7,LR}
4FFE4A:  ADD             R7, SP, #0xC
4FFE4C:  PUSH.W          {R8,R9,R11}
4FFE50:  SUB             SP, SP, #0x28; float
4FFE52:  MOV             R4, R0
4FFE54:  MOV             R5, R1
4FFE56:  LDR             R1, [R4,#0xC]; CPed *
4FFE58:  LDR             R0, [R5,#0x14]
4FFE5A:  LDR             R2, [R1,#0x14]
4FFE5C:  ADD.W           R3, R0, #0x30 ; '0'
4FFE60:  CMP             R0, #0
4FFE62:  IT EQ
4FFE64:  ADDEQ           R3, R5, #4
4FFE66:  ADD.W           R0, R2, #0x30 ; '0'
4FFE6A:  CMP             R2, #0
4FFE6C:  VLDR            S0, [R3]
4FFE70:  IT EQ
4FFE72:  ADDEQ           R0, R1, #4
4FFE74:  VLDR            D16, [R3,#4]
4FFE78:  VLDR            S2, [R0]
4FFE7C:  VLDR            D17, [R0,#4]
4FFE80:  VSUB.F32        S0, S2, S0
4FFE84:  VLDR            S4, [R4,#0x20]
4FFE88:  VSUB.F32        D16, D17, D16
4FFE8C:  VMUL.F32        S4, S4, S4
4FFE90:  VMUL.F32        D1, D16, D16
4FFE94:  VMUL.F32        S0, S0, S0
4FFE98:  VADD.F32        S0, S0, S2
4FFE9C:  VADD.F32        S0, S0, S3
4FFEA0:  VCMPE.F32       S0, S4
4FFEA4:  VMRS            APSR_nzcv, FPSCR
4FFEA8:  BGE.W           loc_4FFFEA
4FFEAC:  LDRB.W          R0, [R4,#0x48]
4FFEB0:  CBZ             R0, loc_4FFED4
4FFEB2:  MOVS            R0, #off_18; this
4FFEB4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FFEB8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4FFEBC:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x4FFEC8)
4FFEBE:  MOVS            R2, #0
4FFEC0:  MOVS            R3, #1
4FFEC2:  STRH            R2, [R0,#0x10]
4FFEC4:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
4FFEC6:  STR             R3, [R0,#0x14]
4FFEC8:  STRD.W          R2, R2, [R0,#8]
4FFECC:  LDR             R1, [R1]; `vtable for'CTaskSimplePause ...
4FFECE:  ADDS            R1, #8
4FFED0:  STR             R1, [R0]
4FFED2:  B               loc_500000
4FFED4:  LDRB            R0, [R4,#0x14]
4FFED6:  LDR             R2, [R4,#0x44]; int
4FFED8:  CBZ             R0, loc_4FFEFC
4FFEDA:  CMP             R2, #0
4FFEDC:  BEQ             loc_4FFF74
4FFEDE:  ADD             R0, SP, #0x40+var_28; this
4FFEE0:  STR             R2, [R4,#0x34]
4FFEE2:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
4FFEE6:  VLDR            D16, [SP,#0x40+var_28]
4FFEEA:  ADD.W           R2, R4, #0x38 ; '8'
4FFEEE:  LDR             R0, [SP,#0x40+var_20]
4FFEF0:  STR             R0, [R4,#0x40]
4FFEF2:  MOV             R0, R5
4FFEF4:  VSTR            D16, [R4,#0x38]
4FFEF8:  LDR             R1, [R4,#0xC]
4FFEFA:  B               loc_4FFF50
4FFEFC:  CMP             R2, #0
4FFEFE:  BEQ.W           loc_500008
4FFF02:  MOV             R0, R1; this
4FFF04:  MOV             R1, R2; CVehicle *
4FFF06:  BLX             j__ZN13CCarEnterExit32ComputePassengerIndexFromCarDoorERK8CVehiclei; CCarEnterExit::ComputePassengerIndexFromCarDoor(CVehicle const&,int)
4FFF0A:  LDR             R1, [R4,#0xC]; CVehicle *
4FFF0C:  ADD.W           R0, R1, R0,LSL#2
4FFF10:  LDR.W           R0, [R0,#0x468]
4FFF14:  CBZ             R0, loc_4FFF1E
4FFF16:  LDRB.W          R0, [R0,#0x487]
4FFF1A:  LSLS            R0, R0, #0x1A
4FFF1C:  BMI             loc_4FFFEA
4FFF1E:  LDR             R2, [R4,#0x44]; int
4FFF20:  ADD             R0, SP, #0x40+var_28; this
4FFF22:  STR             R2, [R4,#0x34]
4FFF24:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
4FFF28:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FFF34)
4FFF2A:  MOVS            R3, #(stderr+1); CVector *
4FFF2C:  VLDR            D16, [SP,#0x40+var_28]
4FFF30:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FFF32:  LDR             R1, [SP,#0x40+var_20]
4FFF34:  STR             R1, [R4,#0x40]
4FFF36:  VSTR            D16, [R4,#0x38]
4FFF3A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4FFF3C:  LDR             R2, [R4,#0x24]
4FFF3E:  LDR             R1, [R4,#0xC]; CPed *
4FFF40:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4FFF42:  STRB.W          R3, [R4,#0x30]
4FFF46:  STRD.W          R0, R2, [R4,#0x28]
4FFF4A:  ADD.W           R2, R4, #0x38 ; '8'; CVehicle *
4FFF4E:  MOV             R0, R5; this
4FFF50:  BLX             j__ZN13CCarEnterExit42IsPathToDoorBlockedByVehicleCollisionModelERK4CPedR8CVehicleRK7CVector; CCarEnterExit::IsPathToDoorBlockedByVehicleCollisionModel(CPed const&,CVehicle &,CVector const&)
4FFF54:  CMP             R0, #1
4FFF56:  BNE             loc_4FFF66
4FFF58:  MOV             R0, R4; this
4FFF5A:  MOV             R1, R5; CPed *
4FFF5C:  BLX             j__ZN36CTaskComplexGoToCarDoorAndStandStill18ComputeRouteToDoorERK4CPed; CTaskComplexGoToCarDoorAndStandStill::ComputeRouteToDoor(CPed const&)
4FFF60:  MOVW            R1, #0x389
4FFF64:  B               loc_4FFF6A
4FFF66:  MOV.W           R1, #0x384; int
4FFF6A:  MOV             R0, R4; this
4FFF6C:  MOV             R2, R5; CPed *
4FFF6E:  BLX             j__ZNK36CTaskComplexGoToCarDoorAndStandStill13CreateSubTaskEiP4CPed; CTaskComplexGoToCarDoorAndStandStill::CreateSubTask(int,CPed *)
4FFF72:  B               loc_500000
4FFF74:  ADD.W           R6, R4, #0x38 ; '8'
4FFF78:  ADD.W           R3, R4, #0x34 ; '4'; CVector *
4FFF7C:  MOV             R0, R5; this
4FFF7E:  MOV             R2, R6; CVehicle *
4FFF80:  BLX             j__ZN13CCarEnterExit17GetNearestCarDoorERK4CPedRK8CVehicleR7CVectorRi; CCarEnterExit::GetNearestCarDoor(CPed const&,CVehicle const&,CVector &,int &)
4FFF84:  CMP             R0, #1
4FFF86:  BNE             loc_4FFFEA
4FFF88:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FFF94)
4FFF8A:  MOV.W           R8, #1
4FFF8E:  LDR             R2, [R4,#0x24]
4FFF90:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FFF92:  LDR             R1, [R4,#0xC]; CPed *
4FFF94:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4FFF96:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4FFF98:  STRB.W          R8, [R4,#0x30]
4FFF9C:  STRD.W          R0, R2, [R4,#0x28]
4FFFA0:  MOV             R0, R5; this
4FFFA2:  MOV             R2, R6; CVehicle *
4FFFA4:  BLX             j__ZN13CCarEnterExit42IsPathToDoorBlockedByVehicleCollisionModelERK4CPedR8CVehicleRK7CVector; CCarEnterExit::IsPathToDoorBlockedByVehicleCollisionModel(CPed const&,CVehicle &,CVector const&)
4FFFA8:  CMP             R0, #1
4FFFAA:  BNE             loc_500086
4FFFAC:  MOV             R0, R4; this
4FFFAE:  MOV             R1, R5; CPed *
4FFFB0:  BLX             j__ZN36CTaskComplexGoToCarDoorAndStandStill18ComputeRouteToDoorERK4CPed; CTaskComplexGoToCarDoorAndStandStill::ComputeRouteToDoor(CPed const&)
4FFFB4:  MOVS            R0, #off_3C; this
4FFFB6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FFFBA:  LDR             R1, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x4FFFC2)
4FFFBC:  LDR             R3, =(_ZN28CTaskComplexFollowPointRoute20ms_fSlowDownDistanceE_ptr - 0x4FFFC6)
4FFFBE:  ADD             R1, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
4FFFC0:  LDR             R2, [R4,#0x4C]; CPointRoute *
4FFFC2:  ADD             R3, PC; _ZN28CTaskComplexFollowPointRoute20ms_fSlowDownDistanceE_ptr
4FFFC4:  LDR             R6, [R1]; CTaskComplexFollowPointRoute::ms_fTargetRadius ...
4FFFC6:  LDR             R3, [R3]; CTaskComplexFollowPointRoute::ms_fSlowDownDistance ...
4FFFC8:  LDR             R1, [R4,#0x10]; int
4FFFCA:  VLDR            S0, [R6]
4FFFCE:  MOVS            R6, #0
4FFFD0:  VLDR            S2, [R3]
4FFFD4:  MOVS            R3, #0; int
4FFFD6:  STRD.W          R6, R6, [SP,#0x40+var_38]; bool
4FFFDA:  STR             R6, [SP,#0x40+var_30]; bool
4FFFDC:  VSTR            S0, [SP,#0x40+var_40]
4FFFE0:  VSTR            S2, [SP,#0x40+var_3C]
4FFFE4:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
4FFFE8:  B               loc_500000
4FFFEA:  MOVS            R0, #dword_20; this
4FFFEC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FFFF0:  MOV.W           R1, #0x41000000
4FFFF4:  MOVS            R2, #0; bool
4FFFF6:  STR             R1, [SP,#0x40+var_40]; float
4FFFF8:  MOVS            R1, #1; int
4FFFFA:  MOVS            R3, #0; bool
4FFFFC:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
500000:  ADD             SP, SP, #0x28 ; '('
500002:  POP.W           {R8,R9,R11}
500006:  POP             {R4-R7,PC}
500008:  ADD.W           R8, R4, #0x38 ; '8'
50000C:  ADD.W           R6, R4, #0x34 ; '4'
500010:  MOV.W           R9, #(stderr+1)
500014:  MOV             R0, R5; this
500016:  MOV             R2, R8; CVehicle *
500018:  MOV             R3, R6; CVector *
50001A:  STRD.W          R9, R9, [SP,#0x40+var_40]; int *
50001E:  STR.W           R9, [SP,#0x40+var_38]; bool
500022:  BLX             j__ZN13CCarEnterExit26GetNearestCarPassengerDoorERK4CPedRK8CVehicleR7CVectorRibbb; CCarEnterExit::GetNearestCarPassengerDoor(CPed const&,CVehicle const&,CVector &,int &,bool,bool,bool)
500026:  CMP             R0, #1
500028:  BNE             loc_500050
50002A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x500032)
50002C:  LDR             R2, [R4,#0x24]
50002E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
500030:  LDR             R1, [R4,#0xC]; CPed *
500032:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
500034:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
500036:  STRB.W          R9, [R4,#0x30]
50003A:  STRD.W          R0, R2, [R4,#0x28]
50003E:  MOV             R0, R5; this
500040:  MOV             R2, R8; CVehicle *
500042:  BLX             j__ZN13CCarEnterExit42IsPathToDoorBlockedByVehicleCollisionModelERK4CPedR8CVehicleRK7CVector; CCarEnterExit::IsPathToDoorBlockedByVehicleCollisionModel(CPed const&,CVehicle &,CVector const&)
500046:  CMP             R0, #1
500048:  BEQ             loc_500078
50004A:  MOV.W           R1, #0x384
50004E:  B               loc_5000B2
500050:  LDR             R1, [R4,#0xC]; CPed *
500052:  MOVS            R0, #0
500054:  STRD.W          R9, R0, [SP,#0x40+var_40]; int *
500058:  MOV             R0, R5; this
50005A:  MOV             R2, R8; CVehicle *
50005C:  MOV             R3, R6; CVector *
50005E:  STR.W           R9, [SP,#0x40+var_38]; bool
500062:  BLX             j__ZN13CCarEnterExit26GetNearestCarPassengerDoorERK4CPedRK8CVehicleR7CVectorRibbb; CCarEnterExit::GetNearestCarPassengerDoor(CPed const&,CVehicle const&,CVector &,int &,bool,bool,bool)
500066:  CMP             R0, #1
500068:  BNE             loc_5000AA
50006A:  LDR             R1, [R4,#0xC]; CPed *
50006C:  MOV             R0, R5; this
50006E:  MOV             R2, R8; CVehicle *
500070:  BLX             j__ZN13CCarEnterExit42IsPathToDoorBlockedByVehicleCollisionModelERK4CPedR8CVehicleRK7CVector; CCarEnterExit::IsPathToDoorBlockedByVehicleCollisionModel(CPed const&,CVehicle &,CVector const&)
500074:  CMP             R0, #1
500076:  BNE             loc_5000AE
500078:  MOV             R0, R4; this
50007A:  MOV             R1, R5; CPed *
50007C:  BLX             j__ZN36CTaskComplexGoToCarDoorAndStandStill18ComputeRouteToDoorERK4CPed; CTaskComplexGoToCarDoorAndStandStill::ComputeRouteToDoor(CPed const&)
500080:  MOVW            R1, #0x389
500084:  B               loc_5000B2
500086:  LDR.W           R0, [R5,#0x48C]
50008A:  ORR.W           R0, R0, #8
50008E:  STR.W           R0, [R5,#0x48C]
500092:  MOVS            R0, #word_2C; this
500094:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
500098:  LDR             R1, [R4,#0x10]; int
50009A:  MOVS            R2, #0
50009C:  LDR             R3, [R4,#0x18]; float
50009E:  STRD.W          R8, R2, [SP,#0x40+var_40]; bool
5000A2:  MOV             R2, R6; CVector *
5000A4:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
5000A8:  B               loc_500000
5000AA:  MOVS            R1, #0xCB
5000AC:  B               loc_5000B2
5000AE:  MOV.W           R1, #0x33C; int
5000B2:  MOV             R0, R4; this
5000B4:  MOV             R2, R5; CPed *
5000B6:  ADD             SP, SP, #0x28 ; '('
5000B8:  POP.W           {R8,R9,R11}
5000BC:  POP.W           {R4-R7,LR}
5000C0:  B               _ZNK36CTaskComplexGoToCarDoorAndStandStill13CreateSubTaskEiP4CPed; CTaskComplexGoToCarDoorAndStandStill::CreateSubTask(int,CPed *)
