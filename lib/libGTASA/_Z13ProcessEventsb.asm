; =========================================================
; Game Engine Function: _Z13ProcessEventsb
; Address            : 0x269354 - 0x269654
; =========================================================

269354:  PUSH            {R4-R7,LR}
269356:  ADD             R7, SP, #0xC
269358:  PUSH.W          {R8-R11}
26935C:  SUB             SP, SP, #0x44
26935E:  LDR             R0, =(IsAndroidInMultiplayer_ptr - 0x269366)
269360:  LDR             R1, =(IsAndroidPaused_ptr - 0x269368)
269362:  ADD             R0, PC; IsAndroidInMultiplayer_ptr
269364:  ADD             R1, PC; IsAndroidPaused_ptr
269366:  LDR             R0, [R0]; IsAndroidInMultiplayer
269368:  LDR             R1, [R1]; IsAndroidPaused
26936A:  LDR             R0, [R0]
26936C:  LDR             R1, [R1]
26936E:  CMP             R0, #0
269370:  MOV.W           R0, #0
269374:  IT EQ
269376:  MOVEQ           R0, #1
269378:  CMP             R1, #0
26937A:  IT NE
26937C:  MOVNE           R1, #1
26937E:  ANDS            R0, R1
269380:  NEGS            R1, R0
269382:  ADD             R0, SP, #0x60+var_34
269384:  BLX             j__Z19NVEventGetNextEventP7NVEventi; NVEventGetNextEvent(NVEvent *,int)
269388:  CMP             R0, #0
26938A:  BEQ.W           loc_269648
26938E:  LDR             R0, =(IsAndroidInMultiplayer_ptr - 0x269398)
269390:  ADD             R5, SP, #0x60+var_34
269392:  LDR             R1, =(IsAndroidPaused_ptr - 0x26939A)
269394:  ADD             R0, PC; IsAndroidInMultiplayer_ptr
269396:  ADD             R1, PC; IsAndroidPaused_ptr
269398:  LDR.W           R11, [R0]; IsAndroidInMultiplayer
26939C:  LDR             R0, =(windowSize_ptr - 0x2693A6)
26939E:  LDR.W           R10, [R1]; IsAndroidPaused
2693A2:  ADD             R0, PC; windowSize_ptr
2693A4:  LDR             R1, =(IsAndroidPaused_ptr - 0x2693AC)
2693A6:  LDR             R0, [R0]; windowSize
2693A8:  ADD             R1, PC; IsAndroidPaused_ptr
2693AA:  STR             R0, [SP,#0x60+var_54]
2693AC:  LDR             R0, =(accelerometerValues_ptr - 0x2693B2)
2693AE:  ADD             R0, PC; accelerometerValues_ptr
2693B0:  LDR             R0, [R0]; accelerometerValues
2693B2:  STR             R0, [SP,#0x60+var_38]
2693B4:  LDR             R0, =(windowSize_ptr - 0x2693BA)
2693B6:  ADD             R0, PC; windowSize_ptr
2693B8:  LDR             R0, [R0]; windowSize
2693BA:  STR             R0, [SP,#0x60+var_3C]
2693BC:  LDR             R0, =(IsAndroidPaused_ptr - 0x2693C2)
2693BE:  ADD             R0, PC; IsAndroidPaused_ptr
2693C0:  LDR             R0, [R0]; IsAndroidPaused
2693C2:  STR             R0, [SP,#0x60+var_40]
2693C4:  LDR             R0, =(WasAndroidPaused_ptr - 0x2693CA)
2693C6:  ADD             R0, PC; WasAndroidPaused_ptr
2693C8:  LDR             R0, [R0]; WasAndroidPaused
2693CA:  STR             R0, [SP,#0x60+var_44]
2693CC:  LDR             R0, [R1]; IsAndroidPaused
2693CE:  STR             R0, [SP,#0x60+var_48]
2693D0:  LDR             R0, =(IsAndroidPaused_ptr - 0x2693D6)
2693D2:  ADD             R0, PC; IsAndroidPaused_ptr
2693D4:  LDR             R0, [R0]; IsAndroidPaused
2693D6:  STR             R0, [SP,#0x60+var_4C]
2693D8:  LDR             R0, =(IsAndroidPaused_ptr - 0x2693DE)
2693DA:  ADD             R0, PC; IsAndroidPaused_ptr
2693DC:  LDR             R0, [R0]; IsAndroidPaused
2693DE:  STR             R0, [SP,#0x60+var_50]
2693E0:  LDR             R0, [SP,#0x60+var_34]
2693E2:  SUBS            R0, #1; switch 10 cases
2693E4:  CMP             R0, #9
2693E6:  BHI.W           def_2693EC; jumptable 002693EC default case, cases 2,3
2693EA:  MOVS            R4, #1
2693EC:  TBH.W           [PC,R0,LSL#1]; switch jump
2693F0:  DCW 0xA; jump table for switch statement
2693F2:  DCW 0x116
2693F4:  DCW 0x116
2693F6:  DCW 0x13
2693F8:  DCW 0x72
2693FA:  DCW 0x77
2693FC:  DCW 0x12D
2693FE:  DCW 0x7D
269400:  DCW 0x8A
269402:  DCW 0x99
269404:  ADD             R2, SP, #0x60+var_30; jumptable 002693EC case 1
269406:  MOVS            R3, #0; bool
269408:  LDM             R2, {R0-R2}; int
26940A:  CMP             R0, #1
26940C:  IT NE
26940E:  MOVNE           R0, #0; bool
269410:  BLX             j__Z17AND_KeyboardEventbiib; AND_KeyboardEvent(bool,int,int,bool)
269414:  B               def_2693EC; jumptable 002693EC default case, cases 2,3
269416:  VLDR            S0, [SP,#0x60+var_2C]; jumptable 002693EC case 4
26941A:  VLDR            S2, [SP,#0x60+var_28]
26941E:  VLDR            S4, [SP,#0x60+var_24]
269422:  VLDR            S6, [SP,#0x60+var_20]
269426:  VCVT.S32.F32    S4, S4
26942A:  LDR             R0, [SP,#0x60+var_30]
26942C:  VCVT.S32.F32    S2, S2
269430:  VCVT.S32.F32    S6, S6
269434:  VCVT.S32.F32    S0, S0
269438:  MOV.W           R8, R0,ASR#8
26943C:  UXTB.W          R9, R0
269440:  VMOV            R12, S4
269444:  VMOV            R5, S2
269448:  VMOV            R6, S6
26944C:  VMOV            R4, S0
269450:  ORRS.W          R1, R6, R12
269454:  BNE             loc_2694A4
269456:  LDR             R0, =(dword_6D705C - 0x26945C)
269458:  ADD             R0, PC; dword_6D705C
26945A:  LDR             R2, [R0,#(dword_6D7060 - 0x6D705C)]
26945C:  LDR             R0, =(dword_6D7064 - 0x269462)
26945E:  ADD             R0, PC; dword_6D7064
269460:  LDR             R1, [R0,#(dword_6D7068 - 0x6D7064)]
269462:  ORRS.W          R0, R1, R2
269466:  BEQ             loc_2694A4
269468:  LDR             R0, [SP,#0x60+var_54]
26946A:  MOV             R3, #0xCCCCCCCD
269472:  SUBS            R1, R1, R5
269474:  SUBS            R2, R2, R4
269476:  LDR             R0, [R0]
269478:  IT MI
26947A:  NEGMI           R2, R2
26947C:  CMP             R1, #0
26947E:  IT MI
269480:  NEGMI           R1, R1
269482:  UMULL.W         R3, R0, R0, R3
269486:  ADD             R1, R2
269488:  CMP.W           R1, R0,LSR#3
26948C:  ITTTT CC
26948E:  MOVCC           R8, R9
269490:  MOVCC           R12, R4
269492:  MOVCC           R6, R5
269494:  MOVCC.W         R9, #1
269498:  IT CC
26949A:  MOVCC           R4, #0
26949C:  CMP.W           R1, R0,LSR#3
2694A0:  IT CC
2694A2:  MOVCC           R5, #0
2694A4:  LDR             R0, =(dword_6855C0 - 0x2694AA)
2694A6:  ADD             R0, PC; dword_6855C0
2694A8:  LDR             R0, [R0]
2694AA:  CMP             R0, R9
2694AC:  IT EQ
2694AE:  CMPEQ.W         R9, #1
2694B2:  BEQ             loc_269592
2694B4:  SUB.W           R1, R9, #1; switch 4 cases
2694B8:  CMP             R1, #3
2694BA:  BHI             def_2694BC; jumptable 002694BC default case
2694BC:  TBB.W           [PC,R1]; switch jump
2694C0:  DCB 2; jump table for switch statement
2694C1:  DCB 0x36
2694C2:  DCB 0x3A
2694C3:  DCB 0x44
2694C4:  CMP             R4, #0; jumptable 002694BC case 1
2694C6:  STR.W           R12, [SP,#0x60+var_58]
2694CA:  BNE             loc_269576
2694CC:  CMP             R5, #0
2694CE:  BEQ             loc_26956A
2694D0:  MOVS            R4, #0
2694D2:  B               loc_269576
2694D4:  ADD             R2, SP, #0x60+var_30; jumptable 002693EC case 5
2694D6:  LDM             R2, {R0-R2}
2694D8:  LDR             R3, [SP,#0x60+var_38]
2694DA:  STM             R3!, {R0-R2}
2694DC:  B               def_2693EC; jumptable 002693EC default case, cases 2,3
2694DE:  LDRD.W          R0, R1, [SP,#0x60+var_30]; jumptable 002693EC case 6
2694E2:  LDR             R2, [SP,#0x60+var_3C]
2694E4:  STRD.W          R0, R1, [R2]
2694E8:  B               def_2693EC; jumptable 002693EC default case, cases 2,3
2694EA:  LDR             R0, [SP,#0x60+var_40]; jumptable 002693EC case 8
2694EC:  LDR             R0, [R0]
2694EE:  CBNZ            R0, loc_2694F8
2694F0:  MOVS            R0, #8
2694F2:  MOVS            R1, #0
2694F4:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
2694F8:  LDR             R1, [SP,#0x60+var_44]
2694FA:  MOVS            R0, #1
2694FC:  STR             R0, [R1]
2694FE:  LDR             R1, [SP,#0x60+var_48]
269500:  STR             R0, [R1]
269502:  B               def_2693EC; jumptable 002693EC default case, cases 2,3
269504:  LDR             R0, [SP,#0x60+var_4C]; jumptable 002693EC case 9
269506:  LDR             R0, [R0]
269508:  CMP             R0, #0
26950A:  BEQ.W           def_2693EC; jumptable 002693EC default case, cases 2,3
26950E:  BLX             j__Z12initGraphicsv; initGraphics(void)
269512:  MOVS            R0, #9
269514:  MOVS            R1, #0
269516:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
26951A:  LDR             R1, [SP,#0x60+var_50]
26951C:  MOVS            R0, #0
26951E:  STR             R0, [R1]
269520:  B               def_2693EC; jumptable 002693EC default case, cases 2,3
269522:  MOVS            R0, #0x14; jumptable 002693EC case 10
269524:  MOVS            R1, #0
269526:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
26952A:  B               def_2693EC; jumptable 002693EC default case, cases 2,3
26952C:  MOV.W           R9, #2; jumptable 002694BC case 2
269530:  MOVS            R0, #2
269532:  B               loc_26954E
269534:  BIC.W           R0, R0, #1; jumptable 002694BC case 3
269538:  STR.W           R12, [SP,#0x60+var_58]
26953C:  CMP             R0, #2
26953E:  BNE             loc_269562
269540:  MOV.W           R9, #3
269544:  MOVS            R0, #3
269546:  B               loc_26957C
269548:  MOV.W           R9, #4; jumptable 002694BC case 4
26954C:  MOVS            R0, #4; int
26954E:  MOVS            R1, #0; int
269550:  MOV             R2, R4; int
269552:  MOV             R3, R5; int
269554:  STR             R5, [SP,#0x60+var_5C]
269556:  MOV             R5, R12
269558:  BLX             j__Z14AND_TouchEventiiii; AND_TouchEvent(int,int,int,int)
26955C:  MOV             R12, R5
26955E:  LDR             R5, [SP,#0x60+var_5C]
269560:  B               def_2694BC; jumptable 002694BC default case
269562:  MOV.W           R9, #2
269566:  MOVS            R0, #2
269568:  B               loc_26957C
26956A:  LDR             R0, =(dword_6D7064 - 0x269570)
26956C:  ADD             R0, PC; dword_6D7064
26956E:  LDR             R5, [R0]
269570:  LDR             R0, =(dword_6D705C - 0x269576)
269572:  ADD             R0, PC; dword_6D705C
269574:  LDR             R4, [R0]
269576:  MOV.W           R9, #1
26957A:  MOVS            R0, #1; int
26957C:  MOVS            R1, #0; int
26957E:  MOV             R2, R4; int
269580:  MOV             R3, R5; int
269582:  BLX             j__Z14AND_TouchEventiiii; AND_TouchEvent(int,int,int,int)
269586:  LDR.W           R12, [SP,#0x60+var_58]
26958A:  LDR             R0, =(dword_6855C0 - 0x269590); jumptable 002694BC default case
26958C:  ADD             R0, PC; dword_6855C0
26958E:  STR.W           R9, [R0]
269592:  LDR             R0, =(dword_6855C0 - 0x269598)
269594:  ADD             R0, PC; dword_6855C0
269596:  LDR             R0, [R0,#(dword_6855C4 - 0x6855C0)]
269598:  CMP             R0, R8
26959A:  IT EQ
26959C:  CMPEQ.W         R8, #1
2695A0:  BEQ             loc_26960A
2695A2:  SUB.W           R1, R8, #1; switch 4 cases
2695A6:  CMP             R1, #3
2695A8:  BHI             def_2695AA; jumptable 002695AA default case
2695AA:  TBB.W           [PC,R1]; switch jump
2695AE:  DCB 2; jump table for switch statement
2695AF:  DCB 0x11
2695B0:  DCB 9
2695B1:  DCB 0x15
2695B2:  CMP.W           R12, #0; jumptable 002695AA case 1
2695B6:  BNE             loc_2695EE
2695B8:  CBZ             R6, loc_2695E0
2695BA:  MOV.W           R12, #0
2695BE:  B               loc_2695EE
2695C0:  BIC.W           R0, R0, #1; jumptable 002695AA case 3
2695C4:  CMP             R0, #2
2695C6:  BNE             loc_2695D0; jumptable 002695AA case 2
2695C8:  MOV.W           R8, #3
2695CC:  MOVS            R0, #3
2695CE:  B               loc_2695F4
2695D0:  MOV.W           R8, #2; jumptable 002695AA case 2
2695D4:  MOVS            R0, #2
2695D6:  B               loc_2695F4
2695D8:  MOV.W           R8, #4; jumptable 002695AA case 4
2695DC:  MOVS            R0, #4
2695DE:  B               loc_2695F4
2695E0:  LDR             R0, =(dword_6D7064 - 0x2695E6)
2695E2:  ADD             R0, PC; dword_6D7064
2695E4:  LDR             R6, [R0,#(dword_6D7068 - 0x6D7064)]
2695E6:  LDR             R0, =(dword_6D705C - 0x2695EC)
2695E8:  ADD             R0, PC; dword_6D705C
2695EA:  LDR.W           R12, [R0,#(dword_6D7060 - 0x6D705C)]
2695EE:  MOV.W           R8, #1
2695F2:  MOVS            R0, #1; int
2695F4:  MOVS            R1, #1; int
2695F6:  MOV             R2, R12; int
2695F8:  MOV             R3, R6; int
2695FA:  MOV             R9, R12
2695FC:  BLX             j__Z14AND_TouchEventiiii; AND_TouchEvent(int,int,int,int)
269600:  MOV             R12, R9
269602:  LDR             R0, =(dword_6855C0 - 0x269608); jumptable 002695AA default case
269604:  ADD             R0, PC; dword_6855C0
269606:  STR.W           R8, [R0,#(dword_6855C4 - 0x6855C0)]
26960A:  LDR             R0, =(dword_6D705C - 0x269610)
26960C:  ADD             R0, PC; dword_6D705C
26960E:  STRD.W          R4, R12, [R0]
269612:  LDR             R0, =(dword_6D7064 - 0x269618)
269614:  ADD             R0, PC; dword_6D7064
269616:  STRD.W          R5, R6, [R0]
26961A:  ADD             R5, SP, #0x60+var_34
26961C:  LDR.W           R0, [R11]; jumptable 002693EC default case, cases 2,3
269620:  MOVS            R4, #0
269622:  LDR.W           R1, [R10]
269626:  CMP             R0, #0
269628:  MOV.W           R0, #0
26962C:  IT EQ
26962E:  MOVEQ           R0, #1
269630:  CMP             R1, #0
269632:  IT NE
269634:  MOVNE           R1, #1
269636:  ANDS            R0, R1
269638:  NEGS            R1, R0
26963A:  MOV             R0, R5
26963C:  BLX             j__Z19NVEventGetNextEventP7NVEventi; NVEventGetNextEvent(NVEvent *,int)
269640:  CMP             R0, #0
269642:  BNE.W           loc_2693E0
269646:  B               loc_26964A; jumptable 002693EC case 7
269648:  MOVS            R4, #0
26964A:  MOV             R0, R4; jumptable 002693EC case 7
26964C:  ADD             SP, SP, #0x44 ; 'D'
26964E:  POP.W           {R8-R11}
269652:  POP             {R4-R7,PC}
