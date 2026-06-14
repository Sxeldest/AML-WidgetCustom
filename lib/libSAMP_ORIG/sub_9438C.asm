; =========================================================
; Game Engine Function: sub_9438C
; Address            : 0x9438C - 0x94596
; =========================================================

9438C:  PUSH            {R4-R7,LR}
9438E:  ADD             R7, SP, #0xC
94390:  PUSH.W          {R8-R11}
94394:  SUB             SP, SP, #4
94396:  VPUSH           {D8}
9439A:  SUB             SP, SP, #0x18
9439C:  MOV             R11, R2
9439E:  STR             R1, [SP,#0x40+var_2C]
943A0:  MOVW            R2, #0x196C
943A4:  MOVW            R9, #0x2D14
943A8:  LDR             R1, [R0,R2]
943AA:  ADD.W           R10, R0, R9
943AE:  LDR             R3, =(dword_1ACF68 - 0x943B4)
943B0:  ADD             R3, PC; dword_1ACF68
943B2:  CMP             R1, #0
943B4:  MOV             R8, R3
943B6:  BEQ             loc_94442
943B8:  ADDS            R5, R0, R2
943BA:  MOVS            R6, #0
943BC:  B               loc_943F8
943BE:  LDR             R0, [R4]; s
943C0:  BL              sub_9A060
943C4:  LDR.W           R1, [R10,#8]
943C8:  MOV             R2, #0xB6DB6DB7
943D0:  SUBS            R1, R0, R1
943D2:  ASRS            R1, R1, #2
943D4:  MULS            R1, R2
943D6:  STR.W           R1, [R4,#0x278]
943DA:  LDRD.W          R1, R2, [R4,#0xC]
943DE:  STRD.W          R1, R2, [R0,#8]
943E2:  LDRD.W          R1, R2, [R4,#0x1C]
943E6:  STRD.W          R1, R2, [R0,#0x10]
943EA:  LDR             R1, [R5]
943EC:  LDRB.W          R2, [R4,#0x7D]
943F0:  STRB            R2, [R0,#0x18]
943F2:  ADDS            R6, #1
943F4:  CMP             R6, R1
943F6:  BEQ             loc_94442
943F8:  LDR             R0, [R5,#8]
943FA:  LDR.W           R4, [R0,R6,LSL#2]
943FE:  LDRB            R0, [R4,#9]
94400:  LSLS            R0, R0, #0x1F
94402:  BNE             loc_943F2
94404:  LDR.W           R0, [R4,#0x278]
94408:  ADDS            R1, R0, #1
9440A:  BEQ             loc_9441E
9440C:  LDR.W           R1, [R10,#8]
94410:  RSB.W           R0, R0, R0,LSL#3
94414:  ADD.W           R0, R1, R0,LSL#2
94418:  CMP             R0, #0
9441A:  BNE             loc_943DA
9441C:  B               loc_943BE
9441E:  MOV             R0, R8
94420:  LDR.W           R0, [R8]
94424:  LDR.W           R1, [R0,R9]
94428:  CMP             R1, #0
9442A:  BEQ             loc_943BE
9442C:  ADD             R0, R9
9442E:  LDR             R2, [R4,#4]
94430:  LDR             R0, [R0,#8]
94432:  LDR             R3, [R0,#4]
94434:  CMP             R3, R2
94436:  BEQ             loc_94418
94438:  SUBS            R1, #1
9443A:  ADD.W           R0, R0, #0x1C
9443E:  BNE             loc_94432
94440:  B               loc_943BE
94442:  LDR.W           R0, [R10]
94446:  LDRD.W          R1, R2, [R11]
9444A:  ADD.W           R3, R0, R0,LSL#1
9444E:  CMP             R1, #0
94450:  ADD.W           R6, R1, R3,LSL#5
94454:  SUB.W           R5, R6, #1
94458:  IT EQ
9445A:  LSLEQ           R5, R3, #5
9445C:  CMP             R2, R5
9445E:  BGE             loc_944C6
94460:  MOV             R0, R8
94462:  LDR.W           R0, [R8]
94466:  CMP             R0, #0
94468:  ITTT NE
9446A:  LDRNE.W         R1, [R0,#0x370]
9446E:  ADDNE           R1, #1
94470:  STRNE.W         R1, [R0,#0x370]
94474:  LDR             R4, =(dword_1ACF70 - 0x9447C)
94476:  LDR             R0, =(off_117248 - 0x9447E)
94478:  ADD             R4, PC; dword_1ACF70
9447A:  ADD             R0, PC; off_117248
9447C:  LDR             R1, [R4]
9447E:  LDR             R2, [R0]; sub_9A720
94480:  MOV             R0, R5
94482:  BLX             R2; sub_9A720
94484:  LDR.W           R1, [R11,#8]; src
94488:  MOV             R9, R0
9448A:  CBZ             R1, loc_944BA
9448C:  LDR.W           R2, [R11]; n
94490:  MOV             R0, R9; dest
94492:  BLX             j_memcpy
94496:  LDR.W           R0, [R11,#8]
9449A:  CMP             R0, #0
9449C:  ITTTT NE
9449E:  LDRNE.W         R1, [R8]
944A2:  CMPNE           R1, #0
944A4:  LDRNE.W         R2, [R1,#0x370]
944A8:  SUBNE           R2, #1
944AA:  IT NE
944AC:  STRNE.W         R2, [R1,#0x370]
944B0:  LDR             R2, =(off_11724C - 0x944B8)
944B2:  LDR             R1, [R4]
944B4:  ADD             R2, PC; off_11724C
944B6:  LDR             R2, [R2]; j_opus_decoder_destroy_0
944B8:  BLX             R2; j_opus_decoder_destroy_0
944BA:  LDR.W           R0, [R10]
944BE:  STR.W           R5, [R11,#4]
944C2:  STR.W           R9, [R11,#8]
944C6:  CMP             R0, #0
944C8:  BEQ             loc_94588
944CA:  LDR             R1, =(asc_4D43C - 0x944D8); "###" ...
944CC:  MOVS            R6, #0
944CE:  VLDR            S16, =3.4028e38
944D2:  MOVS            R4, #0
944D4:  ADD             R1, PC; "###"
944D6:  STR             R1, [SP,#0x40+needle]
944D8:  LDR             R1, =(aSS_1 - 0x944DE); "[%s][%s]\n" ...
944DA:  ADD             R1, PC; "[%s][%s]\n"
944DC:  STR             R1, [SP,#0x40+var_34]
944DE:  LDR             R1, =(aPosDD - 0x944E4); "Pos=%d,%d\n" ...
944E0:  ADD             R1, PC; "Pos=%d,%d\n"
944E2:  STR             R1, [SP,#0x40+var_38]
944E4:  LDR             R1, =(aSizeDD - 0x944EA); "Size=%d,%d\n" ...
944E6:  ADD             R1, PC; "Size=%d,%d\n"
944E8:  STR             R1, [SP,#0x40+var_3C]
944EA:  LDR             R1, =(aCollapsedD_0 - 0x944F0); "Collapsed=%d\n" ...
944EC:  ADD             R1, PC; "Collapsed=%d\n"
944EE:  MOV             R8, R1
944F0:  B               loc_944FA
944F2:  ADDS            R4, #1
944F4:  ADDS            R6, #0x1C
944F6:  CMP             R4, R0
944F8:  BEQ             loc_94588
944FA:  LDR.W           R1, [R10,#8]
944FE:  ADDS            R5, R1, R6
94500:  VLDR            S0, [R5,#8]
94504:  VCMP.F32        S0, S16
94508:  VMRS            APSR_nzcv, FPSCR
9450C:  BEQ             loc_944F2
9450E:  LDR.W           R9, [R1,R6]
94512:  LDR             R1, [SP,#0x40+needle]; needle
94514:  MOV             R0, R9; haystack
94516:  BLX             strstr
9451A:  LDR             R1, [SP,#0x40+var_2C]
9451C:  CMP             R0, #0
9451E:  LDR             R2, [R1]
94520:  IT NE
94522:  MOVNE           R9, R0
94524:  LDR             R1, [SP,#0x40+var_34]
94526:  MOV             R0, R11
94528:  MOV             R3, R9
9452A:  BL              sub_88F1C
9452E:  VLDR            S0, [R5,#0xC]
94532:  MOV             R0, R11
94534:  VLDR            S2, [R5,#8]
94538:  VCVT.S32.F32    S0, S0
9453C:  LDR             R1, [SP,#0x40+var_38]
9453E:  VCVT.S32.F32    S2, S2
94542:  VMOV            R3, S0
94546:  VMOV            R2, S2
9454A:  BL              sub_88F1C
9454E:  VLDR            S0, [R5,#0x10]
94552:  MOV             R0, R11
94554:  VLDR            S2, [R5,#0x14]
94558:  VCVT.S32.F32    S0, S0
9455C:  LDR             R1, [SP,#0x40+var_3C]
9455E:  VCVT.S32.F32    S2, S2
94562:  VMOV            R2, S0
94566:  VMOV            R3, S2
9456A:  BL              sub_88F1C
9456E:  LDRB            R2, [R5,#0x18]
94570:  MOV             R0, R11
94572:  MOV             R1, R8
94574:  BL              sub_88F1C
94578:  LDR             R1, =(asc_4F02C - 0x94580); "\n" ...
9457A:  MOV             R0, R11
9457C:  ADD             R1, PC; "\n"
9457E:  BL              sub_88F1C
94582:  LDR.W           R0, [R10]
94586:  B               loc_944F2
94588:  ADD             SP, SP, #0x18
9458A:  VPOP            {D8}
9458E:  ADD             SP, SP, #4
94590:  POP.W           {R8-R11}
94594:  POP             {R4-R7,PC}
