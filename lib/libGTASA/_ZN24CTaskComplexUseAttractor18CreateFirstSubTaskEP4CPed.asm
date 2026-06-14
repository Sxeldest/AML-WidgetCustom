; =========================================================
; Game Engine Function: _ZN24CTaskComplexUseAttractor18CreateFirstSubTaskEP4CPed
; Address            : 0x4EDFFC - 0x4EE360
; =========================================================

4EDFFC:  PUSH            {R4-R7,LR}
4EDFFE:  ADD             R7, SP, #0xC
4EE000:  PUSH.W          {R8-R10}
4EE004:  VPUSH           {D8}
4EE008:  SUB             SP, SP, #0x10
4EE00A:  MOV             R8, R0
4EE00C:  LDR             R0, =(g_InterestingEvents_ptr - 0x4EE016)
4EE00E:  MOV             R4, R1
4EE010:  MOVS            R1, #3
4EE012:  ADD             R0, PC; g_InterestingEvents_ptr
4EE014:  MOV             R2, R4
4EE016:  LDR             R0, [R0]; g_InterestingEvents
4EE018:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
4EE01C:  LDR.W           R0, [R8,#0xC]
4EE020:  LDR             R1, [R0]
4EE022:  LDR             R1, [R1]
4EE024:  BLX             R1
4EE026:  CMP             R0, #9; switch 10 cases
4EE028:  BHI.W           def_4EE02C; jumptable 004EE02C default case
4EE02C:  TBH.W           [PC,R0,LSL#1]; switch jump
4EE030:  DCW 0x25; jump table for switch statement
4EE032:  DCW 0xA
4EE034:  DCW 0x3B
4EE036:  DCW 0x46
4EE038:  DCW 0x75
4EE03A:  DCW 0x7E
4EE03C:  DCW 0xB9
4EE03E:  DCW 0xE5
4EE040:  DCW 0x109
4EE042:  DCW 0xA
4EE044:  BLX             rand; jumptable 004EE02C cases 1,9
4EE048:  UXTH            R0, R0
4EE04A:  VLDR            S16, =0.000015259
4EE04E:  VMOV            S0, R0
4EE052:  VLDR            S2, =100.0
4EE056:  VCVT.F32.S32    S0, S0
4EE05A:  VMUL.F32        S0, S0, S16
4EE05E:  VMUL.F32        S0, S0, S2
4EE062:  VCVT.S32.F32    S0, S0
4EE066:  VMOV            R0, S0
4EE06A:  CMP             R0, #0x28 ; '('
4EE06C:  BLE.W           loc_4EE298
4EE070:  MOV             R9, #0x98967F
4EE078:  B               loc_4EE2C2
4EE07A:  MOVS            R0, #dword_20; jumptable 004EE02C case 0
4EE07C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EE080:  MOV             R6, R0
4EE082:  LDR             R0, =(aUseatm - 0x4EE08E); "UseAtm"
4EE084:  MOVS            R1, #0
4EE086:  MOV.W           R2, #0x1A4
4EE08A:  ADD             R0, PC; "UseAtm"
4EE08C:  MOV.W           R3, #0x40800000
4EE090:  STRD.W          R2, R0, [SP,#0x30+var_30]
4EE094:  MOV             R0, R6
4EE096:  STR             R1, [SP,#0x30+var_28]
4EE098:  MOVS            R1, #0
4EE09A:  MOVS            R2, #0x97
4EE09C:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4EE0A0:  LDR             R0, =(_ZTV17CTaskSimpleUseAtm_ptr - 0x4EE0A6)
4EE0A2:  ADD             R0, PC; _ZTV17CTaskSimpleUseAtm_ptr
4EE0A4:  B               loc_4EE210
4EE0A6:  MOVS            R0, #word_10; jumptable 004EE02C case 2
4EE0A8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EE0AC:  MOV             R6, R0
4EE0AE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EE0B2:  LDR             R0, =(_ZTV22CTaskComplexWaitForBus_ptr - 0x4EE0BC)
4EE0B4:  MOVS            R1, #0
4EE0B6:  STR             R1, [R6,#0xC]
4EE0B8:  ADD             R0, PC; _ZTV22CTaskComplexWaitForBus_ptr
4EE0BA:  B               loc_4EE210
4EE0BC:  BLX             rand; jumptable 004EE02C case 3
4EE0C0:  MOV             R5, R0
4EE0C2:  MOVS            R0, #dword_20; this
4EE0C4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EE0C8:  MOV             R6, R0
4EE0CA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EE0CE:  UXTH            R0, R5
4EE0D0:  VLDR            S2, =0.000015259
4EE0D4:  VMOV            S0, R0
4EE0D8:  LDR             R0, =(_ZTV21CTaskSimpleStandStill_ptr - 0x4EE0E6)
4EE0DA:  MOV.W           R1, #0x41000000
4EE0DE:  VCVT.F32.S32    S0, S0
4EE0E2:  ADD             R0, PC; _ZTV21CTaskSimpleStandStill_ptr
4EE0E4:  LDR             R0, [R0]; `vtable for'CTaskSimpleStandStill ...
4EE0E6:  ADDS            R0, #8
4EE0E8:  STR             R0, [R6]
4EE0EA:  MOVS            R0, #0
4EE0EC:  STRH            R0, [R6,#0x14]
4EE0EE:  VMUL.F32        S0, S0, S2
4EE0F2:  VLDR            S2, =6000.0
4EE0F6:  STR             R1, [R6,#0x1C]
4EE0F8:  MOVW            R1, #0x1770
4EE0FC:  STRH            R0, [R6,#0x18]
4EE0FE:  STR             R0, [R6,#0x10]
4EE100:  VMUL.F32        S0, S0, S2
4EE104:  VCVT.S32.F32    S0, S0
4EE108:  STR             R0, [R6,#0xC]
4EE10A:  VMOV            R0, S0
4EE10E:  ADD             R0, R1
4EE110:  STR             R0, [R6,#8]
4EE112:  CMP             R6, #0
4EE114:  BNE.W           loc_4EE228
4EE118:  B               def_4EE02C; jumptable 004EE02C default case
4EE11A:  MOVS            R0, #(byte_9+3); jumptable 004EE02C case 4
4EE11C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EE120:  MOV             R6, R0
4EE122:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EE126:  LDR             R0, =(_ZTV29CTaskComplexWaitForDryWeather_ptr - 0x4EE12C)
4EE128:  ADD             R0, PC; _ZTV29CTaskComplexWaitForDryWeather_ptr
4EE12A:  B               loc_4EE210
4EE12C:  LDRB.W          R0, [R4,#0x48E]; jumptable 004EE02C case 5
4EE130:  MOVS            R1, #0
4EE132:  CMP.W           R1, R0,LSR#7
4EE136:  BNE             def_4EE02C; jumptable 004EE02C default case
4EE138:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x4EE142)
4EE13A:  LDR.W           R1, [R8,#0xC]
4EE13E:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
4EE140:  ADDS            R1, #0x78 ; 'x'; char *
4EE142:  LDR             R0, [R0]; this
4EE144:  BLX             j__ZN17CScriptsForBrains41HasAttractorScriptBrainWithThisNameLoadedEPKc; CScriptsForBrains::HasAttractorScriptBrainWithThisNameLoaded(char const*)
4EE148:  CMP             R0, #0
4EE14A:  ITTT NE
4EE14C:  LDRNE.W         R0, [R8,#0xC]
4EE150:  LDRNE           R1, [R0,#8]
4EE152:  CMPNE           R1, #0
4EE154:  BEQ             def_4EE02C; jumptable 004EE02C default case
4EE156:  LDRB.W          R2, [R1,#0x3A]
4EE15A:  AND.W           R2, R2, #7
4EE15E:  CMP             R2, #4
4EE160:  ITT EQ
4EE162:  LDRBEQ.W        R1, [R1,#0x147]
4EE166:  MOVSEQ.W        R1, R1,LSL#31
4EE16A:  BEQ             loc_4EE186
4EE16C:  LDR             R2, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x4EE178)
4EE16E:  ADDW            R1, R4, #0x484
4EE172:  LDR             R3, [R1,#8]
4EE174:  ADD             R2, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
4EE176:  ADD.W           R1, R0, #0x78 ; 'x'; char *
4EE17A:  LDR             R0, [R2]; this
4EE17C:  MOV             R2, R4; CEntity *
4EE17E:  UBFX.W          R3, R3, #0x15, #1; unsigned __int8
4EE182:  BLX             j__ZN17CScriptsForBrains37StartAttractorScriptBrainWithThisNameEPKcP7CEntityh; CScriptsForBrains::StartAttractorScriptBrainWithThisName(char const*,CEntity *,uchar)
4EE186:  LDR             R0, =(_ZN23CScriptedBrainTaskStore10ms_entriesE_ptr - 0x4EE18C)
4EE188:  ADD             R0, PC; _ZN23CScriptedBrainTaskStore10ms_entriesE_ptr
4EE18A:  LDR             R6, [R0]; CScriptedBrainTaskStore::ms_entries ...
4EE18C:  MOV.W           R0, #0xFFFFFFFF
4EE190:  LDR             R1, [R6]; CScriptedBrainTaskStore::ms_entries
4EE192:  CMP             R1, R4
4EE194:  BEQ.W           loc_4EE30C
4EE198:  ADDS            R0, #1
4EE19A:  ADDS            R6, #0x10
4EE19C:  CMP             R0, #0x2F ; '/'
4EE19E:  BLT             loc_4EE190
4EE1A0:  B               loc_4EE32C
4EE1A2:  BLX             rand; jumptable 004EE02C case 6
4EE1A6:  MOV             R5, R0
4EE1A8:  MOVS            R0, #dword_20; this
4EE1AA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EE1AE:  MOV             R6, R0
4EE1B0:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EE1B4:  UXTH            R0, R5
4EE1B6:  VLDR            S2, =0.000015259
4EE1BA:  VMOV            S0, R0
4EE1BE:  LDR             R0, =(_ZTV21CTaskSimpleStandStill_ptr - 0x4EE1CC)
4EE1C0:  MOV.W           R1, #0x41000000
4EE1C4:  VCVT.F32.S32    S0, S0
4EE1C8:  ADD             R0, PC; _ZTV21CTaskSimpleStandStill_ptr
4EE1CA:  LDR             R0, [R0]; `vtable for'CTaskSimpleStandStill ...
4EE1CC:  ADDS            R0, #8
4EE1CE:  STR             R0, [R6]
4EE1D0:  MOVS            R0, #0
4EE1D2:  STRH            R0, [R6,#0x14]
4EE1D4:  VMUL.F32        S0, S0, S2
4EE1D8:  VLDR            S2, =3000.0
4EE1DC:  STR             R1, [R6,#0x1C]
4EE1DE:  STRH            R0, [R6,#0x18]
4EE1E0:  VMUL.F32        S0, S0, S2
4EE1E4:  VCVT.S32.F32    S0, S0
4EE1E8:  VMOV            R1, S0
4EE1EC:  ADDW            R1, R1, #0xBB8
4EE1F0:  STRD.W          R1, R0, [R6,#8]
4EE1F4:  STR             R0, [R6,#0x10]
4EE1F6:  CBNZ            R6, loc_4EE228
4EE1F8:  B               def_4EE02C; jumptable 004EE02C default case
4EE1FA:  MOVS            R0, #word_10; jumptable 004EE02C case 7
4EE1FC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EE200:  MOV             R6, R0
4EE202:  LDR.W           R5, [R8,#0xC]
4EE206:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EE20A:  LDR             R0, =(_ZTV32CTaskComplexUseScriptedAttractor_ptr - 0x4EE212)
4EE20C:  STR             R5, [R6,#0xC]
4EE20E:  ADD             R0, PC; _ZTV32CTaskComplexUseScriptedAttractor_ptr
4EE210:  LDR             R0, [R0]; `vtable for'CTaskSimpleUseAtm
4EE212:  ADDS            R0, #8
4EE214:  STR             R0, [R6]
4EE216:  CBNZ            R6, loc_4EE228
4EE218:  BLX             j__Z22GetPedAttractorManagerv; jumptable 004EE02C default case
4EE21C:  LDR.W           R2, [R8,#0xC]; CPedAttractor *
4EE220:  MOV             R1, R4; CPed *
4EE222:  BLX             j__ZN20CPedAttractorManager18BroadcastDepartureEP4CPedP13CPedAttractor; CPedAttractorManager::BroadcastDeparture(CPed *,CPedAttractor *)
4EE226:  MOVS            R6, #0
4EE228:  LDR.W           R0, [R4,#0x48C]
4EE22C:  BIC.W           R0, R0, #0x200000
4EE230:  STR.W           R0, [R4,#0x48C]
4EE234:  MOV             R0, R6
4EE236:  ADD             SP, SP, #0x10
4EE238:  VPOP            {D8}
4EE23C:  POP.W           {R8-R10}
4EE240:  POP             {R4-R7,PC}
4EE242:  MOVS            R0, #dword_38; jumptable 004EE02C case 8
4EE244:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EE248:  MOV             R6, R0
4EE24A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EE24E:  LDR             R0, =(_ZTV20CTaskComplexSunbathe_ptr - 0x4EE258)
4EE250:  MOVS            R1, #1
4EE252:  LDR             R5, =(aBeach - 0x4EE25C); "beach"
4EE254:  ADD             R0, PC; _ZTV20CTaskComplexSunbathe_ptr
4EE256:  STRB            R1, [R6,#0xC]
4EE258:  ADD             R5, PC; "beach"
4EE25A:  MOVS            R1, #0; char *
4EE25C:  LDR             R0, [R0]; `vtable for'CTaskComplexSunbathe ...
4EE25E:  STRH            R1, [R6,#0x1C]
4EE260:  ADDS            R0, #8
4EE262:  STR.W           R1, [R6,#0xD]
4EE266:  STR             R1, [R6,#0x34]
4EE268:  STRD.W          R1, R1, [R6,#0x14]
4EE26C:  STR             R0, [R6]
4EE26E:  MOV             R0, R5; this
4EE270:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
4EE274:  STR             R0, [R6,#0x24]
4EE276:  MOV             R0, R5; this
4EE278:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
4EE27C:  LDR             R5, =(aSunbathe - 0x4EE284); "sunbathe"
4EE27E:  STR             R0, [R6,#0x2C]
4EE280:  ADD             R5, PC; "sunbathe"
4EE282:  MOV             R0, R5; this
4EE284:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
4EE288:  STR             R0, [R6,#0x28]
4EE28A:  MOV             R0, R5; this
4EE28C:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
4EE290:  STR             R0, [R6,#0x30]
4EE292:  CMP             R6, #0
4EE294:  BNE             loc_4EE228
4EE296:  B               def_4EE02C; jumptable 004EE02C default case
4EE298:  BLX             rand
4EE29C:  UXTH            R0, R0
4EE29E:  VLDR            S2, =45000.0
4EE2A2:  VMOV            S0, R0
4EE2A6:  MOVW            R1, #0x3A98; unsigned int
4EE2AA:  VCVT.F32.S32    S0, S0
4EE2AE:  VMUL.F32        S0, S0, S16
4EE2B2:  VMUL.F32        S0, S0, S2
4EE2B6:  VCVT.S32.F32    S0, S0
4EE2BA:  VMOV            R0, S0
4EE2BE:  ADD.W           R9, R0, R1
4EE2C2:  MOVS            R0, #dword_14; this
4EE2C4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EE2C8:  MOV             R6, R0
4EE2CA:  LDR.W           R0, [R8,#0xC]
4EE2CE:  LDR             R1, [R0]
4EE2D0:  LDR             R1, [R1]
4EE2D2:  BLX             R1
4EE2D4:  MOV             R5, R0
4EE2D6:  MOV             R0, R6; this
4EE2D8:  LDR.W           R10, [R4,#0x48C]
4EE2DC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EE2E0:  LDR             R0, =(_ZTV38CTaskComplexSitDownThenIdleThenStandUp_ptr - 0x4EE2F0)
4EE2E2:  CMP             R5, #9
4EE2E4:  MOV.W           R1, #0
4EE2E8:  STR.W           R9, [R6,#0xC]
4EE2EC:  ADD             R0, PC; _ZTV38CTaskComplexSitDownThenIdleThenStandUp_ptr
4EE2EE:  LDR             R0, [R0]; `vtable for'CTaskComplexSitDownThenIdleThenStandUp ...
4EE2F0:  ADD.W           R0, R0, #8
4EE2F4:  STR             R0, [R6]
4EE2F6:  IT EQ
4EE2F8:  MOVEQ           R1, #1
4EE2FA:  MOVS            R0, #0
4EE2FC:  STRB            R1, [R6,#0x10]
4EE2FE:  UBFX.W          R1, R10, #0x15, #1
4EE302:  STRB            R1, [R6,#0x11]
4EE304:  STRB            R0, [R6,#0x12]
4EE306:  CMP             R6, #0
4EE308:  BNE             loc_4EE228
4EE30A:  B               def_4EE02C; jumptable 004EE02C default case
4EE30C:  LDR             R1, [R6,#0xC]
4EE30E:  MOV             R0, R4
4EE310:  CBZ             R1, loc_4EE31C
4EE312:  LDR             R0, [R1]
4EE314:  LDR             R2, [R0,#4]
4EE316:  MOV             R0, R1
4EE318:  BLX             R2
4EE31A:  LDR             R0, [R6]; this
4EE31C:  MOVS            R5, #0
4EE31E:  CMP             R0, #0
4EE320:  STR             R5, [R6,#0xC]
4EE322:  BEQ             loc_4EE32C
4EE324:  MOV             R1, R6; CEntity **
4EE326:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4EE32A:  STR             R5, [R6]; CScriptedBrainTaskStore::ms_entries
4EE32C:  MOVS            R0, #dword_1C; this
4EE32E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EE332:  MOV             R6, R0
4EE334:  LDR.W           R5, [R8,#0xC]
4EE338:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EE33C:  LDR             R0, =(_ZTV28CTaskComplexUseScriptedBrain_ptr - 0x4EE346)
4EE33E:  MOVS            R1, #0
4EE340:  STRB            R1, [R6,#0xC]
4EE342:  ADD             R0, PC; _ZTV28CTaskComplexUseScriptedBrain_ptr
4EE344:  STR             R1, [R6,#0x18]
4EE346:  ADD.W           R1, R5, #0x78 ; 'x'; char *
4EE34A:  LDR             R0, [R0]; `vtable for'CTaskComplexUseScriptedBrain ...
4EE34C:  ADDS            R0, #8
4EE34E:  STR             R0, [R6]
4EE350:  ADD.W           R0, R6, #0xD; char *
4EE354:  BLX             strcpy
4EE358:  CMP             R6, #0
4EE35A:  BNE.W           loc_4EE228
4EE35E:  B               def_4EE02C; jumptable 004EE02C default case
