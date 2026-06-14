; =========================================================
; Game Engine Function: _ZN20CTaskComplexCopInCar17CreateNextSubTaskEP4CPed
; Address            : 0x540014 - 0x540384
; =========================================================

540014:  PUSH            {R4-R7,LR}
540016:  ADD             R7, SP, #0xC
540018:  PUSH.W          {R8}
54001C:  SUB             SP, SP, #8
54001E:  MOV             R4, R0
540020:  MOV             R6, R1
540022:  LDR             R0, [R4,#0x14]
540024:  CBZ             R0, loc_54002E
540026:  LDR.W           R0, [R0,#0x44C]
54002A:  CMP             R0, #0x37 ; '7'
54002C:  BNE             loc_54003A
54002E:  MOVS            R5, #0
540030:  MOV             R0, R5
540032:  ADD             SP, SP, #8
540034:  POP.W           {R8}
540038:  POP             {R4-R7,PC}; float
54003A:  LDR             R0, [R4,#8]
54003C:  LDR             R1, [R0]
54003E:  LDR             R1, [R1,#0x14]
540040:  BLX             R1
540042:  SUB.W           R1, R0, #0x2BC; switch 25 cases
540046:  MOVS            R5, #0
540048:  CMP             R1, #0x18
54004A:  BHI             def_54004C; jumptable 0054004C default case
54004C:  TBB.W           [PC,R1]; switch jump
540050:  DCB 0xE; jump table for switch statement
540051:  DCB 0xE
540052:  DCB 0xD
540053:  DCB 0xD
540054:  DCB 0x7B
540055:  DCB 0xD
540056:  DCB 0xD
540057:  DCB 0xD
540058:  DCB 0xD
540059:  DCB 0x90
54005A:  DCB 0xD
54005B:  DCB 0xD
54005C:  DCB 0xD
54005D:  DCB 0xD
54005E:  DCB 0xD
54005F:  DCB 0xD
540060:  DCB 0xD
540061:  DCB 0xD
540062:  DCB 0xD
540063:  DCB 0xD
540064:  DCB 0xD
540065:  DCB 0xD
540066:  DCB 0xD
540067:  DCB 0xD
540068:  DCB 0xA7
540069:  ALIGN 2
54006A:  B               loc_540030; jumptable 0054004C cases 702,703,705-708,710-723
54006C:  LDRB.W          R0, [R6,#0x485]; jumptable 0054004C cases 700,701
540070:  LSLS            R0, R0, #0x1F
540072:  ITT NE
540074:  LDRNE.W         R0, [R6,#0x590]; this
540078:  CMPNE           R0, #0
54007A:  BNE.W           loc_5401BE
54007E:  MOVS            R0, #off_18; this
540080:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
540084:  MOV             R5, R0
540086:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
54008A:  LDR             R0, =(_ZTV25CTaskComplexPolicePursuit_ptr - 0x540090)
54008C:  ADD             R0, PC; _ZTV25CTaskComplexPolicePursuit_ptr
54008E:  B               loc_540156
540090:  MOVW            R1, #0x44F; jumptable 0054004C default case
540094:  CMP             R0, R1
540096:  BNE             loc_540030
540098:  MOV.W           R0, #0xFFFFFFFF; int
54009C:  LDR             R5, [R4,#8]
54009E:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
5400A2:  LDR             R1, [R0,#0x2C]
5400A4:  CMP             R1, #0
5400A6:  BEQ             loc_54002E
5400A8:  MOV             R1, R6; CCopPed *
5400AA:  BLX             j__ZNK7CWanted17CanCopJoinPursuitEP7CCopPed; CWanted::CanCopJoinPursuit(CCopPed *)
5400AE:  CMP             R0, #1
5400B0:  BNE             loc_5400BA
5400B2:  LDRB            R0, [R5,#0xC]
5400B4:  LSLS            R0, R0, #0x1D
5400B6:  BMI.W           loc_5401FA
5400BA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5400C2)
5400BC:  MOVS            R1, #1
5400BE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5400C0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5400C2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5400C4:  STRB.W          R1, [R4,#0x2C]
5400C8:  MOVW            R1, #0xBB8; unsigned int
5400CC:  STRD.W          R0, R1, [R4,#0x24]
5400D0:  MOVS            R0, #dword_50; this
5400D2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5400D6:  MOV             R5, R0
5400D8:  BLX             rand
5400DC:  UXTH            R0, R0
5400DE:  VLDR            S2, =0.000015259
5400E2:  VMOV            S0, R0
5400E6:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x5400F6)
5400E8:  VMOV.F32        S4, #8.0
5400EC:  MOVS            R1, #4; int
5400EE:  VCVT.F32.S32    S0, S0
5400F2:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
5400F4:  MOVS            R3, #1; bool
5400F6:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
5400F8:  VMUL.F32        S0, S0, S2
5400FC:  VLDR            S2, [R0]
540100:  VMUL.F32        S0, S0, S4
540104:  VCVT.S32.F32    S0, S0
540108:  VSTR            S2, [SP,#0x18+var_18]
54010C:  VMOV            R0, S0
540110:  UXTB            R2, R0; unsigned __int8
540112:  MOV             R0, R5; this
540114:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
540118:  LDR             R0, =(_ZTV21CTaskComplexWanderCop_ptr - 0x54011E)
54011A:  ADD             R0, PC; _ZTV21CTaskComplexWanderCop_ptr
54011C:  VMOV.I32        Q8, #0
540120:  ADD.W           R1, R5, #0x38 ; '8'
540124:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderCop ...
540126:  VST1.32         {D16-D17}, [R1]
54012A:  MOVS            R1, #0
54012C:  ADDS            R0, #8
54012E:  STR.W           R1, [R5,#0x32]
540132:  STR.W           R1, [R5,#0x2E]
540136:  STR             R0, [R5]
540138:  STR             R1, [R5,#0x28]
54013A:  STR             R1, [R5,#0x2C]
54013C:  STR.W           R1, [R5,#0x4A]
540140:  STR.W           R1, [R5,#0x46]
540144:  B               loc_540030
540146:  MOVS            R0, #off_18; jumptable 0054004C case 704
540148:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54014C:  MOV             R5, R0
54014E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
540152:  LDR             R0, =(_ZTV25CTaskComplexPolicePursuit_ptr - 0x540158)
540154:  ADD             R0, PC; _ZTV25CTaskComplexPolicePursuit_ptr
540156:  LDR             R0, [R0]; `vtable for'CTaskComplexPolicePursuit ...
540158:  MOVS            R1, #0
54015A:  LDRB            R2, [R5,#0xC]
54015C:  ADDS            R0, #8
54015E:  STR             R1, [R5,#0x10]
540160:  STR             R1, [R5,#0x14]
540162:  STR             R0, [R5]
540164:  AND.W           R0, R2, #0xF8
540168:  ORR.W           R0, R0, #4
54016C:  STRB            R0, [R5,#0xC]
54016E:  B               loc_540030
540170:  LDR             R0, [R4,#0xC]; jumptable 0054004C case 709
540172:  MOV.W           R8, #0
540176:  MOVS            R1, #1; int
540178:  STRB.W          R8, [R0,#0x3BE]
54017C:  LDR.W           R0, [R6,#0x440]; this
540180:  MOVS            R6, #1
540182:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
540186:  MOVS            R0, #dword_34; this
540188:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54018C:  LDR             R1, [R4,#0xC]; CVehicle *
54018E:  MOVS            R2, #0; int
540190:  MOVS            R3, #0; int
540192:  MOV             R5, R0
540194:  STRD.W          R6, R8, [SP,#0x18+var_18]; bool
540198:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
54019C:  B               loc_540030
54019E:  LDRB.W          R0, [R4,#0x30]; jumptable 0054004C case 724
5401A2:  ORR.W           R0, R0, #2
5401A6:  STRB.W          R0, [R4,#0x30]
5401AA:  MOVS            R0, #dword_60; this
5401AC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5401B0:  LDR             R1, [R4,#0xC]; CVehicle *
5401B2:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
5401B4:  MOVS            R3, #0; bool
5401B6:  MOV             R5, R0
5401B8:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
5401BC:  B               loc_540030
5401BE:  MOVS            R1, #1; unsigned __int8
5401C0:  BLX             j__ZN8CVehicle22ChangeLawEnforcerStateEh; CVehicle::ChangeLawEnforcerState(uchar)
5401C4:  LDRB.W          R1, [R4,#0x30]
5401C8:  LDR             R0, [R4,#0x14]
5401CA:  AND.W           R2, R1, #0xFB
5401CE:  STRB.W          R2, [R4,#0x30]
5401D2:  MOVS            R2, #8
5401D4:  AND.W           R1, R1, #0xF3
5401D8:  LDR.W           R0, [R0,#0x484]
5401DC:  AND.W           R0, R2, R0,LSR#5
5401E0:  ORRS            R0, R1
5401E2:  STRB.W          R0, [R4,#0x30]
5401E6:  MOV             R0, R4; this
5401E8:  MOV.W           R1, #0x2D4; int
5401EC:  MOV             R2, R6; CPed *
5401EE:  ADD             SP, SP, #8
5401F0:  POP.W           {R8}
5401F4:  POP.W           {R4-R7,LR}
5401F8:  B               _ZNK20CTaskComplexCopInCar13CreateSubTaskEiP4CPed; float
5401FA:  LDR             R0, [R4,#0x14]
5401FC:  LDR.W           R1, [R0,#0x48C]
540200:  TST.W           R1, #0x40
540204:  BNE.W           loc_54002E
540208:  LDR.W           R1, [R0,#0x484]
54020C:  LSLS            R1, R1, #0x17
54020E:  BPL             loc_540244
540210:  LDR             R1, [R4,#0xC]
540212:  LDR.W           R0, [R0,#0x590]
540216:  CMP             R0, R1
540218:  BEQ             loc_540244
54021A:  CMP             R1, #0
54021C:  BEQ             loc_5402A8
54021E:  LDR             R2, [R1,#0x14]
540220:  LDR             R3, [R6,#0x14]
540222:  ADD.W           R0, R2, #0x30 ; '0'
540226:  CMP             R2, #0
540228:  IT EQ
54022A:  ADDEQ           R0, R1, #4
54022C:  ADD.W           R1, R3, #0x30 ; '0'
540230:  CMP             R3, #0
540232:  IT EQ
540234:  ADDEQ           R1, R6, #4
540236:  LDRB.W          R2, [R4,#0x30]
54023A:  LSLS            R2, R2, #0x1F
54023C:  BNE             loc_54030C
54023E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x540244)
540240:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
540242:  B               loc_54036A
540244:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54024C)
540246:  MOVS            R1, #1
540248:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54024A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
54024C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
54024E:  STRB.W          R1, [R4,#0x2C]
540252:  MOVW            R1, #0xBB8; unsigned int
540256:  STRD.W          R0, R1, [R4,#0x24]
54025A:  MOVS            R0, #dword_50; this
54025C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
540260:  MOV             R5, R0
540262:  BLX             rand
540266:  UXTH            R0, R0
540268:  VLDR            S2, =0.000015259
54026C:  VMOV            S0, R0
540270:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x540280)
540272:  VMOV.F32        S4, #8.0
540276:  MOVS            R1, #4; int
540278:  VCVT.F32.S32    S0, S0
54027C:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
54027E:  MOVS            R3, #1; bool
540280:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
540282:  VMUL.F32        S0, S0, S2
540286:  VLDR            S2, [R0]
54028A:  VMUL.F32        S0, S0, S4
54028E:  VCVT.S32.F32    S0, S0
540292:  VSTR            S2, [SP,#0x18+var_18]
540296:  VMOV            R0, S0
54029A:  UXTB            R2, R0; unsigned __int8
54029C:  MOV             R0, R5; this
54029E:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
5402A2:  LDR             R0, =(_ZTV21CTaskComplexWanderCop_ptr - 0x5402A8)
5402A4:  ADD             R0, PC; _ZTV21CTaskComplexWanderCop_ptr
5402A6:  B               loc_54011C
5402A8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5402B0)
5402AA:  MOVS            R1, #1
5402AC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5402AE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5402B0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5402B2:  STRB.W          R1, [R4,#0x2C]
5402B6:  MOVW            R1, #0xBB8; unsigned int
5402BA:  STRD.W          R0, R1, [R4,#0x24]
5402BE:  MOVS            R0, #dword_50; this
5402C0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5402C4:  MOV             R5, R0
5402C6:  BLX             rand
5402CA:  UXTH            R0, R0
5402CC:  VLDR            S2, =0.000015259
5402D0:  VMOV            S0, R0
5402D4:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x5402E4)
5402D6:  VMOV.F32        S4, #8.0
5402DA:  MOVS            R1, #4; int
5402DC:  VCVT.F32.S32    S0, S0
5402E0:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
5402E2:  MOVS            R3, #1; bool
5402E4:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
5402E6:  VMUL.F32        S0, S0, S2
5402EA:  VLDR            S2, [R0]
5402EE:  VMUL.F32        S0, S0, S4
5402F2:  VCVT.S32.F32    S0, S0
5402F6:  VSTR            S2, [SP,#0x18+var_18]
5402FA:  VMOV            R0, S0
5402FE:  UXTB            R2, R0; unsigned __int8
540300:  MOV             R0, R5; this
540302:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
540306:  LDR             R0, =(_ZTV21CTaskComplexWanderCop_ptr - 0x54030C)
540308:  ADD             R0, PC; _ZTV21CTaskComplexWanderCop_ptr
54030A:  B               loc_54011C
54030C:  LDRB.W          R2, [R6,#0x485]
540310:  LSLS            R2, R2, #0x1F
540312:  BNE             loc_540360
540314:  VLDR            S0, [R0]
540318:  VLDR            S6, [R1]
54031C:  VLDR            S2, [R0,#4]
540320:  VLDR            S8, [R1,#4]
540324:  VSUB.F32        S0, S6, S0
540328:  VLDR            S4, [R0,#8]
54032C:  VSUB.F32        S2, S8, S2
540330:  VLDR            S10, [R1,#8]
540334:  VSUB.F32        S4, S10, S4
540338:  VMUL.F32        S0, S0, S0
54033C:  VMUL.F32        S2, S2, S2
540340:  VMUL.F32        S4, S4, S4
540344:  VADD.F32        S0, S0, S2
540348:  VMOV.F32        S2, #16.0
54034C:  VADD.F32        S0, S0, S4
540350:  VCMPE.F32       S0, S2
540354:  VMRS            APSR_nzcv, FPSCR
540358:  BGE             loc_540366
54035A:  MOVW            R1, #0x2BD
54035E:  B               loc_540380
540360:  MOVW            R1, #0x2C5
540364:  B               loc_540380
540366:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54036C)
540368:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54036A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
54036C:  MOVS            R1, #1
54036E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
540370:  STRB.W          R1, [R4,#0x2C]
540374:  MOVW            R1, #0xBB8
540378:  STR             R0, [R4,#0x24]
54037A:  STR             R1, [R4,#0x28]
54037C:  MOV.W           R1, #0x390
540380:  MOV             R0, R4
540382:  B               loc_5401EC
