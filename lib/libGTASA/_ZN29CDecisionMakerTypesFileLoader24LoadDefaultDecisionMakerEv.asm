; =========================================================
; Game Engine Function: _ZN29CDecisionMakerTypesFileLoader24LoadDefaultDecisionMakerEv
; Address            : 0x474084 - 0x474366
; =========================================================

474084:  PUSH            {R4-R7,LR}
474086:  ADD             R7, SP, #0xC
474088:  PUSH.W          {R8}
47408C:  SUB.W           SP, SP, #0x9A0; int
474090:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x474096)
474092:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
474094:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
474096:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
474098:  CBNZ            R0, loc_4740AE
47409A:  MOVW            R0, #0xF1C0; unsigned int
47409E:  BLX             _Znwj; operator new(uint)
4740A2:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4740A6:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4740AC)
4740A8:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4740AA:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4740AC:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4740AE:  BLX             j__ZN19CDecisionMakerTypes16LoadEventIndicesEv; CDecisionMakerTypes::LoadEventIndices(void)
4740B2:  MOVS            R0, #0; this
4740B4:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
4740B8:  MOVS            R0, #(stderr+1); this
4740BA:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
4740BE:  MOVS            R0, #(stderr+2); this
4740C0:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
4740C4:  MOVS            R0, #(stderr+3); this
4740C6:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
4740CA:  MOVS            R0, #byte_4; this
4740CC:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
4740D0:  MOVS            R0, #byte_5; this
4740D2:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
4740D6:  MOVS            R0, #byte_6; this
4740D8:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
4740DC:  MOVS            R0, #byte_7; this
4740DE:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
4740E2:  MOVS            R0, #byte_8; this
4740E4:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
4740E8:  MOVS            R0, #byte_9; this
4740EA:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
4740EE:  MOVS            R0, #(byte_9+1); this
4740F0:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
4740F4:  MOVS            R0, #(byte_9+2); this
4740F6:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
4740FA:  MOVS            R0, #(byte_9+3); this
4740FC:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
474100:  MOVS            R0, #(byte_9+4); this
474102:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
474106:  MOVS            R0, #(byte_9+5); this
474108:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
47410C:  MOVS            R0, #(byte_9+6); this
47410E:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
474112:  MOVS            R0, #word_10; this
474114:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
474118:  MOVS            R0, #(word_10+1); this
47411A:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
47411E:  MOVS            R0, #word_12; this
474120:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
474124:  MOVS            R0, #(word_12+1); this
474126:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
47412A:  ADD             R4, SP, #0x9B0+var_9AC
47412C:  MOV             R0, R4; this
47412E:  BLX             j__ZN14CDecisionMakerC2Ev; CDecisionMaker::CDecisionMaker(void)
474132:  MOVS            R5, #0x29 ; ')'
474134:  MOV             R0, R4; this
474136:  BLX             j__ZN9CDecision10SetDefaultEv; CDecision::SetDefault(void)
47413A:  ADDS            R4, #0x3C ; '<'
47413C:  SUBS            R5, #1
47413E:  BNE             loc_474134
474140:  ADD.W           R8, SP, #0x9B0+var_9AC
474144:  ADR             R0, aRandomPed; "RANDOM.ped"
474146:  MOV             R1, R8; char *
474148:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKcR14CDecisionMaker; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,CDecisionMaker &)
47414C:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x474152)
47414E:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
474150:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
474152:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
474154:  CBNZ            R0, loc_47416A
474156:  MOVW            R0, #0xF1C0; unsigned int
47415A:  BLX             _Znwj; operator new(uint)
47415E:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
474162:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x474168)
474164:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
474166:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
474168:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
47416A:  MOVW            R1, #0xC1B4
47416E:  ADDS            R5, R0, R1
474170:  MOVS            R6, #0x29 ; ')'
474172:  MOVS            R4, #0
474174:  ADDS            R0, R5, R4; this
474176:  ADD.W           R1, R8, R4; CDecision *
47417A:  BLX             j__ZN9CDecision4FromERKS_; CDecision::From(CDecision const&)
47417E:  ADDS            R4, #0x3C ; '<'
474180:  SUBS            R6, #1
474182:  BNE             loc_474174
474184:  ADD             R4, SP, #0x9B0+var_9AC
474186:  MOVS            R5, #0x29 ; ')'
474188:  MOV             R0, R4; this
47418A:  BLX             j__ZN9CDecision10SetDefaultEv; CDecision::SetDefault(void)
47418E:  ADDS            R4, #0x3C ; '<'
474190:  SUBS            R5, #1
474192:  BNE             loc_474188
474194:  ADD.W           R8, SP, #0x9B0+var_9AC
474198:  ADR             R0, aMNormPed; "m_norm.ped"
47419A:  MOV             R1, R8; char *
47419C:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKcR14CDecisionMaker; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,CDecisionMaker &)
4741A0:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4741A6)
4741A2:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4741A4:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4741A6:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4741A8:  CBNZ            R0, loc_4741BE
4741AA:  MOVW            R0, #0xF1C0; unsigned int
4741AE:  BLX             _Znwj; operator new(uint)
4741B2:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4741B6:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4741BC)
4741B8:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4741BA:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4741BC:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4741BE:  MOVW            R1, #0xCB50
4741C2:  ADDS            R5, R0, R1
4741C4:  MOVS            R6, #0x29 ; ')'
4741C6:  MOVS            R4, #0
4741C8:  ADDS            R0, R5, R4; this
4741CA:  ADD.W           R1, R8, R4; CDecision *
4741CE:  BLX             j__ZN9CDecision4FromERKS_; CDecision::From(CDecision const&)
4741D2:  ADDS            R4, #0x3C ; '<'
4741D4:  SUBS            R6, #1
4741D6:  BNE             loc_4741C8
4741D8:  ADD             R4, SP, #0x9B0+var_9AC
4741DA:  MOVS            R5, #0x29 ; ')'
4741DC:  MOV             R0, R4; this
4741DE:  BLX             j__ZN9CDecision10SetDefaultEv; CDecision::SetDefault(void)
4741E2:  ADDS            R4, #0x3C ; '<'
4741E4:  SUBS            R5, #1
4741E6:  BNE             loc_4741DC
4741E8:  ADD.W           R8, SP, #0x9B0+var_9AC
4741EC:  ADR             R0, aMPlyrPed; "m_plyr.ped"
4741EE:  MOV             R1, R8; char *
4741F0:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKcR14CDecisionMaker; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,CDecisionMaker &)
4741F4:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4741FA)
4741F6:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4741F8:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4741FA:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4741FC:  CBNZ            R0, loc_474212
4741FE:  MOVW            R0, #0xF1C0; unsigned int
474202:  BLX             _Znwj; operator new(uint)
474206:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
47420A:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x474210)
47420C:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
47420E:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
474210:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
474212:  MOVW            R1, #0xD4EC
474216:  ADDS            R5, R0, R1
474218:  MOVS            R6, #0x29 ; ')'
47421A:  MOVS            R4, #0
47421C:  ADDS            R0, R5, R4; this
47421E:  ADD.W           R1, R8, R4; CDecision *
474222:  BLX             j__ZN9CDecision4FromERKS_; CDecision::From(CDecision const&)
474226:  ADDS            R4, #0x3C ; '<'
474228:  SUBS            R6, #1
47422A:  BNE             loc_47421C
47422C:  ADD             R4, SP, #0x9B0+var_9AC
47422E:  MOVS            R5, #0x29 ; ')'
474230:  MOV             R0, R4; this
474232:  BLX             j__ZN9CDecision10SetDefaultEv; CDecision::SetDefault(void)
474236:  ADDS            R4, #0x3C ; '<'
474238:  SUBS            R5, #1
47423A:  BNE             loc_474230
47423C:  ADD.W           R8, SP, #0x9B0+var_9AC
474240:  ADR             R0, aRandomGrp; "RANDOM.grp"
474242:  MOV             R1, R8; char *
474244:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKcR14CDecisionMaker; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,CDecisionMaker &)
474248:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x47424E)
47424A:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
47424C:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
47424E:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
474250:  CBNZ            R0, loc_474266
474252:  MOVW            R0, #0xF1C0; unsigned int
474256:  BLX             _Znwj; operator new(uint)
47425A:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
47425E:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x474264)
474260:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
474262:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
474264:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
474266:  MOVW            R1, #0xDE88
47426A:  ADDS            R5, R0, R1
47426C:  MOVS            R6, #0x29 ; ')'
47426E:  MOVS            R4, #0
474270:  ADDS            R0, R5, R4; this
474272:  ADD.W           R1, R8, R4; CDecision *
474276:  BLX             j__ZN9CDecision4FromERKS_; CDecision::From(CDecision const&)
47427A:  ADDS            R4, #0x3C ; '<'
47427C:  SUBS            R6, #1
47427E:  BNE             loc_474270
474280:  ADD             R4, SP, #0x9B0+var_9AC
474282:  MOVS            R5, #0x29 ; ')'
474284:  MOV             R0, R4; this
474286:  BLX             j__ZN9CDecision10SetDefaultEv; CDecision::SetDefault(void)
47428A:  ADDS            R4, #0x3C ; '<'
47428C:  SUBS            R5, #1
47428E:  BNE             loc_474284
474290:  ADR             R0, aMissionGrp; "MISSION.grp"
474292:  ADD             R1, SP, #0x9B0+var_9AC; char *
474294:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKcR14CDecisionMaker; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,CDecisionMaker &)
474298:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x47429E)
47429A:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
47429C:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
47429E:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4742A0:  CBNZ            R0, loc_4742B6
4742A2:  MOVW            R0, #0xF1C0; unsigned int
4742A6:  BLX             _Znwj; operator new(uint)
4742AA:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4742AE:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4742B4)
4742B0:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4742B2:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4742B4:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4742B6:  MOVW            R1, #0xE824
4742BA:  ADDS            R4, R0, R1
4742BC:  ADD             R5, SP, #0x9B0+var_9AC
4742BE:  MOVS            R6, #0x29 ; ')'
4742C0:  MOV             R0, R4; this
4742C2:  MOV             R1, R5; CDecision *
4742C4:  BLX             j__ZN9CDecision4FromERKS_; CDecision::From(CDecision const&)
4742C8:  ADDS            R5, #0x3C ; '<'
4742CA:  ADDS            R4, #0x3C ; '<'
4742CC:  SUBS            R6, #1
4742CE:  BNE             loc_4742C0
4742D0:  ADR             R0, aGangmbrPed; "GangMbr.ped"
4742D2:  MOVS            R1, #0; char *
4742D4:  MOVS            R2, #0; unsigned __int8
4742D6:  MOV.W           R3, #0xFFFFFFFF; unsigned __int8
4742DA:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,uchar,uchar,int)
4742DE:  ADR             R0, aCopPed; "Cop.ped"
4742E0:  MOVS            R1, #0; char *
4742E2:  MOVS            R2, #0; unsigned __int8
4742E4:  MOV.W           R3, #0xFFFFFFFF; unsigned __int8
4742E8:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,uchar,uchar,int)
4742EC:  ADR             R0, aRNormPed; "R_Norm.ped"
4742EE:  MOVS            R1, #0; char *
4742F0:  MOVS            R2, #0; unsigned __int8
4742F2:  MOV.W           R3, #0xFFFFFFFF; unsigned __int8
4742F6:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,uchar,uchar,int)
4742FA:  ADR             R0, aRToughPed; "R_Tough.ped"
4742FC:  MOVS            R1, #0; char *
4742FE:  MOVS            R2, #0; unsigned __int8
474300:  MOV.W           R3, #0xFFFFFFFF; unsigned __int8
474304:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,uchar,uchar,int)
474308:  ADR             R0, aRWeakPed; "R_Weak.ped"
47430A:  MOVS            R1, #0; char *
47430C:  MOVS            R2, #0; unsigned __int8
47430E:  MOV.W           R3, #0xFFFFFFFF; unsigned __int8
474312:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,uchar,uchar,int)
474316:  ADR             R0, aFiremanPed; "Fireman.ped"
474318:  MOVS            R1, #0; char *
47431A:  MOVS            R2, #0; unsigned __int8
47431C:  MOV.W           R3, #0xFFFFFFFF; unsigned __int8
474320:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,uchar,uchar,int)
474324:  ADR             R0, aMEmptyPed; "m_empty.ped"
474326:  MOVS            R1, #0; char *
474328:  MOVS            R2, #0; unsigned __int8
47432A:  MOV.W           R3, #0xFFFFFFFF; unsigned __int8
47432E:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,uchar,uchar,int)
474332:  ADR             R0, aIndoorsPed; "Indoors.ped"
474334:  MOVS            R1, #0; char *
474336:  MOVS            R2, #0; unsigned __int8
474338:  MOV.W           R3, #0xFFFFFFFF; unsigned __int8
47433C:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,uchar,uchar,int)
474340:  ADR             R0, aRandomGrp; "RANDOM.grp"
474342:  MOVS            R1, #(stderr+1); char *
474344:  MOVS            R2, #0; unsigned __int8
474346:  MOV.W           R3, #0xFFFFFFFF; unsigned __int8
47434A:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,uchar,uchar,int)
47434E:  ADR             R0, aRandom2Grp; "RANDOM2.grp"
474350:  MOVS            R1, #(stderr+1); char *
474352:  MOVS            R2, #0; unsigned __int8
474354:  MOV.W           R3, #0xFFFFFFFF; unsigned __int8
474358:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,uchar,uchar,int)
47435C:  ADD.W           SP, SP, #0x9A0
474360:  POP.W           {R8}
474364:  POP             {R4-R7,PC}
