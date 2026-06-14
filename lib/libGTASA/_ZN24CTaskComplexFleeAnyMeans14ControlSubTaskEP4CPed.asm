; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeAnyMeans14ControlSubTaskEP4CPed
; Address            : 0x514870 - 0x514AFE
; =========================================================

514870:  PUSH            {R4-R7,LR}
514872:  ADD             R7, SP, #0xC
514874:  PUSH.W          {R8-R11}
514878:  SUB             SP, SP, #0x2C
51487A:  MOV             R4, R0
51487C:  MOV             R11, R1
51487E:  LDR             R0, [R4,#0xC]
514880:  CMP             R0, #0
514882:  BEQ.W           loc_514A9E
514886:  LDR.W           R0, [R11,#0x440]
51488A:  ADDS            R0, #0xD4; this
51488C:  BLX             j__ZNK15CVehicleScanner24GetClosestVehicleInRangeEv; CVehicleScanner::GetClosestVehicleInRange(void)
514890:  ADD.W           R9, R4, #8
514894:  MOV             R6, R0
514896:  CMP             R6, #0
514898:  BEQ.W           loc_514AF0
51489C:  LDR.W           R0, [R9]
5148A0:  LDR             R1, [R0]
5148A2:  LDR             R1, [R1,#0x14]
5148A4:  BLX             R1
5148A6:  CMP.W           R0, #0x3A0
5148AA:  BEQ             loc_5148BE
5148AC:  LDR.W           R0, [R9]
5148B0:  LDR             R1, [R0]
5148B2:  LDR             R1, [R1,#0x14]
5148B4:  BLX             R1
5148B6:  CMP.W           R0, #0x390
5148BA:  BNE.W           loc_514AF0
5148BE:  LDR             R1, [R4,#0xC]
5148C0:  LDR.W           R2, [R11,#0x14]
5148C4:  LDR             R3, [R1,#0x14]
5148C6:  ADD.W           R0, R2, #0x30 ; '0'
5148CA:  CMP             R2, #0
5148CC:  IT EQ
5148CE:  ADDEQ.W         R0, R11, #4
5148D2:  ADD.W           R2, R3, #0x30 ; '0'
5148D6:  CMP             R3, #0
5148D8:  VLDR            S2, [R0]
5148DC:  VLDR            S4, [R0,#4]
5148E0:  VLDR            S0, [R0,#8]
5148E4:  IT EQ
5148E6:  ADDEQ           R2, R1, #4
5148E8:  VLDR            S6, [R2]
5148EC:  VSUB.F32        S6, S2, S6
5148F0:  VSTR            S6, [SP,#0x48+var_28]
5148F4:  VMUL.F32        S6, S6, S6
5148F8:  VLDR            S8, [R2,#4]
5148FC:  VSUB.F32        S4, S4, S8
514900:  VSTR            S4, [SP,#0x48+var_24]
514904:  VMUL.F32        S4, S4, S4
514908:  VLDR            S8, [R2,#8]
51490C:  VSUB.F32        S8, S0, S8
514910:  VADD.F32        S4, S6, S4
514914:  VMUL.F32        S6, S8, S8
514918:  VSTR            S8, [SP,#0x48+var_20]
51491C:  VLDR            S8, [R4,#0x4C]
514920:  VMUL.F32        S8, S8, S8
514924:  VADD.F32        S4, S6, S4
514928:  VCMPE.F32       S4, S8
51492C:  VMRS            APSR_nzcv, FPSCR
514930:  BLE.W           loc_514AF0
514934:  LDR             R1, [R6,#0x14]
514936:  ADD.W           R2, R1, #0x30 ; '0'
51493A:  CMP             R1, #0
51493C:  IT EQ
51493E:  ADDEQ           R2, R6, #4
514940:  VLDR            S4, [R2]
514944:  VSUB.F32        S2, S4, S2
514948:  VSTR            S2, [SP,#0x48+var_28]
51494C:  VLDR            S4, [R0,#4]
514950:  ADD             R0, SP, #0x48+var_28; this
514952:  VLDR            S2, [R2,#4]
514956:  VSUB.F32        S2, S2, S4
51495A:  VSTR            S2, [SP,#0x48+var_24]
51495E:  VLDR            S2, [R2,#8]
514962:  VSUB.F32        S0, S2, S0
514966:  VSTR            S0, [SP,#0x48+var_20]
51496A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
51496E:  LDR.W           R0, [R11,#0x14]
514972:  VLDR            S0, [SP,#0x48+var_28]
514976:  VLDR            S2, [SP,#0x48+var_24]
51497A:  VLDR            S6, [R0,#0x10]
51497E:  VLDR            S8, [R0,#0x14]
514982:  VMUL.F32        S0, S0, S6
514986:  VLDR            S4, [SP,#0x48+var_20]
51498A:  VMUL.F32        S2, S2, S8
51498E:  VLDR            S10, [R0,#0x18]
514992:  VMUL.F32        S4, S4, S10
514996:  VADD.F32        S0, S0, S2
51499A:  VADD.F32        S0, S0, S4
51499E:  VCMPE.F32       S0, #0.0
5149A2:  VMRS            APSR_nzcv, FPSCR
5149A6:  BLE.W           loc_514AF0
5149AA:  MOV             R0, R6; this
5149AC:  MOV             R1, R11; CVehicle *
5149AE:  BLX             j__ZN13CCarEnterExit18IsVehicleStealableERK8CVehicleRK4CPed; CCarEnterExit::IsVehicleStealable(CVehicle const&,CPed const&)
5149B2:  CMP             R0, #1
5149B4:  BNE.W           loc_514AF0
5149B8:  MOV             R8, R4
5149BA:  LDR.W           R0, [R8,#0x50]!; this
5149BE:  CMP             R0, #0
5149C0:  ITT NE
5149C2:  MOVNE           R1, R8; CEntity **
5149C4:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5149C8:  MOV             R0, R6; this
5149CA:  MOV             R1, R8; CEntity **
5149CC:  STR             R6, [R4,#0x50]
5149CE:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5149D2:  LDRB.W          R0, [R4,#0x40]
5149D6:  CMP             R0, #0
5149D8:  BEQ             loc_514ABC
5149DA:  LDR.W           R0, [R8]
5149DE:  LDR.W           R0, [R0,#0x464]; this
5149E2:  CBZ             R0, loc_514A28
5149E4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5149E8:  CBNZ            R0, loc_514A28
5149EA:  ADD             R6, SP, #0x48+var_44
5149EC:  LDR.W           R1, [R8]; this
5149F0:  MOV             R2, R11; CEntity *
5149F2:  MOVS            R3, #0x16
5149F4:  MOV             R0, R6; int
5149F6:  BLX             j__ZN19CEventVehicleDamageC2EP8CVehicleP7CEntity11eWeaponType; CEventVehicleDamage::CEventVehicleDamage(CVehicle *,CEntity *,eWeaponType)
5149FA:  LDR             R0, =(_ZTV25CEventVehicleDamageWeapon_ptr - 0x514A0A)
5149FC:  MOVW            R1, #0x2C2
514A00:  STRH.W          R1, [SP,#0x48+var_3A]
514A04:  MOV             R1, R6; CEvent *
514A06:  ADD             R0, PC; _ZTV25CEventVehicleDamageWeapon_ptr
514A08:  MOVS            R2, #0; bool
514A0A:  LDR             R0, [R0]; `vtable for'CEventVehicleDamageWeapon ...
514A0C:  ADDS            R0, #8
514A0E:  STR             R0, [SP,#0x48+var_44]
514A10:  LDR.W           R0, [R8]
514A14:  LDR.W           R0, [R0,#0x464]
514A18:  LDR.W           R0, [R0,#0x440]
514A1C:  ADDS            R0, #0x68 ; 'h'; this
514A1E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
514A22:  MOV             R0, R6; this
514A24:  BLX             j__ZN19CEventVehicleDamageD2Ev; CEventVehicleDamage::~CEventVehicleDamage()
514A28:  LDR.W           R0, [R8]
514A2C:  LDRB.W          R1, [R0,#0x48C]
514A30:  CBZ             R1, loc_514A98
514A32:  LDR             R2, =(_ZTV25CEventVehicleDamageWeapon_ptr - 0x514A3E)
514A34:  ADD             R6, SP, #0x48+var_44
514A36:  MOV.W           R1, #0x11A
514A3A:  ADD             R2, PC; _ZTV25CEventVehicleDamageWeapon_ptr
514A3C:  LDR             R2, [R2]; `vtable for'CEventVehicleDamageWeapon ...
514A3E:  ADD.W           R5, R2, #8
514A42:  MOV             R10, R1
514A44:  LDR.W           R0, [R0,R10,LSL#2]; this
514A48:  CBZ             R0, loc_514A84
514A4A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
514A4E:  CBNZ            R0, loc_514A84
514A50:  LDR.W           R1, [R8]; this
514A54:  MOV             R0, R6; int
514A56:  MOV             R2, R11; CEntity *
514A58:  MOVS            R3, #0x16
514A5A:  BLX             j__ZN19CEventVehicleDamageC2EP8CVehicleP7CEntity11eWeaponType; CEventVehicleDamage::CEventVehicleDamage(CVehicle *,CEntity *,eWeaponType)
514A5E:  MOVW            R0, #0x2C2
514A62:  MOV             R1, R6; CEvent *
514A64:  STRH.W          R0, [SP,#0x48+var_3A]
514A68:  MOVS            R2, #0; bool
514A6A:  STR             R5, [SP,#0x48+var_44]
514A6C:  LDR.W           R0, [R8]
514A70:  LDR.W           R0, [R0,R10,LSL#2]
514A74:  LDR.W           R0, [R0,#0x440]
514A78:  ADDS            R0, #0x68 ; 'h'; this
514A7A:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
514A7E:  MOV             R0, R6; this
514A80:  BLX             j__ZN19CEventVehicleDamageD2Ev; CEventVehicleDamage::~CEventVehicleDamage()
514A84:  LDR.W           R0, [R8]
514A88:  ADD.W           R1, R10, #1
514A8C:  SUBW            R2, R10, #0x119
514A90:  LDRB.W          R3, [R0,#0x48C]
514A94:  CMP             R2, R3
514A96:  BLT             loc_514A42
514A98:  MOVW            R6, #0x385
514A9C:  B               loc_514ACE
514A9E:  LDR.W           R0, [R4,#8]!
514AA2:  MOVS            R2, #0
514AA4:  MOVS            R3, #0
514AA6:  MOVS            R6, #0
514AA8:  LDR             R1, [R0]
514AAA:  LDR             R5, [R1,#0x1C]
514AAC:  MOV             R1, R11
514AAE:  BLX             R5
514AB0:  CMP             R0, #0
514AB2:  MOV             R9, R4
514AB4:  IT EQ
514AB6:  LDREQ.W         R6, [R9]
514ABA:  B               loc_514AF4
514ABC:  LDR             R0, [R6]
514ABE:  MOVS            R1, #0
514AC0:  LDR.W           R2, [R0,#0xE8]
514AC4:  MOV             R0, R6
514AC6:  BLX             R2
514AC8:  CBZ             R0, loc_514AF0
514ACA:  MOVW            R6, #0x2BE
514ACE:  LDR.W           R0, [R9]
514AD2:  MOVS            R2, #0
514AD4:  MOVS            R3, #0
514AD6:  LDR             R1, [R0]
514AD8:  LDR             R5, [R1,#0x1C]
514ADA:  MOV             R1, R11
514ADC:  BLX             R5
514ADE:  CMP             R0, #1
514AE0:  BNE             loc_514AF0
514AE2:  MOV             R0, R4; this
514AE4:  MOV             R1, R6; int
514AE6:  MOV             R2, R11; CPed *
514AE8:  BLX             j__ZNK24CTaskComplexFleeAnyMeans13CreateSubTaskEiP4CPed; CTaskComplexFleeAnyMeans::CreateSubTask(int,CPed *)
514AEC:  MOV             R6, R0
514AEE:  B               loc_514AF4
514AF0:  LDR.W           R6, [R9]
514AF4:  MOV             R0, R6
514AF6:  ADD             SP, SP, #0x2C ; ','
514AF8:  POP.W           {R8-R11}
514AFC:  POP             {R4-R7,PC}
