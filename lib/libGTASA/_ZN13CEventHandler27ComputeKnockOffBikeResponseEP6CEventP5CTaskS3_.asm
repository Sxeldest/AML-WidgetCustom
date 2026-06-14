; =========================================================
; Game Engine Function: _ZN13CEventHandler27ComputeKnockOffBikeResponseEP6CEventP5CTaskS3_
; Address            : 0x380CE8 - 0x381272
; =========================================================

380CE8:  PUSH            {R4-R7,LR}
380CEA:  ADD             R7, SP, #0xC
380CEC:  PUSH.W          {R8-R10}
380CF0:  SUB             SP, SP, #0xC0
380CF2:  MOV             R10, R0
380CF4:  ADD             R0, SP, #0xD8+var_54; this
380CF6:  MOV             R5, R1
380CF8:  BLX             j__ZN18CEventKnockOffBikeC2Ev; CEventKnockOffBike::CEventKnockOffBike(void)
380CFC:  LDR             R0, [R5]
380CFE:  LDR             R1, [R0,#8]
380D00:  MOV             R0, R5
380D02:  BLX             R1
380D04:  CMP             R0, #8
380D06:  BNE             loc_380D6A
380D08:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x380D18)
380D0C:  ADD             R6, SP, #0xD8+var_94
380D0E:  LDR             R1, [R5,#0x38]; this
380D10:  MOV.W           R8, #1
380D14:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
380D16:  MOVS            R3, #2
380D18:  MOVS            R4, #3
380D1A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
380D1C:  LDR             R2, [R0]; int
380D1E:  MOVS            R0, #0
380D20:  STRD.W          R4, R3, [SP,#0xD8+var_D8]; int
380D24:  MOVS            R3, #0x36 ; '6'; int
380D26:  STRD.W          R8, R0, [SP,#0xD8+var_D0]; int
380D2A:  MOV             R0, R6; int
380D2C:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
380D30:  LDR.W           R1, [R10]; CPed *
380D34:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
380D38:  CMP             R0, #1
380D3A:  BNE             loc_380D62
380D3C:  LDR             R2, [R5,#0x28]
380D3E:  MOVS            R3, #0x36 ; '6'
380D40:  LDR             R1, [R5,#0x38]
380D42:  STRD.W          R4, R8, [SP,#0xD8+var_D8]
380D46:  ADD             R4, SP, #0xD8+var_A8
380D48:  MOV             R0, R4
380D4A:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
380D4E:  LDR.W           R1, [R10]; this
380D52:  ADD.W           R2, R6, #0x34 ; '4'
380D56:  MOVS            R3, #1
380D58:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
380D5C:  MOV             R0, R4; this
380D5E:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
380D62:  ADD             R0, SP, #0xD8+var_94; this
380D64:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
380D68:  B               loc_380F36
380D6A:  LDR             R0, [R5]
380D6C:  LDR             R1, [R0,#8]
380D6E:  MOV             R0, R5
380D70:  BLX             R1
380D72:  CMP             R0, #9
380D74:  BNE             loc_380DC6
380D76:  LDR.W           R2, [R10]
380D7A:  VMOV.F32        S0, #0.75
380D7E:  LDR.W           R1, [R2,#0x590]
380D82:  VLDR            S2, [R1,#0x48]
380D86:  VLDR            S4, [R1,#0x4C]
380D8A:  VLDR            S6, [R1,#0x50]
380D8E:  VMUL.F32        S2, S2, S0
380D92:  VMUL.F32        S4, S4, S0
380D96:  VMUL.F32        S0, S6, S0
380D9A:  VSTR            S4, [SP,#0xD8+var_A4]
380D9E:  VSTR            S2, [SP,#0xD8+var_A8]
380DA2:  VSTR            S0, [SP,#0xD8+var_A0]
380DA6:  LDRB.W          R0, [R5,#0x20]
380DAA:  CMP             R0, #2
380DAC:  BEQ             loc_380E50
380DAE:  CMP             R0, #1
380DB0:  BEQ             loc_380E5A
380DB2:  CMP             R0, #0
380DB4:  BNE             loc_380E6A
380DB6:  LDR             R2, [R2,#0x14]
380DB8:  VLDR            S0, [R2,#0x10]
380DBC:  VLDR            S2, [R2,#0x14]
380DC0:  VLDR            S4, [R2,#0x18]
380DC4:  B               loc_380E78
380DC6:  LDR             R0, [R5]
380DC8:  LDR             R1, [R0,#8]
380DCA:  MOV             R0, R5
380DCC:  BLX             R1
380DCE:  CMP             R0, #0x23 ; '#'
380DD0:  BEQ             loc_380DDA
380DD2:  LDR             R0, [R5]
380DD4:  LDR             R1, [R0,#8]
380DD6:  MOV             R0, R5
380DD8:  BLX             R1
380DDA:  LDR.W           R0, [R10]
380DDE:  VMOV.F32        S0, #0.75
380DE2:  LDR.W           R0, [R0,#0x590]
380DE6:  VLDR            S2, [R0,#0x48]
380DEA:  VLDR            S4, [R0,#0x4C]
380DEE:  VLDR            S6, [R0,#0x50]
380DF2:  VMUL.F32        S2, S2, S0
380DF6:  VMUL.F32        S4, S4, S0
380DFA:  VMUL.F32        S0, S6, S0
380DFE:  VSTR            S4, [SP,#0xD8+var_A4]
380E02:  VSTR            S2, [SP,#0xD8+var_A8]
380E06:  VSTR            S0, [SP,#0xD8+var_A0]
380E0A:  BLX             rand
380E0E:  UXTH            R0, R0
380E10:  VLDR            S2, =0.000015259
380E14:  VMOV            S0, R0
380E18:  VMOV.F32        S4, #4.0
380E1C:  VCVT.F32.S32    S0, S0
380E20:  VMUL.F32        S0, S0, S2
380E24:  VMUL.F32        S0, S0, S4
380E28:  VCVT.S32.F32    S0, S0
380E2C:  VMOV            R0, S0
380E30:  CMP             R0, #2
380E32:  BEQ             loc_380EAE
380E34:  CMP             R0, #1
380E36:  BEQ             loc_380EBC
380E38:  CMP             R0, #0
380E3A:  BNE             loc_380ED0
380E3C:  LDR.W           R1, [R10]
380E40:  LDR             R2, [R1,#0x14]
380E42:  VLDR            S0, [R2,#0x10]
380E46:  VLDR            S2, [R2,#0x14]
380E4A:  VLDR            S4, [R2,#0x18]
380E4E:  B               loc_380EE2
380E50:  LDR             R2, [R2,#0x14]
380E52:  VLDR            D16, [R2,#0x10]
380E56:  LDR             R2, [R2,#0x18]
380E58:  B               loc_380E62
380E5A:  LDR             R2, [R2,#0x14]
380E5C:  VLDR            D16, [R2]
380E60:  LDR             R2, [R2,#8]
380E62:  STR             R2, [SP,#0xD8+var_B0]
380E64:  VSTR            D16, [SP,#0xD8+var_B8]
380E68:  B               loc_380E90
380E6A:  LDR             R2, [R2,#0x14]
380E6C:  VLDR            S0, [R2]
380E70:  VLDR            S2, [R2,#4]
380E74:  VLDR            S4, [R2,#8]
380E78:  VNEG.F32        S2, S2
380E7C:  VNEG.F32        S0, S0
380E80:  VNEG.F32        S4, S4
380E84:  VSTR            S2, [SP,#0xD8+var_B8+4]
380E88:  VSTR            S0, [SP,#0xD8+var_B8]
380E8C:  VSTR            S4, [SP,#0xD8+var_B0]
380E90:  MOVS            R6, #0
380E92:  LDR             R2, [R5,#0x18]
380E94:  MOVS            R3, #0
380E96:  MOVT            R6, #0x4248
380E9A:  SXTB            R0, R0
380E9C:  STRD.W          R6, R3, [SP,#0xD8+var_D8]
380EA0:  STRD.W          R2, R0, [SP,#0xD8+var_D0]
380EA4:  STRD.W          R3, R3, [SP,#0xD8+var_C8]
380EA8:  STRD.W          R3, R3, [SP,#0xD8+var_C0]
380EAC:  B               loc_380F1A
380EAE:  LDR.W           R1, [R10]
380EB2:  LDR             R2, [R1,#0x14]
380EB4:  VLDR            D16, [R2,#0x10]
380EB8:  LDR             R2, [R2,#0x18]
380EBA:  B               loc_380EC8
380EBC:  LDR.W           R1, [R10]
380EC0:  LDR             R2, [R1,#0x14]
380EC2:  VLDR            D16, [R2]
380EC6:  LDR             R2, [R2,#8]
380EC8:  STR             R2, [SP,#0xD8+var_B0]
380ECA:  VSTR            D16, [SP,#0xD8+var_B8]
380ECE:  B               loc_380EFA
380ED0:  LDR.W           R1, [R10]
380ED4:  LDR             R2, [R1,#0x14]
380ED6:  VLDR            S0, [R2]
380EDA:  VLDR            S2, [R2,#4]
380EDE:  VLDR            S4, [R2,#8]
380EE2:  VNEG.F32        S2, S2
380EE6:  VNEG.F32        S0, S0
380EEA:  VNEG.F32        S4, S4
380EEE:  VSTR            S2, [SP,#0xD8+var_B8+4]
380EF2:  VSTR            S0, [SP,#0xD8+var_B8]
380EF6:  VSTR            S4, [SP,#0xD8+var_B0]
380EFA:  LDR.W           R1, [R1,#0x590]; this
380EFE:  MOVS            R6, #0
380F00:  MOVS            R2, #0
380F02:  MOVT            R6, #0x4248
380F06:  SXTB            R0, R0
380F08:  MOVS            R3, #0x33 ; '3'
380F0A:  STRD.W          R6, R2, [SP,#0xD8+var_D8]; float
380F0E:  STRD.W          R3, R0, [SP,#0xD8+var_D0]; int
380F12:  STRD.W          R2, R2, [SP,#0xD8+var_C8]; int
380F16:  STRD.W          R2, R2, [SP,#0xD8+var_C0]; int
380F1A:  ADD             R4, SP, #0xD8+var_94
380F1C:  ADD             R2, SP, #0xD8+var_A8; int
380F1E:  ADD             R3, SP, #0xD8+var_B8; int
380F20:  MOV             R0, R4; int
380F22:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
380F26:  ADD             R5, SP, #0xD8+var_54
380F28:  MOV             R1, R4
380F2A:  MOV             R0, R5
380F2C:  BLX             j__ZN18CEventKnockOffBikeaSERKS_; CEventKnockOffBike::operator=(CEventKnockOffBike const&)
380F30:  MOV             R0, R4; this
380F32:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
380F36:  LDR             R6, [R5,#0x38]
380F38:  CMP             R6, #0
380F3A:  BEQ.W           loc_381264
380F3E:  LDR.W           R9, [R5,#0x2C]
380F42:  LDR.W           R2, [R10]
380F46:  LDR.W           R0, [R6,#0x464]
380F4A:  CMP             R0, R2
380F4C:  BEQ             loc_380F68
380F4E:  LDR.W           R0, [R6,#0x468]
380F52:  CMP             R0, R2
380F54:  ITT NE
380F56:  LDRNE.W         R0, [R6,#0x46C]
380F5A:  CMPNE           R0, R2
380F5C:  BEQ             loc_380F68
380F5E:  LDR.W           R0, [R6,#0x470]
380F62:  CMP             R0, R2
380F64:  BNE.W           loc_381264
380F68:  LDR             R0, =(g_InterestingEvents_ptr - 0x380F70)
380F6A:  MOVS            R1, #0x10
380F6C:  ADD             R0, PC; g_InterestingEvents_ptr
380F6E:  LDR             R0, [R0]; g_InterestingEvents
380F70:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
380F74:  LDR.W           R1, [R10]; CPed *
380F78:  MOV             R0, R5; this
380F7A:  BLX             j__ZN18CEventKnockOffBike18SetPedSafePositionEP4CPed; CEventKnockOffBike::SetPedSafePosition(CPed *)
380F7E:  LDR.W           R1, [R10]; CPed *
380F82:  CMP             R0, #1
380F84:  BNE             loc_381042
380F86:  MOV             R0, R5; this
380F88:  BLX             j__ZN18CEventKnockOffBike12SetPedOutCarEP4CPed; CEventKnockOffBike::SetPedOutCar(CPed *)
380F8C:  LDR.W           R1, [R10]; CPed *
380F90:  MOV             R0, R5; this
380F92:  BLX             j__ZN18CEventKnockOffBike18CalcForcesAndAnimsEP4CPed; CEventKnockOffBike::CalcForcesAndAnims(CPed *)
380F96:  MOV             R8, R0
380F98:  LDRB.W          R0, [R5,#0x36]
380F9C:  LDR.W           R1, [R10]
380FA0:  CMP             R0, #0x35 ; '5'
380FA2:  BNE             loc_381054
380FA4:  LDR.W           R0, [R1,#0x484]
380FA8:  BIC.W           R0, R0, #1
380FAC:  STR.W           R0, [R1,#0x484]
380FB0:  LDR.W           R0, [R10]
380FB4:  LDR.W           R1, [R0,#0x484]
380FB8:  LDR.W           R2, [R0,#0x488]
380FBC:  LDR.W           R3, [R0,#0x48C]
380FC0:  BIC.W           R1, R1, #2
380FC4:  LDR.W           R4, [R0,#0x490]
380FC8:  STR.W           R1, [R0,#0x484]
380FCC:  STR.W           R2, [R0,#0x488]
380FD0:  STR.W           R3, [R0,#0x48C]
380FD4:  STR.W           R4, [R0,#0x490]
380FD8:  LDR.W           R0, [R10]
380FDC:  LDR.W           R1, [R0,#0x484]
380FE0:  LDR.W           R2, [R0,#0x488]
380FE4:  LDR.W           R3, [R0,#0x48C]
380FE8:  ORR.W           R1, R1, #0x200
380FEC:  LDR.W           R4, [R0,#0x490]
380FF0:  STR.W           R1, [R0,#0x484]
380FF4:  STR.W           R2, [R0,#0x488]
380FF8:  STR.W           R3, [R0,#0x48C]
380FFC:  STR.W           R4, [R0,#0x490]
381000:  LDR.W           R0, [R10]
381004:  LDR             R1, [R0,#0x44]
381006:  ORR.W           R1, R1, #0x100
38100A:  STR             R1, [R0,#0x44]
38100C:  LDR.W           R0, [R10]
381010:  LDR             R1, [R0,#0x44]
381012:  ORR.W           R1, R1, #0x8000000; unsigned int
381016:  STR             R1, [R0,#0x44]
381018:  LDR.W           R0, [R10]
38101C:  ADDW            R0, R0, #0x544
381020:  VLDR            S0, [R0]
381024:  VCMPE.F32       S0, #0.0
381028:  VMRS            APSR_nzcv, FPSCR
38102C:  BLE             loc_3810F8
38102E:  MOVS            R0, #word_10; this
381030:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381034:  MOVS            R1, #0; bool
381036:  MOVS            R2, #0; bool
381038:  BLX             j__ZN24CTaskComplexInAirAndLandC2Ebb; CTaskComplexInAirAndLand::CTaskComplexInAirAndLand(bool,bool)
38103C:  STR.W           R0, [R10,#0x24]
381040:  B               loc_38120C
381042:  LDRB.W          R0, [R1,#0x485]
381046:  LSLS            R0, R0, #0x1F
381048:  ITTT NE
38104A:  LDRNE           R0, [R1,#0x1C]
38104C:  BICNE.W         R0, R0, #1
381050:  STRNE           R0, [R1,#0x1C]
381052:  B               loc_381264
381054:  ADDW            R1, R1, #0x544; unsigned int
381058:  VLDR            S0, [R1]
38105C:  VCMPE.F32       S0, #0.0
381060:  VMRS            APSR_nzcv, FPSCR
381064:  BLE             loc_381122
381066:  CMP             R0, #0
381068:  BEQ.W           loc_38120C
38106C:  MOVS            R0, #off_18; this
38106E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381072:  MOV             R1, R8
381074:  MOVS            R2, #0
381076:  MOV             R3, R9
381078:  BLX             j__ZN24CTaskComplexFallAndGetUpC2E11AnimationId12AssocGroupIdi; CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(AnimationId,AssocGroupId,int)
38107C:  LDR.W           R1, [R10]; CPed *
381080:  STR.W           R0, [R10,#0x24]
381084:  MOV             R0, R1; this
381086:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
38108A:  MOV             R8, R0
38108C:  CMP.W           R8, #0
381090:  BEQ.W           loc_3811E4
381094:  ADD.W           R9, R8, #8
381098:  LDR.W           R1, [R10]; CPed *
38109C:  MOV             R0, R9; this
38109E:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
3810A2:  CMP             R0, #0
3810A4:  ITT EQ
3810A6:  LDRBEQ.W        R0, [R5,#0x35]
3810AA:  MOVSEQ.W        R0, R0,LSL#31
3810AE:  BEQ             loc_381190
3810B0:  LDR.W           R1, [R10]; CPed *
3810B4:  MOV             R0, R9; this
3810B6:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
3810BA:  CMP             R0, #1
3810BC:  BNE.W           loc_3811E4
3810C0:  MOVS            R0, #word_10; this
3810C2:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
3810C6:  MOV             R4, R0
3810C8:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
3810CC:  LDR             R0, =(_ZTV29CEventLeaderExitedCarAsDriver_ptr - 0x3810D8)
3810CE:  ADD.W           R9, SP, #0xD8+var_94
3810D2:  MOV             R2, R4; CEvent *
3810D4:  ADD             R0, PC; _ZTV29CEventLeaderExitedCarAsDriver_ptr
3810D6:  LDR             R0, [R0]; `vtable for'CEventLeaderExitedCarAsDriver ...
3810D8:  ADDS            R0, #8
3810DA:  STR             R0, [R4]
3810DC:  LDR.W           R1, [R10]; CPed *
3810E0:  MOV             R0, R9; this
3810E2:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
3810E6:  ADD.W           R0, R8, #0x30 ; '0'; this
3810EA:  MOV             R1, R9; CEvent *
3810EC:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
3810F0:  MOV             R0, R9; this
3810F2:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
3810F6:  B               loc_3811E4
3810F8:  MOVS            R0, #word_28; this
3810FA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3810FE:  LDRSB.W         R1, [R5,#0x36]; int
381102:  MOVS            R2, #0
381104:  MOV.W           R3, #0x40800000
381108:  STRD.W          R3, R2, [SP,#0xD8+var_D8]; float
38110C:  MOV             R3, R8; int
38110E:  STRD.W          R2, R2, [SP,#0xD8+var_D0]; int
381112:  STRD.W          R2, R2, [SP,#0xD8+var_C8]; int
381116:  MOVS            R2, #0; int
381118:  BLX             j__ZN15CTaskComplexDieC2E11eWeaponType12AssocGroupId11AnimationIdffbbib; CTaskComplexDie::CTaskComplexDie(eWeaponType,AssocGroupId,AnimationId,float,float,bool,bool,int,bool)
38111C:  STR.W           R0, [R10,#0x24]
381120:  B               loc_38120C
381122:  CMP.W           R8, #0xBF
381126:  BNE             loc_38113A
381128:  LDRSB.W         R0, [R5,#0x34]
38112C:  CMP             R0, #3
38112E:  ITTE LS
381130:  ADRLS           R1, dword_38127C; unsigned int
381132:  LDRLS.W         R8, [R1,R0,LSL#2]
381136:  MOVHI.W         R8, #0xBF
38113A:  MOVS            R0, #word_28; this
38113C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381140:  LDRSB.W         R1, [R5,#0x36]; int
381144:  MOVS            R2, #0
381146:  MOV.W           R3, #0x40800000
38114A:  STRD.W          R3, R2, [SP,#0xD8+var_D8]; float
38114E:  MOV             R3, R8; int
381150:  STRD.W          R2, R2, [SP,#0xD8+var_D0]; int
381154:  STRD.W          R2, R2, [SP,#0xD8+var_C8]; int
381158:  MOVS            R2, #0; int
38115A:  BLX             j__ZN15CTaskComplexDieC2E11eWeaponType12AssocGroupId11AnimationIdffbbib; CTaskComplexDie::CTaskComplexDie(eWeaponType,AssocGroupId,AnimationId,float,float,bool,bool,int,bool)
38115E:  LDR.W           R1, [R10]
381162:  STR.W           R0, [R10,#0x24]
381166:  LDR.W           R0, [R1,#0x484]
38116A:  LDR.W           R2, [R1,#0x488]
38116E:  LDR.W           R3, [R1,#0x48C]
381172:  BIC.W           R0, R0, #1
381176:  LDR.W           R5, [R1,#0x490]
38117A:  STR.W           R0, [R1,#0x484]
38117E:  STR.W           R2, [R1,#0x488]
381182:  STR.W           R3, [R1,#0x48C]
381186:  STR.W           R5, [R1,#0x490]
38118A:  B               loc_381250
38118C:  DCFS 0.000015259
381190:  MOV             R0, R9; this
381192:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
381196:  CMP             R0, #0
381198:  ITT NE
38119A:  LDRBNE.W        R1, [R0,#0x485]
38119E:  MOVSNE.W        R1, R1,LSL#31
3811A2:  BEQ             loc_3811E4
3811A4:  LDR.W           R0, [R0,#0x440]
3811A8:  MOVS            R1, #8; int
3811AA:  ADDS            R0, #0x68 ; 'h'; this
3811AC:  BLX             j__ZNK11CEventGroup14GetEventOfTypeEi; CEventGroup::GetEventOfType(int)
3811B0:  CBNZ            R0, loc_3811E4
3811B2:  MOVS            R0, #dword_40; this
3811B4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3811B8:  MOV             R4, R0
3811BA:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
3811BE:  LDR.W           R1, [R10,#0x24]; CTask *
3811C2:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
3811C6:  MOVS            R0, #dword_50; this
3811C8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3811CC:  MOV             R1, R6; CVehicle *
3811CE:  MOVS            R2, #0; int
3811D0:  MOVS            R3, #1; bool
3811D2:  MOV             R8, R0
3811D4:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
3811D8:  MOV             R0, R4; this
3811DA:  MOV             R1, R8; CTask *
3811DC:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
3811E0:  STR.W           R4, [R10,#0x24]
3811E4:  LDR.W           R0, [R10]
3811E8:  LDR.W           R1, [R0,#0x484]
3811EC:  LDR.W           R2, [R0,#0x488]
3811F0:  LDR.W           R3, [R0,#0x48C]
3811F4:  BIC.W           R1, R1, #1
3811F8:  LDR.W           R4, [R0,#0x490]
3811FC:  STR.W           R1, [R0,#0x484]
381200:  STR.W           R2, [R0,#0x488]
381204:  STR.W           R3, [R0,#0x48C]
381208:  STR.W           R4, [R0,#0x490]
38120C:  LDR             R2, [R5,#0x30]; CPed *
38120E:  CBZ             R2, loc_381250
381210:  LDRB.W          R0, [R5,#0x35]
381214:  ADD             R4, SP, #0xD8+var_94
381216:  MOV             R1, R6; CVehicle *
381218:  AND.W           R3, R0, #1; bool
38121C:  MOV             R0, R4; this
38121E:  BLX             j__ZN19CEventDraggedOutCarC2EPK8CVehiclePK4CPedb; CEventDraggedOutCar::CEventDraggedOutCar(CVehicle const*,CPed const*,bool)
381222:  LDR.W           R0, [R10]
381226:  MOV             R1, R4; CEvent *
381228:  MOVS            R2, #1; bool
38122A:  LDR.W           R0, [R0,#0x440]
38122E:  ADDS            R0, #0x68 ; 'h'; this
381230:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
381234:  LDR.W           R0, [R6,#0x5A0]
381238:  CMP             R0, #9
38123A:  ITTT EQ
38123C:  LDRBEQ.W        R0, [R6,#0x628]
381240:  ORREQ.W         R0, R0, #0x10
381244:  STRBEQ.W        R0, [R6,#0x628]
381248:  ADD             R0, SP, #0xD8+var_94; this
38124A:  BLX             j__ZN19CEventDraggedOutCarD2Ev; CEventDraggedOutCar::~CEventDraggedOutCar()
38124E:  B               loc_381264
381250:  LDR.W           R0, [R6,#0x5A0]
381254:  CMP             R0, #9
381256:  ITTT EQ
381258:  LDRBEQ.W        R0, [R6,#0x628]
38125C:  ANDEQ.W         R0, R0, #0xEF
381260:  STRBEQ.W        R0, [R6,#0x628]
381264:  ADD             R0, SP, #0xD8+var_54; this
381266:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
38126A:  ADD             SP, SP, #0xC0
38126C:  POP.W           {R8-R10}
381270:  POP             {R4-R7,PC}
