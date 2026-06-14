; =========================================================
; Game Engine Function: alGetBufferf
; Address            : 0x24732C - 0x247588
; =========================================================

24732C:  PUSH            {R4-R7,LR}
24732E:  ADD             R7, SP, #0xC
247330:  PUSH.W          {R8-R11}
247334:  SUB             SP, SP, #4
247336:  MOV             R4, R2
247338:  MOV             R5, R1
24733A:  MOV             R6, R0
24733C:  BLX             j_GetContextRef
247340:  MOV             R10, R0
247342:  CMP.W           R10, #0
247346:  BEQ.W           loc_247492
24734A:  LDR.W           R0, [R10,#0x88]
24734E:  MOV             R1, R6
247350:  ADDS            R0, #0x40 ; '@'
247352:  BLX             j_LookupUIntMapKey
247356:  MOV             R9, R0
247358:  CMP.W           R9, #0
24735C:  BEQ.W           loc_24749A
247360:  CMP             R4, #0
247362:  BEQ.W           loc_2474D0
247366:  MOVW            R0, #0x200B
24736A:  CMP             R5, R0
24736C:  BNE.W           loc_247504
247370:  ADD.W           R6, R9, #0x3C ; '<'
247374:  ADD.W           R11, R9, #0x30 ; '0'
247378:  STR             R4, [SP,#0x20+var_20]
24737A:  MOVS            R1, #1
24737C:  DMB.W           ISH
247380:  LDREX.W         R0, [R6]
247384:  STREX.W         R2, R1, [R6]
247388:  CMP             R2, #0
24738A:  BNE             loc_247380
24738C:  CMP             R0, #1
24738E:  DMB.W           ISH
247392:  BNE             loc_2473B2
247394:  MOVS            R4, #1
247396:  BLX             sched_yield
24739A:  DMB.W           ISH
24739E:  LDREX.W         R0, [R6]
2473A2:  STREX.W         R1, R4, [R6]
2473A6:  CMP             R1, #0
2473A8:  BNE             loc_24739E
2473AA:  CMP             R0, #1
2473AC:  DMB.W           ISH
2473B0:  BEQ             loc_247396
2473B2:  ADD.W           R4, R9, #0x38 ; '8'
2473B6:  MOVS            R1, #1
2473B8:  DMB.W           ISH
2473BC:  LDREX.W         R0, [R4]
2473C0:  STREX.W         R2, R1, [R4]
2473C4:  CMP             R2, #0
2473C6:  BNE             loc_2473BC
2473C8:  CMP             R0, #1
2473CA:  DMB.W           ISH
2473CE:  BNE             loc_2473EE
2473D0:  MOVS            R5, #1
2473D2:  BLX             sched_yield
2473D6:  DMB.W           ISH
2473DA:  LDREX.W         R0, [R4]
2473DE:  STREX.W         R1, R5, [R4]
2473E2:  CMP             R1, #0
2473E4:  BNE             loc_2473DA
2473E6:  CMP             R0, #1
2473E8:  DMB.W           ISH
2473EC:  BEQ             loc_2473D2
2473EE:  DMB.W           ISH
2473F2:  LDREX.W         R0, [R11]
2473F6:  ADDS            R1, R0, #1
2473F8:  STREX.W         R2, R1, [R11]
2473FC:  CMP             R2, #0
2473FE:  BNE             loc_2473F2
247400:  CMP             R0, #0
247402:  DMB.W           ISH
247406:  BNE             loc_247446
247408:  ADD.W           R5, R9, #0x40 ; '@'
24740C:  MOVS            R1, #1
24740E:  DMB.W           ISH
247412:  LDREX.W         R0, [R5]
247416:  STREX.W         R2, R1, [R5]
24741A:  CMP             R2, #0
24741C:  BNE             loc_247412
24741E:  CMP             R0, #1
247420:  DMB.W           ISH
247424:  BNE             loc_247446
247426:  MOV.W           R8, #1
24742A:  BLX             sched_yield
24742E:  DMB.W           ISH
247432:  LDREX.W         R0, [R5]
247436:  STREX.W         R1, R8, [R5]
24743A:  CMP             R1, #0
24743C:  BNE             loc_247432
24743E:  CMP             R0, #1
247440:  DMB.W           ISH
247444:  BEQ             loc_24742A
247446:  MOVS            R0, #0
247448:  DMB.W           ISH
24744C:  LDREX.W         R1, [R4]
247450:  STREX.W         R1, R0, [R4]
247454:  CMP             R1, #0
247456:  BNE             loc_24744C
247458:  DMB.W           ISH
24745C:  MOVS            R0, #0
24745E:  DMB.W           ISH
247462:  LDREX.W         R1, [R6]
247466:  STREX.W         R1, R0, [R6]
24746A:  CMP             R1, #0
24746C:  BNE             loc_247462
24746E:  DMB.W           ISH
247472:  LDR.W           R0, [R9,#0xC]
247476:  LDR             R1, [SP,#0x20+var_20]
247478:  CMP             R0, #0
24747A:  BEQ             loc_24754E
24747C:  VLDR            S0, [R9,#4]
247480:  VMOV            S2, R0
247484:  VCVT.F32.S32    S2, S2
247488:  VCVT.F32.S32    S0, S0
24748C:  VDIV.F32        S0, S2, S0
247490:  B               loc_247552
247492:  ADD             SP, SP, #4
247494:  POP.W           {R8-R11}
247498:  POP             {R4-R7,PC}
24749A:  LDR             R0, =(TrapALError_ptr - 0x2474A0)
24749C:  ADD             R0, PC; TrapALError_ptr
24749E:  LDR             R0, [R0]; TrapALError
2474A0:  LDRB            R0, [R0]
2474A2:  CMP             R0, #0
2474A4:  ITT NE
2474A6:  MOVNE           R0, #5; sig
2474A8:  BLXNE           raise
2474AC:  LDREX.W         R0, [R10,#0x50]
2474B0:  CMP             R0, #0
2474B2:  BNE             loc_247536
2474B4:  ADD.W           R0, R10, #0x50 ; 'P'
2474B8:  MOVW            R1, #0xA001
2474BC:  DMB.W           ISH
2474C0:  STREX.W         R2, R1, [R0]
2474C4:  CBZ             R2, loc_24753A
2474C6:  LDREX.W         R2, [R0]
2474CA:  CMP             R2, #0
2474CC:  BEQ             loc_2474C0
2474CE:  B               loc_247536
2474D0:  LDR             R0, =(TrapALError_ptr - 0x2474D6)
2474D2:  ADD             R0, PC; TrapALError_ptr
2474D4:  LDR             R0, [R0]; TrapALError
2474D6:  LDRB            R0, [R0]
2474D8:  CMP             R0, #0
2474DA:  ITT NE
2474DC:  MOVNE           R0, #5; sig
2474DE:  BLXNE           raise
2474E2:  LDREX.W         R0, [R10,#0x50]
2474E6:  CBNZ            R0, loc_247536
2474E8:  ADD.W           R0, R10, #0x50 ; 'P'
2474EC:  MOVW            R1, #0xA003
2474F0:  DMB.W           ISH
2474F4:  STREX.W         R2, R1, [R0]
2474F8:  CBZ             R2, loc_24753A
2474FA:  LDREX.W         R2, [R0]
2474FE:  CMP             R2, #0
247500:  BEQ             loc_2474F4
247502:  B               loc_247536
247504:  LDR             R0, =(TrapALError_ptr - 0x24750A)
247506:  ADD             R0, PC; TrapALError_ptr
247508:  LDR             R0, [R0]; TrapALError
24750A:  LDRB            R0, [R0]
24750C:  CMP             R0, #0
24750E:  ITT NE
247510:  MOVNE           R0, #5; sig
247512:  BLXNE           raise
247516:  LDREX.W         R0, [R10,#0x50]
24751A:  CBNZ            R0, loc_247536
24751C:  ADD.W           R0, R10, #0x50 ; 'P'
247520:  MOVW            R1, #0xA002
247524:  DMB.W           ISH
247528:  STREX.W         R2, R1, [R0]
24752C:  CBZ             R2, loc_24753A
24752E:  LDREX.W         R2, [R0]
247532:  CMP             R2, #0
247534:  BEQ             loc_247528
247536:  CLREX.W
24753A:  DMB.W           ISH
24753E:  MOV             R0, R10
247540:  ADD             SP, SP, #4
247542:  POP.W           {R8-R11}
247546:  POP.W           {R4-R7,LR}
24754A:  B.W             ALCcontext_DecRef
24754E:  VLDR            S0, =0.0
247552:  VSTR            S0, [R1]
247556:  DMB.W           ISH
24755A:  LDREX.W         R0, [R11]
24755E:  SUBS            R1, R0, #1
247560:  STREX.W         R2, R1, [R11]
247564:  CMP             R2, #0
247566:  BNE             loc_24755A
247568:  CMP             R0, #1
24756A:  DMB.W           ISH
24756E:  BNE             loc_24753E
247570:  ADD.W           R0, R9, #0x40 ; '@'
247574:  MOVS            R1, #0
247576:  DMB.W           ISH
24757A:  LDREX.W         R2, [R0]
24757E:  STREX.W         R2, R1, [R0]
247582:  CMP             R2, #0
247584:  BNE             loc_24757A
247586:  B               loc_24753A
