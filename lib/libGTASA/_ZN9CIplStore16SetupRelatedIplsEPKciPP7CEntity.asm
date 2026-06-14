; =========================================================
; Game Engine Function: _ZN9CIplStore16SetupRelatedIplsEPKciPP7CEntity
; Address            : 0x2812DC - 0x281584
; =========================================================

2812DC:  PUSH            {R4-R7,LR}
2812DE:  ADD             R7, SP, #0xC
2812E0:  PUSH.W          {R8-R11}
2812E4:  SUB             SP, SP, #0x74
2812E6:  STR             R1, [SP,#0x90+var_7C]
2812E8:  MOV             R8, R2
2812EA:  LDR             R1, =(__stack_chk_guard_ptr - 0x2812F0)
2812EC:  ADD             R1, PC; __stack_chk_guard_ptr
2812EE:  LDR             R1, [R1]; __stack_chk_guard
2812F0:  LDR             R1, [R1]
2812F2:  STR             R1, [SP,#0x90+var_20]
2812F4:  MOVS            R1, #0x5C ; '\'; int
2812F6:  BLX             strrchr
2812FA:  MOV             R4, R0
2812FC:  CBZ             R4, loc_281346
2812FE:  MOV             R0, R4; s
281300:  MOVS            R1, #0x2E ; '.'; c
281302:  BLX             strchr
281306:  CBZ             R0, loc_281346
281308:  ADDS            R6, R4, #1
28130A:  MOV.W           R12, #0
28130E:  CMP             R6, R0
281310:  BEQ             loc_281360
281312:  MVNS            R2, R4
281314:  ADDS            R4, R0, R2
281316:  CMP             R4, #0x10
281318:  BCC             loc_28134A
28131A:  BIC.W           R1, R4, #0xF
28131E:  CBZ             R1, loc_28134A
281320:  ADD             R3, SP, #0x90+var_40
281322:  CMP             R3, R0
281324:  ITTT CC
281326:  ADDCC           R2, R3
281328:  ADDCC           R2, R0
28132A:  CMPCC           R6, R2
28132C:  BCC             loc_28134A
28132E:  ADDS            R3, R6, R1
281330:  ADD             R5, SP, #0x90+var_40
281332:  MOV             R2, R1
281334:  VLD1.8          {D16-D17}, [R6]!
281338:  SUBS            R2, #0x10
28133A:  VST1.8          {D16-D17}, [R5]!
28133E:  BNE             loc_281334
281340:  CMP             R1, R4
281342:  BNE             loc_28134E
281344:  B               loc_281362
281346:  MOVS            R0, #0
281348:  B               loc_28156A
28134A:  MOVS            R1, #0
28134C:  MOV             R3, R6
28134E:  ADD             R2, SP, #0x90+var_40
281350:  ADD             R1, R2
281352:  LDRB.W          R2, [R3],#1
281356:  STRB.W          R2, [R1],#1
28135A:  CMP             R0, R3
28135C:  BNE             loc_281352
28135E:  B               loc_281362
281360:  MOVS            R4, #0
281362:  ADD             R6, SP, #0x90+var_40
281364:  ADR             R1, aGenInt1; "gen_int1"
281366:  MOV             R0, R6; char *
281368:  STRB.W          R12, [R6,R4]
28136C:  BLX             strcasecmp
281370:  CBZ             R0, loc_2813EE
281372:  ADD             R0, SP, #0x90+var_40; char *
281374:  ADR             R1, aGenInt2; "gen_int2"
281376:  BLX             strcasecmp
28137A:  CBZ             R0, loc_2813EE
28137C:  ADD             R0, SP, #0x90+var_40; char *
28137E:  ADR             R1, aGenInt3; "gen_int3"
281380:  BLX             strcasecmp
281384:  CBZ             R0, loc_2813EE
281386:  ADD             R0, SP, #0x90+var_40; char *
281388:  ADR             R1, aGenInt4; "gen_int4"
28138A:  BLX             strcasecmp
28138E:  CBZ             R0, loc_2813EE
281390:  ADD             R0, SP, #0x90+var_40; char *
281392:  ADR             R1, aGenInt5; "gen_int5"
281394:  BLX             strcasecmp
281398:  CBZ             R0, loc_2813EE
28139A:  ADD             R0, SP, #0x90+var_40; char *
28139C:  ADR             R1, aGenIntb; "gen_intb"
28139E:  BLX             strcasecmp
2813A2:  CBZ             R0, loc_2813EE
2813A4:  ADD             R0, SP, #0x90+var_40; char *
2813A6:  ADR             R1, aSavehous; "savehous"
2813A8:  BLX             strcasecmp
2813AC:  CBZ             R0, loc_2813EE
2813AE:  ADD             R0, SP, #0x90+var_40; char *
2813B0:  ADR             R1, aStadint; "stadint"
2813B2:  BLX             strcasecmp
2813B6:  CBZ             R0, loc_2813EE
2813B8:  ADD             R0, SP, #0x90+var_40; char *
2813BA:  ADR             R1, aIntLa; "int_la"
2813BC:  BLX             strcasecmp
2813C0:  CBZ             R0, loc_2813EE
2813C2:  ADD             R0, SP, #0x90+var_40; char *
2813C4:  ADR             R1, aIntSf; "int_sf"
2813C6:  BLX             strcasecmp
2813CA:  CBZ             R0, loc_2813EE
2813CC:  ADD             R0, SP, #0x90+var_40; char *
2813CE:  ADR             R1, aIntVeg; "int_veg"
2813D0:  BLX             strcasecmp
2813D4:  CBZ             R0, loc_2813EE
2813D6:  ADD             R0, SP, #0x90+var_40; char *
2813D8:  ADR             R1, aIntCont; "int_cont"
2813DA:  BLX             strcasecmp
2813DE:  CBZ             R0, loc_2813EE
2813E0:  ADD             R0, SP, #0x90+var_40; char *
2813E2:  ADR             R1, aLevelmap; "levelmap"
2813E4:  BLX             strcasecmp
2813E8:  CBZ             R0, loc_2813EE
2813EA:  MOVS            R0, #0
2813EC:  B               loc_2813F0
2813EE:  MOVS            R0, #1
2813F0:  LDR             R1, =(dword_6DFDA4 - 0x281406)
2813F2:  MOVW            R2, #0x735F
2813F6:  STR             R0, [SP,#0x90+var_80]
2813F8:  MOVT            R2, #0x7274
2813FC:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x28140A)
2813FE:  MOVW            R3, #:lower16:unk_6D6165
281402:  ADD             R1, PC; dword_6DFDA4
281404:  STR             R2, [R6,R4]
281406:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr ; this
281408:  ADDS            R2, R6, R4
28140A:  MOVT            R3, #:upper16:unk_6D6165
28140E:  LDR             R4, [R0]; CIplStore::ms_pPool ...
281410:  STR             R3, [R2,#4]
281412:  STR.W           R8, [R1]
281416:  BLX             j__ZN9CColAccel14isCacheLoadingEv; CColAccel::isCacheLoading(void)
28141A:  LDR.W           R9, [R4]; CIplStore::ms_pPool
28141E:  CMP             R0, #0
281420:  LDR.W           R1, [R9,#8]
281424:  STR.W           R8, [SP,#0x90+var_84]
281428:  BEQ             loc_2814DC
28142A:  CMP             R1, #1
28142C:  BLT.W           loc_28155A
281430:  LDR             R0, =(_ZN9CIplStore12ms_pQuadTreeE_ptr - 0x281442)
281432:  ADD.W           R11, SP, #0x90+var_40
281436:  ADD.W           R10, SP, #0x90+var_78
28143A:  MOV.W           R8, #0
28143E:  ADD             R0, PC; _ZN9CIplStore12ms_pQuadTreeE_ptr
281440:  MOVS            R5, #0
281442:  LDR             R0, [R0]; CIplStore::ms_pQuadTree ...
281444:  STR             R0, [SP,#0x90+var_88]
281446:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x28144C)
281448:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
28144A:  LDR             R0, [R0]; CIplStore::ms_pPool ...
28144C:  STR             R0, [SP,#0x90+var_8C]
28144E:  LDR.W           R0, [R9,#4]
281452:  LDRSB           R0, [R0,R5]
281454:  CMP             R0, #0
281456:  BLT             loc_2814CC
281458:  LDR.W           R0, [R9]
28145C:  ADDS.W          R4, R0, R8
281460:  BEQ             loc_2814CC
281462:  MOV             R0, R11; char *
281464:  ADD.W           R6, R4, #0x10
281468:  BLX             strlen
28146C:  MOV             R2, R0; size_t
28146E:  MOV             R0, R11; char *
281470:  MOV             R1, R6; char *
281472:  BLX             strncasecmp
281476:  CBNZ            R0, loc_2814CC
281478:  MOV             R0, R10; this
28147A:  MOV             R1, R5; int
28147C:  BLX             j__ZN9CColAccel9getIplDefEi; CColAccel::getIplDef(int)
281480:  MOV             R0, R10
281482:  ADD.W           R1, R10, #0x20 ; ' '
281486:  VLD1.32         {D16-D17}, [R0]!
28148A:  MOV             R2, R4
28148C:  VLD1.64         {D18-D19}, [R1]
281490:  VLD1.64         {D20-D21}, [R0]
281494:  ADD.W           R0, R4, #0x20 ; ' '
281498:  LDRH.W          R1, [SP,#0x90+var_48]
28149C:  STRH            R1, [R4,#0x30]
28149E:  MOV             R1, R4
2814A0:  VST1.32         {D18-D19}, [R0]
2814A4:  MOV             R0, R4
2814A6:  VST1.32         {D16-D17}, [R0]!
2814AA:  VST1.32         {D20-D21}, [R0]
2814AE:  LDR             R0, [SP,#0x90+var_80]
2814B0:  STRB.W          R0, [R4,#0x2C]
2814B4:  LDR             R0, [SP,#0x90+var_7C]
2814B6:  STRH            R0, [R4,#0x2A]
2814B8:  MOVS            R0, #0
2814BA:  STRB.W          R0, [R4,#0x2D]
2814BE:  LDR             R0, [SP,#0x90+var_88]
2814C0:  LDR             R0, [R0]
2814C2:  BLX             j__ZN13CQuadTreeNode7AddItemEPvRK5CRect; CQuadTreeNode::AddItem(void *,CRect const&)
2814C6:  LDR             R0, [SP,#0x90+var_8C]
2814C8:  LDR.W           R9, [R0]
2814CC:  LDR.W           R0, [R9,#8]
2814D0:  ADDS            R5, #1
2814D2:  ADD.W           R8, R8, #0x34 ; '4'
2814D6:  CMP             R5, R0
2814D8:  BLT             loc_28144E
2814DA:  B               loc_28155A
2814DC:  CMP             R1, #1
2814DE:  BLT             loc_281554
2814E0:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x2814EE)
2814E2:  ADD             R4, SP, #0x90+var_40
2814E4:  MOVS            R6, #0
2814E6:  MOV.W           R8, #0
2814EA:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
2814EC:  LDR.W           R11, [R0]; CIplStore::ms_pPool ...
2814F0:  LDR.W           R0, [R9,#4]
2814F4:  LDRSB.W         R0, [R0,R8]
2814F8:  CMP             R0, #0
2814FA:  BLT             loc_281546
2814FC:  LDR.W           R0, [R9]
281500:  ADDS.W          R10, R0, R6
281504:  BEQ             loc_281546
281506:  MOV             R0, R4; char *
281508:  ADD.W           R5, R10, #0x10
28150C:  BLX             strlen
281510:  MOV             R2, R0; size_t
281512:  MOV             R0, R4; char *
281514:  MOV             R1, R5; char *
281516:  BLX             strncasecmp
28151A:  CBNZ            R0, loc_281546
28151C:  LDR             R0, [SP,#0x90+var_80]
28151E:  MOVS            R1, #0
281520:  STRB.W          R0, [R10,#0x2C]
281524:  LDR             R0, [SP,#0x90+var_7C]
281526:  STRH.W          R0, [R10,#0x2A]
28152A:  LDR.W           R0, [R11]; CIplStore::ms_pPool
28152E:  LDR             R0, [R0]
281530:  ADD             R0, R6
281532:  STRB.W          R1, [R0,#0x2F]
281536:  MOVW            R0, #0x62A7
28153A:  ADD             R0, R8; this
28153C:  MOVS            R1, #8; int
28153E:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
281542:  LDR.W           R9, [R11]; CIplStore::ms_pPool
281546:  LDR.W           R0, [R9,#8]
28154A:  ADD.W           R8, R8, #1
28154E:  ADDS            R6, #0x34 ; '4'
281550:  CMP             R8, R0
281552:  BLT             loc_2814F0
281554:  MOVS            R0, #0; this
281556:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
28155A:  LDR             R0, =(dword_6DFDA4 - 0x281562)
28155C:  MOVS            R2, #0
28155E:  ADD             R0, PC; dword_6DFDA4
281560:  LDR             R1, [R0]
281562:  STR             R2, [R0]
281564:  LDR             R0, [SP,#0x90+var_84]
281566:  SUBS            R0, R1, R0
281568:  ASRS            R0, R0, #2
28156A:  LDR             R1, =(__stack_chk_guard_ptr - 0x281572)
28156C:  LDR             R2, [SP,#0x90+var_20]
28156E:  ADD             R1, PC; __stack_chk_guard_ptr
281570:  LDR             R1, [R1]; __stack_chk_guard
281572:  LDR             R1, [R1]
281574:  SUBS            R1, R1, R2
281576:  ITTT EQ
281578:  ADDEQ           SP, SP, #0x74 ; 't'
28157A:  POPEQ.W         {R8-R11}
28157E:  POPEQ           {R4-R7,PC}
281580:  BLX             __stack_chk_fail
