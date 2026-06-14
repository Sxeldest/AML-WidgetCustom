; =========================================================
; Game Engine Function: sub_75410
; Address            : 0x75410 - 0x75B20
; =========================================================

75410:  PUSH            {R4-R7,LR}
75412:  ADD             R7, SP, #0xC
75414:  PUSH.W          {R8-R11}
75418:  SUB             SP, SP, #4
7541A:  VPUSH           {D8-D15}
7541E:  SUB             SP, SP, #0x60
75420:  STR             R1, [SP,#0xC0+var_90]
75422:  MOV             R9, R0
75424:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x7542C)
75428:  ADD             R0, PC; __stack_chk_guard_ptr
7542A:  LDR             R0, [R0]; __stack_chk_guard
7542C:  LDR             R0, [R0]
7542E:  STR             R0, [SP,#0xC0+var_64]
75430:  LDRB.W          R0, [R9,#0xC]
75434:  CMP             R0, #0
75436:  ITT NE
75438:  LDRNE.W         R0, [R9,#8]
7543C:  CMPNE           R0, #0
7543E:  BNE             loc_75464
75440:  LDR             R0, [SP,#0xC0+var_64]
75442:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x7544A)
75446:  ADD             R1, PC; __stack_chk_guard_ptr
75448:  LDR             R1, [R1]; __stack_chk_guard
7544A:  LDR             R1, [R1]
7544C:  CMP             R1, R0
7544E:  ITTTT EQ
75450:  ADDEQ           SP, SP, #0x60 ; '`'
75452:  VPOPEQ          {D8-D15}
75456:  ADDEQ           SP, SP, #4
75458:  POPEQ.W         {R8-R11}
7545C:  IT EQ
7545E:  POPEQ           {R4-R7,PC}
75460:  BLX             __stack_chk_fail
75464:  LDR             R0, =(off_114B10 - 0x7546E)
75466:  VLDR            S4, =350.0
7546A:  ADD             R0, PC; off_114B10
7546C:  VLDR            S6, =0.00092593
75470:  LDR.W           R11, [R9,#4]
75474:  LDR             R0, [R0]; dword_1A442C
75476:  STR             R0, [SP,#0xC0+var_98]
75478:  CMP             R11, R9
7547A:  LDR             R0, [R0]
7547C:  VLDR            S2, [R0,#0x5C]
75480:  VLDR            S0, [R0,#0x58]
75484:  MOV.W           R0, #0
75488:  VMUL.F32        S2, S2, S4
7548C:  STR             R0, [SP,#0xC0+var_6C]
7548E:  VMUL.F32        S2, S2, S6
75492:  VSTR            S2, [SP,#0xC0+var_68]
75496:  BEQ             loc_75440
75498:  VLDR            S4, =1500.0
7549C:  ADD             R0, SP, #0xC0+var_8C
7549E:  VLDR            S2, =0.00052083
754A2:  VMOV.F32        S18, #0.5
754A6:  VMUL.F32        S0, S0, S4
754AA:  ADDS            R0, #1
754AC:  VMOV.F32        S20, #-10.0
754B0:  STR             R0, [SP,#0xC0+var_A4]
754B2:  VMOV.F32        S28, #5.0
754B6:  ADD             R0, SP, #0xC0+var_80
754B8:  VMOV.F32        S30, #20.0
754BC:  ADDS            R0, #1
754BE:  STR             R0, [SP,#0xC0+dest]
754C0:  ADR.W           R0, dword_75B50
754C4:  VLDR            S22, =0.0039216
754C8:  VLD1.64         {D12-D13}, [R0@128]
754CC:  VMUL.F32        S16, S0, S2
754D0:  STR.W           R9, [SP,#0xC0+var_AC]
754D4:  B               loc_75554
754D6:  ADD.W           R0, R6, #0x10
754DA:  BIC.W           R9, R0, #0xF
754DE:  MOV             R0, R9; unsigned int
754E0:  BLX             j__Znwj; operator new(uint)
754E4:  MOV             R4, R0
754E6:  STRD.W          R6, R0, [SP,#0xC0+var_88]
754EA:  ADD.W           R0, R9, #1
754EE:  STR             R0, [SP,#0xC0+var_8C]
754F0:  LDR.W           R9, [SP,#0xC0+var_AC]
754F4:  MOV             R0, R4; dest
754F6:  MOV             R1, R5; src
754F8:  MOV             R2, R6; n
754FA:  BLX             j_memcpy
754FE:  VLDR            S0, [R10]
75502:  MOVS            R0, #0
75504:  STRB            R0, [R4,R6]
75506:  VMUL.F32        S0, S0, S18
7550A:  STR             R0, [SP,#0xC0+var_B8]; int
7550C:  MOVS            R0, #1
7550E:  STR             R0, [SP,#0xC0+var_C0]; int
75510:  ADD             R2, SP, #0xC0+var_80; int
75512:  LDR             R0, [SP,#0xC0+var_90]; int
75514:  ADD             R3, SP, #0xC0+var_8C; int
75516:  MOV             R1, R8; int
75518:  VSTR            S0, [SP,#0xC0+var_BC]
7551C:  BL              sub_7178C
75520:  LDRB.W          R0, [SP,#0xC0+var_8C]
75524:  LDR             R4, [SP,#0xC0+var_94]
75526:  LSLS            R0, R0, #0x1F
75528:  ITT NE
7552A:  LDRNE           R0, [SP,#0xC0+var_84]; void *
7552C:  BLXNE           j__ZdlPv; operator delete(void *)
75530:  VMOV.F32        S2, S28
75534:  LDR             R0, [R4]
75536:  VLDR            S0, [R0]
7553A:  VMLA.F32        S2, S0, S18
7553E:  VLDR            S0, [SP,#0xC0+var_68]
75542:  VADD.F32        S0, S0, S2
75546:  VSTR            S0, [SP,#0xC0+var_68]
7554A:  LDR.W           R11, [R11,#4]
7554E:  CMP             R11, R9
75550:  BEQ.W           loc_75440
75554:  LDR.W           R1, [R11,#8]
75558:  CMP             R1, #0
7555A:  BEQ             loc_7554A
7555C:  MOV             R2, R1
7555E:  LDRB            R6, [R1]
75560:  LDRB.W          R4, [R2,#0x10]!
75564:  LDR             R0, [R1,#4]
75566:  ANDS.W          R12, R6, #1
7556A:  LDR             R5, [R1,#0x14]
7556C:  IT EQ
7556E:  LSREQ           R0, R6, #1
75570:  ANDS.W          R6, R4, #1
75574:  IT EQ
75576:  LSREQ           R5, R4, #1
75578:  LDR             R4, [R1,#0xC]
7557A:  MOV.W           R3, R4,LSR#24
7557E:  MOV.W           R8, R4,LSR#16
75582:  MOV.W           R10, R4,LSR#8
75586:  LDR             R4, =(off_114C24 - 0x7558C)
75588:  ADD             R4, PC; off_114C24
7558A:  CBZ             R5, loc_755CE
7558C:  CMP             R0, #0
7558E:  BEQ             loc_75530
75590:  STR.W           R10, [SP,#0xC0+var_A8]
75594:  CMP             R6, #0
75596:  LDRD.W          R0, R10, [R1,#0x18]
7559A:  STRD.W          R8, R3, [SP,#0xC0+var_A0]
7559E:  LDR.W           R8, [SP,#0xC0+var_90]
755A2:  IT EQ
755A4:  ADDEQ           R0, R2, #1
755A6:  BL              sub_87F38
755AA:  MOV             R5, R0
755AC:  BLX             strlen
755B0:  CMN.W           R0, #0x10
755B4:  BCS.W           loc_75B1A
755B8:  MOV             R6, R0
755BA:  CMP             R0, #0xB
755BC:  STR             R4, [SP,#0xC0+var_94]
755BE:  BCS             loc_7560E
755C0:  LDR.W           R9, [SP,#0xC0+dest]
755C4:  LSLS            R0, R6, #1
755C6:  STRB.W          R0, [SP,#0xC0+var_80]
755CA:  CBNZ            R6, loc_75628
755CC:  B               loc_75632
755CE:  CMP             R0, #0
755D0:  BEQ             loc_75530
755D2:  LDR             R0, [R1,#8]
755D4:  CMP.W           R12, #0
755D8:  STR             R3, [SP,#0xC0+var_9C]
755DA:  IT EQ
755DC:  ADDEQ           R0, R1, #1
755DE:  BL              sub_87F38
755E2:  MOV             R5, R0
755E4:  BLX             strlen
755E8:  CMN.W           R0, #0x10
755EC:  BCS.W           loc_75B1A
755F0:  MOV             R6, R0
755F2:  CMP             R0, #0xB
755F4:  STR             R4, [SP,#0xC0+var_94]
755F6:  STR.W           R8, [SP,#0xC0+var_A0]
755FA:  BCS.W           loc_758C8
755FE:  LDR             R4, [SP,#0xC0+dest]
75600:  LSLS            R0, R6, #1
75602:  CMP             R6, #0
75604:  STRB.W          R0, [SP,#0xC0+var_80]
75608:  BNE.W           loc_758E2
7560C:  B               loc_758EC
7560E:  ADD.W           R0, R6, #0x10
75612:  BIC.W           R4, R0, #0xF
75616:  MOV             R0, R4; unsigned int
75618:  BLX             j__Znwj; operator new(uint)
7561C:  MOV             R9, R0
7561E:  STRD.W          R6, R0, [SP,#0xC0+var_7C]
75622:  ADDS            R0, R4, #1
75624:  LDR             R4, [SP,#0xC0+var_94]
75626:  STR             R0, [SP,#0xC0+var_80]
75628:  MOV             R0, R9; dest
7562A:  MOV             R1, R5; src
7562C:  MOV             R2, R6; n
7562E:  BLX             j_memcpy
75632:  LDR             R1, [R4]
75634:  MOVS            R0, #0
75636:  STRB.W          R0, [R9,R6]
7563A:  VLDR            S0, [R1]
7563E:  MOV             R9, R1
75640:  VMUL.F32        S0, S0, S18
75644:  VMOV            R3, S0
75648:  ADD             R0, SP, #0xC0+var_8C
7564A:  ADD             R2, SP, #0xC0+var_80
7564C:  MOV             R1, R8
7564E:  BL              sub_719EC
75652:  VLDR            S0, [SP,#0xC0+var_8C]
75656:  LDRB.W          R0, [SP,#0xC0+var_80]
7565A:  VSUB.F32        S0, S16, S0
7565E:  LSLS            R0, R0, #0x1F
75660:  VADD.F32        S0, S0, S20
75664:  VSTR            S0, [SP,#0xC0+var_6C]
75668:  ITT NE
7566A:  LDRNE           R0, [SP,#0xC0+var_78]; void *
7566C:  BLXNE           j__ZdlPv; operator delete(void *)
75670:  MOV.W           R0, R10,LSR#24
75674:  MOV.W           R1, R10,LSR#16
75678:  VMOV            S0, R0
7567C:  UXTB            R0, R1
7567E:  MOV.W           R2, R10,LSR#8
75682:  VMOV            S2, R0
75686:  VCVT.F32.S32    S0, S0
7568A:  UXTB            R0, R2
7568C:  VMOV            S4, R0
75690:  MOV.W           R0, #0x3F800000
75694:  VCVT.F32.S32    S2, S2
75698:  STR             R0, [SP,#0xC0+var_74]
7569A:  VCVT.F32.S32    S4, S4
7569E:  VMUL.F32        S0, S0, S22
756A2:  VMUL.F32        S2, S2, S22
756A6:  VMUL.F32        S4, S4, S22
756AA:  VSTR            S0, [SP,#0xC0+var_78]
756AE:  LDR.W           R1, [R11,#8]
756B2:  VSTR            S2, [SP,#0xC0+var_7C]
756B6:  VSTR            S4, [SP,#0xC0+var_80]
756BA:  LDRB            R2, [R1,#0x10]
756BC:  LDR             R0, [R1,#0x18]
756BE:  LSLS            R2, R2, #0x1F
756C0:  IT EQ
756C2:  ADDEQ.W         R0, R1, #0x11
756C6:  BL              sub_87F38
756CA:  MOV             R5, R0
756CC:  BLX             strlen
756D0:  CMN.W           R0, #0x10
756D4:  BCS.W           loc_75B14
756D8:  MOV             R6, R0
756DA:  CMP             R0, #0xB
756DC:  MOV             R10, R9
756DE:  BCS             loc_756F0
756E0:  LDR             R4, [SP,#0xC0+var_A4]
756E2:  ADD.W           R8, SP, #0xC0+var_6C
756E6:  LSLS            R0, R6, #1
756E8:  STRB.W          R0, [SP,#0xC0+var_8C]
756EC:  CBNZ            R6, loc_7570E
756EE:  B               loc_75718
756F0:  ADD.W           R0, R6, #0x10
756F4:  BIC.W           R9, R0, #0xF
756F8:  MOV             R0, R9; unsigned int
756FA:  BLX             j__Znwj; operator new(uint)
756FE:  MOV             R4, R0
75700:  STRD.W          R6, R0, [SP,#0xC0+var_88]
75704:  ADD.W           R0, R9, #1
75708:  STR             R0, [SP,#0xC0+var_8C]
7570A:  ADD.W           R8, SP, #0xC0+var_6C
7570E:  MOV             R0, R4; dest
75710:  MOV             R1, R5; src
75712:  MOV             R2, R6; n
75714:  BLX             j_memcpy
75718:  VLDR            S0, [R10]
7571C:  MOVS            R0, #0
7571E:  STRB            R0, [R4,R6]
75720:  VMUL.F32        S0, S0, S18
75724:  STR             R0, [SP,#0xC0+var_B8]; int
75726:  MOVS            R0, #1
75728:  STR             R0, [SP,#0xC0+var_C0]; int
7572A:  ADD             R2, SP, #0xC0+var_80; int
7572C:  LDR             R0, [SP,#0xC0+var_90]; int
7572E:  ADD             R3, SP, #0xC0+var_8C; int
75730:  MOV             R1, R8; int
75732:  VSTR            S0, [SP,#0xC0+var_BC]
75736:  BL              sub_7178C
7573A:  LDRB.W          R0, [SP,#0xC0+var_8C]
7573E:  LSLS            R0, R0, #0x1F
75740:  ITT NE
75742:  LDRNE           R0, [SP,#0xC0+var_84]; void *
75744:  BLXNE           j__ZdlPv; operator delete(void *)
75748:  LDR             R0, [SP,#0xC0+var_98]
7574A:  ADD             R2, SP, #0xC0+var_80; int
7574C:  VLDR            S0, [R10]
75750:  MOVS            R1, #0
75752:  MOVW            R3, #0x4702
75756:  VSTR            S16, [SP,#0xC0+var_6C]
7575A:  LDR             R0, [R0]
7575C:  VMUL.F32        S0, S0, S18
75760:  VST1.64         {D12-D13}, [R2]
75764:  LDR             R0, [R0,#0x6C]
75766:  STRB.W          R1, [SP,#0xC0+var_8C+2]
7576A:  STRH.W          R3, [SP,#0xC0+var_8C]
7576E:  STR             R0, [SP,#0xC0+var_B8]; int
75770:  ADD             R3, SP, #0xC0+var_8C; int
75772:  LDR             R0, [SP,#0xC0+var_90]; int
75774:  STR             R1, [SP,#0xC0+var_C0]; int
75776:  MOV             R1, R8; int
75778:  VSTR            S0, [SP,#0xC0+var_BC]
7577C:  BL              sub_7178C
75780:  LDRB.W          R0, [SP,#0xC0+var_8C]
75784:  LSLS            R0, R0, #0x1F
75786:  ITT NE
75788:  LDRNE           R0, [SP,#0xC0+var_84]; void *
7578A:  BLXNE           j__ZdlPv; operator delete(void *)
7578E:  VMOV.F32        Q8, #1.0
75792:  ADD             R0, SP, #0xC0+var_80
75794:  VST1.64         {D16-D17}, [R0]
75798:  LDR.W           R0, [R11,#8]
7579C:  LDRB.W          R1, [R0,#0x20]
757A0:  BL              sub_75B68
757A4:  MOV             R5, R0
757A6:  BLX             strlen
757AA:  CMN.W           R0, #0x10
757AE:  BCS.W           loc_75B14
757B2:  MOV             R6, R0
757B4:  CMP             R0, #0xB
757B6:  BCS             loc_757E0
757B8:  LDR             R4, [SP,#0xC0+var_A4]
757BA:  LSLS            R0, R6, #1
757BC:  STRB.W          R0, [SP,#0xC0+var_8C]
757C0:  CBNZ            R6, loc_757FA
757C2:  B               loc_75804
757C4:  DCD off_114B10 - 0x7546E
757C8:  DCFS 350.0
757CC:  DCFS 0.00092593
757D0:  DCFS 1500.0
757D4:  DCFS 0.00052083
757D8:  DCFS 0.0039216
757DC:  DCD off_114C24 - 0x7558C
757E0:  ADD.W           R0, R6, #0x10
757E4:  BIC.W           R9, R0, #0xF
757E8:  MOV             R0, R9; unsigned int
757EA:  BLX             j__Znwj; operator new(uint)
757EE:  MOV             R4, R0
757F0:  STRD.W          R6, R0, [SP,#0xC0+var_88]
757F4:  ADD.W           R0, R9, #1
757F8:  STR             R0, [SP,#0xC0+var_8C]
757FA:  MOV             R0, R4; dest
757FC:  MOV             R1, R5; src
757FE:  MOV             R2, R6; n
75800:  BLX             j_memcpy
75804:  LDR             R0, [SP,#0xC0+var_98]
75806:  MOVS            R1, #0
75808:  STRB            R1, [R4,R6]
7580A:  LDR             R0, [R0]
7580C:  VLDR            S0, [R10]
75810:  LDR             R0, [R0,#0x6C]
75812:  VMUL.F32        S0, S0, S18
75816:  STR             R0, [SP,#0xC0+var_B8]; int
75818:  ADD             R2, SP, #0xC0+var_80; int
7581A:  LDR             R0, [SP,#0xC0+var_90]; int
7581C:  ADD             R3, SP, #0xC0+var_8C; int
7581E:  STR             R1, [SP,#0xC0+var_C0]; int
75820:  MOV             R1, R8; int
75822:  VSTR            S0, [SP,#0xC0+var_BC]
75826:  BL              sub_7178C
7582A:  LDRB.W          R0, [SP,#0xC0+var_8C]
7582E:  LSLS            R0, R0, #0x1F
75830:  ITT NE
75832:  LDRNE           R0, [SP,#0xC0+var_84]; void *
75834:  BLXNE           j__ZdlPv; operator delete(void *)
75838:  VMOV.F32        S2, S16
7583C:  LDR             R0, [SP,#0xC0+var_9C]
7583E:  VLDR            S0, [R10]
75842:  VMLA.F32        S2, S0, S18
75846:  VMOV            S0, R0
7584A:  LDR             R0, [SP,#0xC0+var_A0]
7584C:  VCVT.F32.S32    S0, S0
75850:  UXTB            R0, R0
75852:  VMOV            S4, R0
75856:  LDR             R0, [SP,#0xC0+var_A8]
75858:  VCVT.F32.S32    S4, S4
7585C:  UXTB            R0, R0
7585E:  VADD.F32        S2, S2, S30
75862:  VMOV            S6, R0
75866:  MOV.W           R0, #0x3F800000
7586A:  VMUL.F32        S0, S0, S22
7586E:  STR             R0, [SP,#0xC0+var_74]
75870:  VCVT.F32.S32    S6, S6
75874:  VMUL.F32        S4, S4, S22
75878:  VSTR            S2, [SP,#0xC0+var_6C]
7587C:  VSTR            S0, [SP,#0xC0+var_78]
75880:  VMUL.F32        S6, S6, S22
75884:  LDR.W           R1, [R11,#8]
75888:  VSTR            S4, [SP,#0xC0+var_7C]
7588C:  LDR             R0, [R1,#8]
7588E:  VSTR            S6, [SP,#0xC0+var_80]
75892:  LDRB            R2, [R1]
75894:  LSLS            R2, R2, #0x1F
75896:  IT EQ
75898:  ADDEQ           R0, R1, #1
7589A:  BL              sub_87F38
7589E:  MOV             R5, R0
758A0:  BLX             strlen
758A4:  CMN.W           R0, #0x10
758A8:  BCS.W           loc_75B14
758AC:  MOV             R6, R0
758AE:  CMP             R0, #0xB
758B0:  BCS.W           loc_754D6
758B4:  LDR             R4, [SP,#0xC0+var_A4]
758B6:  LSLS            R0, R6, #1
758B8:  LDR.W           R9, [SP,#0xC0+var_AC]
758BC:  CMP             R6, #0
758BE:  STRB.W          R0, [SP,#0xC0+var_8C]
758C2:  BNE.W           loc_754F4
758C6:  B               loc_754FE
758C8:  ADD.W           R0, R6, #0x10
758CC:  BIC.W           R9, R0, #0xF
758D0:  MOV             R0, R9; unsigned int
758D2:  BLX             j__Znwj; operator new(uint)
758D6:  MOV             R4, R0
758D8:  STRD.W          R6, R0, [SP,#0xC0+var_7C]
758DC:  ADD.W           R0, R9, #1
758E0:  STR             R0, [SP,#0xC0+var_80]
758E2:  MOV             R0, R4; dest
758E4:  MOV             R1, R5; src
758E6:  MOV             R2, R6; n
758E8:  BLX             j_memcpy
758EC:  LDR             R0, [SP,#0xC0+var_94]
758EE:  LDR.W           R8, [R0]
758F2:  MOVS            R0, #0
758F4:  STRB            R0, [R4,R6]
758F6:  VLDR            S0, [R8]
758FA:  VMUL.F32        S0, S0, S18
758FE:  VMOV            R3, S0
75902:  LDR             R1, [SP,#0xC0+var_90]
75904:  ADD             R0, SP, #0xC0+var_8C
75906:  ADD             R2, SP, #0xC0+var_80
75908:  BL              sub_719EC
7590C:  VLDR            S0, [SP,#0xC0+var_8C]
75910:  LDRB.W          R0, [SP,#0xC0+var_80]
75914:  VSUB.F32        S0, S16, S0
75918:  LSLS            R0, R0, #0x1F
7591A:  VADD.F32        S0, S0, S20
7591E:  VSTR            S0, [SP,#0xC0+var_6C]
75922:  ITT NE
75924:  LDRNE           R0, [SP,#0xC0+var_78]; void *
75926:  BLXNE           j__ZdlPv; operator delete(void *)
7592A:  LDR             R0, [SP,#0xC0+var_9C]
7592C:  VMOV            S0, R0
75930:  LDR             R0, [SP,#0xC0+var_A0]
75932:  VCVT.F32.S32    S0, S0
75936:  UXTB            R0, R0
75938:  VMOV            S2, R0
7593C:  UXTB.W          R0, R10
75940:  VMOV            S4, R0
75944:  MOV.W           R0, #0x3F800000
75948:  VCVT.F32.S32    S2, S2
7594C:  STR             R0, [SP,#0xC0+var_74]
7594E:  VCVT.F32.S32    S4, S4
75952:  VMUL.F32        S0, S0, S22
75956:  VMUL.F32        S2, S2, S22
7595A:  VMUL.F32        S4, S4, S22
7595E:  VSTR            S0, [SP,#0xC0+var_78]
75962:  LDR.W           R1, [R11,#8]
75966:  VSTR            S2, [SP,#0xC0+var_7C]
7596A:  VSTR            S4, [SP,#0xC0+var_80]
7596E:  LDRB            R2, [R1]
75970:  LDR             R0, [R1,#8]
75972:  LSLS            R2, R2, #0x1F
75974:  IT EQ
75976:  ADDEQ           R0, R1, #1
75978:  BL              sub_87F38
7597C:  MOV             R5, R0
7597E:  BLX             strlen
75982:  CMN.W           R0, #0x10
75986:  BCS.W           loc_75B14
7598A:  MOV             R6, R0
7598C:  CMP             R0, #0xB
7598E:  BCS             loc_7599C
75990:  LDR             R4, [SP,#0xC0+var_A4]
75992:  LSLS            R0, R6, #1
75994:  STRB.W          R0, [SP,#0xC0+var_8C]
75998:  CBNZ            R6, loc_759B6
7599A:  B               loc_759C0
7599C:  ADD.W           R0, R6, #0x10
759A0:  BIC.W           R9, R0, #0xF
759A4:  MOV             R0, R9; unsigned int
759A6:  BLX             j__Znwj; operator new(uint)
759AA:  MOV             R4, R0
759AC:  STRD.W          R6, R0, [SP,#0xC0+var_88]
759B0:  ADD.W           R0, R9, #1
759B4:  STR             R0, [SP,#0xC0+var_8C]
759B6:  MOV             R0, R4; dest
759B8:  MOV             R1, R5; src
759BA:  MOV             R2, R6; n
759BC:  BLX             j_memcpy
759C0:  VLDR            S0, [R8]
759C4:  MOVS            R0, #0
759C6:  STRB            R0, [R4,R6]
759C8:  VMUL.F32        S0, S0, S18
759CC:  STR             R0, [SP,#0xC0+var_B8]; int
759CE:  MOVS            R0, #1
759D0:  STR             R0, [SP,#0xC0+var_C0]; int
759D2:  ADD             R1, SP, #0xC0+var_6C; int
759D4:  LDR             R0, [SP,#0xC0+var_90]; int
759D6:  ADD             R2, SP, #0xC0+var_80; int
759D8:  ADD             R3, SP, #0xC0+var_8C; int
759DA:  VSTR            S0, [SP,#0xC0+var_BC]
759DE:  BL              sub_7178C
759E2:  LDRB.W          R0, [SP,#0xC0+var_8C]
759E6:  LSLS            R0, R0, #0x1F
759E8:  ITT NE
759EA:  LDRNE           R0, [SP,#0xC0+var_84]; void *
759EC:  BLXNE           j__ZdlPv; operator delete(void *)
759F0:  LDR.W           R0, [R11,#8]
759F4:  MOV.W           R4, #0xFFFFFFFF
759F8:  VSTR            S16, [SP,#0xC0+var_6C]
759FC:  ADD             R2, SP, #0xC0+var_80; int
759FE:  MOVS            R3, #0
75A00:  LDRB.W          R0, [R0,#0x20]
75A04:  CMP             R0, #0x38 ; '8'
75A06:  ITT EQ
75A08:  MOVEQ           R4, #0xFF
75A0A:  MOVTEQ          R4, #0xFF00
75A0E:  LDR             R1, [SP,#0xC0+var_98]
75A10:  CMP             R0, #0x37 ; '7'
75A12:  MOVW            R0, #0x4702
75A16:  VLDR            S0, [R8]
75A1A:  VST1.64         {D12-D13}, [R2]
75A1E:  VMUL.F32        S0, S0, S18
75A22:  LDR             R1, [R1]
75A24:  STRB.W          R3, [SP,#0xC0+var_8C+2]
75A28:  ITT EQ
75A2A:  MOVEQ           R4, #0
75A2C:  MOVTEQ          R4, #0xFFFF
75A30:  STRH.W          R0, [SP,#0xC0+var_8C]
75A34:  LDR             R0, [R1,#0x6C]
75A36:  STR             R0, [SP,#0xC0+var_B8]; int
75A38:  ADD             R1, SP, #0xC0+var_6C; int
75A3A:  LDR             R0, [SP,#0xC0+var_90]; int
75A3C:  STR             R3, [SP,#0xC0+var_C0]; int
75A3E:  ADD             R3, SP, #0xC0+var_8C; int
75A40:  VSTR            S0, [SP,#0xC0+var_BC]
75A44:  BL              sub_7178C
75A48:  LDRB.W          R0, [SP,#0xC0+var_8C]
75A4C:  LSLS            R0, R0, #0x1F
75A4E:  ITT NE
75A50:  LDRNE           R0, [SP,#0xC0+var_84]; void *
75A52:  BLXNE           j__ZdlPv; operator delete(void *)
75A56:  UBFX.W          R0, R4, #0x10, #8
75A5A:  UBFX.W          R1, R4, #8, #8
75A5E:  VMOV            S0, R0
75A62:  UXTB            R0, R4
75A64:  VMOV            S4, R0
75A68:  MOV.W           R0, #0x3F800000
75A6C:  VCVT.F32.U32    S0, S0
75A70:  STR             R0, [SP,#0xC0+var_74]
75A72:  VMOV            S2, R1
75A76:  VCVT.F32.U32    S4, S4
75A7A:  VCVT.F32.U32    S2, S2
75A7E:  VMUL.F32        S0, S0, S22
75A82:  VMUL.F32        S4, S4, S22
75A86:  VMUL.F32        S2, S2, S22
75A8A:  VSTR            S0, [SP,#0xC0+var_78]
75A8E:  LDR.W           R0, [R11,#8]
75A92:  VSTR            S4, [SP,#0xC0+var_80]
75A96:  VSTR            S2, [SP,#0xC0+var_7C]
75A9A:  LDRB.W          R1, [R0,#0x20]
75A9E:  BL              sub_75B68
75AA2:  MOV             R5, R0
75AA4:  BLX             strlen
75AA8:  CMN.W           R0, #0x10
75AAC:  BCS             loc_75B14
75AAE:  MOV             R6, R0
75AB0:  CMP             R0, #0xB
75AB2:  BCS             loc_75AC4
75AB4:  LDR             R4, [SP,#0xC0+var_A4]
75AB6:  LSLS            R0, R6, #1
75AB8:  LDR.W           R9, [SP,#0xC0+var_AC]
75ABC:  STRB.W          R0, [SP,#0xC0+var_8C]
75AC0:  CBNZ            R6, loc_75AE2
75AC2:  B               loc_75AEC
75AC4:  ADD.W           R0, R6, #0x10
75AC8:  BIC.W           R9, R0, #0xF
75ACC:  MOV             R0, R9; unsigned int
75ACE:  BLX             j__Znwj; operator new(uint)
75AD2:  MOV             R4, R0
75AD4:  STRD.W          R6, R0, [SP,#0xC0+var_88]
75AD8:  ADD.W           R0, R9, #1
75ADC:  STR             R0, [SP,#0xC0+var_8C]
75ADE:  LDR.W           R9, [SP,#0xC0+var_AC]
75AE2:  MOV             R0, R4; dest
75AE4:  MOV             R1, R5; src
75AE6:  MOV             R2, R6; n
75AE8:  BLX             j_memcpy
75AEC:  LDR             R0, [SP,#0xC0+var_98]
75AEE:  MOVS            R1, #0
75AF0:  STRB            R1, [R4,R6]
75AF2:  LDR             R0, [R0]
75AF4:  VLDR            S0, [R8]
75AF8:  LDR             R0, [R0,#0x6C]
75AFA:  VMUL.F32        S0, S0, S18
75AFE:  STR             R0, [SP,#0xC0+var_B8]; int
75B00:  ADD             R2, SP, #0xC0+var_80; int
75B02:  LDR             R0, [SP,#0xC0+var_90]; int
75B04:  ADD             R3, SP, #0xC0+var_8C; int
75B06:  STR             R1, [SP,#0xC0+var_C0]; int
75B08:  ADD             R1, SP, #0xC0+var_6C; int
75B0A:  VSTR            S0, [SP,#0xC0+var_BC]
75B0E:  BL              sub_7178C
75B12:  B               loc_75520
75B14:  ADD             R0, SP, #0xC0+var_8C
75B16:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
75B1A:  ADD             R0, SP, #0xC0+var_80
75B1C:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
