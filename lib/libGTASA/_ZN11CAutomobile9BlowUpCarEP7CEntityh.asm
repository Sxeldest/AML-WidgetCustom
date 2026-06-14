; =========================================================
; Game Engine Function: _ZN11CAutomobile9BlowUpCarEP7CEntityh
; Address            : 0x55CB48 - 0x55CEFE
; =========================================================

55CB48:  PUSH            {R4-R7,LR}
55CB4A:  ADD             R7, SP, #0xC
55CB4C:  PUSH.W          {R8-R10}
55CB50:  VPUSH           {D8-D15}
55CB54:  SUB             SP, SP, #0x20; float
55CB56:  MOV             R5, R0
55CB58:  MOV             R8, R2
55CB5A:  LDRB.W          R0, [R5,#0x42E]
55CB5E:  MOV             R9, R1
55CB60:  LSLS            R0, R0, #0x1A
55CB62:  BPL.W           loc_55CEF2
55CB66:  MOV.W           R0, #0xFFFFFFFF; int
55CB6A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
55CB6E:  CMP             R0, R9
55CB70:  BEQ             loc_55CB80
55CB72:  MOV.W           R0, #0xFFFFFFFF; int
55CB76:  MOVS            R1, #0; bool
55CB78:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
55CB7C:  CMP             R0, R9
55CB7E:  BNE             loc_55CBE4
55CB80:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x55CB90)
55CB82:  MOV.W           R2, #0x194
55CB86:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x55CB92)
55CB88:  VMOV.F32        S0, #10.0
55CB8C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
55CB8E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
55CB90:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
55CB92:  LDR             R1, [R1]; CWorld::Players ...
55CB94:  LDR             R0, [R0]; CWorld::PlayerInFocus
55CB96:  SMLABB.W        R0, R0, R2, R1
55CB9A:  VLDR            S2, [R0,#0x148]
55CB9E:  LDR.W           R1, [R0,#0x140]
55CBA2:  VADD.F32        S0, S2, S0
55CBA6:  ADDS            R1, #0x14
55CBA8:  STR.W           R1, [R0,#0x140]
55CBAC:  VSTR            S0, [R0,#0x148]
55CBB0:  BLX             rand
55CBB4:  MOV             R1, #0x57619F1
55CBBC:  SMMUL.W         R1, R0, R1
55CBC0:  ASRS            R2, R1, #7
55CBC2:  ADD.W           R1, R2, R1,LSR#31
55CBC6:  MOVW            R2, #0x1770; float
55CBCA:  MLS.W           R0, R1, R2, R0
55CBCE:  ADD.W           R0, R0, #0xFA0
55CBD2:  VMOV            S0, R0
55CBD6:  MOVS            R0, #(off_7C+1); this
55CBD8:  VCVT.F32.S32    S0, S0
55CBDC:  VMOV            R1, S0; unsigned __int16
55CBE0:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
55CBE4:  LDRH            R0, [R5,#0x26]
55CBE6:  ADDW            R6, R5, #0x42C
55CBEA:  CMP.W           R0, #0x1E8
55CBEE:  BNE             loc_55CBFA
55CBF0:  LDR             R0, =(_ZN7CWanted30bUseNewsHeliInAdditionToPoliceE_ptr - 0x55CBF8)
55CBF2:  MOVS            R1, #0
55CBF4:  ADD             R0, PC; _ZN7CWanted30bUseNewsHeliInAdditionToPoliceE_ptr
55CBF6:  LDR             R0, [R0]; CWanted::bUseNewsHeliInAdditionToPolice ...
55CBF8:  STRB            R1, [R0]; CWanted::bUseNewsHeliInAdditionToPolice
55CBFA:  VLDR            S0, =0.13
55CBFE:  MOVS            R2, #5
55CC00:  VLDR            S2, [R5,#0x50]
55CC04:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x55CC12)
55CC06:  VADD.F32        S0, S2, S0
55CC0A:  LDRB.W          R1, [R5,#0x3A]
55CC0E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
55CC10:  LDR             R3, [R5,#0x44]
55CC12:  BFI.W           R1, R2, #3, #0x1D
55CC16:  STRB.W          R1, [R5,#0x3A]
55CC1A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
55CC1C:  ORR.W           R1, R3, #0x20000000
55CC20:  STR             R1, [R5,#0x44]
55CC22:  VSTR            S0, [R5,#0x50]
55CC26:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds
55CC28:  LDR             R0, [R5,#0x18]
55CC2A:  STR.W           R1, [R5,#0x4E8]
55CC2E:  MOV.W           R1, #0x4000
55CC32:  BLX             j__ZN18CVisibilityPlugins25SetClumpForAllAtomicsFlagEP7RpClumpi; CVisibilityPlugins::SetClumpForAllAtomicsFlag(RpClump *,int)
55CC36:  ADDW            R0, R5, #0x5B4; this
55CC3A:  MOVS            R1, #0; bool
55CC3C:  MOVS            R4, #0
55CC3E:  BLX             j__ZN14CDamageManager17FuckCarCompletelyEb; CDamageManager::FuckCarCompletely(bool)
55CC42:  LDRH            R0, [R5,#0x26]
55CC44:  MOVW            R1, #0x1B9
55CC48:  CMP             R0, R1
55CC4A:  IT NE
55CC4C:  CMPNE.W         R0, #0x234
55CC50:  BEQ             loc_55CCCE
55CC52:  MOV             R0, R5
55CC54:  MOVS            R1, #5
55CC56:  MOVS            R2, #0
55CC58:  MOV.W           R10, #0
55CC5C:  BLX             j__ZN11CAutomobile15SetBumperDamageE7ePanelsb; CAutomobile::SetBumperDamage(ePanels,bool)
55CC60:  MOV             R0, R5
55CC62:  MOVS            R1, #6
55CC64:  MOVS            R2, #0
55CC66:  BLX             j__ZN11CAutomobile15SetBumperDamageE7ePanelsb; CAutomobile::SetBumperDamage(ePanels,bool)
55CC6A:  MOV             R0, R5
55CC6C:  MOVS            R1, #0
55CC6E:  MOVS            R2, #0
55CC70:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
55CC74:  MOV             R0, R5
55CC76:  MOVS            R1, #1
55CC78:  MOVS            R2, #0
55CC7A:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
55CC7E:  MOV             R0, R5
55CC80:  MOVS            R1, #2
55CC82:  MOVS            R2, #0
55CC84:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
55CC88:  MOV             R0, R5
55CC8A:  MOVS            R1, #3
55CC8C:  MOVS            R2, #0
55CC8E:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
55CC92:  MOV             R0, R5
55CC94:  MOVS            R1, #4
55CC96:  MOVS            R2, #0
55CC98:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
55CC9C:  MOV             R0, R5
55CC9E:  MOVS            R1, #5
55CCA0:  MOVS            R2, #0
55CCA2:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
55CCA6:  MOV             R0, R5; this
55CCA8:  MOVS            R1, #5; int
55CCAA:  MOVS            R2, #1; unsigned int
55CCAC:  BLX             j__ZN11CAutomobile20SpawnFlyingComponentEij; CAutomobile::SpawnFlyingComponent(int,uint)
55CCB0:  LDR             R0, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x55CCBC)
55CCB2:  ADD             R2, SP, #0x78+var_5C
55CCB4:  STR.W           R10, [SP,#0x78+var_5C]
55CCB8:  ADD             R0, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
55CCBA:  LDR             R1, [R0]; GetCurrentAtomicObjectCB(RwObject *,void *)
55CCBC:  LDR.W           R0, [R5,#0x670]
55CCC0:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
55CCC4:  LDR             R0, [SP,#0x78+var_5C]
55CCC6:  CMP             R0, #0
55CCC8:  IT NE
55CCCA:  STRBNE.W        R10, [R0,#2]
55CCCE:  LDRB.W          R1, [R5,#0x4B2]
55CCD2:  STRH.W          R4, [R5,#0x4EE]
55CCD6:  LDR             R0, =(TheCamera_ptr - 0x55CCE8)
55CCD8:  AND.W           R1, R1, #0xF8
55CCDC:  LDR             R2, [R5,#0x14]
55CCDE:  STR.W           R4, [R5,#0x4CC]
55CCE2:  ADDS            R4, R5, #4
55CCE4:  ADD             R0, PC; TheCamera_ptr
55CCE6:  STRB.W          R1, [R5,#0x4B2]
55CCEA:  CMP             R2, #0
55CCEC:  MOV             R1, R4
55CCEE:  IT NE
55CCF0:  ADDNE.W         R1, R2, #0x30 ; '0'
55CCF4:  LDR             R0, [R0]; TheCamera ; this
55CCF6:  LDRD.W          R2, R3, [R1]; float
55CCFA:  VLDR            S0, [R1,#8]
55CCFE:  MOV             R1, #0x3ECCCCCD; float
55CD06:  VSTR            S0, [SP,#0x78+var_78]
55CD0A:  BLX             j__ZN7CCamera8CamShakeEffff; CCamera::CamShake(float,float,float,float)
55CD0E:  MOV             R0, R5; this
55CD10:  BLX             j__ZN8CVehicle17KillPedsInVehicleEv; CVehicle::KillPedsInVehicle(void)
55CD14:  MOV             R0, R5; this
55CD16:  BLX             j__ZN8CVehicle24KillPedsGettingInVehicleEv; CVehicle::KillPedsGettingInVehicle(void)
55CD1A:  LDRB.W          R0, [R5,#0x4B2]
55CD1E:  LDRD.W          R2, R1, [R6]
55CD22:  AND.W           R0, R0, #0xE7
55CD26:  STRB.W          R0, [R5,#0x4B2]
55CD2A:  BIC.W           R0, R1, #0x8000
55CD2E:  BIC.W           R1, R2, #0x50 ; 'P'
55CD32:  TST.W           R2, #2
55CD36:  STRD.W          R1, R0, [R6]
55CD3A:  LDRB.W          R3, [R5,#0x87C]
55CD3E:  AND.W           R3, R3, #0xFE
55CD42:  STRB.W          R3, [R5,#0x87C]
55CD46:  BEQ             loc_55CD5C
55CD48:  LDR             R3, =(_ZN8CCarCtrl19NumAmbulancesOnDutyE_ptr - 0x55CD56)
55CD4A:  BIC.W           R1, R2, #0x52 ; 'R'
55CD4E:  STRD.W          R1, R0, [R6]
55CD52:  ADD             R3, PC; _ZN8CCarCtrl19NumAmbulancesOnDutyE_ptr
55CD54:  LDR             R2, [R3]; CCarCtrl::NumAmbulancesOnDuty ...
55CD56:  LDR             R3, [R2]; CCarCtrl::NumAmbulancesOnDuty
55CD58:  SUBS            R3, #1
55CD5A:  STR             R3, [R2]; CCarCtrl::NumAmbulancesOnDuty
55CD5C:  LSLS            R2, R1, #0x1D
55CD5E:  BPL             loc_55CD78
55CD60:  LDR             R2, =(_ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr - 0x55CD6E)
55CD62:  BIC.W           R0, R0, #0x8000
55CD66:  BIC.W           R1, R1, #0x54 ; 'T'
55CD6A:  ADD             R2, PC; _ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr
55CD6C:  STRD.W          R1, R0, [R6]
55CD70:  LDR             R2, [R2]; CCarCtrl::NumFireTrucksOnDuty ...
55CD72:  LDR             R0, [R2]; CCarCtrl::NumFireTrucksOnDuty
55CD74:  SUBS            R0, #1
55CD76:  STR             R0, [R2]; CCarCtrl::NumFireTrucksOnDuty
55CD78:  MOV             R0, R5; this
55CD7A:  MOVS            R1, #0; unsigned __int8
55CD7C:  MOVS            R6, #0
55CD7E:  BLX             j__ZN8CVehicle22ChangeLawEnforcerStateEh; CVehicle::ChangeLawEnforcerState(uchar)
55CD82:  LDR             R0, =(gFireManager_ptr - 0x55CD92)
55CD84:  MOVW            R3, #0xCCCD
55CD88:  MOVW            R1, #0x1B58
55CD8C:  MOVS            R2, #1
55CD8E:  ADD             R0, PC; gFireManager_ptr
55CD90:  STRD.W          R2, R1, [SP,#0x78+var_78]; int
55CD94:  MOVT            R3, #0x3F4C; float
55CD98:  MOV             R1, R5; CEntity *
55CD9A:  LDR             R0, [R0]; gFireManager ; this
55CD9C:  MOV             R2, R9; CEntity *
55CD9E:  STR             R6, [SP,#0x78+var_70]; int
55CDA0:  BLX             j__ZN12CFireManager9StartFireEP7CEntityS1_fhja; CFireManager::StartFire(CEntity *,CEntity *,float,uchar,uint,signed char)
55CDA4:  MOV             R0, R5; this
55CDA6:  MOVS            R1, #0; CVehicle *
55CDA8:  BLX             j__ZN7CDarkel26RegisterCarBlownUpByPlayerEP8CVehiclei; CDarkel::RegisterCarBlownUpByPlayer(CVehicle *,int)
55CDAC:  LDR             R0, [R5,#0x14]
55CDAE:  LDR.W           R1, [R5,#0x5A4]
55CDB2:  CMP             R0, #0
55CDB4:  IT NE
55CDB6:  ADDNE.W         R4, R0, #0x30 ; '0'
55CDBA:  ORR.W           R0, R1, #2
55CDBE:  CMP             R0, #2
55CDC0:  VLDR            S16, [R4]
55CDC4:  VLDR            S18, [R4,#4]
55CDC8:  VLDR            S20, [R4,#8]
55CDCC:  ITE EQ
55CDCE:  VMOVEQ.F32      S22, #0.75
55CDD2:  VLDRNE          S22, =0.1
55CDD6:  BLX             rand
55CDDA:  VMOV            S0, R0
55CDDE:  MOV             R0, R5; this
55CDE0:  VCVT.F32.S32    S24, S0
55CDE4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55CDE8:  LDR             R1, [R5,#0x14]
55CDEA:  VADD.F32        S21, S22, S22
55CDEE:  VLDR            S26, =4.6566e-10
55CDF2:  VLDR            S28, [R0,#0xC]
55CDF6:  VLDR            S30, [R1]
55CDFA:  VMUL.F32        S24, S24, S26
55CDFE:  VLDR            S17, [R1,#4]
55CE02:  VLDR            S19, [R1,#8]
55CE06:  BLX             rand
55CE0A:  VMOV            S0, R0
55CE0E:  MOV             R0, R5; this
55CE10:  VMUL.F32        S24, S21, S24
55CE14:  VCVT.F32.S32    S0, S0
55CE18:  VMUL.F32        S23, S0, S26
55CE1C:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55CE20:  LDR             R1, [R5,#0x14]
55CE22:  VMUL.F32        S21, S21, S23
55CE26:  VSUB.F32        S24, S24, S22
55CE2A:  VLDR            S23, [R0,#0x10]
55CE2E:  VLDR            S25, [R1,#0x10]
55CE32:  VLDR            S27, [R1,#0x14]
55CE36:  VLDR            S29, [R1,#0x18]
55CE3A:  BLX             rand
55CE3E:  VMOV            S0, R0
55CE42:  MOV             R0, R5; this
55CE44:  VMUL.F32        S2, S28, S24
55CE48:  VCVT.F32.S32    S0, S0
55CE4C:  VSUB.F32        S4, S21, S22
55CE50:  VMOV.F32        S6, #0.5
55CE54:  VMUL.F32        S8, S2, S19
55CE58:  VMUL.F32        S0, S0, S26
55CE5C:  VMUL.F32        S22, S23, S4
55CE60:  VMUL.F32        S4, S17, S2
55CE64:  VMUL.F32        S24, S30, S2
55CE68:  VADD.F32        S20, S20, S8
55CE6C:  VADD.F32        S26, S0, S6
55CE70:  VMUL.F32        S28, S22, S29
55CE74:  VADD.F32        S18, S18, S4
55CE78:  VMUL.F32        S30, S27, S22
55CE7C:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55CE80:  VLDR            S0, [R0,#0x14]
55CE84:  VADD.F32        S2, S16, S24
55CE88:  VMUL.F32        S4, S25, S22
55CE8C:  LDRH            R2, [R5,#0x26]
55CE8E:  VMUL.F32        S0, S0, S26
55CE92:  VADD.F32        S6, S20, S28
55CE96:  CMP.W           R2, #0x234
55CE9A:  VADD.F32        S8, S18, S30
55CE9E:  ITT NE
55CEA0:  MOVWNE          R6, #0x1B9
55CEA4:  CMPNE           R2, R6
55CEA6:  VADD.F32        S2, S2, S4
55CEAA:  VSUB.F32        S0, S6, S0
55CEAE:  VMOV            R0, S8
55CEB2:  VMOV            R3, S2; int
55CEB6:  VMOV            R1, S0
55CEBA:  BNE             loc_55CED6
55CEBC:  MOVS            R2, #0
55CEBE:  MOVS            R6, #1
55CEC0:  MOVS            R4, #0
55CEC2:  MOVT            R2, #0xBF80
55CEC6:  STMEA.W         SP, {R0,R1,R4,R6}
55CECA:  MOV             R0, R5
55CECC:  MOV             R1, R9
55CECE:  STRD.W          R2, R8, [SP,#0x78+var_68]
55CED2:  MOVS            R2, #5
55CED4:  B               loc_55CEEE
55CED6:  MOVS            R2, #0
55CED8:  MOVS            R6, #1
55CEDA:  MOVS            R4, #0
55CEDC:  MOVT            R2, #0xBF80
55CEE0:  STMEA.W         SP, {R0,R1,R4,R6}
55CEE4:  MOV             R0, R5; int
55CEE6:  MOV             R1, R9; int
55CEE8:  STRD.W          R2, R8, [SP,#0x78+var_68]; float
55CEEC:  MOVS            R2, #4; int
55CEEE:  BLX             j__ZN10CExplosion12AddExplosionEP7CEntityS1_14eExplosionType7CVectorjhfh; CExplosion::AddExplosion(CEntity *,CEntity *,eExplosionType,CVector,uint,uchar,float,uchar)
55CEF2:  ADD             SP, SP, #0x20 ; ' '
55CEF4:  VPOP            {D8-D15}
55CEF8:  POP.W           {R8-R10}
55CEFC:  POP             {R4-R7,PC}
