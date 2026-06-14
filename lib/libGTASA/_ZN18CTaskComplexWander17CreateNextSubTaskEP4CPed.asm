; =========================================================
; Game Engine Function: _ZN18CTaskComplexWander17CreateNextSubTaskEP4CPed
; Address            : 0x520F0C - 0x5212F0
; =========================================================

520F0C:  PUSH            {R4-R7,LR}
520F0E:  ADD             R7, SP, #0xC
520F10:  PUSH.W          {R8-R11}
520F14:  SUB             SP, SP, #4
520F16:  VPUSH           {D8}
520F1A:  SUB             SP, SP, #0x20
520F1C:  MOV             R4, R0
520F1E:  MOV             R10, R1
520F20:  LDR             R0, [R4,#8]
520F22:  LDR             R1, [R0]
520F24:  LDR             R1, [R1,#0x14]
520F26:  BLX             R1
520F28:  MOVS            R6, #0
520F2A:  MOVW            R8, #0xFFFF
520F2E:  CMP.W           R0, #0x1A4
520F32:  BLE             loc_520F80
520F34:  MOVW            R1, #0x2CE
520F38:  CMP             R0, R1
520F3A:  BGT             loc_520F92
520F3C:  MOVW            R1, #0x1A5; unsigned int
520F40:  CMP             R0, R1
520F42:  BEQ             loc_52103A
520F44:  CMP.W           R0, #0x2C0
520F48:  BNE.W           loc_521160
520F4C:  LDRB.W          R0, [R10,#0x485]
520F50:  LSLS            R0, R0, #0x1F
520F52:  BEQ             loc_521020
520F54:  MOVS            R0, #dword_70; this
520F56:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520F5A:  LDR.W           R1, [R10,#0x590]; CVehicle *
520F5E:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
520F60:  MOVS            R3, #0; bool
520F62:  MOV             R6, R0
520F64:  MOVS            R4, #0
520F66:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
520F6A:  LDR.W           R0, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x520F78)
520F6E:  MOV.W           R1, #0x7D0
520F72:  STR             R1, [R6,#0x60]
520F74:  ADD             R0, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
520F76:  STRH.W          R4, [R6,#0x6C]
520F7A:  STRD.W          R4, R4, [R6,#0x64]
520F7E:  B               loc_52115A
520F80:  CMP             R0, #0xE1
520F82:  BEQ.W           loc_521096
520F86:  CMP             R0, #0xE3
520F88:  BEQ.W           loc_5210CA
520F8C:  CMP             R0, #0xF4
520F8E:  BEQ             loc_520FA2
520F90:  B               loc_521160
520F92:  MOVW            R1, #0x2CF; unsigned int
520F96:  CMP             R0, R1
520F98:  BEQ             loc_521020
520F9A:  CMP.W           R0, #0x384
520F9E:  BNE.W           loc_521160
520FA2:  LDRB.W          R0, [R4,#0x24]
520FA6:  TST.W           R0, #8
520FAA:  BNE.W           loc_521128
520FAE:  LDR             R0, [R4]
520FB0:  MOV             R1, R10
520FB2:  LDR             R2, [R0,#0x3C]
520FB4:  MOV             R0, R4
520FB6:  BLX             R2
520FB8:  MOV             R11, R4
520FBA:  MOV             R9, R4
520FBC:  LDR.W           R0, [R11],#0x1C
520FC0:  MOV             R1, R4
520FC2:  LDR.W           R5, [R9,#0x18]!
520FC6:  LDRB.W          R2, [R1,#0x10]!
520FCA:  LDR             R6, [R0,#0x40]
520FCC:  MOV             R0, R4
520FCE:  STRD.W          R11, R1, [SP,#0x48+var_48]
520FD2:  MOV             R1, R10
520FD4:  MOV             R3, R9
520FD6:  BLX             R6
520FD8:  LDRH.W          R0, [R11]
520FDC:  UXTH            R1, R5
520FDE:  CMP             R0, R1
520FE0:  ITT EQ
520FE2:  LDRHEQ          R1, [R4,#0x1E]; unsigned int
520FE4:  CMPEQ.W         R1, R5,LSR#16
520FE8:  BEQ.W           loc_5211B2
520FEC:  CMP             R0, R8
520FEE:  BEQ             loc_521006
520FF0:  LDRH            R1, [R4,#0x18]
520FF2:  CMP             R1, R8
520FF4:  BEQ             loc_521006
520FF6:  CMP             R0, R1
520FF8:  BNE.W           loc_5212A8
520FFC:  LDRH            R0, [R4,#0x1A]
520FFE:  LDRH            R1, [R4,#0x1E]
521000:  CMP             R1, R0
521002:  BNE.W           loc_5212A8
521006:  MOVW            R2, #0x1A5; int
52100A:  MOV             R0, R4; this
52100C:  MOV             R1, R10; CPed *
52100E:  ADD             SP, SP, #0x20 ; ' '
521010:  VPOP            {D8}
521014:  ADD             SP, SP, #4
521016:  POP.W           {R8-R11}
52101A:  POP.W           {R4-R7,LR}
52101E:  B               _ZN18CTaskComplexWander13CreateSubTaskEPK4CPedi; CTaskComplexWander::CreateSubTask(CPed const*,int)
521020:  LDR             R0, [R4]
521022:  MOV             R1, R10
521024:  LDR             R2, [R0,#0x2C]
521026:  MOV             R0, R4
521028:  ADD             SP, SP, #0x20 ; ' '
52102A:  VPOP            {D8}
52102E:  ADD             SP, SP, #4
521030:  POP.W           {R8-R11}
521034:  POP.W           {R4-R7,LR}
521038:  BX              R2
52103A:  MOV             R5, R4
52103C:  MOV             R1, R4
52103E:  LDRB.W          R2, [R1,#0x10]!
521042:  ADD.W           R3, R4, #0x18
521046:  LDR.W           R0, [R5],#0x1C
52104A:  ADDS            R2, #1
52104C:  STRB            R2, [R1]
52104E:  LDR             R6, [R0,#0x40]
521050:  UXTB            R2, R2
521052:  STRD.W          R5, R1, [SP,#0x48+var_48]
521056:  MOV             R0, R4
521058:  MOV             R1, R10
52105A:  BLX             R6
52105C:  LDRH            R0, [R5]
52105E:  CMP             R0, R8
521060:  ITT NE
521062:  LDRHNE          R1, [R4,#0x18]; unsigned int
521064:  CMPNE           R1, R8
521066:  BNE.W           loc_521170
52106A:  MOVS            R0, #dword_20; this
52106C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
521070:  MOV             R6, R0
521072:  LDR             R0, =(aScratchhead - 0x52107E); "ScratchHead"
521074:  MOVS            R1, #0
521076:  MOVW            R2, #0x1A5
52107A:  ADD             R0, PC; "ScratchHead"
52107C:  MOV.W           R3, #0x40800000
521080:  STRD.W          R2, R0, [SP,#0x48+var_48]
521084:  MOV             R0, R6
521086:  STR             R1, [SP,#0x48+var_40]
521088:  MOVS            R1, #0
52108A:  MOVS            R2, #0x87
52108C:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
521090:  LDR             R0, =(_ZTV22CTaskSimpleScratchHead_ptr - 0x521096)
521092:  ADD             R0, PC; _ZTV22CTaskSimpleScratchHead_ptr
521094:  B               loc_52115A
521096:  LDR             R0, =(ThePaths_ptr - 0x5210A0)
521098:  LDRH.W          R3, [R10,#0x24]
52109C:  ADD             R0, PC; ThePaths_ptr
52109E:  LDR             R2, [R4,#0x1C]
5210A0:  LDR             R1, [R0]; ThePaths
5210A2:  ADD             R0, SP, #0x48+var_38
5210A4:  BLX             j__ZN9CPathFind32TakeWidthIntoAccountForWanderingE12CNodeAddresst; CPathFind::TakeWidthIntoAccountForWandering(CNodeAddress,ushort)
5210A8:  MOVS            R0, #word_2C; this
5210AA:  LDRD.W          R9, R8, [SP,#0x48+var_38]
5210AE:  VLDR            S16, [SP,#0x48+var_30]
5210B2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5210B6:  LDR             R5, [R4,#0xC]
5210B8:  MOV             R6, R0
5210BA:  LDR             R4, [R4,#0x14]
5210BC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5210C0:  LDR             R0, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x5210CA)
5210C2:  VMOV.F32        S0, #1.0
5210C6:  ADD             R0, PC; _ZTV20CTaskSimpleGoToPoint_ptr
5210C8:  B               loc_5210FC
5210CA:  LDR             R0, =(ThePaths_ptr - 0x5210D4)
5210CC:  LDRH.W          R3, [R10,#0x24]
5210D0:  ADD             R0, PC; ThePaths_ptr
5210D2:  LDR             R2, [R4,#0x1C]
5210D4:  LDR             R1, [R0]; ThePaths
5210D6:  ADD             R0, SP, #0x48+var_38
5210D8:  BLX             j__ZN9CPathFind32TakeWidthIntoAccountForWanderingE12CNodeAddresst; CPathFind::TakeWidthIntoAccountForWandering(CNodeAddress,ushort)
5210DC:  MOVS            R0, #word_2C; this
5210DE:  LDRD.W          R9, R8, [SP,#0x48+var_38]
5210E2:  VLDR            S16, [SP,#0x48+var_30]
5210E6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5210EA:  LDR             R5, [R4,#0xC]
5210EC:  MOV             R6, R0
5210EE:  LDR             R4, [R4,#0x14]
5210F0:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5210F4:  VMOV.F32        S0, #1.0
5210F8:  LDR             R0, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x5210FE)
5210FA:  ADD             R0, PC; _ZTV20CTaskSimpleGoToPoint_ptr
5210FC:  VADD.F32        S0, S16, S0
521100:  LDR             R0, [R0]; `vtable for'CTaskSimpleGoToPoint ...
521102:  LDRB            R1, [R6,#0x1C]
521104:  LDRB            R2, [R6,#0x1D]
521106:  ADDS            R0, #8
521108:  STR             R5, [R6,#8]
52110A:  STR.W           R9, [R6,#0xC]
52110E:  STR.W           R8, [R6,#0x10]
521112:  STR             R4, [R6,#0x18]
521114:  STR             R0, [R6]
521116:  AND.W           R0, R1, #0xC0
52111A:  VSTR            S0, [R6,#0x14]
52111E:  STRB            R0, [R6,#0x1C]
521120:  AND.W           R0, R2, #0xE0
521124:  STRB            R0, [R6,#0x1D]
521126:  B               loc_521160
521128:  AND.W           R0, R0, #0xF7
52112C:  STRB.W          R0, [R4,#0x24]
521130:  MOVS            R0, #dword_20; this
521132:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
521136:  MOV             R6, R0
521138:  LDR             R0, =(aScratchhead - 0x521144); "ScratchHead"
52113A:  MOVS            R1, #0
52113C:  MOVW            R2, #0x1A5
521140:  ADD             R0, PC; "ScratchHead"
521142:  MOV.W           R3, #0x40800000
521146:  STRD.W          R2, R0, [SP,#0x48+var_48]
52114A:  MOV             R0, R6
52114C:  STR             R1, [SP,#0x48+var_40]
52114E:  MOVS            R1, #0
521150:  MOVS            R2, #0x87
521152:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
521156:  LDR             R0, =(_ZTV22CTaskSimpleScratchHead_ptr - 0x52115C)
521158:  ADD             R0, PC; _ZTV22CTaskSimpleScratchHead_ptr
52115A:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDriveTimed
52115C:  ADDS            R0, #8
52115E:  STR             R0, [R6]
521160:  MOV             R0, R6
521162:  ADD             SP, SP, #0x20 ; ' '
521164:  VPOP            {D8}
521168:  ADD             SP, SP, #4
52116A:  POP.W           {R8-R11}
52116E:  POP             {R4-R7,PC}
521170:  CMP             R0, R1
521172:  BNE             loc_52117E
521174:  LDRH            R0, [R4,#0x1A]
521176:  LDRH            R1, [R4,#0x1E]
521178:  CMP             R1, R0
52117A:  BEQ.W           loc_52106A
52117E:  LDR             R0, =(ThePaths_ptr - 0x521188)
521180:  LDRH.W          R3, [R10,#0x24]
521184:  ADD             R0, PC; ThePaths_ptr
521186:  LDR             R2, [R4,#0x1C]
521188:  LDR             R1, [R0]; ThePaths
52118A:  ADD             R0, SP, #0x48+var_38
52118C:  BLX             j__ZN9CPathFind32TakeWidthIntoAccountForWanderingE12CNodeAddresst; CPathFind::TakeWidthIntoAccountForWandering(CNodeAddress,ushort)
521190:  MOVS            R0, #word_2C; this
521192:  LDRD.W          R9, R8, [SP,#0x48+var_38]
521196:  VLDR            S16, [SP,#0x48+var_30]
52119A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52119E:  LDR             R5, [R4,#0xC]
5211A0:  MOV             R6, R0
5211A2:  LDR             R4, [R4,#0x14]
5211A4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5211A8:  LDR             R0, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x5211B2)
5211AA:  VMOV.F32        S0, #1.0
5211AE:  ADD             R0, PC; _ZTV20CTaskSimpleGoToPoint_ptr
5211B0:  B               loc_5210FC
5211B2:  MOVS            R0, #dword_40; this
5211B4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5211B8:  MOV             R6, R0
5211BA:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
5211BE:  MOVS            R0, #dword_20; this
5211C0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5211C4:  MOV             R8, R0
5211C6:  MOV.W           R0, #0x41000000
5211CA:  STR             R0, [SP,#0x48+var_48]; float
5211CC:  MOV             R0, R8; this
5211CE:  MOV.W           R1, #0x1F4; int
5211D2:  MOVS            R2, #0; bool
5211D4:  MOVS            R3, #0; bool
5211D6:  MOV.W           R9, #0
5211DA:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5211DE:  MOV             R0, R6; this
5211E0:  MOV             R1, R8; CTask *
5211E2:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
5211E6:  MOVS            R0, #dword_20; this
5211E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5211EC:  LDR.W           R1, [R10,#0x4E0]
5211F0:  MOVS            R2, #4
5211F2:  MOV.W           R3, #0x40800000
5211F6:  MOV             R8, R0
5211F8:  STR.W           R9, [SP,#0x48+var_48]
5211FC:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
521200:  MOV             R0, R6; this
521202:  MOV             R1, R8; CTask *
521204:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
521208:  MOVS            R0, #dword_20; this
52120A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52120E:  MOV             R8, R0
521210:  LDR             R0, =(aScratchhead - 0x52121C); "ScratchHead"
521212:  MOVW            R1, #0x1A5
521216:  MOVS            R2, #0x87
521218:  ADD             R0, PC; "ScratchHead"
52121A:  MOV.W           R3, #0x40800000
52121E:  STRD.W          R1, R0, [SP,#0x48+var_48]
521222:  MOV             R0, R8
521224:  MOVS            R1, #0
521226:  STR.W           R9, [SP,#0x48+var_40]
52122A:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
52122E:  LDR             R0, =(_ZTV22CTaskSimpleScratchHead_ptr - 0x521236)
521230:  MOV             R1, R8; CTask *
521232:  ADD             R0, PC; _ZTV22CTaskSimpleScratchHead_ptr
521234:  LDR             R0, [R0]; `vtable for'CTaskSimpleScratchHead ...
521236:  ADDS            R0, #8
521238:  STR.W           R0, [R8]
52123C:  MOV             R0, R6; this
52123E:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
521242:  LDR             R0, =(ThePaths_ptr - 0x52124C)
521244:  LDRH.W          R3, [R10,#0x24]
521248:  ADD             R0, PC; ThePaths_ptr
52124A:  LDR             R2, [R4,#0x1C]
52124C:  LDR             R1, [R0]; ThePaths
52124E:  ADD             R0, SP, #0x48+var_38
521250:  BLX             j__ZN9CPathFind32TakeWidthIntoAccountForWanderingE12CNodeAddresst; CPathFind::TakeWidthIntoAccountForWandering(CNodeAddress,ushort)
521254:  MOVS            R0, #word_2C; this
521256:  LDRD.W          R8, R9, [SP,#0x48+var_38]
52125A:  VLDR            S16, [SP,#0x48+var_30]
52125E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
521262:  LDR.W           R10, [R4,#0xC]
521266:  MOV             R5, R0
521268:  LDR             R4, [R4,#0x14]
52126A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52126E:  VMOV.F32        S0, #1.0
521272:  LDR             R0, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x52127A)
521274:  LDRB            R1, [R5,#0x1C]
521276:  ADD             R0, PC; _ZTV20CTaskSimpleGoToPoint_ptr
521278:  LDRB            R2, [R5,#0x1D]
52127A:  STRD.W          R10, R8, [R5,#8]
52127E:  LDR             R0, [R0]; `vtable for'CTaskSimpleGoToPoint ...
521280:  STR.W           R9, [R5,#0x10]
521284:  ADDS            R0, #8
521286:  STR             R4, [R5,#0x18]
521288:  VADD.F32        S0, S16, S0
52128C:  STR             R0, [R5]
52128E:  AND.W           R0, R1, #0xC0
521292:  MOV             R1, R5; CTask *
521294:  VSTR            S0, [R5,#0x14]
521298:  STRB            R0, [R5,#0x1C]
52129A:  AND.W           R0, R2, #0xE0
52129E:  STRB            R0, [R5,#0x1D]
5212A0:  MOV             R0, R6; this
5212A2:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
5212A6:  B               loc_521160
5212A8:  LDRB.W          R0, [R4,#0x24]
5212AC:  TST.W           R0, #1
5212B0:  BEQ             loc_5212CE
5212B2:  LDR             R0, =(ThePaths_ptr - 0x5212BC)
5212B4:  LDR.W           R2, [R11]
5212B8:  ADD             R0, PC; ThePaths_ptr
5212BA:  LDR.W           R1, [R9]
5212BE:  LDR             R0, [R0]; ThePaths
5212C0:  BLX             j__ZN9CPathFind22TestForPedTrafficLightE12CNodeAddressS0_; CPathFind::TestForPedTrafficLight(CNodeAddress,CNodeAddress)
5212C4:  CBZ             R0, loc_5212CA
5212C6:  MOVS            R2, #0xE1
5212C8:  B               loc_52100A
5212CA:  LDRB.W          R0, [R4,#0x24]
5212CE:  LSLS            R0, R0, #0x1F
5212D0:  BEQ             loc_5212EA
5212D2:  LDR             R0, =(ThePaths_ptr - 0x5212DC)
5212D4:  LDR.W           R2, [R11]
5212D8:  ADD             R0, PC; ThePaths_ptr
5212DA:  LDR.W           R1, [R9]
5212DE:  LDR             R0, [R0]; ThePaths
5212E0:  BLX             j__ZN9CPathFind15TestCrossesRoadE12CNodeAddressS0_; CPathFind::TestCrossesRoad(CNodeAddress,CNodeAddress)
5212E4:  CBZ             R0, loc_5212EA
5212E6:  MOVS            R2, #0xE3
5212E8:  B               loc_52100A
5212EA:  MOV.W           R2, #0x384
5212EE:  B               loc_52100A
