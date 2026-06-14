; =========================================================
; Game Engine Function: sub_1754E4
; Address            : 0x1754E4 - 0x1757E0
; =========================================================

1754E4:  PUSH            {R4-R7,LR}
1754E6:  ADD             R7, SP, #0xC
1754E8:  PUSH.W          {R8-R11}
1754EC:  SUB             SP, SP, #4
1754EE:  VPUSH           {D8}
1754F2:  SUB             SP, SP, #0x100
1754F4:  STR             R0, [SP,#0x128+var_120]
1754F6:  MOV             R4, R1
1754F8:  LDR             R0, [R1,#8]
1754FA:  STR             R3, [SP,#0x128+var_124]
1754FC:  REV.W           R9, R0
175500:  MOV             R0, R9
175502:  BL              sub_1654B0
175506:  MOV             R11, R0
175508:  LDR             R0, [R4]
17550A:  MOVS            R1, #0
17550C:  REV             R0, R0
17550E:  MOVT            R1, #0x57BC
175512:  CMP             R0, R1
175514:  BNE             loc_17551C
175516:  LDR             R0, [R4,#4]
175518:  REV             R0, R0
17551A:  CBZ             R0, loc_175568
17551C:  LDR             R0, [SP,#0x128+var_124]
17551E:  LDR             R1, [R7,#src]; src
175520:  LDR             R4, [R7,#arg_4]
175522:  VMOV            S16, R0
175526:  ADD             R0, SP, #0x128+dest; dest
175528:  CBZ             R1, loc_175532
17552A:  MOVS            R2, #0x74 ; 't'; n
17552C:  BLX             j_memcpy
175530:  B               loc_175536
175532:  BL              sub_174FC6
175536:  MOVS            R0, #1
175538:  ADD             R1, SP, #0x128+dest; src
17553A:  STRB.W          R0, [SP,#0x128+var_110]
17553E:  ADD             R0, SP, #0x128+var_A0; dest
175540:  MOVS            R2, #0x74 ; 't'; n
175542:  BLX             j_memcpy
175546:  VSTR            S16, [SP,#0x128+var_90]
17554A:  STRD.W          R11, R9, [SP,#0x128+var_A0]
17554E:  CBZ             R4, loc_175552
175550:  STR             R4, [SP,#0x128+var_70]
175552:  LDR             R0, [SP,#0x128+var_120]; int
175554:  ADD             R1, SP, #0x128+var_A0; src
175556:  BL              sub_1751CE
17555A:  ADD             SP, SP, #0x100
17555C:  VPOP            {D8}
175560:  ADD             SP, SP, #4
175562:  POP.W           {R8-R11}
175566:  POP             {R4-R7,PC}
175568:  LDR             R5, =(dword_381BE8 - 0x175572)
17556A:  LDR             R2, =(dword_381BEC - 0x175576)
17556C:  LDR             R0, =(dword_381BE4 - 0x17557A)
17556E:  ADD             R5, PC; dword_381BE8
175570:  LDR             R1, [R4,#8]
175572:  ADD             R2, PC; dword_381BEC
175574:  LDR             R3, =(dword_381BF0 - 0x17557E)
175576:  ADD             R0, PC; dword_381BE4
175578:  STR             R2, [SP,#0x128+var_11C]
17557A:  ADD             R3, PC; dword_381BF0
17557C:  STR             R4, [R0]
17557E:  REV             R0, R1
175580:  ADDS            R4, #0x10
175582:  ADD.W           R8, R11, R0
175586:  MOV             R10, R3
175588:  MOV             R0, R11
17558A:  STR.W           R8, [R5]
17558E:  STR.W           R11, [R2]
175592:  STR.W           R11, [R3]
175596:  STR             R5, [SP,#0x128+var_128]
175598:  LDRB            R1, [R4]
17559A:  CMP             R1, #0x20 ; ' '
17559C:  BCC             loc_1755D6
17559E:  SXTB            R2, R1
1755A0:  CMP.W           R2, #0xFFFFFFFF
1755A4:  BLE             loc_17564E
1755A6:  CMP             R1, #0x40 ; '@'
1755A8:  BCC             loc_17566C
1755AA:  LDRB            R2, [R4,#2]
1755AC:  LDR             R6, [R5]
1755AE:  ADDS            R2, #1
1755B0:  ADDS            R3, R0, R2
1755B2:  CMP             R3, R6
1755B4:  BHI.W           loc_17571E
1755B8:  LDR             R5, [SP,#0x128+var_11C]
1755BA:  LDRB            R3, [R4,#1]
1755BC:  ORR.W           R1, R3, R1,LSL#8
1755C0:  MOVW            R3, #0x3FFF
1755C4:  SUBS            R1, R3, R1
1755C6:  LDR             R5, [R5]
1755C8:  ADDS            R3, R0, R1
1755CA:  CMP             R5, R3
1755CC:  BLS.W           loc_17570E
1755D0:  ADDS            R3, R6, #1
1755D2:  LDR             R5, [SP,#0x128+var_128]
1755D4:  B               loc_17571E
1755D6:  CMP             R1, #0x18
1755D8:  BCC             loc_175610
1755DA:  LDRB            R2, [R4,#3]
1755DC:  LDR             R6, [R5]
1755DE:  ADDS            R2, #1
1755E0:  ADDS            R3, R0, R2
1755E2:  CMP             R3, R6
1755E4:  BHI             loc_1756BA
1755E6:  LDRB            R5, [R4,#2]
1755E8:  LDRB            R3, [R4,#1]
1755EA:  ORR.W           R1, R5, R1,LSL#16
1755EE:  LDR             R5, [SP,#0x128+var_11C]
1755F0:  ORR.W           R1, R1, R3,LSL#8
1755F4:  MOV             R3, #0xFFFFF
1755FC:  SUBS            R1, R3, R1
1755FE:  ADD.W           R1, R1, #0x80000
175602:  LDR             R5, [R5]
175604:  ADDS            R3, R0, R1
175606:  CMP             R5, R3
175608:  BLS             loc_1756AA
17560A:  ADDS            R3, R6, #1
17560C:  LDR             R5, [SP,#0x128+var_128]
17560E:  B               loc_1756BA
175610:  CMP             R1, #0x10
175612:  BCC             loc_17567C
175614:  LDRH.W          R2, [R4,#3]
175618:  LDR             R6, [R5]
17561A:  LSLS            R2, R2, #0x10
17561C:  REV             R2, R2
17561E:  ADDS            R2, #1
175620:  ADDS            R3, R0, R2
175622:  CMP             R3, R6
175624:  BHI.W           loc_175738
175628:  LDRB            R5, [R4,#2]
17562A:  LDRB            R3, [R4,#1]
17562C:  ORR.W           R1, R5, R1,LSL#16
175630:  LDR             R5, [SP,#0x128+var_11C]
175632:  ORR.W           R1, R1, R3,LSL#8
175636:  MOV             R3, #0xFFFFF
17563E:  SUBS            R1, R3, R1
175640:  LDR             R5, [R5]
175642:  ADDS            R3, R0, R1
175644:  CMP             R5, R3
175646:  BLS             loc_175728
175648:  ADDS            R3, R6, #1
17564A:  LDR             R5, [SP,#0x128+var_128]
17564C:  B               loc_175738
17564E:  SUBS            R1, #0x7F
175650:  LDR             R6, [R5]
175652:  ADDS            R2, R0, R1
175654:  CMP             R2, R6
175656:  BHI             loc_175702
175658:  LDR             R5, [SP,#0x128+var_11C]
17565A:  LDRB            R2, [R4,#1]
17565C:  LDR             R5, [R5]
17565E:  MVNS            R3, R2
175660:  ADDS            R2, R3, R0
175662:  CMP             R5, R2
175664:  BLS             loc_1756EE
175666:  ADDS            R2, R6, #1
175668:  LDR             R5, [SP,#0x128+var_128]
17566A:  B               loc_175702
17566C:  ADDS            R0, R4, #1; src
17566E:  SUBS            R1, #0x1F; n
175670:  BL              sub_17A9B0
175674:  LDRB            R0, [R4]
175676:  SUB.W           R1, R0, #0x1E
17567A:  B               loc_17569A
17567C:  CMP             R1, #8
17567E:  BCC             loc_1756C4
175680:  LDRB            R0, [R4,#1]
175682:  ORR.W           R0, R0, R1,LSL#8
175686:  SUBW            R1, R0, #0x7FF; n
17568A:  ADDS            R0, R4, #2; src
17568C:  BL              sub_17A9B0
175690:  LDRH            R0, [R4]
175692:  LSLS            R0, R0, #0x10
175694:  REV             R0, R0
175696:  SUBW            R1, R0, #0x7FD
17569A:  CMP             R1, #0
17569C:  BEQ.W           loc_17551C
1756A0:  MOV             R0, R10
1756A2:  ADD             R4, R1
1756A4:  LDR.W           R0, [R10]
1756A8:  B               loc_175742
1756AA:  LDR             R5, [SP,#0x128+var_128]
1756AC:  MOV             R3, R0
1756AE:  LDRB            R0, [R3,R1]
1756B0:  SUBS            R2, #1
1756B2:  STRB            R0, [R3]
1756B4:  ADD.W           R3, R3, #1
1756B8:  BNE             loc_1756AE
1756BA:  MOV             R0, R10
1756BC:  STR.W           R3, [R10]
1756C0:  ADDS            R4, #4
1756C2:  B               loc_175740
1756C4:  CMP             R1, #4
1756C6:  BEQ             loc_175776
1756C8:  CMP             R1, #6
1756CA:  BEQ             loc_17574A
1756CC:  CMP             R1, #7
1756CE:  BNE.W           loc_17551C
1756D2:  LDRH.W          R1, [R4,#1]
1756D6:  ADDS            R0, R4, #3; src
1756D8:  LSLS            R1, R1, #0x10
1756DA:  REV             R1, R1
1756DC:  ADDS            R1, #1; n
1756DE:  BL              sub_17A9B0
1756E2:  LDRH.W          R0, [R4,#1]
1756E6:  LSLS            R0, R0, #0x10
1756E8:  REV             R0, R0
1756EA:  ADDS            R1, R0, #4
1756EC:  B               loc_1756A0
1756EE:  CMP             R1, #0
1756F0:  BEQ             loc_1757A8
1756F2:  LDR             R5, [SP,#0x128+var_128]
1756F4:  MOV             R2, R0
1756F6:  LDRB            R0, [R2,R3]
1756F8:  SUBS            R1, #1
1756FA:  STRB            R0, [R2]
1756FC:  ADD.W           R2, R2, #1
175700:  BNE             loc_1756F6
175702:  MOV             R0, R10
175704:  STR.W           R2, [R10]
175708:  MOV             R0, R2
17570A:  ADDS            R4, #2
17570C:  B               loc_175742
17570E:  LDR             R5, [SP,#0x128+var_128]
175710:  MOV             R3, R0
175712:  LDRB            R0, [R3,R1]
175714:  SUBS            R2, #1
175716:  STRB            R0, [R3]
175718:  ADD.W           R3, R3, #1
17571C:  BNE             loc_175712
17571E:  MOV             R0, R10
175720:  STR.W           R3, [R10]
175724:  ADDS            R4, #3
175726:  B               loc_175740
175728:  LDR             R5, [SP,#0x128+var_128]
17572A:  MOV             R3, R0
17572C:  LDRB            R0, [R3,R1]
17572E:  SUBS            R2, #1
175730:  STRB            R0, [R3]
175732:  ADD.W           R3, R3, #1
175736:  BNE             loc_17572C
175738:  MOV             R0, R10
17573A:  STR.W           R3, [R10]
17573E:  ADDS            R4, #5
175740:  MOV             R0, R3
175742:  CMP             R0, R8
175744:  BLS.W           loc_175598
175748:  B               loc_17551C
17574A:  LDRB            R1, [R4,#4]
17574C:  LDR             R6, [R5]
17574E:  ADDS            R1, #1
175750:  ADDS            R2, R0, R1
175752:  CMP             R2, R6
175754:  BHI             loc_1757BC
175756:  LDRB            R2, [R4,#1]
175758:  LDRB            R5, [R4,#3]
17575A:  LDRB            R3, [R4,#2]
17575C:  ORR.W           R2, R5, R2,LSL#16
175760:  LDR             R5, [SP,#0x128+var_11C]
175762:  ORR.W           R2, R2, R3,LSL#8
175766:  LDR             R5, [R5]
175768:  MVNS            R3, R2
17576A:  ADDS            R2, R0, R3
17576C:  CMP             R5, R2
17576E:  BLS             loc_1757AC
175770:  ADDS            R2, R6, #1
175772:  LDR             R5, [SP,#0x128+var_128]
175774:  B               loc_1757BC
175776:  LDRH            R1, [R4,#4]
175778:  LDR.W           R12, [R5]
17577C:  LSLS            R1, R1, #0x10
17577E:  REV             R1, R1
175780:  ADDS            R1, #1
175782:  ADDS            R2, R0, R1
175784:  CMP             R2, R12
175786:  BHI             loc_1757D4
175788:  LDRB            R2, [R4,#1]
17578A:  LDRB            R6, [R4,#3]
17578C:  LDRB            R3, [R4,#2]
17578E:  ORR.W           R2, R6, R2,LSL#16
175792:  LDR             R6, [SP,#0x128+var_11C]
175794:  ORR.W           R2, R2, R3,LSL#8
175798:  LDR             R6, [R6]
17579A:  MVNS            R3, R2
17579C:  ADDS            R2, R0, R3
17579E:  CMP             R6, R2
1757A0:  BLS             loc_1757C6
1757A2:  ADD.W           R2, R12, #1
1757A6:  B               loc_1757D4
1757A8:  LDR             R5, [SP,#0x128+var_128]
1757AA:  B               loc_17570A
1757AC:  LDR             R5, [SP,#0x128+var_128]
1757AE:  MOV             R2, R0
1757B0:  LDRB            R0, [R2,R3]
1757B2:  SUBS            R1, #1
1757B4:  STRB            R0, [R2]
1757B6:  ADD.W           R2, R2, #1
1757BA:  BNE             loc_1757B0
1757BC:  MOV             R0, R10
1757BE:  STR.W           R2, [R10]
1757C2:  ADDS            R4, #5
1757C4:  B               loc_1757DC
1757C6:  MOV             R2, R0
1757C8:  LDRB            R0, [R2,R3]
1757CA:  SUBS            R1, #1
1757CC:  STRB            R0, [R2]
1757CE:  ADD.W           R2, R2, #1
1757D2:  BNE             loc_1757C8
1757D4:  MOV             R0, R10
1757D6:  STR.W           R2, [R10]
1757DA:  ADDS            R4, #6
1757DC:  MOV             R0, R2
1757DE:  B               loc_175742
