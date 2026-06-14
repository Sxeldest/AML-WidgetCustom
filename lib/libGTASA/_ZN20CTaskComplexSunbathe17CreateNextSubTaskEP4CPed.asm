; =========================================================
; Game Engine Function: _ZN20CTaskComplexSunbathe17CreateNextSubTaskEP4CPed
; Address            : 0x4ED268 - 0x4ED548
; =========================================================

4ED268:  PUSH            {R4,R5,R7,LR}
4ED26A:  ADD             R7, SP, #8
4ED26C:  SUB             SP, SP, #0x10
4ED26E:  MOV             R2, R1
4ED270:  MOV             R4, R0
4ED272:  LDR.W           R0, [R2,#0x59C]
4ED276:  CMP             R0, #0x16
4ED278:  IT NE
4ED27A:  CMPNE           R0, #5
4ED27C:  BNE             loc_4ED28A
4ED27E:  LDR             R0, =(g_InterestingEvents_ptr - 0x4ED286)
4ED280:  MOVS            R1, #2
4ED282:  ADD             R0, PC; g_InterestingEvents_ptr
4ED284:  LDR             R0, [R0]; g_InterestingEvents
4ED286:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
4ED28A:  LDR             R0, [R4,#8]
4ED28C:  LDR             R1, [R0]
4ED28E:  LDR             R1, [R1,#0x14]
4ED290:  BLX             R1
4ED292:  MOV             R1, R0; unsigned int
4ED294:  SUB.W           R2, R1, #0x1A2; switch 13 cases
4ED298:  MOVS            R0, #0
4ED29A:  CMP             R2, #0xC
4ED29C:  BHI             def_4ED29E; jumptable 004ED29E default case
4ED29E:  TBB.W           [PC,R2]; switch jump
4ED2A2:  DCB 7; jump table for switch statement
4ED2A3:  DCB 0xC4
4ED2A4:  DCB 0xC4
4ED2A5:  DCB 0xC4
4ED2A6:  DCB 0xC4
4ED2A7:  DCB 0xC4
4ED2A8:  DCB 0xC4
4ED2A9:  DCB 0xC4
4ED2AA:  DCB 0xC4
4ED2AB:  DCB 0xC4
4ED2AC:  DCB 0x7E
4ED2AD:  DCB 0xA8
4ED2AE:  DCB 0xAF
4ED2AF:  ALIGN 2
4ED2B0:  LDR             R0, [R4,#0x28]; jumptable 004ED29E case 418
4ED2B2:  LDRB            R0, [R0,#0x10]
4ED2B4:  CMP             R0, #0
4ED2B6:  BEQ.W           loc_4ED41A
4ED2BA:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x4ED2C0)
4ED2BC:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
4ED2BE:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
4ED2C0:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
4ED2C2:  SUBS            R0, #0xA
4ED2C4:  UXTB            R0, R0
4ED2C6:  CMP             R0, #7
4ED2C8:  BHI.W           loc_4ED4C0
4ED2CC:  LDR             R0, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x4ED2D2)
4ED2CE:  ADD             R0, PC; _ZN8CWeather14NewWeatherTypeE_ptr
4ED2D0:  LDR             R0, [R0]; CWeather::NewWeatherType ...
4ED2D2:  LDRH            R0, [R0]; CWeather::NewWeatherType
4ED2D4:  CMP             R0, #0x12
4ED2D6:  BHI.W           loc_4ED4C0
4ED2DA:  MOVS            R1, #1
4ED2DC:  LSL.W           R0, R1, R0
4ED2E0:  MOV             R1, #0x66C6F
4ED2E8:  TST             R0, R1
4ED2EA:  BEQ.W           loc_4ED4C0
4ED2EE:  LDRB            R0, [R4,#0x1C]
4ED2F0:  CMP             R0, #0
4ED2F2:  BEQ.W           loc_4ED496
4ED2F6:  LDRB            R0, [R4,#0x1D]
4ED2F8:  CMP             R0, #0
4ED2FA:  BEQ.W           loc_4ED484
4ED2FE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4ED306)
4ED300:  MOVS            R1, #0
4ED302:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4ED304:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4ED306:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4ED308:  STRB            R1, [R4,#0x1D]
4ED30A:  STR             R0, [R4,#0x14]
4ED30C:  MOV             R1, R0
4ED30E:  B               loc_4ED48E
4ED310:  CMP             R1, #0xCA; jumptable 004ED29E default case
4ED312:  BNE.W           loc_4ED42A; jumptable 004ED29E cases 419-427
4ED316:  LDRB            R0, [R4,#0xD]
4ED318:  CMP             R0, #0
4ED31A:  BEQ.W           loc_4ED42E
4ED31E:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4ED32A)
4ED320:  MOV.W           R2, #0x194
4ED324:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x4ED32C)
4ED326:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4ED328:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4ED32A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4ED32C:  LDR             R1, [R1]; CWorld::Players ...
4ED32E:  LDR             R0, [R0]; CWorld::PlayerInFocus
4ED330:  SMULBB.W        R0, R0, R2
4ED334:  LDR             R1, [R1,R0]
4ED336:  LDR.W           R0, [R1,#0x590]
4ED33A:  CMP             R0, #0
4ED33C:  ITT NE
4ED33E:  LDRNE.W         R1, [R1,#0x484]
4ED342:  ANDSNE.W        R1, R1, #0x100
4ED346:  BEQ             loc_4ED376
4ED348:  VLDR            S0, [R0,#0x48]
4ED34C:  VLDR            S2, [R0,#0x4C]
4ED350:  VMUL.F32        S0, S0, S0
4ED354:  VLDR            S4, [R0,#0x50]
4ED358:  VMUL.F32        S2, S2, S2
4ED35C:  VMUL.F32        S4, S4, S4
4ED360:  VADD.F32        S0, S0, S2
4ED364:  VLDR            S2, =0.04
4ED368:  VADD.F32        S0, S0, S4
4ED36C:  VCMPE.F32       S0, S2
4ED370:  VMRS            APSR_nzcv, FPSCR
4ED374:  BGT             loc_4ED46C
4ED376:  LDR             R0, [R4,#0x28]
4ED378:  LDRB            R0, [R0,#0x10]
4ED37A:  CMP             R0, #0
4ED37C:  BEQ             loc_4ED46C
4ED37E:  LDR             R0, [R4,#8]
4ED380:  CBZ             R0, loc_4ED390
4ED382:  LDR             R1, [R0]
4ED384:  LDR             R1, [R1,#0x14]
4ED386:  BLX             R1
4ED388:  CMP.W           R0, #0x1AE
4ED38C:  BEQ.W           loc_4ED4D0
4ED390:  MOVS            R0, #dword_20; this
4ED392:  LDR             R4, [R4,#0x20]
4ED394:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED398:  LDR             R1, =(aStopSunbathing - 0x4ED39E); "stop sunbathing"
4ED39A:  ADD             R1, PC; "stop sunbathing"
4ED39C:  B               loc_4ED4E2
4ED39E:  LDR             R0, [R4,#0x24]; jumptable 004ED29E case 428
4ED3A0:  LDRB            R0, [R0,#0x10]
4ED3A2:  CMP             R0, #0
4ED3A4:  BEQ             loc_4ED46C
4ED3A6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4ED3AC)
4ED3A8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4ED3AA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4ED3AC:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds
4ED3AE:  BLX             rand
4ED3B2:  UXTH            R0, R0
4ED3B4:  VLDR            S2, =0.000015259
4ED3B8:  VMOV            S0, R0
4ED3BC:  MOVW            R1, #0x4E20
4ED3C0:  VCVT.F32.S32    S0, S0
4ED3C4:  STR             R5, [R4,#0x14]
4ED3C6:  MOVS            R5, #1
4ED3C8:  VMUL.F32        S0, S0, S2
4ED3CC:  VLDR            S2, =80000.0
4ED3D0:  VMUL.F32        S0, S0, S2
4ED3D4:  VCVT.S32.F32    S0, S0
4ED3D8:  STRB            R5, [R4,#0x1C]
4ED3DA:  VMOV            R0, S0
4ED3DE:  ADD             R0, R1
4ED3E0:  STR             R0, [R4,#0x18]
4ED3E2:  MOV             R0, R4; this
4ED3E4:  MOV.W           R1, #0x1A2; int
4ED3E8:  BLX             j__ZN20CTaskComplexSunbathe13CreateSubTaskEiP4CPed; CTaskComplexSunbathe::CreateSubTask(int,CPed *)
4ED3EC:  STRB            R5, [R4,#0xD]
4ED3EE:  ADD             SP, SP, #0x10
4ED3F0:  POP             {R4,R5,R7,PC}
4ED3F2:  LDR             R0, [R4,#0x24]; jumptable 004ED29E case 429
4ED3F4:  LDRB            R0, [R0,#0x10]
4ED3F6:  CBZ             R0, loc_4ED46C
4ED3F8:  MOV             R0, R4
4ED3FA:  MOV.W           R1, #0x1A2
4ED3FE:  B               loc_4ED41E
4ED400:  LDR             R0, [R4,#8]; jumptable 004ED29E case 430
4ED402:  MOVS            R5, #0
4ED404:  CBZ             R0, loc_4ED426
4ED406:  LDR             R1, [R0]
4ED408:  LDR             R1, [R1,#0x14]
4ED40A:  BLX             R1
4ED40C:  MOVW            R1, #0x516
4ED410:  CMP             R0, R1
4ED412:  ITE EQ
4ED414:  LDREQ           R0, [R4,#8]
4ED416:  MOVNE           R0, #0
4ED418:  B               loc_4ED428
4ED41A:  MOV             R0, R4; this
4ED41C:  MOVS            R1, #0xCA; int
4ED41E:  ADD             SP, SP, #0x10
4ED420:  POP.W           {R4,R5,R7,LR}
4ED424:  B               _ZN20CTaskComplexSunbathe13CreateSubTaskEiP4CPed; CTaskComplexSunbathe::CreateSubTask(int,CPed *)
4ED426:  MOVS            R0, #0
4ED428:  STRB            R5, [R4,#0xD]
4ED42A:  ADD             SP, SP, #0x10; jumptable 004ED29E cases 419-427
4ED42C:  POP             {R4,R5,R7,PC}
4ED42E:  LDR             R0, [R4,#0x28]
4ED430:  LDRB            R0, [R0,#0x10]
4ED432:  CMP             R0, #0
4ED434:  ITTT NE
4ED436:  LDRNE           R0, [R4,#0x24]
4ED438:  LDRBNE          R0, [R0,#0x10]
4ED43A:  CMPNE           R0, #0
4ED43C:  BEQ             loc_4ED46C
4ED43E:  LDR             R0, [R4,#8]
4ED440:  CBZ             R0, loc_4ED44E
4ED442:  LDR             R1, [R0]
4ED444:  LDR             R1, [R1,#0x14]
4ED446:  BLX             R1
4ED448:  CMP.W           R0, #0x1AC
4ED44C:  BEQ             loc_4ED4D0
4ED44E:  MOVS            R0, #dword_20; this
4ED450:  LDR             R4, [R4,#0x20]
4ED452:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED456:  LDR             R1, =(aStartSunbathin - 0x4ED462); "start sunbathing"
4ED458:  MOVS            R2, #1
4ED45A:  MOV.W           R3, #0x1AC
4ED45E:  ADD             R1, PC; "start sunbathing"
4ED460:  STRD.W          R3, R1, [SP,#0x18+var_18]
4ED464:  STR             R2, [SP,#0x18+var_10]
4ED466:  ADD.W           R2, R4, #0xF4
4ED46A:  B               loc_4ED4F2
4ED46C:  LDR             R0, [R4,#8]
4ED46E:  CBZ             R0, loc_4ED47E
4ED470:  LDR             R1, [R0]
4ED472:  LDR             R1, [R1,#0x14]
4ED474:  BLX             R1
4ED476:  MOVW            R1, #0x516
4ED47A:  CMP             R0, R1
4ED47C:  BEQ             loc_4ED4D0
4ED47E:  MOVS            R0, #0
4ED480:  ADD             SP, SP, #0x10
4ED482:  POP             {R4,R5,R7,PC}
4ED484:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4ED48C)
4ED486:  LDR             R1, [R4,#0x14]
4ED488:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4ED48A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4ED48C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4ED48E:  LDR             R2, [R4,#0x18]
4ED490:  ADD             R1, R2
4ED492:  CMP             R1, R0
4ED494:  BLS             loc_4ED4C0
4ED496:  LDR             R1, [R4,#0x20]
4ED498:  ORR.W           R0, R1, #2
4ED49C:  CMP             R0, #2
4ED49E:  BNE             loc_4ED4C0
4ED4A0:  LDR             R0, [R4,#8]
4ED4A2:  CBZ             R0, loc_4ED4B4
4ED4A4:  LDR             R1, [R0]
4ED4A6:  LDR             R1, [R1,#0x14]
4ED4A8:  BLX             R1
4ED4AA:  MOVW            R1, #0x1AD
4ED4AE:  CMP             R0, R1
4ED4B0:  BEQ             loc_4ED4D0
4ED4B2:  LDR             R1, [R4,#0x20]
4ED4B4:  CMP             R1, #2
4ED4B6:  BEQ             loc_4ED500
4ED4B8:  CMP             R1, #0
4ED4BA:  BNE             loc_4ED52C
4ED4BC:  MOVS            R4, #0xFE
4ED4BE:  B               loc_4ED504
4ED4C0:  LDR             R0, [R4,#8]
4ED4C2:  CBZ             R0, loc_4ED4D6
4ED4C4:  LDR             R1, [R0]
4ED4C6:  LDR             R1, [R1,#0x14]
4ED4C8:  BLX             R1
4ED4CA:  CMP.W           R0, #0x1AE
4ED4CE:  BNE             loc_4ED4D6
4ED4D0:  LDR             R0, [R4,#8]
4ED4D2:  ADD             SP, SP, #0x10
4ED4D4:  POP             {R4,R5,R7,PC}
4ED4D6:  MOVS            R0, #dword_20; this
4ED4D8:  LDR             R4, [R4,#0x20]
4ED4DA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED4DE:  LDR             R1, =(aStopSunbathing - 0x4ED4E4); "stop sunbathing"
4ED4E0:  ADD             R1, PC; "stop sunbathing"
4ED4E2:  MOV.W           R3, #0x1AE
4ED4E6:  MOVS            R2, #0
4ED4E8:  STRD.W          R3, R1, [SP,#0x18+var_18]
4ED4EC:  STR             R2, [SP,#0x18+var_10]
4ED4EE:  ADD.W           R2, R4, #0xF9
4ED4F2:  MOVS            R1, #0x30 ; '0'
4ED4F4:  MOV.W           R3, #0x40800000
4ED4F8:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4ED4FC:  ADD             SP, SP, #0x10
4ED4FE:  POP             {R4,R5,R7,PC}
4ED500:  MOVW            R4, #0x101
4ED504:  BLX             rand
4ED508:  UXTH            R0, R0
4ED50A:  VLDR            S2, =0.000015259
4ED50E:  VMOV            S0, R0
4ED512:  VMOV.F32        S4, #3.0
4ED516:  VCVT.F32.S32    S0, S0
4ED51A:  VMUL.F32        S0, S0, S2
4ED51E:  VMUL.F32        S0, S0, S4
4ED522:  VCVT.S32.F32    S0, S0
4ED526:  VMOV            R0, S0
4ED52A:  ADD             R4, R0
4ED52C:  MOVS            R0, #dword_20; this
4ED52E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED532:  LDR             R1, =(aIdleSunbathing - 0x4ED53E); "idle sunbathing"
4ED534:  MOVS            R2, #1
4ED536:  MOVW            R3, #0x1AD
4ED53A:  ADD             R1, PC; "idle sunbathing"
4ED53C:  STRD.W          R3, R1, [SP,#0x18+var_18]
4ED540:  MOVS            R1, #0x30 ; '0'
4ED542:  STR             R2, [SP,#0x18+var_10]
4ED544:  MOV             R2, R4
4ED546:  B               loc_4ED4F4
