; =========================================================
; Game Engine Function: gzread
; Address            : 0x20C4A8 - 0x20C8B4
; =========================================================

20C4A8:  PUSH            {R4-R7,LR}
20C4AA:  ADD             R7, SP, #0xC
20C4AC:  PUSH.W          {R8-R11}
20C4B0:  SUB             SP, SP, #4
20C4B2:  MOV             R4, R0
20C4B4:  MOV             R5, R2
20C4B6:  MOV             R9, R1
20C4B8:  CBZ             R4, loc_20C4DA
20C4BA:  LDRB.W          R0, [R4,#0x5C]
20C4BE:  CMP             R0, #0x72 ; 'r'
20C4C0:  BNE             loc_20C4DA
20C4C2:  LDR             R1, [R4,#0x38]
20C4C4:  ADDS            R0, R1, #3
20C4C6:  MOV.W           R0, #0xFFFFFFFF
20C4CA:  IT NE
20C4CC:  ADDSNE.W        R2, R1, #1
20C4D0:  BEQ             loc_20C4DE
20C4D2:  CMP             R1, #1
20C4D4:  BNE             loc_20C4E6
20C4D6:  MOVS            R0, #0
20C4D8:  B               loc_20C4DE
20C4DA:  MOV             R0, #0xFFFFFFFE
20C4DE:  ADD             SP, SP, #4
20C4E0:  POP.W           {R8-R11}
20C4E4:  POP             {R4-R7,PC}
20C4E6:  CMP             R5, #0
20C4E8:  STRD.W          R9, R5, [R4,#0xC]
20C4EC:  BEQ.W           loc_20C832
20C4F0:  MOV             R11, #0xFFFFFFFD
20C4F4:  MOV             R8, R9
20C4F6:  MOV             R2, R5
20C4F8:  B               loc_20C666
20C4FA:  LDR             R2, [R4,#0x10]
20C4FC:  CMP             R2, #0
20C4FE:  BNE.W           loc_20C666
20C502:  B               loc_20C834
20C504:  LDR             R0, [R4,#4]
20C506:  CBZ             R0, loc_20C532
20C508:  LDR             R1, [R4]
20C50A:  SUBS            R0, #1
20C50C:  ADDS            R1, #1
20C50E:  STRD.W          R1, R0, [R4]
20C512:  CBZ             R0, loc_20C564
20C514:  LDR             R1, [R4]
20C516:  SUBS            R0, #1
20C518:  ADDS            R1, #1
20C51A:  STRD.W          R1, R0, [R4]
20C51E:  CBZ             R0, loc_20C596
20C520:  LDR             R1, [R4]
20C522:  SUBS            R0, #1
20C524:  ADDS            R1, #1
20C526:  STRD.W          R1, R0, [R4]
20C52A:  CMP             R0, #0
20C52C:  BEQ             loc_20C5C8
20C52E:  LDR             R1, [R4]
20C530:  B               loc_20C5E8
20C532:  BLX             __errno
20C536:  MOVS            R1, #0
20C538:  MOV.W           R2, #0x4000; n
20C53C:  STR             R1, [R0]
20C53E:  MOVS            R1, #1; size
20C540:  LDRD.W          R3, R0, [R4,#0x40]; stream
20C544:  BLX             fread
20C548:  CMP             R0, #0
20C54A:  STR             R0, [R4,#4]
20C54C:  BEQ             loc_20C5F2
20C54E:  LDR             R1, [R4,#0x3C]
20C550:  SUBS            R0, #1
20C552:  LDR             R2, [R4,#0x44]
20C554:  CMP             R1, #0
20C556:  ADD.W           R2, R2, #1
20C55A:  STRD.W          R2, R0, [R4]
20C55E:  BNE.W           loc_20C7F4
20C562:  B               loc_20C512
20C564:  BLX             __errno
20C568:  MOVS            R1, #0
20C56A:  MOV.W           R2, #0x4000; n
20C56E:  STR             R1, [R0]
20C570:  MOVS            R1, #1; size
20C572:  LDRD.W          R3, R0, [R4,#0x40]; stream
20C576:  BLX             fread
20C57A:  CMP             R0, #0
20C57C:  STR             R0, [R4,#4]
20C57E:  BEQ             loc_20C5F2
20C580:  LDR             R1, [R4,#0x3C]
20C582:  SUBS            R0, #1
20C584:  LDR             R2, [R4,#0x44]
20C586:  CMP             R1, #0
20C588:  ADD.W           R2, R2, #1
20C58C:  STRD.W          R2, R0, [R4]
20C590:  BNE.W           loc_20C7F4
20C594:  B               loc_20C51E
20C596:  BLX             __errno
20C59A:  MOVS            R1, #0
20C59C:  MOV.W           R2, #0x4000; n
20C5A0:  STR             R1, [R0]
20C5A2:  MOVS            R1, #1; size
20C5A4:  LDRD.W          R3, R0, [R4,#0x40]; stream
20C5A8:  BLX             fread
20C5AC:  CMP             R0, #0
20C5AE:  STR             R0, [R4,#4]
20C5B0:  BEQ             loc_20C5F2
20C5B2:  LDR             R1, [R4,#0x3C]
20C5B4:  SUBS            R0, #1
20C5B6:  LDR             R2, [R4,#0x44]
20C5B8:  CMP             R1, #0
20C5BA:  ADD.W           R2, R2, #1
20C5BE:  STRD.W          R2, R0, [R4]
20C5C2:  BNE.W           loc_20C7F4
20C5C6:  B               loc_20C52A
20C5C8:  BLX             __errno
20C5CC:  MOVS            R1, #0
20C5CE:  MOV.W           R2, #0x4000; n
20C5D2:  STR             R1, [R0]
20C5D4:  MOVS            R1, #1; size
20C5D6:  LDRD.W          R3, R0, [R4,#0x40]; stream
20C5DA:  BLX             fread
20C5DE:  CMP             R0, #0
20C5E0:  STR             R0, [R4,#4]
20C5E2:  BEQ             loc_20C5F2
20C5E4:  LDR             R1, [R4,#0x44]
20C5E6:  STR             R1, [R4]
20C5E8:  SUBS            R0, #1
20C5EA:  ADDS            R1, #1
20C5EC:  STRD.W          R1, R0, [R4]
20C5F0:  B               loc_20C7F8
20C5F2:  LDR             R0, [R4,#0x40]; stream
20C5F4:  MOVS            R1, #1
20C5F6:  STR             R1, [R4,#0x3C]
20C5F8:  BLX             ferror
20C5FC:  CMP             R0, #0
20C5FE:  ITT NE
20C600:  MOVNE.W         R0, #0xFFFFFFFF
20C604:  STRNE           R0, [R4,#0x38]
20C606:  B               loc_20C7F4
20C608:  CBZ             R0, loc_20C624
20C60A:  LDR             R1, [R4]
20C60C:  B               loc_20C644
20C60E:  LDR             R0, [R4,#0x40]; stream
20C610:  MOVS            R1, #1
20C612:  STR             R1, [R4,#0x3C]
20C614:  BLX             ferror
20C618:  CMP             R0, #0
20C61A:  ITT NE
20C61C:  MOVNE.W         R0, #0xFFFFFFFF
20C620:  STRNE           R0, [R4,#0x38]
20C622:  B               loc_20C776
20C624:  BLX             __errno
20C628:  MOVS            R1, #0
20C62A:  MOV.W           R2, #0x4000; n
20C62E:  STR             R1, [R0]
20C630:  MOVS            R1, #1; size
20C632:  LDRD.W          R3, R0, [R4,#0x40]; stream
20C636:  BLX             fread
20C63A:  CMP             R0, #0
20C63C:  STR             R0, [R4,#4]
20C63E:  BEQ             loc_20C650
20C640:  LDR             R1, [R4,#0x44]
20C642:  STR             R1, [R4]
20C644:  SUBS            R0, #1
20C646:  ADDS            R2, R1, #1
20C648:  STRD.W          R2, R0, [R4]
20C64C:  LDRB            R0, [R1]
20C64E:  B               loc_20C7E2
20C650:  LDR             R0, [R4,#0x40]; stream
20C652:  MOVS            R1, #1
20C654:  STR             R1, [R4,#0x3C]
20C656:  BLX             ferror
20C65A:  CMP             R0, #0
20C65C:  ITT NE
20C65E:  MOVNE.W         R0, #0xFFFFFFFF
20C662:  STRNE           R0, [R4,#0x38]
20C664:  B               loc_20C7DA
20C666:  LDR             R0, [R4,#0x58]
20C668:  LDR             R6, [R4,#4]
20C66A:  CMP             R0, #0
20C66C:  BNE.W           loc_20C84A
20C670:  CMP             R6, #0
20C672:  ITT EQ
20C674:  LDREQ           R0, [R4,#0x3C]
20C676:  CMPEQ           R0, #0
20C678:  BEQ             loc_20C6B8
20C67A:  MOV             R0, R4
20C67C:  MOVS            R1, #0
20C67E:  BLX             j_inflate
20C682:  CMP             R0, #1
20C684:  STR             R0, [R4,#0x38]
20C686:  BNE.W           loc_20C824
20C68A:  LDR             R1, [R4,#0xC]
20C68C:  LDR             R0, [R4,#0x4C]
20C68E:  SUB.W           R2, R1, R8
20C692:  MOV             R1, R8
20C694:  BLX             j_crc32
20C698:  LDR             R1, [R4,#0x3C]
20C69A:  LDR.W           R8, [R4,#0xC]
20C69E:  CMP             R1, #0
20C6A0:  STR             R0, [R4,#0x4C]
20C6A2:  BEQ             loc_20C6AE
20C6A4:  MOV             R6, #0xFFFEFEFF
20C6AC:  B               loc_20C7DA
20C6AE:  LDR             R0, [R4,#4]
20C6B0:  CBZ             R0, loc_20C6EA
20C6B2:  LDR             R2, [R4]
20C6B4:  MOVS            R1, #0
20C6B6:  B               loc_20C70C
20C6B8:  BLX             __errno
20C6BC:  MOVS            R1, #0
20C6BE:  MOV.W           R2, #0x4000; n
20C6C2:  STR             R1, [R0]
20C6C4:  MOVS            R1, #1; size
20C6C6:  LDRD.W          R3, R0, [R4,#0x40]; stream
20C6CA:  BLX             fread
20C6CE:  CMP             R0, #0
20C6D0:  STR             R0, [R4,#4]
20C6D2:  BNE             loc_20C6E4
20C6D4:  LDR             R0, [R4,#0x40]; stream
20C6D6:  MOVS            R1, #1
20C6D8:  STR             R1, [R4,#0x3C]
20C6DA:  BLX             ferror
20C6DE:  CMP             R0, #0
20C6E0:  BNE.W           loc_20C8AC
20C6E4:  LDR             R0, [R4,#0x44]
20C6E6:  STR             R0, [R4]
20C6E8:  B               loc_20C67A
20C6EA:  BLX             __errno
20C6EE:  MOVS            R1, #0
20C6F0:  MOV.W           R2, #0x4000; n
20C6F4:  STR             R1, [R0]
20C6F6:  MOVS            R1, #1; size
20C6F8:  LDRD.W          R3, R0, [R4,#0x40]; stream
20C6FC:  BLX             fread
20C700:  CMP             R0, #0
20C702:  STR             R0, [R4,#4]
20C704:  BEQ             loc_20C72C
20C706:  LDR             R1, [R4,#0x3C]
20C708:  LDR             R2, [R4,#0x44]
20C70A:  STR             R2, [R4]
20C70C:  SUBS            R0, #1
20C70E:  ADDS            R3, R2, #1
20C710:  CMP             R1, #0
20C712:  STRD.W          R3, R0, [R4]
20C716:  LDRB            R6, [R2]
20C718:  BEQ             loc_20C724
20C71A:  SUB.W           R6, R6, #0x100
20C71E:  SUB.W           R6, R6, #0x10000
20C722:  B               loc_20C7DA
20C724:  CBZ             R0, loc_20C742
20C726:  LDR             R2, [R4]
20C728:  MOVS            R1, #0
20C72A:  B               loc_20C764
20C72C:  LDR             R0, [R4,#0x40]; stream
20C72E:  MOVS            R1, #1
20C730:  STR             R1, [R4,#0x3C]
20C732:  BLX             ferror
20C736:  CMP             R0, #0
20C738:  BEQ             loc_20C6A4
20C73A:  MOV.W           R6, #0xFFFFFFFF
20C73E:  STR             R6, [R4,#0x38]
20C740:  B               loc_20C71A
20C742:  BLX             __errno
20C746:  MOVS            R1, #0
20C748:  MOV.W           R2, #0x4000; n
20C74C:  STR             R1, [R0]
20C74E:  MOVS            R1, #1; size
20C750:  LDRD.W          R3, R0, [R4,#0x40]; stream
20C754:  BLX             fread
20C758:  CMP             R0, #0
20C75A:  STR             R0, [R4,#4]
20C75C:  BEQ             loc_20C784
20C75E:  LDR             R1, [R4,#0x3C]
20C760:  LDR             R2, [R4,#0x44]
20C762:  STR             R2, [R4]
20C764:  SUBS            R0, #1
20C766:  ADDS            R3, R2, #1
20C768:  CMP             R1, #0
20C76A:  STRD.W          R3, R0, [R4]
20C76E:  LDRB            R2, [R2]
20C770:  ORR.W           R6, R6, R2,LSL#8
20C774:  BEQ             loc_20C77C
20C776:  SUB.W           R6, R6, #0x10000
20C77A:  B               loc_20C7DA
20C77C:  CBZ             R0, loc_20C7A2
20C77E:  LDR             R2, [R4]
20C780:  MOVS            R1, #0
20C782:  B               loc_20C7C6
20C784:  LDR             R0, [R4,#0x40]; stream
20C786:  MOVS            R1, #1
20C788:  STR             R1, [R4,#0x3C]
20C78A:  BLX             ferror
20C78E:  CMP             R0, #0
20C790:  BEQ             loc_20C71A
20C792:  ORN.W           R6, R6, #0xFF
20C796:  MOV.W           R0, #0xFFFFFFFF
20C79A:  STR             R0, [R4,#0x38]
20C79C:  SUB.W           R6, R6, #0x10000
20C7A0:  B               loc_20C7DA
20C7A2:  BLX             __errno
20C7A6:  MOVS            R1, #0
20C7A8:  MOV.W           R2, #0x4000; n
20C7AC:  STR             R1, [R0]
20C7AE:  MOVS            R1, #1; size
20C7B0:  LDRD.W          R3, R0, [R4,#0x40]; stream
20C7B4:  BLX             fread
20C7B8:  CMP             R0, #0
20C7BA:  STR             R0, [R4,#4]
20C7BC:  BEQ.W           loc_20C60E
20C7C0:  LDR             R1, [R4,#0x3C]
20C7C2:  LDR             R2, [R4,#0x44]
20C7C4:  STR             R2, [R4]
20C7C6:  SUBS            R0, #1
20C7C8:  ADDS            R3, R2, #1
20C7CA:  CMP             R1, #0
20C7CC:  STRD.W          R3, R0, [R4]
20C7D0:  LDRB            R2, [R2]
20C7D2:  ORR.W           R6, R6, R2,LSL#16
20C7D6:  BEQ.W           loc_20C608
20C7DA:  STR.W           R11, [R4,#0x38]
20C7DE:  MOV.W           R0, #0xFFFFFFFF
20C7E2:  LDR             R1, [R4,#0x4C]
20C7E4:  ADD.W           R0, R6, R0,LSL#24
20C7E8:  CMP             R0, R1
20C7EA:  BNE             loc_20C886
20C7EC:  LDR             R0, [R4,#0x3C]
20C7EE:  CMP             R0, #0
20C7F0:  BEQ.W           loc_20C504
20C7F4:  STR.W           R11, [R4,#0x38]
20C7F8:  MOV             R0, R4
20C7FA:  BL              sub_20C8B4
20C7FE:  LDR             R0, [R4,#0x38]
20C800:  CBNZ            R0, loc_20C834
20C802:  MOV             R0, R4
20C804:  LDR             R6, [R4,#8]
20C806:  LDR.W           R10, [R4,#0x14]
20C80A:  BLX             j_inflateReset
20C80E:  MOVS            R0, #0
20C810:  MOVS            R1, #0
20C812:  MOVS            R2, #0
20C814:  STR             R6, [R4,#8]
20C816:  STR.W           R10, [R4,#0x14]
20C81A:  BLX             j_crc32
20C81E:  MOV             R1, R0
20C820:  LDR             R0, [R4,#0x38]
20C822:  STR             R1, [R4,#0x4C]
20C824:  CMP             R0, #0
20C826:  ITT EQ
20C828:  LDREQ           R0, [R4,#0x3C]
20C82A:  CMPEQ           R0, #0
20C82C:  BEQ.W           loc_20C4FA
20C830:  B               loc_20C834
20C832:  MOV             R8, R9
20C834:  LDR             R1, [R4,#0xC]
20C836:  LDR             R0, [R4,#0x4C]
20C838:  SUB.W           R2, R1, R8
20C83C:  MOV             R1, R8
20C83E:  BLX             j_crc32
20C842:  LDR             R1, [R4,#0x10]
20C844:  STR             R0, [R4,#0x4C]
20C846:  SUBS            R0, R5, R1
20C848:  B               loc_20C4DE
20C84A:  CMP             R6, R2
20C84C:  IT HI
20C84E:  MOVHI           R6, R2
20C850:  CBZ             R6, loc_20C874
20C852:  LDR             R1, [R4]; void *
20C854:  MOV             R2, R6; size_t
20C856:  LDR             R0, [R4,#0xC]; void *
20C858:  BLX             memcpy_1
20C85C:  LDRD.W          R0, R1, [R4]
20C860:  ADD             R9, R6
20C862:  LDR             R2, [R4,#0x10]
20C864:  SUBS            R1, R1, R6
20C866:  ADD             R0, R6
20C868:  SUBS            R2, R2, R6; n
20C86A:  STRD.W          R9, R2, [R4,#0xC]
20C86E:  STRD.W          R0, R1, [R4]
20C872:  BEQ             loc_20C88E
20C874:  LDR             R3, [R4,#0x40]; stream
20C876:  MOV             R0, R9; ptr
20C878:  MOVS            R1, #1; size
20C87A:  BLX             fread
20C87E:  LDR             R1, [R4,#0x10]
20C880:  SUBS            R0, R1, R0
20C882:  STR             R0, [R4,#0x10]
20C884:  B               loc_20C890
20C886:  MOV             R0, #0xFFFFFFFD
20C88A:  STR             R0, [R4,#0x38]
20C88C:  B               loc_20C834
20C88E:  MOVS            R0, #0
20C890:  LDR             R1, [R4,#8]
20C892:  SUBS            R0, R5, R0
20C894:  LDR             R2, [R4,#0x14]
20C896:  ADD             R1, R0
20C898:  STR             R1, [R4,#8]
20C89A:  ADD.W           R1, R2, R0
20C89E:  STR             R1, [R4,#0x14]
20C8A0:  BNE.W           loc_20C4DE
20C8A4:  MOVS            R0, #1
20C8A6:  STR             R0, [R4,#0x3C]
20C8A8:  MOVS            R0, #0
20C8AA:  B               loc_20C4DE
20C8AC:  MOV.W           R0, #0xFFFFFFFF
20C8B0:  STR             R0, [R4,#0x38]
20C8B2:  B               loc_20C834
