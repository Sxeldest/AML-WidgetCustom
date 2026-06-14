; =========================================================
; Game Engine Function: _ZN19CPedGroupMembership7ProcessEv
; Address            : 0x4B23CE - 0x4B2502
; =========================================================

4B23CE:  PUSH            {R4-R7,LR}
4B23D0:  ADD             R7, SP, #0xC
4B23D2:  PUSH.W          {R11}
4B23D6:  MOV             R6, R0
4B23D8:  LDR             R0, [R6,#4]; this
4B23DA:  CBZ             R0, loc_4B23EA
4B23DC:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4B23E0:  CBNZ            R0, loc_4B23EA
4B23E2:  MOV             R0, R6; this
4B23E4:  MOVS            R1, #0; int
4B23E6:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B23EA:  LDR             R0, [R6,#8]; this
4B23EC:  CBZ             R0, loc_4B23FC
4B23EE:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4B23F2:  CBNZ            R0, loc_4B23FC
4B23F4:  MOV             R0, R6; this
4B23F6:  MOVS            R1, #1; int
4B23F8:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B23FC:  LDR             R0, [R6,#0xC]; this
4B23FE:  CBZ             R0, loc_4B240E
4B2400:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4B2404:  CBNZ            R0, loc_4B240E
4B2406:  MOV             R0, R6; this
4B2408:  MOVS            R1, #2; int
4B240A:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B240E:  LDR             R0, [R6,#0x10]; this
4B2410:  CBZ             R0, loc_4B2420
4B2412:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4B2416:  CBNZ            R0, loc_4B2420
4B2418:  MOV             R0, R6; this
4B241A:  MOVS            R1, #3; int
4B241C:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B2420:  LDR             R0, [R6,#0x14]; this
4B2422:  CBZ             R0, loc_4B2432
4B2424:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4B2428:  CBNZ            R0, loc_4B2432
4B242A:  MOV             R0, R6; this
4B242C:  MOVS            R1, #4; int
4B242E:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B2432:  LDR             R0, [R6,#0x18]; this
4B2434:  CBZ             R0, loc_4B2444
4B2436:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4B243A:  CBNZ            R0, loc_4B2444
4B243C:  MOV             R0, R6; this
4B243E:  MOVS            R1, #5; int
4B2440:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B2444:  LDR             R0, [R6,#0x1C]; this
4B2446:  CBZ             R0, loc_4B2456
4B2448:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4B244C:  CBNZ            R0, loc_4B2456
4B244E:  MOV             R0, R6; this
4B2450:  MOVS            R1, #6; int
4B2452:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B2456:  LDR             R0, [R6,#0x20]; this
4B2458:  CBZ             R0, loc_4B2474
4B245A:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4B245E:  CBNZ            R0, loc_4B2470
4B2460:  LDR             R0, [R6,#0x20]; this
4B2462:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4B2466:  CBNZ            R0, loc_4B2470
4B2468:  MOV             R0, R6; this
4B246A:  MOVS            R1, #7; int
4B246C:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B2470:  LDR             R0, [R6,#0x20]
4B2472:  CBNZ            R0, loc_4B247E
4B2474:  MOV             R0, R6; this
4B2476:  BLX             j__ZN19CPedGroupMembership16AppointNewLeaderEv; CPedGroupMembership::AppointNewLeader(void)
4B247A:  LDR             R0, [R6,#0x20]
4B247C:  CBZ             R0, loc_4B24FC
4B247E:  MOVS            R5, #1
4B2480:  LDR.W           R0, [R6,R5,LSL#2]
4B2484:  CBZ             R0, loc_4B24F6
4B2486:  LDRB.W          R1, [R0,#0x48D]
4B248A:  LSLS            R1, R1, #0x19
4B248C:  BMI             loc_4B24F6
4B248E:  LDR             R1, [R6,#0x20]
4B2490:  LDR             R2, [R0,#0x14]
4B2492:  LDR             R3, [R1,#0x14]
4B2494:  ADD.W           R4, R2, #0x30 ; '0'
4B2498:  CMP             R2, #0
4B249A:  IT EQ
4B249C:  ADDEQ           R4, R0, #4
4B249E:  ADD.W           R2, R3, #0x30 ; '0'
4B24A2:  CMP             R3, #0
4B24A4:  VLDR            S0, [R4]
4B24A8:  IT EQ
4B24AA:  ADDEQ           R2, R1, #4
4B24AC:  VLDR            D16, [R4,#4]
4B24B0:  VLDR            S2, [R2]
4B24B4:  VLDR            D17, [R2,#4]
4B24B8:  VSUB.F32        S0, S0, S2
4B24BC:  VLDR            S4, [R6,#0x24]
4B24C0:  VSUB.F32        D16, D16, D17
4B24C4:  VMUL.F32        S4, S4, S4
4B24C8:  VMUL.F32        D1, D16, D16
4B24CC:  VMUL.F32        S0, S0, S0
4B24D0:  VADD.F32        S0, S0, S2
4B24D4:  VADD.F32        S0, S0, S3
4B24D8:  VCMPE.F32       S0, S4
4B24DC:  VMRS            APSR_nzcv, FPSCR
4B24E0:  BLE             loc_4B24F6
4B24E2:  LDRB.W          R1, [R1,#0x33]
4B24E6:  LDRB.W          R0, [R0,#0x33]
4B24EA:  CMP             R0, R1
4B24EC:  BNE             loc_4B24F6
4B24EE:  SUBS            R1, R5, #1; int
4B24F0:  MOV             R0, R6; this
4B24F2:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B24F6:  ADDS            R5, #1
4B24F8:  CMP             R5, #8
4B24FA:  BNE             loc_4B2480
4B24FC:  POP.W           {R11}
4B2500:  POP             {R4-R7,PC}
