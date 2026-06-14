; =========================================================
; Game Engine Function: _ZN26CTaskComplexUseMobilePhone18CreateFirstSubTaskEP4CPed
; Address            : 0x4F0FB0 - 0x4F108E
; =========================================================

4F0FB0:  PUSH            {R4-R7,LR}
4F0FB2:  ADD             R7, SP, #0xC
4F0FB4:  PUSH.W          {R11}
4F0FB8:  SUB             SP, SP, #0x30
4F0FBA:  MOV             R4, R1
4F0FBC:  LDR.W           R0, [R4,#0x48C]
4F0FC0:  LDR.W           R1, [R4,#0x490]
4F0FC4:  ORR.W           R0, R0, #0x400000
4F0FC8:  STR.W           R0, [R4,#0x48C]
4F0FCC:  MOV             R0, R4; this
4F0FCE:  ORR.W           R1, R1, #2
4F0FD2:  STR.W           R1, [R4,#0x490]
4F0FD6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F0FDA:  CMP             R0, #1
4F0FDC:  ITT EQ
4F0FDE:  MOVEQ           R0, R4; this
4F0FE0:  BLXEQ           j__ZN10CPlayerPed17ClearWeaponTargetEv; CPlayerPed::ClearWeaponTarget(void)
4F0FE4:  LDR.W           R0, [R4,#0x710]
4F0FE8:  CMP             R0, #0x37 ; '7'
4F0FEA:  BNE             loc_4F1008
4F0FEC:  LDRSB.W         R0, [R4,#0x71C]
4F0FF0:  MOVS            R1, #0
4F0FF2:  RSB.W           R0, R0, R0,LSL#3
4F0FF6:  ADD.W           R0, R4, R0,LSL#2
4F0FFA:  LDR.W           R0, [R0,#0x5A4]
4F0FFE:  STR.W           R0, [R4,#0x710]
4F1002:  MOV             R0, R4
4F1004:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
4F1008:  LDR.W           R0, [R4,#0x444]
4F100C:  CMP             R0, #0
4F100E:  ITT NE
4F1010:  MOVNE           R1, #1
4F1012:  STRBNE.W        R1, [R0,#0x85]
4F1016:  MOV             R0, R4; this
4F1018:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F101C:  CMP             R0, #1
4F101E:  BNE             loc_4F102A
4F1020:  LDR             R0, =(TheCamera_ptr - 0x4F1026)
4F1022:  ADD             R0, PC; TheCamera_ptr
4F1024:  LDR             R0, [R0]; TheCamera ; this
4F1026:  BLX             j__ZN7CCamera21ClearPlayerWeaponModeEv; CCamera::ClearPlayerWeaponMode(void)
4F102A:  ADD             R5, SP, #0x40+var_30
4F102C:  MOV             R0, R5; this
4F102E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F1032:  LDR             R0, =(_ZTV21CTaskSimpleStandStill_ptr - 0x4F1042)
4F1034:  MOVS            R6, #0
4F1036:  MOV.W           R1, #0x41000000
4F103A:  STRH.W          R6, [SP,#0x40+var_18]
4F103E:  ADD             R0, PC; _ZTV21CTaskSimpleStandStill_ptr
4F1040:  STR.W           R6, [SP,#0x40+var_1E]
4F1044:  STR.W           R6, [SP,#0x40+var_22]
4F1048:  LDR             R0, [R0]; `vtable for'CTaskSimpleStandStill ...
4F104A:  STR             R1, [SP,#0x40+var_14]
4F104C:  MOV             R1, R4; CPed *
4F104E:  ADDS            R0, #8
4F1050:  STRD.W          R6, R6, [SP,#0x40+var_28]
4F1054:  STR             R0, [SP,#0x40+var_30]
4F1056:  MOV             R0, R5; this
4F1058:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
4F105C:  MOVS            R0, #dword_20; this
4F105E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F1062:  MOV             R4, R0
4F1064:  ADR             R0, aPhonein; "PhoneIn"
4F1066:  MOVW            R1, #0x642
4F106A:  MOVS            R2, #0x91
4F106C:  STRD.W          R1, R0, [SP,#0x40+var_40]
4F1070:  MOV             R0, R4
4F1072:  MOVS            R1, #0
4F1074:  MOV.W           R3, #0x40800000
4F1078:  STR             R6, [SP,#0x40+var_38]
4F107A:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4F107E:  MOV             R0, R5; this
4F1080:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4F1084:  MOV             R0, R4
4F1086:  ADD             SP, SP, #0x30 ; '0'
4F1088:  POP.W           {R11}
4F108C:  POP             {R4-R7,PC}
