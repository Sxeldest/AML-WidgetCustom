; =========================================================
; Game Engine Function: _ZN35CTaskComplexFollowLeaderInFormation14ControlSubTaskEP4CPed
; Address            : 0x544E20 - 0x54522C
; =========================================================

544E20:  PUSH            {R4-R7,LR}
544E22:  ADD             R7, SP, #0xC
544E24:  PUSH.W          {R8-R10}
544E28:  SUB             SP, SP, #0x28
544E2A:  MOV             R5, R0
544E2C:  MOV             R10, R1
544E2E:  LDR             R0, [R5,#0x10]
544E30:  CBZ             R0, loc_544E8E
544E32:  LDR             R4, [R5,#8]
544E34:  LDR             R0, [R4]
544E36:  LDR             R1, [R0,#0x14]
544E38:  MOV             R0, R4
544E3A:  BLX             R1
544E3C:  MOVW            R1, #0x2C5
544E40:  CMP             R0, R1
544E42:  BEQ             loc_544E90
544E44:  LDR             R0, [R5,#0x10]
544E46:  LDRB.W          R1, [R0,#0x485]
544E4A:  LSLS            R1, R1, #0x1F
544E4C:  ITT NE
544E4E:  LDRNE.W         R0, [R0,#0x590]
544E52:  CMPNE           R0, #0
544E54:  BNE             loc_544E9A
544E56:  LDR             R0, [R5,#8]
544E58:  LDR             R1, [R0]
544E5A:  LDR             R1, [R1,#0x14]
544E5C:  BLX             R1
544E5E:  MOV             R1, R0
544E60:  LDR             R0, [R5,#8]
544E62:  CMP.W           R1, #0x2BC
544E66:  BNE.W           loc_544FAE
544E6A:  LDR             R1, [R0]
544E6C:  MOVS            R2, #0
544E6E:  MOVS            R3, #0
544E70:  LDR             R6, [R1,#0x1C]
544E72:  MOV             R1, R10
544E74:  BLX             R6
544E76:  CMP             R0, #1
544E78:  BNE             loc_544E90
544E7A:  LDR             R0, [R5]
544E7C:  MOV             R1, R10
544E7E:  LDR             R2, [R0,#0x2C]
544E80:  MOV             R0, R5
544E82:  ADD             SP, SP, #0x28 ; '('
544E84:  POP.W           {R8-R10}
544E88:  POP.W           {R4-R7,LR}
544E8C:  BX              R2
544E8E:  MOVS            R4, #0
544E90:  MOV             R0, R4
544E92:  ADD             SP, SP, #0x28 ; '('
544E94:  POP.W           {R8-R10}
544E98:  POP             {R4-R7,PC}
544E9A:  LDR             R0, [R5,#8]
544E9C:  LDR             R1, [R0]
544E9E:  LDR             R1, [R1,#0x14]
544EA0:  BLX             R1
544EA2:  MOVW            R1, #0x38B
544EA6:  CMP             R0, R1
544EA8:  BNE.W           loc_5450B6
544EAC:  LDR             R1, [R5,#0x10]
544EAE:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x544EBA)
544EB0:  LDR             R0, [R5,#8]
544EB2:  LDR.W           R1, [R1,#0x590]
544EB6:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
544EB8:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
544EBA:  LDRSH.W         R1, [R1,#0x26]
544EBE:  VLDR            S2, [R0,#0x18]
544EC2:  LDR.W           R1, [R2,R1,LSL#2]
544EC6:  LDR             R1, [R1,#0x2C]
544EC8:  VLDR            S0, [R1,#0x24]
544ECC:  VCMP.F32        S2, S0
544ED0:  VMRS            APSR_nzcv, FPSCR
544ED4:  BEQ             loc_544EEE
544ED6:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x544EE2)
544ED8:  MOVS            R2, #1
544EDA:  VSTR            S0, [R0,#0x18]
544EDE:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
544EE0:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
544EE2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
544EE4:  STRB.W          R2, [R0,#0x30]
544EE8:  MOVS            R2, #0
544EEA:  STRD.W          R1, R2, [R0,#0x28]
544EEE:  VLDR            S0, [R5,#0x24]
544EF2:  VCMPE.F32       S0, #0.0
544EF6:  VMRS            APSR_nzcv, FPSCR
544EFA:  BLE             loc_544E90
544EFC:  LDR             R0, [R5,#0x10]
544EFE:  VMUL.F32        S0, S0, S0
544F02:  LDR.W           R1, [R10,#0x14]
544F06:  LDR             R2, [R0,#0x14]
544F08:  ADD.W           R3, R1, #0x30 ; '0'
544F0C:  CMP             R1, #0
544F0E:  IT EQ
544F10:  ADDEQ.W         R3, R10, #4
544F14:  ADD.W           R1, R2, #0x30 ; '0'
544F18:  CMP             R2, #0
544F1A:  VLDR            S2, [R3]
544F1E:  IT EQ
544F20:  ADDEQ           R1, R0, #4
544F22:  VLDR            D16, [R3,#4]
544F26:  VLDR            S4, [R1]
544F2A:  VLDR            D17, [R1,#4]
544F2E:  VSUB.F32        S2, S2, S4
544F32:  VSUB.F32        D16, D16, D17
544F36:  VMUL.F32        D2, D16, D16
544F3A:  VMUL.F32        S2, S2, S2
544F3E:  VADD.F32        S2, S2, S4
544F42:  VADD.F32        S2, S2, S5
544F46:  VCMPE.F32       S2, S0
544F4A:  VMRS            APSR_nzcv, FPSCR
544F4E:  BLE             loc_544E90
544F50:  LDR             R0, [R5,#8]
544F52:  MOVS            R2, #0
544F54:  MOVS            R3, #0
544F56:  MOV.W           R9, #0
544F5A:  LDR             R1, [R0]
544F5C:  LDR             R5, [R1,#0x1C]
544F5E:  MOV             R1, R10
544F60:  BLX             R5
544F62:  CMP             R0, #1
544F64:  BNE             loc_544E90
544F66:  ADD.W           R8, SP, #0x40+var_38
544F6A:  MOV.W           R0, #0x41000000
544F6E:  STR             R0, [SP,#0x40+var_40]; float
544F70:  MOVS            R1, #0; int
544F72:  MOV             R0, R8; this
544F74:  MOVS            R2, #0; bool
544F76:  MOVS            R3, #0; bool
544F78:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
544F7C:  MOV             R1, R10; CPed *
544F7E:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
544F82:  MOVS            R0, #off_18; this
544F84:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
544F88:  MOV             R4, R0
544F8A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
544F8E:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x544F9C)
544F90:  MOV.W           R1, #0x7D0
544F94:  STRH.W          R9, [R4,#0x10]
544F98:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
544F9A:  STR             R1, [R4,#0x14]
544F9C:  STRD.W          R9, R9, [R4,#8]
544FA0:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
544FA2:  ADDS            R0, #8
544FA4:  STR             R0, [R4]
544FA6:  MOV             R0, R8; this
544FA8:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
544FAC:  B               loc_544E90
544FAE:  LDR             R1, [R0]
544FB0:  LDR             R1, [R1,#0x14]
544FB2:  BLX             R1
544FB4:  CMP             R0, #0xCA
544FB6:  BEQ             loc_544FC6
544FB8:  LDR             R0, [R5,#8]
544FBA:  LDR             R1, [R0]
544FBC:  LDR             R1, [R1,#0x14]
544FBE:  BLX             R1
544FC0:  CMP             R0, #0xCB
544FC2:  BNE.W           loc_544E90
544FC6:  LDR             R0, [R5,#0x10]
544FC8:  LDR.W           R1, [R10,#0x14]
544FCC:  LDR             R2, [R0,#0x14]
544FCE:  ADD.W           R3, R1, #0x30 ; '0'
544FD2:  CMP             R1, #0
544FD4:  IT EQ
544FD6:  ADDEQ.W         R3, R10, #4
544FDA:  ADD.W           R1, R2, #0x30 ; '0'
544FDE:  CMP             R2, #0
544FE0:  VLDR            S0, [R3]
544FE4:  IT EQ
544FE6:  ADDEQ           R1, R0, #4; unsigned int
544FE8:  VLDR            D16, [R3,#4]
544FEC:  VLDR            S2, [R1]
544FF0:  VLDR            D17, [R1,#4]
544FF4:  VSUB.F32        S0, S0, S2
544FF8:  VLDR            S4, [R5,#0x24]
544FFC:  VSUB.F32        D16, D16, D17
545000:  VMUL.F32        S4, S4, S4
545004:  VMUL.F32        D1, D16, D16
545008:  VMUL.F32        S0, S0, S0
54500C:  VADD.F32        S0, S0, S2
545010:  VADD.F32        S0, S0, S3
545014:  VCMPE.F32       S0, S4
545018:  VMRS            APSR_nzcv, FPSCR
54501C:  BGE.W           loc_544E90
545020:  MOVS            R0, #dword_58; this
545022:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
545026:  MOV             R4, R0
545028:  LDR.W           R8, [R5,#0x10]
54502C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
545030:  ADR             R2, dword_545230
545032:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x545046)
545034:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x545048)
545036:  MOV.W           R3, #0x3E8
54503A:  VLD1.64         {D16-D17}, [R2@128]
54503E:  ADD.W           R2, R4, #0x18
545042:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
545044:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
545046:  VST1.32         {D16-D17}, [R2]
54504A:  MOVW            R2, #0xC350
54504E:  MOV             R6, R4
545050:  CMP.W           R8, #0
545054:  STRD.W          R2, R3, [R4,#0x10]
545058:  MOV.W           R2, #0
54505C:  MOV.W           R3, #6
545060:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorXYOffset ...
545062:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset> ...
545064:  STRH            R2, [R4,#0x30]
545066:  ADD.W           R0, R0, #8
54506A:  STRH            R2, [R4,#0x3C]
54506C:  ADD.W           R1, R1, #8
545070:  STRD.W          R2, R2, [R4,#0x28]
545074:  STRD.W          R2, R2, [R4,#0x34]
545078:  STRD.W          R2, R2, [R4,#0x48]
54507C:  STR             R3, [R4,#0x50]
54507E:  LDRB.W          R3, [R4,#0x54]
545082:  STR             R1, [R4]
545084:  MOV             R1, R4
545086:  STR             R0, [R4,#0x40]
545088:  AND.W           R0, R3, #0xF0
54508C:  ORR.W           R0, R0, #2
545090:  STRB.W          R0, [R4,#0x54]
545094:  STR.W           R2, [R6,#0x44]!
545098:  STR.W           R8, [R1,#0xC]!; CEntity **
54509C:  BEQ             loc_5450A4
54509E:  MOV             R0, R8; this
5450A0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5450A4:  VLDR            D16, [R5,#0x14]
5450A8:  LDR             R0, [R5,#0x1C]
5450AA:  STR             R0, [R6,#8]
5450AC:  MOVS            R0, #7
5450AE:  VSTR            D16, [R6]
5450B2:  STR             R0, [R4,#0x50]
5450B4:  B               loc_544E90
5450B6:  LDR             R0, [R5,#8]
5450B8:  LDR             R1, [R0]
5450BA:  LDR             R1, [R1,#0x14]
5450BC:  BLX             R1
5450BE:  CMP             R0, #0xCB
5450C0:  BNE.W           loc_544E90
5450C4:  MOV             R0, R10; this
5450C6:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
5450CA:  CMP             R0, #0
5450CC:  BNE.W           loc_544E90
5450D0:  LDR             R0, [R5,#0x10]
5450D2:  LDR.W           R1, [R10,#0x14]
5450D6:  LDR             R2, [R0,#0x14]
5450D8:  ADD.W           R3, R1, #0x30 ; '0'
5450DC:  CMP             R1, #0
5450DE:  IT EQ
5450E0:  ADDEQ.W         R3, R10, #4
5450E4:  ADD.W           R1, R2, #0x30 ; '0'
5450E8:  CMP             R2, #0
5450EA:  VLDR            S0, [R3]
5450EE:  IT EQ
5450F0:  ADDEQ           R1, R0, #4
5450F2:  VLDR            D16, [R3,#4]
5450F6:  VLDR            S2, [R1]
5450FA:  VLDR            D17, [R1,#4]
5450FE:  VSUB.F32        S0, S0, S2
545102:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x545110)
545104:  VSUB.F32        D16, D16, D17
545108:  LDR.W           R0, [R0,#0x590]
54510C:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
54510E:  LDR             R1, [R2]; CModelInfo::ms_modelInfoPtrs ...
545110:  LDRSH.W         R2, [R0,#0x26]
545114:  VMUL.F32        D1, D16, D16
545118:  VMUL.F32        S0, S0, S0
54511C:  LDR.W           R1, [R1,R2,LSL#2]
545120:  LDR             R1, [R1,#0x2C]
545122:  VADD.F32        S0, S0, S2
545126:  VLDR            S4, [R1,#0x24]
54512A:  VMUL.F32        S4, S4, S4
54512E:  VADD.F32        S0, S0, S3
545132:  VCMPE.F32       S0, S4
545136:  VMRS            APSR_nzcv, FPSCR
54513A:  BGE             loc_54517A
54513C:  LDRB.W          R1, [R0,#0x488]
545140:  LDRB.W          R0, [R0,#0x48C]
545144:  CMP             R1, R0
545146:  BCS.W           loc_544E90
54514A:  LDR             R0, [R5,#8]
54514C:  MOVS            R2, #0
54514E:  MOVS            R3, #0
545150:  LDR             R1, [R0]
545152:  LDR.W           R12, [R1,#0x1C]
545156:  MOV             R1, R10
545158:  BLX             R12
54515A:  CMP             R0, #1
54515C:  BNE.W           loc_544E90
545160:  MOVS            R0, #dword_50; this
545162:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
545166:  MOV             R4, R0
545168:  LDR             R0, [R5,#0x10]
54516A:  MOVS            R2, #0; int
54516C:  MOVS            R3, #0; bool
54516E:  LDR.W           R1, [R0,#0x590]; CVehicle *
545172:  MOV             R0, R4; this
545174:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
545178:  B               loc_544E90
54517A:  VLDR            S2, [R5,#0x24]
54517E:  VMUL.F32        S2, S2, S2
545182:  VCMPE.F32       S0, S2
545186:  VMRS            APSR_nzcv, FPSCR
54518A:  BGE.W           loc_544E90
54518E:  LDR             R0, [R5,#8]
545190:  MOVS            R2, #0
545192:  MOVS            R3, #0
545194:  MOV.W           R8, #0
545198:  LDR             R1, [R0]
54519A:  LDR.W           R12, [R1,#0x1C]
54519E:  MOV             R1, R10
5451A0:  BLX             R12
5451A2:  CMP             R0, #1
5451A4:  BNE.W           loc_544E90
5451A8:  MOVS            R0, #dword_58; this
5451AA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5451AE:  MOV             R4, R0
5451B0:  LDR.W           R9, [R5,#0x10]
5451B4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5451B8:  ADR             R2, dword_545230
5451BA:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x5451CE)
5451BC:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x5451D0)
5451BE:  MOV.W           R3, #0x3E8
5451C2:  VLD1.64         {D16-D17}, [R2@128]
5451C6:  ADD.W           R2, R4, #0x18
5451CA:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
5451CC:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
5451CE:  VST1.32         {D16-D17}, [R2]
5451D2:  MOVW            R2, #0xC350
5451D6:  MOV             R6, R4
5451D8:  CMP.W           R9, #0
5451DC:  STRD.W          R2, R3, [R4,#0x10]
5451E0:  MOV.W           R2, #6
5451E4:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorXYOffset ...
5451E6:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset> ...
5451E8:  STRH.W          R8, [R4,#0x30]
5451EC:  ADD.W           R0, R0, #8
5451F0:  STRH.W          R8, [R4,#0x3C]
5451F4:  ADD.W           R1, R1, #8
5451F8:  STRD.W          R8, R8, [R4,#0x28]
5451FC:  STRD.W          R8, R8, [R4,#0x34]
545200:  STRD.W          R8, R8, [R4,#0x48]
545204:  STR             R2, [R4,#0x50]
545206:  LDRB.W          R2, [R4,#0x54]
54520A:  STR             R1, [R4]
54520C:  MOV             R1, R4
54520E:  STR             R0, [R4,#0x40]
545210:  AND.W           R0, R2, #0xF0
545214:  ORR.W           R0, R0, #2
545218:  STRB.W          R0, [R4,#0x54]
54521C:  STR.W           R8, [R6,#0x44]!
545220:  STR.W           R9, [R1,#0xC]!
545224:  BEQ.W           loc_5450A4
545228:  MOV             R0, R9
54522A:  B               loc_5450A0
