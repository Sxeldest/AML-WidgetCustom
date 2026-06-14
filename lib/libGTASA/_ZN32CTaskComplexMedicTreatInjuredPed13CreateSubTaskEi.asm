; =========================================================
; Game Engine Function: _ZN32CTaskComplexMedicTreatInjuredPed13CreateSubTaskEi
; Address            : 0x510DFC - 0x510FAA
; =========================================================

510DFC:  PUSH            {R4-R7,LR}
510DFE:  ADD             R7, SP, #0xC
510E00:  PUSH.W          {R11}
510E04:  SUB             SP, SP, #0x10; float
510E06:  MOV             R5, R0
510E08:  MOVS            R4, #0
510E0A:  CMP.W           R1, #0x2BC
510E0E:  BLT             loc_510E3C
510E10:  SUB.W           R0, R1, #0x2BC; switch 12 cases
510E14:  CMP             R0, #0xB
510E16:  BHI             def_510E18; jumptable 00510E18 default case
510E18:  TBB.W           [PC,R0]; switch jump
510E1C:  DCB 6; jump table for switch statement
510E1D:  DCB 0x55
510E1E:  DCB 0xC2
510E1F:  DCB 0xC2
510E20:  DCB 0x5D
510E21:  DCB 0xC2
510E22:  DCB 0xC2
510E23:  DCB 0xC2
510E24:  DCB 0xC2
510E25:  DCB 0x6E
510E26:  DCB 0x78
510E27:  DCB 0x92
510E28:  MOVS            R0, #dword_50; jumptable 00510E18 case 700
510E2A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510E2E:  LDR             R1, [R5,#0xC]; CVehicle *
510E30:  MOVS            R2, #0xB; int
510E32:  MOVS            R3, #0; bool
510E34:  MOV             R4, R0
510E36:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
510E3A:  B               loc_510FA0; jumptable 00510E18 cases 702,703,705-708
510E3C:  CMP             R1, #0x65 ; 'e'
510E3E:  BEQ.W           loc_510F58
510E42:  CMP             R1, #0xCB
510E44:  BNE.W           loc_510FA0; jumptable 00510E18 cases 702,703,705-708
510E48:  MOVS            R0, #dword_20; this
510E4A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510E4E:  MOV             R4, R0
510E50:  MOV.W           R0, #0x41000000
510E54:  STR             R0, [SP,#0x20+var_20]; float
510E56:  MOV             R0, R4; this
510E58:  MOVW            R1, #0x2710; int
510E5C:  MOVS            R2, #0; bool
510E5E:  MOVS            R3, #0; bool
510E60:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
510E64:  B               loc_510FA0; jumptable 00510E18 cases 702,703,705-708
510E66:  MOVW            R0, #0x387; jumptable 00510E18 default case
510E6A:  CMP             R1, R0
510E6C:  BEQ.W           loc_510F74
510E70:  CMP.W           R1, #0x390
510E74:  BNE.W           loc_510FA0; jumptable 00510E18 cases 702,703,705-708
510E78:  MOVS            R0, #word_28; this
510E7A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510E7E:  MOV             R4, R0
510E80:  BLX             rand
510E84:  UXTH            R0, R0
510E86:  VLDR            S2, =0.000015259
510E8A:  VMOV            S0, R0
510E8E:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x510E9E)
510E90:  VMOV.F32        S4, #8.0
510E94:  MOVS            R1, #4; int
510E96:  VCVT.F32.S32    S0, S0
510E9A:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
510E9C:  MOVS            R3, #1; bool
510E9E:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
510EA0:  VMUL.F32        S0, S0, S2
510EA4:  VLDR            S2, [R0]
510EA8:  VMUL.F32        S0, S0, S4
510EAC:  VCVT.S32.F32    S0, S0
510EB0:  VSTR            S2, [SP,#0x20+var_20]
510EB4:  VMOV            R0, S0
510EB8:  UXTB            R2, R0; unsigned __int8
510EBA:  MOV             R0, R4; this
510EBC:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
510EC0:  LDR             R0, =(_ZTV23CTaskComplexWanderMedic_ptr - 0x510EC6)
510EC2:  ADD             R0, PC; _ZTV23CTaskComplexWanderMedic_ptr
510EC4:  B               loc_510F6C
510EC6:  MOVS            R0, #dword_50; jumptable 00510E18 case 701
510EC8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510ECC:  LDR             R1, [R5,#0xC]; CVehicle *
510ECE:  MOV             R4, R0
510ED0:  BLX             j__ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle; CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)
510ED4:  B               loc_510FA0; jumptable 00510E18 cases 702,703,705-708
510ED6:  MOVS            R6, #1; jumptable 00510E18 case 704
510ED8:  MOVS            R0, #dword_34; this
510EDA:  STRB.W          R6, [R5,#0x28]
510EDE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510EE2:  LDR             R1, [R5,#0xC]; CVehicle *
510EE4:  MOV             R4, R0
510EE6:  MOVS            R0, #0
510EE8:  MOVS            R2, #0; int
510EEA:  STRD.W          R6, R0, [SP,#0x20+var_20]; bool
510EEE:  MOV             R0, R4; this
510EF0:  MOVS            R3, #0; int
510EF2:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
510EF6:  B               loc_510FA0; jumptable 00510E18 cases 702,703,705-708
510EF8:  MOVS            R0, #dword_60; jumptable 00510E18 case 709
510EFA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510EFE:  LDR             R1, [R5,#0xC]; CVehicle *
510F00:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
510F02:  MOVS            R3, #0; bool
510F04:  MOV             R4, R0
510F06:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
510F0A:  B               loc_510FA0; jumptable 00510E18 cases 702,703,705-708
510F0C:  MOVS            R0, #off_3C; jumptable 00510E18 case 710
510F0E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510F12:  MOVS            R2, #0
510F14:  MOV             R4, R0
510F16:  LDR             R1, [R5,#0xC]; CVehicle *
510F18:  MOV.W           R12, #2
510F1C:  MOVT            R2, #0xBF80
510F20:  MOV.W           R3, #0xFFFFFFFF
510F24:  MOVS            R0, #0
510F26:  STRD.W          R0, R3, [SP,#0x20+var_20]; int
510F2A:  MOVS            R3, #0
510F2C:  STRD.W          R2, R12, [SP,#0x20+var_18]; float
510F30:  ADD.W           R2, R5, #0x1C; CVector *
510F34:  MOVT            R3, #0x41F0; float
510F38:  MOV             R0, R4; this
510F3A:  BLX             j__ZN24CTaskComplexDriveToPointC2EP8CVehicleRK7CVectorfiifi; CTaskComplexDriveToPoint::CTaskComplexDriveToPoint(CVehicle *,CVector const&,float,int,int,float,int)
510F3E:  B               loc_510FA0; jumptable 00510E18 cases 702,703,705-708
510F40:  MOVS            R0, #dword_24; jumptable 00510E18 case 711
510F42:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510F46:  LDR             R1, [R5,#0xC]; CVehicle *
510F48:  MOVS            R3, #0x41F00000; float
510F4E:  MOVS            R2, #2; int
510F50:  MOV             R4, R0
510F52:  BLX             j__ZN26CTaskComplexCarDriveWanderC2EP8CVehicleif; CTaskComplexCarDriveWander::CTaskComplexCarDriveWander(CVehicle *,int,float)
510F56:  B               loc_510FA0; jumptable 00510E18 cases 702,703,705-708
510F58:  MOVS            R0, #word_10; this
510F5A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510F5E:  MOV             R4, R0
510F60:  LDR             R5, [R5,#0x18]
510F62:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
510F66:  LDR             R0, =(_ZTV25CTaskComplexTreatAccident_ptr - 0x510F6E)
510F68:  STR             R5, [R4,#0xC]
510F6A:  ADD             R0, PC; _ZTV25CTaskComplexTreatAccident_ptr
510F6C:  LDR             R0, [R0]; `vtable for'CTaskComplexTreatAccident
510F6E:  ADDS            R0, #8
510F70:  STR             R0, [R4]
510F72:  B               loc_510FA0; jumptable 00510E18 cases 702,703,705-708
510F74:  MOVS            R0, #word_28; this
510F76:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510F7A:  MOV             R4, R0
510F7C:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x510F88)
510F7E:  MOVS            R1, #0
510F80:  ADD.W           R2, R5, #0x1C; CVector *
510F84:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
510F86:  STRD.W          R1, R1, [SP,#0x20+var_1C]; bool
510F8A:  MOVS            R1, #6; int
510F8C:  MOV.W           R3, #0x3E000000; float
510F90:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
510F92:  VLDR            S0, [R0]
510F96:  MOV             R0, R4; this
510F98:  VSTR            S0, [SP,#0x20+var_20]
510F9C:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
510FA0:  MOV             R0, R4; jumptable 00510E18 cases 702,703,705-708
510FA2:  ADD             SP, SP, #0x10
510FA4:  POP.W           {R11}
510FA8:  POP             {R4-R7,PC}
