; =========================================================
; Game Engine Function: sub_10B3F0
; Address            : 0x10B3F0 - 0x10B60C
; =========================================================

10B3F0:  PUSH            {R4-R8,R10,R11,LR}
10B3F4:  ADD             R11, SP, #0x18
10B3F8:  LDR             R7, [R2,#4]
10B3FC:  MOV             R3, #0
10B400:  CMP             R3, R7,LSR#3
10B404:  BEQ             loc_10B594
10B408:  LDR             R8, [R2]
10B40C:  MOV             LR, R7,LSR#3
10B410:  MOV             R7, #0
10B414:  MOV             R3, LR
10B418:  ADD             R5, R7, R3,LSR#1
10B41C:  MOV             R2, R8
10B420:  LDR             R6, [R2,R5,LSL#3]!
10B424:  AND             R4, R6, #0x40000000
10B428:  ORR             R6, R6, R4,LSL#1
10B42C:  ADD             R2, R6, R2
10B430:  MVN             R6, R3,LSR#1
10B434:  CMP             R2, R1
10B438:  ADD             R6, R3, R6
10B43C:  MOVHI           R6, R3,LSR#1
10B440:  ADDLS           R7, R5, #1
10B444:  CMP             R6, #0
10B448:  MOV             R3, R6
10B44C:  BNE             loc_10B418
10B450:  MOV             R3, #0
10B454:  CMP             R7, #0
10B458:  BEQ             loc_10B594
10B45C:  ADD             R1, R8, R7,LSL#3
10B460:  MOV             R12, #0xFFFFFFFF
10B464:  CMP             R7, LR
10B468:  BEQ             loc_10B480
10B46C:  MOV             R2, R7,LSL#3
10B470:  LDR             R2, [R8,R2]!
10B474:  AND             R7, R2, #0x40000000
10B478:  ORR             R2, R2, R7,LSL#1
10B47C:  ADD             R12, R2, R8
10B480:  LDR             R4, [R1,#-8]!
10B484:  ADDS            R2, R1, #4
10B488:  BEQ             loc_10B594
10B48C:  LDR             R3, [R2]
10B490:  CMP             R3, #1
10B494:  BEQ             loc_10B58C
10B498:  CMP             R3, #0
10B49C:  BMI             loc_10B4DC
10B4A0:  AND             R7, R3, #0x40000000
10B4A4:  ORR             R6, R3, R7,LSL#1
10B4A8:  LDR             R7, [R6,R2]!
10B4AC:  CMN             R7, #1
10B4B0:  BLE             loc_10B4E4
10B4B4:  MOV             R5, R6
10B4B8:  AND             R2, R7, #0x40000000
10B4BC:  LDR             LR, [R5,#4]!
10B4C0:  ORR             R2, R7, R2,LSL#1
10B4C4:  ADD             R8, R2, R6
10B4C8:  MOV             R2, LR,LSR#24
10B4CC:  MOV             LR, #0
10B4D0:  ADD             R2, R5, R2,LSL#2
10B4D4:  MOV             R5, #0
10B4D8:  B               loc_10B560
10B4DC:  MOV             R6, R2
10B4E0:  MOV             R7, R3
10B4E4:  UBFX            R2, R7, #0x18, #4
10B4E8:  MOV             LR, R3,LSR#31
10B4EC:  CMP             R2, #2
10B4F0:  BEQ             loc_10B520
10B4F4:  CMP             R2, #1
10B4F8:  BEQ             loc_10B53C
10B4FC:  CMP             R2, #0
10B500:  BNE             loc_10B5D4
10B504:  LDR             R8, =(off_114E68 - 0x10B520)
10B508:  CMN             R3, #1
10B50C:  MOV             R7, #0
10B510:  MOV             R5, #0
10B514:  ADDGT           R7, R6, #4
10B518:  LDR             R8, [PC,R8]; sub_10A39C
10B51C:  B               loc_10B564
10B520:  LDR             R8, =(off_1150A4 - 0x10B530)
10B524:  MOV             R5, #2
10B528:  LDR             R8, [PC,R8]; sub_10A614
10B52C:  UBFX            R7, R7, #0x10, #8
10B530:  CMN             R3, #1
10B534:  BLE             loc_10B554
10B538:  B               loc_10B55C
10B53C:  LDR             R8, =(off_114E64 - 0x10B54C)
10B540:  MOV             R5, #0
10B544:  LDR             R8, [PC,R8]; sub_10A5FC
10B548:  UBFX            R7, R7, #0x10, #8
10B54C:  CMN             R3, #1
10B550:  BGT             loc_10B55C
10B554:  CMP             R7, #0
10B558:  BNE             loc_10B59C
10B55C:  ADD             R2, R6, R7,LSL#2
10B560:  ADD             R7, R2, #4
10B564:  AND             R2, R4, #0x40000000
10B568:  STR             R6, [R0,#0x178]
10B56C:  STR             R12, [R0,#0x15C]
10B570:  ORR             R2, R4, R2,LSL#1
10B574:  STR             R7, [R0,#0x160]
10B578:  ADD             R1, R2, R1
10B57C:  ORR             R2, R5, LR
10B580:  STR             R2, [R0,#0x16C]
10B584:  STR             R1, [R0,#0x158]
10B588:  STR             R8, [R0,#0x164]
10B58C:  SUBS            R3, R3, #1
10B590:  MOVWNE          R3, #1
10B594:  MOV             R0, R3
10B598:  POP             {R4-R8,R10,R11,PC}
10B59C:  LDR             R1, =(aLibunwindSS - 0x10B5B0); "libunwind: %s - %s\n" ...
10B5A0:  LDR             R2, =(aGetinfofromeha - 0x10B5B8); "getInfoFromEHABISection" ...
10B5A4:  LDR             R3, =(aIndexInlinedTa - 0x10B5BC); "index inlined table detected but pr fun"... ...
10B5A8:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
10B5AC:  LDR             R0, =(__sF_ptr - 0x10B5C0)
10B5B0:  ADD             R2, PC, R2; "getInfoFromEHABISection"
10B5B4:  ADD             R3, PC, R3; "index inlined table detected but pr fun"...
10B5B8:  LDR             R0, [PC,R0]; __sF
10B5BC:  ADD             R4, R0, #0xA8
10B5C0:  MOV             R0, R4; stream
10B5C4:  BL              fprintf
10B5C8:  MOV             R0, R4; stream
10B5CC:  BL              fflush
10B5D0:  BL              abort
10B5D4:  LDR             R1, =(aLibunwindSS - 0x10B5E8); "libunwind: %s - %s\n" ...
10B5D8:  LDR             R2, =(aGetinfofromeha - 0x10B5F0); "getInfoFromEHABISection" ...
10B5DC:  LDR             R3, =(aUnknownPersona - 0x10B5F4); "unknown personality routine" ...
10B5E0:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
10B5E4:  LDR             R0, =(__sF_ptr - 0x10B5F8)
10B5E8:  ADD             R2, PC, R2; "getInfoFromEHABISection"
10B5EC:  ADD             R3, PC, R3; "unknown personality routine"
10B5F0:  LDR             R0, [PC,R0]; __sF
10B5F4:  ADD             R4, R0, #0xA8
10B5F8:  MOV             R0, R4; stream
10B5FC:  BL              fprintf
10B600:  MOV             R0, R4; stream
10B604:  BL              fflush
10B608:  BL              abort
