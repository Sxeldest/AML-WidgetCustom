; =========================================================
; Game Engine Function: _ZN13CEventHandler34ComputePersonalityResponseToDamageEP12CEventDamageP7CEntity
; Address            : 0x383C20 - 0x38428E
; =========================================================

383C20:  PUSH            {R4-R7,LR}
383C22:  ADD             R7, SP, #0xC
383C24:  PUSH.W          {R8-R10}
383C28:  SUB             SP, SP, #0x28
383C2A:  MOV             R10, R0
383C2C:  LDRSH.W         R0, [R1,#0xA]
383C30:  MOVW            R1, #0x2D5
383C34:  MOV             R9, R2
383C36:  CMP             R0, R1
383C38:  BGT             loc_383C76
383C3A:  CMP.W           R0, #0x19E
383C3E:  BGT.W           loc_383D54
383C42:  SUB.W           R1, R0, #0xFB; switch 12 cases
383C46:  CMP             R1, #0xB
383C48:  BHI.W           def_383C4C; jumptable 00383C4C default case
383C4C:  TBH.W           [PC,R1,LSL#1]; switch jump
383C50:  DCW 0x125; jump table for switch statement
383C52:  DCW 0x31B
383C54:  DCW 0x31B
383C56:  DCW 0x31B
383C58:  DCW 0x31B
383C5A:  DCW 0x31B
383C5C:  DCW 0x31B
383C5E:  DCW 0xC
383C60:  DCW 0x31B
383C62:  DCW 0x31B
383C64:  DCW 0x127
383C66:  DCW 0x133
383C68:  MOVS            R0, #word_10; jumptable 00383C4C case 258
383C6A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383C6E:  MOVS            R1, #0; bool
383C70:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
383C74:  B               loc_384282
383C76:  MOVW            R1, #0x39E
383C7A:  MOV.W           R6, #0x800
383C7E:  CMP             R0, R1
383C80:  BGT             loc_383CDC
383C82:  CMP.W           R0, #0x38C
383C86:  BGT.W           loc_383D9A
383C8A:  MOVW            R1, #0x2D6
383C8E:  CMP             R0, R1
383C90:  BEQ.W           loc_383ECE
383C94:  MOVW            R1, #0x2D9
383C98:  CMP             R0, R1
383C9A:  BNE.W           loc_384286; jumptable 00383C4C cases 252-257,259,260
383C9E:  LDR.W           R0, [R10]
383CA2:  LDRB.W          R1, [R0,#0x485]
383CA6:  LSLS            R1, R1, #0x1F; unsigned int
383CA8:  ITT NE
383CAA:  LDRNE.W         R0, [R0,#0x590]
383CAE:  CMPNE           R0, #0
383CB0:  BEQ             loc_383D36
383CB2:  MOVS            R0, #word_2C; this
383CB4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383CB8:  LDR.W           R1, [R10]
383CBC:  MOVS            R2, #0x42200000
383CC2:  MOVS            R3, #3
383CC4:  LDR.W           R1, [R1,#0x590]; CVehicle *
383CC8:  STRD.W          R3, R2, [SP,#0x40+var_40]; int
383CCC:  MOV             R2, R9; CEntity *
383CCE:  MOVS            R3, #0x36 ; '6'; int
383CD0:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
383CD4:  LDR.W           R1, =(_ZTV34CTaskComplexCarDriveMissionKillPed_ptr - 0x383CDC)
383CD8:  ADD             R1, PC; _ZTV34CTaskComplexCarDriveMissionKillPed_ptr
383CDA:  B               loc_383F0E
383CDC:  MOVW            R1, #0x403
383CE0:  CMP             R0, R1
383CE2:  BGT.W           loc_383E2A
383CE6:  MOVW            R1, #0x39F; unsigned int
383CEA:  CMP             R0, R1
383CEC:  BEQ.W           loc_383F16
383CF0:  CMP.W           R0, #0x3E8
383CF4:  BNE.W           loc_384286; jumptable 00383C4C cases 252-257,259,260
383CF8:  LDR.W           R0, [R10]
383CFC:  LDRB.W          R1, [R0,#0x448]
383D00:  CMP             R1, #2
383D02:  BEQ             loc_383D36
383D04:  LDRSB.W         R1, [R0,#0x71C]
383D08:  LDRSB.W         R8, [R9,#0x71C]
383D0C:  RSB.W           R1, R1, R1,LSL#3
383D10:  ADD.W           R0, R0, R1,LSL#2
383D14:  ADDW            R0, R0, #0x5A4; this
383D18:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
383D1C:  CMP             R0, #1
383D1E:  BNE             loc_383D36
383D20:  RSB.W           R0, R8, R8,LSL#3
383D24:  ADD.W           R0, R9, R0,LSL#2
383D28:  ADDW            R0, R0, #0x5A4; this
383D2C:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
383D30:  CMP             R0, #1
383D32:  BNE.W           loc_38417E
383D36:  MOVS            R0, #dword_38; this
383D38:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383D3C:  MOVS            R2, #0
383D3E:  MOVS            R1, #1
383D40:  STRD.W          R2, R2, [SP,#0x40+var_40]; unsigned int
383D44:  MOV.W           R2, #0xFFFFFFFF; int
383D48:  STR             R1, [SP,#0x40+var_38]; int
383D4A:  MOV             R1, R9; CPed *
383D4C:  MOVS            R3, #0; unsigned int
383D4E:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
383D52:  B               loc_384282
383D54:  MOVW            R1, #0x19F
383D58:  MOVW            R6, #0xFFFF
383D5C:  CMP             R0, R1
383D5E:  BEQ.W           loc_383F5E
383D62:  MOVW            R1, #0x1AB; unsigned int
383D66:  CMP             R0, R1
383D68:  BEQ.W           loc_383FB6
383D6C:  MOVW            R1, #0x201; unsigned int
383D70:  CMP             R0, R1
383D72:  BNE.W           loc_384286; jumptable 00383C4C cases 252-257,259,260
383D76:  MOVS            R0, #dword_24; this
383D78:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383D7C:  MOVS            R1, #0
383D7E:  ADD             R3, SP, #0x40+var_24; CVector *
383D80:  STRD.W          R1, R1, [SP,#0x40+var_24]
383D84:  MOVS            R2, #0; int
383D86:  STR             R1, [SP,#0x40+var_1C]
383D88:  MOVS            R1, #1
383D8A:  STR             R1, [SP,#0x40+var_40]; bool
383D8C:  MOVS            R1, #0; CVehicle *
383D8E:  BLX             j__ZN31CTaskComplexEvasiveDiveAndGetUpC2EP8CVehicleiRK7CVectorb_0; CTaskComplexEvasiveDiveAndGetUp::CTaskComplexEvasiveDiveAndGetUp(CVehicle *,int,CVector const&,bool)
383D92:  LDR.W           R1, =(_ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr - 0x383D9A)
383D96:  ADD             R1, PC; _ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr
383D98:  B               loc_383F0E
383D9A:  MOVW            R1, #0x38D; unsigned int
383D9E:  CMP             R0, R1
383DA0:  BEQ.W           loc_383FCA
383DA4:  MOVW            R1, #0x38F; unsigned int
383DA8:  CMP             R0, R1
383DAA:  BNE.W           loc_384286; jumptable 00383C4C cases 252-257,259,260
383DAE:  LDR.W           R0, [R10]
383DB2:  LDR.W           R0, [R0,#0x490]
383DB6:  TST             R0, R6
383DB8:  BEQ.W           loc_38404A
383DBC:  LDR.W           R0, [R9,#0x59C]
383DC0:  CMP             R0, #6
383DC2:  BNE.W           loc_38404A
383DC6:  MOVS            R0, #dword_54; this
383DC8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383DCC:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x383DD8)
383DD0:  LDR.W           LR, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x383DE2)
383DD4:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
383DD6:  LDR.W           R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x383DE8)
383DDA:  LDR.W           R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x383DEE)
383DDE:  ADD             LR, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
383DE0:  LDR.W           R8, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
383DE4:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
383DE6:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x383DF8)
383DEA:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
383DEC:  LDR.W           R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x383DFA)
383DF0:  LDR.W           R12, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x383E00)
383DF4:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
383DF6:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
383DF8:  LDR.W           LR, [LR]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
383DFC:  ADD             R12, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
383DFE:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
383E00:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
383E02:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
383E04:  LDR             R6, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime ...
383E06:  LDR.W           R12, [R12]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime ...
383E0A:  VLDR            S0, [R1]
383E0E:  LDR.W           R1, [LR]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
383E12:  LDR.W           R8, [R8]; CTaskComplexSmartFleeEntity::ms_iFleeTime
383E16:  VLDR            S2, [R2]
383E1A:  LDR             R2, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime
383E1C:  STR             R1, [SP,#0x40+var_30]
383E1E:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance
383E20:  LDR.W           R6, [R12]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime
383E24:  STR.W           R8, [SP,#0x40+var_40]
383E28:  B               loc_384026
383E2A:  MOVW            R1, #0x404; unsigned int
383E2E:  CMP             R0, R1
383E30:  BEQ.W           loc_38403C
383E34:  MOVW            R1, #0x451
383E38:  CMP             R0, R1
383E3A:  BNE.W           loc_384286; jumptable 00383C4C cases 252-257,259,260
383E3E:  MOV             R0, R9; this
383E40:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
383E44:  CBNZ            R0, loc_383E9A; jumptable 00383C4C case 251
383E46:  LDR.W           R0, [R10]
383E4A:  LDRB.W          R1, [R0,#0x448]
383E4E:  CMP             R1, #2
383E50:  BEQ             loc_383E84
383E52:  LDRSB.W         R1, [R0,#0x71C]
383E56:  LDRSB.W         R6, [R9,#0x71C]
383E5A:  RSB.W           R1, R1, R1,LSL#3
383E5E:  ADD.W           R0, R0, R1,LSL#2
383E62:  ADDW            R0, R0, #0x5A4; this
383E66:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
383E6A:  CMP             R0, #1
383E6C:  BNE             loc_383E84
383E6E:  RSB.W           R0, R6, R6,LSL#3
383E72:  ADD.W           R0, R9, R0,LSL#2
383E76:  ADDW            R0, R0, #0x5A4; this
383E7A:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
383E7E:  CMP             R0, #1
383E80:  BNE.W           loc_384244
383E84:  MOVS            R0, #dword_20; this
383E86:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383E8A:  MOV             R1, R9; CPed *
383E8C:  MOVS            R2, #0; bool
383E8E:  BLX             j__ZN24CTaskComplexKillCriminalC2EP4CPedb; CTaskComplexKillCriminal::CTaskComplexKillCriminal(CPed *,bool)
383E92:  B               loc_384282
383E94:  CMP             R0, #0xC8; jumptable 00383C4C default case
383E96:  BNE.W           loc_384286; jumptable 00383C4C cases 252-257,259,260
383E9A:  MOVS            R0, #0; jumptable 00383C4C case 251
383E9C:  B               loc_384282
383E9E:  MOVS            R0, #word_10; jumptable 00383C4C case 261
383EA0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383EA4:  MOVS            R1, #0; bool
383EA6:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb_0; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
383EAA:  LDR.W           R1, =(_ZTV46CTaskComplexUseClosestFreeScriptedAttractorRun_ptr - 0x383EB6)
383EAE:  MOVS            R2, #6
383EB0:  STR             R2, [R0,#0xC]
383EB2:  ADD             R1, PC; _ZTV46CTaskComplexUseClosestFreeScriptedAttractorRun_ptr
383EB4:  B               loc_383F0E
383EB6:  MOVS            R0, #word_10; jumptable 00383C4C case 262
383EB8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383EBC:  MOVS            R1, #0; bool
383EBE:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb_0; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
383EC2:  LDR.W           R1, =(_ZTV49CTaskComplexUseClosestFreeScriptedAttractorSprint_ptr - 0x383ECE)
383EC6:  MOVS            R2, #7
383EC8:  STR             R2, [R0,#0xC]
383ECA:  ADD             R1, PC; _ZTV49CTaskComplexUseClosestFreeScriptedAttractorSprint_ptr
383ECC:  B               loc_383F0E
383ECE:  LDR.W           R1, [R10]; CPed *
383ED2:  LDR.W           R0, [R1,#0x590]; this
383ED6:  CMP             R0, #0
383ED8:  BEQ.W           loc_3840E4
383EDC:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
383EE0:  CMP             R0, #0
383EE2:  BEQ.W           loc_3840E0
383EE6:  MOVS            R0, #word_2C; this
383EE8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383EEC:  LDR.W           R1, [R10]
383EF0:  MOVS            R2, #0x42200000
383EF6:  MOVS            R3, #2
383EF8:  LDR.W           R1, [R1,#0x590]; CVehicle *
383EFC:  STRD.W          R3, R2, [SP,#0x40+var_40]; int
383F00:  MOVS            R2, #0; CEntity *
383F02:  MOVS            R3, #1; int
383F04:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
383F08:  LDR.W           R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x383F10)
383F0C:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
383F0E:  LDR             R1, [R1]; `vtable for'CTaskComplexCarDriveMissionFleeScene
383F10:  ADDS            R1, #8
383F12:  STR             R1, [R0]
383F14:  B               loc_384282
383F16:  MOVS            R0, #dword_54; this
383F18:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383F1C:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x383F28)
383F20:  LDR.W           R4, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x383F2E)
383F24:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
383F26:  LDR.W           R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x383F38)
383F2A:  ADD             R4, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
383F2C:  LDR.W           R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x383F3E)
383F30:  LDR.W           R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x383F44)
383F34:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
383F36:  LDR.W           R5, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x383F48)
383F3A:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
383F3C:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x383F4C)
383F40:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
383F42:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
383F44:  ADD             R5, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
383F46:  LDR             R4, [R4]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
383F48:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
383F4A:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
383F4C:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
383F4E:  LDR             R6, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime ...
383F50:  LDR             R5, [R5]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime ...
383F52:  LDR.W           R12, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
383F56:  VLDR            S0, [R4]
383F5A:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime
383F5C:  B               loc_384014
383F5E:  LDR.W           R0, [R10]
383F62:  MOVS            R1, #1; bool
383F64:  LDR.W           R0, [R0,#0x440]; this
383F68:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
383F6C:  CMP             R0, #0
383F6E:  BNE.W           loc_384286; jumptable 00383C4C cases 252-257,259,260
383F72:  MOVS            R0, #word_28; this
383F74:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383F78:  MOV             R5, R0
383F7A:  BLX             rand
383F7E:  UXTH            R0, R0
383F80:  VLDR            S2, =0.000015259
383F84:  VMOV            S0, R0
383F88:  SXTH            R3, R6; __int16
383F8A:  MOVS            R1, #0; unsigned __int8
383F8C:  VCVT.F32.S32    S0, S0
383F90:  VMUL.F32        S0, S0, S2
383F94:  VLDR            S2, =3000.0
383F98:  VMUL.F32        S0, S0, S2
383F9C:  VCVT.S32.F32    S0, S0
383FA0:  VMOV            R0, S0
383FA4:  ADD.W           R0, R0, #0x7D0
383FA8:  UXTH            R2, R0; unsigned __int16
383FAA:  MOV             R0, R5; this
383FAC:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
383FB0:  STR.W           R5, [R10,#0x24]
383FB4:  B               loc_384286; jumptable 00383C4C cases 252-257,259,260
383FB6:  MOVS            R0, #word_28; this
383FB8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383FBC:  SXTH            R3, R6; __int16
383FBE:  MOVS            R1, #0; unsigned __int8
383FC0:  MOVW            R2, #0xFFFF; unsigned __int16
383FC4:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
383FC8:  B               loc_384282
383FCA:  LDR.W           R0, [R10]
383FCE:  LDR.W           R0, [R0,#0x490]
383FD2:  TST             R0, R6
383FD4:  BEQ             loc_384088
383FD6:  MOVS            R0, #dword_54; this
383FD8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383FDC:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x383FE4)
383FDE:  LDR             R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x383FEA)
383FE0:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
383FE2:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x383FF0)
383FE4:  LDR             R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x383FF4)
383FE6:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
383FE8:  LDR.W           LR, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
383FEC:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
383FEE:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x383FF8)
383FF0:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
383FF2:  LDR             R5, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x383FFE)
383FF4:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
383FF6:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x384004)
383FFA:  ADD             R5, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
383FFC:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
383FFE:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
384000:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
384002:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
384004:  LDR             R6, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime ...
384006:  VLDR            S0, [R1]
38400A:  LDR             R5, [R5]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime ...
38400C:  LDR.W           R12, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
384010:  LDR.W           R1, [LR]; CTaskComplexSmartFleeEntity::ms_iFleeTime
384014:  VLDR            S2, [R2]
384018:  LDR             R2, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime
38401A:  LDR             R6, [R5]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime
38401C:  LDR             R3, [R3]; float
38401E:  LDR.W           R5, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
384022:  STR             R5, [SP,#0x40+var_30]; int
384024:  STR             R1, [SP,#0x40+var_40]; int
384026:  STRD.W          R2, R6, [SP,#0x40+var_3C]; int
38402A:  MOV             R1, R9; CEntity *
38402C:  MOVS            R2, #1; bool
38402E:  VSTR            S0, [SP,#0x40+var_2C]
384032:  VSTR            S2, [SP,#0x40+var_34]
384036:  BLX             j__ZN24CTaskComplexFleeAnyMeansC2EP7CEntitybfiiifif; CTaskComplexFleeAnyMeans::CTaskComplexFleeAnyMeans(CEntity *,bool,float,int,int,int,float,int,float)
38403A:  B               loc_3840C0
38403C:  MOVS            R0, #dword_48; this
38403E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
384042:  MOV             R1, R9; CPed *
384044:  BLX             j__ZN32CTaskComplexKillPedOnFootStealthC2EP4CPed; CTaskComplexKillPedOnFootStealth::CTaskComplexKillPedOnFootStealth(CPed *)
384048:  B               loc_384282
38404A:  MOVS            R0, #dword_40; this
38404C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
384050:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x38405C)
384052:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x384060)
384056:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x384062)
384058:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
38405A:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x384066)
38405C:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
38405E:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
384060:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
384062:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
384064:  LDR.W           R5, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
384068:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
38406A:  LDR             R6, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
38406C:  VLDR            S0, [R2]
384070:  LDR             R2, [R5]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
384072:  LDR             R3, [R1]; float
384074:  LDR             R1, [R6]; CTaskComplexSmartFleeEntity::ms_iFleeTime
384076:  STRD.W          R1, R2, [SP,#0x40+var_40]; int
38407A:  MOV             R1, R9; CEntity *
38407C:  MOVS            R2, #0; bool
38407E:  VSTR            S0, [SP,#0x40+var_38]
384082:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
384086:  B               loc_3840C0
384088:  MOVS            R0, #off_3C; this
38408A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38408E:  LDR             R2, =(_ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x384098)
384090:  LDR             R6, =(_ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x38409C)
384092:  LDR             R1, =(_ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr - 0x38409E)
384094:  ADD             R2, PC; _ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr
384096:  LDR             R3, =(_ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr - 0x3840A2)
384098:  ADD             R6, PC; _ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr
38409A:  ADD             R1, PC; _ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr
38409C:  LDR             R2, [R2]; CTaskComplexFleeEntity::ms_fEntityPosChangeThreshold ...
38409E:  ADD             R3, PC; _ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr
3840A0:  LDR             R6, [R6]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod ...
3840A2:  LDR             R1, [R1]; CTaskComplexFleeEntity::ms_fSafeDistance ...
3840A4:  LDR             R5, [R3]; CTaskComplexFleeEntity::ms_iFleeTime ...
3840A6:  VLDR            S0, [R2]
3840AA:  LDR             R2, [R6]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod
3840AC:  LDR             R3, [R1]; float
3840AE:  LDR             R1, [R5]; CTaskComplexFleeEntity::ms_iFleeTime
3840B0:  STRD.W          R1, R2, [SP,#0x40+var_40]; int
3840B4:  MOV             R1, R9; CEntity *
3840B6:  MOVS            R2, #0; bool
3840B8:  VSTR            S0, [SP,#0x40+var_38]
3840BC:  BLX             j__ZN22CTaskComplexFleeEntityC2EP7CEntitybfiif; CTaskComplexFleeEntity::CTaskComplexFleeEntity(CEntity *,bool,float,int,int,float)
3840C0:  LDR.W           R1, [R10]
3840C4:  MOVS            R2, #0; unsigned int
3840C6:  STR.W           R0, [R10,#0x24]
3840CA:  MOVS            R0, #0
3840CC:  STRD.W          R0, R0, [SP,#0x40+var_40]; unsigned __int8
3840D0:  MOV.W           R3, #0x3F800000; float
3840D4:  STR             R0, [SP,#0x40+var_38]; unsigned __int8
3840D6:  MOV             R0, R1; this
3840D8:  MOVS            R1, #0xB2; unsigned __int16
3840DA:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
3840DE:  B               loc_384286; jumptable 00383C4C cases 252-257,259,260
3840E0:  LDR.W           R1, [R10]; unsigned int
3840E4:  LDR.W           R0, [R1,#0x490]
3840E8:  TST             R0, R6
3840EA:  BEQ             loc_384154
3840EC:  LDR.W           R0, [R9,#0x59C]
3840F0:  CMP             R0, #6
3840F2:  BNE             loc_384154
3840F4:  MOVS            R0, #dword_54; this
3840F6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3840FA:  LDR             R4, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x384102)
3840FC:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x384108)
3840FE:  ADD             R4, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
384100:  LDR             R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x38410C)
384102:  LDR             R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x384110)
384104:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
384106:  LDR             R5, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x384116)
384108:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
38410A:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x38411A)
38410C:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
38410E:  LDR.W           R12, [R4]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
384112:  ADD             R5, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
384114:  LDR             R4, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x38411E)
384116:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
384118:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
38411A:  ADD             R4, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
38411C:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
38411E:  LDR             R6, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime ...
384120:  LDR             R5, [R5]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime ...
384122:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
384124:  LDR             R4, [R4]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
384126:  VLDR            S2, [R2]
38412A:  LDR             R2, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime
38412C:  LDR             R6, [R5]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime
38412E:  LDR.W           R5, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
384132:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime
384134:  STR             R5, [SP,#0x40+var_30]; int
384136:  VLDR            S0, [R4]
38413A:  LDR             R3, [R3]; float
38413C:  STR             R1, [SP,#0x40+var_40]; int
38413E:  STRD.W          R2, R6, [SP,#0x40+var_3C]; int
384142:  MOV             R1, R9; CEntity *
384144:  MOVS            R2, #1; bool
384146:  VSTR            S0, [SP,#0x40+var_2C]
38414A:  VSTR            S2, [SP,#0x40+var_34]
38414E:  BLX             j__ZN24CTaskComplexFleeAnyMeansC2EP7CEntitybfiiifif; CTaskComplexFleeAnyMeans::CTaskComplexFleeAnyMeans(CEntity *,bool,float,int,int,int,float,int,float)
384152:  B               loc_384282
384154:  MOVS            R0, #dword_40; this
384156:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38415A:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x384164)
38415C:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x384168)
38415E:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x38416A)
384160:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
384162:  LDR             R6, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x38416E)
384164:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
384166:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
384168:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
38416A:  ADD             R6, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
38416C:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
38416E:  LDR             R5, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
384170:  LDR             R6, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
384172:  LDR             R3, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance
384174:  VLDR            S0, [R2]
384178:  LDR             R1, [R5]; CTaskComplexSmartFleeEntity::ms_iFleeTime
38417A:  LDR             R2, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
38417C:  B               loc_384272
38417E:  LDR.W           R1, [R10]; unsigned int
384182:  LDR.W           R2, [R1,#0x490]
384186:  LDR.W           R0, [R1,#0x484]
38418A:  TST             R2, R6
38418C:  BEQ             loc_3841F0
38418E:  LDR.W           R2, [R9,#0x59C]
384192:  CMP             R2, #6
384194:  BNE             loc_3841F0
384196:  MOVS            R0, #dword_54; this
384198:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38419C:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x3841A4)
38419E:  LDR             R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x3841AA)
3841A0:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
3841A2:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x3841B0)
3841A4:  LDR             R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x3841B6)
3841A6:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
3841A8:  LDR.W           R12, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x3841BA)
3841AC:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
3841AE:  LDR.W           R8, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
3841B2:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
3841B4:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3841C0)
3841B6:  ADD             R12, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
3841B8:  LDR.W           LR, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3841C4)
3841BC:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3841BE:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
3841C0:  ADD             LR, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3841C2:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
3841C4:  LDR             R6, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime ...
3841C6:  LDR.W           R12, [R12]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime ...
3841CA:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
3841CC:  LDR.W           LR, [LR]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
3841D0:  VLDR            S2, [R2]
3841D4:  LDR             R2, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime
3841D6:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance
3841D8:  LDR.W           R6, [R12]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime
3841DC:  VLDR            S0, [R1]
3841E0:  LDR.W           R1, [LR]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
3841E4:  LDR.W           R8, [R8]; CTaskComplexSmartFleeEntity::ms_iFleeTime
3841E8:  STR             R1, [SP,#0x40+var_30]
3841EA:  STR.W           R8, [SP,#0x40+var_40]
3841EE:  B               loc_38413E
3841F0:  LSLS            R0, R0, #0x17
3841F2:  BPL             loc_38422A
3841F4:  LDR.W           R0, [R1,#0x590]; this
3841F8:  CBZ             R0, loc_38422A
3841FA:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
3841FE:  CMP             R0, #1
384200:  BNE             loc_38422A
384202:  MOVS            R0, #word_2C; this
384204:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
384208:  LDR.W           R1, [R10]
38420C:  MOVS            R2, #0x42200000
384212:  MOVS            R3, #2
384214:  LDR.W           R1, [R1,#0x590]; CVehicle *
384218:  STRD.W          R3, R2, [SP,#0x40+var_40]; int
38421C:  MOVS            R2, #0; CEntity *
38421E:  MOVS            R3, #1; int
384220:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
384224:  LDR             R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x38422A)
384226:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
384228:  B               loc_383F0E
38422A:  MOVS            R0, #dword_40; this
38422C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
384230:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x38423A)
384232:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x384240)
384234:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x384242)
384236:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
384238:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x384244)
38423C:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
38423E:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
384240:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
384242:  B               loc_38425C
384244:  MOVS            R0, #dword_40; this
384246:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38424A:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x384254)
38424C:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x38425A)
38424E:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x38425C)
384250:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
384252:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x38425E)
384256:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
384258:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
38425A:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
38425C:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
38425E:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
384260:  LDR             R6, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
384262:  LDR.W           R12, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
384266:  LDR             R3, [R1]; float
384268:  VLDR            S0, [R2]
38426C:  LDR             R1, [R6]; CTaskComplexSmartFleeEntity::ms_iFleeTime
38426E:  LDR.W           R2, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
384272:  STRD.W          R1, R2, [SP,#0x40+var_40]; int
384276:  MOV             R1, R9; CEntity *
384278:  MOVS            R2, #0; bool
38427A:  VSTR            S0, [SP,#0x40+var_38]
38427E:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
384282:  STR.W           R0, [R10,#0x24]
384286:  ADD             SP, SP, #0x28 ; '('; jumptable 00383C4C cases 252-257,259,260
384288:  POP.W           {R8-R10}
38428C:  POP             {R4-R7,PC}
