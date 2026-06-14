; =========================================================
; Game Engine Function: alEffecti
; Address            : 0x253260 - 0x2535B0
; =========================================================

253260:  PUSH            {R4-R7,LR}
253262:  ADD             R7, SP, #0xC
253264:  PUSH.W          {R8-R11}
253268:  SUB             SP, SP, #4
25326A:  MOV             R10, R2
25326C:  MOV             R6, R1
25326E:  MOV             R4, R0
253270:  BLX             j_GetContextRef
253274:  MOV             R8, R0
253276:  CMP.W           R8, #0
25327A:  BEQ             loc_25336E
25327C:  LDR.W           R0, [R8,#0x88]
253280:  MOV             R1, R4
253282:  ADDS            R0, #0x64 ; 'd'
253284:  BLX             j_LookupUIntMapKey
253288:  CMP             R0, #0
25328A:  BEQ             loc_253376
25328C:  MOVW            R1, #0x8001
253290:  CMP             R6, R1
253292:  BNE.W           loc_2533AE
253296:  CMP.W           R10, #0
25329A:  BEQ.W           loc_2533BC
25329E:  LDR.W           R2, =(EffectList_ptr - 0x2532B0)
2532A2:  MOVS            R1, #0
2532A4:  LDR.W           R3, =(EffectList_ptr - 0x2532B2)
2532A8:  LDR.W           R6, =(DisabledEffects_ptr - 0x2532B4)
2532AC:  ADD             R2, PC; EffectList_ptr
2532AE:  ADD             R3, PC; EffectList_ptr
2532B0:  ADD             R6, PC; DisabledEffects_ptr
2532B2:  LDR             R2, [R2]; EffectList
2532B4:  LDR             R3, [R3]; EffectList
2532B6:  LDR             R6, [R6]; DisabledEffects
2532B8:  ADDS            R4, R2, R1
2532BA:  LDR             R4, [R4,#0xC]
2532BC:  CMP             R4, R10
2532BE:  BNE             loc_2532D4
2532C0:  ADDS            R4, R3, R1
2532C2:  LDR             R4, [R4,#4]
2532C4:  LDRB            R4, [R6,R4]
2532C6:  CMP             R4, #0
2532C8:  MOV.W           R4, #0
2532CC:  IT EQ
2532CE:  MOVEQ           R4, #1
2532D0:  CBZ             R4, loc_2532D8
2532D2:  B               loc_2532E2
2532D4:  MOVS            R4, #0
2532D6:  CBNZ            R4, loc_2532E2
2532D8:  ADD.W           R5, R1, #0x10
2532DC:  CMP             R1, #0x50 ; 'P'
2532DE:  MOV             R1, R5
2532E0:  BNE             loc_2532B8
2532E2:  CMP             R4, #0
2532E4:  BEQ             loc_2533E4
2532E6:  LDR.W           R12, =(sub_264AC4+1 - 0x2532FA)
2532EA:  CMP.W           R10, #0x8000
2532EE:  LDR.W           LR, =(sub_264A7C+1 - 0x2532FE)
2532F2:  LDR.W           R9, =(sub_264A34+1 - 0x253302)
2532F6:  ADD             R12, PC; sub_264AC4
2532F8:  LDR             R6, =(sub_2649EC+1 - 0x253306)
2532FA:  ADD             LR, PC; sub_264A7C
2532FC:  LDR             R4, =(sub_2649A4+1 - 0x25330A)
2532FE:  ADD             R9, PC; sub_264A34
253300:  LDR             R1, =(sub_26495C+1 - 0x25330E)
253302:  ADD             R6, PC; sub_2649EC
253304:  LDR             R2, =(sub_264914+1 - 0x253310)
253306:  ADD             R4, PC; sub_2649A4
253308:  LDR             R3, =(sub_2648CC+1 - 0x253312)
25330A:  ADD             R1, PC; sub_26495C
25330C:  ADD             R2, PC; sub_264914
25330E:  ADD             R3, PC; sub_2648CC
253310:  BGE.W           loc_253420
253314:  CMP.W           R10, #1
253318:  BEQ.W           loc_2534F8
25331C:  CMP.W           R10, #4
253320:  BEQ.W           loc_25354E
253324:  CMP.W           R10, #9
253328:  BNE.W           loc_25358C
25332C:  MOVS            R2, #0
25332E:  MOVS            R3, #0
253330:  MOVT            R2, #0x4448
253334:  LDR.W           R12, =(sub_26454C+1 - 0x25334E)
253338:  STR.W           R2, [R0,#0x88]
25333C:  MOVS            R2, #0x43DC0000
253342:  LDR.W           LR, =(sub_2644EC+1 - 0x253352)
253346:  LDR.W           R9, =(sub_26447C+1 - 0x253356)
25334A:  ADD             R12, PC; sub_26454C
25334C:  LDR             R6, =(sub_26440C+1 - 0x25335A)
25334E:  ADD             LR, PC; sub_2644EC
253350:  LDR             R4, =(sub_264300+1 - 0x253360)
253352:  ADD             R9, PC; sub_26447C
253354:  LDR             R1, =(sub_2641F4+1 - 0x253364)
253356:  ADD             R6, PC; sub_26440C
253358:  STR.W           R2, [R0,#0x84]
25335C:  ADD             R4, PC; sub_264300
25335E:  LDR             R2, =(sub_26407C+1 - 0x25336C)
253360:  ADD             R1, PC; sub_2641F4
253362:  STR.W           R3, [R0,#0x8C]
253366:  LDR             R3, =(sub_263FD4+1 - 0x25336E)
253368:  ADD             R2, PC; sub_26407C
25336A:  ADD             R3, PC; sub_263FD4
25336C:  B               loc_25358C
25336E:  ADD             SP, SP, #4
253370:  POP.W           {R8-R11}
253374:  POP             {R4-R7,PC}
253376:  LDR.W           R0, =(TrapALError_ptr - 0x25337E)
25337A:  ADD             R0, PC; TrapALError_ptr
25337C:  LDR             R0, [R0]; TrapALError
25337E:  LDRB            R0, [R0]
253380:  CMP             R0, #0
253382:  ITT NE
253384:  MOVNE           R0, #5; sig
253386:  BLXNE           raise
25338A:  LDREX.W         R0, [R8,#0x50]
25338E:  CMP             R0, #0
253390:  BNE             loc_253416
253392:  ADD.W           R0, R8, #0x50 ; 'P'
253396:  MOVW            R1, #0xA001
25339A:  DMB.W           ISH
25339E:  STREX.W         R2, R1, [R0]
2533A2:  CBZ             R2, loc_25341A
2533A4:  LDREX.W         R2, [R0]
2533A8:  CMP             R2, #0
2533AA:  BEQ             loc_25339E
2533AC:  B               loc_253416
2533AE:  LDR.W           R5, [R0,#0x94]
2533B2:  MOV             R1, R8
2533B4:  MOV             R2, R6
2533B6:  MOV             R3, R10
2533B8:  BLX             R5
2533BA:  B               loc_2535A0
2533BC:  LDR.W           R12, =(sub_264AC4+1 - 0x2533CC)
2533C0:  LDR.W           LR, =(sub_264A7C+1 - 0x2533D0)
2533C4:  LDR.W           R9, =(sub_264A34+1 - 0x2533D4)
2533C8:  ADD             R12, PC; sub_264AC4
2533CA:  LDR             R6, =(sub_2649EC+1 - 0x2533D8)
2533CC:  ADD             LR, PC; sub_264A7C
2533CE:  LDR             R4, =(sub_2649A4+1 - 0x2533DC)
2533D0:  ADD             R9, PC; sub_264A34
2533D2:  LDR             R1, =(sub_26495C+1 - 0x2533E0)
2533D4:  ADD             R6, PC; sub_2649EC
2533D6:  LDR             R2, =(sub_264914+1 - 0x2533E2)
2533D8:  ADD             R4, PC; sub_2649A4
2533DA:  LDR             R3, =(sub_2648CC+1 - 0x2533E4)
2533DC:  ADD             R1, PC; sub_26495C
2533DE:  ADD             R2, PC; sub_264914
2533E0:  ADD             R3, PC; sub_2648CC
2533E2:  B               loc_25358C
2533E4:  LDR             R0, =(TrapALError_ptr - 0x2533EA)
2533E6:  ADD             R0, PC; TrapALError_ptr
2533E8:  LDR             R0, [R0]; TrapALError
2533EA:  LDRB            R0, [R0]
2533EC:  CMP             R0, #0
2533EE:  ITT NE
2533F0:  MOVNE           R0, #5; sig
2533F2:  BLXNE           raise
2533F6:  LDREX.W         R0, [R8,#0x50]
2533FA:  CBNZ            R0, loc_253416
2533FC:  ADD.W           R0, R8, #0x50 ; 'P'
253400:  MOVW            R1, #0xA003
253404:  DMB.W           ISH
253408:  STREX.W         R2, R1, [R0]
25340C:  CBZ             R2, loc_25341A
25340E:  LDREX.W         R2, [R0]
253412:  CMP             R2, #0
253414:  BEQ             loc_253408
253416:  CLREX.W
25341A:  DMB.W           ISH
25341E:  B               loc_2535A0
253420:  SUB.W           R5, R10, #0x9000
253424:  CMP             R5, #2
253426:  BCS             loc_253458
253428:  MOV.W           R3, #0x3F800000
25342C:  LDR.W           R12, =(sub_264878+1 - 0x25343C)
253430:  LDR.W           LR, =(sub_264824+1 - 0x253440)
253434:  LDR.W           R9, =(sub_2647DC+1 - 0x253444)
253438:  ADD             R12, PC; sub_264878
25343A:  LDR             R6, =(sub_264794+1 - 0x253448)
25343C:  ADD             LR, PC; sub_264824
25343E:  LDR             R4, =(sub_2646E8+1 - 0x25344C)
253440:  ADD             R9, PC; sub_2647DC
253442:  LDR             R1, =(sub_26463C+1 - 0x253452)
253444:  ADD             R6, PC; sub_264794
253446:  LDR             R2, =(sub_2645F4+1 - 0x253456)
253448:  ADD             R4, PC; sub_2646E8
25344A:  STR.W           R3, [R0,#0x90]
25344E:  ADD             R1, PC; sub_26463C
253450:  LDR             R3, =(sub_2645AC+1 - 0x253458)
253452:  ADD             R2, PC; sub_2645F4
253454:  ADD             R3, PC; sub_2645AC
253456:  B               loc_25358C
253458:  CMP.W           R10, #0x8000
25345C:  BNE.W           loc_25358C
253460:  ADR             R2, dword_2535E0
253462:  ADD.W           R5, R0, #0x14
253466:  VLD1.64         {D24-D25}, [R2@128]
25346A:  ADR             R1, dword_2535C0
25346C:  MOVW            R11, #0x47AE
253470:  MOVW            R3, #0x3958
253474:  VLD1.64         {D16-D17}, [R1@128]
253478:  ADR             R1, dword_2535F0
25347A:  MOVT            R11, #0x3FA1
25347E:  MOVT            R3, #0x3C34
253482:  VST1.32         {D24-D25}, [R5]
253486:  ADDS            R5, R0, #4
253488:  MOVS            R2, #0
25348A:  VLD1.64         {D18-D19}, [R1@128]
25348E:  ADR             R1, dword_253600
253490:  VST1.32         {D16-D17}, [R5]
253494:  ADD.W           R5, R0, #0x38 ; '8'
253498:  VLD1.64         {D20-D21}, [R1@128]
25349C:  ADR             R1, dword_253610
25349E:  VST1.32         {D18-D19}, [R5]
2534A2:  ADD.W           R5, R0, #0x50 ; 'P'
2534A6:  VST1.32         {D20-D21}, [R5]
2534AA:  MOV             R5, #0x3F7E76C9
2534B2:  VLD1.64         {D22-D23}, [R1@128]
2534B6:  STRD.W          R2, R2, [R0,#0x48]
2534BA:  STRD.W          R11, R3, [R0,#0x24]
2534BE:  ADD.W           R3, R0, #0x60 ; '`'
2534C2:  STRD.W          R5, R2, [R0,#0x2C]
2534C6:  MOVS            R2, #1
2534C8:  LDR.W           R12, =(sub_263314+1 - 0x2534D8)
2534CC:  LDR.W           LR, =(sub_263234+1 - 0x2534DC)
2534D0:  LDR.W           R9, =(sub_2631E0+1 - 0x2534E0)
2534D4:  ADD             R12, PC; sub_263314
2534D6:  LDR             R6, =(sub_26318C+1 - 0x2534E4)
2534D8:  ADD             LR, PC; sub_263234
2534DA:  LDR             R4, =(sub_263018+1 - 0x2534EA)
2534DC:  ADD             R9, PC; sub_2631E0
2534DE:  LDR             R1, =(sub_2627EC+1 - 0x2534EE)
2534E0:  ADD             R6, PC; sub_26318C
2534E2:  STRB.W          R2, [R0,#0x34]
2534E6:  ADD             R4, PC; sub_263018
2534E8:  LDR             R2, =(sub_26275C+1 - 0x2534F4)
2534EA:  ADD             R1, PC; sub_2627EC
2534EC:  VST1.32         {D22-D23}, [R3]
2534F0:  ADD             R2, PC; sub_26275C
2534F2:  LDR             R3, =(sub_2626D0+1 - 0x2534F8)
2534F4:  ADD             R3, PC; sub_2626D0
2534F6:  B               loc_25358C
2534F8:  ADR             R2, dword_2535E0
2534FA:  ADR             R1, dword_2535C0
2534FC:  VLD1.64         {D20-D21}, [R2@128]
253500:  ADD.W           R2, R0, #0x14
253504:  ADD.W           R3, R0, #0x24 ; '$'
253508:  VLD1.64         {D16-D17}, [R1@128]
25350C:  ADR             R1, dword_2535D0
25350E:  VST1.32         {D20-D21}, [R2]
253512:  ADDS            R2, R0, #4
253514:  VLD1.64         {D18-D19}, [R1@128]
253518:  VST1.32         {D16-D17}, [R2]
25351C:  MOVS            R2, #1
25351E:  LDR.W           R12, =(sub_263AE8+1 - 0x25352E)
253522:  LDR.W           LR, =(sub_263A44+1 - 0x253532)
253526:  LDR.W           R9, =(sub_2639F0+1 - 0x253536)
25352A:  ADD             R12, PC; sub_263AE8
25352C:  LDR             R6, =(sub_26399C+1 - 0x25353A)
25352E:  ADD             LR, PC; sub_263A44
253530:  LDR             R4, =(sub_263998+1 - 0x253540)
253532:  ADD             R9, PC; sub_2639F0
253534:  LDR             R1, =(sub_2634AC+1 - 0x253544)
253536:  ADD             R6, PC; sub_26399C
253538:  STRB.W          R2, [R0,#0x34]
25353C:  ADD             R4, PC; sub_263998
25353E:  LDR             R2, =(sub_26341C+1 - 0x25354A)
253540:  ADD             R1, PC; sub_2634AC
253542:  VST1.32         {D18-D19}, [R3]
253546:  ADD             R2, PC; sub_26341C
253548:  LDR             R3, =(sub_263390+1 - 0x25354E)
25354A:  ADD             R3, PC; sub_263390
25354C:  B               loc_25358C
25354E:  ADR             R2, dword_2535B0
253550:  ADD.W           R3, R0, #0x70 ; 'p'
253554:  VLD1.64         {D16-D17}, [R2@128]
253558:  MOVS            R2, #0xBF800000
25355E:  LDR.W           R12, =(sub_263F5C+1 - 0x25356E)
253562:  LDR.W           LR, =(sub_263EE4+1 - 0x253572)
253566:  LDR.W           R9, =(sub_263E9C+1 - 0x253576)
25356A:  ADD             R12, PC; sub_263F5C
25356C:  LDR             R6, =(sub_263E54+1 - 0x25357A)
25356E:  ADD             LR, PC; sub_263EE4
253570:  LDR             R4, =(sub_263E50+1 - 0x253580)
253572:  ADD             R9, PC; sub_263E9C
253574:  LDR             R1, =(sub_263C1C+1 - 0x253584)
253576:  ADD             R6, PC; sub_263E54
253578:  STR.W           R2, [R0,#0x80]
25357C:  ADD             R4, PC; sub_263E50
25357E:  LDR             R2, =(sub_263BD4+1 - 0x25358A)
253580:  ADD             R1, PC; sub_263C1C
253582:  VST1.32         {D16-D17}, [R3]
253586:  ADD             R2, PC; sub_263BD4
253588:  LDR             R3, =(sub_263B8C+1 - 0x25358E)
25358A:  ADD             R3, PC; sub_263B8C
25358C:  STRD.W          R3, R2, [R0,#0x94]
253590:  ADD.W           R2, R0, #0x9C
253594:  STM.W           R2, {R1,R4,R6,R9,LR}
253598:  STR.W           R12, [R0,#0xB0]
25359C:  STR.W           R10, [R0]
2535A0:  MOV             R0, R8
2535A2:  ADD             SP, SP, #4
2535A4:  POP.W           {R8-R11}
2535A8:  POP.W           {R4-R7,LR}
2535AC:  B.W             ALCcontext_DecRef
