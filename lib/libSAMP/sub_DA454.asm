; =========================================================
; Game Engine Function: sub_DA454
; Address            : 0xDA454 - 0xDC6D6
; =========================================================

DA454:  PUSH            {R4-R7,LR}
DA456:  ADD             R7, SP, #0xC
DA458:  PUSH.W          {R8-R11}
DA45C:  SUB             SP, SP, #0x54
DA45E:  STR             R3, [SP,#0x70+var_5C]
DA460:  CMP             R1, #1
DA462:  STR             R2, [SP,#0x70+var_54]
DA464:  STR             R0, [SP,#0x70+var_64]
DA466:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xDA46E)
DA46A:  ADD             R0, PC; __stack_chk_guard_ptr
DA46C:  LDR             R0, [R0]; __stack_chk_guard
DA46E:  LDR             R0, [R0]
DA470:  STR             R0, [SP,#0x70+var_20]
DA472:  STR             R1, [SP,#0x70+var_58]
DA474:  MOV.W           R1, #0
DA478:  BLT.W           loc_DA814
DA47C:  LDR             R0, [SP,#0x70+var_64]
DA47E:  MOVS            R1, #0
DA480:  LDR.W           R8, [SP,#0x70+var_58]
DA484:  MOVS            R2, #0
DA486:  LDRB.W          R6, [R0],#1
DA48A:  SUBS.W          R8, R8, #1
DA48E:  STRD.W          R1, R2, [SP,#0x70+var_50]
DA492:  EOR.W           R2, R6, #0x7D ; '}'
DA496:  STR             R0, [SP,#0x70+var_48]
DA498:  AND.W           R2, R2, R6
DA49C:  MOV.W           R0, #0x68 ; 'h'
DA4A0:  BIC.W           R5, R0, R2
DA4A4:  BIC.W           R1, R2, #0x68 ; 'h'
DA4A8:  ORN.W           R4, R6, #0x7D ; '}'
DA4AC:  ADD             R1, R5
DA4AE:  MOV.W           R0, #0x15
DA4B2:  BIC.W           R5, R0, R6
DA4B6:  AND.W           R3, R4, #0x68 ; 'h'
DA4BA:  ORN.W           R2, R4, R2
DA4BE:  ADD             R3, R5
DA4C0:  MOV.W           R0, #0x5D ; ']'
DA4C4:  EOR.W           R1, R1, R3
DA4C8:  BIC.W           R5, R6, #0x55 ; 'U'
DA4CC:  ORN.W           R1, R1, R2
DA4D0:  BIC.W           R2, R0, R1
DA4D4:  BIC.W           R1, R1, #0x5D ; ']'
DA4D8:  ADD             R1, R2
DA4DA:  MOV             R0, #0xFFFFFFD7
DA4DE:  EOR.W           R2, R1, #0x20 ; ' '
DA4E2:  EOR.W           R1, R1, R0
DA4E6:  AND.W           R2, R2, #0x33 ; '3'
DA4EA:  BIC.W           R3, R1, #0x33 ; '3'
DA4EE:  ADD             R2, R3
DA4F0:  MOV.W           R0, #0x55 ; 'U'
DA4F4:  BIC.W           R3, R0, R6
DA4F8:  MOV.W           R0, #0x79 ; 'y'
DA4FC:  ADD             R3, R5
DA4FE:  MVN.W           R3, R3
DA502:  ORN.W           R3, R3, R6
DA506:  MOV.W           R5, R3,LSR#2
DA50A:  MVN.W           R3, R3
DA50E:  BFI.W           R3, R5, #2, #4
DA512:  EOR.W           R5, R3, #3
DA516:  EOR.W           R3, R3, #0xC
DA51A:  AND.W           R5, R5, #0x33 ; '3'
DA51E:  BIC.W           R3, R3, #0x33 ; '3'
DA522:  ADD             R3, R5
DA524:  EOR.W           R2, R2, R3
DA528:  MOV.W           R3, #0x11
DA52C:  ORN.W           LR, R1, R2
DA530:  BIC.W           R1, R0, LR
DA534:  BIC.W           R2, LR, #0x79 ; 'y'
DA538:  ADD             R1, R2
DA53A:  MOV             R0, #0xFFFFFF86
DA53E:  EOR.W           R9, R1, R0
DA542:  EOR.W           R10, R1, #0x79 ; 'y'
DA546:  MOV             R0, #0xFFFFFFB6
DA54A:  MOV.W           R1, R10,LSR#3
DA54E:  MOV             R5, R9
DA550:  BFI.W           R5, R1, #3, #2
DA554:  EOR.W           R1, R5, R0
DA558:  EOR.W           R12, R5, #0x18
DA55C:  AND.W           R1, R1, R12
DA560:  MOV.W           R4, R1,LSR#6
DA564:  MVN.W           R0, R1
DA568:  BFI.W           R0, R4, #6, #1
DA56C:  ORR.W           R4, R9, #0x51 ; 'Q'
DA570:  BIC.W           R2, R4, #0x40 ; '@'
DA574:  ORN.W           R1, R4, R1
DA578:  EOR.W           R0, R0, R2
DA57C:  MOV.W           R2, #0x6A ; 'j'
DA580:  ORN.W           R0, R0, R1
DA584:  EOR.W           R1, R6, #0x51 ; 'Q'
DA588:  AND.W           R1, R1, R6
DA58C:  BIC.W           R2, R2, R1
DA590:  BIC.W           R4, R1, #0x6A ; 'j'
DA594:  ADD             R2, R4
DA596:  BIC.W           R4, R3, R6
DA59A:  ORN.W           R3, R6, #0x51 ; 'Q'
DA59E:  AND.W           R11, R3, #0x6A ; 'j'
DA5A2:  ORN.W           R1, R3, R1
DA5A6:  ADD             R4, R11
DA5A8:  EOR.W           R2, R2, R4
DA5AC:  MOV.W           R4, #0x61 ; 'a'
DA5B0:  ORN.W           R1, R2, R1
DA5B4:  BIC.W           R2, R1, R0
DA5B8:  BIC.W           R0, R0, R1
DA5BC:  ADD             R0, R2
DA5BE:  MOV             R2, #0xFFFFFFE7
DA5C2:  EOR.W           R2, R2, R5
DA5C6:  AND.W           R1, R12, #0x2C ; ','
DA5CA:  BIC.W           R3, R2, #0x2C ; ','
DA5CE:  BIC.W           R5, R6, #0x2C ; ','
DA5D2:  ADD             R1, R3
DA5D4:  MOV.W           R3, #0x2C ; ','
DA5D8:  BIC.W           R3, R3, R6
DA5DC:  ORR.W           R2, R2, R6
DA5E0:  ADD             R3, R5
DA5E2:  MOV             R5, #0xFFFFFFCA
DA5E6:  EOR.W           R1, R1, R3
DA5EA:  ORN.W           R1, R1, R2
DA5EE:  MVN.W           R2, R1
DA5F2:  EOR.W           R2, R2, R0
DA5F6:  BIC.W           R0, R0, R1
DA5FA:  ORR.W           R0, R0, R2
DA5FE:  MVN.W           R1, R0
DA602:  MOV             R2, R0
DA604:  MOV.W           R1, R1,LSR#3
DA608:  BFI.W           R2, R1, #3, #4
DA60C:  EOR.W           R1, R2, #0x70 ; 'p'
DA610:  ORN.W           R0, R1, R0
DA614:  MOV             R1, #0xFFFFFFF7
DA618:  EOR.W           R1, R1, R0
DA61C:  BIC.W           R1, R1, R0
DA620:  AND.W           R0, R0, #8
DA624:  EOR.W           R2, R0, R1
DA628:  AND.W           R0, R0, R1
DA62C:  ORR.W           R0, R0, R2
DA630:  MOV             R1, #0xFFFFFFEE
DA634:  BIC.W           R1, R1, R0
DA638:  AND.W           R2, R0, #0x11
DA63C:  ADD             R1, R2
DA63E:  MOV             R2, #0xFFFFFFB6
DA642:  EOR.W           R2, R2, R1
DA646:  EOR.W           R11, R1, #0x11
DA64A:  AND.W           R1, R2, R11
DA64E:  BIC.W           R2, R4, R1
DA652:  BIC.W           R3, R1, #0x61 ; 'a'
DA656:  ADD             R2, R3
DA658:  EOR.W           R3, R0, #0x58 ; 'X'
DA65C:  AND.W           R0, R0, R3
DA660:  MVN.W           R1, R1
DA664:  BIC.W           R3, R4, R0
DA668:  BIC.W           R4, R0, #0x61 ; 'a'
DA66C:  ADD             R3, R4
DA66E:  ORN.W           R0, R1, R0
DA672:  EOR.W           R2, R2, R3
DA676:  BIC.W           R1, R9, #0x45 ; 'E'
DA67A:  ORN.W           R12, R2, R0
DA67E:  AND.W           R0, R10, #0x45 ; 'E'
DA682:  ADD             R0, R1
DA684:  AND.W           R3, LR, #0x37 ; '7'
DA688:  EOR.W           R0, R0, #0xD
DA68C:  EOR.W           R1, R0, R9
DA690:  AND.W           R0, R0, R1
DA694:  MOV             R1, #0xFFFFFFA9
DA698:  BIC.W           R1, R1, R0
DA69C:  AND.W           R2, R0, #0x56 ; 'V'
DA6A0:  ADD             R1, R2
DA6A2:  MOV             R2, #0xFFFFFFC8
DA6A6:  BIC.W           R2, R2, LR
DA6AA:  ADD             R2, R3
DA6AC:  MOV             R3, #0xFFFFFF95
DA6B0:  EOR.W           R2, R2, R3
DA6B4:  MOV.W           R3, #0x56 ; 'V'
DA6B8:  ORR.W           R2, R2, LR
DA6BC:  BIC.W           R3, R3, R2
DA6C0:  BIC.W           R4, R2, #0x56 ; 'V'
DA6C4:  ADD             R3, R4
DA6C6:  ORN.W           R0, R2, R0
DA6CA:  EOR.W           R1, R1, R3
DA6CE:  MOV.W           R3, #0x7D ; '}'
DA6D2:  MOV             R2, #0xFFFFFF82
DA6D6:  BIC.W           R3, R3, R1
DA6DA:  BIC.W           R4, R1, #0x7D ; '}'
DA6DE:  BIC.W           R2, R2, R0
DA6E2:  ADD             R3, R4
DA6E4:  AND.W           R4, R0, #0x7D ; '}'
DA6E8:  ADD             R2, R4
DA6EA:  ORN.W           R0, R0, R1
DA6EE:  EOR.W           R2, R2, R3
DA6F2:  MOV             R4, #0xFFFFFFF5
DA6F6:  ORN.W           R0, R2, R0
DA6FA:  MOV.W           R1, R0,LSR#1
DA6FE:  MVN.W           R2, R0
DA702:  BFI.W           R2, R1, #1, #2
DA706:  EOR.W           R1, R2, #6
DA70A:  EOR.W           R2, R2, #0x33 ; '3'
DA70E:  AND.W           R1, R1, R2
DA712:  BIC.W           R2, R4, R1
DA716:  AND.W           R3, R1, #0xA
DA71A:  ADD             R2, R3
DA71C:  EOR.W           R3, R0, R5
DA720:  AND.W           R0, R0, R3
DA724:  MVN.W           R1, R1
DA728:  BIC.W           R3, R4, R0
DA72C:  AND.W           R4, R0, #0xA
DA730:  ADD             R3, R4
DA732:  ORN.W           R0, R1, R0
DA736:  EOR.W           R2, R2, R3
DA73A:  MOV.W           R1, R6,LSR#3
DA73E:  ORN.W           R0, R2, R0
DA742:  MVN.W           R2, R6
DA746:  MOV             R3, R2
DA748:  BFI.W           R3, R1, #3, #1
DA74C:  EOR.W           R1, R3, R2
DA750:  AND.W           R1, R1, R3
DA754:  BIC.W           R2, R5, R1
DA758:  AND.W           R1, R1, #0x35 ; '5'
DA75C:  ADD             R1, R2
DA75E:  BIC.W           R2, R1, R0
DA762:  BIC.W           R0, R0, R1
DA766:  ADD             R0, R2
DA768:  MOV.W           R2, #0x58 ; 'X'
DA76C:  EOR.W           R1, R0, #0x58 ; 'X'
DA770:  BIC.W           R2, R2, R0
DA774:  AND.W           R1, R1, R0
DA778:  EOR.W           R3, R2, R1
DA77C:  AND.W           R1, R1, R2
DA780:  ORR.W           R1, R1, R3
DA784:  MOV             R3, #0xFFFFFFDD
DA788:  BIC.W           R2, R1, R12
DA78C:  BIC.W           R1, R12, R1
DA790:  ADD             R1, R2
DA792:  MVN.W           R2, R0
DA796:  EOR.W           R2, R2, R11
DA79A:  BIC.W           R0, R11, R0
DA79E:  ORR.W           R0, R0, R2
DA7A2:  MVN.W           R2, R0
DA7A6:  BIC.W           R0, R1, R0
DA7AA:  EOR.W           R2, R2, R1
DA7AE:  ORR.W           R0, R0, R2
DA7B2:  BIC.W           R1, R3, R0
DA7B6:  AND.W           R2, R0, #0x22 ; '"'
DA7BA:  ADD             R1, R2
DA7BC:  LDR             R2, [SP,#0x70+var_50]
DA7BE:  EOR.W           R1, R1, R2
DA7C2:  ORN.W           R0, R2, R0
DA7C6:  EOR.W           R1, R1, R3
DA7CA:  AND.W           R1, R1, R2
DA7CE:  MVN.W           R2, R0
DA7D2:  EOR.W           R2, R2, R1
DA7D6:  BIC.W           R0, R1, R0
DA7DA:  ORR.W           R0, R0, R2
DA7DE:  MOV             R2, #0xFFFFFF84
DA7E2:  EOR.W           R1, R0, R2
DA7E6:  AND.W           R1, R1, R0
DA7EA:  BIC.W           R0, R2, R0
DA7EE:  EOR.W           R2, R0, R1
DA7F2:  AND.W           R0, R0, R1
DA7F6:  ORR.W           R0, R0, R2
DA7FA:  MOV             R1, #0xFFFFFFCC
DA7FE:  LDR             R2, [SP,#0x70+var_4C]
DA800:  BIC.W           R1, R1, R0
DA804:  AND.W           R0, R0, #0x33 ; '3'
DA808:  ADD             R1, R0
DA80A:  LDR             R0, [SP,#0x70+var_48]
DA80C:  ADD.W           R2, R2, #1
DA810:  BNE.W           loc_DA486
DA814:  LDR             R0, =(byte_23CAD5 - 0xDA820)
DA816:  MOVW            R3, #0xFFB
DA81A:  LDR             R4, [SP,#0x70+var_58]
DA81C:  ADD             R0, PC; byte_23CAD5
DA81E:  STR             R0, [SP,#0x70+var_60]
DA820:  STRB.W          R1, [R0],#1
DA824:  MOV             R2, R4
DA826:  LDR             R1, [SP,#0x70+var_64]
DA828:  BLX             __memcpy_chk
DA82C:  LDR             R1, =(unk_237508 - 0xDA834)
DA82E:  ADD             R0, SP, #0x70+var_2C; int
DA830:  ADD             R1, PC; unk_237508 ; s
DA832:  BL              sub_DC6DC
DA836:  LDR             R0, =(off_234930 - 0xDA83C)
DA838:  ADD             R0, PC; off_234930
DA83A:  LDR             R0, [R0]; dword_23DF1C
DA83C:  STR             R0, [SP,#0x70+var_6C]
DA83E:  LDR             R3, [R0]
DA840:  MOV             R0, #0x58ABA4B1
DA848:  STR             R3, [SP,#0x70+src]
DA84A:  BIC.W           R1, R3, R0
DA84E:  BIC.W           R2, R0, R3
DA852:  ADD             R1, R2
DA854:  MVNS            R0, R0
DA856:  EORS            R0, R1
DA858:  MOV             R1, #0x83F98ED5
DA860:  MVNS            R2, R1
DA862:  EORS            R1, R3
DA864:  ORN.W           R0, R2, R0
DA868:  ANDS            R1, R3
DA86A:  BIC.W           R2, R1, R0
DA86E:  MVNS            R0, R0
DA870:  EORS            R0, R1
DA872:  MOVW            R1, #0x7112
DA876:  ORRS            R0, R2
DA878:  MOVT            R1, #0x7C06
DA87C:  MOVW            R2, #0x8EED
DA880:  ANDS            R1, R0
DA882:  MOVT            R2, #0x83F9
DA886:  BIC.W           R0, R2, R0
DA88A:  ADD             R0, R1
DA88C:  MOVS            R1, #0
DA88E:  CMP             R0, #0x3B ; ';'
DA890:  IT GT
DA892:  MOVGT           R1, #1
DA894:  CMP             R4, #0
DA896:  MOV.W           R2, #0
DA89A:  IT GT
DA89C:  MOVGT           R2, #1
DA89E:  CMP             R0, #0x3C ; '<'
DA8A0:  MOV.W           R0, #0
DA8A4:  ORR.W           R1, R1, R2
DA8A8:  IT LT
DA8AA:  MOVLT           R0, #1
DA8AC:  EOR.W           R1, R1, #1
DA8B0:  EORS            R0, R2
DA8B2:  EOR.W           R0, R0, #1
DA8B6:  ORRS            R0, R1
DA8B8:  LDR             R1, =(dword_23DAD4 - 0xDA8C2)
DA8BA:  EOR.W           R0, R0, #1
DA8BE:  ADD             R1, PC; dword_23DAD4
DA8C0:  STR             R1, [SP,#0x70+var_64]
DA8C2:  BNE.W           loc_DAB3A
DA8C6:  B               loc_DA8D8
DA8C8:  DCD byte_23CAD5 - 0xDA820
DA8CC:  DCD unk_237508 - 0xDA834
DA8D0:  DCD off_234930 - 0xDA83C
DA8D4:  DCD dword_23DAD4 - 0xDA8C2
DA8D8:  CMP             R0, #0
DA8DA:  BEQ.W           loc_DAB3A
DA8DE:  LDR             R0, [SP,#0x70+var_60]
DA8E0:  MOVS            R2, #0
DA8E2:  LDR.W           R10, [SP,#0x70+var_58]
DA8E6:  ADDS            R1, R0, #1
DA8E8:  LDR             R0, [SP,#0x70+var_64]
DA8EA:  LDR             R0, [R0]
DA8EC:  STR             R0, [SP,#0x70+var_50]
DA8EE:  LDRB            R3, [R1]
DA8F0:  SUBS.W          R10, R10, #1
DA8F4:  LDR             R0, [SP,#0x70+var_50]
DA8F6:  STRD.W          R2, R1, [SP,#0x70+var_4C]
DA8FA:  LDRB.W          LR, [R0,R3]
DA8FE:  MOV             R0, #0xFFFFFFFE
DA902:  BIC.W           R3, R0, LR
DA906:  EOR.W           R6, LR, #1
DA90A:  ORR.W           R3, R3, R6
DA90E:  MOV.W           R0, #0x5C ; '\'
DA912:  BIC.W           R6, R0, R3
DA916:  BIC.W           R3, R3, #0x5C ; '\'
DA91A:  ADD             R3, R6
DA91C:  MOV             R0, #0xFFFFFFA3
DA920:  EOR.W           R6, R3, R0
DA924:  EOR.W           R5, R3, #0x62 ; 'b'
DA928:  AND.W           R6, R6, R5
DA92C:  EOR.W           R5, R3, #0x5C ; '\'
DA930:  BIC.W           R1, R5, #0x3E ; '>'
DA934:  MOV             R0, #0xFFFFFF87
DA938:  EOR.W           R4, R1, R6
DA93C:  AND.W           R1, R1, R6
DA940:  MVN.W           R6, R6
DA944:  ORR.W           R1, R1, R4
DA948:  MOV.W           R6, R6,LSR#5
DA94C:  BFI.W           R1, R6, #5, #1
DA950:  EOR.W           R4, R1, #0x3A ; ':'
DA954:  EOR.W           R1, R1, #4
DA958:  MOV.W           R1, R1,LSR#2
DA95C:  MOV             R6, R4
DA95E:  BFI.W           R6, R1, #2, #4
DA962:  EOR.W           R1, R3, R0
DA966:  BIC.W           R3, R5, #0x24 ; '$'
DA96A:  MOV             R0, #0xFFFFFFEB
DA96E:  ORR.W           R1, R1, R3
DA972:  ORR.W           R5, R4, R1
DA976:  MVN.W           R3, R1
DA97A:  MOV.W           R3, R3,LSR#2
DA97E:  BFI.W           R1, R3, #2, #4
DA982:  EOR.W           R1, R1, R6
DA986:  ORN.W           R1, R1, R5
DA98A:  EOR.W           R3, R1, #0x50 ; 'P'
DA98E:  AND.W           R5, R1, #0x1A
DA992:  AND.W           R3, R3, R1
DA996:  BIC.W           R4, R0, R3
DA99A:  MOV             R0, #0xFFFFFFE5
DA99E:  BIC.W           R6, R0, R1
DA9A2:  ADD.W           R8, R6, R5
DA9A6:  EOR.W           R12, R8, R0
DA9AA:  MOV.W           R0, #0x10
DA9AE:  ORN.W           R5, R12, #0x50 ; 'P'
DA9B2:  BIC.W           R1, R0, R1
DA9B6:  ORN.W           R6, R5, R3
DA9BA:  AND.W           R3, R3, #0x14
DA9BE:  ADD             R3, R4
DA9C0:  BIC.W           R4, R5, #0x14
DA9C4:  ADD             R1, R4
DA9C6:  MOV             R0, #0xFFFFFF98
DA9CA:  EOR.W           R1, R1, R3
DA9CE:  EOR.W           R3, LR, R0
DA9D2:  MOV.W           R0, #0x67 ; 'g'
DA9D6:  BIC.W           R4, R0, LR
DA9DA:  ORR.W           R3, R3, R4
DA9DE:  MOV.W           R0, #0x37 ; '7'
DA9E2:  BIC.W           R4, R0, R3
DA9E6:  BIC.W           R3, R3, #0x37 ; '7'
DA9EA:  ADD             R3, R4
DA9EC:  MOV             R0, #0xFFFFFFC8
DA9F0:  EOR.W           R4, R3, R0
DA9F4:  EOR.W           R3, R3, #0x37 ; '7'
DA9F8:  ORN.W           R9, R1, R6
DA9FC:  AND.W           R6, R3, #0x12
DAA00:  BIC.W           R5, R4, #0x12
DAA04:  MOV             R0, #0xFFFFFFED
DAA08:  ADD             R5, R6
DAA0A:  ORR.W           R3, R3, #0x50 ; 'P'
DAA0E:  EOR.W           R6, R5, R0
DAA12:  EOR.W           R11, R5, #0x42 ; 'B'
DAA16:  AND.W           R2, R11, R6
DAA1A:  MOV             R0, #0xFFFFFFC9
DAA1E:  BIC.W           R0, R0, R2
DAA22:  AND.W           R1, R2, #0x36 ; '6'
DAA26:  ADD             R0, R1
DAA28:  AND.W           R1, R4, #0x26 ; '&'
DAA2C:  BIC.W           R4, R3, #0x36 ; '6'
DAA30:  ADD             R1, R4
DAA32:  EOR.W           R4, R5, #0x12
DAA36:  EOR.W           R0, R0, R1
DAA3A:  ORN.W           R1, R3, R2
DAA3E:  ORN.W           R0, R0, R1
DAA42:  AND.W           R3, R12, #0x34 ; '4'
DAA46:  BIC.W           R1, R0, R9
DAA4A:  BIC.W           R0, R9, R0
DAA4E:  ADD             R0, R1
DAA50:  MOV             R1, #0xFFFFFFCB
DAA54:  BIC.W           R1, R1, R0
DAA58:  AND.W           R2, R0, #0x34 ; '4'
DAA5C:  ADD             R1, R2
DAA5E:  EOR.W           R2, R8, #0xA
DAA62:  BIC.W           R2, R2, #0x34 ; '4'
DAA66:  AND.W           R5, R4, #0x34 ; '4'
DAA6A:  ADD             R2, R3
DAA6C:  BIC.W           R3, R6, #0x34 ; '4'
DAA70:  ADD             R3, R5
DAA72:  EOR.W           R2, R2, R3
DAA76:  ORR.W           R3, R4, R12
DAA7A:  ORN.W           R2, R2, R3
DAA7E:  MOV.W           R3, #0x34 ; '4'
DAA82:  BIC.W           R3, R3, R2
DAA86:  BIC.W           R6, R2, #0x34 ; '4'
DAA8A:  ADD             R3, R6
DAA8C:  ORN.W           R0, R2, R0
DAA90:  EOR.W           R1, R1, R3
DAA94:  MVN.W           R3, LR
DAA98:  ORN.W           R0, R1, R0
DAA9C:  MOV.W           R1, #0x6B ; 'k'
DAAA0:  BIC.W           R1, R1, R0
DAAA4:  BIC.W           R2, R0, #0x6B ; 'k'
DAAA8:  ADD             R1, R2
DAAAA:  MOV.W           R2, LR,LSR#2
DAAAE:  BFI.W           R3, R2, #2, #2
DAAB2:  MOV             R2, #0xFFFFFF95
DAAB6:  EOR.W           R2, R2, R3
DAABA:  MVN.W           R0, R0
DAABE:  ORN.W           R2, R2, LR
DAAC2:  ORN.W           R0, R0, R2
DAAC6:  MVN.W           R3, R2
DAACA:  EOR.W           R1, R1, R3
DAACE:  EOR.W           R1, R1, #0x6B ; 'k'
DAAD2:  MOVW            R3, #0x86F4
DAAD6:  BIC.W           R1, R1, R2
DAADA:  MVN.W           R2, R0
DAADE:  EOR.W           R2, R2, R1
DAAE2:  BIC.W           R0, R1, R0
DAAE6:  ORR.W           R0, R0, R2
DAAEA:  MOV             R1, #0xFFFFFFC2
DAAEE:  BIC.W           R1, R1, R0
DAAF2:  AND.W           R2, R0, #0x21 ; '!'
DAAF6:  ADD             R1, R2
DAAF8:  MOV             R2, #0xFFFFFFE3
DAAFC:  ORN.W           R0, R2, R0
DAB00:  MOVW            R2, #0x5130
DAB04:  EOR.W           R0, R0, R1
DAB08:  MOVT            R3, #0xCDC4
DAB0C:  AND.W           R1, R0, #0x5E ; '^'
DAB10:  EOR.W           R0, R0, #0x80
DAB14:  AND.W           R0, R0, #0xA1
DAB18:  MOVT            R2, #0xA242
DAB1C:  ADD             R0, R1
DAB1E:  LDR             R1, [SP,#0x70+var_48]
DAB20:  STRB.W          R0, [R1],#1
DAB24:  LDR             R0, [SP,#0x70+var_4C]
DAB26:  ADD             R0, R3
DAB28:  SUB.W           R0, R0, R2
DAB2C:  SUB.W           R0, R0, R3
DAB30:  ADD             R0, R2
DAB32:  ADD.W           R2, R0, #1
DAB36:  BNE.W           loc_DA8EE
DAB3A:  LDR             R4, [SP,#0x70+src]
DAB3C:  LDR.W           LR, [SP,#0x70+var_5C]
DAB40:  CMP             R4, #4
DAB42:  BNE.W           loc_DB1AE
DAB46:  MOVS            R1, #0x67 ; 'g'
DAB48:  BIC.W           R2, LR, #0x67 ; 'g'
DAB4C:  BIC.W           R1, R1, LR
DAB50:  MOVS            R0, #0x7D ; '}'
DAB52:  ADD             R1, R2
DAB54:  MOV             R2, #0xFFFFFFE5
DAB58:  EORS            R1, R2
DAB5A:  BIC.W           R0, R0, LR
DAB5E:  ORRS            R0, R1
DAB60:  MOVS            R6, #0x11
DAB62:  EOR.W           R1, R0, #0x11
DAB66:  MOV             R2, #0xFFFFFFD9
DAB6A:  BICS            R1, R0
DAB6C:  ORN.W           R6, R6, R0
DAB70:  BICS            R2, R1
DAB72:  AND.W           R3, R1, #0x26 ; '&'
DAB76:  ADD             R2, R3
DAB78:  AND.W           R3, R0, #0x26 ; '&'
DAB7C:  BIC.W           R5, R6, #0x26 ; '&'
DAB80:  ORN.W           R1, R6, R1
DAB84:  ADD             R3, R5
DAB86:  MOVS            R4, #0x4E ; 'N'
DAB88:  EORS            R2, R3
DAB8A:  MOV             R3, #0xFFFFFF80
DAB8E:  ORN.W           R1, R2, R1
DAB92:  MOV             R2, #0xFFFFFF90
DAB96:  BICS            R2, R1
DAB98:  AND.W           R1, R1, #0x6F ; 'o'
DAB9C:  ADD             R1, R2
DAB9E:  MOV             R12, #0xFFFFFFBE
DABA2:  EOR.W           R2, R1, #0x5D ; ']'
DABA6:  EORS            R1, R3
DABA8:  BIC.W           R2, R2, #0x22 ; '"'
DABAC:  AND.W           R3, R1, #0x22 ; '"'
DABB0:  ADD             R2, R3
DABB2:  MOV             R3, #0xFFFFFFFE
DABB6:  EORS            R3, R0
DABB8:  BIC.W           R0, R0, #1
DABBC:  ORRS            R0, R3
DABBE:  MOV             R3, #0xFFFFFFA6
DABC2:  BIC.W           R6, R3, R0
DABC6:  AND.W           R0, R0, #0x59 ; 'Y'
DABCA:  ADD             R0, R6
DABCC:  MOV.W           R8, #0x33 ; '3'
DABD0:  EOR.W           R6, R0, #0x59 ; 'Y'
DABD4:  EORS            R0, R3
DABD6:  AND.W           R3, R0, #0x22 ; '"'
DABDA:  BIC.W           R6, R6, #0x22 ; '"'
DABDE:  ADD             R3, R6
DABE0:  ORRS            R0, R1
DABE2:  EORS            R2, R3
DABE4:  EOR.W           R3, LR, #0x50 ; 'P'
DABE8:  ORN.W           R0, R2, R0
DABEC:  MOV.W           R11, #0x4B ; 'K'
DABF0:  VMOV.F64        D16, #2.0
DABF4:  MVNS            R1, R0
DABF6:  MOV             R2, R0
DABF8:  LSRS            R1, R1, #6
DABFA:  BFI.W           R2, R1, #6, #1
DABFE:  MOV             R1, #0xFFFFFFAF
DAC02:  BIC.W           R1, R1, LR
DAC06:  ORRS            R1, R3
DAC08:  ORN.W           R0, R1, R0
DAC0C:  LSRS            R3, R1, #6
DAC0E:  MVNS            R6, R1
DAC10:  BFI.W           R6, R3, #6, #1
DAC14:  MOVS            R3, #0x32 ; '2'
DAC16:  EORS            R2, R6
DAC18:  MOV             R1, #0xFFFFFFCD
DAC1C:  BICS            R3, R2
DAC1E:  BIC.W           R6, R2, #0x32 ; '2'
DAC22:  ADD             R3, R6
DAC24:  BICS            R1, R0
DAC26:  AND.W           R6, R0, #0x32 ; '2'
DAC2A:  ORN.W           R0, R0, R2
DAC2E:  ADD             R1, R6
DAC30:  MOV             R2, #0xFFFFFF91
DAC34:  EORS            R1, R3
DAC36:  MOV             R6, #0xFFFFFFF4
DAC3A:  ORN.W           R0, R1, R0
DAC3E:  ORN.W           R2, R2, R0
DAC42:  AND.W           R1, R0, #0x46 ; 'F'
DAC46:  BIC.W           R2, R2, #0x66 ; 'f'
DAC4A:  AND.W           R3, R0, #0x10
DAC4E:  ADD             R1, R2
DAC50:  MOV             R2, #0xFFFFFF81
DAC54:  BICS            R2, R0
DAC56:  ADD             R2, R3
DAC58:  MOV             R3, #0xFFFFFF89
DAC5C:  EORS            R2, R3
DAC5E:  MOVS            R3, #0x20 ; ' '
DAC60:  BIC.W           R0, R3, R0
DAC64:  AND.W           R3, LR, #0x46 ; 'F'
DAC68:  ADD             R0, R2
DAC6A:  EORS            R0, R1
DAC6C:  MOVS            R1, #0x15
DAC6E:  BIC.W           R2, R1, R0
DAC72:  BIC.W           R0, R0, #0x15
DAC76:  ADD             R0, R2
DAC78:  MOV             R2, #0xFFFFFFB9
DAC7C:  BIC.W           R2, R2, LR
DAC80:  ADD             R2, R3
DAC82:  MOV             R3, #0xFFFFFF94
DAC86:  EORS            R2, R3
DAC88:  ORN.W           R2, R2, LR
DAC8C:  EOR.W           R3, R2, #0x4E ; 'N'
DAC90:  BICS            R3, R2
DAC92:  BICS            R6, R3
DAC94:  AND.W           R5, R3, #0xB
DAC98:  ADD             R6, R5
DAC9A:  AND.W           R5, R2, #1
DAC9E:  ORN.W           R2, R4, R2
DACA2:  BIC.W           R4, R2, #0xB
DACA6:  ORN.W           R2, R2, R3
DACAA:  ADD             R5, R4
DACAC:  EORS            R6, R5
DACAE:  ORN.W           R2, R6, R2
DACB2:  MOV             R6, #0xFFFFFFFB
DACB6:  BICS            R1, R2
DACB8:  BIC.W           R2, R2, #0x15
DACBC:  ADD             R1, R2
DACBE:  MOV             R2, #0xFFFFFF86
DACC2:  EORS            R0, R1
DACC4:  EOR.W           R1, R0, #0x46 ; 'F'
DACC8:  ANDS            R1, R0
DACCA:  BICS            R2, R1
DACCC:  AND.W           R3, R1, #0x79 ; 'y'
DACD0:  ADD             R2, R3
DACD2:  MOVS            R3, #0x42 ; 'B'
DACD4:  BICS            R3, R0
DACD6:  AND.W           R0, R0, #4
DACDA:  ADD             R0, R3
DACDC:  AND.W           R3, R0, #0x40 ; '@'
DACE0:  EORS            R0, R6
DACE2:  BIC.W           R6, R0, #0x79 ; 'y'
DACE6:  ORN.W           R0, R0, R1
DACEA:  ADD             R3, R6
DACEC:  MOVS            R1, #0x33 ; '3'
DACEE:  EORS            R2, R3
DACF0:  ORN.W           R0, R2, R0
DACF4:  MOV             R2, #0xFFFFFF9D
DACF8:  MULS            R0, R1
DACFA:  RSB.W           R1, R0, #0x71 ; 'q'
DACFE:  BICS            R2, R1
DAD00:  AND.W           R1, R1, #0x62 ; 'b'
DAD04:  ADD             R1, R2
DAD06:  MOV             R2, #0xFFFFFF9C
DAD0A:  EORS            R2, R1
DAD0C:  EOR.W           R1, R1, #0x62 ; 'b'
DAD10:  BFI.W           R2, R1, #0, #2
DAD14:  BIC.W           R1, R1, #0x70 ; 'p'
DAD18:  EOR.W           R2, R2, #0x73 ; 's'
DAD1C:  ORRS            R1, R2
DAD1E:  LSRS            R2, R1, #2
DAD20:  MVNS            R3, R1
DAD22:  BFI.W           R3, R2, #2, #0x1E
DAD26:  MOV             R1, #0xFFFFFFFC
DAD2A:  EOR.W           LR, R3, R1
DAD2E:  EOR.W           R6, R3, #0x57 ; 'W'
DAD32:  EOR.W           R2, R3, #3
DAD36:  AND.W           R3, R6, LR
DAD3A:  ANDS            R6, R2
DAD3C:  MOVS            R1, #0x54 ; 'T'
DAD3E:  EOR.W           R5, R6, R3
DAD42:  ANDS            R3, R6
DAD44:  MOVS            R6, #0x62 ; 'b'
DAD46:  ORRS            R3, R5
DAD48:  BICS            R6, R0
DAD4A:  BIC.W           R5, R0, #0x62 ; 'b'
DAD4E:  ADD             R6, R5
DAD50:  EOR.W           R6, R6, #0x60 ; '`'
DAD54:  ORN.W           R6, R6, R0
DAD58:  ADDS            R0, #0xE
DAD5A:  BIC.W           R4, R12, R6
DAD5E:  AND.W           R5, R6, #0x41 ; 'A'
DAD62:  ADD             R5, R4
DAD64:  BICS            R1, R6
DAD66:  EOR.W           R4, R5, R12
DAD6A:  BIC.W           R6, R4, #0x54 ; 'T'
DAD6E:  ADD             R1, R6
DAD70:  BIC.W           R6, R1, R3
DAD74:  BIC.W           R1, R3, R1
DAD78:  MOV.W           R3, LR,LSR#4
DAD7C:  ADD             R1, R6
DAD7E:  BFI.W           R2, R3, #4, #2
DAD82:  EOR.W           R3, R5, #0x41 ; 'A'
DAD86:  LSRS            R6, R3, #4
DAD88:  ORR.W           R3, R3, LR
DAD8C:  BFI.W           R4, R6, #4, #2
DAD90:  EORS            R2, R4
DAD92:  ORN.W           R2, R2, R3
DAD96:  BIC.W           R3, R1, R2
DAD9A:  MVNS            R2, R2
DAD9C:  EORS            R1, R2
DAD9E:  MOVS            R2, #0x72 ; 'r'
DADA0:  ORRS            R1, R3
DADA2:  BICS            R2, R0
DADA4:  BIC.W           R3, R0, #0x72 ; 'r'
DADA8:  ADD             R2, R3
DADAA:  MVNS            R0, R0
DADAC:  EORS            R0, R2
DADAE:  ANDS            R0, R2
DADB0:  BIC.W           R2, R1, R0
DADB4:  BIC.W           R3, R0, R1
DADB8:  MVNS            R0, R0
DADBA:  ADD             R2, R3
DADBC:  EORS            R0, R1
DADBE:  ANDS            R0, R1
DADC0:  EOR.W           R1, R0, R2
DADC4:  ANDS            R0, R2
DADC6:  ORRS            R0, R1
DADC8:  LDR             R1, [SP,#0x70+var_60]
DADCA:  ADDS            R2, R1, #1
DADCC:  LDR             R1, [SP,#0x70+var_58]
DADCE:  STR             R2, [SP,#0x70+var_48]
DADD0:  STRB            R0, [R2,R1]
DADD2:  MOV             R0, #0xFFFFFF98
DADD6:  LDR             R1, [SP,#0x70+var_5C]
DADD8:  LDR             R2, [SP,#0x70+var_5C]
DADDA:  BIC.W           R1, R0, R1
DADDE:  EORS            R0, R2
DADE0:  LDR             R2, [SP,#0x70+var_5C]
DADE2:  ANDS            R0, R2
DADE4:  EOR.W           R2, R1, R0
DADE8:  ANDS            R0, R1
DADEA:  ORRS            R0, R2
DADEC:  MOV             R1, #0xFFFFFFCA
DADF0:  MUL.W           R0, R0, R8
DADF4:  SUB.W           R12, R0, #0x15
DADF8:  RSB.W           LR, R0, #0x14
DADFC:  MVN.W           R2, R12
DAE00:  MOV.W           R0, LR,LSR#2
DAE04:  MOV             R3, R2
DAE06:  BFI.W           R3, R12, #0, #1
DAE0A:  EORS            R2, R3
DAE0C:  ANDS            R2, R3
DAE0E:  BIC.W           R3, R1, R2
DAE12:  AND.W           R5, R2, #0x35 ; '5'
DAE16:  ADDS            R4, R3, R5
DAE18:  MOV             R5, #0xFFFFFFC3
DAE1C:  EORS            R5, R2
DAE1E:  EOR.W           R8, R4, #0x35 ; '5'
DAE22:  EOR.W           R3, R4, #9
DAE26:  ANDS            R2, R5
DAE28:  AND.W           R3, R3, R8
DAE2C:  EOR.W           R5, R3, R2
DAE30:  ANDS            R2, R3
DAE32:  ORR.W           R3, R2, R5
DAE36:  MOV             R2, R12
DAE38:  BFI.W           R2, R0, #2, #1
DAE3C:  EOR.W           R0, R2, #0x3B ; ';'
DAE40:  EOR.W           R2, R2, #4
DAE44:  LSRS            R5, R2, #6
DAE46:  BIC.W           R2, R2, #0x20 ; ' '
DAE4A:  BFI.W           R0, R5, #6, #0x1A
DAE4E:  MOV             R5, #0xFFFFFFE0
DAE52:  EORS            R0, R5
DAE54:  MOV             R5, #0xFFFFFFC1
DAE58:  ORRS            R0, R2
DAE5A:  LSRS            R2, R0, #1
DAE5C:  MVNS            R1, R0
DAE5E:  BFI.W           R1, R2, #1, #1
DAE62:  MOV             R2, #0xFFFFFFFD
DAE66:  EOR.W           R10, R1, R5
DAE6A:  EORS            R2, R1
DAE6C:  MOVS            R5, #0x34 ; '4'
DAE6E:  AND.W           R10, R10, R2
DAE72:  BICS            R5, R0
DAE74:  ORN.W           R0, R0, #0x3C ; '<'
DAE78:  AND.W           R6, R0, #0x4B ; 'K'
DAE7C:  BIC.W           R11, R11, R10
DAE80:  BIC.W           R9, R10, #0x4B ; 'K'
DAE84:  ADD             R5, R6
DAE86:  ADD             R9, R11
DAE88:  ORN.W           R0, R0, R10
DAE8C:  EOR.W           R5, R5, R9
DAE90:  EOR.W           R1, R1, #2
DAE94:  ORN.W           R0, R5, R0
DAE98:  BIC.W           R2, R2, #0x63 ; 'c'
DAE9C:  BIC.W           R5, R0, R3
DAEA0:  BIC.W           R0, R3, R0
DAEA4:  ADD             R5, R0
DAEA6:  MOV             R3, #0xFFFFFFCA
DAEAA:  EORS            R4, R3
DAEAC:  LDR.W           R9, [SP,#0x70+var_58]
DAEB0:  MVNS            R6, R5
DAEB2:  MOV             R0, R5
DAEB4:  LSRS            R6, R6, #4
DAEB6:  AND.W           R3, R4, #0x63 ; 'c'
DAEBA:  BFI.W           R0, R6, #4, #2
DAEBE:  BIC.W           R6, R8, #0x63 ; 'c'
DAEC2:  ADD             R3, R6
DAEC4:  AND.W           R6, R1, #0x63 ; 'c'
DAEC8:  ADD             R2, R6
DAECA:  ORRS            R1, R4
DAECC:  EORS            R2, R3
DAECE:  MOV             R3, #0xFFFFFF89
DAED2:  ORN.W           R1, R2, R1
DAED6:  LDR.W           R8, [SP,#0x70+var_48]
DAEDA:  BIC.W           R2, R3, R1
DAEDE:  AND.W           R1, R1, #0x76 ; 'v'
DAEE2:  ADD             R1, R2
DAEE4:  MOVS            R6, #0x33 ; '3'
DAEE6:  EOR.W           R2, R1, #0x46 ; 'F'
DAEEA:  EORS            R1, R3
DAEEC:  LSRS            R3, R1, #4
DAEEE:  ORN.W           R1, R1, R5
DAEF2:  BFI.W           R2, R3, #4, #2
DAEF6:  MOVW            R5, #0x8C81
DAEFA:  EORS            R0, R2
DAEFC:  MOVT            R5, #0xEBC8
DAF00:  ORN.W           R0, R0, R1
DAF04:  MOV.W           R1, R12,LSR#1
DAF08:  BFI.W           LR, R1, #1, #6
DAF0C:  MOV             R1, #0xFFFFFFC1
DAF10:  EOR.W           R1, R1, LR
DAF14:  LDR.W           LR, [SP,#0x70+var_5C]
DAF18:  EOR.W           R2, R1, R12
DAF1C:  ANDS            R1, R2
DAF1E:  BIC.W           R2, R0, R1
DAF22:  BIC.W           R3, R1, R0
DAF26:  MVNS            R1, R1
DAF28:  ADD             R2, R3
DAF2A:  EORS            R1, R0
DAF2C:  MOV             R3, #0xFFFFFFEF
DAF30:  ANDS            R0, R1
DAF32:  EOR.W           R1, R0, R2
DAF36:  ANDS            R0, R2
DAF38:  ORRS            R0, R1
DAF3A:  MOV             R1, #0xFFFFFFE5
DAF3E:  BIC.W           R1, R1, R12
DAF42:  AND.W           R2, R12, #0x1A
DAF46:  ADD             R1, R2
DAF48:  MOVS            R2, #0x61 ; 'a'
DAF4A:  EOR.W           R1, R1, #0x7B ; '{'
DAF4E:  BIC.W           R2, R2, R12
DAF52:  ORRS            R1, R2
DAF54:  LSRS            R2, R1, #4
DAF56:  MVNS            R1, R1
DAF58:  BFI.W           R1, R2, #4, #1
DAF5C:  EOR.W           R2, R1, #0x10
DAF60:  EORS            R1, R3
DAF62:  AND.W           R3, R0, R1
DAF66:  BICS            R2, R0
DAF68:  EORS            R1, R0
DAF6A:  ADD             R2, R3
DAF6C:  ANDS            R0, R1
DAF6E:  MVNS            R3, R2
DAF70:  MVNS            R1, R0
DAF72:  BFI.W           R3, R2, #0, #2
DAF76:  ORN.W           R2, R1, R2
DAF7A:  BFI.W           R1, R0, #0, #2
DAF7E:  EOR.W           R0, R1, R3
DAF82:  ORN.W           R0, R0, R2
DAF86:  MOVS            R2, #0x14
DAF88:  EOR.W           R1, R0, #0x5D ; ']'
DAF8C:  BICS            R2, R0
DAF8E:  ANDS            R1, R0
DAF90:  AND.W           R0, R0, #0x49 ; 'I'
DAF94:  ADD             R0, R2
DAF96:  EOR.W           R0, R0, #0x49 ; 'I'
DAF9A:  EOR.W           R2, R0, R1
DAF9E:  ANDS            R0, R1
DAFA0:  ORRS            R0, R2
DAFA2:  MOVS            R1, #0x5C ; '\'
DAFA4:  BICS            R1, R0
DAFA6:  AND.W           R0, R0, #0xA3
DAFAA:  ADD             R0, R1
DAFAC:  MOV             R1, #0x951E0619
DAFB4:  MOVW            R2, #0x57A4
DAFB8:  ADD             R1, R9
DAFBA:  MOVT            R2, #0xA938
DAFBE:  SUBS            R1, R1, R2
DAFC0:  ADD             R1, R8
DAFC2:  ADD             R1, R2
DAFC4:  MOV             R2, #0x6AE1F9E8
DAFCC:  STRB            R0, [R1,R2]
DAFCE:  MOV             R1, #0xFFFFFFEA
DAFD2:  ORN.W           R0, R1, LR
DAFD6:  ORR.W           R2, LR, #0x15
DAFDA:  EORS            R2, R0
DAFDC:  MUL.W           R0, R2, R6
DAFE0:  MLS.W           R1, R2, R6, R1
DAFE4:  ADD.W           R3, R0, #0x15
DAFE8:  BIC.W           R3, R3, #0x23 ; '#'
DAFEC:  AND.W           R2, R1, #0x23 ; '#'
DAFF0:  ADD             R2, R3
DAFF2:  MOV             R3, #0xFFFFFF9D
DAFF6:  EORS            R2, R3
DAFF8:  MOVS            R3, #0x63 ; 'c'
DAFFA:  EORS            R1, R2
DAFFC:  ANDS            R1, R2
DAFFE:  RSB.W           R2, R0, #0x2A ; '*'
DB002:  BICS            R3, R2
DB004:  BIC.W           R6, R2, #0x63 ; 'c'
DB008:  ADD             R3, R6
DB00A:  MOV             R6, #0xFFFFFFD7
DB00E:  EOR.W           R3, R3, #0x4B ; 'K'
DB012:  BIC.W           R2, R6, R2
DB016:  ORRS            R2, R3
DB018:  MOVS            R3, #9
DB01A:  BICS            R3, R2
DB01C:  BIC.W           R2, R2, #9
DB020:  ADD             R2, R3
DB022:  MOV             R3, #0xFFFFFFF6
DB026:  EORS            R3, R2
DB028:  EOR.W           R2, R2, #9
DB02C:  BICS            R3, R1
DB02E:  AND.W           R6, R1, R2
DB032:  ORN.W           R1, R2, R1
DB036:  ADD             R3, R6
DB038:  EOR.W           R6, LR, #1
DB03C:  SUBS            R0, #0x6B ; 'k'
DB03E:  MVNS            R2, R1
DB040:  AND.W           R6, R6, LR
DB044:  EOR.W           R12, R2, R3
DB048:  BIC.W           R4, R6, R5
DB04C:  BIC.W           R2, R5, R6
DB050:  BIC.W           R1, R3, R1
DB054:  ADD             R2, R4
DB056:  ORN.W           R4, LR, #1
DB05A:  ANDS            R5, R4
DB05C:  ORN.W           R6, R4, R6
DB060:  EORS            R2, R5
DB062:  ORR.W           R1, R1, R12
DB066:  ORN.W           R2, R2, R6
DB06A:  BIC.W           R3, R1, #0x58 ; 'X'
DB06E:  MOV             R4, R9
DB070:  VMOV            S0, R2
DB074:  MOVS            R2, #0x58 ; 'X'
DB076:  BICS            R2, R1
DB078:  MOVS            R4, #4
DB07A:  ADD             R2, R3
DB07C:  MOV             R3, #0xFFFFFF9C
DB080:  BICS            R3, R0
DB082:  AND.W           R0, R0, #0x63 ; 'c'
DB086:  ADD             R0, R3
DB088:  VCVT.F32.S32    S0, S0
DB08C:  EOR.W           R3, R0, #0xA
DB090:  EOR.W           R0, R0, #0x61 ; 'a'
DB094:  AND.W           R0, R0, #0x69 ; 'i'
DB098:  ORRS            R0, R3
DB09A:  MOV             R3, #0xFFFFFFA7
DB09E:  BICS            R3, R0
DB0A0:  AND.W           R6, R0, #0x58 ; 'X'
DB0A4:  ORN.W           R0, R0, R1
DB0A8:  ADD             R3, R6
DB0AA:  EORS            R2, R3
DB0AC:  MOVS            R3, #0x16
DB0AE:  MVNS            R1, R0
DB0B0:  VCVT.F64.F32    D17, S0
DB0B4:  EORS            R1, R2
DB0B6:  BIC.W           R0, R2, R0
DB0BA:  ORRS            R0, R1
DB0BC:  MOV             R1, #0xFFFFFFB4
DB0C0:  EORS            R1, R0
DB0C2:  AND.W           R2, R1, R0
DB0C6:  BIC.W           R1, R1, #0x5F ; '_'
DB0CA:  BICS            R3, R2
DB0CC:  BIC.W           R6, R2, #0x16
DB0D0:  ADD             R3, R6
DB0D2:  ORR.W           R6, R0, #0x4B ; 'K'
DB0D6:  VADD.F64        D16, D17, D16
DB0DA:  AND.W           R0, R6, #0x16
DB0DE:  ADD             R1, R0
DB0E0:  ORN.W           R2, R6, R2
DB0E4:  EORS            R1, R3
DB0E6:  MOVW            R3, #0x8656
DB0EA:  ORN.W           R1, R1, R2
DB0EE:  MOVS            R2, #0xF5
DB0F0:  BICS            R2, R1
DB0F2:  AND.W           R1, R1, #0xA
DB0F6:  ADD             R1, R2
DB0F8:  MOV             R2, #0x962079A8
DB100:  MOVT            R3, #0x69DF
DB104:  ORRS            R2, R3
DB106:  MOV             R3, #0x1EE2B41F
DB10E:  ADD.W           R6, R9, R3
DB112:  VCVT.S32.F64    S0, D16
DB116:  SUBS            R6, R6, R2
DB118:  SUBS            R3, R6, R3
DB11A:  LDRB.W          R6, [SP,#0x70+var_2C]
DB11E:  LDR             R2, [SP,#0x70+var_28]
DB120:  STRB.W          R1, [R8,R3]
DB124:  MOVS            R3, #0x32 ; '2'
DB126:  BICS            R3, R6
DB128:  AND.W           R5, R6, #0xCD
DB12C:  MOVS            R1, #0xFE
DB12E:  ADD             R3, R5
DB130:  BICS            R1, R6
DB132:  EOR.W           R3, R3, #0x33 ; '3'
DB136:  LDR             R0, [SP,#0x70+var_24]
DB138:  ORRS            R1, R3
DB13A:  VMOV            R3, S0
DB13E:  CMP             R1, #0xFF
DB140:  IT EQ
DB142:  LSREQ           R2, R6, #1
DB144:  MOVW            R6, #0x19F9
DB148:  MOVW            R5, #0x36E9
DB14C:  MOVT            R6, #0x29EA
DB150:  MOVT            R5, #0x367F
DB154:  ADD             R1, SP, #0x70+var_2C
DB156:  IT EQ
DB158:  ADDEQ           R0, R1, #1
DB15A:  ADDS            R1, R0, R2
DB15C:  SUB.W           R1, R1, #1
DB160:  ADD             R3, R6
DB162:  ADD             R3, R5
DB164:  SUB.W           R3, R3, R6
DB168:  MOV             R6, #0xDCE77B26
DB170:  SUB.W           R3, R3, R6
DB174:  ADD             R3, R9
DB176:  ADD             R3, R6
DB178:  MOV             R6, #0x74D724C3
DB180:  SUB.W           R3, R3, R6
DB184:  SUB.W           R3, R3, R5
DB188:  ADD             R3, R6
DB18A:  STR             R3, [SP,#0x70+var_58]
DB18C:  CBZ             R2, loc_DB1AE
DB18E:  CMP             R1, R0
DB190:  BLS             loc_DB1AE
DB192:  ADDS            R0, #1
DB194:  LDRB.W          R2, [R0,#-1]
DB198:  LDRB            R3, [R1]
DB19A:  STRB.W          R3, [R0,#-1]
DB19E:  STRB.W          R2, [R1],#-1
DB1A2:  ADDS            R2, R0, #1
DB1A4:  CMP             R0, R1
DB1A6:  MOV             R0, R2
DB1A8:  BCC             loc_DB194
DB1AA:  LDR             R0, [SP,#0x70+var_6C]
DB1AC:  LDR             R4, [R0]
DB1AE:  LDR             R0, =(x_ptr - 0xDB1C0)
DB1B0:  MOVW            R2, #0xAA1A
DB1B4:  MOVW            R6, #0x660
DB1B8:  MOVT            R2, #0xA653
DB1BC:  ADD             R0, PC; x_ptr
DB1BE:  MOVT            R6, #0x20E4
DB1C2:  LDR.W           R12, [R0]; x
DB1C6:  LDR             R0, =(y_ptr - 0xDB1D0)
DB1C8:  LDR.W           R1, [R12]
DB1CC:  ADD             R0, PC; y_ptr
DB1CE:  SUBS            R3, R1, R2
DB1D0:  LDR             R0, [R0]; y
DB1D2:  ADD             R3, R6
DB1D4:  MVNS            R6, R6
DB1D6:  ADD             R2, R3
DB1D8:  MOV             R3, #0x2946EC2A
DB1E0:  SUBS            R2, R2, R3
DB1E2:  ADD             R2, R6
DB1E4:  STR             R0, [SP,#0x70+var_48]
DB1E6:  ADD             R2, R3
DB1E8:  LDR             R0, [R0]
DB1EA:  MOVS            R3, #0
DB1EC:  MOVS            R6, #0
DB1EE:  MULS            R1, R2
DB1F0:  MVNS            R2, R1
DB1F2:  BFI.W           R2, R1, #0, #1
DB1F6:  MVNS            R2, R2
DB1F8:  ORN.W           R1, R2, R1
DB1FC:  SUBS.W          R2, R1, #0xFFFFFFFF
DB200:  ADD.W           R1, R1, #1
DB204:  CLZ.W           R1, R1
DB208:  IT NE
DB20A:  MOVNE           R2, #1
DB20C:  CMP             R0, #9
DB20E:  IT GT
DB210:  MOVGT           R6, #1
DB212:  LSRS            R1, R1, #5
DB214:  CMP             R0, #0xA
DB216:  IT LT
DB218:  MOVLT           R3, #1
DB21A:  AND.W           R0, R3, R2
DB21E:  ANDS            R1, R6
DB220:  ORR.W           R5, R2, R6
DB224:  ORRS            R0, R1
DB226:  EOR.W           R1, R5, R0
DB22A:  EOR.W           R0, R0, #1
DB22E:  ORRS            R0, R5
DB230:  EOR.W           R1, R1, #1
DB234:  EOR.W           R0, R0, #1
DB238:  ORRS            R0, R1
DB23A:  LSLS            R0, R0, #0x1F
DB23C:  CMP             R0, #0
DB23E:  BEQ             loc_DB23C
DB240:  MOVW            R0, #0x599
DB244:  MOVW            R2, #0x3CDF
DB248:  MOVT            R0, #0x98A3
DB24C:  EOR.W           R1, R4, R0
DB250:  ORN.W           R0, R4, R0
DB254:  ANDS            R1, R4
DB256:  MOVT            R2, #0xCD5B
DB25A:  BIC.W           R3, R1, R2
DB25E:  BIC.W           R6, R2, R1
DB262:  MVNS            R5, R0
DB264:  ADD             R3, R6
DB266:  AND.W           R6, R0, R2
DB26A:  BIC.W           R2, R5, R2
DB26E:  ORN.W           R0, R0, R1
DB272:  ADD             R2, R6
DB274:  MOVW            R1, #0xFA5E
DB278:  EORS            R2, R3
DB27A:  CLZ.W           R3, LR
DB27E:  ORN.W           R0, R2, R0
DB282:  MOVW            R2, #0x5A1
DB286:  MOVT            R1, #0x675C
DB28A:  MOVT            R2, #0x98A3
DB28E:  ANDS            R1, R0
DB290:  BIC.W           R0, R2, R0
DB294:  MOVS            R2, #0
DB296:  ADD             R0, R1
DB298:  STR.W           R12, [SP,#0x70+var_4C]
DB29C:  CMP             R4, #4
DB29E:  IT LT
DB2A0:  MOVLT           R2, #1
DB2A2:  LSRS            R3, R3, #5
DB2A4:  MOVS            R1, #0
DB2A6:  EORS            R2, R3
DB2A8:  CMP             R4, #3
DB2AA:  IT GT
DB2AC:  MOVGT           R1, #1
DB2AE:  MOV             R3, LR
DB2B0:  CMP.W           LR, #0
DB2B4:  IT NE
DB2B6:  MOVNE           R3, #1
DB2B8:  ORRS            R1, R3
DB2BA:  EOR.W           R3, R1, #1
DB2BE:  TST             R3, R2
DB2C0:  EOR.W           R1, R3, R2
DB2C4:  IT EQ
DB2C6:  CMPEQ           R1, #0
DB2C8:  BEQ.W           loc_DB440
DB2CC:  CMP             R0, #0x3C ; '<'
DB2CE:  BLT.W           loc_DBFFA
DB2D2:  LDR             R3, [SP,#0x70+var_58]
DB2D4:  MOVW            R0, #0xE9ED
DB2D8:  MOVW            R2, #0xE9AF
DB2DC:  MOVT            R0, #0x5A56
DB2E0:  ADDS            R1, R3, R0
DB2E2:  MOVT            R2, #0x60A3
DB2E6:  SUBS            R1, R1, R2
DB2E8:  CMP             R3, #4
DB2EA:  SUB.W           R0, R1, R0
DB2EE:  MOVW            R1, #0x11C6
DB2F2:  SUB.W           R0, R0, #3
DB2F6:  MOVT            R1, #0x7C5E
DB2FA:  ADD             R0, R1
DB2FC:  ADD             R0, R2
DB2FE:  SUB.W           R0, R0, R1
DB302:  BLT.W           loc_DBFFA
DB306:  LDR             R1, [SP,#0x70+var_60]
DB308:  MOVW            R12, #0x7C18
DB30C:  MOVW            LR, #0x7F4
DB310:  MOV.W           R8, #0
DB314:  ADDS            R1, #1
DB316:  MOVT            R12, #0x1DFB
DB31A:  MOVT            LR, #0xCB05
DB31E:  LDRB            R5, [R1]
DB320:  MOV             R2, #0xFFFFFFCC
DB324:  SUBS            R0, #1
DB326:  BIC.W           R10, R2, R5
DB32A:  MOV             R2, #0xFFFFFFB3
DB32E:  MVN.W           R11, R5
DB332:  MOV             R9, R5
DB334:  BFI.W           R9, R11, #0, #3
DB338:  EOR.W           R4, R9, #0x34 ; '4'
DB33C:  ORR.W           R4, R4, R10
DB340:  BIC.W           R2, R2, R4
DB344:  AND.W           R3, R4, #0x4C ; 'L'
DB348:  ADD             R2, R3
DB34A:  MOV.W           R3, #0x4C ; 'L'
DB34E:  BIC.W           R3, R3, R4
DB352:  EOR.W           R4, R3, R2
DB356:  AND.W           R2, R2, R3
DB35A:  MOV.W           R3, #0x7A ; 'z'
DB35E:  ORR.W           R2, R2, R4
DB362:  BIC.W           R3, R3, R5
DB366:  BIC.W           R4, R5, #0x7A ; 'z'
DB36A:  ADD             R3, R4
DB36C:  MOV             R4, #0xFFFFFFB6
DB370:  EOR.W           R3, R3, R4
DB374:  MOV             R4, #0xFFFFFFB9
DB378:  ORN.W           R3, R3, R5
DB37C:  BIC.W           R4, R4, R3
DB380:  AND.W           R5, R3, #0x46 ; 'F'
DB384:  ADD             R4, R5
DB386:  MOV             R5, #0xFFFFFF91
DB38A:  EOR.W           R4, R4, R2
DB38E:  EOR.W           R4, R4, #0x46 ; 'F'
DB392:  AND.W           R4, R4, R2
DB396:  BIC.W           R5, R5, R4
DB39A:  AND.W           R6, R4, #0x6E ; 'n'
DB39E:  ADD             R5, R6
DB3A0:  MOV.W           R6, #0x6B ; 'k'
DB3A4:  BIC.W           R6, R6, R2
DB3A8:  BIC.W           R2, R2, #0x6B ; 'k'
DB3AC:  ADD             R2, R6
DB3AE:  EOR.W           R2, R2, #0x6B ; 'k'
DB3B2:  ORR.W           R2, R2, R3
DB3B6:  MOV.W           R3, #0x6E ; 'n'
DB3BA:  BIC.W           R3, R3, R2
DB3BE:  BIC.W           R6, R2, #0x6E ; 'n'
DB3C2:  ADD             R3, R6
DB3C4:  ORN.W           R2, R2, R4
DB3C8:  EOR.W           R3, R3, R5
DB3CC:  MOV.W           R4, #0x79 ; 'y'
DB3D0:  ORN.W           R2, R3, R2
DB3D4:  EOR.W           R3, R2, #0x7F
DB3D8:  AND.W           R3, R3, R2
DB3DC:  BIC.W           R4, R4, R3
DB3E0:  AND.W           R5, R3, #0x86
DB3E4:  ADD             R4, R5
DB3E6:  MOV.W           R5, #0x5A ; 'Z'
DB3EA:  BIC.W           R5, R5, R2
DB3EE:  BIC.W           R2, R2, #0x5A ; 'Z'
DB3F2:  ADD             R2, R5
DB3F4:  EOR.W           R5, R2, #4
DB3F8:  EOR.W           R2, R2, #0x5A ; 'Z'
DB3FC:  ORN.W           R2, R2, #0x7F
DB400:  AND.W           R5, R5, #6
DB404:  AND.W           R6, R2, #0x79 ; 'y'
DB408:  ORN.W           R2, R2, R3
DB40C:  ADD             R5, R6
DB40E:  EOR.W           R4, R4, R5
DB412:  ORN.W           R2, R4, R2
DB416:  STRB.W          R2, [R1],#1
DB41A:  ADD.W           R2, R8, LR
DB41E:  SUB.W           R2, R2, R12
DB422:  SUB.W           R2, R2, LR
DB426:  ADD             R2, R12
DB428:  ADD.W           R8, R2, #1
DB42C:  BNE.W           loc_DB31E
DB430:  B.W             loc_DBFFA
DB434:  DCD __stack_chk_guard_ptr - 0xDA46E
DB438:  DCD x_ptr - 0xDB1C0
DB43C:  DCD y_ptr - 0xDB1D0
DB440:  CMP             R0, #0x3C ; '<'
DB442:  ITT GE
DB444:  LDRGE           R0, [SP,#0x70+var_58]
DB446:  CMPGE           R0, #1
DB448:  BLT.W           loc_DB7A4
DB44C:  LDR             R5, [SP,#0x70+var_5C]
DB44E:  MOV             R8, #0xFFFFFFCB
DB452:  LDR.W           R12, [SP,#0x70+var_58]
DB456:  LSRS            R0, R5, #1
DB458:  MVNS            R1, R5
DB45A:  BFI.W           R1, R0, #1, #1
DB45E:  MOV             R0, #0xFFFFFFFC
DB462:  EORS            R0, R1
DB464:  MOVS            R1, #9
DB466:  ORN.W           R0, R0, R5
DB46A:  BICS            R1, R0
DB46C:  BIC.W           R2, R0, #9
DB470:  ADD             R1, R2
DB472:  MOVS            R2, #0x25 ; '%'
DB474:  BICS            R2, R1
DB476:  BIC.W           R3, R1, #0x25 ; '%'
DB47A:  ADD             R2, R3
DB47C:  MOV             R3, #0xFFFFFFD2
DB480:  BICS            R3, R0
DB482:  ORR.W           R0, R0, #9
DB486:  AND.W           R6, R0, #0x25 ; '%'
DB48A:  ORN.W           R0, R0, R1
DB48E:  ADD             R3, R6
DB490:  EORS            R2, R3
DB492:  MOVS            R3, #1
DB494:  ORN.W           R0, R2, R0
DB498:  BICS            R3, R5
DB49A:  MVNS            R1, R0
DB49C:  LSRS            R2, R1, #4
DB49E:  BFI.W           R0, R2, #4, #2
DB4A2:  MOV             R2, #0xFFFFFFFE
DB4A6:  EORS            R2, R5
DB4A8:  ORRS            R2, R3
DB4AA:  ORN.W           R1, R1, R2
DB4AE:  MVNS            R3, R2
DB4B0:  EORS            R0, R3
DB4B2:  EOR.W           R0, R0, #0x30 ; '0'
DB4B6:  MOV             R3, #0xFFFFFF88
DB4BA:  BICS            R0, R2
DB4BC:  MOVS            R2, #0x77 ; 'w'
DB4BE:  BICS            R3, R0
DB4C0:  AND.W           R6, R0, #0x77 ; 'w'
DB4C4:  ADD             R3, R6
DB4C6:  BICS            R2, R1
DB4C8:  BIC.W           R6, R1, #0x77 ; 'w'
DB4CC:  ORN.W           R0, R1, R0
DB4D0:  ADD             R2, R6
DB4D2:  MOV             R1, #0xFFFFFFF7
DB4D6:  EORS            R2, R3
DB4D8:  ORN.W           R0, R2, R0
DB4DC:  MOV             R2, #0xFFFFFF91
DB4E0:  EORS            R1, R0
DB4E2:  ANDS            R1, R0
DB4E4:  BICS            R2, R1
DB4E6:  AND.W           R3, R1, #0x6E ; 'n'
DB4EA:  ADD             R2, R3
DB4EC:  MOVS            R3, #0x66 ; 'f'
DB4EE:  BICS            R3, R0
DB4F0:  ORR.W           R0, R0, #8
DB4F4:  BIC.W           R6, R0, #0x6E ; 'n'
DB4F8:  ORN.W           R0, R0, R1
DB4FC:  ADD             R3, R6
DB4FE:  MOV             R1, #0xFFFFFFCC
DB502:  EORS            R2, R3
DB504:  ORN.W           R0, R2, R0
DB508:  SUBS            R2, R1, R0
DB50A:  ADD.W           R3, R0, #0x33 ; '3'
DB50E:  AND.W           R6, R3, #5
DB512:  BIC.W           R1, R2, #5
DB516:  ADD             R1, R6
DB518:  MOV             R6, #0xFFFFFFFA
DB51C:  EORS            R1, R6
DB51E:  BIC.W           R5, R2, #0x67 ; 'g'
DB522:  AND.W           R6, R1, #0x67 ; 'g'
DB526:  AND.W           R1, R1, #0x5F ; '_'
DB52A:  ADD             R6, R5
DB52C:  MOV             R5, #0xFFFFFFC7
DB530:  EORS            R6, R5
DB532:  EOR.W           R3, R3, #0x48 ; 'H'
DB536:  ORRS            R1, R6
DB538:  MOV             R6, #0xFFFFFFEC
DB53C:  BIC.W           R5, R6, R1
DB540:  AND.W           R1, R1, #0x13
DB544:  ADD             R5, R1
DB546:  BIC.W           R2, R2, #0x48 ; 'H'
DB54A:  EOR.W           R1, R5, R6
DB54E:  EOR.W           R5, R5, #0x13
DB552:  ORR.W           R6, R1, #0x13
DB556:  AND.W           R4, R5, #8
DB55A:  AND.W           R6, R6, #0x77 ; 'w'
DB55E:  ORR.W           R5, R5, #0x64 ; 'd'
DB562:  ADD             R6, R4
DB564:  AND.W           R5, R5, #0x77 ; 'w'
DB568:  BIC.W           R4, R1, #0x7F
DB56C:  ORRS            R2, R3
DB56E:  MOV             R3, #0xFFFFFFEE
DB572:  ADD             R5, R4
DB574:  EORS            R6, R5
DB576:  BICS            R3, R2
DB578:  AND.W           R5, R2, #0x11
DB57C:  AND.W           R2, R2, #0x26 ; '&'
DB580:  ADD             R3, R5
DB582:  MOV             R5, #0xFFFFFF82
DB586:  EORS            R5, R3
DB588:  EOR.W           R3, R3, #0x11
DB58C:  ANDS            R5, R3
DB58E:  BIC.W           R3, R3, #0x26 ; '&'
DB592:  ADD             R2, R3
DB594:  MOV             R3, #0xFFFFFFD9
DB598:  EORS            R2, R3
DB59A:  RSB.W           R0, R0, #0xC
DB59E:  BIC.W           R3, R2, #0x6C ; 'l'
DB5A2:  EOR.W           R4, R3, R5
DB5A6:  ANDS            R3, R5
DB5A8:  ORRS            R3, R4
DB5AA:  BIC.W           R5, R6, R3
DB5AE:  BICS            R3, R6
DB5B0:  ADD             R3, R5
DB5B2:  LSRS            R6, R3, #1
DB5B4:  MVNS            R5, R3
DB5B6:  BFI.W           R5, R6, #1, #1
DB5BA:  EOR.W           R6, R1, R2
DB5BE:  ANDS            R1, R2
DB5C0:  ORRS            R1, R6
DB5C2:  MOV             R6, #0xFFFFFF94
DB5C6:  ORN.W           R3, R1, R3
DB5CA:  MVNS            R2, R1
DB5CC:  LSRS            R2, R2, #1
DB5CE:  BFI.W           R1, R2, #1, #1
DB5D2:  EORS            R1, R5
DB5D4:  ORN.W           R1, R1, R3
DB5D8:  EOR.W           R2, R1, #0x5A ; 'Z'
DB5DC:  AND.W           R3, R2, R1
DB5E0:  BIC.W           R1, R2, R1
DB5E4:  BIC.W           R5, R6, R3
DB5E8:  AND.W           R4, R3, #0x6B ; 'k'
DB5EC:  BIC.W           R2, R6, R1
DB5F0:  AND.W           R6, R1, #0x6B ; 'k'
DB5F4:  MVNS            R1, R1
DB5F6:  ADD             R5, R4
DB5F8:  ADD             R2, R6
DB5FA:  ORN.W           R1, R1, R3
DB5FE:  EORS            R2, R5
DB600:  BIC.W           R3, R0, #0x3B ; ';'
DB604:  ORN.W           R1, R2, R1
DB608:  MOVS            R2, #0x3B ; ';'
DB60A:  BICS            R2, R0
DB60C:  MOVS            R5, #0
DB60E:  ADD             R2, R3
DB610:  EOR.W           R2, R2, #0x2C ; ','
DB614:  ORN.W           R0, R2, R0
DB618:  MOVS            R2, #0x11
DB61A:  BICS            R2, R0
DB61C:  BIC.W           R3, R0, #0x11
DB620:  ADD             R2, R3
DB622:  MOV             R3, #0xFFFFFFA0
DB626:  EOR.W           R2, R2, #0x4E ; 'N'
DB62A:  BIC.W           R0, R3, R0
DB62E:  EOR.W           R3, R0, R2
DB632:  ANDS            R0, R2
DB634:  ORRS            R0, R3
DB636:  MOVS            R3, #0x48 ; 'H'
DB638:  ORN.W           R3, R3, R0
DB63C:  AND.W           R2, R0, #0x21 ; '!'
DB640:  BIC.W           R3, R3, #0x33 ; '3'
DB644:  ADD             R2, R3
DB646:  MOVS            R3, #0x12
DB648:  BICS            R3, R0
DB64A:  ORN.W           R0, R0, #0x7B ; '{'
DB64E:  BIC.W           R0, R0, #0x33 ; '3'
DB652:  ADD             R0, R3
DB654:  EORS            R0, R2
DB656:  BIC.W           R2, R0, R1
DB65A:  BIC.W           R0, R1, R0
DB65E:  ADD.W           R10, R0, R2
DB662:  MOV             R1, #0xFFFFFFA1
DB666:  EOR.W           R0, R10, #0x39 ; '9'
DB66A:  ORN.W           R6, R10, #0x7F
DB66E:  AND.W           R0, R0, R10
DB672:  BIC.W           R6, R6, #0x5E ; '^'
DB676:  BICS            R1, R0
DB678:  AND.W           R3, R0, #0x5E ; '^'
DB67C:  ADD             R1, R3
DB67E:  MOVS            R3, #0x18
DB680:  BIC.W           R3, R3, R10
DB684:  ORN.W           R0, R10, R0
DB688:  ADD             R3, R6
DB68A:  EORS            R1, R3
DB68C:  MOV             R3, #0xFFFFFFC6
DB690:  ORN.W           R0, R1, R0
DB694:  BICS            R3, R1
DB696:  AND.W           R0, R0, #0x39 ; '9'
DB69A:  ADD.W           R11, R3, R0
DB69E:  LDR             R0, [SP,#0x70+var_60]
DB6A0:  ADDS            R6, R0, #1
DB6A2:  LDRB.W          R9, [R6]
DB6A6:  MOV             R1, #0xFFFFFFDC
DB6AA:  MOV             R2, R10
DB6AC:  MVN.W           R3, R11
DB6B0:  BIC.W           R4, R8, R9
DB6B4:  ORN.W           R0, R8, R9
DB6B8:  EORS            R0, R4
DB6BA:  SUBS.W          R12, R12, #1
DB6BE:  BIC.W           R4, R1, R0
DB6C2:  AND.W           R0, R0, #0x23 ; '#'
DB6C6:  ADD             R0, R4
DB6C8:  ORR.W           R1, R10, R0
DB6CC:  MVN.W           R4, R0
DB6D0:  MOV.W           R4, R4,LSR#4
DB6D4:  BFI.W           R0, R4, #4, #3
DB6D8:  MVN.W           R4, R10
DB6DC:  MOV.W           R4, R4,LSR#4
DB6E0:  BFI.W           R2, R4, #4, #3
DB6E4:  EOR.W           R0, R0, R2
DB6E8:  AND.W           R2, R9, #0x45 ; 'E'
DB6EC:  ORN.W           R0, R0, R1
DB6F0:  MOV.W           R1, #0x33 ; '3'
DB6F4:  BIC.W           R1, R1, R0
DB6F8:  BIC.W           R0, R0, #0x33 ; '3'
DB6FC:  ADD             R0, R1
DB6FE:  MOV             R1, #0xFFFFFFCC
DB702:  EOR.W           LR, R0, R1
DB706:  MOV             R1, #0xFFFFFF8A
DB70A:  BIC.W           R1, R1, R9
DB70E:  EOR.W           R0, R0, #0x33 ; '3'
DB712:  ADD             R1, R2
DB714:  ORN.W           R2, R9, #0x30 ; '0'
DB718:  EOR.W           R1, R1, R2
DB71C:  MOV             R2, #0xFFFFFF82
DB720:  EOR.W           R4, R1, #4
DB724:  EOR.W           R2, R2, R1
DB728:  EOR.W           R1, R1, #0x42 ; 'B'
DB72C:  MOV.W           R4, R4,LSR#2
DB730:  BFI.W           R2, R4, #2, #2
DB734:  EOR.W           R2, R2, #0x2B ; '+'
DB738:  MOV.W           R4, R2,LSR#2
DB73C:  BFI.W           R1, R4, #2, #4
DB740:  MOV.W           R4, R11,LSR#2
DB744:  BFI.W           R3, R4, #2, #4
DB748:  EOR.W           R1, R1, R3
DB74C:  ORN.W           R1, R2, R1
DB750:  AND.W           R2, LR, R1
DB754:  BIC.W           R0, R0, R1
DB758:  EOR.W           R1, R1, LR
DB75C:  ADD             R0, R2
DB75E:  AND.W           R1, R1, LR
DB762:  EOR.W           R2, R1, R0
DB766:  AND.W           R0, R0, R1
DB76A:  ORR.W           R0, R0, R2
DB76E:  MOVW            R2, #0xA6D
DB772:  MOVW            R1, #0x4A24
DB776:  STRB.W          R0, [R6],#1
DB77A:  MOVT            R2, #0x7AB1
DB77E:  SUB.W           R0, R5, R2
DB782:  MOVT            R1, #0x27CE
DB786:  ADD             R0, R1
DB788:  ADD             R0, R2
DB78A:  MOV             R2, #0x3A48682A
DB792:  SUB.W           R0, R0, R2
DB796:  SUB.W           R0, R0, R1
DB79A:  ADD             R0, R2
DB79C:  ADD.W           R5, R0, #1
DB7A0:  BNE.W           loc_DB6A2
DB7A4:  LDR             R0, [SP,#0x70+var_58]
DB7A6:  MOVS            R2, #0
DB7A8:  STR             R2, [SP,#0x70+var_30]
DB7AA:  CMP             R0, #1
DB7AC:  STRD.W          R2, R2, [SP,#0x70+var_38]
DB7B0:  BLT.W           loc_DB956
DB7B4:  SUB.W           R10, R0, #1
DB7B8:  LDR             R0, [SP,#0x70+var_60]
DB7BA:  MOVW            R8, #0x3B91
DB7BE:  MOV.W           R12, #0
DB7C2:  ADD.W           R11, R0, #1
DB7C6:  MOVT            R8, #0xE8D8
DB7CA:  MOVS            R6, #0
DB7CC:  LDRB.W          R1, [R11]
DB7D0:  CMP             R12, R2
DB7D2:  SUB.W           R9, R1, #0x33 ; '3'
DB7D6:  STRB.W          R9, [SP,#0x70+var_44]
DB7DA:  BCS             loc_DB868
DB7DC:  LDR             R0, [SP,#0x70+var_4C]
DB7DE:  MOV             R1, #0xB52B3B53
DB7E6:  LDR             R2, [R0]
DB7E8:  MOV             R0, #0x2733DE14
DB7F0:  ADDS            R3, R2, R0
DB7F2:  SUBS            R3, R3, R1
DB7F4:  SUBS            R3, R3, R0
DB7F6:  MOVW            R0, #0x4308
DB7FA:  ADD             R3, R1
DB7FC:  MOVT            R0, #0xFDE8
DB800:  SUBS            R3, #1
DB802:  ORN.W           LR, R0, R0
DB806:  LDR             R0, [SP,#0x70+var_48]
DB808:  MULS            R2, R3
DB80A:  MOV             R3, #0xB18AD89C
DB812:  LDR             R4, [R0]
DB814:  BIC.W           R5, R2, R3
DB818:  BIC.W           R0, R3, R2
DB81C:  ADD             R0, R5
DB81E:  MVNS            R5, R3
DB820:  LSRS            R5, R5, #1
DB822:  BFI.W           R3, R5, #1, #0x1F
DB826:  MOVS            R5, #0
DB828:  EORS            R0, R3
DB82A:  MOVS            R3, #0
DB82C:  MVNS            R0, R0
DB82E:  ORN.W           R0, R0, R2
DB832:  BIC.W           R0, LR, R0
DB836:  CLZ.W           R2, R0
DB83A:  CMP             R0, #0
DB83C:  IT NE
DB83E:  MOVNE           R0, #1
DB840:  CMP             R4, #0xA
DB842:  IT LT
DB844:  MOVLT           R3, #1
DB846:  LSRS            R2, R2, #5
DB848:  CMP             R4, #9
DB84A:  IT GT
DB84C:  MOVGT           R5, #1
DB84E:  ANDS            R3, R0
DB850:  ORRS            R0, R5
DB852:  ANDS            R2, R5
DB854:  EOR.W           R0, R0, #1
DB858:  ORRS            R3, R2
DB85A:  TST             R0, R3
DB85C:  EOR.W           R2, R0, R3
DB860:  IT EQ
DB862:  CMPEQ           R2, #0
DB864:  BNE             loc_DB872
DB866:  B               loc_DB924
DB868:  ADD             R0, SP, #0x70+var_38
DB86A:  ADD             R1, SP, #0x70+var_44
DB86C:  BL              loc_DC73C
DB870:  B               loc_DB90E
DB872:  LDR             R1, [SP,#0x70+var_4C]
DB874:  MOV             R0, R12
DB876:  STRB.W          R9, [R0],#1
DB87A:  STR             R0, [SP,#0x70+var_34]
DB87C:  MOVW            R0, #0xC681
DB880:  LDR             R2, [R1]
DB882:  MOV             R1, #0xB4DFD94D
DB88A:  MOVT            R0, #0x23A5
DB88E:  ADDS            R3, R2, R1
DB890:  ORN.W           R0, R0, R0
DB894:  ADD             R3, R8
DB896:  SUBS            R3, R3, R1
DB898:  MOV             R1, #0x570D026D
DB8A0:  SUBS            R3, R3, R1
DB8A2:  SUB.W           R3, R3, R8
DB8A6:  ADD             R3, R1
DB8A8:  LDR             R1, [SP,#0x70+var_48]
DB8AA:  SUBS            R3, #1
DB8AC:  MULS            R2, R3
DB8AE:  LDR             R3, [R1]
DB8B0:  CMP             R3, #0xA
DB8B2:  MVN.W           R5, R2
DB8B6:  BFI.W           R5, R2, #0, #1
DB8BA:  MVN.W           R5, R5
DB8BE:  ORN.W           R2, R5, R2
DB8C2:  BIC.W           R0, R0, R2
DB8C6:  MOV.W           R5, #0
DB8CA:  CLZ.W           R2, R0
DB8CE:  IT LT
DB8D0:  MOVLT           R5, #1
DB8D2:  CMP             R0, #0
DB8D4:  IT NE
DB8D6:  MOVNE           R0, #1
DB8D8:  LSRS            R2, R2, #5
DB8DA:  CMP             R3, #9
DB8DC:  MOV.W           R3, #0
DB8E0:  ORR.W           R1, R2, R5
DB8E4:  EOR.W           R4, R2, R5
DB8E8:  IT GT
DB8EA:  MOVGT           R3, #1
DB8EC:  ANDS            R0, R5
DB8EE:  ANDS            R2, R3
DB8F0:  EOR.W           R1, R1, #1
DB8F4:  ORRS            R0, R2
DB8F6:  ORRS            R1, R4
DB8F8:  EOR.W           R2, R0, #1
DB8FC:  ORRS            R2, R1
DB8FE:  EOR.W           R1, R1, #1
DB902:  CMP             R0, R1
DB904:  EOR.W           R2, R2, #1
DB908:  IT EQ
DB90A:  CMPEQ           R2, #0
DB90C:  BEQ             loc_DB924
DB90E:  ADDS            R6, #1
DB910:  CMP.W           R10, #0
DB914:  BEQ             loc_DB92E
DB916:  LDRD.W          R12, R2, [SP,#0x70+var_34]
DB91A:  ADD.W           R11, R11, #1
DB91E:  SUB.W           R10, R10, #1
DB922:  B               loc_DB7CC
DB924:  MOV             R0, R12
DB926:  STRB.W          R9, [R0],#1
DB92A:  STR             R0, [SP,#0x70+var_34]
DB92C:  B               loc_DB872
DB92E:  LDRD.W          R1, R2, [SP,#0x70+var_38]
DB932:  SUBS            R0, R2, #1
DB934:  CMP             R1, R2
DB936:  IT NE
DB938:  CMPNE           R0, R1
DB93A:  BLS             loc_DB956
DB93C:  ADDS            R1, #1
DB93E:  LDRB.W          R2, [R1,#-1]
DB942:  LDRB            R3, [R0]
DB944:  STRB.W          R3, [R1,#-1]
DB948:  STRB.W          R2, [R0],#-1
DB94C:  ADDS            R2, R1, #1
DB94E:  CMP             R1, R0
DB950:  MOV             R1, R2
DB952:  BCC             loc_DB93E
DB954:  LDR             R2, [SP,#0x70+var_34]
DB956:  LDRB.W          R1, [R2,#-1]
DB95A:  LDR             R0, [SP,#0x70+var_38]
DB95C:  LDR.W           R9, [SP,#0x70+var_4C]
DB960:  CMP             R1, #0x65 ; 'e'
DB962:  BNE             loc_DB970
DB964:  LDRB            R1, [R0]
DB966:  MOVS            R3, #0x65 ; 'e'
DB968:  STRB            R3, [R0]
DB96A:  STRB.W          R1, [R2,#-1]
DB96E:  B               loc_DB980
DB970:  MOVS            R1, #0x41 ; 'A'
DB972:  STRB            R1, [R0]
DB974:  MOVS            R1, #0x52 ; 'R'
DB976:  LDR             R0, [SP,#0x70+var_38]
DB978:  STRB            R1, [R0,#1]
DB97A:  MOVS            R1, #0x5A ; 'Z'
DB97C:  LDR             R0, [SP,#0x70+var_38]
DB97E:  STRB            R1, [R0,#2]
DB980:  MOVW            R1, #0xA90C
DB984:  LDRD.W          R10, R0, [SP,#0x70+var_38]
DB988:  MOVT            R1, #0xDC48
DB98C:  ADD             R0, R1
DB98E:  MOVW            LR, #0x56F4
DB992:  SUB.W           R8, R0, R10
DB996:  MOVT            LR, #0x23B7
DB99A:  ADD.W           R11, R8, LR
DB99E:  CMN.W           R11, #0x10
DB9A2:  BCS.W           loc_DBDCC
DB9A6:  LDR.W           R2, [R9]
DB9AA:  CMP.W           R11, #0xB
DB9AE:  BCS             loc_DBA48
DB9B0:  MOVW            R0, #0xE729
DB9B4:  MOVW            R3, #0x87B2
DB9B8:  MOVT            R0, #0xC173
DB9BC:  ADDS            R1, R2, R0
DB9BE:  MOVT            R3, #0xD9B3
DB9C2:  SUBS            R1, R1, R3
DB9C4:  SUBS            R0, R1, R0
DB9C6:  MOV             R1, #0x398AE77F
DB9CE:  MOVW            LR, #0xC66F
DB9D2:  MVNS            R6, R1
DB9D4:  ADD             R0, R6
DB9D6:  ADD             R0, R1
DB9D8:  MOVW            R1, #0x6BC0
DB9DC:  ADD             R0, R3
DB9DE:  MOVT            R1, #0x2E1B
DB9E2:  MOVW            R12, #0xA4EC
DB9E6:  MOVT            LR, #0xCF67
DB9EA:  MULS            R0, R2
DB9EC:  LDR             R2, [SP,#0x70+var_48]
DB9EE:  MOVT            R12, #0xD6E8
DB9F2:  LDR             R2, [R2]
DB9F4:  BIC.W           R3, R0, R1
DB9F8:  BIC.W           R0, R1, R0
DB9FC:  ADD             R0, R3
DB9FE:  MVNS            R1, R1
DBA00:  EORS            R0, R1
DBA02:  MOV             R1, #0xFFFFFFFE
DBA06:  EORS            R1, R0
DBA08:  BIC.W           R0, R0, #1
DBA0C:  ORRS            R0, R1
DBA0E:  MOVS            R1, #0
DBA10:  SUBS.W          R0, R0, #0xFFFFFFFF
DBA14:  IT NE
DBA16:  MOVNE           R0, #1
DBA18:  CMP             R2, #9
DBA1A:  IT GT
DBA1C:  MOVGT           R1, #1
DBA1E:  ORR.W           R2, R0, R1
DBA22:  EOR.W           R6, R0, R1
DBA26:  MOVW            R1, #0x197B
DBA2A:  EOR.W           R0, R6, #1
DBA2E:  EOR.W           R5, R2, #1
DBA32:  ORRS            R0, R2
DBA34:  MOVT            R1, #0x8EC
DBA38:  CMP             R5, R6
DBA3A:  EOR.W           R3, R0, #1
DBA3E:  IT EQ
DBA40:  CMPEQ           R3, #0
DBA42:  BNE.W           loc_DBEF6
DBA46:  B               loc_DBF64
DBA48:  LDR.W           R2, [R9]
DBA4C:  MOVW            R3, #0xCC4B
DBA50:  MOVW            R5, #0xFB9C
DBA54:  MOVT            R3, #0xDB97
DBA58:  ADDS            R6, R2, R3
DBA5A:  MOVT            R5, #0x1C32
DBA5E:  ADD             R6, R5
DBA60:  LDR             R0, [SP,#0x70+var_48]
DBA62:  SUBS            R3, R6, R3
DBA64:  MOV             R6, #0xE3CD0463
DBA6C:  ADD             R3, R6
DBA6E:  LDR             R6, [R0]
DBA70:  MULS            R2, R3
DBA72:  MOV             R3, #0x653DD5FD
DBA7A:  STR.W           R10, [SP,#0x70+src]
DBA7E:  BIC.W           R5, R2, R3
DBA82:  BICS            R3, R2
DBA84:  ADD             R3, R5
DBA86:  MOV             R5, #0x653DD5FC
DBA8E:  EORS            R3, R5
DBA90:  ORN.W           R2, R3, R2
DBA94:  MOVS            R5, #0
DBA96:  SUBS.W          R3, R2, #0xFFFFFFFF
DBA9A:  ADD.W           R2, R2, #1
DBA9E:  IT NE
DBAA0:  MOVNE           R3, #1
DBAA2:  CMP             R6, #9
DBAA4:  IT GT
DBAA6:  MOVGT           R5, #1
DBAA8:  EOR.W           R6, R5, R3
DBAAC:  BIC.W           R4, R3, R6
DBAB0:  ORRS            R3, R5
DBAB2:  EOR.W           R1, R3, R4
DBAB6:  EOR.W           R4, R4, #1
DBABA:  ORRS            R3, R4
DBABC:  EOR.W           R1, R1, #1
DBAC0:  EOR.W           R3, R3, #1
DBAC4:  CLZ.W           R2, R2
DBAC8:  ORRS            R1, R3
DBACA:  EOR.W           R3, R1, #1
DBACE:  LSRS            R2, R2, #5
DBAD0:  ANDS            R1, R3
DBAD2:  ORRS            R6, R2
DBAD4:  EORS            R2, R5
DBAD6:  EOR.W           R4, R3, R1
DBADA:  ANDS            R1, R3
DBADC:  BIC.W           R5, R2, R6
DBAE0:  ORRS            R1, R4
DBAE2:  EOR.W           R4, R2, #1
DBAE6:  AND.W           R0, R4, R6
DBAEA:  ORRS            R6, R2
DBAEC:  ADD             R0, R5
DBAEE:  EOR.W           R0, R0, #1
DBAF2:  EOR.W           R5, R6, R0
DBAF6:  ORRS            R0, R6
DBAF8:  EOR.W           R0, R0, #1
DBAFC:  ORRS            R0, R5
DBAFE:  AND.W           R6, R1, R0
DBB02:  EOR.W           R1, R1, #1
DBB06:  EOR.W           R0, R0, #1
DBB0A:  ANDS            R0, R1
DBB0C:  EOR.W           R1, R3, R2
DBB10:  EOR.W           R1, R1, #1
DBB14:  ORRS            R0, R6
DBB16:  EOR.W           R2, R1, R4
DBB1A:  EOR.W           R0, R0, #1
DBB1E:  ANDS            R1, R2
DBB20:  EOR.W           R1, R1, #1
DBB24:  EOR.W           R2, R1, R0
DBB28:  ORRS            R0, R1
DBB2A:  EOR.W           R1, R0, R2
DBB2E:  EOR.W           R2, R2, #1
DBB32:  ORRS            R0, R2
DBB34:  EOR.W           R1, R1, #1
DBB38:  EOR.W           R0, R0, #1
DBB3C:  ORRS            R0, R1
DBB3E:  LSLS            R2, R0, #0x1F
DBB40:  CMP             R2, #0
DBB42:  BEQ             loc_DBB40
DBB44:  MOVW            R0, #0x3708
DBB48:  MOVW            R10, #0xDC78
DBB4C:  MOVT            R0, #0xBD5F
DBB50:  ADD.W           R1, R8, R0
DBB54:  SUBS            R0, R0, R1
DBB56:  MOV             R1, #0xFFFFFFF4
DBB5A:  SUBS            R1, R1, R0
DBB5C:  ADDS            R0, #0xB
DBB5E:  MOVT            R10, #0x89DC
DBB62:  ADD.W           LR, LR, #0x10
DBB66:  MOV             R2, R1
DBB68:  MVN.W           R6, R10
DBB6C:  BFI.W           R2, R0, #0, #4
DBB70:  EOR.W           R0, R2, R1
DBB74:  MOVW            R1, #0x7BF8
DBB78:  ANDS            R2, R0
DBB7A:  MOVT            R1, #0x339E
DBB7E:  EOR.W           R0, R2, R10
DBB82:  ANDS            R0, R2
DBB84:  MVN.W           R9, R2
DBB88:  EOR.W           R5, R9, R6
DBB8C:  BIC.W           R3, R0, R1
DBB90:  BIC.W           R4, R1, R0
DBB94:  BICS            R5, R2
DBB96:  ADD             R4, R3
DBB98:  BIC.W           R3, R5, R1
DBB9C:  BICS            R1, R5
DBB9E:  ADD             R1, R3
DBBA0:  MVNS            R3, R5
DBBA2:  ORN.W           R0, R3, R0
DBBA6:  EORS            R1, R4
DBBA8:  MOVW            R5, #0x2755
DBBAC:  ORN.W           R0, R1, R0
DBBB0:  MOVT            R5, #0xFF1D
DBBB4:  BIC.W           R1, R0, R5
DBBB8:  BIC.W           R0, R5, R0
DBBBC:  MOVW            R3, #0x936F
DBBC0:  ADD             R0, R1
DBBC2:  STR             R0, [SP,#0x70+var_50]
DBBC4:  MOVW            R0, #0x6E50
DBBC8:  MOVT            R3, #0xC250
DBBCC:  MOVT            R0, #0x3107
DBBD0:  ADD.W           R1, R8, R0
DBBD4:  SUBS            R1, R1, R3
DBBD6:  SUBS            R0, R1, R0
DBBD8:  ADD             R0, LR
DBBDA:  ADD             R0, R3
DBBDC:  MVNS            R4, R0
DBBDE:  LSRS            R3, R0, #4
DBBE0:  MOV             R0, R4
DBBE2:  BFI.W           R0, R3, #4, #0x1C
DBBE6:  EOR.W           R3, R0, R4
DBBEA:  ANDS            R0, R3
DBBEC:  MOV             R3, #0x93C8E41
DBBF4:  BIC.W           R4, R0, R3
DBBF8:  BIC.W           R1, R3, R0
DBBFC:  MVNS            R3, R3
DBBFE:  ADD             R1, R4
DBC00:  MOVW            R4, #0x2229
DBC04:  EORS            R1, R3
DBC06:  ORN.W           R0, R10, R0
DBC0A:  EOR.W           R3, R1, R6
DBC0E:  MOVT            R4, #0x7AF
DBC12:  ANDS            R3, R1
DBC14:  MVN.W           R10, R0
DBC18:  BIC.W           R6, R3, R4
DBC1C:  BIC.W           R12, R4, R3
DBC20:  ADD             R12, R6
DBC22:  AND.W           R6, R0, R4
DBC26:  BIC.W           R4, R10, R4
DBC2A:  ORN.W           R0, R0, R3
DBC2E:  ADD             R4, R6
DBC30:  EOR.W           R6, R12, R4
DBC34:  ORN.W           R0, R6, R0
DBC38:  BIC.W           R3, R0, R5
DBC3C:  BIC.W           R0, R5, R0
DBC40:  ADD             R0, R3
DBC42:  LDR             R3, [SP,#0x70+var_50]
DBC44:  EORS            R0, R3
DBC46:  MOV             R3, #0xB9824198
DBC4E:  BIC.W           R6, R0, R3
DBC52:  BIC.W           R5, R3, R0
DBC56:  MVNS            R0, R0
DBC58:  ADD             R6, R5
DBC5A:  EOR.W           R5, R9, R1
DBC5E:  BICS            R1, R2
DBC60:  MOVW            R2, #0x834E
DBC64:  ORRS            R1, R5
DBC66:  MOVT            R2, #0xC3E7
DBC6A:  BIC.W           R5, R1, R2
DBC6E:  BIC.W           R1, R2, R1
DBC72:  ADD             R1, R5
DBC74:  MVNS            R2, R2
DBC76:  EORS            R1, R2
DBC78:  MOVW            R5, #0xAB3F
DBC7C:  BIC.W           R2, R1, R3
DBC80:  BICS            R3, R1
DBC82:  ADD             R2, R3
DBC84:  ORN.W           R0, R0, R1
DBC88:  EORS            R2, R6
DBC8A:  MOVW            R1, #0xF58B
DBC8E:  ORN.W           R0, R2, R0
DBC92:  MOVT            R1, #0x99C
DBC96:  BIC.W           R2, R0, R1
DBC9A:  BIC.W           R0, R1, R0
DBC9E:  ADD             R0, R2
DBCA0:  MVNS            R1, R1
DBCA2:  EORS            R0, R1
DBCA4:  MOV             R1, #0x5FBFDC40
DBCAC:  BIC.W           R2, R0, R1
DBCB0:  BIC.W           R3, R1, R0
DBCB4:  MOVT            R5, #0x613A
DBCB8:  ADD             R2, R3
DBCBA:  MOV             R3, #0x9BAF4D5B
DBCC2:  SUB.W           R6, R8, R3
DBCC6:  SUBS            R6, R6, R5
DBCC8:  MVNS            R0, R0
DBCCA:  ADD             R6, LR
DBCCC:  ADD             R6, R5
DBCCE:  MOV             R5, #0x1C4F937A
DBCD6:  SUBS            R6, R6, R5
DBCD8:  ADD             R3, R6
DBCDA:  MOVW            R6, #0x7618
DBCDE:  ADD             R3, R5
DBCE0:  MOVT            R6, #0x881E
DBCE4:  BIC.W           R5, R3, R6
DBCE8:  BIC.W           R3, R6, R3
DBCEC:  ADD             R3, R5
DBCEE:  MVNS            R6, R6
DBCF0:  EORS            R3, R6
DBCF2:  BIC.W           R6, R3, R1
DBCF6:  BICS            R1, R3
DBCF8:  ADD             R1, R6
DBCFA:  ORN.W           R0, R0, R3
DBCFE:  EORS            R1, R2
DBD00:  ORN.W           R0, R1, R0
DBD04:  MOV             R1, #0x8B1A7662
DBD0C:  BIC.W           R2, R0, R1
DBD10:  BIC.W           R0, R1, R0
DBD14:  MVNS            R1, R1
DBD16:  ADD             R0, R2
DBD18:  EOR.W           R8, R0, R1
DBD1C:  MOV             R0, R8; unsigned int
DBD1E:  BLX             j__Znwj; operator new(uint)
DBD22:  MOV             R4, R0
DBD24:  STRD.W          R11, R0, [SP,#0x70+var_40]
DBD28:  MOVW            R0, #0xA34A
DBD2C:  MVN.W           R2, R8
DBD30:  MOVT            R0, #0x731E
DBD34:  EOR.W           R1, R8, R0
DBD38:  EORS            R0, R2
DBD3A:  AND.W           R1, R1, R8
DBD3E:  LDR.W           R10, [SP,#0x70+src]
DBD42:  MVNS            R0, R0
DBD44:  BIC.W           R0, R0, R8
DBD48:  EOR.W           R3, R0, R1
DBD4C:  ANDS            R0, R1
DBD4E:  MOVW            R1, #0x5CB4
DBD52:  ORRS            R0, R3
DBD54:  MOVT            R1, #0x8CE1
DBD58:  MOVW            R3, #0xA34B
DBD5C:  ANDS            R1, R0
DBD5E:  MOVT            R3, #0x731E
DBD62:  BIC.W           R0, R3, R0
DBD66:  ADD             R0, R1
DBD68:  MOV             R1, #0x7A75C4EB
DBD70:  BIC.W           R3, R0, R1
DBD74:  BIC.W           R6, R1, R0
DBD78:  MVNS            R0, R0
DBD7A:  ADD             R3, R6
DBD7C:  MOV             R6, #0x9A28DF7E
DBD84:  BICS            R2, R6
DBD86:  AND.W           R6, R6, R8
DBD8A:  ADD             R2, R6
DBD8C:  MOV             R6, #0x65D72080
DBD94:  EORS            R2, R6
DBD96:  MOV             R6, #0xFFFFFFFE
DBD9A:  BIC.W           R6, R6, R8
DBD9E:  ORRS            R2, R6
DBDA0:  MOV             R6, #0xD19D0CF6
DBDA8:  BIC.W           R5, R2, R6
DBDAC:  BIC.W           R2, R6, R2
DBDB0:  MVNS            R6, R6
DBDB2:  ADD             R2, R5
DBDB4:  EORS            R2, R6
DBDB6:  BIC.W           R6, R2, R1
DBDBA:  BICS            R1, R2
DBDBC:  ADD             R1, R6
DBDBE:  ORN.W           R0, R0, R2
DBDC2:  EORS            R1, R3
DBDC4:  ORN.W           R0, R1, R0
DBDC8:  STR             R0, [SP,#0x70+var_44]
DBDCA:  B               loc_DBF74
DBDCC:  ADD             R0, SP, #0x70+var_44
DBDCE:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
DBDD2:  B               loc_DBDD4
DBDD4:  LDR             R0, [SP,#0x70+var_38]; void *
DBDD6:  CBZ             R0, loc_DBDDE
DBDD8:  STR             R0, [SP,#0x70+var_34]
DBDDA:  BLX             j__ZdlPv; operator delete(void *)
DBDDE:  LDR             R0, [SP,#0x70+var_4C]
DBDE0:  MOV             R1, #0xC5837CCB
DBDE8:  MOV             R2, #0x3A7C8334
DBDF0:  MOVS            R6, #0
DBDF2:  LDR             R0, [R0]
DBDF4:  ADD             R1, R0
DBDF6:  ADD             R1, R2
DBDF8:  LDR             R2, [SP,#0x70+var_48]
DBDFA:  MULS            R0, R1
DBDFC:  MOV             R1, #0x35A7208E
DBE04:  LDR             R2, [R2]
DBE06:  BIC.W           R3, R0, R1
DBE0A:  BIC.W           R0, R1, R0
DBE0E:  ADD             R0, R3
DBE10:  MVNS            R1, R1
DBE12:  EORS            R0, R1
DBE14:  MOV             R1, #0xFFFFFFFE
DBE18:  EORS            R1, R0
DBE1A:  BIC.W           R0, R0, #1
DBE1E:  ORRS            R0, R1
DBE20:  MOVS            R3, #0
DBE22:  SUBS.W          R1, R0, #0xFFFFFFFF
DBE26:  ADD.W           R0, R0, #1
DBE2A:  CLZ.W           R0, R0
DBE2E:  IT NE
DBE30:  MOVNE           R1, #1
DBE32:  CMP             R2, #9
DBE34:  IT GT
DBE36:  MOVGT           R6, #1
DBE38:  LSRS            R0, R0, #5
DBE3A:  CMP             R2, #0xA
DBE3C:  IT LT
DBE3E:  MOVLT           R3, #1
DBE40:  ORRS            R1, R6
DBE42:  EORS            R0, R3
DBE44:  EOR.W           R2, R1, R0
DBE48:  EOR.W           R0, R0, #1
DBE4C:  ORRS            R0, R1
DBE4E:  EOR.W           R2, R2, #1
DBE52:  EOR.W           R0, R0, #1
DBE56:  ORRS            R0, R2
DBE58:  CMP             R0, #0
DBE5A:  BEQ             loc_DBE58
DBE5C:  LDRB.W          R0, [SP,#0x70+var_2C]
DBE60:  MOVS            R1, #0xFE
DBE62:  LDR.W           R9, [SP,#0x70+var_4C]
DBE66:  BICS            R1, R0
DBE68:  EOR.W           R0, R0, #1
DBE6C:  ORRS            R0, R1
DBE6E:  CMP             R0, #0xFF
DBE70:  BEQ.W           loc_DC6D2
DBE74:  LDR.W           R0, [R9]
DBE78:  MOVW            R1, #0xE1A7
DBE7C:  MOVW            R3, #0xBE3E
DBE80:  MOVT            R1, #0x2DB6
DBE84:  ADDS            R2, R0, R1
DBE86:  MOVT            R3, #0x1C5
DBE8A:  ADD             R2, R3
DBE8C:  MVNS            R3, R3
DBE8E:  SUBS            R1, R2, R1
DBE90:  MOV             R2, #0xAE4BCAA1
DBE98:  SUBS            R1, R1, R2
DBE9A:  ADD             R1, R3
DBE9C:  MOVW            R4, #0xDA40
DBEA0:  ADD             R1, R2
DBEA2:  MOVW            R8, #0xB1DC
DBEA6:  MOVW            R6, #0x9FA6
DBEAA:  MOVT            R4, #0x2ECA
DBEAE:  MULS            R0, R1
DBEB0:  LDR             R1, [SP,#0x70+var_48]
DBEB2:  MOVT            R8, #0x32CC
DBEB6:  MOVT            R6, #0x4839
DBEBA:  LDR             R1, [R1]
DBEBC:  CMP             R1, #0xA
DBEBE:  MVN.W           R2, R0
DBEC2:  BFI.W           R2, R0, #0, #1
DBEC6:  MVN.W           R2, R2
DBECA:  ORN.W           R0, R2, R0
DBECE:  ADD.W           R0, R0, #1
DBED2:  MOV.W           R2, #0
DBED6:  CLZ.W           R0, R0
DBEDA:  IT LT
DBEDC:  MOVLT           R2, #1
DBEDE:  LSRS            R0, R0, #5
DBEE0:  EOR.W           R1, R2, R0
DBEE4:  BICS            R2, R1
DBEE6:  TST             R2, R1
DBEE8:  EOR.W           R0, R2, R1
DBEEC:  IT EQ
DBEEE:  CMPEQ           R0, #0
DBEF0:  BNE.W           loc_DC654
DBEF4:  B               loc_DC6CA
DBEF6:  LDR.W           R3, [R9]
DBEFA:  MVN.W           R5, LR
DBEFE:  LDR             R0, [SP,#0x70+var_48]
DBF00:  ADD.W           R6, R3, LR
DBF04:  ADD             R6, R5
DBF06:  LDR             R5, [R0]
DBF08:  MOV             R0, R1
DBF0A:  MULS            R3, R6
DBF0C:  MOV.W           R6, R11,LSL#1
DBF10:  STRB.W          R6, [SP,#0x70+var_44]
DBF14:  ORN.W           R6, R12, R12
DBF18:  BIC.W           R4, R3, R1
DBF1C:  BIC.W           R2, R1, R3
DBF20:  ADD             R2, R4
DBF22:  MVNS            R4, R1
DBF24:  LSRS            R4, R4, #1
DBF26:  BFI.W           R0, R4, #1, #0x1F
DBF2A:  ADD             R4, SP, #0x70+var_44
DBF2C:  EORS            R0, R2
DBF2E:  MOVS            R2, #0
DBF30:  ADDS            R4, #1
DBF32:  MVNS            R0, R0
DBF34:  ORN.W           R0, R0, R3
DBF38:  BIC.W           R0, R6, R0
DBF3C:  CMP             R0, #0
DBF3E:  IT NE
DBF40:  MOVNE           R0, #1
DBF42:  CMP             R5, #9
DBF44:  IT GT
DBF46:  MOVGT           R2, #1
DBF48:  EOR.W           R3, R2, R0
DBF4C:  ANDS            R0, R2
DBF4E:  ORRS            R0, R3
DBF50:  EOR.W           R2, R3, #1
DBF54:  ORR.W           R3, R2, R0
DBF58:  CMP             R2, R0
DBF5A:  EOR.W           R3, R3, #1
DBF5E:  IT EQ
DBF60:  CMPEQ           R3, #0
DBF62:  BNE             loc_DBF6E
DBF64:  MOV.W           R0, R11,LSL#1
DBF68:  STRB.W          R0, [SP,#0x70+var_44]
DBF6C:  B               loc_DBEF6
DBF6E:  CMP.W           R11, #0
DBF72:  BEQ             loc_DBF7E
DBF74:  MOV             R0, R4; dest
DBF76:  MOV             R1, R10; src
DBF78:  MOV             R2, R11; n
DBF7A:  BLX             j_memcpy
DBF7E:  MOVS            R0, #0
DBF80:  LDRD.W          R2, R1, [SP,#0x70+var_28]
DBF84:  STRB.W          R0, [R4,R11]
DBF88:  LDRB.W          R0, [SP,#0x70+var_2C]
DBF8C:  EOR.W           R6, R0, #0xFF
DBF90:  AND.W           R3, R0, #1
DBF94:  AND.W           R5, R6, #0xFE
DBF98:  ADD             R3, R5
DBF9A:  EORS            R6, R3
DBF9C:  ANDS            R3, R6
DBF9E:  ADD             R3, SP, #0x70+var_2C
DBFA0:  ITT EQ
DBFA2:  ADDEQ           R1, R3, #1
DBFA4:  LSREQ           R2, R0, #1
DBFA6:  ADD             R0, SP, #0x70+var_44
DBFA8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
DBFAC:  LDRB.W          R0, [SP,#0x70+var_44]
DBFB0:  MOVS            R1, #0x50 ; 'P'
DBFB2:  BICS            R1, R0
DBFB4:  AND.W           R0, R0, #0xAF
DBFB8:  ADD             R0, R1
DBFBA:  EOR.W           R1, R0, #0x21 ; '!'
DBFBE:  EOR.W           R0, R0, #0x50 ; 'P'
DBFC2:  AND.W           R2, R0, #0xCE
DBFC6:  AND.W           R1, R1, #0x31 ; '1'
DBFCA:  ADD             R1, R2
DBFCC:  ORR.W           R0, R0, #1
DBFD0:  EOR.W           R1, R1, #0x30 ; '0'
DBFD4:  EOR.W           R0, R0, #0xFF
DBFD8:  ORRS            R0, R1
DBFDA:  MOVS            R1, #0x8C
DBFDC:  BICS            R1, R0
DBFDE:  AND.W           R0, R0, #0x73 ; 's'
DBFE2:  ADD             R0, R1
DBFE4:  TEQ.W           R0, #0x73
DBFE8:  ITT NE
DBFEA:  LDRNE           R0, [SP,#0x70+var_3C]; void *
DBFEC:  BLXNE           j__ZdlPv; operator delete(void *)
DBFF0:  LDR             R0, [SP,#0x70+var_38]; void *
DBFF2:  CBZ             R0, loc_DBFFA
DBFF4:  STR             R0, [SP,#0x70+var_34]
DBFF6:  BLX             j__ZdlPv; operator delete(void *)
DBFFA:  LDR.W           LR, [SP,#0x70+var_58]
DBFFE:  LDR             R4, [SP,#0x70+var_54]
DC000:  CMP.W           LR, #1
DC004:  BLT.W           loc_DC48E
DC008:  LDR             R0, [SP,#0x70+var_4C]
DC00A:  MOVW            R1, #0xD069
DC00E:  MOVW            R3, #0xD0F8
DC012:  MOVT            R1, #0x19DF
DC016:  MOVT            R3, #0xD0CA
DC01A:  LDR             R0, [R0]
DC01C:  ADDS            R2, R0, R1
DC01E:  SUBS            R2, R3, R2
DC020:  ADDS            R2, #1
DC022:  ADD             R1, R2
DC024:  LDR             R2, [SP,#0x70+var_48]
DC026:  SUBS            R1, R3, R1
DC028:  MULS            R0, R1
DC02A:  MOV             R1, #0xF6D483F8
DC032:  LDR             R2, [R2]
DC034:  CMP             R2, #0xA
DC036:  BIC.W           R3, R0, R1
DC03A:  BIC.W           R0, R1, R0
DC03E:  ADD             R0, R3
DC040:  MVN.W           R1, R1
DC044:  EOR.W           R0, R0, R1
DC048:  MOV             R1, #0xFFFFFFFE
DC04C:  EOR.W           R1, R1, R0
DC050:  BIC.W           R0, R0, #1
DC054:  ORR.W           R0, R0, R1
DC058:  MOV             R1, #0x12EB1085
DC060:  BIC.W           R3, R0, R1
DC064:  BIC.W           R0, R1, R0
DC068:  MVN.W           R1, R1
DC06C:  ADD             R0, R3
DC06E:  EOR.W           R0, R0, R1
DC072:  MOV.W           R1, #0
DC076:  CLZ.W           R0, R0
DC07A:  IT LT
DC07C:  MOVLT           R1, #1
DC07E:  LSRS            R0, R0, #5
DC080:  EORS            R0, R1
DC082:  EOR.W           R0, R0, #1
DC086:  ANDS            R1, R0
DC088:  EOR.W           R1, R1, #1
DC08C:  EOR.W           R2, R1, R0
DC090:  ORRS            R0, R1
DC092:  EOR.W           R0, R0, #1
DC096:  ORRS            R0, R2
DC098:  CMP             R0, #0
DC09A:  BEQ             loc_DC098
DC09C:  LDR             R0, [SP,#0x70+var_60]
DC09E:  MOVS            R2, #0
DC0A0:  LDR             R1, [SP,#0x70+var_64]
DC0A2:  MOVS            R3, #0xB
DC0A4:  LDR.W           R12, [SP,#0x70+var_5C]
DC0A8:  ADD.W           R8, R0, #1
DC0AC:  LDR             R0, [R1]
DC0AE:  STR             R0, [SP,#0x70+var_4C]
DC0B0:  BIC.W           R0, R3, R4
DC0B4:  STR             R0, [SP,#0x70+var_50]
DC0B6:  LDRB.W          R3, [R8]
DC0BA:  MOV             R5, #0xFFFFFF93
DC0BE:  LDR             R0, [SP,#0x70+var_4C]
DC0C0:  CMP.W           R12, #0
DC0C4:  LDR             R1, [SP,#0x70+var_50]
DC0C6:  STR             R2, [SP,#0x70+var_48]
DC0C8:  LDRB            R0, [R0,R3]
DC0CA:  BIC.W           R3, R4, #0xB
DC0CE:  ADD             R3, R1
DC0D0:  EOR.W           R3, R3, #0xB
DC0D4:  ORN.W           R1, R0, R4
DC0D8:  ORN.W           R3, R3, R0
DC0DC:  MOV             R4, #0xFFFFFFD6
DC0E0:  MVN.W           R6, R3
DC0E4:  MVN.W           R1, R1
DC0E8:  EOR.W           R6, R6, R1
DC0EC:  BIC.W           R1, R1, R3
DC0F0:  ORR.W           R11, R1, R6
DC0F4:  MOV.W           R1, #0x62 ; 'b'
DC0F8:  BIC.W           R1, R1, R11
DC0FC:  BIC.W           R3, R11, #0x62 ; 'b'
DC100:  ADD             R1, R3
DC102:  MOV             R3, #0xFFFFFFDD
DC106:  EOR.W           R1, R1, R3
DC10A:  MVN.W           R10, R11
DC10E:  EOR.W           R3, R1, R10
DC112:  AND.W           R1, R1, R3
DC116:  EOR.W           R3, R1, R4
DC11A:  BIC.W           R3, R3, R1
DC11E:  BIC.W           R6, R5, R3
DC122:  AND.W           R2, R3, #0x6C ; 'l'
DC126:  ADD             R2, R6
DC128:  ORN.W           R6, R4, R1
DC12C:  AND.W           R5, R1, #0x28 ; '('
DC130:  BIC.W           R4, R6, #0x6C ; 'l'
DC134:  ADD             R4, R5
DC136:  ORN.W           R3, R6, R3
DC13A:  EOR.W           R2, R2, R4
DC13E:  MOV.W           R4, #0x56 ; 'V'
DC142:  BIC.W           R4, R4, R2
DC146:  ORN.W           R2, R2, R3
DC14A:  BIC.W           R2, R2, #0x56 ; 'V'
DC14E:  MOV.W           R3, #0x23 ; '#'
DC152:  ADD             R2, R4
DC154:  BIC.W           R5, R1, #0x4F ; 'O'
DC158:  BIC.W           R3, R3, R2
DC15C:  BIC.W           R4, R2, #0x23 ; '#'
DC160:  ADD             R3, R4
DC162:  MOV.W           R4, #0x4F ; 'O'
DC166:  BIC.W           R4, R4, R1
DC16A:  MOVW            R6, #0x4772
DC16E:  ADD             R4, R5
DC170:  MOV             R5, #0xFFFFFFCF
DC174:  EOR.W           R4, R4, R5
DC178:  MOV.W           R5, #0x7F
DC17C:  BIC.W           R1, R5, R1
DC180:  MOVT            R6, #0xC14D
DC184:  ORR.W           R1, R1, R4
DC188:  MOV.W           R4, #0x42 ; 'B'
DC18C:  BIC.W           R4, R4, R1
DC190:  BIC.W           R1, R1, #0x42 ; 'B'
DC194:  ADD             R1, R4
DC196:  MOV             R4, #0xFFFFFF9C
DC19A:  EOR.W           R4, R4, R1
DC19E:  EOR.W           R1, R1, #0x42 ; 'B'
DC1A2:  AND.W           R5, R1, #0x23 ; '#'
DC1A6:  BIC.W           R4, R4, #0x23 ; '#'
DC1AA:  ADD             R4, R5
DC1AC:  ORN.W           R1, R1, R2
DC1B0:  EOR.W           R3, R3, R4
DC1B4:  MOV             R4, #0xFFFFFF8A
DC1B8:  ORN.W           R9, R3, R1
DC1BC:  EOR.W           R1, R9, R4
DC1C0:  BIC.W           R2, R4, R9
DC1C4:  AND.W           R1, R1, R9
DC1C8:  EOR.W           R3, R2, R1
DC1CC:  AND.W           R1, R1, R2
DC1D0:  MOV             R2, #0xFFFFFFE9
DC1D4:  ORR.W           R1, R1, R3
DC1D8:  BIC.W           R2, R2, R11
DC1DC:  AND.W           R3, R11, #0x16
DC1E0:  ADD             R2, R3
DC1E2:  EOR.W           R3, R2, R10
DC1E6:  AND.W           R2, R2, R3
DC1EA:  EOR.W           R3, R2, R4
DC1EE:  BIC.W           R4, R4, R2
DC1F2:  AND.W           R3, R3, R2
DC1F6:  EOR.W           R5, R4, R3
DC1FA:  AND.W           R3, R3, R4
DC1FE:  ORR.W           R3, R3, R5
DC202:  MVN.W           R5, R9
DC206:  BIC.W           R4, R3, R1
DC20A:  BIC.W           R1, R1, R3
DC20E:  ADD             R1, R4
DC210:  MOV             R3, #0xFFFFFF8D
DC214:  BIC.W           R3, R3, R1
DC218:  AND.W           R4, R1, #0x72 ; 'r'
DC21C:  ADD             R3, R4
DC21E:  MOV.W           R4, R2,LSR#4
DC222:  MVN.W           R2, R2
DC226:  BFI.W           R2, R4, #4, #1
DC22A:  EOR.W           R2, R2, #0x10
DC22E:  BIC.W           R4, R2, R9
DC232:  EOR.W           R2, R2, R5
DC236:  ORR.W           R2, R2, R4
DC23A:  MOV             R9, #0x8DA9DB8D
DC242:  MVN.W           R4, R2
DC246:  MOV.W           R4, R4,LSR#5
DC24A:  BFI.W           R2, R4, #5, #2
DC24E:  EOR.W           R4, R2, #0x12
DC252:  EOR.W           R2, R2, #0x60 ; '`'
DC256:  AND.W           R4, R4, #0x72 ; 'r'
DC25A:  BIC.W           R5, R2, #0x72 ; 'r'
DC25E:  ADD             R4, R5
DC260:  ORN.W           R1, R2, R1
DC264:  EOR.W           R3, R3, R4
DC268:  MOV.W           R5, #0x28 ; '('
DC26C:  ORN.W           R1, R3, R1
DC270:  MOV             R3, #0xFFFFFFFA
DC274:  EOR.W           R2, R1, #0x28 ; '('
DC278:  BIC.W           R2, R2, R1
DC27C:  BIC.W           R3, R3, R2
DC280:  AND.W           R4, R2, #5
DC284:  ADD             R3, R4
DC286:  AND.W           R4, R1, #5
DC28A:  ORN.W           R1, R5, R1
DC28E:  BIC.W           R5, R1, #5
DC292:  ORN.W           R1, R1, R2
DC296:  ADD             R4, R5
DC298:  MOV.W           R5, #0x4E ; 'N'
DC29C:  EOR.W           R3, R3, R4
DC2A0:  ORN.W           R1, R3, R1
DC2A4:  AND.W           R3, R11, #0x3A ; ':'
DC2A8:  BIC.W           R2, R5, R1
DC2AC:  BIC.W           R1, R1, #0x4E ; 'N'
DC2B0:  ADD             R1, R2
DC2B2:  MOV             R2, #0xFFFFFFC5
DC2B6:  BIC.W           R2, R2, R11
DC2BA:  ADD             R2, R3
DC2BC:  EOR.W           R3, R2, #0x3A ; ':'
DC2C0:  EOR.W           R2, R2, #0x44 ; 'D'
DC2C4:  BIC.W           R4, R3, #0x4E ; 'N'
DC2C8:  AND.W           R2, R2, #0x4E ; 'N'
DC2CC:  ADD             R2, R4
DC2CE:  AND.W           R3, R3, #0x56 ; 'V'
DC2D2:  EOR.W           R2, R2, #0x18
DC2D6:  ORR.W           R2, R2, R3
DC2DA:  MOV.W           R3, #0x45 ; 'E'
DC2DE:  ORR.W           R4, R2, #0x28 ; '('
DC2E2:  BIC.W           R3, R3, R2
DC2E6:  BIC.W           R4, R4, #0x45 ; 'E'
DC2EA:  ADD             R3, R4
DC2EC:  MOV             R4, #0xFFFFFF92
DC2F0:  ORN.W           R2, R4, R2
DC2F4:  BIC.W           R2, R2, #0x45 ; 'E'
DC2F8:  EOR.W           R2, R2, R3
DC2FC:  BIC.W           R3, R5, R2
DC300:  BIC.W           R2, R2, #0x4E ; 'N'
DC304:  ADD             R2, R3
DC306:  MOV.W           R3, #0x44 ; 'D'
DC30A:  EOR.W           R1, R1, R2
DC30E:  MOV             R5, #0xFFFFFFFB
DC312:  EOR.W           R2, R1, #0x4C ; 'L'
DC316:  AND.W           R2, R2, R1
DC31A:  BIC.W           R3, R3, R2
DC31E:  AND.W           R4, R2, #0xBB
DC322:  ADD             R3, R4
DC324:  MOV.W           R4, #0x48 ; 'H'
DC328:  BIC.W           R4, R4, R1
DC32C:  AND.W           R1, R1, #4
DC330:  ADD             R1, R4
DC332:  AND.W           R4, R1, #8
DC336:  EOR.W           R1, R1, R5
DC33A:  AND.W           R5, R1, #0x44 ; 'D'
DC33E:  ORN.W           R1, R1, R2
DC342:  ADD             R4, R5
DC344:  BIC.W           R5, R6, R12
DC348:  EOR.W           R3, R3, R4
DC34C:  IT NE
DC34E:  ORNNE.W         R0, R3, R1
DC352:  MOVW            R3, #0x298A
DC356:  STRB.W          R0, [R8],#1
DC35A:  MOVT            R3, #0xC0D
DC35E:  BIC.W           R1, R9, R3
DC362:  BIC.W           R2, R3, R9
DC366:  MOVW            R0, #0x8F66
DC36A:  ADD             R1, R2
DC36C:  MVNS            R2, R3
DC36E:  EOR.W           R3, R1, R2
DC372:  MVN.W           R1, R12
DC376:  MOVT            R0, #0x2584
DC37A:  ORN.W           R2, R0, R0
DC37E:  ORN.W           R1, R1, R3
DC382:  MOVW            R0, #0xAA85
DC386:  BIC.W           R1, R2, R1
DC38A:  MOVT            R0, #0x1A79
DC38E:  BIC.W           R2, R1, R0
DC392:  BIC.W           R4, R0, R1
DC396:  ADD             R2, R4
DC398:  BIC.W           R4, R12, R6
DC39C:  ADD             R4, R5
DC39E:  MVNS            R5, R6
DC3A0:  EORS            R4, R5
DC3A2:  SUBS.W          LR, LR, #1
DC3A6:  EOR.W           R4, R4, R9
DC3AA:  BIC.W           R4, R9, R4
DC3AE:  BIC.W           R5, R4, R0
DC3B2:  BIC.W           R6, R0, R4
DC3B6:  MVN.W           R4, R4
DC3BA:  ADD             R5, R6
DC3BC:  ORN.W           R1, R4, R1
DC3C0:  ORN.W           R4, R0, R0
DC3C4:  BIC.W           R1, R4, R1
DC3C8:  EOR.W           R2, R2, R5
DC3CC:  MOVW            R6, #0x94A7
DC3D0:  ORR.W           R1, R1, R2
DC3D4:  MOVW            R0, #0x4ABC
DC3D8:  MOVT            R6, #0x3941
DC3DC:  BIC.W           R2, R1, R6
DC3E0:  BIC.W           R1, R6, R1
DC3E4:  ADD.W           R12, R1, R2
DC3E8:  MOVT            R0, #0x861D
DC3EC:  ORN.W           R1, R0, R0
DC3F0:  MOVW            R0, #0x6CC4
DC3F4:  AND.W           R1, R1, R3
DC3F8:  MOVW            R4, #0xD528
DC3FC:  AND.W           R1, R1, #1
DC400:  MOVT            R0, #0x66A
DC404:  BIC.W           R2, R1, R0
DC408:  BIC.W           R3, R0, R1
DC40C:  MOVT            R4, #0x21F9
DC410:  ADD             R2, R3
DC412:  MVN.W           R3, R4
DC416:  BFI.W           R4, R3, #0, #1
DC41A:  EOR.W           R3, R3, R4
DC41E:  MOV             R4, #0x8290774
DC426:  MVN.W           R3, R3
DC42A:  ORN.W           R4, R4, R4
DC42E:  ORN.W           R3, R3, R9
DC432:  BIC.W           R3, R4, R3
DC436:  BIC.W           R4, R3, R0
DC43A:  BIC.W           R5, R0, R3
DC43E:  MVN.W           R3, R3
DC442:  ADD             R4, R5
DC444:  ORN.W           R1, R3, R1
DC448:  ORN.W           R3, R0, R0
DC44C:  EOR.W           R2, R2, R4
DC450:  BIC.W           R1, R3, R1
DC454:  ORR.W           R1, R1, R2
DC458:  MOVW            R0, #0xDDC6
DC45C:  BIC.W           R2, R1, R6
DC460:  BIC.W           R1, R6, R1
DC464:  ADD             R1, R2
DC466:  MOVW            R2, #0xCB84
DC46A:  EOR.W           R12, R12, R1
DC46E:  LDR             R1, [SP,#0x70+var_48]
DC470:  MOVT            R0, #0x92B0
DC474:  MOVT            R2, #0xFEA1
DC478:  ADD             R1, R0
DC47A:  LDR             R4, [SP,#0x70+var_54]
DC47C:  ADD             R1, R2
DC47E:  SUB.W           R1, R1, R0
DC482:  SUB.W           R1, R1, R2
DC486:  ADD.W           R2, R1, #1
DC48A:  BNE.W           loc_DC0B6
DC48E:  LDRB.W          R0, [SP,#0x70+var_2C]
DC492:  MOVS            R1, #0x55 ; 'U'
DC494:  BICS            R1, R0
DC496:  AND.W           R0, R0, #0xAA
DC49A:  ADD             R0, R1
DC49C:  EOR.W           R1, R0, #0xA8
DC4A0:  EOR.W           R0, R0, #0x55 ; 'U'
DC4A4:  AND.W           R2, R0, #0x56 ; 'V'
DC4A8:  AND.W           R1, R1, #0xA9
DC4AC:  ADD             R1, R2
DC4AE:  ORR.W           R0, R0, #1
DC4B2:  EOR.W           R1, R1, #0xA8
DC4B6:  EOR.W           R0, R0, #0xFF
DC4BA:  ORRS            R0, R1
DC4BC:  MOVS            R1, #0xE6
DC4BE:  BICS            R1, R0
DC4C0:  AND.W           R0, R0, #0x19
DC4C4:  ADD             R0, R1
DC4C6:  TEQ.W           R0, #0x19
DC4CA:  ITT NE
DC4CC:  LDRNE           R0, [SP,#0x70+var_24]; void *
DC4CE:  BLXNE           j__ZdlPv; operator delete(void *)
DC4D2:  LDR             R0, [SP,#0x70+var_20]
DC4D4:  LDR             R1, =(__stack_chk_guard_ptr - 0xDC4DA)
DC4D6:  ADD             R1, PC; __stack_chk_guard_ptr
DC4D8:  LDR             R1, [R1]; __stack_chk_guard
DC4DA:  LDR             R1, [R1]
DC4DC:  CMP             R1, R0
DC4DE:  ITTT EQ
DC4E0:  ADDEQ           SP, SP, #0x54 ; 'T'
DC4E2:  POPEQ.W         {R8-R11}
DC4E6:  POPEQ           {R4-R7,PC}
DC4E8:  BLX             __stack_chk_fail
DC4EC:  LDRB.W          R0, [SP,#0x70+var_44]
DC4F0:  MOVS            R1, #0xFE
DC4F2:  MOVS            R2, #0xFC
DC4F4:  BICS            R1, R0
DC4F6:  BICS            R2, R0
DC4F8:  AND.W           R0, R0, #3
DC4FC:  ADD             R0, R2
DC4FE:  EOR.W           R0, R0, #0xFD
DC502:  ORRS            R0, R1
DC504:  CMP             R0, #0xFF
DC506:  BEQ.W           loc_DBDD4
DC50A:  LDR             R0, [SP,#0x70+var_4C]
DC50C:  MOVW            R1, #0x5BBE
DC510:  MOVW            R3, #0x6205
DC514:  MOVT            R1, #0x17B8
DC518:  MOVT            R3, #0x30D9
DC51C:  MOVW            R4, #0x388A
DC520:  LDR             R0, [R0]
DC522:  MVNS            R6, R3
DC524:  MOVW            R9, #0xAD37
DC528:  MOVW            R10, #0xCA7D
DC52C:  SUBS            R2, R0, R1
DC52E:  MOVW            R8, #0x201D
DC532:  ADD             R2, R6
DC534:  MOVT            R4, #0x44 ; 'D'
DC538:  ADD             R2, R3
DC53A:  MOV             R3, #0xDCB6608C
DC542:  SUBS            R2, R2, R3
DC544:  ADD             R1, R2
DC546:  LDR             R2, [SP,#0x70+var_48]
DC548:  ADD             R1, R3
DC54A:  MOVT            R9, #0x209D
DC54E:  MOVT            R10, #0x22BA
DC552:  MOVT            R8, #0xA933
DC556:  MULS            R0, R1
DC558:  MOV             R1, #0x95429DD7
DC560:  LDR             R2, [R2]
DC562:  AND.W           R3, R0, R1
DC566:  MVNS            R6, R0
DC568:  BIC.W           R1, R6, R1
DC56C:  ADD             R1, R3
DC56E:  MOV             R3, #0x6ABD6229
DC576:  EORS            R1, R3
DC578:  MOV             R3, #0xFFFFFFFE
DC57C:  BIC.W           R0, R3, R0
DC580:  ORRS            R0, R1
DC582:  MOV             R1, #0x5CFFD653
DC58A:  BIC.W           R3, R0, R1
DC58E:  BIC.W           R0, R1, R0
DC592:  MVNS            R1, R1
DC594:  ADD             R0, R3
DC596:  MOVS            R3, #0
DC598:  EORS            R0, R1
DC59A:  MOV.W           R6, #0
DC59E:  CLZ.W           R1, R0
DC5A2:  IT NE
DC5A4:  MOVNE           R0, #1
DC5A6:  CMP             R2, #9
DC5A8:  IT GT
DC5AA:  MOVGT           R6, #1
DC5AC:  LSRS            R1, R1, #5
DC5AE:  CMP             R2, #0xA
DC5B0:  IT LT
DC5B2:  MOVLT           R3, #1
DC5B4:  ORR.W           R2, R3, R1
DC5B8:  EOR.W           R5, R6, R0
DC5BC:  ANDS            R0, R3
DC5BE:  ANDS            R1, R6
DC5C0:  EOR.W           R2, R2, #1
DC5C4:  ORRS            R1, R0
DC5C6:  ORRS            R2, R5
DC5C8:  EOR.W           R0, R1, #1
DC5CC:  ORRS            R0, R2
DC5CE:  EOR.W           R2, R2, #1
DC5D2:  CMP             R1, R2
DC5D4:  EOR.W           R0, R0, #1
DC5D8:  IT EQ
DC5DA:  CMPEQ           R0, #0
DC5DC:  BEQ             loc_DC64C
DC5DE:  LDR             R0, [SP,#0x70+var_3C]; void *
DC5E0:  BLX             j__ZdlPv; operator delete(void *)
DC5E4:  LDR             R0, [SP,#0x70+var_4C]
DC5E6:  MOV             R2, R10
DC5E8:  LDR             R3, [SP,#0x70+var_48]
DC5EA:  LDR             R0, [R0]
DC5EC:  LDR             R3, [R3]
DC5EE:  SUB.W           R1, R9, R0
DC5F2:  MVNS            R1, R1
DC5F4:  ADD             R1, R9
DC5F6:  MULS            R0, R1
DC5F8:  MVN.W           R1, R10
DC5FC:  BFI.W           R2, R1, #0, #1
DC600:  EORS            R1, R2
DC602:  BIC.W           R2, R1, R4
DC606:  BIC.W           R1, R4, R1
DC60A:  ADD             R1, R2
DC60C:  ORN.W           R2, R8, R8
DC610:  BIC.W           R5, R0, R4
DC614:  BIC.W           R6, R4, R0
DC618:  ADD             R6, R5
DC61A:  EORS            R1, R6
DC61C:  MVNS            R1, R1
DC61E:  ORN.W           R0, R1, R0
DC622:  BIC.W           R0, R2, R0
DC626:  MOVS            R1, #0
DC628:  CMP             R0, #0
DC62A:  IT NE
DC62C:  MOVNE           R0, #1
DC62E:  CMP             R3, #9
DC630:  IT GT
DC632:  MOVGT           R1, #1
DC634:  EOR.W           R2, R0, R1
DC638:  ORRS            R0, R1
DC63A:  EOR.W           R1, R0, #1
DC63E:  TST             R1, R2
DC640:  EOR.W           R0, R1, R2
DC644:  IT EQ
DC646:  CMPEQ           R0, #0
DC648:  BNE.W           loc_DBDD4
DC64C:  LDR             R0, [SP,#0x70+var_3C]; void *
DC64E:  BLX             j__ZdlPv; operator delete(void *)
DC652:  B               loc_DC5DE
DC654:  LDR             R0, [SP,#0x70+var_24]; void *
DC656:  BLX             j__ZdlPv; operator delete(void *)
DC65A:  LDR.W           R0, [R9]
DC65E:  MVN.W           R2, R8
DC662:  ADD.W           R1, R0, R8
DC666:  ADD             R1, R2
DC668:  MOV             R2, R6
DC66A:  MULS            R0, R1
DC66C:  MVNS            R1, R6
DC66E:  BFI.W           R2, R1, #0, #1
DC672:  EORS            R1, R2
DC674:  BIC.W           R2, R1, R4
DC678:  BIC.W           R1, R4, R1
DC67C:  ADD             R1, R2
DC67E:  LDR             R2, [SP,#0x70+var_48]
DC680:  BIC.W           R3, R0, R4
DC684:  BIC.W           R5, R4, R0
DC688:  ADD             R3, R5
DC68A:  MVNS            R0, R0
DC68C:  EORS            R1, R3
DC68E:  LDR             R2, [R2]
DC690:  EORS            R0, R1
DC692:  MOVS            R3, #0
DC694:  ANDS            R0, R1
DC696:  CLZ.W           R1, R0
DC69A:  IT NE
DC69C:  MOVNE           R0, #1
DC69E:  CMP             R2, #0xA
DC6A0:  IT LT
DC6A2:  MOVLT           R3, #1
DC6A4:  CMP             R2, #9
DC6A6:  MOV.W           R2, #0
DC6AA:  MOV.W           R1, R1,LSR#5
DC6AE:  IT GT
DC6B0:  MOVGT           R2, #1
DC6B2:  ANDS            R3, R0
DC6B4:  ANDS            R1, R2
DC6B6:  ORRS            R0, R2
DC6B8:  ORRS            R1, R3
DC6BA:  EOR.W           R2, R0, #1
DC6BE:  TST             R2, R1
DC6C0:  EOR.W           R0, R2, R1
DC6C4:  IT EQ
DC6C6:  CMPEQ           R0, #0
DC6C8:  BNE             loc_DC6D2
DC6CA:  LDR             R0, [SP,#0x70+var_24]; void *
DC6CC:  BLX             j__ZdlPv; operator delete(void *)
DC6D0:  B               loc_DC654
DC6D2:  BLX             j___cxa_end_cleanup
