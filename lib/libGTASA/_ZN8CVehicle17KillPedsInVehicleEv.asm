; =========================================================
; Game Engine Function: _ZN8CVehicle17KillPedsInVehicleEv
; Address            : 0x584A6E - 0x584B14
; =========================================================

584A6E:  PUSH            {R4-R7,LR}
584A70:  ADD             R7, SP, #0xC
584A72:  PUSH.W          {R8}
584A76:  SUB             SP, SP, #0x18
584A78:  MOV             R4, R0
584A7A:  LDR.W           R0, [R4,#0x464]; this
584A7E:  CBZ             R0, loc_584AB6
584A80:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
584A84:  CBNZ            R0, loc_584A94
584A86:  LDR.W           R0, [R4,#0x464]
584A8A:  MOVS            R1, #0x33 ; '3'
584A8C:  MOVS            R2, #0
584A8E:  MOVS            R3, #0
584A90:  BLX             j__ZN7CDarkel20RegisterKillByPlayerEPK4CPed11eWeaponTypebi; CDarkel::RegisterKillByPlayer(CPed const*,eWeaponType,bool,int)
584A94:  ADD             R5, SP, #0x28+var_24
584A96:  MOV             R1, R4; CVehicle *
584A98:  MOV             R0, R5; this
584A9A:  BLX             j__ZN17CEventVehicleDiedC2EP8CVehicle; CEventVehicleDied::CEventVehicleDied(CVehicle *)
584A9E:  LDR.W           R0, [R4,#0x464]
584AA2:  MOV             R1, R5; CEvent *
584AA4:  MOVS            R2, #0; bool
584AA6:  LDR.W           R0, [R0,#0x440]
584AAA:  ADDS            R0, #0x68 ; 'h'; this
584AAC:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
584AB0:  MOV             R0, R5; this
584AB2:  BLX             j__ZN17CEventVehicleDiedD2Ev; CEventVehicleDied::~CEventVehicleDied()
584AB6:  LDRB.W          R0, [R4,#0x48C]; this
584ABA:  CBZ             R0, loc_584B0C
584ABC:  ADD.W           R8, SP, #0x28+var_24
584AC0:  MOVS            R6, #0
584AC2:  ADD.W           R5, R4, R6,LSL#2
584AC6:  LDR.W           R1, [R5,#0x468]
584ACA:  CBZ             R1, loc_584B04
584ACC:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
584AD0:  CBNZ            R0, loc_584AE0
584AD2:  LDR.W           R0, [R5,#0x468]
584AD6:  MOVS            R1, #0x33 ; '3'
584AD8:  MOVS            R2, #0
584ADA:  MOVS            R3, #0
584ADC:  BLX             j__ZN7CDarkel20RegisterKillByPlayerEPK4CPed11eWeaponTypebi; CDarkel::RegisterKillByPlayer(CPed const*,eWeaponType,bool,int)
584AE0:  MOV             R0, R8; this
584AE2:  MOV             R1, R4; CVehicle *
584AE4:  BLX             j__ZN17CEventVehicleDiedC2EP8CVehicle; CEventVehicleDied::CEventVehicleDied(CVehicle *)
584AE8:  LDR.W           R0, [R5,#0x468]
584AEC:  MOV             R1, R8; CEvent *
584AEE:  MOVS            R2, #0; bool
584AF0:  LDR.W           R0, [R0,#0x440]
584AF4:  ADDS            R0, #0x68 ; 'h'; this
584AF6:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
584AFA:  MOV             R0, R8; this
584AFC:  BLX             j__ZN17CEventVehicleDiedD2Ev; CEventVehicleDied::~CEventVehicleDied()
584B00:  LDRB.W          R0, [R4,#0x48C]
584B04:  ADDS            R6, #1
584B06:  UXTB            R1, R0
584B08:  CMP             R6, R1
584B0A:  BLT             loc_584AC2
584B0C:  ADD             SP, SP, #0x18
584B0E:  POP.W           {R8}
584B12:  POP             {R4-R7,PC}
