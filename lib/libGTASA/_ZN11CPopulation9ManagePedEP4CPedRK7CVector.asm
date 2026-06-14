; =========================================================
; Game Engine Function: _ZN11CPopulation9ManagePedEP4CPedRK7CVector
; Address            : 0x4CE36C - 0x4CE5FA
; =========================================================

4CE36C:  PUSH            {R4-R7,LR}
4CE36E:  ADD             R7, SP, #0xC
4CE370:  PUSH.W          {R8}
4CE374:  VPUSH           {D8-D9}
4CE378:  MOV             R5, R1
4CE37A:  MOV             R4, R0
4CE37C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4CE380:  CMP             R0, #0
4CE382:  BNE.W           loc_4CE5D6
4CE386:  MOV             R0, R4; this
4CE388:  BLX             j__ZN4CPed12CanBeDeletedEv; CPed::CanBeDeleted(void)
4CE38C:  CMP             R0, #0
4CE38E:  BEQ.W           loc_4CE5D6
4CE392:  LDRB.W          R0, [R4,#0x485]
4CE396:  LSLS            R0, R0, #0x1F
4CE398:  BNE.W           loc_4CE5D6
4CE39C:  LDR.W           R0, [R4,#0x100]
4CE3A0:  CBZ             R0, loc_4CE3B0
4CE3A2:  LDRB.W          R0, [R0,#0x3A]
4CE3A6:  AND.W           R0, R0, #7
4CE3AA:  CMP             R0, #2
4CE3AC:  BEQ.W           loc_4CE5D6
4CE3B0:  LDR.W           R0, [R4,#0x44C]
4CE3B4:  ADDW            R8, R4, #0x484
4CE3B8:  CMP             R0, #0x37 ; '7'
4CE3BA:  BNE             loc_4CE3FA
4CE3BC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4CE3C6)
4CE3BE:  LDR.W           R1, [R4,#0x758]
4CE3C2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4CE3C4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4CE3C6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4CE3C8:  SUBS            R6, R0, R1
4CE3CA:  MOVW            R0, #(elf_hash_bucket+0x7434); this
4CE3CE:  CMP             R6, R0
4CE3D0:  BGT             loc_4CE3EE
4CE3D2:  BLX             j__ZN7CDarkel13FrenzyOnGoingEv; CDarkel::FrenzyOnGoing(void)
4CE3D6:  MOVW            R1, #0x3A99
4CE3DA:  CMP             R6, R1
4CE3DC:  BLT             loc_4CE3E0
4CE3DE:  CBNZ            R0, loc_4CE3EE
4CE3E0:  CMP.W           R6, #0x1F40
4CE3E4:  BLE             loc_4CE3FA
4CE3E6:  BLX             j__ZN9CGangWars22GangWarFightingGoingOnEv; CGangWars::GangWarFightingGoingOn(void)
4CE3EA:  CMP             R0, #1
4CE3EC:  BNE             loc_4CE3FA
4CE3EE:  LDR.W           R0, [R8,#4]
4CE3F2:  ORR.W           R0, R0, #8
4CE3F6:  STR.W           R0, [R8,#4]
4CE3FA:  LDRB.W          R0, [R8,#4]
4CE3FE:  LSLS            R0, R0, #0x1C
4CE400:  BPL             loc_4CE40E
4CE402:  LDR             R0, [R4,#0x18]
4CE404:  BLX             j__ZN18CVisibilityPlugins13GetClumpAlphaEP7RpClump; CVisibilityPlugins::GetClumpAlpha(RpClump *)
4CE408:  CMP             R0, #0
4CE40A:  BEQ.W           loc_4CE5E0
4CE40E:  LDR             R0, [R4,#0x14]
4CE410:  VLDR            S0, [R5]
4CE414:  ADD.W           R1, R0, #0x30 ; '0'
4CE418:  CMP             R0, #0
4CE41A:  VLDR            S2, [R5,#4]
4CE41E:  IT EQ
4CE420:  ADDEQ           R1, R4, #4
4CE422:  VLDR            S4, [R1]
4CE426:  ADD.W           R0, R4, #0x798
4CE42A:  VLDR            S6, [R1,#4]
4CE42E:  VSUB.F32        S0, S4, S0
4CE432:  VSUB.F32        S2, S6, S2
4CE436:  VMUL.F32        S0, S0, S0
4CE43A:  VMUL.F32        S2, S2, S2
4CE43E:  VADD.F32        S0, S0, S2
4CE442:  VLDR            S2, [R0]
4CE446:  LDR.W           R0, [R4,#0x59C]
4CE44A:  SUBS            R0, #7
4CE44C:  CMP             R0, #9
4CE44E:  VSQRT.F32       S0, S0
4CE452:  VMUL.F32        S0, S2, S0
4CE456:  BHI             loc_4CE462
4CE458:  VMOV.F32        S2, #-30.0
4CE45C:  VADD.F32        S16, S0, S2
4CE460:  B               loc_4CE480
4CE462:  LDRB.W          R0, [R8,#6]
4CE466:  LSLS            R0, R0, #0x19
4CE468:  BMI             loc_4CE470
4CE46A:  VMOV.F32        S16, S0
4CE46E:  B               loc_4CE480
4CE470:  LDR.W           R0, [R4,#0x594]
4CE474:  VLDR            S16, =0.0
4CE478:  CMP             R0, #0
4CE47A:  IT EQ
4CE47C:  VMOVEQ.F32      S16, S0
4CE480:  LDR             R0, =(TheCamera_ptr - 0x4CE48A)
4CE482:  VLDR            S2, =0.0001
4CE486:  ADD             R0, PC; TheCamera_ptr
4CE488:  LDR             R0, [R0]; TheCamera ; this
4CE48A:  VLDR            S0, [R0,#0xF0]
4CE48E:  VCMPE.F32       S0, S2
4CE492:  VMRS            APSR_nzcv, FPSCR
4CE496:  BLE.W           loc_4CE5D6
4CE49A:  VLDR            S2, =105.0
4CE49E:  VMUL.F32        S18, S0, S2
4CE4A2:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CE4A6:  VMOV            S0, R0
4CE4AA:  VMUL.F32        S0, S18, S0
4CE4AE:  VCMPE.F32       S16, S0
4CE4B2:  VMRS            APSR_nzcv, FPSCR
4CE4B6:  BGT.W           loc_4CE5C0
4CE4BA:  LDRB.W          R0, [R8,#4]
4CE4BE:  LSLS            R0, R0, #0x19; this
4CE4C0:  BMI             loc_4CE4EA
4CE4C2:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CE4C6:  LDR             R1, =(TheCamera_ptr - 0x4CE4D4)
4CE4C8:  VMOV            S2, R0
4CE4CC:  VLDR            S0, =75.5
4CE4D0:  ADD             R1, PC; TheCamera_ptr
4CE4D2:  VMUL.F32        S0, S2, S0
4CE4D6:  LDR             R0, [R1]; TheCamera ; this
4CE4D8:  VLDR            S2, [R0,#0xF0]
4CE4DC:  VMUL.F32        S0, S0, S2
4CE4E0:  VCMPE.F32       S16, S0
4CE4E4:  VMRS            APSR_nzcv, FPSCR
4CE4E8:  BGT             loc_4CE5C0
4CE4EA:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CE4EE:  VMOV.F32        S0, #25.0
4CE4F2:  VMOV            S2, R0
4CE4F6:  VMUL.F32        S0, S2, S0
4CE4FA:  VCMPE.F32       S16, S0
4CE4FE:  VMRS            APSR_nzcv, FPSCR
4CE502:  BLE             loc_4CE55C
4CE504:  MOV             R0, R4; this
4CE506:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
4CE50A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4CE514)
4CE50C:  MOVS            R2, #0
4CE50E:  CMP             R0, #0
4CE510:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4CE512:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4CE514:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4CE516:  BNE             loc_4CE5A2
4CE518:  LDR.W           R3, [R4,#0x550]
4CE51C:  CMP             R1, R3
4CE51E:  BLS             loc_4CE5A2
4CE520:  LDR             R2, =(TheCamera_ptr - 0x4CE526)
4CE522:  ADD             R2, PC; TheCamera_ptr
4CE524:  LDR             R2, [R2]; TheCamera
4CE526:  LDRB.W          R3, [R2,#(byte_951FFF - 0x951FA8)]
4CE52A:  ADD.W           R3, R3, R3,LSL#5
4CE52E:  ADD.W           R2, R2, R3,LSL#4
4CE532:  LDRH.W          R6, [R2,#0x17E]
4CE536:  MOVS            R2, #0
4CE538:  CMP             R6, #7
4CE53A:  BEQ             loc_4CE5A2
4CE53C:  CMP             R6, #0x27 ; '''
4CE53E:  IT NE
4CE540:  CMPNE           R6, #0x2E ; '.'
4CE542:  BEQ             loc_4CE5A2
4CE544:  LDR             R2, =(TheCamera_ptr - 0x4CE54A)
4CE546:  ADD             R2, PC; TheCamera_ptr
4CE548:  LDR             R2, [R2]; TheCamera
4CE54A:  ADD.W           R2, R2, R3,LSL#4
4CE54E:  LDRB.W          R2, [R2,#0x178]
4CE552:  CBZ             R2, loc_4CE57C
4CE554:  MOVS            R2, #0
4CE556:  CMP             R0, #1
4CE558:  BEQ             loc_4CE5A6
4CE55A:  B               loc_4CE5BC
4CE55C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4CE56A)
4CE55E:  MOV.W           R2, #0xFA0
4CE562:  LDR.W           R1, [R4,#0x59C]
4CE566:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4CE568:  CMP             R1, #6
4CE56A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4CE56C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4CE56E:  IT EQ
4CE570:  MOVWEQ          R2, #0x2710
4CE574:  ADD             R0, R2
4CE576:  STR.W           R0, [R4,#0x550]
4CE57A:  B               loc_4CE5D6
4CE57C:  LDR             R2, =(TheCamera_ptr - 0x4CE582)
4CE57E:  ADD             R2, PC; TheCamera_ptr
4CE580:  LDR             R2, [R2]; TheCamera
4CE582:  ADD.W           R2, R2, R3,LSL#4
4CE586:  LDRB.W          R6, [R2,#0x179]
4CE58A:  MOVS            R2, #0
4CE58C:  CBNZ            R6, loc_4CE5A2
4CE58E:  LDR             R6, =(TheCamera_ptr - 0x4CE594)
4CE590:  ADD             R6, PC; TheCamera_ptr
4CE592:  LDR             R6, [R6]; TheCamera
4CE594:  ADD.W           R3, R6, R3,LSL#4
4CE598:  LDRB.W          R3, [R3,#0x177]
4CE59C:  CMP             R3, #0
4CE59E:  IT EQ
4CE5A0:  MOVEQ           R2, #1
4CE5A2:  CMP             R0, #1
4CE5A4:  BNE             loc_4CE5BC
4CE5A6:  LDR.W           R0, [R4,#0x59C]
4CE5AA:  MOV.W           R3, #0xFA0
4CE5AE:  CMP             R0, #6
4CE5B0:  IT EQ
4CE5B2:  MOVWEQ          R3, #0x2710
4CE5B6:  ADDS            R0, R3, R1
4CE5B8:  STR.W           R0, [R4,#0x550]
4CE5BC:  CMP             R2, #1
4CE5BE:  BNE             loc_4CE5D6
4CE5C0:  MOV             R0, R4; this
4CE5C2:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
4CE5C6:  CMP             R0, #1
4CE5C8:  BNE             loc_4CE5E0
4CE5CA:  LDR.W           R0, [R8,#4]
4CE5CE:  ORR.W           R0, R0, #8
4CE5D2:  STR.W           R0, [R8,#4]
4CE5D6:  VPOP            {D8-D9}
4CE5DA:  POP.W           {R8}
4CE5DE:  POP             {R4-R7,PC}
4CE5E0:  MOV             R0, R4; this
4CE5E2:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4CE5E6:  LDR             R0, [R4]
4CE5E8:  LDR             R1, [R0,#4]
4CE5EA:  MOV             R0, R4
4CE5EC:  VPOP            {D8-D9}
4CE5F0:  POP.W           {R8}
4CE5F4:  POP.W           {R4-R7,LR}
4CE5F8:  BX              R1
