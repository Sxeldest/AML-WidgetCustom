; =========================================================
; Game Engine Function: _ZNK20CTaskComplexCopInCar13CreateSubTaskEiP4CPed
; Address            : 0x53FD9C - 0x53FFFC
; =========================================================

53FD9C:  PUSH            {R4-R7,LR}
53FD9E:  ADD             R7, SP, #0xC
53FDA0:  PUSH.W          {R8}
53FDA4:  VPUSH           {D8}
53FDA8:  SUB             SP, SP, #8; int
53FDAA:  MOV             R5, R0
53FDAC:  MOVS            R4, #0
53FDAE:  CMP.W           R1, #0x390
53FDB2:  BGE             loc_53FE10
53FDB4:  SUB.W           R0, R1, #0x2BC; switch 25 cases
53FDB8:  CMP             R0, #0x18
53FDBA:  BHI             def_53FDBC; jumptable 0053FDBC default case
53FDBC:  TBH.W           [PC,R0,LSL#1]; switch jump
53FDC0:  DCW 0x19; jump table for switch statement
53FDC2:  DCW 0x55
53FDC4:  DCW 0x117
53FDC6:  DCW 0x117
53FDC8:  DCW 0x62
53FDCA:  DCW 0x117
53FDCC:  DCW 0x117
53FDCE:  DCW 0x117
53FDD0:  DCW 0x117
53FDD2:  DCW 0x76
53FDD4:  DCW 0x117
53FDD6:  DCW 0x117
53FDD8:  DCW 0x117
53FDDA:  DCW 0x117
53FDDC:  DCW 0x117
53FDDE:  DCW 0x117
53FDE0:  DCW 0x117
53FDE2:  DCW 0x117
53FDE4:  DCW 0x117
53FDE6:  DCW 0x117
53FDE8:  DCW 0x117
53FDEA:  DCW 0x117
53FDEC:  DCW 0x117
53FDEE:  DCW 0x117
53FDF0:  DCW 0x80
53FDF2:  LDR.W           R0, [R2,#0x440]; jumptable 0053FDBC case 700
53FDF6:  MOVS            R1, #6; int
53FDF8:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
53FDFC:  MOVS            R0, #dword_50; this
53FDFE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53FE02:  LDR             R1, [R5,#0xC]; CVehicle *
53FE04:  MOVS            R2, #0; int
53FE06:  MOVS            R3, #0; bool
53FE08:  MOV             R4, R0
53FE0A:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
53FE0E:  B               loc_53FFEE; jumptable 0053FDBC cases 702,703,705-708,710-723
53FE10:  BEQ             loc_53FEEC
53FE12:  MOVW            R0, #0x44F
53FE16:  CMP             R1, R0
53FE18:  BNE.W           loc_53FFEE; jumptable 0053FDBC cases 702,703,705-708,710-723
53FE1C:  MOVS            R0, #off_18; this
53FE1E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53FE22:  MOV             R4, R0
53FE24:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
53FE28:  LDR             R0, =(_ZTV25CTaskComplexPolicePursuit_ptr - 0x53FE32)
53FE2A:  MOVS            R1, #0; unsigned int
53FE2C:  LDRB            R2, [R4,#0xC]
53FE2E:  ADD             R0, PC; _ZTV25CTaskComplexPolicePursuit_ptr
53FE30:  STRD.W          R1, R1, [R4,#0x10]
53FE34:  LDR             R0, [R0]; `vtable for'CTaskComplexPolicePursuit ...
53FE36:  ADDS            R0, #8
53FE38:  STR             R0, [R4]
53FE3A:  AND.W           R0, R2, #0xF8
53FE3E:  ORR.W           R0, R0, #4
53FE42:  STRB            R0, [R4,#0xC]
53FE44:  B               loc_53FFEE; jumptable 0053FDBC cases 702,703,705-708,710-723
53FE46:  CMP             R1, #0xCB; jumptable 0053FDBC default case
53FE48:  BNE.W           loc_53FFEE; jumptable 0053FDBC cases 702,703,705-708,710-723
53FE4C:  MOVS            R0, #dword_20; this
53FE4E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53FE52:  MOV             R4, R0
53FE54:  MOV.W           R0, #0x41000000
53FE58:  STR             R0, [SP,#0x20+var_20]; float
53FE5A:  MOV             R0, R4; this
53FE5C:  MOV.W           R1, #0x3E8; int
53FE60:  MOVS            R2, #1; bool
53FE62:  MOVS            R3, #0; bool
53FE64:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
53FE68:  B               loc_53FFEE; jumptable 0053FDBC cases 702,703,705-708,710-723
53FE6A:  LDR.W           R0, [R2,#0x440]; jumptable 0053FDBC case 701
53FE6E:  MOVS            R1, #6; int
53FE70:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
53FE74:  MOVS            R0, #dword_50; this
53FE76:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53FE7A:  LDR             R1, [R5,#0xC]; CVehicle *
53FE7C:  MOV             R4, R0
53FE7E:  BLX             j__ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle; CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)
53FE82:  B               loc_53FFEE; jumptable 0053FDBC cases 702,703,705-708,710-723
53FE84:  LDR.W           R0, [R2,#0x440]; jumptable 0053FDBC case 704
53FE88:  MOVS            R1, #1; int
53FE8A:  MOVS            R6, #1
53FE8C:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
53FE90:  MOVS            R0, #dword_34; this
53FE92:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53FE96:  LDR             R1, [R5,#0xC]; CVehicle *
53FE98:  MOV             R4, R0
53FE9A:  MOVS            R0, #0
53FE9C:  MOVS            R2, #0; int
53FE9E:  STRD.W          R6, R0, [SP,#0x20+var_20]; bool
53FEA2:  MOV             R0, R4; this
53FEA4:  MOVS            R3, #0; int
53FEA6:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
53FEAA:  B               loc_53FFEE; jumptable 0053FDBC cases 702,703,705-708,710-723
53FEAC:  MOVS            R0, #dword_60; jumptable 0053FDBC case 709
53FEAE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53FEB2:  LDR             R1, [R5,#0xC]; CVehicle *
53FEB4:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
53FEB6:  MOVS            R3, #0; bool
53FEB8:  MOV             R4, R0
53FEBA:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
53FEBE:  B               loc_53FFEE; jumptable 0053FDBC cases 702,703,705-708,710-723
53FEC0:  LDR             R0, [R5,#0x14]; jumptable 0053FDBC case 724
53FEC2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53FEC6:  CMP             R0, #1
53FEC8:  BNE             loc_53FF62
53FECA:  LDR             R0, [R5,#0x14]
53FECC:  LDRB.W          R0, [R0,#0x485]
53FED0:  LSLS            R0, R0, #0x1F; this
53FED2:  BNE             loc_53FF90
53FED4:  MOV             R6, R5
53FED6:  LDR.W           R0, [R6,#0xC]!; this
53FEDA:  BLX             j__ZN6CCarAI32FindPoliceCarSpeedForWantedLevelEP8CVehicle; CCarAI::FindPoliceCarSpeedForWantedLevel(CVehicle *)
53FEDE:  VMOV            S0, R0
53FEE2:  MOV.W           R8, #0x2B ; '+'
53FEE6:  VCVT.F32.S32    S16, S0
53FEEA:  B               loc_53FFBE
53FEEC:  MOVS            R0, #dword_50; this
53FEEE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53FEF2:  MOV             R4, R0
53FEF4:  BLX             rand
53FEF8:  UXTH            R0, R0
53FEFA:  VLDR            S2, =0.000015259
53FEFE:  VMOV            S0, R0
53FF02:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x53FF12)
53FF04:  VMOV.F32        S4, #8.0
53FF08:  MOVS            R1, #4; int
53FF0A:  VCVT.F32.S32    S0, S0
53FF0E:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
53FF10:  MOVS            R3, #1; bool
53FF12:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
53FF14:  VMUL.F32        S0, S0, S2
53FF18:  VLDR            S2, [R0]
53FF1C:  VMUL.F32        S0, S0, S4
53FF20:  VCVT.S32.F32    S0, S0
53FF24:  VSTR            S2, [SP,#0x20+var_20]
53FF28:  VMOV            R0, S0
53FF2C:  UXTB            R2, R0; unsigned __int8
53FF2E:  MOV             R0, R4; this
53FF30:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
53FF34:  LDR             R0, =(_ZTV21CTaskComplexWanderCop_ptr - 0x53FF42)
53FF36:  VMOV.I32        Q8, #0
53FF3A:  ADD.W           R1, R4, #0x38 ; '8'
53FF3E:  ADD             R0, PC; _ZTV21CTaskComplexWanderCop_ptr
53FF40:  VST1.32         {D16-D17}, [R1]
53FF44:  MOVS            R1, #0
53FF46:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderCop ...
53FF48:  STR.W           R1, [R4,#0x32]
53FF4C:  STR.W           R1, [R4,#0x2E]
53FF50:  ADDS            R0, #8
53FF52:  STR             R0, [R4]
53FF54:  STR.W           R1, [R4,#0x4A]
53FF58:  STR.W           R1, [R4,#0x46]
53FF5C:  STRD.W          R1, R1, [R4,#0x28]
53FF60:  B               loc_53FFEE; jumptable 0053FDBC cases 702,703,705-708,710-723
53FF62:  MOV             R6, R5
53FF64:  VLDR            S0, =60.0
53FF68:  LDR.W           R0, [R6,#0xC]!
53FF6C:  LDR.W           R0, [R0,#0x388]
53FF70:  VLDR            S2, [R0,#0x88]
53FF74:  LDR             R0, [R6,#8]
53FF76:  VMUL.F32        S0, S2, S0
53FF7A:  VLDR            S2, =0.9
53FF7E:  LDRB.W          R0, [R0,#0x485]
53FF82:  LSLS            R0, R0, #0x1F
53FF84:  VMUL.F32        S16, S0, S2
53FF88:  BNE             loc_53FFAA
53FF8A:  MOV.W           R8, #0x37 ; '7'
53FF8E:  B               loc_53FFBE
53FF90:  BLX             j__ZN6CCarAI34FindPoliceCarMissionForWantedLevelEv; CCarAI::FindPoliceCarMissionForWantedLevel(void)
53FF94:  MOV             R6, R5
53FF96:  MOV             R8, R0
53FF98:  LDR.W           R0, [R6,#0xC]!; this
53FF9C:  BLX             j__ZN6CCarAI32FindPoliceCarSpeedForWantedLevelEP8CVehicle; CCarAI::FindPoliceCarSpeedForWantedLevel(CVehicle *)
53FFA0:  VMOV            S0, R0
53FFA4:  VCVT.F32.S32    S16, S0
53FFA8:  B               loc_53FFBE
53FFAA:  BLX             rand
53FFAE:  AND.W           R0, R0, #2
53FFB2:  MOV.W           R8, #2
53FFB6:  CMP             R0, #2
53FFB8:  IT CC
53FFBA:  MOVCC.W         R8, #4
53FFBE:  MOVS            R0, #word_2C; this
53FFC0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53FFC4:  LDR             R2, [R5,#0x14]
53FFC6:  MOV             R4, R0
53FFC8:  LDR             R1, [R6]; CVehicle *
53FFCA:  MOV             R3, R8; int
53FFCC:  LDRB.W          R0, [R2,#0x485]
53FFD0:  LSLS            R0, R0, #0x1F
53FFD2:  IT NE
53FFD4:  LDRNE.W         R2, [R2,#0x590]; CEntity *
53FFD8:  VCVT.S32.F32    S0, S16
53FFDC:  MOVS            R0, #0x41200000
53FFE2:  STR             R0, [SP,#0x20+var_1C]; float
53FFE4:  MOV             R0, R4; this
53FFE6:  VSTR            S0, [SP,#0x20+var_20]
53FFEA:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif_0; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
53FFEE:  MOV             R0, R4; jumptable 0053FDBC cases 702,703,705-708,710-723
53FFF0:  ADD             SP, SP, #8
53FFF2:  VPOP            {D8}
53FFF6:  POP.W           {R8}
53FFFA:  POP             {R4-R7,PC}
