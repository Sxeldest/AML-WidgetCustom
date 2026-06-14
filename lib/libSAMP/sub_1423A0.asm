; =========================================================
; Game Engine Function: sub_1423A0
; Address            : 0x1423A0 - 0x142710
; =========================================================

1423A0:  PUSH            {R4-R7,LR}
1423A2:  ADD             R7, SP, #0xC
1423A4:  PUSH.W          {R8-R11}
1423A8:  SUB.W           SP, SP, #0x26C
1423AC:  LDR             R2, [R1,#0xC]; size
1423AE:  MOV             R8, R0
1423B0:  LDR             R1, [R1,#0x14]; src
1423B2:  ADD             R0, SP, #0x288+var_130; int
1423B4:  MOVS            R3, #1
1423B6:  BL              sub_17D4F2
1423BA:  MOVS            R1, #8
1423BC:  BL              sub_17DA96
1423C0:  ADD             R0, SP, #0x288+var_130
1423C2:  MOVS            R1, #0x20 ; ' '
1423C4:  BL              sub_17DA96
1423C8:  ADD             R0, SP, #0x288+var_130
1423CA:  MOVS            R1, #0x10
1423CC:  BL              sub_17DA96
1423D0:  ADD             R0, SP, #0x288+var_130; int
1423D2:  ADD.W           R1, SP, #0x288+var_132; int
1423D6:  MOVS            R2, #0x10
1423D8:  MOVS            R3, #1
1423DA:  BL              sub_17D786
1423DE:  ADD             R0, SP, #0x288+var_130; int
1423E0:  ADD             R1, SP, #0x288+var_138; int
1423E2:  MOVS            R2, #0x20 ; ' '
1423E4:  MOVS            R3, #1
1423E6:  BL              sub_17D786
1423EA:  LDR             R0, [SP,#0x288+var_138]
1423EC:  MOVS            R1, #6
1423EE:  STR.W           R1, [R8,#0x218]
1423F2:  MOVW            R1, #0xFD9
1423F6:  EORS            R0, R1
1423F8:  STR             R0, [SP,#0x288+var_138]
1423FA:  MOV             R0, R8
1423FC:  BL              sub_1436D4
142400:  MOVS            R0, #0x30 ; '0'; unsigned int
142402:  BLX             j__Znwj; operator new(uint)
142406:  LDR             R1, =(unk_B94E0 - 0x142416)
142408:  MOV             R4, R0
14240A:  MOVS            R0, #0x2B ; '+'
14240C:  MOVS            R2, #0x2B ; '+'; n
14240E:  STR             R0, [SP,#0x288+var_140]
142410:  MOVS            R0, #0x31 ; '1'
142412:  ADD             R1, PC; unk_B94E0 ; src
142414:  STR             R0, [SP,#0x288+var_144]
142416:  MOV             R0, R4; dest
142418:  STR             R4, [SP,#0x288+var_13C]
14241A:  BLX             j_memcpy
14241E:  MOVS            R0, #0
142420:  STRB.W          R0, [R4,#0x2B]
142424:  MOV             R0, R4
142426:  BL              sub_144BC2
14242A:  LDR.W           R0, [R8,#0x3B0]
14242E:  MOVW            R1, #0x13A2
142432:  LDR             R0, [R0]
142434:  ADD             R0, R1; char *
142436:  MOV.W           R1, #0xFFFFFFFF; size_t
14243A:  BLX             __strlen_chk
14243E:  LDRB.W          R1, [SP,#0x288+var_144]
142442:  MOV             R6, R0
142444:  LDR             R5, [SP,#0x288+var_140]
142446:  LDR             R0, =(aArizonaMobile - 0x142452); "arizona-mobile" ...
142448:  LSLS            R2, R1, #0x1F
14244A:  IT EQ
14244C:  LSREQ           R5, R1, #1
14244E:  ADD             R0, PC; "arizona-mobile"
142450:  MOVS            R1, #0xF; size_t
142452:  BLX             __strlen_chk
142456:  MOV             R9, R0
142458:  MOVS            R0, #0x20 ; ' '; unsigned int
14245A:  BLX             j__Znwj; operator new(uint)
14245E:  MOV             R4, R0
142460:  LDR             R0, =(unk_B9510 - 0x14246A)
142462:  MOVS            R1, #0xF
142464:  STR             R4, [SP,#0x288+var_148]
142466:  ADD             R0, PC; unk_B9510
142468:  VLD1.8          {D16-D17}, [R0],R1
14246C:  VLD1.8          {D18}, [R0]
142470:  MOV             R0, R4
142472:  VST1.8          {D16-D17}, [R0],R1
142476:  VST1.8          {D18}, [R0]
14247A:  MOVS            R0, #0
14247C:  STRB            R0, [R4,#0x17]
14247E:  MOVS            R0, #0x17
142480:  STR             R0, [SP,#0x288+var_14C]
142482:  MOVS            R0, #0x21 ; '!'
142484:  STR             R0, [SP,#0x288+var_150]
142486:  MOV             R0, R4
142488:  BL              sub_144BF2
14248C:  ADD             R0, SP, #0x288+var_264
14248E:  BL              sub_17D4A8
142492:  MOVW            R0, #0xFD9
142496:  STR             R0, [SP,#0x288+var_26C]
142498:  ADD             R0, SP, #0x288+var_264
14249A:  ADD             R1, SP, #0x288+var_26C
14249C:  MOVS            R2, #0x20 ; ' '
14249E:  MOVS            R3, #1
1424A0:  MOVS            R4, #1
1424A2:  BL              sub_17D628
1424A6:  STRB.W          R4, [SP,#0x288+var_26C]
1424AA:  ADD             R0, SP, #0x288+var_264
1424AC:  ADD             R1, SP, #0x288+var_26C
1424AE:  MOVS            R2, #8
1424B0:  MOVS            R3, #1
1424B2:  BL              sub_17D628
1424B6:  LDR             R0, =(off_234A24 - 0x1424BE)
1424B8:  LDR             R1, =(off_234930 - 0x1424C0)
1424BA:  ADD             R0, PC; off_234A24
1424BC:  ADD             R1, PC; off_234930
1424BE:  LDR.W           R11, [R0]; dword_23DEEC
1424C2:  LDR.W           R10, [R1]; dword_23DF1C
1424C6:  LDR.W           R0, [R10]
1424CA:  CMP             R0, #4
1424CC:  ITT EQ
1424CE:  LDREQ.W         R0, [R11]
1424D2:  CMPEQ           R0, #0
1424D4:  BEQ             loc_142522
1424D6:  STRB.W          R6, [SP,#0x288+var_26C]
1424DA:  ADD             R0, SP, #0x288+var_264
1424DC:  ADD             R1, SP, #0x288+var_26C
1424DE:  MOVS            R2, #8
1424E0:  MOVS            R3, #1
1424E2:  BL              sub_17D628
1424E6:  LDR.W           R0, [R8,#0x3B0]
1424EA:  MOVW            R1, #0x13A2
1424EE:  LDR             R0, [R0]
1424F0:  ADD             R1, R0
1424F2:  ADD             R0, SP, #0x288+var_264
1424F4:  UXTB            R2, R6
1424F6:  BL              sub_17D566
1424FA:  LDR.W           R0, [R10]
1424FE:  CMP             R0, #4
142500:  ITT NE
142502:  LDRNE.W         R0, [R11]
142506:  CMPNE           R0, #0
142508:  BEQ             loc_14256E
14250A:  LDR             R4, [R0,#0x60]
14250C:  LDR             R1, =(unk_891C7 - 0x142512)
14250E:  ADD             R1, PC; unk_891C7 ; s
142510:  ADD             R0, SP, #0x288+var_26C; int
142512:  MOVS            R2, #0x35 ; '5'
142514:  BL              sub_F1E90
142518:  LDR             R1, [SP,#0x288+var_26C]
14251A:  MOV             R0, R4
14251C:  BL              sub_12D5E8
142520:  B               loc_14256E
142522:  STRB.W          R6, [SP,#0x288+var_26C]
142526:  ADD             R0, SP, #0x288+var_264
142528:  ADD             R1, SP, #0x288+var_26C
14252A:  MOVS            R2, #8
14252C:  MOVS            R3, #1
14252E:  BL              sub_17D628
142532:  LDR.W           R0, [R8,#0x3B0]
142536:  MOVW            R1, #0x13A2
14253A:  LDR             R0, [R0]
14253C:  ADD             R1, R0
14253E:  ADD             R0, SP, #0x288+var_264
142540:  UXTB            R2, R6
142542:  BL              sub_17D566
142546:  STRB.W          R9, [SP,#0x288+var_26C]
14254A:  ADD             R0, SP, #0x288+var_264
14254C:  ADD             R1, SP, #0x288+var_26C
14254E:  MOVS            R2, #8
142550:  MOVS            R3, #1
142552:  BL              sub_17D628
142556:  LDRB.W          R0, [SP,#0x288+var_150]
14255A:  ADD             R2, SP, #0x288+var_150
14255C:  LDR             R1, [SP,#0x288+var_148]
14255E:  LSLS            R0, R0, #0x1F
142560:  IT EQ
142562:  ADDEQ           R1, R2, #1
142564:  ADD             R0, SP, #0x288+var_264
142566:  UXTB.W          R2, R9
14256A:  BL              sub_17D566
14256E:  LDR             R0, [SP,#0x288+var_138]
142570:  STR             R0, [SP,#0x288+var_26C]
142572:  ADD             R0, SP, #0x288+var_264
142574:  ADD             R1, SP, #0x288+var_26C
142576:  MOVS            R2, #0x20 ; ' '
142578:  MOVS            R3, #1
14257A:  BL              sub_17D628
14257E:  STRB.W          R5, [SP,#0x288+var_26C]
142582:  ADD             R0, SP, #0x288+var_264
142584:  ADD             R1, SP, #0x288+var_26C
142586:  MOVS            R2, #8
142588:  MOVS            R3, #1
14258A:  BL              sub_17D628
14258E:  LDRB.W          R0, [SP,#0x288+var_144]
142592:  ADD             R2, SP, #0x288+var_144
142594:  LDR             R1, [SP,#0x288+var_13C]
142596:  LSLS            R0, R0, #0x1F
142598:  IT EQ
14259A:  ADDEQ           R1, R2, #1
14259C:  ADD             R0, SP, #0x288+var_264
14259E:  UXTB            R2, R5
1425A0:  BL              sub_17D566
1425A4:  LDR.W           R0, [R10]
1425A8:  CMP             R0, #4
1425AA:  BNE             loc_14261C
1425AC:  LDRB.W          R1, [SP,#0x288+var_150]
1425B0:  ADD             R2, SP, #0x288+var_150
1425B2:  ADDS            R5, R2, #1
1425B4:  LDR             R0, [SP,#0x288+var_148]
1425B6:  LSLS            R1, R1, #0x1F
1425B8:  IT EQ
1425BA:  MOVEQ           R0, R5; char *
1425BC:  MOV.W           R1, #0xFFFFFFFF; size_t
1425C0:  BLX             __strlen_chk
1425C4:  MOV             R4, R0
1425C6:  STRB.W          R0, [SP,#0x288+var_26C]
1425CA:  ADD             R0, SP, #0x288+var_264
1425CC:  ADD             R1, SP, #0x288+var_26C
1425CE:  MOVS            R2, #8
1425D0:  MOVS            R3, #1
1425D2:  BL              sub_17D628
1425D6:  LDRB.W          R0, [SP,#0x288+var_150]
1425DA:  LDR             R1, [SP,#0x288+var_148]
1425DC:  LSLS            R0, R0, #0x1F
1425DE:  IT EQ
1425E0:  MOVEQ           R1, R5
1425E2:  ADD             R0, SP, #0x288+var_264
1425E4:  UXTB            R2, R4
1425E6:  BL              sub_17D566
1425EA:  LDR.W           R0, [R11]
1425EE:  CBZ             R0, loc_14263A
1425F0:  LDR             R0, [SP,#0x288+var_138]
1425F2:  STR             R0, [SP,#0x288+var_26C]
1425F4:  ADD             R0, SP, #0x288+var_264
1425F6:  ADD             R1, SP, #0x288+var_26C
1425F8:  MOVS            R2, #0x20 ; ' '
1425FA:  MOVS            R3, #1
1425FC:  BL              sub_17D628
142600:  LDR.W           R0, [R11]
142604:  LDR             R4, [R0,#0x60]
142606:  LDR             R1, =(unk_891C7 - 0x14260C)
142608:  ADD             R1, PC; unk_891C7 ; s
14260A:  ADD             R0, SP, #0x288+var_26C; int
14260C:  MOVS            R2, #0x35 ; '5'
14260E:  BL              sub_F1E90
142612:  LDR             R1, [SP,#0x288+var_26C]
142614:  MOV             R0, R4
142616:  BL              sub_12D5E8
14261A:  B               loc_14263A
14261C:  STRB.W          R9, [SP,#0x288+var_26C]
142620:  ADD             R0, SP, #0x288+var_264
142622:  ADD             R1, SP, #0x288+var_26C
142624:  MOVS            R2, #8
142626:  MOVS            R3, #1
142628:  BL              sub_17D628
14262C:  LDR             R1, =(aArizonaMobile - 0x142632); "arizona-mobile" ...
14262E:  ADD             R1, PC; "arizona-mobile"
142630:  ADD             R0, SP, #0x288+var_264
142632:  UXTB.W          R2, R9
142636:  BL              sub_17D566
14263A:  LDR.W           R0, [R10]
14263E:  CMP             R0, #4
142640:  BNE             loc_14266C
142642:  LDR             R0, =(aArizonaMobile - 0x142648); "arizona-mobile" ...
142644:  ADD             R0, PC; "arizona-mobile"
142646:  MOVS            R1, #0xF; size_t
142648:  BLX             __strlen_chk
14264C:  MOV             R4, R0
14264E:  STRB.W          R0, [SP,#0x288+var_26C]
142652:  ADD             R0, SP, #0x288+var_264
142654:  ADD             R1, SP, #0x288+var_26C
142656:  MOVS            R2, #8
142658:  MOVS            R3, #1
14265A:  BL              sub_17D628
14265E:  LDR             R1, =(aArizonaMobile - 0x142664); "arizona-mobile" ...
142660:  ADD             R1, PC; "arizona-mobile"
142662:  ADD             R0, SP, #0x288+var_264
142664:  UXTB            R2, R4
142666:  BL              sub_17D566
14266A:  B               loc_1426AA
14266C:  LDRB.W          R1, [SP,#0x288+var_150]
142670:  ADD             R2, SP, #0x288+var_150
142672:  ADDS            R5, R2, #1
142674:  LDR             R0, [SP,#0x288+var_148]
142676:  LSLS            R1, R1, #0x1F
142678:  IT EQ
14267A:  MOVEQ           R0, R5; char *
14267C:  MOV.W           R1, #0xFFFFFFFF; size_t
142680:  BLX             __strlen_chk
142684:  MOV             R4, R0
142686:  STRB.W          R0, [SP,#0x288+var_26C]
14268A:  ADD             R0, SP, #0x288+var_264
14268C:  ADD             R1, SP, #0x288+var_26C
14268E:  MOVS            R2, #8
142690:  MOVS            R3, #1
142692:  BL              sub_17D628
142696:  LDRB.W          R0, [SP,#0x288+var_150]
14269A:  LDR             R1, [SP,#0x288+var_148]
14269C:  LSLS            R0, R0, #0x1F
14269E:  IT EQ
1426A0:  MOVEQ           R1, R5
1426A2:  ADD             R0, SP, #0x288+var_264
1426A4:  UXTB            R2, R4
1426A6:  BL              sub_17D566
1426AA:  LDR.W           R0, [R8,#0x210]
1426AE:  MOVS            R3, #0
1426B0:  LDR             R1, =(off_234C54 - 0x1426B6)
1426B2:  ADD             R1, PC; off_234C54
1426B4:  LDR             R2, [R0]
1426B6:  LDR             R1, [R1]; unk_23C73C
1426B8:  LDR             R6, [R2,#0x6C]
1426BA:  MOV.W           R12, #0xFFFFFFFF
1426BE:  MOVS            R4, #8
1426C0:  ADD             R2, SP, #0x288+var_264
1426C2:  MOVW            R5, #0xFFFF
1426C6:  STRD.W          R4, R3, [SP,#0x288+var_288]
1426CA:  STRD.W          R3, R12, [SP,#0x288+var_280]
1426CE:  STR             R3, [SP,#0x288+var_270]
1426D0:  MOVS            R3, #1
1426D2:  STRD.W          R5, R5, [SP,#0x288+var_278]
1426D6:  BLX             R6
1426D8:  MOVS            R0, #6
1426DA:  BL              sub_ED150
1426DE:  ADD             R0, SP, #0x288+var_264
1426E0:  BL              sub_17D542
1426E4:  LDRB.W          R0, [SP,#0x288+var_150]
1426E8:  LSLS            R0, R0, #0x1F
1426EA:  ITT NE
1426EC:  LDRNE           R0, [SP,#0x288+var_148]; void *
1426EE:  BLXNE           j__ZdlPv; operator delete(void *)
1426F2:  LDRB.W          R0, [SP,#0x288+var_144]
1426F6:  LSLS            R0, R0, #0x1F
1426F8:  ITT NE
1426FA:  LDRNE           R0, [SP,#0x288+var_13C]; void *
1426FC:  BLXNE           j__ZdlPv; operator delete(void *)
142700:  ADD             R0, SP, #0x288+var_130
142702:  BL              sub_17D542
142706:  ADD.W           SP, SP, #0x26C
14270A:  POP.W           {R8-R11}
14270E:  POP             {R4-R7,PC}
