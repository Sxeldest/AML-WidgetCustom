; =========================================================
; Game Engine Function: _ZN11CPlayerInfo7ProcessEi
; Address            : 0x40908C - 0x40AC2C
; =========================================================

40908C:  PUSH            {R4-R7,LR}
40908E:  ADD             R7, SP, #0xC
409090:  PUSH.W          {R8-R11}
409094:  SUB             SP, SP, #4
409096:  VPUSH           {D8-D14}
40909A:  SUB             SP, SP, #0x58
40909C:  MOV             R10, R1
40909E:  MOV             R4, R0
4090A0:  MOV             R0, R10; this
4090A2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4090A6:  MOV             R11, R0
4090A8:  LDRB.W          R1, [R4,#0xD4]
4090AC:  LDR             R0, [R4]
4090AE:  CMP             R1, #0
4090B0:  ITT NE
4090B2:  LDRBNE.W        R1, [R0,#0x485]
4090B6:  MOVSNE.W        R1, R1,LSL#31
4090BA:  BEQ             loc_4090DA
4090BC:  LDR.W           R1, [R0,#0x590]
4090C0:  LDRSH.W         R2, [R1,#0x26]
4090C4:  CMP.W           R2, #0x1B6
4090C8:  IT NE
4090CA:  CMPNE.W         R2, #0x1A4
4090CE:  BNE             loc_4090DA
4090D0:  LDR.W           R2, [R1,#0x464]
4090D4:  CMP             R2, R0
4090D6:  BEQ.W           loc_40921C
4090DA:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4090E2)
4090DE:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4090E0:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4090E2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4090E4:  STR.W           R1, [R4,#0xCC]
4090E8:  LDRB.W          R1, [R0,#0x485]
4090EC:  LSLS            R1, R1, #0x1F
4090EE:  ITT NE
4090F0:  LDRNE.W         R0, [R0,#0x590]
4090F4:  CMPNE           R0, #0
4090F6:  BNE             loc_40913C
4090F8:  MOVS            R0, #0
4090FA:  STR.W           R0, [R4,#0xF8]
4090FE:  STR.W           R0, [R4,#0x100]
409102:  STR.W           R0, [R4,#0x104]
409106:  STR.W           R0, [R4,#0x10C]
40910A:  ADD.W           R0, R4, #0x114
40910E:  MOVS            R1, #0
409110:  STR             R1, [R0]
409112:  MOV             R0, R4; this
409114:  BLX             j__ZN11CPlayerInfo23WorkOutEnergyFromHungerEv; CPlayerInfo::WorkOutEnergyFromHunger(void)
409118:  LDRD.W          R1, R0, [R4,#0xB8]
40911C:  CMP             R1, R0
40911E:  BEQ.W           loc_4093AE
409122:  SUBS            R1, R1, R0
409124:  MOV             R2, #0x186A0
40912C:  MOV             R3, R1
40912E:  IT MI
409130:  NEGMI           R3, R1
409132:  CMP             R3, R2
409134:  BLE             loc_40917E
409136:  MOVW            R2, #0x3039
40913A:  B               loc_4093A2
40913C:  LDR.W           R1, [R0,#0x5A0]
409140:  CMP             R1, #9
409142:  BEQ             loc_40918C
409144:  CMP             R1, #0
409146:  BNE             loc_4090F8
409148:  LDRB.W          R1, [R0,#0x974]
40914C:  CMP             R1, #2
40914E:  BHI.W           loc_40926E
409152:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x40915E)
409156:  VLDR            S0, =50.0
40915A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
40915C:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
40915E:  VLDR            S2, [R1]
409162:  LDR.W           R1, [R4,#0x100]
409166:  VDIV.F32        S0, S2, S0
40916A:  VLDR            S2, =1000.0
40916E:  VMUL.F32        S0, S0, S2
409172:  VCVT.U32.F32    S0, S0
409176:  VMOV            R2, S0
40917A:  ADD             R1, R2
40917C:  B               loc_409270
40917E:  MOVW            R2, #0x2710
409182:  CMP             R3, R2
409184:  BLE             loc_409210
409186:  MOVW            R2, #0x4D2
40918A:  B               loc_4093A2
40918C:  VMOV.F32        S0, #1.0
409190:  ADDW            R1, R0, #0x734
409194:  VLDR            S2, [R1]
409198:  VCMP.F32        S2, S0
40919C:  VMRS            APSR_nzcv, FPSCR
4091A0:  BNE             loc_4091BE
4091A2:  ADD.W           R1, R0, #0x738
4091A6:  VLDR            S4, [R1]
4091AA:  VCMP.F32        S4, S0
4091AE:  VMRS            APSR_nzcv, FPSCR
4091B2:  ITT EQ
4091B4:  LDREQ.W         R1, [R4,#0x10C]
4091B8:  CMPEQ           R1, #0
4091BA:  BEQ.W           loc_409BA2
4091BE:  LDR.W           R2, [R4,#0x104]; float
4091C2:  CMP             R2, #0
4091C4:  BEQ.W           loc_409AE4
4091C8:  MOVW            R0, #0x1387
4091CC:  CMP             R2, R0
4091CE:  BLS             loc_409202
4091D0:  MOV             R0, #0x10624DD3
4091D8:  UMULL.W         R0, R1, R2, R0
4091DC:  LSRS            R0, R1, #6
4091DE:  VMOV            S0, R0
4091E2:  VCVT.F32.S32    S0, S0
4091E6:  LDR.W           R0, [R4,#0x108]
4091EA:  STRD.W          R2, R0, [R4,#0x120]
4091EE:  VMOV            R1, S0; unsigned __int16
4091F2:  MOVS            R0, #(word_10+1); this
4091F4:  BLX             j__ZN6CStats16SetNewRecordStatEtf; CStats::SetNewRecordStat(ushort,float)
4091F8:  LDR.W           R1, [R4,#0x108]; unsigned __int16
4091FC:  MOVS            R0, #(byte_9+1); this
4091FE:  BLX             j__ZN6CStats16SetNewRecordStatEtf; CStats::SetNewRecordStat(ushort,float)
409202:  MOVS            R0, #0
409204:  STR.W           R0, [R4,#0x104]
409208:  STR.W           R0, [R4,#0x108]
40920C:  B.W             loc_40A27E
409210:  CMP.W           R3, #0x3E8
409214:  BLE.W           loc_40939A
409218:  MOVS            R2, #0x7B ; '{'
40921A:  B               loc_4093A2
40921C:  LDRB.W          R1, [R1,#0x488]
409220:  CMP             R1, #0
409222:  BEQ.W           loc_4090DA
409226:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x40922E)
40922A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
40922C:  LDR             R2, [R1]; CTimer::m_snTimeInMilliseconds ...
40922E:  LDR.W           R1, [R4,#0xCC]
409232:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
409234:  SUBS            R3, R2, R1
409236:  CMP.W           R3, #0x3E8
40923A:  BCC.W           loc_4090E8
40923E:  SUB.W           R2, R2, #0x3E8
409242:  MOVW            R3, #0x4DD3
409246:  SUBS            R2, R2, R1
409248:  MOVT            R3, #0x1062
40924C:  MOV.W           R6, #0x3E8
409250:  UMULL.W         R2, R3, R2, R3
409254:  LSRS            R2, R3, #6
409256:  MLA.W           R1, R2, R6, R1
40925A:  LDR.W           R2, [R4,#0xB8]
40925E:  ADD.W           R2, R2, R3,LSR#6
409262:  ADDS            R2, #1
409264:  STR.W           R2, [R4,#0xB8]
409268:  ADD.W           R1, R1, #0x3E8
40926C:  B               loc_4090E4
40926E:  MOVS            R1, #0
409270:  VMOV.F32        S0, #1.0
409274:  STR.W           R1, [R4,#0x100]
409278:  ADD.W           R1, R0, #0x800
40927C:  VLDR            S2, [R1]
409280:  ADD.W           R1, R0, #0x7F8
409284:  VCMP.F32        S2, S0
409288:  VMRS            APSR_nzcv, FPSCR
40928C:  BNE             loc_4092DC
40928E:  ADDW            R2, R0, #0x804
409292:  VLDR            S4, [R2]
409296:  VCMP.F32        S4, S0
40929A:  VMRS            APSR_nzcv, FPSCR
40929E:  BNE             loc_4092DC
4092A0:  VLDR            S2, [R1]
4092A4:  VCMPE.F32       S2, S0
4092A8:  VMRS            APSR_nzcv, FPSCR
4092AC:  BGE.W           loc_409AC6
4092B0:  ADDW            R1, R0, #0x7FC
4092B4:  VLDR            S2, [R1]
4092B8:  VCMPE.F32       S2, S0
4092BC:  VMRS            APSR_nzcv, FPSCR
4092C0:  BGE.W           loc_409AC6
4092C4:  VLDR            S0, [R0,#0xDC]
4092C8:  VCMP.F32        S0, #0.0
4092CC:  VMRS            APSR_nzcv, FPSCR
4092D0:  BNE.W           loc_409AC6
4092D4:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4092DC)
4092D8:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4092DA:  B               loc_409336
4092DC:  VLDR            S4, [R1]
4092E0:  VCMP.F32        S4, S0
4092E4:  VMRS            APSR_nzcv, FPSCR
4092E8:  BNE.W           loc_40997C
4092EC:  ADDW            R1, R0, #0x7FC
4092F0:  VLDR            S4, [R1]
4092F4:  VCMP.F32        S4, S0
4092F8:  VMRS            APSR_nzcv, FPSCR
4092FC:  BNE.W           loc_40997C
409300:  VCMPE.F32       S2, S0
409304:  VMRS            APSR_nzcv, FPSCR
409308:  BGE.W           loc_409C64
40930C:  ADDW            R1, R0, #0x804
409310:  VLDR            S2, [R1]
409314:  VCMPE.F32       S2, S0
409318:  VMRS            APSR_nzcv, FPSCR
40931C:  BGE.W           loc_409C64
409320:  VLDR            S0, [R0,#0xDC]
409324:  VCMP.F32        S0, #0.0
409328:  VMRS            APSR_nzcv, FPSCR
40932C:  BNE.W           loc_409C64
409330:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x409338)
409334:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
409336:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
409338:  VLDR            S0, =50.0
40933C:  VLDR            S2, [R1]
409340:  VDIV.F32        S0, S2, S0
409344:  VLDR            S2, =1000.0
409348:  VMUL.F32        S0, S0, S2
40934C:  VMOV.F32        S2, #-0.5
409350:  VCVT.U32.F32    S0, S0
409354:  VMOV            R1, S0
409358:  VCVT.F32.U32    S0, S0
40935C:  VLDR            S6, [R4,#0x114]
409360:  VLDR            S4, [R4,#0xFC]
409364:  VCVT.F32.U32    S6, S6
409368:  LDR.W           R2, [R4,#0xF8]
40936C:  VMUL.F32        S0, S0, S2
409370:  VADD.F32        S0, S6, S0
409374:  VLDR            S6, =0.0
409378:  ADD             R1, R2
40937A:  STR.W           R1, [R4,#0xF8]
40937E:  VLDR            S2, [R0,#0xD8]
409382:  VMAX.F32        D0, D0, D3
409386:  VADD.F32        S2, S2, S4
40938A:  VCVT.U32.F32    S0, S0
40938E:  VSTR            S2, [R4,#0xFC]
409392:  VSTR            S0, [R4,#0x114]
409396:  B.W             loc_409F92
40939A:  MOVS            R2, #1
40939C:  CMP             R3, #0x32 ; '2'
40939E:  IT GT
4093A0:  MOVGT           R2, #0x2A ; '*'
4093A2:  CMP             R1, #0
4093A4:  IT LT
4093A6:  NEGLT           R2, R2
4093A8:  ADD             R0, R2
4093AA:  STR.W           R0, [R4,#0xBC]
4093AE:  MOVS            R0, #9
4093B0:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
4093B4:  LDR             R1, [R4]
4093B6:  STR.W           R0, [R1,#0x548]
4093BA:  LDR             R0, [R4]
4093BC:  ADD.W           R1, R0, #0x548
4093C0:  VLDR            S0, [R1]
4093C4:  VCVT.U32.F32    S0, S0
4093C8:  VMOV            R1, S0; unsigned __int16
4093CC:  STRB.W          R1, [R4,#0x14F]
4093D0:  LDRB.W          R0, [R0,#0x485]
4093D4:  LSLS            R0, R0, #0x1F
4093D6:  BEQ             loc_4093F0
4093D8:  MOVS            R0, #(off_DC+3); this
4093DA:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
4093DE:  VLDR            S0, =400.0
4093E2:  VMOV            S2, R0
4093E6:  VCMPE.F32       S2, S0
4093EA:  VMRS            APSR_nzcv, FPSCR
4093EE:  BGE             loc_409414
4093F0:  LDRB.W          R0, [R4,#0x18C]; this
4093F4:  CBZ             R0, loc_40941C
4093F6:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
4093FA:  LDRB.W          R0, [R4,#0x18C]
4093FE:  CBZ             R0, loc_40941C
409400:  MOVW            R0, #(elf_hash_bucket+0x77); this
409404:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
409408:  MOVS            R0, #0
40940A:  STR.W           R0, [R4,#0x190]
40940E:  STRB.W          R0, [R4,#0x18C]
409412:  B               loc_40941C
409414:  MOV             R0, R4; this
409416:  MOVS            R1, #1; bool
409418:  BLX             j__ZN11CPlayerInfo21StreamParachuteWeaponEb; CPlayerInfo::StreamParachuteWeapon(bool)
40941C:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x409424)
409420:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
409422:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
409424:  LDRB            R0, [R0]; CTimer::m_FrameCounter
409426:  LSLS            R0, R0, #0x1C
409428:  BEQ             loc_409430
40942A:  VLDR            S0, [R4,#0x134]
40942E:  B               loc_40946E
409430:  LDR             R0, [R4]
409432:  LDR.W           R3, =(ThePaths_ptr - 0x40943E)
409436:  LDRB.W          R1, [R0,#0x485]
40943A:  ADD             R3, PC; ThePaths_ptr
40943C:  LSLS            R1, R1, #0x1F
40943E:  IT NE
409440:  LDRNE.W         R0, [R0,#0x590]
409444:  LDR             R2, [R0,#0x14]
409446:  ADD.W           R1, R2, #0x30 ; '0'
40944A:  CMP             R2, #0
40944C:  IT EQ
40944E:  ADDEQ           R1, R0, #4
409450:  LDR             R2, [R0,#0x14]
409452:  LDR             R1, [R1]; float
409454:  ADD.W           R6, R2, #0x30 ; '0'
409458:  CMP             R2, #0
40945A:  IT EQ
40945C:  ADDEQ           R6, R0, #4
40945E:  LDR             R0, [R3]; ThePaths ; this
409460:  LDR             R2, [R6,#4]; float
409462:  BLX             j__ZN9CPathFind15CalcRoadDensityEff; CPathFind::CalcRoadDensity(float,float)
409466:  VMOV            S0, R0
40946A:  STR.W           R0, [R4,#0x134]
40946E:  VMOV.F32        S2, #-1.0
409472:  LDR             R1, [R4]; CPlayerPed *
409474:  VMOV.F32        S18, #1.0
409478:  VMOV.F32        S16, #0.5
40947C:  VADD.F32        S0, S0, S2
409480:  VLDR            S2, =0.6
409484:  VMUL.F32        S0, S0, S2
409488:  VLDR            S2, =1.45
40948C:  VADD.F32        S0, S0, S18
409490:  VMAX.F32        D16, D0, D8
409494:  VMIN.F32        D0, D16, D1
409498:  VSTR            S0, [R4,#0x134]
40949C:  LDRB.W          R0, [R1,#0x485]
4094A0:  LSLS            R0, R0, #0x1F
4094A2:  BEQ             loc_4094D4
4094A4:  LDR.W           R0, [R1,#0x590]; this
4094A8:  CBZ             R0, loc_4094D4
4094AA:  BLX             j__ZNK8CVehicle11IsPassengerEPK4CPed; CVehicle::IsPassenger(CPed const*)
4094AE:  LDR             R1, [R4]
4094B0:  MOV             R6, R0
4094B2:  B               loc_4094D6
4094B4:  DCFS 50.0
4094B8:  DCFS 1000.0
4094BC:  DCFS 0.0
4094C0:  DCFS 400.0
4094C4:  DCFS 0.6
4094C8:  DCFS 1.45
4094CC:  DCFS 0.05
4094D0:  DCFS 249.0
4094D4:  MOVS            R6, #0
4094D6:  LDR.W           R0, =(TheCamera_ptr - 0x4094DE)
4094DA:  ADD             R0, PC; TheCamera_ptr
4094DC:  LDR             R0, [R0]; TheCamera ; this
4094DE:  BLX             j__ZN7CCamera17IsTargetingActiveEP10CPlayerPed; CCamera::IsTargetingActive(CPlayerPed *)
4094E2:  CBNZ            R6, loc_4094EA
4094E4:  CMP             R0, #0
4094E6:  BNE.W           loc_4095F0
4094EA:  LDR             R0, [R4]
4094EC:  MOV.W           R3, #0x4000000
4094F0:  LDR.W           R1, [R0,#0x48C]
4094F4:  LDR.W           R2, [R0,#0x490]
4094F8:  BIC.W           R1, R3, R1
4094FC:  AND.W           R2, R2, #2
409500:  ORRS            R1, R2
409502:  BNE             loc_4095F0
409504:  MOVS            R2, #0
409506:  ADDW            R1, R0, #0x484
40950A:  STRB.W          R2, [R4,#0xD5]
40950E:  LDRB            R1, [R1,#1]
409510:  LSLS            R1, R1, #0x1F
409512:  BEQ             loc_40951E
409514:  LDR.W           R1, [R4,#0xB0]
409518:  CMP             R1, #0
40951A:  BEQ.W           loc_409990
40951E:  LDR             R1, [R4]; CPed *
409520:  LDR.W           R0, [R1,#0x100]; this
409524:  CMP             R0, #0
409526:  BNE             loc_4095F6
409528:  BLX             j__ZN11CPlayerInfo17FindObjectToStealEP4CPed; CPlayerInfo::FindObjectToSteal(CPed *)
40952C:  MOV             R8, R0
40952E:  LDR             R0, [R4]
409530:  LDR.W           R0, [R0,#0x440]
409534:  ADDS            R0, #4; this
409536:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
40953A:  MOV             R5, R0
40953C:  LDR             R0, [R4]
40953E:  MOVS            R1, #0; bool
409540:  MOVS            R6, #0
409542:  LDR.W           R0, [R0,#0x440]; this
409546:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
40954A:  MOV             R9, R0
40954C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x409558)
409550:  VLDR            S20, =50.0
409554:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
409556:  VLDR            S2, =1000.0
40955A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
40955C:  VLDR            S0, [R0]
409560:  LDR.W           R0, =(_ZN21CTaskSimpleHoldEntity15m_nPutDownTimerE_ptr - 0x40956C)
409564:  VDIV.F32        S0, S0, S20
409568:  ADD             R0, PC; _ZN21CTaskSimpleHoldEntity15m_nPutDownTimerE_ptr
40956A:  LDR             R0, [R0]; CTaskSimpleHoldEntity::m_nPutDownTimer ...
40956C:  LDR             R1, [R0]; CTaskSimpleHoldEntity::m_nPutDownTimer
40956E:  VMUL.F32        S0, S0, S2
409572:  VCVT.U32.F32    S0, S0
409576:  VMOV            R2, S0
40957A:  SUBS            R1, R1, R2
40957C:  CMP             R1, #0
40957E:  IT GT
409580:  MOVGT           R6, R1
409582:  STR             R6, [R0]; CTaskSimpleHoldEntity::m_nPutDownTimer
409584:  LDR             R0, [R5]
409586:  LDR             R1, [R0,#0x14]
409588:  MOV             R0, R5
40958A:  BLX             R1
40958C:  CMP             R0, #0xFE
40958E:  BEQ             loc_4095F6
409590:  LDR             R0, [R4]
409592:  LDR.W           R0, [R0,#0x440]; this
409596:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
40959A:  CBNZ            R0, loc_4095F6
40959C:  CMP.W           R9, #0
4095A0:  ITT NE
4095A2:  LDRNE.W         R0, [R9,#8]
4095A6:  CMPNE           R0, #0
4095A8:  BNE             loc_4095F6
4095AA:  CMP.W           R8, #0
4095AE:  BEQ.W           loc_40A566
4095B2:  LDR             R0, [R4]
4095B4:  LDR.W           R0, [R0,#0x440]
4095B8:  ADDS            R0, #4; this
4095BA:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
4095BE:  MOV             R6, R0
4095C0:  CMP             R6, #0
4095C2:  BEQ.W           loc_40A63A
4095C6:  LDR             R0, [R6]
4095C8:  LDR             R1, [R0,#0x14]
4095CA:  MOV             R0, R6
4095CC:  BLX             R1
4095CE:  CMP.W           R0, #0x136
4095D2:  BEQ             loc_4095F6
4095D4:  LDR             R0, [R6]
4095D6:  MOVS            R2, #1
4095D8:  LDR             R1, [R4]
4095DA:  MOVS            R3, #0
4095DC:  LDR             R5, [R0,#0x1C]
4095DE:  MOV             R0, R6
4095E0:  BLX             R5
4095E2:  CMP             R0, #1
4095E4:  BNE             loc_4095F6
4095E6:  LDR.W           R0, =(_ZN21CTaskSimpleHoldEntity15m_nPutDownTimerE_ptr - 0x4095EE)
4095EA:  ADD             R0, PC; _ZN21CTaskSimpleHoldEntity15m_nPutDownTimerE_ptr
4095EC:  B.W             loc_40A640
4095F0:  MOVS            R0, #0
4095F2:  STRB.W          R0, [R4,#0xD5]
4095F6:  LDRB.W          R0, [R4,#0xDD]
4095FA:  CMP             R0, #0
4095FC:  BEQ.W           loc_40970A
409600:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x40960C)
409604:  LDR.W           R1, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x409612)
409608:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
40960A:  LDR.W           R2, [R4,#0xE0]
40960E:  ADD             R1, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
409610:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
409612:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds ...
409614:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
409616:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds
409618:  SUBS            R6, R0, R2
40961A:  SUBS            R0, R1, R2
40961C:  LSRS            R0, R0, #3
40961E:  CMP             R0, #0x7C ; '|'
409620:  BHI             loc_409654
409622:  CMP.W           R6, #0x3E8
409626:  BCC             loc_409654
409628:  LDRB.W          R0, [R4,#0xDC]
40962C:  CBNZ            R0, loc_409654
40962E:  LDRB.W          R0, [R4,#0xDF]
409632:  CBZ             R0, loc_409654
409634:  LDR.W           R0, =(TheCamera_ptr - 0x409642)
409638:  MOVS            R1, #0; unsigned __int8
40963A:  MOVS            R2, #0; unsigned __int8
40963C:  MOVS            R3, #0; unsigned __int8
40963E:  ADD             R0, PC; TheCamera_ptr
409640:  LDR             R5, [R0]; TheCamera
409642:  MOV             R0, R5; this
409644:  BLX             j__ZN7CCamera13SetFadeColourEhhh; CCamera::SetFadeColour(uchar,uchar,uchar)
409648:  MOV             R0, R5; this
40964A:  MOV.W           R1, #0x3F800000; float
40964E:  MOVS            R2, #0; __int16
409650:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
409654:  CMP.W           R6, #0x7D0
409658:  BLS             loc_40970A
40965A:  LDRB.W          R0, [R4,#0xDC]
40965E:  CBNZ            R0, loc_4096A8
409660:  LDRB.W          R0, [R4,#0xDF]
409664:  CBZ             R0, loc_4096A8
409666:  LDR.W           R0, =(TheCamera_ptr - 0x40966E)
40966A:  ADD             R0, PC; TheCamera_ptr
40966C:  LDR             R5, [R0]; TheCamera
40966E:  MOV             R0, R5; this
409670:  BLX             j__ZN7CCamera18RestoreWithJumpCutEv; CCamera::RestoreWithJumpCut(void)
409674:  MOV             R0, R5; this
409676:  MOVS            R1, #0; unsigned __int8
409678:  MOVS            R2, #0; unsigned __int8
40967A:  MOVS            R3, #0; unsigned __int8
40967C:  BLX             j__ZN7CCamera13SetFadeColourEhhh; CCamera::SetFadeColour(uchar,uchar,uchar)
409680:  MOV             R0, R5; this
409682:  MOV.W           R1, #0x3F800000; float
409686:  MOVS            R2, #1; __int16
409688:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
40968C:  MOV             R0, R5; this
40968E:  BLX             j__ZN7CCamera7ProcessEv; CCamera::Process(void)
409692:  BLX             j__ZN6CTimer4StopEv; CTimer::Stop(void)
409696:  MOVS            R0, #0
409698:  MOVS            R1, #0
40969A:  BLX             j__ZN9CRenderer23RequestObjectsInFrustumEP11RwMatrixTagi; CRenderer::RequestObjectsInFrustum(RwMatrixTag *,int)
40969E:  MOVS            R0, #0; this
4096A0:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
4096A4:  BLX             j__ZN6CTimer6UpdateEv; CTimer::Update(void)
4096A8:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4096B8)
4096AC:  MOV.W           R3, #0x194
4096B0:  LDR.W           R2, =(_ZN6CWorld7PlayersE_ptr - 0x4096BA)
4096B4:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4096B6:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
4096B8:  LDR             R1, [R0]; CWorld::PlayerInFocus ...
4096BA:  MOVS            R0, #0
4096BC:  STRB.W          R0, [R4,#0xDD]
4096C0:  LDR             R2, [R2]; CWorld::Players ...
4096C2:  LDR             R1, [R1]; CWorld::PlayerInFocus
4096C4:  SMLABB.W        R2, R1, R3, R2
4096C8:  SMULBB.W        R1, R1, R3
4096CC:  LDR.W           R6, [R2,#0xB0]!
4096D0:  CMP             R6, #0
4096D2:  ITTT NE
4096D4:  LDRNE           R5, [R6,#0x1C]
4096D6:  ORRNE.W         R5, R5, #0x800
4096DA:  STRNE           R5, [R6,#0x1C]
4096DC:  LDR.W           R6, =(_ZN6CWorld7PlayersE_ptr - 0x4096E6)
4096E0:  STR             R0, [R2]
4096E2:  ADD             R6, PC; _ZN6CWorld7PlayersE_ptr
4096E4:  LDR             R3, [R6]; CWorld::Players ...
4096E6:  LDR             R0, [R3,R1]
4096E8:  CMP             R0, #0
4096EA:  ITT NE
4096EC:  LDRBNE.W        R1, [R0,#0x485]
4096F0:  MOVSNE.W        R1, R1,LSL#31
4096F4:  BEQ             loc_40970A
4096F6:  LDR.W           R0, [R0,#0x590]
4096FA:  CMP             R0, #0
4096FC:  ITTT NE
4096FE:  LDRBNE.W        R1, [R0,#0x3A]
409702:  ANDNE.W         R1, R1, #7
409706:  STRBNE.W        R1, [R0,#0x3A]
40970A:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x409716)
40970E:  LDR.W           R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409718)
409712:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
409714:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
409716:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
409718:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
40971A:  LDRB            R0, [R0]; CTimer::m_FrameCounter
40971C:  LDR             R1, [R1]; CWorld::PlayerInFocus
40971E:  LSLS            R0, R0, #0x1B
409720:  BNE             loc_40981C
409722:  LDR.W           R2, =(_ZN6CWorld7PlayersE_ptr - 0x409732)
409726:  MOV.W           R0, #0x194
40972A:  SMULBB.W        R3, R1, R0
40972E:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
409730:  LDR             R2, [R2]; CWorld::Players ...
409732:  LDR             R3, [R2,R3]
409734:  CMP             R3, #0
409736:  ITT NE
409738:  LDRBNE.W        R6, [R3,#0x485]
40973C:  MOVSNE.W        R6, R6,LSL#31
409740:  BEQ             loc_409816
409742:  LDR.W           R3, [R3,#0x590]
409746:  CMP             R3, #0
409748:  ITTT NE
40974A:  LDRNE           R6, [R4]
40974C:  LDRBNE.W        R6, [R6,#0x485]
409750:  MOVSNE.W        R6, R6,LSL#31
409754:  BEQ             loc_409816
409756:  LDR             R6, [R3,#0x14]
409758:  VLDR            S0, [R6,#0x28]
40975C:  VCMPE.F32       S0, #0.0
409760:  VMRS            APSR_nzcv, FPSCR
409764:  BGE             loc_409816
409766:  VLDR            S2, [R3,#0x48]
40976A:  VLDR            S4, [R3,#0x4C]
40976E:  VMUL.F32        S2, S2, S2
409772:  VLDR            S6, [R3,#0x50]
409776:  VMUL.F32        S4, S4, S4
40977A:  VMUL.F32        S6, S6, S6
40977E:  VADD.F32        S2, S2, S4
409782:  VLDR            S4, =0.05
409786:  VADD.F32        S2, S2, S6
40978A:  VSQRT.F32       S2, S2
40978E:  VCMPE.F32       S2, S4
409792:  VMRS            APSR_nzcv, FPSCR
409796:  BGE             loc_409816
409798:  LDR.W           R6, [R3,#0x5A0]
40979C:  CMP             R6, #5
40979E:  IT NE
4097A0:  CMPNE           R6, #0
4097A2:  BNE             loc_409816
4097A4:  LDRB.W          R3, [R3,#0x45]
4097A8:  LSLS            R3, R3, #0x1F
4097AA:  BNE             loc_409816
4097AC:  VMOV.F32        S2, #-0.5
4097B0:  LDR.W           R3, [R4,#0xF0]
4097B4:  MOVS            R6, #1
4097B6:  VCMPE.F32       S0, S2
4097BA:  VMRS            APSR_nzcv, FPSCR
4097BE:  IT LT
4097C0:  MOVLT           R6, #2
4097C2:  ADD             R3, R6
4097C4:  STR.W           R3, [R4,#0xF0]
4097C8:  CMP             R3, #7
4097CA:  BCC             loc_40981C
4097CC:  SMLABB.W        R0, R1, R0, R2
4097D0:  LDR             R2, [R0]
4097D2:  LDR.W           R2, [R2,#0x590]
4097D6:  LDRB.W          R3, [R2,#0x42E]
4097DA:  LSLS            R3, R3, #0x1A
4097DC:  BPL             loc_40981C
4097DE:  ADDW            R2, R2, #0x4CC
4097E2:  VLDR            S0, =249.0
4097E6:  VLDR            S2, [R2]
4097EA:  VMIN.F32        D0, D1, D0
4097EE:  VSTR            S0, [R2]
4097F2:  LDR             R2, [R0]
4097F4:  LDR.W           R0, [R2,#0x590]
4097F8:  LDR.W           R3, [R0,#0x5A0]
4097FC:  CBNZ            R3, loc_40981C
4097FE:  MOVS            R5, #0
409800:  CMP             R2, #0
409802:  BEQ.W           loc_40A924
409806:  LDRB.W          R1, [R2,#0x485]
40980A:  AND.W           R1, R1, #1
40980E:  NEGS            R1, R1
409810:  ANDS            R0, R1
409812:  B.W             loc_40A926
409816:  MOVS            R0, #0
409818:  STR.W           R0, [R4,#0xF0]
40981C:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x40982C)
409820:  MOV.W           R2, #0x194
409824:  SMULBB.W        R6, R1, R2
409828:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
40982A:  LDR             R3, [R0]; CWorld::Players ...
40982C:  LDR             R0, [R3,R6]
40982E:  CBZ             R0, loc_409840
409830:  LDRB.W          R6, [R0,#0x485]
409834:  LSLS            R6, R6, #0x1F
409836:  ITT NE
409838:  LDRNE.W         R0, [R0,#0x590]; this
40983C:  CMPNE           R0, #0
40983E:  BNE             loc_4098AA
409840:  SMLABB.W        R0, R1, R2, R3
409844:  LDR.W           R1, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x409850)
409848:  LDR.W           R2, =(_ZN6CWorld7PlayersE_ptr - 0x409852)
40984C:  ADD             R1, PC; _ZN4CHID20currentInstanceIndexE_ptr
40984E:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
409850:  LDR             R1, [R1]; CHID::currentInstanceIndex ...
409852:  LDR             R2, [R2]; CWorld::Players ...
409854:  LDR             R1, [R1]; CHID::currentInstanceIndex
409856:  CMP             R1, #1
409858:  IT EQ
40985A:  ADDEQ.W         R0, R2, #0x194
40985E:  LDR             R0, [R0]
409860:  VLDR            S0, [R0,#0xD8]
409864:  VCMPE.F32       S0, #0.0
409868:  VMRS            APSR_nzcv, FPSCR
40986C:  BLE.W           loc_40A2CC; jumptable 0040A192 case 4
409870:  LDR             R0, [R4]
409872:  LDR.W           R0, [R0,#0x440]; this
409876:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
40987A:  CBZ             R0, loc_4098BE
40987C:  MOVS            R0, #0; this
40987E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
409882:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
409886:  CMP             R0, #0
409888:  BNE.W           loc_409EA8
40988C:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x409894)
409890:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
409892:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
409894:  LDR             R0, [R0]; CHID::currentInstanceIndex
409896:  CMP             R0, #1
409898:  BNE.W           loc_409A76
40989C:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x4098A4)
4098A0:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4098A2:  LDR             R0, [R0]; CWorld::Players ...
4098A4:  ADD.W           R0, R0, #0x194
4098A8:  B               loc_409A90
4098AA:  LDRH            R1, [R0,#0x26]
4098AC:  MOVW            R2, #0x1C9
4098B0:  CMP             R1, R2
4098B2:  BNE             loc_4098E8
4098B4:  LDR.W           R1, [R0,#0xD8]
4098B8:  MOVS            R0, #7
4098BA:  B.W             loc_40A112
4098BE:  LDR             R0, [R4]
4098C0:  LDR.W           R0, [R0,#0x440]; this
4098C4:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
4098C8:  CMP             R0, #0
4098CA:  BEQ             loc_40995E
4098CC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4098D8)
4098D0:  VMOV.F32        S0, #16.0
4098D4:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4098D6:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4098D8:  VLDR            S2, [R0]
4098DC:  MOVS            R0, #0xAD
4098DE:  VMUL.F32        S0, S2, S0
4098E2:  VMOV            R1, S0
4098E6:  B               loc_409EE6
4098E8:  LDR.W           R1, [R0,#0x5A4]
4098EC:  CMP             R1, #0xA
4098EE:  BNE             loc_4098FA
4098F0:  LDR.W           R1, [R0,#0xD8]
4098F4:  MOVS            R0, #0x1B
4098F6:  B.W             loc_40A112
4098FA:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
4098FE:  CMP             R0, #3
409900:  BNE             loc_40992C
409902:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409912)
409906:  MOV.W           R2, #0x194; float
40990A:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x409914)
40990E:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409910:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409912:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409914:  LDR             R1, [R1]; CWorld::Players ...
409916:  LDR             R0, [R0]; CWorld::PlayerInFocus
409918:  SMULBB.W        R0, R0, R2
40991C:  LDR             R0, [R1,R0]
40991E:  LDR.W           R0, [R0,#0x590]
409922:  LDR.W           R1, [R0,#0xD8]; unsigned __int16
409926:  MOVS            R0, #byte_8; this
409928:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
40992C:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40993C)
409930:  MOV.W           R2, #0x194
409934:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x40993E)
409938:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
40993A:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40993C:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
40993E:  LDR             R1, [R1]; CWorld::Players ...
409940:  LDR             R0, [R0]; CWorld::PlayerInFocus
409942:  SMULBB.W        R0, R0, R2
409946:  LDR             R0, [R1,R0]
409948:  CMP             R0, #0
40994A:  BEQ.W           loc_409CC6
40994E:  LDRB.W          R1, [R0,#0x485]
409952:  LSLS            R1, R1, #0x1F
409954:  ITE NE
409956:  LDRNE.W         R0, [R0,#0x590]
40995A:  MOVEQ           R0, #0
40995C:  B               loc_409CC8
40995E:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x409966)
409962:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
409964:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
409966:  LDR             R0, [R0]; CHID::currentInstanceIndex
409968:  CMP             R0, #1
40996A:  BNE.W           loc_409C40
40996E:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x409976)
409972:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
409974:  LDR             R0, [R0]; CWorld::Players ...
409976:  ADD.W           R0, R0, #0x194
40997A:  B               loc_409C5A
40997C:  LDR.W           R0, [R4,#0xF8]
409980:  CMP             R0, #0
409982:  BEQ.W           loc_409F92
409986:  LSRS            R1, R0, #4
409988:  CMP             R1, #0x7C ; '|'
40998A:  BHI.W           loc_409F4E
40998E:  B               loc_409F84
409990:  LDR.W           R2, [R0,#0x590]; CVehicle *
409994:  MOVS            R3, #0; bool
409996:  LDR             R0, [R2,#0x14]
409998:  ADD.W           R1, R0, #0x30 ; '0'
40999C:  CMP             R0, #0
40999E:  IT EQ
4099A0:  ADDEQ           R1, R2, #4
4099A2:  MOV             R0, R11; this
4099A4:  STR             R1, [SP,#0xB0+var_B0]; CVector *
4099A6:  MOVS            R1, #1; bool
4099A8:  BLX             j__ZN4CPad19ExitVehicleJustDownEbP8CVehiclebRK7CVector; CPad::ExitVehicleJustDown(bool,CVehicle *,bool,CVector const&)
4099AC:  CMP             R0, #1
4099AE:  BNE.W           loc_409CA2
4099B2:  LDR             R0, [R4]
4099B4:  LDR.W           R1, [R0,#0x590]
4099B8:  LDR.W           R1, [R1,#0x490]; unsigned int
4099BC:  CBZ             R1, loc_4099CE
4099BE:  LDRSH.W         R0, [R1,#0x26]; this
4099C2:  BLX             j__ZN7CBridge27ThisIsABridgeObjectMovingUpEj; CBridge::ThisIsABridgeObjectMovingUp(uint)
4099C6:  CMP             R0, #0
4099C8:  BNE.W           loc_4095F6
4099CC:  LDR             R0, [R4]
4099CE:  LDR.W           R1, [R0,#0x590]
4099D2:  MOV             R3, #0xFFFFFFFB
4099D6:  LDRB.W          R2, [R1,#0x3A]
4099DA:  ADD.W           R2, R3, R2,LSR#3
4099DE:  CMP             R2, #2
4099E0:  BCC.W           loc_4095F6
4099E4:  LDR.W           R1, [R1,#0x508]
4099E8:  CMP             R1, #4
4099EA:  BEQ.W           loc_4095F6
4099EE:  LDR.W           R0, [R0,#0x440]
4099F2:  ADDS            R0, #4; this
4099F4:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
4099F8:  CBZ             R0, loc_409A0E
4099FA:  LDR             R2, [R0]
4099FC:  MOVS            R3, #0
4099FE:  LDR             R1, [R4]
409A00:  MOVS            R5, #1
409A02:  LDR             R6, [R2,#0x1C]
409A04:  MOVS            R2, #1
409A06:  BLX             R6
409A08:  CMP             R0, #1
409A0A:  BNE.W           loc_40A866
409A0E:  LDR             R1, [R4]; unsigned int
409A10:  LDR.W           R0, [R1,#0x590]
409A14:  LDR.W           R2, [R0,#0x5A0]
409A18:  CMP             R2, #5
409A1A:  BNE.W           loc_40A7CE
409A1E:  MOVS            R0, #dword_34; this
409A20:  LDR.W           R5, [R1,#0x440]
409A24:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
409A28:  MOV             R6, R0
409A2A:  LDR             R0, [R4]
409A2C:  MOVS            R2, #1
409A2E:  MOVS            R3, #0; int
409A30:  LDR.W           R1, [R0,#0x590]; CVehicle *
409A34:  MOVS            R0, #0
409A36:  STRD.W          R2, R0, [SP,#0xB0+var_B0]; bool
409A3A:  MOV             R0, R6; this
409A3C:  MOVS            R2, #0; int
409A3E:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
409A42:  ADDS            R0, R5, #4; this
409A44:  MOV             R1, R6; CTask *
409A46:  MOVS            R2, #3; int
409A48:  MOVS            R3, #0; bool
409A4A:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
409A4E:  LDR             R0, [R4]
409A50:  LDR.W           R2, [R0,#0x488]
409A54:  LDR.W           R1, [R0,#0x484]
409A58:  LDR.W           R3, [R0,#0x48C]
409A5C:  ORR.W           R2, R2, #0x80
409A60:  LDR.W           R6, [R0,#0x490]
409A64:  STR.W           R1, [R0,#0x484]
409A68:  STR.W           R2, [R0,#0x488]
409A6C:  STR.W           R3, [R0,#0x48C]
409A70:  STR.W           R6, [R0,#0x490]
409A74:  B               loc_4095F6
409A76:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409A86)
409A7A:  MOV.W           R2, #0x194
409A7E:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x409A88)
409A82:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409A84:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409A86:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409A88:  LDR             R1, [R1]; CWorld::Players ...
409A8A:  LDR             R0, [R0]; CWorld::PlayerInFocus
409A8C:  SMLABB.W        R0, R0, R2, R1
409A90:  LDR             R0, [R0]
409A92:  MOVS            R1, #2
409A94:  BLX             j__ZN10CPlayerPed19ControlButtonSprintE11eSprintType; CPlayerPed::ControlButtonSprint(eSprintType)
409A98:  VMOV            S0, R0
409A9C:  VCMPE.F32       S0, S18
409AA0:  VMRS            APSR_nzcv, FPSCR
409AA4:  BGE.W           loc_409EA8
409AA8:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x409AB0)
409AAC:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
409AAE:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
409AB0:  LDR             R0, [R0]; CHID::currentInstanceIndex
409AB2:  CMP             R0, #1
409AB4:  BNE.W           loc_409E78
409AB8:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x409AC0)
409ABC:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
409ABE:  LDR             R0, [R0]; CWorld::Players ...
409AC0:  ADD.W           R0, R0, #0x194
409AC4:  B               loc_409E92
409AC6:  LDR.W           R0, [R4,#0xF8]
409ACA:  CMP             R0, #0
409ACC:  BEQ.W           loc_409F84
409AD0:  LDR.W           R1, [R4,#0x114]
409AD4:  LSRS            R2, R1, #2
409AD6:  CMP             R2, #0x7C ; '|'
409AD8:  BHI.W           loc_409F48
409ADC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x409AE4)
409AE0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
409AE2:  B               loc_409C80
409AE4:  ADDW            R1, R0, #0x73C
409AE8:  VLDR            S4, [R1]
409AEC:  VCMP.F32        S4, S0
409AF0:  VMRS            APSR_nzcv, FPSCR
409AF4:  BNE.W           loc_409EFC
409AF8:  ADD.W           R1, R0, #0x740
409AFC:  VLDR            S4, [R1]
409B00:  VCMP.F32        S4, S0
409B04:  VMRS            APSR_nzcv, FPSCR
409B08:  BNE.W           loc_409EFC
409B0C:  VCMPE.F32       S2, S0
409B10:  VMRS            APSR_nzcv, FPSCR
409B14:  BLT             loc_409B2A
409B16:  ADD.W           R1, R0, #0x738
409B1A:  VLDR            S2, [R1]
409B1E:  VCMPE.F32       S2, S0
409B22:  VMRS            APSR_nzcv, FPSCR
409B26:  BGE.W           loc_40A242
409B2A:  VLDR            S0, [R0,#0xDC]
409B2E:  VCMP.F32        S0, #0.0
409B32:  VMRS            APSR_nzcv, FPSCR
409B36:  BNE.W           loc_40A242
409B3A:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x409B46)
409B3E:  VLDR            S0, =50.0
409B42:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
409B44:  VLDR            S6, =-0.2
409B48:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
409B4A:  VLDR            S2, [R1]
409B4E:  VDIV.F32        S0, S2, S0
409B52:  VLDR            S2, =1000.0
409B56:  VMUL.F32        S0, S0, S2
409B5A:  VCVT.U32.F32    S0, S0
409B5E:  VMOV            R1, S0
409B62:  VCVT.F32.U32    S0, S0
409B66:  VLDR            S4, [R4,#0x114]
409B6A:  VLDR            S2, [R4,#0x110]
409B6E:  VCVT.F32.U32    S4, S4
409B72:  LDR.W           R2, [R4,#0x10C]
409B76:  VMUL.F32        S0, S0, S6
409B7A:  VADD.F32        S0, S4, S0
409B7E:  VLDR            S4, =0.0
409B82:  ADD             R1, R2
409B84:  STR.W           R1, [R4,#0x10C]
409B88:  VLDR            S6, [R0,#0xD8]
409B8C:  VMAX.F32        D0, D0, D2
409B90:  VADD.F32        S2, S6, S2
409B94:  VCVT.U32.F32    S0, S0
409B98:  VSTR            S2, [R4,#0x110]
409B9C:  VSTR            S0, [R4,#0x114]
409BA0:  B               loc_40A282
409BA2:  ADDW            R1, R0, #0x73C
409BA6:  VLDR            S2, [R1]
409BAA:  VCMPE.F32       S2, S0
409BAE:  VMRS            APSR_nzcv, FPSCR
409BB2:  BLT             loc_409BC8
409BB4:  ADD.W           R1, R0, #0x740
409BB8:  VLDR            S2, [R1]
409BBC:  VCMPE.F32       S2, S0
409BC0:  VMRS            APSR_nzcv, FPSCR
409BC4:  BGE.W           loc_409FA0
409BC8:  VLDR            S0, [R0,#0xDC]
409BCC:  VCMP.F32        S0, #0.0
409BD0:  VMRS            APSR_nzcv, FPSCR
409BD4:  BNE.W           loc_409FA0
409BD8:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x409BE4)
409BDC:  VLDR            S0, =50.0
409BE0:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
409BE2:  VLDR            S6, =-0.2
409BE6:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
409BE8:  VLDR            S2, [R1]
409BEC:  VDIV.F32        S0, S2, S0
409BF0:  VLDR            S2, =1000.0
409BF4:  VMUL.F32        S0, S0, S2
409BF8:  VCVT.U32.F32    S0, S0
409BFC:  VMOV            R1, S0
409C00:  VCVT.F32.U32    S0, S0
409C04:  VLDR            S4, [R4,#0x114]
409C08:  VLDR            S2, [R4,#0x108]
409C0C:  VCVT.F32.U32    S4, S4
409C10:  LDR.W           R2, [R4,#0x104]
409C14:  VMUL.F32        S0, S0, S6
409C18:  VADD.F32        S0, S4, S0
409C1C:  VLDR            S4, =0.0
409C20:  ADD             R1, R2
409C22:  STR.W           R1, [R4,#0x104]
409C26:  VLDR            S6, [R0,#0xD8]
409C2A:  VMAX.F32        D0, D0, D2
409C2E:  VADD.F32        S2, S6, S2
409C32:  VCVT.U32.F32    S0, S0
409C36:  VSTR            S2, [R4,#0x108]
409C3A:  VSTR            S0, [R4,#0x114]
409C3E:  B               loc_40A282
409C40:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409C50)
409C44:  MOV.W           R2, #0x194
409C48:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x409C52)
409C4C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409C4E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409C50:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409C52:  LDR             R1, [R1]; CWorld::Players ...
409C54:  LDR             R0, [R0]; CWorld::PlayerInFocus
409C56:  SMLABB.W        R0, R0, R2, R1
409C5A:  LDR             R0, [R0]
409C5C:  LDR.W           R1, [R0,#0xD8]
409C60:  MOVS            R0, #3
409C62:  B               loc_409EE6
409C64:  LDR.W           R0, [R4,#0xF8]
409C68:  CMP             R0, #0
409C6A:  BEQ.W           loc_409F84
409C6E:  LDR.W           R1, [R4,#0x114]
409C72:  LSRS            R2, R1, #2
409C74:  CMP             R2, #0x7C ; '|'
409C76:  BHI.W           loc_409F48
409C7A:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x409C82)
409C7E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
409C80:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
409C82:  VLDR            S0, =50.0
409C86:  VLDR            S2, [R0]
409C8A:  VDIV.F32        S0, S2, S0
409C8E:  VLDR            S2, =1000.0
409C92:  VMUL.F32        S0, S0, S2
409C96:  VCVT.U32.F32    S0, S0
409C9A:  VMOV            R0, S0
409C9E:  ADD             R0, R1
409CA0:  B               loc_409F8E
409CA2:  LDRB.W          R0, [R4,#0xD5]
409CA6:  CMP             R0, #0
409CA8:  BEQ.W           loc_40951E
409CAC:  MOV             R0, R11; this
409CAE:  BLX             j__ZN4CPad14GetExitVehicleEv; CPad::GetExitVehicle(void)
409CB2:  CMP             R0, #1
409CB4:  BNE.W           loc_40951E
409CB8:  LDR             R0, [R4]
409CBA:  LDRB.W          R1, [R0,#0x485]
409CBE:  LSLS            R1, R1, #0x1F
409CC0:  BEQ.W           loc_40951E
409CC4:  B               loc_4099B4
409CC6:  MOVS            R0, #0; this
409CC8:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
409CCC:  CMP             R0, #5
409CCE:  BNE             loc_409CF6
409CD0:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409CDC)
409CD2:  MOV.W           R2, #0x194; float
409CD6:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x409CDE)
409CD8:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409CDA:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409CDC:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409CDE:  LDR             R1, [R1]; CWorld::Players ...
409CE0:  LDR             R0, [R0]; CWorld::PlayerInFocus
409CE2:  SMULBB.W        R0, R0, R2
409CE6:  LDR             R0, [R1,R0]
409CE8:  LDR.W           R0, [R0,#0x590]
409CEC:  LDR.W           R1, [R0,#0xD8]; unsigned __int16
409CF0:  MOVS            R0, #byte_9; this
409CF2:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
409CF6:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409D02)
409CF8:  MOV.W           R2, #0x194
409CFC:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x409D04)
409CFE:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409D00:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409D02:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409D04:  LDR             R1, [R1]; CWorld::Players ...
409D06:  LDR             R0, [R0]; CWorld::PlayerInFocus
409D08:  SMULBB.W        R0, R0, R2
409D0C:  LDR             R0, [R1,R0]
409D0E:  CBZ             R0, loc_409D20
409D10:  LDRB.W          R1, [R0,#0x485]
409D14:  LSLS            R1, R1, #0x1F
409D16:  ITE NE
409D18:  LDRNE.W         R0, [R0,#0x590]
409D1C:  MOVEQ           R0, #0
409D1E:  B               loc_409D22
409D20:  MOVS            R0, #0; this
409D22:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
409D26:  CMP             R0, #1
409D28:  BNE             loc_409D50
409D2A:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409D36)
409D2C:  MOV.W           R2, #0x194; float
409D30:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x409D38)
409D32:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409D34:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409D36:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409D38:  LDR             R1, [R1]; CWorld::Players ...
409D3A:  LDR             R0, [R0]; CWorld::PlayerInFocus
409D3C:  SMULBB.W        R0, R0, R2
409D40:  LDR             R0, [R1,R0]
409D42:  LDR.W           R0, [R0,#0x590]
409D46:  LDR.W           R1, [R0,#0xD8]; unsigned __int16
409D4A:  MOVS            R0, #byte_4; this
409D4C:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
409D50:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409D5C)
409D52:  MOV.W           R2, #0x194
409D56:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x409D5E)
409D58:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409D5A:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409D5C:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409D5E:  LDR             R1, [R1]; CWorld::Players ...
409D60:  LDR             R0, [R0]; CWorld::PlayerInFocus
409D62:  SMULBB.W        R0, R0, R2
409D66:  LDR             R0, [R1,R0]
409D68:  CBZ             R0, loc_409D7A
409D6A:  LDRB.W          R1, [R0,#0x485]
409D6E:  LSLS            R1, R1, #0x1F
409D70:  ITE NE
409D72:  LDRNE.W         R0, [R0,#0x590]
409D76:  MOVEQ           R0, #0
409D78:  B               loc_409D7C
409D7A:  MOVS            R0, #0; this
409D7C:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
409D80:  CMP             R0, #2
409D82:  BNE             loc_409DAA
409D84:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409D90)
409D86:  MOV.W           R2, #0x194; float
409D8A:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x409D92)
409D8C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409D8E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409D90:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409D92:  LDR             R1, [R1]; CWorld::Players ...
409D94:  LDR             R0, [R0]; CWorld::PlayerInFocus
409D96:  SMULBB.W        R0, R0, R2
409D9A:  LDR             R0, [R1,R0]
409D9C:  LDR.W           R0, [R0,#0x590]
409DA0:  LDR.W           R1, [R0,#0xD8]; unsigned __int16
409DA4:  MOVS            R0, #byte_5; this
409DA6:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
409DAA:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409DBA)
409DAE:  MOV.W           R2, #0x194
409DB2:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x409DBC)
409DB6:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409DB8:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409DBA:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409DBC:  LDR             R1, [R1]; CWorld::Players ...
409DBE:  LDR             R0, [R0]; CWorld::PlayerInFocus
409DC0:  SMULBB.W        R0, R0, R2
409DC4:  LDR             R0, [R1,R0]
409DC6:  CBZ             R0, loc_409DD8
409DC8:  LDRB.W          R1, [R0,#0x485]
409DCC:  LSLS            R1, R1, #0x1F
409DCE:  ITE NE
409DD0:  LDRNE.W         R0, [R0,#0x590]
409DD4:  MOVEQ           R0, #0
409DD6:  B               loc_409DDA
409DD8:  MOVS            R0, #0; this
409DDA:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
409DDE:  CMP             R0, #4
409DE0:  BNE             loc_409E0C
409DE2:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409DF2)
409DE6:  MOV.W           R2, #0x194; float
409DEA:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x409DF4)
409DEE:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409DF0:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409DF2:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409DF4:  LDR             R1, [R1]; CWorld::Players ...
409DF6:  LDR             R0, [R0]; CWorld::PlayerInFocus
409DF8:  SMULBB.W        R0, R0, R2
409DFC:  LDR             R0, [R1,R0]
409DFE:  LDR.W           R0, [R0,#0x590]
409E02:  LDR.W           R1, [R0,#0xD8]; unsigned __int16
409E06:  MOVS            R0, #byte_6; this
409E08:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
409E0C:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409E1C)
409E10:  MOV.W           R2, #0x194
409E14:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x409E1E)
409E18:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409E1A:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409E1C:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409E1E:  LDR             R1, [R1]; CWorld::Players ...
409E20:  LDR             R0, [R0]; CWorld::PlayerInFocus
409E22:  SMULBB.W        R0, R0, R2
409E26:  LDR             R0, [R1,R0]
409E28:  CBZ             R0, loc_409E3A
409E2A:  LDRB.W          R1, [R0,#0x485]
409E2E:  LSLS            R1, R1, #0x1F
409E30:  ITE NE
409E32:  LDRNE.W         R0, [R0,#0x590]
409E36:  MOVEQ           R0, #0
409E38:  B               loc_409E3C
409E3A:  MOVS            R0, #0; this
409E3C:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
409E40:  CMP             R0, #5
409E42:  BEQ.W           loc_40A0A6
409E46:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409E56)
409E4A:  MOV.W           R2, #0x194
409E4E:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x409E58)
409E52:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409E54:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409E56:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409E58:  LDR             R1, [R1]; CWorld::Players ...
409E5A:  LDR             R0, [R0]; CWorld::PlayerInFocus
409E5C:  SMULBB.W        R0, R0, R2
409E60:  LDR             R0, [R1,R0]
409E62:  CMP             R0, #0
409E64:  BEQ.W           loc_40A09C
409E68:  LDRB.W          R1, [R0,#0x485]
409E6C:  LSLS            R1, R1, #0x1F
409E6E:  ITE NE
409E70:  LDRNE.W         R0, [R0,#0x590]
409E74:  MOVEQ           R0, #0
409E76:  B               loc_40A09E
409E78:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409E88)
409E7C:  MOV.W           R2, #0x194
409E80:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x409E8A)
409E84:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409E86:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409E88:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409E8A:  LDR             R1, [R1]; CWorld::Players ...
409E8C:  LDR             R0, [R0]; CWorld::PlayerInFocus
409E8E:  SMLABB.W        R0, R0, R2, R1
409E92:  LDR             R0, [R0]
409E94:  LDR.W           R0, [R0,#0x444]
409E98:  VLDR            S0, [R0,#0x14]
409E9C:  VCMPE.F32       S0, S16
409EA0:  VMRS            APSR_nzcv, FPSCR
409EA4:  BLE.W           loc_40A2CC; jumptable 0040A192 case 4
409EA8:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x409EB0)
409EAC:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
409EAE:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
409EB0:  LDR             R0, [R0]; CHID::currentInstanceIndex
409EB2:  CMP             R0, #1
409EB4:  BNE             loc_409EC4
409EB6:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x409EBE)
409EBA:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
409EBC:  LDR             R0, [R0]; CWorld::Players ...
409EBE:  ADD.W           R0, R0, #0x194
409EC2:  B               loc_409EDE
409EC4:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x409ED4)
409EC8:  MOV.W           R2, #0x194; float
409ECC:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x409ED6)
409ED0:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
409ED2:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
409ED4:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
409ED6:  LDR             R1, [R1]; CWorld::Players ...
409ED8:  LDR             R0, [R0]; CWorld::PlayerInFocus
409EDA:  SMLABB.W        R0, R0, R2, R1
409EDE:  LDR             R0, [R0]
409EE0:  LDR.W           R1, [R0,#0xD8]; unsigned __int16
409EE4:  MOVS            R0, #(off_18+2); this
409EE6:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
409EEA:  B               loc_40A2CC; jumptable 0040A192 case 4
409EEC:  DCFS 50.0
409EF0:  DCFS -0.2
409EF4:  DCFS 1000.0
409EF8:  DCFS 0.0
409EFC:  LDR.W           R0, [R4,#0x10C]
409F00:  LSRS            R1, R0, #4
409F02:  CMP             R1, #0x7C ; '|'
409F04:  BLS             loc_409F3C
409F06:  MOV             R1, #0x10624DD3
409F0E:  UMULL.W         R1, R2, R0, R1
409F12:  LSRS            R1, R2, #6
409F14:  VMOV            S0, R1
409F18:  VCVT.F32.S32    S0, S0
409F1C:  LDR.W           R2, [R4,#0x110]; float
409F20:  STR.W           R0, [R4,#0x128]
409F24:  MOVS            R0, #word_12; this
409F26:  STR.W           R2, [R4,#0x12C]
409F2A:  VMOV            R1, S0; unsigned __int16
409F2E:  BLX             j__ZN6CStats16SetNewRecordStatEtf; CStats::SetNewRecordStat(ushort,float)
409F32:  LDR.W           R1, [R4,#0x110]; unsigned __int16
409F36:  MOVS            R0, #(byte_9+2); this
409F38:  BLX             j__ZN6CStats16SetNewRecordStatEtf; CStats::SetNewRecordStat(ushort,float)
409F3C:  MOVS            R0, #0
409F3E:  STR.W           R0, [R4,#0x10C]
409F42:  STR.W           R0, [R4,#0x110]
409F46:  B               loc_40A27E
409F48:  CMP.W           R0, #0x7D0
409F4C:  BCC             loc_409F84
409F4E:  MOV             R1, #0x10624DD3
409F56:  UMULL.W         R1, R2, R0, R1
409F5A:  LSRS            R1, R2, #6
409F5C:  VMOV            S0, R1
409F60:  VCVT.F32.S32    S0, S0
409F64:  LDR.W           R2, [R4,#0xFC]; float
409F68:  STR.W           R0, [R4,#0x118]
409F6C:  MOVS            R0, #(word_12+1); this
409F6E:  STR.W           R2, [R4,#0x11C]
409F72:  VMOV            R1, S0; unsigned __int16
409F76:  BLX             j__ZN6CStats16SetNewRecordStatEtf; CStats::SetNewRecordStat(ushort,float)
409F7A:  LDR.W           R1, [R4,#0xFC]; unsigned __int16
409F7E:  MOVS            R0, #(byte_9+3); this
409F80:  BLX             j__ZN6CStats16SetNewRecordStatEtf; CStats::SetNewRecordStat(ushort,float)
409F84:  MOVS            R0, #0
409F86:  STR.W           R0, [R4,#0xF8]
409F8A:  STR.W           R0, [R4,#0xFC]
409F8E:  STR.W           R0, [R4,#0x114]
409F92:  MOVS            R0, #0
409F94:  STR.W           R0, [R4,#0x104]
409F98:  ADD.W           R0, R4, #0x10C
409F9C:  B.W             loc_40910E
409FA0:  LDR.W           R0, [R4,#0x104]
409FA4:  CMP             R0, #0
409FA6:  BEQ.W           loc_409202
409FAA:  LDR.W           R1, [R4,#0x114]
409FAE:  LSRS            R2, R1, #2
409FB0:  CMP             R2, #0x7C ; '|'
409FB2:  BHI.W           loc_40A29A
409FB6:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x409FBE)
409FBA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
409FBC:  B               loc_40A25E
409FBE:  ALIGN 0x10
409FC0:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4090E2
409FC4:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x40915E
409FC8:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x40922E
409FCC:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x4092DC
409FD0:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x409338
409FD4:  DCD _ZN6CTimer14m_FrameCounterE_ptr - 0x409424
409FD8:  DCD ThePaths_ptr - 0x40943E
409FDC:  DCD TheCamera_ptr - 0x4094DE
409FE0:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x409558
409FE4:  DCD _ZN21CTaskSimpleHoldEntity15m_nPutDownTimerE_ptr - 0x40956C
409FE8:  DCD _ZN21CTaskSimpleHoldEntity15m_nPutDownTimerE_ptr - 0x4095EE
409FEC:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x40960C
409FF0:  DCD _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x409612
409FF4:  DCD TheCamera_ptr - 0x409642
409FF8:  DCD TheCamera_ptr - 0x40966E
409FFC:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x4096B8
40A000:  DCD _ZN6CWorld7PlayersE_ptr - 0x4096BA
40A004:  DCD _ZN6CWorld7PlayersE_ptr - 0x4096E6
40A008:  DCD _ZN6CTimer14m_FrameCounterE_ptr - 0x409716
40A00C:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x409718
40A010:  DCD _ZN6CWorld7PlayersE_ptr - 0x409732
40A014:  DCD _ZN6CWorld7PlayersE_ptr - 0x40982C
40A018:  DCD _ZN4CHID20currentInstanceIndexE_ptr - 0x409850
40A01C:  DCD _ZN6CWorld7PlayersE_ptr - 0x409852
40A020:  DCD _ZN4CHID20currentInstanceIndexE_ptr - 0x409894
40A024:  DCD _ZN6CWorld7PlayersE_ptr - 0x4098A4
40A028:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x4098D8
40A02C:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x409912
40A030:  DCD _ZN6CWorld7PlayersE_ptr - 0x409914
40A034:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x40993C
40A038:  DCD _ZN6CWorld7PlayersE_ptr - 0x40993E
40A03C:  DCD _ZN4CHID20currentInstanceIndexE_ptr - 0x409966
40A040:  DCD _ZN6CWorld7PlayersE_ptr - 0x409976
40A044:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x409A86
40A048:  DCD _ZN6CWorld7PlayersE_ptr - 0x409A88
40A04C:  DCD _ZN4CHID20currentInstanceIndexE_ptr - 0x409AB0
40A050:  DCD _ZN6CWorld7PlayersE_ptr - 0x409AC0
40A054:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x409AE4
40A058:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x409B46
40A05C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x409BE4
40A060:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x409C50
40A064:  DCD _ZN6CWorld7PlayersE_ptr - 0x409C52
40A068:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x409C82
40A06C:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x409CDC
40A070:  DCD _ZN6CWorld7PlayersE_ptr - 0x409CDE
40A074:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x409D02
40A078:  DCD _ZN6CWorld7PlayersE_ptr - 0x409D04
40A07C:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x409D36
40A080:  DCD _ZN6CWorld7PlayersE_ptr - 0x409D38
40A084:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x409D5C
40A088:  DCD _ZN6CWorld7PlayersE_ptr - 0x409D5E
40A08C:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x409D90
40A090:  DCD _ZN6CWorld7PlayersE_ptr - 0x409D92
40A094:  DCFS 0.2
40A098:  DCFS 0.0
40A09C:  MOVS            R0, #0; this
40A09E:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
40A0A2:  CMP             R0, #3
40A0A4:  BNE             loc_40A116
40A0A6:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40A0B6)
40A0AA:  MOV.W           R2, #0x194; float
40A0AE:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x40A0B8)
40A0B2:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
40A0B4:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40A0B6:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
40A0B8:  LDR             R1, [R1]; CWorld::Players ...
40A0BA:  LDR             R0, [R0]; CWorld::PlayerInFocus
40A0BC:  SMULBB.W        R0, R0, R2
40A0C0:  LDR             R0, [R1,R0]
40A0C2:  LDR.W           R0, [R0,#0x590]
40A0C6:  VLDR            S0, [R0,#0x48]
40A0CA:  VLDR            S2, [R0,#0x4C]
40A0CE:  VMUL.F32        S0, S0, S0
40A0D2:  VLDR            S4, [R0,#0x50]
40A0D6:  VMUL.F32        S2, S2, S2
40A0DA:  VMUL.F32        S4, S4, S4
40A0DE:  VADD.F32        S0, S0, S2
40A0E2:  VLDR            S2, =0.2
40A0E6:  VADD.F32        S0, S0, S4
40A0EA:  VSQRT.F32       S0, S0
40A0EE:  VCMPE.F32       S0, S2
40A0F2:  VMRS            APSR_nzcv, FPSCR
40A0F6:  BLE             loc_40A116
40A0F8:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x40A104)
40A0FC:  VMOV.F32        S0, #16.0
40A100:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
40A102:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
40A104:  VLDR            S2, [R0]
40A108:  MOVS            R0, #(dword_A8+1); this
40A10A:  VMUL.F32        S0, S2, S0
40A10E:  VMOV            R1, S0; unsigned __int16
40A112:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
40A116:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40A126)
40A11A:  MOV.W           R2, #0x194
40A11E:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x40A128)
40A122:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
40A124:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40A126:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
40A128:  LDR             R1, [R1]; CWorld::Players ...
40A12A:  LDR             R0, [R0]; CWorld::PlayerInFocus
40A12C:  SMULBB.W        R0, R0, R2
40A130:  LDR             R0, [R1,R0]
40A132:  CBZ             R0, loc_40A14E
40A134:  LDRB.W          R1, [R0,#0x485]
40A138:  LSLS            R1, R1, #0x1F
40A13A:  ITT NE
40A13C:  LDRNE.W         R1, [R0,#0x590]
40A140:  CMPNE           R1, #0
40A142:  BEQ             loc_40A14E
40A144:  LDR.W           R1, [R1,#0x5A0]
40A148:  CMP             R1, #6
40A14A:  BEQ.W           loc_40A2CC; jumptable 0040A192 case 4
40A14E:  LDR.W           R1, [R0,#0x590]
40A152:  VLDR            S0, [R1,#0x48]
40A156:  VLDR            S2, [R1,#0x4C]
40A15A:  VMUL.F32        S0, S0, S0
40A15E:  VLDR            S4, [R1,#0x50]
40A162:  VMUL.F32        S2, S2, S2
40A166:  VMUL.F32        S4, S4, S4
40A16A:  VADD.F32        S0, S0, S2
40A16E:  VADD.F32        S0, S0, S4
40A172:  VCMPE.F32       S0, #0.0
40A176:  VMRS            APSR_nzcv, FPSCR
40A17A:  BLE.W           loc_40A2CC; jumptable 0040A192 case 4
40A17E:  LDR.W           R0, [R0,#0x484]
40A182:  LSLS            R0, R0, #0x17
40A184:  AND.W           R0, R1, R0,ASR#31; this
40A188:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
40A18C:  SUBS            R0, #2; switch 4 cases
40A18E:  CMP             R0, #3
40A190:  BHI             def_40A192; jumptable 0040A192 default case
40A192:  TBB.W           [PC,R0]; switch jump
40A196:  DCB 0x34; jump table for switch statement
40A197:  DCB 2
40A198:  DCB 0x9B
40A199:  DCB 2
40A19A:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40A1AA); jumptable 0040A192 cases 3,5
40A19E:  MOV.W           R2, #0x194
40A1A2:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x40A1AC)
40A1A6:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
40A1A8:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40A1AA:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
40A1AC:  LDR             R1, [R1]; CWorld::Players ...
40A1AE:  LDR             R0, [R0]; CWorld::PlayerInFocus
40A1B0:  SMULBB.W        R0, R0, R2
40A1B4:  LDR             R0, [R1,R0]
40A1B6:  CMP             R0, #0
40A1B8:  ITT NE
40A1BA:  LDRBNE.W        R1, [R0,#0x485]
40A1BE:  MOVSNE.W        R1, R1,LSL#31; CVehicle *
40A1C2:  BNE             loc_40A238
40A1C4:  MOVS            R0, #0; this
40A1C6:  BLX             j__ZN6CStats21UpdateStatsWhenFlyingEP8CVehicle; CStats::UpdateStatsWhenFlying(CVehicle *)
40A1CA:  B               loc_40A2CC; jumptable 0040A192 case 4
40A1CC:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40A1DC); jumptable 0040A192 default case
40A1D0:  MOV.W           R2, #0x194
40A1D4:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x40A1DE)
40A1D8:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
40A1DA:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40A1DC:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
40A1DE:  LDR             R1, [R1]; CWorld::Players ...
40A1E0:  LDR             R0, [R0]; CWorld::PlayerInFocus
40A1E2:  SMULBB.W        R0, R0, R2
40A1E6:  LDR             R0, [R1,R0]
40A1E8:  CMP             R0, #0
40A1EA:  ITT NE
40A1EC:  LDRBNE.W        R1, [R0,#0x485]
40A1F0:  MOVSNE.W        R1, R1,LSL#31; CVehicle *
40A1F4:  BNE             loc_40A290
40A1F6:  MOVS            R0, #0; this
40A1F8:  BLX             j__ZN6CStats22UpdateStatsWhenDrivingEP8CVehicle; CStats::UpdateStatsWhenDriving(CVehicle *)
40A1FC:  B               loc_40A2CC; jumptable 0040A192 case 4
40A1FE:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40A20E); jumptable 0040A192 case 2
40A202:  MOV.W           R2, #0x194
40A206:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x40A210)
40A20A:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
40A20C:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40A20E:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
40A210:  LDR             R1, [R1]; CWorld::Players ...
40A212:  LDR             R0, [R0]; CWorld::PlayerInFocus
40A214:  SMULBB.W        R0, R0, R2
40A218:  LDR             R1, [R1,R0]; CBike *
40A21A:  LDR.W           R0, [R1,#0x590]
40A21E:  LDR.W           R2, [R0,#0x5A4]
40A222:  CMP             R2, #0xA
40A224:  BEQ             loc_40A2CC; jumptable 0040A192 case 4
40A226:  CMP             R1, #0
40A228:  BEQ             loc_40A2C6
40A22A:  LDRB.W          R1, [R1,#0x485]
40A22E:  AND.W           R1, R1, #1
40A232:  NEGS            R1, R1
40A234:  ANDS            R0, R1
40A236:  B               loc_40A2C8
40A238:  LDR.W           R0, [R0,#0x590]; this
40A23C:  BLX             j__ZN6CStats21UpdateStatsWhenFlyingEP8CVehicle; CStats::UpdateStatsWhenFlying(CVehicle *)
40A240:  B               loc_40A2CC; jumptable 0040A192 case 4
40A242:  LDR.W           R0, [R4,#0x10C]
40A246:  CMP             R0, #0
40A248:  BEQ.W           loc_409F3C
40A24C:  LDR.W           R1, [R4,#0x114]
40A250:  LSRS            R2, R1, #2
40A252:  CMP             R2, #0x7C ; '|'
40A254:  BHI.W           loc_40A630
40A258:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x40A260)
40A25C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
40A25E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
40A260:  VLDR            S0, =50.0
40A264:  VLDR            S2, [R0]
40A268:  VDIV.F32        S0, S2, S0
40A26C:  VLDR            S2, =1000.0
40A270:  VMUL.F32        S0, S0, S2
40A274:  VCVT.U32.F32    S0, S0
40A278:  VMOV            R0, S0
40A27C:  ADD             R0, R1
40A27E:  STR.W           R0, [R4,#0x114]
40A282:  MOVS            R0, #0
40A284:  STR.W           R0, [R4,#0xF8]
40A288:  ADD.W           R0, R4, #0x100
40A28C:  B.W             loc_40910E
40A290:  LDR.W           R0, [R0,#0x590]; this
40A294:  BLX             j__ZN6CStats22UpdateStatsWhenDrivingEP8CVehicle; CStats::UpdateStatsWhenDriving(CVehicle *)
40A298:  B               loc_40A2CC; jumptable 0040A192 case 4
40A29A:  MOVW            R1, #0x1388
40A29E:  CMP             R0, R1
40A2A0:  BCC.W           loc_409202
40A2A4:  MOV             R1, #0x10624DD3
40A2AC:  UMULL.W         R1, R2, R0, R1
40A2B0:  LSRS            R1, R2, #6
40A2B2:  VMOV            S0, R1
40A2B6:  VCVT.F32.S32    S0, S0
40A2BA:  LDR.W           R2, [R4,#0x108]
40A2BE:  STRD.W          R0, R2, [R4,#0x120]
40A2C2:  B.W             loc_4091EE
40A2C6:  MOVS            R0, #0; this
40A2C8:  BLX             j__ZN6CStats26UpdateStatsWhenOnMotorBikeEP5CBike; CStats::UpdateStatsWhenOnMotorBike(CBike *)
40A2CC:  LDR             R0, [R4]; jumptable 0040A192 case 4
40A2CE:  LDR.W           R0, [R0,#0x444]
40A2D2:  LDR             R0, [R0]
40A2D4:  LDR             R0, [R0,#0x2C]; this
40A2D6:  CBZ             R0, loc_40A2DE
40A2D8:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
40A2DC:  CBZ             R0, loc_40A31A
40A2DE:  MOVS            R0, #0
40A2E0:  STR.W           R0, [R4,#0x148]
40A2E4:  ADD.W           R0, R4, #0x158; this
40A2E8:  MOV             R1, R10; int
40A2EA:  MOV             R2, R11; CPad *
40A2EC:  BLX             j__ZN16CPlayerCrossHair6UpdateEiP4CPad; CPlayerCrossHair::Update(int,CPad *)
40A2F0:  LDRD.W          R0, R1, [R4,#0xB8]
40A2F4:  MOV             R2, #0x3B9AC9FF
40A2FC:  NOP
40A2FE:  NOP
40A300:  NOP
40A302:  NOP
40A304:  NOP
40A306:  MOV             R2, R1
40A308:  STRD.W          R0, R2, [R4,#0xB8]
40A30C:  ADD             SP, SP, #0x58 ; 'X'
40A30E:  VPOP            {D8-D14}
40A312:  ADD             SP, SP, #4
40A314:  POP.W           {R8-R11}
40A318:  POP             {R4-R7,PC}; float
40A31A:  LDR.W           R0, =(byte_95ABA4 - 0x40A322)
40A31E:  ADD             R0, PC; byte_95ABA4
40A320:  LDRB            R0, [R0]
40A322:  DMB.W           ISH
40A326:  TST.W           R0, #1
40A32A:  BNE             loc_40A342
40A32C:  LDR.W           R0, =(byte_95ABA4 - 0x40A334)
40A330:  ADD             R0, PC; byte_95ABA4 ; __guard *
40A332:  BLX             j___cxa_guard_acquire
40A336:  CBZ             R0, loc_40A342
40A338:  LDR.W           R0, =(byte_95ABA4 - 0x40A340)
40A33C:  ADD             R0, PC; byte_95ABA4 ; __guard *
40A33E:  BLX             j___cxa_guard_release
40A342:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x40A356)
40A346:  MOVW            R2, #0x1759
40A34A:  LDR.W           R1, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x40A358)
40A34E:  MOVT            R2, #0xD1B7
40A352:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
40A354:  ADD             R1, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
40A356:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
40A358:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds ...
40A35A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
40A35C:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds
40A35E:  UMULL.W         R0, R3, R0, R2
40A362:  UMULL.W         R0, R1, R1, R2
40A366:  LSRS            R0, R3, #0xE
40A368:  CMP.W           R0, R1,LSR#14
40A36C:  BEQ.W           loc_40A4CC
40A370:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40A380)
40A374:  MOV.W           R2, #0x194
40A378:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x40A382)
40A37C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
40A37E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40A380:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
40A382:  LDR             R1, [R1]; CWorld::Players ...
40A384:  LDR             R0, [R0]; CWorld::PlayerInFocus
40A386:  SMULBB.W        R0, R0, R2
40A38A:  LDR             R0, [R1,R0]
40A38C:  CBZ             R0, loc_40A3AC
40A38E:  LDRB.W          R1, [R0,#0x485]
40A392:  LSLS            R1, R1, #0x1F
40A394:  ITT NE
40A396:  LDRNE.W         R2, [R0,#0x590]
40A39A:  CMPNE           R2, #0
40A39C:  BNE             loc_40A3B6
40A39E:  LDR             R2, [R0,#0x14]
40A3A0:  ADD.W           R1, R2, #0x30 ; '0'
40A3A4:  CMP             R2, #0
40A3A6:  IT EQ
40A3A8:  ADDEQ           R1, R0, #4
40A3AA:  B               loc_40A3C2
40A3AC:  VLDR            S0, =0.0
40A3B0:  VMOV.I32        D16, #0
40A3B4:  B               loc_40A3CA
40A3B6:  LDR             R3, [R2,#0x14]
40A3B8:  ADD.W           R1, R3, #0x30 ; '0'
40A3BC:  CMP             R3, #0
40A3BE:  IT EQ
40A3C0:  ADDEQ           R1, R2, #4
40A3C2:  VLDR            D16, [R1,#4]
40A3C6:  VLDR            S0, [R1]
40A3CA:  LDR.W           R1, =(dword_95AB98 - 0x40A3D6)
40A3CE:  MOVS            R2, #0
40A3D0:  MOVS            R3, #0
40A3D2:  ADD             R1, PC; dword_95AB98
40A3D4:  VLDR            S2, [R1]
40A3D8:  VLDR            D17, [R1,#4]
40A3DC:  VSUB.F32        S0, S2, S0
40A3E0:  LDR.W           R1, =(byte_6AAD50 - 0x40A3EC)
40A3E4:  VSUB.F32        D16, D17, D16
40A3E8:  ADD             R1, PC; byte_6AAD50
40A3EA:  VMUL.F32        D1, D16, D16
40A3EE:  VMUL.F32        S0, S0, S0
40A3F2:  VADD.F32        S0, S0, S2
40A3F6:  VADD.F32        S0, S0, S3
40A3FA:  VMOV.F32        S2, #10.0
40A3FE:  VSQRT.F32       S0, S0
40A402:  VCMPE.F32       S0, S2
40A406:  VMRS            APSR_nzcv, FPSCR
40A40A:  IT GE
40A40C:  MOVGE           R2, #1
40A40E:  CMP             R0, #0
40A410:  STRB            R2, [R1]
40A412:  BEQ             loc_40A432
40A414:  LDRB.W          R1, [R0,#0x485]
40A418:  LSLS            R1, R1, #0x1F
40A41A:  ITT NE
40A41C:  LDRNE.W         R2, [R0,#0x590]
40A420:  CMPNE           R2, #0
40A422:  BNE             loc_40A448
40A424:  LDR             R2, [R0,#0x14]
40A426:  ADD.W           R1, R2, #0x30 ; '0'
40A42A:  CMP             R2, #0
40A42C:  IT EQ
40A42E:  ADDEQ           R1, R0, #4
40A430:  B               loc_40A454
40A432:  LDR.W           R0, =(dword_95AB98 - 0x40A442)
40A436:  MOVW            R8, #0xFFFF
40A43A:  MOVS            R2, #0
40A43C:  MOVS            R1, #0
40A43E:  ADD             R0, PC; dword_95AB98
40A440:  STRD.W          R3, R3, [R0]
40A444:  STR             R3, [R0,#(dword_95ABA0 - 0x95AB98)]
40A446:  B               loc_40A496
40A448:  LDR             R3, [R2,#0x14]
40A44A:  ADD.W           R1, R3, #0x30 ; '0'
40A44E:  CMP             R3, #0
40A450:  IT EQ
40A452:  ADDEQ           R1, R2, #4
40A454:  LDR.W           R2, =(dword_95AB98 - 0x40A460)
40A458:  LDRD.W          R3, R6, [R1]
40A45C:  ADD             R2, PC; dword_95AB98
40A45E:  LDR             R1, [R1,#8]
40A460:  STRD.W          R3, R6, [R2]
40A464:  STR             R1, [R2,#(dword_95ABA0 - 0x95AB98)]
40A466:  LDRB.W          R1, [R0,#0x485]
40A46A:  LSLS            R1, R1, #0x1F
40A46C:  ITT NE
40A46E:  LDRNE.W         R1, [R0,#0x590]
40A472:  CMPNE           R1, #0
40A474:  BNE             loc_40A484
40A476:  LDR             R1, [R0,#0x14]
40A478:  ADD.W           R3, R1, #0x30 ; '0'
40A47C:  CMP             R1, #0
40A47E:  IT EQ
40A480:  ADDEQ           R3, R0, #4
40A482:  B               loc_40A490
40A484:  LDR             R0, [R1,#0x14]
40A486:  ADD.W           R3, R0, #0x30 ; '0'
40A48A:  CMP             R0, #0
40A48C:  IT EQ
40A48E:  ADDEQ           R3, R1, #4
40A490:  LDM             R3, {R1-R3}
40A492:  MOVW            R8, #0xFFFF
40A496:  LDR.W           R12, =(ThePaths_ptr - 0x40A4A6)
40A49A:  MOVS            R0, #0
40A49C:  MOVS            R5, #0
40A49E:  MOVT            R0, #0x4270
40A4A2:  ADD             R12, PC; ThePaths_ptr
40A4A4:  STRD.W          R5, R0, [SP,#0xB0+var_B0]
40A4A8:  MOVS            R6, #1
40A4AA:  LDR.W           R0, [R12]; ThePaths
40A4AE:  STRD.W          R6, R5, [SP,#0xB0+var_A8]
40A4B2:  STRD.W          R5, R5, [SP,#0xB0+var_A0]
40A4B6:  STR             R5, [SP,#0xB0+var_98]
40A4B8:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
40A4BC:  LDR.W           R1, =(byte_6AAD51 - 0x40A4C8)
40A4C0:  UXTH            R0, R0
40A4C2:  CMP             R0, R8
40A4C4:  ADD             R1, PC; byte_6AAD51
40A4C6:  IT NE
40A4C8:  MOVNE           R5, #1
40A4CA:  STRB            R5, [R1]
40A4CC:  LDR             R0, [R4]
40A4CE:  LDR.W           R0, [R0,#0x444]
40A4D2:  LDR             R0, [R0]
40A4D4:  LDR             R0, [R0,#0x2C]
40A4D6:  SUBS            R0, #1
40A4D8:  CMP             R0, #5
40A4DA:  BHI             loc_40A4EA
40A4DC:  ADR.W           R1, dword_40AD68
40A4E0:  ADD.W           R0, R1, R0,LSL#2
40A4E4:  VLDR            S0, [R0]
40A4E8:  B               loc_40A4EE
40A4EA:  VLDR            S0, =0.0
40A4EE:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x40A4FA)
40A4F2:  VLDR            S2, =10000.0
40A4F6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
40A4F8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
40A4FA:  VLDR            S4, [R0]
40A4FE:  VDIV.F32        S4, S4, S2
40A502:  VLDR            S2, [R4,#0x148]
40A506:  VSUB.F32        S0, S0, S2
40A50A:  VMUL.F32        S16, S0, S4
40A50E:  VCMPE.F32       S16, #0.0
40A512:  VMRS            APSR_nzcv, FPSCR
40A516:  BGE             loc_40A522
40A518:  VADD.F32        S0, S16, S2
40A51C:  VSTR            S0, [R4,#0x148]
40A520:  B               loc_40A2E4
40A522:  LDR.W           R0, =(byte_6AAD50 - 0x40A52A)
40A526:  ADD             R0, PC; byte_6AAD50
40A528:  LDRB            R0, [R0]
40A52A:  CMP             R0, #0
40A52C:  BEQ.W           loc_40A2E4
40A530:  LDR.W           R0, =(byte_6AAD51 - 0x40A538)
40A534:  ADD             R0, PC; byte_6AAD51
40A536:  LDRB            R0, [R0]; this
40A538:  CMP             R0, #0
40A53A:  BEQ.W           loc_40A2E4
40A53E:  BLX             j__ZN10CCullZones8NoPoliceEv; CCullZones::NoPolice(void)
40A542:  CMP             R0, #0
40A544:  BNE.W           loc_40A2E4
40A548:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x40A550)
40A54C:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr ; this
40A54E:  LDR             R5, [R0]; CGame::currArea ...
40A550:  BLX             j__ZN10CCullZones17PoliceAbandonCarsEv; CCullZones::PoliceAbandonCars(void)
40A554:  LDR             R1, [R5]; CGame::currArea
40A556:  CMP             R1, #0
40A558:  IT EQ
40A55A:  CMPEQ           R0, #0
40A55C:  BNE.W           loc_40A2E4
40A560:  VLDR            S2, [R4,#0x148]
40A564:  B               loc_40A518
40A566:  MOVS            R0, #0
40A568:  VMOV.F32        S0, #-10.0
40A56C:  STRD.W          R0, R0, [SP,#0xB0+var_78]
40A570:  LDR             R0, [R4]
40A572:  VLDR            S22, =60.0
40A576:  LDR             R1, [R0,#0x14]
40A578:  ADD.W           R2, R1, #0x30 ; '0'
40A57C:  CMP             R1, #0
40A57E:  IT EQ
40A580:  ADDEQ           R2, R0, #4
40A582:  VLDR            S2, [R2]
40A586:  VLDR            S4, [R2,#4]
40A58A:  VADD.F32        S6, S2, S0
40A58E:  VADD.F32        S24, S4, S0
40A592:  VDIV.F32        S6, S6, S20
40A596:  VADD.F32        S6, S6, S22
40A59A:  VMOV            R0, S6; x
40A59E:  VMOV.F32        S6, #10.0
40A5A2:  VADD.F32        S26, S2, S6
40A5A6:  VADD.F32        S28, S4, S6
40A5AA:  BLX             floorf
40A5AE:  VDIV.F32        S0, S24, S20
40A5B2:  MOV             R5, R0
40A5B4:  VADD.F32        S0, S0, S22
40A5B8:  VMOV            R0, S0; x
40A5BC:  BLX             floorf
40A5C0:  VDIV.F32        S0, S28, S20
40A5C4:  LDR.W           R8, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x40A5CC)
40A5C8:  ADD             R8, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
40A5CA:  VADD.F32        S0, S0, S22
40A5CE:  VDIV.F32        S2, S26, S20
40A5D2:  VMOV            R1, S0
40A5D6:  VADD.F32        S2, S2, S22
40A5DA:  VMOV            S24, R0
40A5DE:  VMOV            S22, R5
40A5E2:  MOVW            R5, #0xFFFF
40A5E6:  VMOV            R6, S2
40A5EA:  MOV             R0, R1; x
40A5EC:  BLX             floorf
40A5F0:  VMOV            S20, R0
40A5F4:  MOV             R0, R6; x
40A5F6:  BLX             floorf
40A5FA:  VCVT.S32.F32    S2, S20
40A5FE:  VMOV            S0, R0
40A602:  LDR.W           R0, [R8]; CWorld::ms_nCurrentScanCode ...
40A606:  VCVT.S32.F32    S20, S0
40A60A:  VCVT.S32.F32    S0, S24
40A60E:  LDRH            R0, [R0]; this
40A610:  VCVT.S32.F32    S22, S22
40A614:  CMP             R0, R5
40A616:  VMOV            R1, S2
40A61A:  STR             R1, [SP,#0xB0+var_88]
40A61C:  VMOV            R1, S0
40A620:  STR             R1, [SP,#0xB0+var_80]
40A622:  STRD.W          R11, R10, [SP,#0xB0+var_90]
40A626:  BNE             loc_40A684
40A628:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
40A62C:  MOVS            R0, #1
40A62E:  B               loc_40A686
40A630:  CMP.W           R0, #0x7D0
40A634:  BCS.W           loc_409F06
40A638:  B               loc_409F3C
40A63A:  LDR.W           R0, =(_ZN21CTaskSimpleHoldEntity15m_nPutDownTimerE_ptr - 0x40A642)
40A63E:  ADD             R0, PC; _ZN21CTaskSimpleHoldEntity15m_nPutDownTimerE_ptr
40A640:  LDR             R0, [R0]; CTaskSimpleHoldEntity::m_nPutDownTimer ...
40A642:  LDR             R0, [R0]; CTaskSimpleHoldEntity::m_nPutDownTimer
40A644:  CMP             R0, #0
40A646:  BNE.W           loc_4095F6
40A64A:  MOVS            R0, #dword_34; this
40A64C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
40A650:  MOV             R1, R8
40A652:  MOVS            R2, #0x51 ; 'Q'
40A654:  MOV             R5, R0
40A656:  BLX             j__ZN26CTaskComplexGoPickUpEntityC2EP7CEntity12AssocGroupId; CTaskComplexGoPickUpEntity::CTaskComplexGoPickUpEntity(CEntity *,AssocGroupId)
40A65A:  ADD             R0, SP, #0xB0+var_70; this
40A65C:  MOVS            R1, #3; int
40A65E:  MOV             R2, R5; CTask *
40A660:  MOVS            R3, #0; bool
40A662:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
40A666:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x40A66E)
40A66A:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
40A66C:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
40A66E:  LDR             R0, [R0]; CHID::currentInstanceIndex
40A670:  CMP             R0, #1
40A672:  BNE.W           loc_40A86E
40A676:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x40A67E)
40A67A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
40A67C:  LDR             R0, [R0]; CWorld::Players ...
40A67E:  ADD.W           R0, R0, #0x194
40A682:  B               loc_40A888
40A684:  ADDS            R0, #1
40A686:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x40A68E)
40A68A:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
40A68C:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
40A68E:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
40A690:  LDR             R0, [SP,#0xB0+var_88]
40A692:  LDR             R1, [SP,#0xB0+var_80]
40A694:  CMP             R1, R0
40A696:  BGT             loc_40A6F4
40A698:  VMOV            R0, S22
40A69C:  ADD.W           R10, SP, #0xB0+var_74
40A6A0:  VMOV            R11, S20
40A6A4:  ADD.W           R8, SP, #0xB0+var_78
40A6A8:  STR             R0, [SP,#0xB0+var_84]
40A6AA:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x40A6B2)
40A6AE:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
40A6B0:  LDR.W           R9, [R0]; CWorld::ms_aRepeatSectors ...
40A6B4:  LDR             R0, [SP,#0xB0+var_84]
40A6B6:  CMP             R0, R11
40A6B8:  BGT             loc_40A6E4
40A6BA:  LDR             R0, [SP,#0xB0+var_80]
40A6BC:  LDR             R6, [SP,#0xB0+var_84]
40A6BE:  LSLS            R0, R0, #4
40A6C0:  UXTB            R5, R0
40A6C2:  AND.W           R0, R6, #0xF
40A6C6:  LDR             R2, [R4]; CPed *
40A6C8:  ORRS            R0, R5
40A6CA:  STRD.W          R8, R10, [SP,#0xB0+var_A4]; float *
40A6CE:  ADD.W           R0, R0, R0,LSL#1
40A6D2:  ADD.W           R1, R9, R0,LSL#2; CPtrList *
40A6D6:  MOV             R0, R4; this
40A6D8:  BLX             j__ZN11CPlayerInfo24FindClosestCarSectorListER8CPtrListP4CPedffffPfPP8CVehicle; CPlayerInfo::FindClosestCarSectorList(CPtrList &,CPed *,float,float,float,float,float *,CVehicle **)
40A6DC:  ADDS            R0, R6, #1
40A6DE:  CMP             R6, R11
40A6E0:  MOV             R6, R0
40A6E2:  BLT             loc_40A6C2
40A6E4:  LDR             R0, [SP,#0xB0+var_80]
40A6E6:  LDR             R1, [SP,#0xB0+var_88]
40A6E8:  MOV             R2, R0
40A6EA:  CMP             R2, R1
40A6EC:  ADD.W           R0, R2, #1
40A6F0:  STR             R0, [SP,#0xB0+var_80]
40A6F2:  BLT             loc_40A6B4
40A6F4:  LDR             R0, [R4]
40A6F6:  LDR.W           R0, [R0,#0x440]; this
40A6FA:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
40A6FE:  LDRD.W          R11, R10, [SP,#0xB0+var_90]
40A702:  CBZ             R0, loc_40A744
40A704:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x40A70C)
40A708:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
40A70A:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
40A70C:  LDR             R0, [R0]; this
40A70E:  CBZ             R0, loc_40A726
40A710:  MOV.W           R1, #0x172
40A714:  ADD             R2, SP, #0xB0+var_70
40A716:  STRD.W          R2, R1, [SP,#0xB0+var_B0]; CVector *
40A71A:  MOV.W           R1, #0xFFFFFFFF; int
40A71E:  MOVS            R2, #0; int
40A720:  MOVS            R3, #0; bool
40A722:  BLX             j__ZN21CWidgetButtonEnterCar22SetEnterCarVehicleTypeEiibRK7CVectori; CWidgetButtonEnterCar::SetEnterCarVehicleType(int,int,bool,CVector const&,int)
40A726:  MOVS            R0, #0
40A728:  MOVS            R1, #0
40A72A:  MOVS            R2, #1
40A72C:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
40A730:  CMP             R0, #1
40A732:  BNE             loc_40A744
40A734:  LDR             R0, [R4]
40A736:  LDR.W           R0, [R0,#0x440]; this
40A73A:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
40A73E:  LDR             R1, [R4]; CPed *
40A740:  BLX             j__ZN18CTaskSimpleJetPack11DropJetPackEP4CPed; CTaskSimpleJetPack::DropJetPack(CPed *)
40A744:  LDR.W           R8, [SP,#0xB0+var_74]
40A748:  CMP.W           R8, #0
40A74C:  BEQ.W           loc_4095F6
40A750:  LDR.W           R0, [R8,#0x5A4]
40A754:  CMP             R0, #0xB
40A756:  BNE             loc_40A764
40A758:  LDR.W           R0, [R8,#0x4D0]
40A75C:  CMP             R0, #0
40A75E:  ITT NE
40A760:  STRNE           R0, [SP,#0xB0+var_74]
40A762:  MOVNE           R8, R0
40A764:  MOV             R0, R8; this
40A766:  BLX             j__ZNK8CVehicle11CanBeDrivenEv; CVehicle::CanBeDriven(void)
40A76A:  CMP             R0, #1
40A76C:  BNE.W           loc_4095F6
40A770:  LDR.W           R0, [R8,#0x5A0]
40A774:  CMP             R0, #5
40A776:  BNE.W           loc_40A8C0
40A77A:  LDR.W           R0, [R8,#0x464]
40A77E:  CMP             R0, #0
40A780:  BNE.W           loc_4095F6
40A784:  LDR             R0, [R4]
40A786:  LDR.W           R0, [R0,#0x440]
40A78A:  ADDS            R0, #4; this
40A78C:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
40A790:  CBZ             R0, loc_40A7A4
40A792:  LDR             R2, [R0]
40A794:  MOVS            R3, #0
40A796:  LDR             R1, [R4]
40A798:  LDR             R6, [R2,#0x1C]
40A79A:  MOVS            R2, #1
40A79C:  BLX             R6
40A79E:  CMP             R0, #1
40A7A0:  BNE.W           loc_4095F6
40A7A4:  LDR             R0, [R4]
40A7A6:  LDR.W           R1, [R8,#0x14]
40A7AA:  LDR.W           R0, [R0,#0x484]
40A7AE:  ADD.W           R2, R1, #0x30 ; '0'
40A7B2:  CMP             R1, #0
40A7B4:  MOV.W           R1, #0
40A7B8:  IT EQ
40A7BA:  ADDEQ.W         R2, R8, #4
40A7BE:  TST.W           R0, #0x100
40A7C2:  STR             R2, [SP,#0xB0+var_B0]
40A7C4:  IT EQ
40A7C6:  MOVEQ           R1, #1
40A7C8:  MOV             R0, R11
40A7CA:  MOV             R2, R8
40A7CC:  B               loc_40AC14
40A7CE:  LDR             R1, [R0]
40A7D0:  MOV.W           R8, #0
40A7D4:  LDR.W           R2, [R1,#0xE8]
40A7D8:  MOVS            R1, #0
40A7DA:  BLX             R2
40A7DC:  CBNZ            R0, loc_40A7F2
40A7DE:  LDR             R1, [R4]
40A7E0:  LDR.W           R0, [R1,#0x590]
40A7E4:  LDR             R2, [R0]
40A7E6:  LDR.W           R2, [R2,#0xEC]
40A7EA:  BLX             R2
40A7EC:  CMP             R0, #1
40A7EE:  BNE.W           loc_40A90E
40A7F2:  LDR             R0, [R4]
40A7F4:  LDR.W           R5, [R0,#0x440]
40A7F8:  MOVS            R0, #dword_34; this
40A7FA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
40A7FE:  MOV             R6, R0
40A800:  LDR             R0, [R4]
40A802:  MOV.W           R9, #1
40A806:  MOVS            R2, #0; int
40A808:  MOVS            R3, #0; int
40A80A:  LDR.W           R1, [R0,#0x590]; CVehicle *
40A80E:  MOV             R0, R6; this
40A810:  STRD.W          R9, R8, [SP,#0xB0+var_B0]; bool
40A814:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
40A818:  ADDS            R0, R5, #4; this
40A81A:  MOV             R1, R6; CTask *
40A81C:  MOVS            R2, #3; int
40A81E:  MOVS            R3, #0; bool
40A820:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
40A824:  STRB.W          R9, [R4,#0xD5]
40A828:  LDR.W           R0, [R4,#0x190]
40A82C:  CBZ             R0, loc_40A854
40A82E:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x40A83A)
40A832:  MOVW            R1, #(byte_71403C - 0x712330)
40A836:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
40A838:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
40A83A:  LDRB            R0, [R0,R1]
40A83C:  CMP             R0, #1
40A83E:  BNE             loc_40A854
40A840:  LDR             R0, [R4]
40A842:  MOVS            R1, #0x2E ; '.'
40A844:  MOVS            R2, #1
40A846:  MOVS            R3, #1
40A848:  MOVS            R5, #0x2E ; '.'
40A84A:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
40A84E:  LDR             R0, [R4]
40A850:  STR.W           R5, [R0,#0x710]
40A854:  LDR             R0, [R4]
40A856:  LDR.W           R0, [R0,#0x444]
40A85A:  LDRH            R1, [R0,#0x34]
40A85C:  BIC.W           R1, R1, #8
40A860:  STRH            R1, [R0,#0x34]
40A862:  B.W             loc_4095F6
40A866:  STRB.W          R5, [R4,#0xD5]
40A86A:  B.W             loc_4095F6
40A86E:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40A87E)
40A872:  MOV.W           R2, #0x194
40A876:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x40A880)
40A87A:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
40A87C:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40A87E:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
40A880:  LDR             R1, [R1]; CWorld::Players ...
40A882:  LDR             R0, [R0]; CWorld::PlayerInFocus
40A884:  SMLABB.W        R0, R0, R2, R1
40A888:  LDR             R0, [R0]
40A88A:  ADD             R5, SP, #0xB0+var_70
40A88C:  MOVS            R2, #0; bool
40A88E:  MOV             R1, R5; CEvent *
40A890:  LDR.W           R0, [R0,#0x440]
40A894:  ADDS            R0, #0x68 ; 'h'; this
40A896:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
40A89A:  MOVS            R0, #1
40A89C:  STRB.W          R0, [R4,#0x164]
40A8A0:  MOV             R0, R5; this
40A8A2:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
40A8A6:  B.W             loc_4095F6
40A8AA:  ALIGN 4
40A8AC:  DCFS 0.0
40A8B0:  DCFS 10000.0
40A8B4:  DCFS 60.0
40A8B8:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x409DBA
40A8BC:  DCD _ZN6CWorld7PlayersE_ptr - 0x409DBC
40A8C0:  LDR             R0, [R4]
40A8C2:  LDR.W           R0, [R0,#0x440]
40A8C6:  ADDS            R0, #4; this
40A8C8:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
40A8CC:  MOV             R9, R0
40A8CE:  CMP.W           R9, #0
40A8D2:  BEQ             loc_40A958
40A8D4:  LDR.W           R0, [R9]
40A8D8:  LDR             R1, [R0,#0x14]
40A8DA:  MOV             R0, R9
40A8DC:  BLX             R1
40A8DE:  CMP.W           R0, #0x10C
40A8E2:  BNE             loc_40A9CA
40A8E4:  LDR             R0, [R4]
40A8E6:  LDR.W           R0, [R0,#0x440]; this
40A8EA:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
40A8EE:  CMP             R0, #0
40A8F0:  BEQ             loc_40A9CA
40A8F2:  LDRSH.W         R0, [R8,#0x26]
40A8F6:  CMP.W           R0, #0x1CC
40A8FA:  BGE             loc_40A95E
40A8FC:  MOVW            R1, #0x1A1
40A900:  CMP             R0, R1
40A902:  BEQ             loc_40A96C
40A904:  MOVW            R1, #0x1BF
40A908:  CMP             R0, R1
40A90A:  BEQ             loc_40A96C
40A90C:  B               loc_40A9C6
40A90E:  LDR             R0, [R4]
40A910:  LDR.W           R0, [R0,#0x590]
40A914:  LDRB.W          R0, [R0,#0x3A]
40A918:  CMP             R0, #7
40A91A:  BHI.W           loc_4095F6
40A91E:  MOVS            R0, #1
40A920:  B.W             loc_4095F2
40A924:  MOVS            R0, #0
40A926:  ADDW            R0, R0, #0x5B4; this
40A92A:  MOVS            R1, #0xE1; unsigned int
40A92C:  BLX             j__ZN14CDamageManager15SetEngineStatusEj; CDamageManager::SetEngineStatus(uint)
40A930:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40A93C)
40A934:  MOV.W           R2, #0x194
40A938:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
40A93A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
40A93C:  LDR             R1, [R0]; CWorld::PlayerInFocus
40A93E:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x40A946)
40A942:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
40A944:  SMULBB.W        R2, R1, R2
40A948:  LDR             R0, [R0]; CWorld::Players ...
40A94A:  LDR             R0, [R0,R2]
40A94C:  LDR.W           R0, [R0,#0x590]
40A950:  STR.W           R5, [R0,#0x93C]
40A954:  B.W             loc_40981C
40A958:  MOV.W           R9, #0
40A95C:  B               loc_40A9CA
40A95E:  MOVW            R1, #0x21B; int
40A962:  CMP             R0, R1
40A964:  IT NE
40A966:  CMPNE.W         R0, #0x1CC
40A96A:  BNE             loc_40A9C6
40A96C:  MOVS            R0, #0; this
40A96E:  MOVS            R5, #0
40A970:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
40A974:  LDR.W           R1, [R8,#0x14]
40A978:  MOVS            R3, #1; bool
40A97A:  ADD.W           R2, R1, #0x30 ; '0'
40A97E:  CMP             R1, #0
40A980:  IT EQ
40A982:  ADDEQ.W         R2, R8, #4
40A986:  MOVS            R1, #1; bool
40A988:  STR             R2, [SP,#0xB0+var_B0]; int *
40A98A:  MOV             R2, R8; CVehicle *
40A98C:  BLX             j__ZN4CPad19ExitVehicleJustDownEbP8CVehiclebRK7CVector; CPad::ExitVehicleJustDown(bool,CVehicle *,bool,CVector const&)
40A990:  CMP             R0, #1
40A992:  BNE             loc_40A9C6
40A994:  STR             R5, [SP,#0xB0+var_7C]
40A996:  ADD             R2, SP, #0xB0+var_70; CVehicle *
40A998:  LDR             R0, [R4]; this
40A99A:  ADD             R3, SP, #0xB0+var_7C; CVector *
40A99C:  MOV             R1, R8; CPed *
40A99E:  BLX             j__ZN13CCarEnterExit17GetNearestCarDoorERK4CPedRK8CVehicleR7CVectorRi; CCarEnterExit::GetNearestCarDoor(CPed const&,CVehicle const&,CVector &,int &)
40A9A2:  CMP             R0, #1
40A9A4:  BNE             loc_40A9C6
40A9A6:  LDR             R0, [R4]
40A9A8:  LDR.W           R0, [R0,#0x440]; this
40A9AC:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
40A9B0:  VLDR            D16, [SP,#0xB0+var_70]
40A9B4:  MOV.W           R9, #0
40A9B8:  LDR             R1, [SP,#0xB0+var_68]
40A9BA:  STR             R1, [R0,#0x1C]
40A9BC:  MOVW            R1, #0x1388
40A9C0:  STR             R1, [R0,#0x5C]
40A9C2:  VSTR            D16, [R0,#0x14]
40A9C6:  LDRD.W          R11, R10, [SP,#0xB0+var_90]
40A9CA:  LDR             R0, [R4]
40A9CC:  LDRSB.W         R1, [R0,#0x71C]
40A9D0:  RSB.W           R1, R1, R1,LSL#3
40A9D4:  ADD.W           R1, R0, R1,LSL#2
40A9D8:  LDR.W           R1, [R1,#0x5A4]
40A9DC:  CMP             R1, #0x25 ; '%'
40A9DE:  BNE             loc_40AA22
40A9E0:  LDR.W           R0, [R0,#0x440]
40A9E4:  MOVS            R1, #0; int
40A9E6:  ADDS            R0, #4; this
40A9E8:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
40A9EC:  MOV             R5, R0
40A9EE:  LDR             R0, [R4]
40A9F0:  CMP             R5, #0
40A9F2:  LDRSB.W         R1, [R0,#0x71C]
40A9F6:  RSB.W           R1, R1, R1,LSL#3
40A9FA:  ADD.W           R1, R0, R1,LSL#2
40A9FE:  LDR.W           R1, [R1,#0x5A4]
40AA02:  IT NE
40AA04:  MOVNE           R5, #1
40AA06:  CMP             R1, #0x26 ; '&'
40AA08:  BNE             loc_40AA28
40AA0A:  LDR.W           R0, [R0,#0x440]
40AA0E:  MOVS            R1, #0; int
40AA10:  ADDS            R0, #4; this
40AA12:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
40AA16:  MOV             R6, R0
40AA18:  LDR             R0, [R4]
40AA1A:  CMP             R6, #0
40AA1C:  IT NE
40AA1E:  MOVNE           R6, #1
40AA20:  B               loc_40AA2A
40AA22:  MOVS            R5, #0
40AA24:  CMP             R1, #0x26 ; '&'
40AA26:  BEQ             loc_40AA0A
40AA28:  MOVS            R6, #0
40AA2A:  LDR.W           R0, [R0,#0x440]; this
40AA2E:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
40AA32:  CMP.W           R9, #0
40AA36:  BEQ             loc_40AACC
40AA38:  LDR             R1, =(TheCamera_ptr - 0x40AA3E)
40AA3A:  ADD             R1, PC; TheCamera_ptr
40AA3C:  LDR             R1, [R1]; TheCamera
40AA3E:  LDRB.W          R1, [R1,#(byte_951FE3 - 0x951FA8)]
40AA42:  CMP             R1, #0
40AA44:  BNE.W           loc_4095F6
40AA48:  LDR             R1, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x40AA4E)
40AA4A:  ADD             R1, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
40AA4C:  LDR             R1, [R1]; CCutsceneMgr::ms_running ...
40AA4E:  LDRB            R1, [R1]; CCutsceneMgr::ms_running
40AA50:  CMP             R1, #0
40AA52:  IT NE
40AA54:  MOVNE           R1, #1
40AA56:  CMP             R0, #0
40AA58:  ORR.W           R1, R1, R5
40AA5C:  IT NE
40AA5E:  MOVNE           R0, #1
40AA60:  ORRS            R0, R1
40AA62:  ORRS            R0, R6
40AA64:  BNE.W           loc_4095F6
40AA68:  LDR.W           R0, [R9]
40AA6C:  LDR             R1, [R0,#0x14]
40AA6E:  MOV             R0, R9
40AA70:  BLX             R1
40AA72:  MOVW            R1, #0x3FE
40AA76:  CMP             R0, R1
40AA78:  BEQ.W           loc_4095F6
40AA7C:  LDR.W           R0, [R9]
40AA80:  LDR             R1, [R0,#0x14]
40AA82:  MOV             R0, R9
40AA84:  BLX             R1
40AA86:  MOVW            R1, #0x517
40AA8A:  CMP             R0, R1
40AA8C:  BEQ.W           loc_4095F6
40AA90:  LDR.W           R0, [R9]
40AA94:  LDR             R1, [R0,#0x14]
40AA96:  MOV             R0, R9
40AA98:  BLX             R1
40AA9A:  CMP.W           R0, #0x1F8
40AA9E:  BEQ.W           loc_4095F6
40AAA2:  LDR.W           R0, [R9]
40AAA6:  LDR             R1, [R0,#0x14]
40AAA8:  MOV             R0, R9
40AAAA:  BLX             R1
40AAAC:  MOVW            R1, #0x191
40AAB0:  CMP             R0, R1
40AAB2:  BEQ.W           loc_4095F6
40AAB6:  LDR.W           R0, [R9]
40AABA:  MOVS            R2, #1
40AABC:  LDR             R1, [R4]
40AABE:  MOVS            R3, #0
40AAC0:  LDR             R6, [R0,#0x1C]
40AAC2:  MOV             R0, R9
40AAC4:  BLX             R6
40AAC6:  CMP             R0, #1
40AAC8:  BNE.W           loc_4095F6
40AACC:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x40AAD2)
40AACE:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
40AAD0:  LDR             R0, [R0]; CWorld::Players ...
40AAD2:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
40AAD6:  CMP             R0, #0
40AAD8:  BEQ             loc_40AB50
40AADA:  LDR             R0, =(_ZN10CGameLogic27bPlayersCanBeInSeparateCarsE_ptr - 0x40AAE0)
40AADC:  ADD             R0, PC; _ZN10CGameLogic27bPlayersCanBeInSeparateCarsE_ptr
40AADE:  LDR             R0, [R0]; CGameLogic::bPlayersCanBeInSeparateCars ...
40AAE0:  LDRB            R0, [R0]; CGameLogic::bPlayersCanBeInSeparateCars
40AAE2:  CMP             R0, #0
40AAE4:  BNE             loc_40AB50
40AAE6:  ADD.W           R1, R10, #1
40AAEA:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x40AAF8)
40AAEC:  MOV.W           R10, #0x194
40AAF0:  ADD.W           R2, R1, R1,LSR#31
40AAF4:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
40AAF6:  BIC.W           R2, R2, #1
40AAFA:  SUB.W           R9, R1, R2
40AAFE:  LDR.W           R11, [R0]; CWorld::Players ...
40AB02:  MUL.W           R1, R9, R10
40AB06:  LDR.W           R0, [R11,R1]
40AB0A:  LDR.W           R0, [R0,#0x440]
40AB0E:  LDRD.W          R6, R0, [R0,#0x10]
40AB12:  CMP             R0, #0
40AB14:  BEQ             loc_40AB90
40AB16:  LDR             R1, [R0]
40AB18:  LDR             R1, [R1,#0x14]
40AB1A:  BLX             R1
40AB1C:  MOV             R5, R0
40AB1E:  CMP             R6, #0
40AB20:  BEQ             loc_40AB96
40AB22:  LDR             R0, [R6]
40AB24:  LDR             R1, [R0,#0x14]
40AB26:  MOV             R0, R6
40AB28:  BLX             R1
40AB2A:  SUBW            R2, R0, #0x2BD; switch 15 cases
40AB2E:  MOVS            R1, #0
40AB30:  CMP             R2, #0xE
40AB32:  BHI             def_40AB34; jumptable 0040AB34 default case, cases 704-714
40AB34:  TBB.W           [PC,R2]; switch jump
40AB38:  DCB 8; jump table for switch statement
40AB39:  DCB 0x32
40AB3A:  DCB 0x36
40AB3B:  DCB 0x3D
40AB3C:  DCB 0x3D
40AB3D:  DCB 0x3D
40AB3E:  DCB 0x3D
40AB3F:  DCB 0x3D
40AB40:  DCB 0x3D
40AB41:  DCB 0x3D
40AB42:  DCB 0x3D
40AB43:  DCB 0x3D
40AB44:  DCB 0x3D
40AB45:  DCB 0x3D
40AB46:  DCB 0x3A
40AB47:  ALIGN 2
40AB48:  LDR             R1, [R6,#0xC]; jumptable 0040AB34 case 701
40AB4A:  MOVW            R0, #0x2BD
40AB4E:  B               def_40AB34; jumptable 0040AB34 default case, cases 704-714
40AB50:  LDR             R0, [R4]; this
40AB52:  LDRB.W          R1, [R0,#0x485]
40AB56:  LSLS            R1, R1, #0x1F
40AB58:  BNE             loc_40AB62
40AB5A:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
40AB5E:  MOV             R1, R0
40AB60:  B               loc_40AB64
40AB62:  MOVS            R1, #0; bool
40AB64:  LDR.W           R0, [R8,#0x14]
40AB68:  MOVS            R3, #1; bool
40AB6A:  ADD.W           R2, R0, #0x30 ; '0'
40AB6E:  CMP             R0, #0
40AB70:  IT EQ
40AB72:  ADDEQ.W         R2, R8, #4
40AB76:  LDR.W           R11, [SP,#0xB0+var_90]
40AB7A:  STR             R2, [SP,#0xB0+var_B0]; CVector *
40AB7C:  MOV             R2, R8; CVehicle *
40AB7E:  MOV             R0, R11; this
40AB80:  BLX             j__ZN4CPad19ExitVehicleJustDownEbP8CVehiclebRK7CVector; CPad::ExitVehicleJustDown(bool,CVehicle *,bool,CVector const&)
40AB84:  LDR.W           R10, [SP,#0xB0+var_8C]
40AB88:  CMP             R0, #1
40AB8A:  BNE.W           loc_4095F6
40AB8E:  B               loc_40AC20
40AB90:  MOVS            R5, #0
40AB92:  CMP             R6, #0
40AB94:  BNE             loc_40AB22
40AB96:  MOVS            R0, #0
40AB98:  MOVS            R1, #0
40AB9A:  B               def_40AB34; jumptable 0040AB34 default case, cases 704-714
40AB9C:  LDR             R1, [R6,#0xC]; jumptable 0040AB34 case 702
40AB9E:  MOVW            R0, #0x2BE
40ABA2:  B               def_40AB34; jumptable 0040AB34 default case, cases 704-714
40ABA4:  LDR             R1, [R6,#0xC]; jumptable 0040AB34 case 703
40ABA6:  MOVW            R0, #0x2BF
40ABAA:  B               def_40AB34; jumptable 0040AB34 default case, cases 704-714
40ABAC:  LDR             R1, [R6,#0xC]; jumptable 0040AB34 case 715
40ABAE:  MOVW            R0, #0x2CB
40ABB2:  MOVW            R2, #0x2C5; jumptable 0040AB34 default case, cases 704-714
40ABB6:  CMP             R0, R2
40ABB8:  IT NE
40ABBA:  CMPNE           R5, R2
40ABBC:  BEQ             loc_40ABCA
40ABBE:  CMP             R5, #1
40ABC0:  IT NE
40ABC2:  CMPNE           R0, #1
40ABC4:  BEQ             loc_40ABCA
40ABC6:  MOVS            R2, #0
40ABC8:  B               loc_40ABE0
40ABCA:  MLA.W           R2, R9, R10, R11
40ABCE:  LDR             R3, [R2]
40ABD0:  LDR.W           R2, [R3,#0x590]
40ABD4:  LDR.W           R5, [R2,#0x464]
40ABD8:  CMP             R5, R3
40ABDA:  ITT EQ
40ABDC:  MOVEQ           R1, R2
40ABDE:  MOVEQ           R2, #0
40ABE0:  CMP.W           R0, #0x2BC
40ABE4:  IT EQ
40ABE6:  LDREQ           R2, [R6,#0xC]
40ABE8:  CMP             R1, R8
40ABEA:  BEQ             loc_40AC44
40ABEC:  LDRD.W          R11, R10, [SP,#0xB0+var_90]
40ABF0:  CMP             R2, R8
40ABF2:  IT NE
40ABF4:  ORRSNE.W        R0, R1, R2
40ABF8:  BNE.W           loc_4095F6
40ABFC:  LDR.W           R0, [R8,#0x14]
40AC00:  MOVS            R2, #0; CVehicle *
40AC02:  ADD.W           R1, R0, #0x30 ; '0'
40AC06:  CMP             R0, #0
40AC08:  IT EQ
40AC0A:  ADDEQ.W         R1, R8, #4
40AC0E:  MOV             R0, R11; this
40AC10:  STR             R1, [SP,#0xB0+var_B0]; CVector *
40AC12:  MOVS            R1, #1; bool
40AC14:  MOVS            R3, #1; bool
40AC16:  BLX             j__ZN4CPad19ExitVehicleJustDownEbP8CVehiclebRK7CVector; CPad::ExitVehicleJustDown(bool,CVehicle *,bool,CVector const&)
40AC1A:  CMP             R0, #1
40AC1C:  BNE.W           loc_4095F6
40AC20:  LDR             R0, [R4]
40AC22:  LDR.W           R6, [R0,#0x440]
40AC26:  MOVS            R0, #0x50 ; 'P'
40AC28:  B.W             sub_3F6598
