; =========================================================
; Game Engine Function: _ZN4CCam26Process_FollowPedWithMouseERK7CVectorfff
; Address            : 0x3C21BC - 0x3C2CA2
; =========================================================

3C21BC:  PUSH            {R4-R7,LR}
3C21BE:  ADD             R7, SP, #0xC
3C21C0:  PUSH.W          {R8-R11}
3C21C4:  SUB             SP, SP, #4
3C21C6:  VPUSH           {D8-D15}
3C21CA:  SUB             SP, SP, #0x90
3C21CC:  MOV             R4, R0
3C21CE:  MOV             R5, R1
3C21D0:  MOVS            R1, #0
3C21D2:  LDR.W           R0, [R4,#0x1F4]
3C21D6:  MOVT            R1, #0x428C; int
3C21DA:  MOV             R6, R2
3C21DC:  STR.W           R1, [R4,#0x8C]
3C21E0:  LDRB.W          R0, [R0,#0x3A]
3C21E4:  AND.W           R0, R0, #7
3C21E8:  CMP             R0, #3
3C21EA:  BNE.W           loc_3C2C94
3C21EE:  LDRB            R0, [R4,#0xA]
3C21F0:  CBZ             R0, loc_3C220C
3C21F2:  MOVS            R0, #1
3C21F4:  MOV.W           R8, #0
3C21F8:  STRB            R0, [R4,#3]
3C21FA:  MOVS            R0, #0; this
3C21FC:  STRB.W          R8, [R4,#0xC]
3C2200:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C2204:  BLX             j__ZN4CPad17ClearMouseHistoryEv; CPad::ClearMouseHistory(void)
3C2208:  STRB.W          R8, [R4,#0xA]
3C220C:  MOV.W           R0, #0xFFFFFFFF; int
3C2210:  MOVS            R1, #0; bool
3C2212:  MOV.W           R8, #0
3C2216:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3C221A:  CBZ             R0, loc_3C2232
3C221C:  MOV.W           R0, #0xFFFFFFFF; int
3C2220:  MOVS            R1, #0; bool
3C2222:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3C2226:  LDR.W           R0, [R0,#0x5A0]
3C222A:  CMP             R0, #6
3C222C:  IT EQ
3C222E:  MOVEQ.W         R8, #1
3C2232:  LDR.W           R0, =(fTranslateCamUp_ptr - 0x3C2240)
3C2236:  VMOV            S18, R6
3C223A:  LDR             R1, [R5,#8]; int
3C223C:  ADD             R0, PC; fTranslateCamUp_ptr
3C223E:  STR             R1, [SP,#0xF0+var_88]
3C2240:  VLDR            S0, [SP,#0xF0+var_88]
3C2244:  LDR             R0, [R0]; fTranslateCamUp
3C2246:  VLDR            D16, [R5]
3C224A:  MOVS            R5, #0
3C224C:  VLDR            S2, [R0]
3C2250:  MOVS            R0, #0; this
3C2252:  VSTR            D16, [SP,#0xF0+var_90]
3C2256:  VADD.F32        S16, S2, S0
3C225A:  VSTR            S16, [SP,#0xF0+var_88]
3C225E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C2262:  LDRB.W          R0, [R0,#0x110]
3C2266:  LSLS            R0, R0, #0x1A
3C2268:  BMI             loc_3C2324
3C226A:  MOVS            R0, #0; this
3C226C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C2270:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3C2278)
3C2274:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3C2276:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
3C2278:  VLDR            S20, [R0,#0x10]
3C227C:  VLDR            S16, [R0,#0xC]
3C2280:  MOVS            R0, #0
3C2282:  VCMP.F32        S20, #0.0
3C2286:  VMRS            APSR_nzcv, FPSCR
3C228A:  VCMP.F32        S16, #0.0
3C228E:  IT NE
3C2290:  MOVNE           R0, #1
3C2292:  VMRS            APSR_nzcv, FPSCR
3C2296:  IT NE
3C2298:  MOVNE           R5, #1
3C229A:  ORRS            R0, R5
3C229C:  BEQ             loc_3C22AE
3C229E:  MOVS            R0, #0; this
3C22A0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C22A4:  LDRH.W          R0, [R0,#0x110]
3C22A8:  CMP             R0, #0
3C22AA:  BEQ.W           loc_3C2C5A
3C22AE:  MOVS            R0, #0; this
3C22B0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C22B4:  BLX             j__ZN4CPad19LookAroundLeftRightEv; CPad::LookAroundLeftRight(void)
3C22B8:  MOV             R5, R0
3C22BA:  MOVS            R0, #0; this
3C22BC:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C22C0:  BLX             j__ZN4CPad16LookAroundUpDownEv; CPad::LookAroundUpDown(void)
3C22C4:  VLDR            S0, =80.0
3C22C8:  VLDR            S2, [R4,#0x8C]
3C22CC:  LDR.W           R1, =(fStickSens_ptr - 0x3C22D8)
3C22D0:  VDIV.F32        S0, S2, S0
3C22D4:  ADD             R1, PC; fStickSens_ptr
3C22D6:  VMOV            S2, R0
3C22DA:  LDR             R0, [R1]; fStickSens
3C22DC:  NEGS            R1, R5
3C22DE:  VLDR            S8, =0.042857
3C22E2:  VCVT.F32.S32    S2, S2
3C22E6:  VLDR            S10, =0.071429
3C22EA:  VMOV            S4, R1
3C22EE:  VMUL.F32        S8, S0, S8
3C22F2:  VCVT.F32.S32    S4, S4
3C22F6:  VLDR            S6, [R0]
3C22FA:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C2306)
3C22FE:  VMUL.F32        S0, S0, S10
3C2302:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C2304:  VMUL.F32        S2, S6, S2
3C2308:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C230A:  VMUL.F32        S4, S6, S4
3C230E:  VMUL.F32        S2, S2, S8
3C2312:  VMUL.F32        S0, S4, S0
3C2316:  VLDR            S4, [R0]
3C231A:  VMUL.F32        S20, S4, S2
3C231E:  VMUL.F32        S16, S4, S0
3C2322:  B               loc_3C238A
3C2324:  VLDR            S4, [R4,#0x17C]
3C2328:  ADD             R0, SP, #0xF0+var_C0; this
3C232A:  VLDR            S0, [R4,#0x174]
3C232E:  VLDR            S6, [SP,#0xF0+var_90]
3C2332:  VSUB.F32        S4, S4, S16
3C2336:  VLDR            S2, [R4,#0x178]
3C233A:  VLDR            S8, [SP,#0xF0+var_90+4]
3C233E:  VSUB.F32        S0, S0, S6
3C2342:  VSUB.F32        S2, S2, S8
3C2346:  VSTR            S0, [SP,#0xF0+var_C0]
3C234A:  VSTR            S2, [SP,#0xF0+var_C0+4]
3C234E:  VSTR            S4, [SP,#0xF0+var_B8]
3C2352:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C2356:  VLDR            S0, =-0.9
3C235A:  VLDR            S2, [SP,#0xF0+var_B8]
3C235E:  VCMPE.F32       S2, S0
3C2362:  VMRS            APSR_nzcv, FPSCR
3C2366:  BGE             loc_3C2372
3C2368:  VLDR            S0, =3.1416
3C236C:  VADD.F32        S0, S18, S0
3C2370:  B               loc_3C237E
3C2372:  LDRD.W          R1, R0, [SP,#0xF0+var_C0]; x
3C2376:  BLX             atan2f
3C237A:  VMOV            S0, R0
3C237E:  VLDR            S2, [R4,#0x94]
3C2382:  VLDR            S20, =0.0
3C2386:  VSUB.F32        S16, S0, S2
3C238A:  LDR.W           R0, =(TheCamera_ptr - 0x3C2396)
3C238E:  LDR.W           R2, =(_ZN5CDraw9FadeValueE_ptr - 0x3C2398)
3C2392:  ADD             R0, PC; TheCamera_ptr
3C2394:  ADD             R2, PC; _ZN5CDraw9FadeValueE_ptr
3C2396:  LDR             R1, [R0]; TheCamera ; int
3C2398:  LDR             R0, [R2]; CDraw::FadeValue ...
3C239A:  LDRB.W          R2, [R1,#(byte_951FF7 - 0x951FA8)]
3C239E:  LDRB            R0, [R0]; CDraw::FadeValue
3C23A0:  CBZ             R2, loc_3C23BE
3C23A2:  LDRH.W          R1, [R1,#(word_952B60 - 0x951FA8)]
3C23A6:  CMP             R1, #1
3C23A8:  BNE             loc_3C23BE
3C23AA:  CMP             R0, #0xC8
3C23AC:  BHI             loc_3C23DA
3C23AE:  LDR.W           R1, =(nFadeControlThreshhold_ptr - 0x3C23B6)
3C23B2:  ADD             R1, PC; nFadeControlThreshhold_ptr
3C23B4:  LDR             R1, [R1]; nFadeControlThreshhold
3C23B6:  LDRH            R1, [R1]
3C23B8:  CMP             R0, R1
3C23BA:  BLS             loc_3C23C2
3C23BC:  B               loc_3C23DA
3C23BE:  CMP             R0, #0xC8
3C23C0:  BHI             loc_3C23DA
3C23C2:  MOVS            R0, #0; this
3C23C4:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C23C8:  LDRB.W          R0, [R0,#0x110]
3C23CC:  LSLS            R0, R0, #0x1A
3C23CE:  BMI             loc_3C23DA
3C23D0:  VLDR            S0, [R4,#0x84]
3C23D4:  ADD.W           R6, R4, #0x84
3C23D8:  B               loc_3C2436
3C23DA:  LDR.W           R0, =(fDefaultAlphaOrient_ptr - 0x3C23EA)
3C23DE:  ADD.W           R6, R4, #0x84
3C23E2:  VLDR            S20, =-0.05
3C23E6:  ADD             R0, PC; fDefaultAlphaOrient_ptr
3C23E8:  VLDR            S0, [R4,#0x84]
3C23EC:  LDR             R0, [R0]; fDefaultAlphaOrient
3C23EE:  VLDR            S2, [R0]
3C23F2:  VADD.F32        S4, S2, S20
3C23F6:  VCMPE.F32       S0, S4
3C23FA:  VMRS            APSR_nzcv, FPSCR
3C23FE:  BGE             loc_3C2406
3C2400:  VLDR            S20, =0.05
3C2404:  B               loc_3C2436
3C2406:  VCMPE.F32       S0, S2
3C240A:  VMRS            APSR_nzcv, FPSCR
3C240E:  BGE             loc_3C2416
3C2410:  VSUB.F32        S20, S2, S0
3C2414:  B               loc_3C2436
3C2416:  VLDR            S4, =0.05
3C241A:  VADD.F32        S4, S2, S4
3C241E:  VCMPE.F32       S0, S4
3C2422:  VMRS            APSR_nzcv, FPSCR
3C2426:  BGT             loc_3C2436
3C2428:  VCMPE.F32       S0, S2
3C242C:  VMRS            APSR_nzcv, FPSCR
3C2430:  BGT             loc_3C2410
3C2432:  VLDR            S20, =0.0
3C2436:  VLDR            S2, [R4,#0x94]
3C243A:  VADD.F32        S0, S20, S0
3C243E:  VLDR            S23, =3.1416
3C2442:  VADD.F32        S2, S16, S2
3C2446:  VCMPE.F32       S2, S23
3C244A:  VSTR            S2, [R4,#0x94]
3C244E:  VMRS            APSR_nzcv, FPSCR
3C2452:  VSTR            S0, [R6]
3C2456:  BLE             loc_3C245E
3C2458:  VLDR            S4, =-6.2832
3C245C:  B               loc_3C2470
3C245E:  VLDR            S4, =-3.1416
3C2462:  VCMPE.F32       S2, S4
3C2466:  VMRS            APSR_nzcv, FPSCR
3C246A:  BGE             loc_3C2478
3C246C:  VLDR            S4, =6.2832
3C2470:  VADD.F32        S2, S2, S4
3C2474:  VSTR            S2, [R4,#0x94]
3C2478:  VLDR            S2, =0.7854
3C247C:  VCMPE.F32       S0, S2
3C2480:  VMRS            APSR_nzcv, FPSCR
3C2484:  BGT             loc_3C2494
3C2486:  VLDR            S2, =-1.5621
3C248A:  VCMPE.F32       S0, S2
3C248E:  VMRS            APSR_nzcv, FPSCR
3C2492:  BGE             loc_3C249C
3C2494:  VMOV            D0, D1
3C2498:  VSTR            S2, [R6]
3C249C:  LDR.W           R0, =(fAngleDist_ptr - 0x3C24B0)
3C24A0:  VCMPE.F32       S0, #0.0
3C24A4:  LDR.W           R1, =(fBaseDist_ptr - 0x3C24B2)
3C24A8:  VMRS            APSR_nzcv, FPSCR
3C24AC:  ADD             R0, PC; fAngleDist_ptr
3C24AE:  ADD             R1, PC; fBaseDist_ptr
3C24B0:  LDR             R0, [R0]; fAngleDist
3C24B2:  LDR             R1, [R1]; fBaseDist
3C24B4:  VLDR            S22, [R0]
3C24B8:  VLDR            S20, [R1]
3C24BC:  BLE             loc_3C24D6
3C24BE:  LDR.W           R0, =(fFalloff_ptr - 0x3C24CA)
3C24C2:  VLDR            S4, =1.5708
3C24C6:  ADD             R0, PC; fFalloff_ptr
3C24C8:  LDR             R0, [R0]; fFalloff
3C24CA:  VLDR            S2, [R0]
3C24CE:  VMUL.F32        S0, S0, S2
3C24D2:  VMIN.F32        D0, D0, D2
3C24D6:  VMOV            R0, S0; x
3C24DA:  BLX             cosf
3C24DE:  LDR.W           R1, =(TheCamera_ptr - 0x3C24EE)
3C24E2:  VMOV            S24, R0
3C24E6:  MOV.W           R0, #0xFFFFFFFF; int
3C24EA:  ADD             R1, PC; TheCamera_ptr
3C24EC:  LDR             R1, [R1]; TheCamera
3C24EE:  LDRB.W          R1, [R1,#(byte_951FDD - 0x951FA8)]
3C24F2:  CMP             R1, #0
3C24F4:  ITT NE
3C24F6:  LDRNE           R1, [R4,#0x74]
3C24F8:  STRNE.W         R1, [R4,#0x94]
3C24FC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3C2500:  CMP             R0, #0
3C2502:  BEQ             loc_3C259C
3C2504:  MOV.W           R0, #0xFFFFFFFF; int
3C2508:  MOVS            R1, #0; bool
3C250A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3C250E:  CMP             R0, #0
3C2510:  BEQ             loc_3C259C
3C2512:  LDR.W           R0, [R0,#0x5A4]
3C2516:  SUBS            R0, #3
3C2518:  CMP             R0, #2
3C251A:  BCC             loc_3C25A8
3C251C:  LDR.W           R0, =(currentPad_ptr - 0x3C2524)
3C2520:  ADD             R0, PC; currentPad_ptr
3C2522:  LDR             R0, [R0]; currentPad
3C2524:  LDR             R0, [R0]
3C2526:  CMP             R0, #0
3C2528:  ITT EQ
3C252A:  MOVEQ           R0, #0; this
3C252C:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C2530:  BLX             j__ZN4CPad17IsFlyingRCVehicleEv; CPad::IsFlyingRCVehicle(void)
3C2534:  CBNZ            R0, loc_3C25A8
3C2536:  LDR.W           R0, =(TheCamera_ptr - 0x3C253E)
3C253A:  ADD             R0, PC; TheCamera_ptr
3C253C:  B               loc_3C25A2
3C253E:  ALIGN 0x10
3C2540:  DCFS 80.0
3C2544:  DCFS 0.042857
3C2548:  DCFS 0.071429
3C254C:  DCFS -0.9
3C2550:  DCFS 3.1416
3C2554:  DCFS 0.0
3C2558:  DCFS -0.05
3C255C:  DCFS 0.05
3C2560:  DCFS -6.2832
3C2564:  DCFS -3.1416
3C2568:  DCFS 6.2832
3C256C:  DCFS 0.7854
3C2570:  DCFS -1.5621
3C2574:  DCFS 1.5708
3C2578:  DCFS 0.4
3C257C:  DCFS 0.6
3C2580:  DCFS -0.3
3C2584:  DCFS -0.35
3C2588:  DCFS 0.9
3C258C:  DCFS 180.0
3C2590:  DCFS 1.1
3C2594:  DCFS 0.1
3C2598:  DCFS 0.3
3C259C:  LDR.W           R0, =(TheCamera_ptr - 0x3C25A4)
3C25A0:  ADD             R0, PC; TheCamera_ptr
3C25A2:  LDR             R0, [R0]; TheCamera
3C25A4:  LDRB            R0, [R0,#(word_951FC2 - 0x951FA8)]
3C25A6:  CBZ             R0, loc_3C25BC
3C25A8:  LDR.W           R0, =(TheCamera_ptr - 0x3C25B0)
3C25AC:  ADD             R0, PC; TheCamera_ptr
3C25AE:  LDR             R0, [R0]; TheCamera
3C25B0:  VLDR            S0, [R0,#0x11C]
3C25B4:  VADD.F32        S0, S0, S23
3C25B8:  VSTR            S0, [R4,#0x94]
3C25BC:  LDR.W           R0, =(TheCamera_ptr - 0x3C25C8)
3C25C0:  VMUL.F32        S0, S22, S24
3C25C4:  ADD             R0, PC; TheCamera_ptr
3C25C6:  LDR             R0, [R0]; TheCamera
3C25C8:  LDRB            R0, [R0,#(word_951FC2+1 - 0x951FA8)]
3C25CA:  CBZ             R0, loc_3C25DC
3C25CC:  LDR.W           R0, =(TheCamera_ptr - 0x3C25D4)
3C25D0:  ADD             R0, PC; TheCamera_ptr
3C25D2:  LDR             R0, [R0]; TheCamera
3C25D4:  LDR.W           R0, [R0,#(dword_9520C4 - 0x951FA8)]
3C25D8:  STR.W           R0, [R4,#0x94]
3C25DC:  CMP.W           R8, #0
3C25E0:  VADD.F32        S20, S20, S0
3C25E4:  ITE NE
3C25E6:  VSTRNE          S18, [R4,#0x94]
3C25EA:  VLDREQ          S18, [R4,#0x94]
3C25EE:  VMOV            R5, S18
3C25F2:  MOV             R0, R5; x
3C25F4:  BLX             cosf
3C25F8:  LDR             R6, [R6]
3C25FA:  MOV             R8, R0
3C25FC:  MOV             R0, R6; x
3C25FE:  BLX             cosf
3C2602:  VMOV            S16, R0
3C2606:  MOV             R0, R5; x
3C2608:  BLX             sinf
3C260C:  VMOV            S0, R0
3C2610:  MOV             R0, R6; x
3C2612:  VMOV            S2, R8
3C2616:  VMUL.F32        S18, S16, S0
3C261A:  VMUL.F32        S22, S2, S16
3C261E:  VNMUL.F32       S24, S16, S0
3C2622:  VNMUL.F32       S16, S2, S16
3C2626:  BLX             sinf
3C262A:  VMOV            S0, R0
3C262E:  STR.W           R0, [R4,#0x170]
3C2632:  VMUL.F32        S2, S20, S18
3C2636:  VSTR            S16, [R4,#0x168]
3C263A:  VMUL.F32        S0, S20, S0
3C263E:  VSTR            S24, [R4,#0x16C]
3C2642:  VMUL.F32        S4, S20, S22
3C2646:  VLDR            S6, [SP,#0xF0+var_90]
3C264A:  VLDR            S8, [SP,#0xF0+var_90+4]
3C264E:  MOV.W           R9, #0
3C2652:  VLDR            S10, [SP,#0xF0+var_88]
3C2656:  ADD.W           R8, SP, #0xF0+var_C0
3C265A:  LDR.W           R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3C266E)
3C265E:  ADD.W           R5, R4, #0x174
3C2662:  ADD             R6, SP, #0xF0+var_90
3C2664:  ADD             R3, SP, #0xF0+var_C4
3C2666:  VADD.F32        S2, S8, S2
3C266A:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3C266C:  VSUB.F32        S0, S10, S0
3C2670:  MOV.W           R10, #1
3C2674:  VADD.F32        S4, S6, S4
3C2678:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
3C267A:  MOV             R2, R8
3C267C:  VSTR            S4, [R4,#0x174]
3C2680:  VSTR            S2, [R4,#0x178]
3C2684:  VSTR            S0, [R4,#0x17C]
3C2688:  VLDR            D16, [SP,#0xF0+var_90]
3C268C:  LDR             R1, [SP,#0xF0+var_88]
3C268E:  STR.W           R1, [R4,#0x128]
3C2692:  VSTR            D16, [R4,#0x120]
3C2696:  STR.W           R9, [SP,#0xF0+var_C4]
3C269A:  LDR.W           R1, [R4,#0x1F4]
3C269E:  STR             R1, [R0]; CWorld::pIgnoreEntity
3C26A0:  MOV             R0, R6
3C26A2:  MOV             R1, R5
3C26A4:  STRD.W          R10, R10, [SP,#0xF0+var_F0]
3C26A8:  STRD.W          R10, R10, [SP,#0xF0+var_E8]
3C26AC:  STRD.W          R9, R9, [SP,#0xF0+var_E0]
3C26B0:  STRD.W          R10, R9, [SP,#0xF0+var_D8]
3C26B4:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3C26B8:  CMP             R0, #1
3C26BA:  BNE.W           loc_3C27E4
3C26BE:  VLDR            S0, [SP,#0xF0+var_C0]
3C26C2:  ORR.W           R6, R6, #4
3C26C6:  VLDR            S2, [SP,#0xF0+var_90]
3C26CA:  VLDR            D16, [SP,#0xF0+var_C0+4]
3C26CE:  VSUB.F32        S0, S2, S0
3C26D2:  VLDR            D17, [R6]
3C26D6:  VSUB.F32        D16, D17, D16
3C26DA:  LDR             R0, [SP,#0xF0+var_C4]
3C26DC:  LDRB.W          R0, [R0,#0x3A]
3C26E0:  VMUL.F32        D1, D16, D16
3C26E4:  AND.W           R0, R0, #7
3C26E8:  VMUL.F32        S0, S0, S0
3C26EC:  CMP             R0, #3
3C26EE:  VADD.F32        S0, S0, S2
3C26F2:  VADD.F32        S0, S0, S3
3C26F6:  VSQRT.F32       S0, S0
3C26FA:  BNE             loc_3C2790
3C26FC:  VSUB.F32        S18, S20, S0
3C2700:  VLDR            S2, =0.4
3C2704:  VCMPE.F32       S18, S2
3C2708:  VMRS            APSR_nzcv, FPSCR
3C270C:  BLE             loc_3C2790
3C270E:  MOVS            R1, #1
3C2710:  MOVS            R0, #0
3C2712:  STRD.W          R1, R1, [SP,#0xF0+var_F0]
3C2716:  ADD             R3, SP, #0xF0+var_C4
3C2718:  STRD.W          R1, R1, [SP,#0xF0+var_E8]
3C271C:  STRD.W          R0, R0, [SP,#0xF0+var_E0]
3C2720:  STRD.W          R1, R0, [SP,#0xF0+var_D8]
3C2724:  ADD             R0, SP, #0xF0+var_C0
3C2726:  MOV             R1, R5
3C2728:  MOV             R2, R0
3C272A:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3C272E:  CMP             R0, #1
3C2730:  BNE             loc_3C27C2
3C2732:  VLDR            S0, [SP,#0xF0+var_C0]
3C2736:  ORR.W           R0, R8, #4
3C273A:  VLDR            S2, [SP,#0xF0+var_90]
3C273E:  VLDR            D16, [R0]
3C2742:  VSUB.F32        S0, S2, S0
3C2746:  VLDR            D17, [R6]
3C274A:  VSUB.F32        D16, D17, D16
3C274E:  LDR             R0, [SP,#0xF0+var_B8]
3C2750:  VMUL.F32        D1, D16, D16
3C2754:  VLDR            D16, [SP,#0xF0+var_C0]
3C2758:  VMUL.F32        S0, S0, S0
3C275C:  STR             R0, [R5,#8]
3C275E:  VSTR            D16, [R5]
3C2762:  VADD.F32        S0, S0, S2
3C2766:  VADD.F32        S0, S0, S3
3C276A:  VLDR            S2, =0.6
3C276E:  VSQRT.F32       S0, S0
3C2772:  VCMPE.F32       S0, S2
3C2776:  VMRS            APSR_nzcv, FPSCR
3C277A:  BGE             loc_3C27E4
3C277C:  VLDR            S2, =-0.3
3C2780:  VLDR            S4, =0.05
3C2784:  VADD.F32        S0, S0, S2
3C2788:  LDR.W           R0, =(Scene_ptr - 0x3C2790)
3C278C:  ADD             R0, PC; Scene_ptr
3C278E:  B               loc_3C27BC
3C2790:  VLDR            S2, =0.6
3C2794:  VLDR            D16, [SP,#0xF0+var_C0]
3C2798:  VCMPE.F32       S0, S2
3C279C:  LDR             R0, [SP,#0xF0+var_B8]
3C279E:  VMRS            APSR_nzcv, FPSCR
3C27A2:  STR             R0, [R5,#8]
3C27A4:  VSTR            D16, [R5]
3C27A8:  BGE             loc_3C27E4
3C27AA:  VLDR            S2, =-0.3
3C27AE:  VLDR            S4, =0.05
3C27B2:  VADD.F32        S0, S0, S2
3C27B6:  LDR.W           R0, =(Scene_ptr - 0x3C27BE)
3C27BA:  ADD             R0, PC; Scene_ptr
3C27BC:  VMAX.F32        D0, D0, D2
3C27C0:  B               loc_3C27D8
3C27C2:  VLDR            S0, =-0.35
3C27C6:  VLDR            S2, =0.9
3C27CA:  VADD.F32        S0, S18, S0
3C27CE:  LDR.W           R0, =(Scene_ptr - 0x3C27D6)
3C27D2:  ADD             R0, PC; Scene_ptr
3C27D4:  VMIN.F32        D0, D0, D1
3C27D8:  VMOV            R1, S0
3C27DC:  LDR             R0, [R0]; Scene
3C27DE:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3C27E0:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
3C27E4:  ADD.W           R0, R4, #0x168
3C27E8:  STR             R0, [SP,#0xF0+var_CC]
3C27EA:  LDR.W           R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3C27FA)
3C27EE:  VMOV.F32        S20, #0.5
3C27F2:  VLDR            S18, =180.0
3C27F6:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3C27F8:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
3C27FA:  STR.W           R9, [R0]; CWorld::pIgnoreEntity
3C27FE:  VLDR            S0, [R4,#0x8C]
3C2802:  VMUL.F32        S0, S0, S23
3C2806:  VDIV.F32        S0, S0, S18
3C280A:  VMUL.F32        S0, S0, S20
3C280E:  VMOV            R0, S0; x
3C2812:  BLX             tanf
3C2816:  LDR.W           R2, =(_ZN5CDraw15ms_fAspectRatioE_ptr - 0x3C2826)
3C281A:  VMOV            S14, R0
3C281E:  LDR.W           R1, =(Scene_ptr - 0x3C282C)
3C2822:  ADD             R2, PC; _ZN5CDraw15ms_fAspectRatioE_ptr
3C2824:  VLDR            S22, =1.1
3C2828:  ADD             R1, PC; Scene_ptr
3C282A:  VLDR            S2, [R4,#0x168]
3C282E:  LDR             R2, [R2]; CDraw::ms_fAspectRatio ...
3C2830:  LDR             R1, [R1]; Scene
3C2832:  VLDR            S4, [R4,#0x16C]
3C2836:  VLDR            S0, [R2]
3C283A:  LDR             R1, [R1,#(dword_9FC93C - 0x9FC938)]
3C283C:  VMUL.F32        S0, S0, S22
3C2840:  VLDR            S6, [R4,#0x170]
3C2844:  VLDR            S8, [R4,#0x174]
3C2848:  VLDR            S30, [R1,#0x80]
3C284C:  VLDR            S10, [R4,#0x178]
3C2850:  VMUL.F32        S2, S30, S2
3C2854:  VLDR            S12, [R4,#0x17C]
3C2858:  VMUL.F32        S4, S30, S4
3C285C:  STRD.W          R9, R10, [SP,#0xF0+var_F0]
3C2860:  VMUL.F32        S6, S30, S6
3C2864:  STRD.W          R10, R9, [SP,#0xF0+var_E8]
3C2868:  VMUL.F32        S24, S14, S0
3C286C:  STRD.W          R10, R9, [SP,#0xF0+var_E0]
3C2870:  STR.W           R9, [SP,#0xF0+var_D8]
3C2874:  VADD.F32        S0, S2, S8
3C2878:  VADD.F32        S2, S4, S10
3C287C:  VADD.F32        S4, S6, S12
3C2880:  VMUL.F32        S6, S30, S24
3C2884:  VMOV            R0, S0
3C2888:  VMOV            R1, S2
3C288C:  VMOV            R2, S4
3C2890:  VMOV            R3, S6
3C2894:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
3C2898:  CMP             R0, #0
3C289A:  BEQ.W           loc_3C2A56
3C289E:  LDR.W           R0, =(gaTempSphereColPoints_ptr - 0x3C28B0)
3C28A2:  MOVS            R5, #0
3C28A4:  VLDR            S26, =0.1
3C28A8:  MOV.W           R8, #1
3C28AC:  ADD             R0, PC; gaTempSphereColPoints_ptr
3C28AE:  VLDR            S28, =0.3
3C28B2:  MOV.W           R9, #0
3C28B6:  LDR             R6, [R0]; gaTempSphereColPoints
3C28B8:  LDR.W           R0, =(Scene_ptr - 0x3C28C0)
3C28BC:  ADD             R0, PC; Scene_ptr
3C28BE:  LDR             R0, [R0]; Scene
3C28C0:  STR             R0, [SP,#0xF0+var_C8]
3C28C2:  LDR.W           R0, =(Scene_ptr - 0x3C28CA)
3C28C6:  ADD             R0, PC; Scene_ptr
3C28C8:  LDR.W           R10, [R0]; Scene
3C28CC:  LDR.W           R0, =(_ZN5CDraw15ms_fAspectRatioE_ptr - 0x3C28D4)
3C28D0:  ADD             R0, PC; _ZN5CDraw15ms_fAspectRatioE_ptr
3C28D2:  LDR.W           R11, [R0]; CDraw::ms_fAspectRatio ...
3C28D6:  VLDR            S6, [R4,#0x174]
3C28DA:  VLDR            S12, [R6]
3C28DE:  VLDR            S8, [R4,#0x178]
3C28E2:  VLDR            S14, [R6,#4]
3C28E6:  VSUB.F32        S6, S12, S6
3C28EA:  VLDR            S0, [R4,#0x168]
3C28EE:  VSUB.F32        S8, S14, S8
3C28F2:  VLDR            S2, [R4,#0x16C]
3C28F6:  VLDR            S10, [R4,#0x17C]
3C28FA:  VLDR            S1, [R6,#8]
3C28FE:  VLDR            S4, [R4,#0x170]
3C2902:  VSUB.F32        S10, S1, S10
3C2906:  VMUL.F32        S14, S6, S0
3C290A:  VMUL.F32        S12, S8, S2
3C290E:  VMUL.F32        S1, S10, S4
3C2912:  VADD.F32        S12, S14, S12
3C2916:  VADD.F32        S12, S12, S1
3C291A:  VMUL.F32        S2, S2, S12
3C291E:  VMUL.F32        S0, S0, S12
3C2922:  VMUL.F32        S4, S4, S12
3C2926:  VSUB.F32        S2, S8, S2
3C292A:  VSUB.F32        S0, S6, S0
3C292E:  VSUB.F32        S4, S10, S4
3C2932:  VMUL.F32        S2, S2, S2
3C2936:  VMUL.F32        S0, S0, S0
3C293A:  VMUL.F32        S4, S4, S4
3C293E:  VADD.F32        S0, S0, S2
3C2942:  VADD.F32        S0, S4, S0
3C2946:  VSQRT.F32       S0, S0
3C294A:  VDIV.F32        S0, S0, S24
3C294E:  VMIN.F32        D16, D15, D0
3C2952:  VMAX.F32        D8, D16, D13
3C2956:  VCMPE.F32       S16, S30
3C295A:  VMRS            APSR_nzcv, FPSCR
3C295E:  BGE             loc_3C296C
3C2960:  VMOV            R1, S16
3C2964:  LDR             R0, [SP,#0xF0+var_C8]
3C2966:  LDR             R0, [R0,#4]
3C2968:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
3C296C:  VCMP.F32        S16, S26
3C2970:  VMRS            APSR_nzcv, FPSCR
3C2974:  BNE             loc_3C29C0
3C2976:  VLDR            S0, [SP,#0xF0+var_90]
3C297A:  VLDR            S6, [R4,#0x174]
3C297E:  VLDR            S2, [SP,#0xF0+var_90+4]
3C2982:  VLDR            S8, [R4,#0x178]
3C2986:  VSUB.F32        S0, S0, S6
3C298A:  VLDR            S4, [SP,#0xF0+var_88]
3C298E:  VLDR            S10, [R4,#0x17C]
3C2992:  VSUB.F32        S2, S2, S8
3C2996:  VSUB.F32        S4, S4, S10
3C299A:  VMUL.F32        S0, S0, S28
3C299E:  VMUL.F32        S2, S2, S28
3C29A2:  VMUL.F32        S4, S4, S28
3C29A6:  VADD.F32        S19, S6, S0
3C29AA:  VADD.F32        S17, S8, S2
3C29AE:  VADD.F32        S21, S10, S4
3C29B2:  VSTR            S19, [R4,#0x174]
3C29B6:  VSTR            S17, [R4,#0x178]
3C29BA:  VSTR            S21, [R4,#0x17C]
3C29BE:  B               loc_3C29CC
3C29C0:  VLDR            S19, [R4,#0x174]
3C29C4:  VLDR            S17, [R4,#0x178]
3C29C8:  VLDR            S21, [R4,#0x17C]
3C29CC:  VLDR            S0, [R4,#0x8C]
3C29D0:  LDR.W           R1, [R10,#(dword_9FC93C - 0x9FC938)]
3C29D4:  VMUL.F32        S0, S0, S23
3C29D8:  VLDR            S30, [R1,#0x80]
3C29DC:  VDIV.F32        S0, S0, S18
3C29E0:  VMUL.F32        S0, S0, S20
3C29E4:  VMOV            R0, S0; x
3C29E8:  BLX             tanf
3C29EC:  VMOV            S0, R0
3C29F0:  VLDR            S2, [R4,#0x168]
3C29F4:  VLDR            S4, [R4,#0x16C]
3C29F8:  VMUL.F32        S0, S30, S0
3C29FC:  VLDR            S6, [R4,#0x170]
3C2A00:  VMUL.F32        S2, S30, S2
3C2A04:  VLDR            S8, [R11]
3C2A08:  VMUL.F32        S4, S30, S4
3C2A0C:  STRD.W          R5, R8, [SP,#0xF0+var_F0]
3C2A10:  VMUL.F32        S6, S30, S6
3C2A14:  STRD.W          R8, R5, [SP,#0xF0+var_E8]
3C2A18:  STRD.W          R8, R5, [SP,#0xF0+var_E0]
3C2A1C:  STR             R5, [SP,#0xF0+var_D8]
3C2A1E:  VMUL.F32        S0, S0, S22
3C2A22:  VADD.F32        S2, S2, S19
3C2A26:  VADD.F32        S4, S4, S17
3C2A2A:  VADD.F32        S6, S6, S21
3C2A2E:  VMUL.F32        S0, S8, S0
3C2A32:  VMOV            R0, S2
3C2A36:  VMOV            R1, S4
3C2A3A:  VMOV            R2, S6
3C2A3E:  VMOV            R3, S0
3C2A42:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
3C2A46:  CMP.W           R9, #4
3C2A4A:  BGT             loc_3C2A56
3C2A4C:  ADD.W           R9, R9, #1
3C2A50:  CMP             R0, #0
3C2A52:  BNE.W           loc_3C28D6
3C2A56:  VLDR            S16, [SP,#0xF0+var_90]
3C2A5A:  VLDR            S22, [R4,#0x174]
3C2A5E:  VLDR            S20, [SP,#0xF0+var_90+4]
3C2A62:  VLDR            S26, [R4,#0x178]
3C2A66:  VSUB.F32        S2, S16, S22
3C2A6A:  VLDR            S18, [SP,#0xF0+var_88]
3C2A6E:  VSUB.F32        S0, S20, S26
3C2A72:  VLDR            S24, [R4,#0x17C]
3C2A76:  VLDR            S28, [R4,#0x9C]
3C2A7A:  VSUB.F32        S4, S18, S24
3C2A7E:  VMUL.F32        S2, S2, S2
3C2A82:  VMUL.F32        S0, S0, S0
3C2A86:  VMUL.F32        S4, S4, S4
3C2A8A:  VADD.F32        S0, S2, S0
3C2A8E:  VADD.F32        S0, S0, S4
3C2A92:  VSQRT.F32       S30, S0
3C2A96:  VCMPE.F32       S30, S28
3C2A9A:  VMRS            APSR_nzcv, FPSCR
3C2A9E:  BGE             loc_3C2AAA
3C2AA0:  VSTR            S30, [R4,#0x9C]
3C2AA4:  LDR.W           R8, [SP,#0xF0+var_CC]
3C2AA8:  B               loc_3C2B60
3C2AAA:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C2AB0)
3C2AAC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C2AAE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C2AB0:  LDR             R1, [R0]; y
3C2AB2:  MOV             R0, #0x3F6B851F; x
3C2ABA:  BLX             powf
3C2ABE:  VMOV.F32        S2, #1.0
3C2AC2:  VMOV            S0, R0
3C2AC6:  VSUB.F32        S4, S2, S0
3C2ACA:  VMUL.F32        S0, S28, S0
3C2ACE:  VMUL.F32        S4, S30, S4
3C2AD2:  VADD.F32        S0, S0, S4
3C2AD6:  VLDR            S4, =0.05
3C2ADA:  VCMPE.F32       S30, S4
3C2ADE:  VMRS            APSR_nzcv, FPSCR
3C2AE2:  VSTR            S0, [R4,#0x9C]
3C2AE6:  BLE             loc_3C2B28
3C2AE8:  VDIV.F32        S2, S2, S30
3C2AEC:  VSUB.F32        S4, S26, S20
3C2AF0:  VSUB.F32        S6, S22, S16
3C2AF4:  VSUB.F32        S8, S24, S18
3C2AF8:  VMUL.F32        S4, S0, S4
3C2AFC:  VMUL.F32        S6, S0, S6
3C2B00:  VMUL.F32        S8, S0, S8
3C2B04:  VMUL.F32        S4, S2, S4
3C2B08:  VMUL.F32        S6, S2, S6
3C2B0C:  VMUL.F32        S2, S2, S8
3C2B10:  VADD.F32        S4, S20, S4
3C2B14:  VADD.F32        S6, S16, S6
3C2B18:  VADD.F32        S2, S18, S2
3C2B1C:  VSTR            S6, [R4,#0x174]
3C2B20:  VSTR            S4, [R4,#0x178]
3C2B24:  VSTR            S2, [R4,#0x17C]
3C2B28:  LDR             R0, =(fRangePlayerRadius_ptr - 0x3C2B30)
3C2B2A:  LDR             R1, =(Scene_ptr - 0x3C2B36)
3C2B2C:  ADD             R0, PC; fRangePlayerRadius_ptr
3C2B2E:  LDR.W           R8, [SP,#0xF0+var_CC]
3C2B32:  ADD             R1, PC; Scene_ptr
3C2B34:  LDR             R0, [R0]; fRangePlayerRadius
3C2B36:  VLDR            S2, [R0]
3C2B3A:  LDR             R0, [R1]; Scene
3C2B3C:  VSUB.F32        S0, S0, S2
3C2B40:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3C2B42:  VLDR            S2, [R0,#0x80]
3C2B46:  VCMPE.F32       S0, S2
3C2B4A:  VMRS            APSR_nzcv, FPSCR
3C2B4E:  BGE             loc_3C2B60
3C2B50:  VLDR            S2, =0.1
3C2B54:  VMAX.F32        D0, D0, D1
3C2B58:  VMOV            R1, S0
3C2B5C:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
3C2B60:  LDR             R0, =(TheCamera_ptr - 0x3C2B68)
3C2B62:  MOVS            R1, #0
3C2B64:  ADD             R0, PC; TheCamera_ptr
3C2B66:  LDR             R0, [R0]; TheCamera
3C2B68:  STRH            R1, [R0,#(word_951FC2 - 0x951FA8)]
3C2B6A:  MOV.W           R0, #0x3F800000
3C2B6E:  STRD.W          R1, R1, [R4,#0x18C]
3C2B72:  STR.W           R0, [R4,#0x194]
3C2B76:  MOV             R0, R8; this
3C2B78:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C2B7C:  VLDR            S0, [R4,#0x168]
3C2B80:  ADD.W           R6, R4, #0x18C
3C2B84:  VCMP.F32        S0, #0.0
3C2B88:  VMRS            APSR_nzcv, FPSCR
3C2B8C:  BNE             loc_3C2BA8
3C2B8E:  VLDR            S0, [R4,#0x16C]
3C2B92:  VCMP.F32        S0, #0.0
3C2B96:  VMRS            APSR_nzcv, FPSCR
3C2B9A:  ITTT EQ
3C2B9C:  MOVWEQ          R0, #0xB717
3C2BA0:  MOVTEQ          R0, #0x38D1
3C2BA4:  STRDEQ.W        R0, R0, [R4,#0x168]
3C2BA8:  ADD             R0, SP, #0xF0+var_80; CVector *
3C2BAA:  MOV             R1, R8; CVector *
3C2BAC:  MOV             R2, R6
3C2BAE:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C2BB2:  ADD             R5, SP, #0xF0+var_70
3C2BB4:  LDR             R0, [SP,#0xF0+var_78]
3C2BB6:  VLDR            D16, [SP,#0xF0+var_80]
3C2BBA:  STR             R0, [SP,#0xF0+var_68]
3C2BBC:  MOV             R0, R5; this
3C2BBE:  VSTR            D16, [SP,#0xF0+var_70]
3C2BC2:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C2BC6:  ADD             R0, SP, #0xF0+var_80; CVector *
3C2BC8:  MOV             R1, R5; CVector *
3C2BCA:  MOV             R2, R8
3C2BCC:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C2BD0:  LDR             R0, =(TheCamera_ptr - 0x3C2BDA)
3C2BD2:  VLDR            D16, [SP,#0xF0+var_80]
3C2BD6:  ADD             R0, PC; TheCamera_ptr
3C2BD8:  LDR             R1, [SP,#0xF0+var_78]
3C2BDA:  STR             R1, [R6,#8]
3C2BDC:  LDR             R0, [R0]; TheCamera
3C2BDE:  VSTR            D16, [R6]
3C2BE2:  LDRB.W          R0, [R0,#(byte_951FF7 - 0x951FA8)]
3C2BE6:  CMP             R0, #0
3C2BE8:  BEQ             loc_3C2C94
3C2BEA:  LDR             R0, =(TheCamera_ptr - 0x3C2BF0)
3C2BEC:  ADD             R0, PC; TheCamera_ptr
3C2BEE:  LDR             R0, [R0]; TheCamera
3C2BF0:  LDRH.W          R0, [R0,#(word_952B60 - 0x951FA8)]
3C2BF4:  CMP             R0, #1
3C2BF6:  BNE             loc_3C2C94
3C2BF8:  LDR             R0, =(_ZN5CDraw9FadeValueE_ptr - 0x3C2BFE)
3C2BFA:  ADD             R0, PC; _ZN5CDraw9FadeValueE_ptr
3C2BFC:  LDR             R0, [R0]; CDraw::FadeValue ...
3C2BFE:  LDRB            R0, [R0]; CDraw::FadeValue
3C2C00:  CMP             R0, #0x81
3C2C02:  BCC             loc_3C2C94
3C2C04:  LDRD.W          R0, R1, [R4,#0x168]; x
3C2C08:  EOR.W           R0, R0, #0x80000000; y
3C2C0C:  BLX             atan2f
3C2C10:  MOV             R1, R0
3C2C12:  LDR             R0, =(TheCamera_ptr - 0x3C2C1C)
3C2C14:  VMOV            S0, R1; x
3C2C18:  ADD             R0, PC; TheCamera_ptr
3C2C1A:  LDR             R0, [R0]; TheCamera
3C2C1C:  LDR.W           R2, [R0,#(dword_952884 - 0x951FA8)]
3C2C20:  STR.W           R1, [R2,#0x55C]
3C2C24:  LDR.W           R2, [R0,#(dword_952884 - 0x951FA8)]
3C2C28:  STR.W           R1, [R2,#0x560]
3C2C2C:  LDR.W           R2, [R0,#(dword_952884 - 0x951FA8)]
3C2C30:  LDR             R0, [R2,#0x14]; this
3C2C32:  CBZ             R0, loc_3C2C3A
3C2C34:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
3C2C38:  B               loc_3C2C3E
3C2C3A:  VSTR            S0, [R2,#0x10]
3C2C3E:  LDR             R0, =(TheCamera_ptr - 0x3C2C44)
3C2C40:  ADD             R0, PC; TheCamera_ptr
3C2C42:  LDR             R0, [R0]; TheCamera
3C2C44:  LDR.W           R2, [R0,#(dword_952884 - 0x951FA8)]
3C2C48:  LDR             R0, [R2,#0x18]
3C2C4A:  CBZ             R0, loc_3C2C94
3C2C4C:  LDR             R1, [R0,#4]
3C2C4E:  LDR             R0, [R2,#0x14]
3C2C50:  ADDS            R1, #0x10
3C2C52:  CBZ             R0, loc_3C2C8E
3C2C54:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
3C2C58:  B               loc_3C2C94
3C2C5A:  VLDR            S0, =80.0
3C2C5E:  VMOV.F32        S4, #4.0
3C2C62:  VLDR            S2, [R4,#0x8C]
3C2C66:  VMOV.F32        S6, #-2.5
3C2C6A:  VLDR            S8, =0.0025
3C2C6E:  VDIV.F32        S0, S2, S0
3C2C72:  VMUL.F32        S2, S20, S4
3C2C76:  VMUL.F32        S4, S16, S6
3C2C7A:  VLDR            S6, =0.0015
3C2C7E:  VMUL.F32        S2, S2, S6
3C2C82:  VMUL.F32        S4, S4, S8
3C2C86:  VMUL.F32        S20, S2, S0
3C2C8A:  B.W             loc_3C231E
3C2C8E:  ADDS            R0, R2, #4
3C2C90:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
3C2C94:  ADD             SP, SP, #0x90
3C2C96:  VPOP            {D8-D15}
3C2C9A:  ADD             SP, SP, #4
3C2C9C:  POP.W           {R8-R11}
3C2CA0:  POP             {R4-R7,PC}
