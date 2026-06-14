; =========================================================
; Game Engine Function: _ZNK24CTaskComplexKillCriminal13CreateSubTaskEiP4CPedb
; Address            : 0x53E79C - 0x53E94C
; =========================================================

53E79C:  PUSH            {R4-R7,LR}
53E79E:  ADD             R7, SP, #0xC
53E7A0:  PUSH.W          {R8}
53E7A4:  SUB             SP, SP, #0x10
53E7A6:  MOV             R8, R2
53E7A8:  MOV             R5, R1
53E7AA:  MOV             R6, R0
53E7AC:  CBNZ            R3, loc_53E7C0
53E7AE:  LDR             R0, [R6,#8]
53E7B0:  CBZ             R0, loc_53E7C0
53E7B2:  LDR             R1, [R0]
53E7B4:  LDR             R1, [R1,#0x14]
53E7B6:  BLX             R1
53E7B8:  CMP             R0, R5
53E7BA:  BNE             loc_53E7C0
53E7BC:  LDR             R4, [R6,#8]
53E7BE:  B               def_53E7D2; jumptable 0053E7D2 default case, cases 702,703,705-708,710-723
53E7C0:  MOVS            R4, #0
53E7C2:  CMP.W           R5, #0x3E8
53E7C6:  BGE             loc_53E806
53E7C8:  SUB.W           R0, R5, #0x2BC; switch 25 cases
53E7CC:  CMP             R0, #0x18
53E7CE:  BHI.W           def_53E7D2; jumptable 0053E7D2 default case, cases 702,703,705-708,710-723
53E7D2:  TBB.W           [PC,R0]; switch jump
53E7D6:  DCB 0xD; jump table for switch statement
53E7D7:  DCB 0x28
53E7D8:  DCB 0x92
53E7D9:  DCB 0x92
53E7DA:  DCB 0x31
53E7DB:  DCB 0x92
53E7DC:  DCB 0x92
53E7DD:  DCB 0x92
53E7DE:  DCB 0x92
53E7DF:  DCB 0x41
53E7E0:  DCB 0x92
53E7E1:  DCB 0x92
53E7E2:  DCB 0x92
53E7E3:  DCB 0x92
53E7E4:  DCB 0x92
53E7E5:  DCB 0x92
53E7E6:  DCB 0x92
53E7E7:  DCB 0x92
53E7E8:  DCB 0x92
53E7E9:  DCB 0x92
53E7EA:  DCB 0x92
53E7EB:  DCB 0x92
53E7EC:  DCB 0x92
53E7ED:  DCB 0x92
53E7EE:  DCB 0x4C
53E7EF:  ALIGN 2
53E7F0:  MOVS            R0, #dword_50; jumptable 0053E7D2 case 700
53E7F2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53E7F6:  LDR.W           R1, [R8,#0x590]; CVehicle *
53E7FA:  MOVS            R2, #0; int
53E7FC:  MOVS            R3, #0; bool
53E7FE:  MOV             R4, R0
53E800:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
53E804:  B               def_53E7D2; jumptable 0053E7D2 default case, cases 702,703,705-708,710-723
53E806:  BEQ             loc_53E8AC
53E808:  MOVW            R0, #0x3FE
53E80C:  CMP             R5, R0
53E80E:  BEQ             loc_53E8CE
53E810:  MOVW            R0, #0x516
53E814:  CMP             R5, R0
53E816:  BNE             def_53E7D2; jumptable 0053E7D2 default case, cases 702,703,705-708,710-723
53E818:  LDR             R0, [R6,#0xC]; this
53E81A:  CMP             R0, #0
53E81C:  IT NE
53E81E:  BLXNE           j__ZN4CPed26SetPedDefaultDecisionMakerEv; CPed::SetPedDefaultDecisionMaker(void)
53E822:  MOVS            R4, #0
53E824:  B               def_53E7D2; jumptable 0053E7D2 default case, cases 702,703,705-708,710-723
53E826:  MOVS            R0, #dword_50; jumptable 0053E7D2 case 701
53E828:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53E82C:  LDR.W           R1, [R8,#0x590]; CVehicle *
53E830:  MOV             R4, R0
53E832:  BLX             j__ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle; CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)
53E836:  B               def_53E7D2; jumptable 0053E7D2 default case, cases 702,703,705-708,710-723
53E838:  MOVS            R0, #dword_34; jumptable 0053E7D2 case 704
53E83A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53E83E:  LDR.W           R1, [R8,#0x590]; CVehicle *
53E842:  MOV             R4, R0
53E844:  MOVS            R0, #0
53E846:  MOVS            R2, #1
53E848:  STRD.W          R2, R0, [SP,#0x20+var_20]; bool
53E84C:  MOV             R0, R4; this
53E84E:  MOVS            R2, #0; int
53E850:  MOVS            R3, #0; int
53E852:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
53E856:  B               def_53E7D2; jumptable 0053E7D2 default case, cases 702,703,705-708,710-723
53E858:  MOVS            R0, #dword_60; jumptable 0053E7D2 case 709
53E85A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53E85E:  LDR.W           R1, [R8,#0x590]; CVehicle *
53E862:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
53E864:  MOVS            R3, #0; bool
53E866:  MOV             R4, R0
53E868:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
53E86C:  B               def_53E7D2; jumptable 0053E7D2 default case, cases 702,703,705-708,710-723
53E86E:  LDR.W           R0, [R8,#0x590]; jumptable 0053E7D2 case 724
53E872:  CMP             R0, #0
53E874:  BEQ             loc_53E904
53E876:  LDR             R1, [R6,#0xC]
53E878:  LDRB.W          R2, [R1,#0x485]
53E87C:  LSLS            R2, R2, #0x1F
53E87E:  ITT NE
53E880:  LDRNE.W         R1, [R1,#0x590]; unsigned int
53E884:  CMPNE           R1, #0
53E886:  BNE             loc_53E908
53E888:  MOVS            R0, #word_2C; this
53E88A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53E88E:  MOV             R4, R0
53E890:  MOVS            R0, #0
53E892:  LDR             R2, [R6,#0xC]; CEntity *
53E894:  MOVT            R0, #0x41A0
53E898:  LDR.W           R1, [R8,#0x590]; CVehicle *
53E89C:  MOVS            R3, #2
53E89E:  STRD.W          R3, R0, [SP,#0x20+var_20]; int
53E8A2:  MOV             R0, R4; this
53E8A4:  MOVS            R3, #0x37 ; '7'; int
53E8A6:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif_0; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
53E8AA:  B               def_53E7D2; jumptable 0053E7D2 default case, cases 702,703,705-708,710-723
53E8AC:  MOVS            R0, #dword_38; this
53E8AE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53E8B2:  LDR             R1, [R6,#0xC]; CPed *
53E8B4:  MOV             R4, R0
53E8B6:  MOVS            R2, #0
53E8B8:  MOVS            R0, #1
53E8BA:  STRD.W          R2, R2, [SP,#0x20+var_20]; unsigned int
53E8BE:  MOV.W           R2, #0xFFFFFFFF; int
53E8C2:  STR             R0, [SP,#0x20+var_18]; int
53E8C4:  MOV             R0, R4; this
53E8C6:  MOVS            R3, #0; unsigned int
53E8C8:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
53E8CC:  B               loc_53E8F2
53E8CE:  MOVS            R0, #dword_44; this
53E8D0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53E8D4:  LDR             R1, [R6,#0xC]; CEntity *
53E8D6:  MOVS            R2, #8
53E8D8:  MOVS            R3, #0x46 ; 'F'
53E8DA:  MOV             R4, R0
53E8DC:  STRD.W          R3, R2, [SP,#0x20+var_20]; signed __int8
53E8E0:  MOVS            R3, #0
53E8E2:  MOVS            R0, #0
53E8E4:  MOVT            R3, #0x428C; float
53E8E8:  STR             R0, [SP,#0x20+var_18]; bool
53E8EA:  MOV             R0, R4; this
53E8EC:  MOVS            R2, #0; CVector *
53E8EE:  BLX             j__ZN22CTaskSimpleGangDriveByC2EP7CEntityPK7CVectorfaab; CTaskSimpleGangDriveBy::CTaskSimpleGangDriveBy(CEntity *,CVector const*,float,signed char,signed char,bool)
53E8F2:  MOV             R0, R8
53E8F4:  MOVS            R1, #0x16
53E8F6:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
53E8FA:  MOV             R0, R4; jumptable 0053E7D2 default case, cases 702,703,705-708,710-723
53E8FC:  ADD             SP, SP, #0x10
53E8FE:  POP.W           {R8}
53E902:  POP             {R4-R7,PC}
53E904:  MOVS            R4, #0
53E906:  B               def_53E7D2; jumptable 0053E7D2 default case, cases 702,703,705-708,710-723
53E908:  LDR.W           R5, [R0,#0x5A0]
53E90C:  MOVS            R0, #word_2C; this
53E90E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53E912:  MOV             R4, R0
53E914:  LDR             R0, [R6,#0xC]
53E916:  VMOV.F32        S0, #10.0
53E91A:  CMP             R5, #9
53E91C:  LDR.W           R2, [R0,#0x590]; CEntity *
53E920:  LDRB.W          R0, [R2,#0x3D4]
53E924:  VMOV            S2, R0
53E928:  MOV.W           R0, #2
53E92C:  VCVT.F32.U32    S2, S2
53E930:  LDR.W           R1, [R8,#0x590]; CVehicle *
53E934:  VADD.F32        S0, S2, S0
53E938:  VSTR            S0, [SP,#0x20+var_1C]
53E93C:  STR             R0, [SP,#0x20+var_20]; int
53E93E:  ITE NE
53E940:  MOVNE           R3, #0x12
53E942:  MOVEQ           R3, #0x35 ; '5'; int
53E944:  MOV             R0, R4; this
53E946:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif_0; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
53E94A:  B               def_53E7D2; jumptable 0053E7D2 default case, cases 702,703,705-708,710-723
