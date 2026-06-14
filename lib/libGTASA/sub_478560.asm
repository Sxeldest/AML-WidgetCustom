; =========================================================
; Game Engine Function: sub_478560
; Address            : 0x478560 - 0x478B92
; =========================================================

478560:  PUSH            {R4,R5,R7,LR}
478562:  ADD             R7, SP, #8
478564:  MOV             R4, R0
478566:  LDR             R0, [R4,#0x18]
478568:  LDR.W           R5, [R4,#0x14C]
47856C:  LDR             R1, [R0]
47856E:  ADDS            R2, R1, #1
478570:  STR             R2, [R0]
478572:  MOVS            R2, #0xFF
478574:  STRB            R2, [R1]
478576:  LDR             R1, [R0,#4]
478578:  SUBS            R1, #1
47857A:  STR             R1, [R0,#4]
47857C:  BNE             loc_478594
47857E:  LDR             R1, [R0,#0xC]
478580:  MOV             R0, R4
478582:  BLX             R1
478584:  CBNZ            R0, loc_478594
478586:  LDR             R0, [R4]
478588:  MOVS            R1, #0x18
47858A:  STR             R1, [R0,#0x14]
47858C:  LDR             R0, [R4]
47858E:  LDR             R1, [R0]
478590:  MOV             R0, R4
478592:  BLX             R1
478594:  LDR             R0, [R4,#0x18]
478596:  LDR             R1, [R0]
478598:  ADDS            R2, R1, #1
47859A:  STR             R2, [R0]
47859C:  MOVS            R2, #0xD8
47859E:  STRB            R2, [R1]
4785A0:  LDR             R1, [R0,#4]
4785A2:  SUBS            R1, #1
4785A4:  STR             R1, [R0,#4]
4785A6:  BNE             loc_4785BE
4785A8:  LDR             R1, [R0,#0xC]
4785AA:  MOV             R0, R4
4785AC:  BLX             R1
4785AE:  CBNZ            R0, loc_4785BE
4785B0:  LDR             R0, [R4]
4785B2:  MOVS            R1, #0x18
4785B4:  STR             R1, [R0,#0x14]
4785B6:  LDR             R0, [R4]
4785B8:  LDR             R1, [R0]
4785BA:  MOV             R0, R4
4785BC:  BLX             R1
4785BE:  MOVS            R0, #0
4785C0:  STR             R0, [R5,#0x1C]
4785C2:  LDRB.W          R0, [R4,#0xC4]
4785C6:  CMP             R0, #0
4785C8:  BEQ.W           loc_4788C8
4785CC:  LDR             R0, [R4,#0x18]
4785CE:  LDR             R1, [R0]
4785D0:  ADDS            R2, R1, #1
4785D2:  STR             R2, [R0]
4785D4:  MOVS            R2, #0xFF
4785D6:  STRB            R2, [R1]
4785D8:  LDR             R1, [R0,#4]
4785DA:  SUBS            R1, #1
4785DC:  STR             R1, [R0,#4]
4785DE:  BNE             loc_4785F6
4785E0:  LDR             R1, [R0,#0xC]
4785E2:  MOV             R0, R4
4785E4:  BLX             R1
4785E6:  CBNZ            R0, loc_4785F6
4785E8:  LDR             R0, [R4]
4785EA:  MOVS            R1, #0x18
4785EC:  STR             R1, [R0,#0x14]
4785EE:  LDR             R0, [R4]
4785F0:  LDR             R1, [R0]
4785F2:  MOV             R0, R4
4785F4:  BLX             R1
4785F6:  LDR             R0, [R4,#0x18]
4785F8:  LDR             R1, [R0]
4785FA:  ADDS            R2, R1, #1
4785FC:  STR             R2, [R0]
4785FE:  MOVS            R2, #0xE0
478600:  STRB            R2, [R1]
478602:  LDR             R1, [R0,#4]
478604:  SUBS            R1, #1
478606:  STR             R1, [R0,#4]
478608:  BNE             loc_478620
47860A:  LDR             R1, [R0,#0xC]
47860C:  MOV             R0, R4
47860E:  BLX             R1
478610:  CBNZ            R0, loc_478620
478612:  LDR             R0, [R4]
478614:  MOVS            R1, #0x18
478616:  STR             R1, [R0,#0x14]
478618:  LDR             R0, [R4]
47861A:  LDR             R1, [R0]
47861C:  MOV             R0, R4
47861E:  BLX             R1
478620:  LDR             R0, [R4,#0x18]
478622:  LDR             R1, [R0]
478624:  ADDS            R2, R1, #1
478626:  STR             R2, [R0]
478628:  MOVS            R2, #0
47862A:  STRB            R2, [R1]
47862C:  LDR             R1, [R0,#4]
47862E:  SUBS            R1, #1
478630:  STR             R1, [R0,#4]
478632:  BNE             loc_47864A
478634:  LDR             R1, [R0,#0xC]
478636:  MOV             R0, R4
478638:  BLX             R1
47863A:  CBNZ            R0, loc_47864A
47863C:  LDR             R0, [R4]
47863E:  MOVS            R1, #0x18
478640:  STR             R1, [R0,#0x14]
478642:  LDR             R0, [R4]
478644:  LDR             R1, [R0]
478646:  MOV             R0, R4
478648:  BLX             R1
47864A:  LDR             R0, [R4,#0x18]
47864C:  LDR             R1, [R0]
47864E:  ADDS            R2, R1, #1
478650:  STR             R2, [R0]
478652:  MOVS            R2, #0x10
478654:  STRB            R2, [R1]
478656:  LDR             R1, [R0,#4]
478658:  SUBS            R1, #1
47865A:  STR             R1, [R0,#4]
47865C:  BNE             loc_478674
47865E:  LDR             R1, [R0,#0xC]
478660:  MOV             R0, R4
478662:  BLX             R1
478664:  CBNZ            R0, loc_478674
478666:  LDR             R0, [R4]
478668:  MOVS            R1, #0x18
47866A:  STR             R1, [R0,#0x14]
47866C:  LDR             R0, [R4]
47866E:  LDR             R1, [R0]
478670:  MOV             R0, R4
478672:  BLX             R1
478674:  LDR             R0, [R4,#0x18]
478676:  LDR             R1, [R0]
478678:  ADDS            R2, R1, #1
47867A:  STR             R2, [R0]
47867C:  MOVS            R2, #0x4A ; 'J'
47867E:  STRB            R2, [R1]
478680:  LDR             R1, [R0,#4]
478682:  SUBS            R1, #1
478684:  STR             R1, [R0,#4]
478686:  BNE             loc_47869E
478688:  LDR             R1, [R0,#0xC]
47868A:  MOV             R0, R4
47868C:  BLX             R1
47868E:  CBNZ            R0, loc_47869E
478690:  LDR             R0, [R4]
478692:  MOVS            R1, #0x18
478694:  STR             R1, [R0,#0x14]
478696:  LDR             R0, [R4]
478698:  LDR             R1, [R0]
47869A:  MOV             R0, R4
47869C:  BLX             R1
47869E:  LDR             R0, [R4,#0x18]
4786A0:  LDR             R1, [R0]
4786A2:  ADDS            R2, R1, #1
4786A4:  STR             R2, [R0]
4786A6:  MOVS            R2, #0x46 ; 'F'
4786A8:  STRB            R2, [R1]
4786AA:  LDR             R1, [R0,#4]
4786AC:  SUBS            R1, #1
4786AE:  STR             R1, [R0,#4]
4786B0:  BNE             loc_4786C8
4786B2:  LDR             R1, [R0,#0xC]
4786B4:  MOV             R0, R4
4786B6:  BLX             R1
4786B8:  CBNZ            R0, loc_4786C8
4786BA:  LDR             R0, [R4]
4786BC:  MOVS            R1, #0x18
4786BE:  STR             R1, [R0,#0x14]
4786C0:  LDR             R0, [R4]
4786C2:  LDR             R1, [R0]
4786C4:  MOV             R0, R4
4786C6:  BLX             R1
4786C8:  LDR             R0, [R4,#0x18]
4786CA:  LDR             R1, [R0]
4786CC:  ADDS            R2, R1, #1
4786CE:  STR             R2, [R0]
4786D0:  MOVS            R2, #0x49 ; 'I'
4786D2:  STRB            R2, [R1]
4786D4:  LDR             R1, [R0,#4]
4786D6:  SUBS            R1, #1
4786D8:  STR             R1, [R0,#4]
4786DA:  BNE             loc_4786F2
4786DC:  LDR             R1, [R0,#0xC]
4786DE:  MOV             R0, R4
4786E0:  BLX             R1
4786E2:  CBNZ            R0, loc_4786F2
4786E4:  LDR             R0, [R4]
4786E6:  MOVS            R1, #0x18
4786E8:  STR             R1, [R0,#0x14]
4786EA:  LDR             R0, [R4]
4786EC:  LDR             R1, [R0]
4786EE:  MOV             R0, R4
4786F0:  BLX             R1
4786F2:  LDR             R0, [R4,#0x18]
4786F4:  LDR             R1, [R0]
4786F6:  ADDS            R2, R1, #1
4786F8:  STR             R2, [R0]
4786FA:  MOVS            R2, #0x46 ; 'F'
4786FC:  STRB            R2, [R1]
4786FE:  LDR             R1, [R0,#4]
478700:  SUBS            R1, #1
478702:  STR             R1, [R0,#4]
478704:  BNE             loc_47871C
478706:  LDR             R1, [R0,#0xC]
478708:  MOV             R0, R4
47870A:  BLX             R1
47870C:  CBNZ            R0, loc_47871C
47870E:  LDR             R0, [R4]
478710:  MOVS            R1, #0x18
478712:  STR             R1, [R0,#0x14]
478714:  LDR             R0, [R4]
478716:  LDR             R1, [R0]
478718:  MOV             R0, R4
47871A:  BLX             R1
47871C:  LDR             R0, [R4,#0x18]
47871E:  LDR             R1, [R0]
478720:  ADDS            R2, R1, #1
478722:  STR             R2, [R0]
478724:  MOVS            R2, #0
478726:  STRB            R2, [R1]
478728:  LDR             R1, [R0,#4]
47872A:  SUBS            R1, #1
47872C:  STR             R1, [R0,#4]
47872E:  BNE             loc_478746
478730:  LDR             R1, [R0,#0xC]
478732:  MOV             R0, R4
478734:  BLX             R1
478736:  CBNZ            R0, loc_478746
478738:  LDR             R0, [R4]
47873A:  MOVS            R1, #0x18
47873C:  STR             R1, [R0,#0x14]
47873E:  LDR             R0, [R4]
478740:  LDR             R1, [R0]
478742:  MOV             R0, R4
478744:  BLX             R1
478746:  LDR             R0, [R4,#0x18]
478748:  LDRB.W          R2, [R4,#0xC5]
47874C:  LDR             R1, [R0]
47874E:  ADDS            R3, R1, #1
478750:  STR             R3, [R0]
478752:  STRB            R2, [R1]
478754:  LDR             R1, [R0,#4]
478756:  SUBS            R1, #1
478758:  STR             R1, [R0,#4]
47875A:  BNE             loc_478772
47875C:  LDR             R1, [R0,#0xC]
47875E:  MOV             R0, R4
478760:  BLX             R1
478762:  CBNZ            R0, loc_478772
478764:  LDR             R0, [R4]
478766:  MOVS            R1, #0x18
478768:  STR             R1, [R0,#0x14]
47876A:  LDR             R0, [R4]
47876C:  LDR             R1, [R0]
47876E:  MOV             R0, R4
478770:  BLX             R1
478772:  LDR             R0, [R4,#0x18]
478774:  LDRB.W          R2, [R4,#0xC6]
478778:  LDR             R1, [R0]
47877A:  ADDS            R3, R1, #1
47877C:  STR             R3, [R0]
47877E:  STRB            R2, [R1]
478780:  LDR             R1, [R0,#4]
478782:  SUBS            R1, #1
478784:  STR             R1, [R0,#4]
478786:  BNE             loc_47879E
478788:  LDR             R1, [R0,#0xC]
47878A:  MOV             R0, R4
47878C:  BLX             R1
47878E:  CBNZ            R0, loc_47879E
478790:  LDR             R0, [R4]
478792:  MOVS            R1, #0x18
478794:  STR             R1, [R0,#0x14]
478796:  LDR             R0, [R4]
478798:  LDR             R1, [R0]
47879A:  MOV             R0, R4
47879C:  BLX             R1
47879E:  LDR             R0, [R4,#0x18]
4787A0:  LDRB.W          R2, [R4,#0xC7]
4787A4:  LDR             R1, [R0]
4787A6:  ADDS            R3, R1, #1
4787A8:  STR             R3, [R0]
4787AA:  STRB            R2, [R1]
4787AC:  LDR             R1, [R0,#4]
4787AE:  SUBS            R1, #1
4787B0:  STR             R1, [R0,#4]
4787B2:  BNE             loc_4787CA
4787B4:  LDR             R1, [R0,#0xC]
4787B6:  MOV             R0, R4
4787B8:  BLX             R1
4787BA:  CBNZ            R0, loc_4787CA
4787BC:  LDR             R0, [R4]
4787BE:  MOVS            R1, #0x18
4787C0:  STR             R1, [R0,#0x14]
4787C2:  LDR             R0, [R4]
4787C4:  LDR             R1, [R0]
4787C6:  MOV             R0, R4
4787C8:  BLX             R1
4787CA:  LDR             R0, [R4,#0x18]
4787CC:  LDRH.W          R5, [R4,#0xC8]
4787D0:  LDR             R1, [R0]
4787D2:  ADDS            R2, R1, #1
4787D4:  STR             R2, [R0]
4787D6:  LSRS            R2, R5, #8
4787D8:  STRB            R2, [R1]
4787DA:  LDR             R1, [R0,#4]
4787DC:  SUBS            R1, #1
4787DE:  STR             R1, [R0,#4]
4787E0:  BNE             loc_4787F8
4787E2:  LDR             R1, [R0,#0xC]
4787E4:  MOV             R0, R4
4787E6:  BLX             R1
4787E8:  CBNZ            R0, loc_4787F8
4787EA:  LDR             R0, [R4]
4787EC:  MOVS            R1, #0x18
4787EE:  STR             R1, [R0,#0x14]
4787F0:  LDR             R0, [R4]
4787F2:  LDR             R1, [R0]
4787F4:  MOV             R0, R4
4787F6:  BLX             R1
4787F8:  LDR             R0, [R4,#0x18]
4787FA:  LDR             R1, [R0]
4787FC:  ADDS            R2, R1, #1
4787FE:  STR             R2, [R0]
478800:  STRB            R5, [R1]
478802:  LDR             R1, [R0,#4]
478804:  SUBS            R1, #1
478806:  STR             R1, [R0,#4]
478808:  BNE             loc_478820
47880A:  LDR             R1, [R0,#0xC]
47880C:  MOV             R0, R4
47880E:  BLX             R1
478810:  CBNZ            R0, loc_478820
478812:  LDR             R0, [R4]
478814:  MOVS            R1, #0x18
478816:  STR             R1, [R0,#0x14]
478818:  LDR             R0, [R4]
47881A:  LDR             R1, [R0]
47881C:  MOV             R0, R4
47881E:  BLX             R1
478820:  LDR             R0, [R4,#0x18]
478822:  LDRH.W          R5, [R4,#0xCA]
478826:  LDR             R1, [R0]
478828:  ADDS            R2, R1, #1
47882A:  STR             R2, [R0]
47882C:  LSRS            R2, R5, #8
47882E:  STRB            R2, [R1]
478830:  LDR             R1, [R0,#4]
478832:  SUBS            R1, #1
478834:  STR             R1, [R0,#4]
478836:  BNE             loc_47884E
478838:  LDR             R1, [R0,#0xC]
47883A:  MOV             R0, R4
47883C:  BLX             R1
47883E:  CBNZ            R0, loc_47884E
478840:  LDR             R0, [R4]
478842:  MOVS            R1, #0x18
478844:  STR             R1, [R0,#0x14]
478846:  LDR             R0, [R4]
478848:  LDR             R1, [R0]
47884A:  MOV             R0, R4
47884C:  BLX             R1
47884E:  LDR             R0, [R4,#0x18]
478850:  LDR             R1, [R0]
478852:  ADDS            R2, R1, #1
478854:  STR             R2, [R0]
478856:  STRB            R5, [R1]
478858:  LDR             R1, [R0,#4]
47885A:  SUBS            R1, #1
47885C:  STR             R1, [R0,#4]
47885E:  BNE             loc_478876
478860:  LDR             R1, [R0,#0xC]
478862:  MOV             R0, R4
478864:  BLX             R1
478866:  CBNZ            R0, loc_478876
478868:  LDR             R0, [R4]
47886A:  MOVS            R1, #0x18
47886C:  STR             R1, [R0,#0x14]
47886E:  LDR             R0, [R4]
478870:  LDR             R1, [R0]
478872:  MOV             R0, R4
478874:  BLX             R1
478876:  LDR             R0, [R4,#0x18]
478878:  MOVS            R5, #0
47887A:  LDR             R1, [R0]
47887C:  ADDS            R2, R1, #1
47887E:  STR             R2, [R0]
478880:  STRB            R5, [R1]
478882:  LDR             R1, [R0,#4]
478884:  SUBS            R1, #1
478886:  STR             R1, [R0,#4]
478888:  BNE             loc_4788A0
47888A:  LDR             R1, [R0,#0xC]
47888C:  MOV             R0, R4
47888E:  BLX             R1
478890:  CBNZ            R0, loc_4788A0
478892:  LDR             R0, [R4]
478894:  MOVS            R1, #0x18
478896:  STR             R1, [R0,#0x14]
478898:  LDR             R0, [R4]
47889A:  LDR             R1, [R0]
47889C:  MOV             R0, R4
47889E:  BLX             R1
4788A0:  LDR             R0, [R4,#0x18]
4788A2:  LDR             R1, [R0]
4788A4:  ADDS            R2, R1, #1
4788A6:  STR             R2, [R0]
4788A8:  STRB            R5, [R1]
4788AA:  LDR             R1, [R0,#4]
4788AC:  SUBS            R1, #1
4788AE:  STR             R1, [R0,#4]
4788B0:  BNE             loc_4788C8
4788B2:  LDR             R1, [R0,#0xC]
4788B4:  MOV             R0, R4
4788B6:  BLX             R1
4788B8:  CBNZ            R0, loc_4788C8
4788BA:  LDR             R0, [R4]
4788BC:  MOVS            R1, #0x18
4788BE:  STR             R1, [R0,#0x14]
4788C0:  LDR             R0, [R4]
4788C2:  LDR             R1, [R0]
4788C4:  MOV             R0, R4
4788C6:  BLX             R1
4788C8:  LDRB.W          R0, [R4,#0xCC]
4788CC:  CMP             R0, #0
4788CE:  BEQ.W           locret_478B72
4788D2:  LDR             R0, [R4,#0x18]
4788D4:  LDR             R1, [R0]
4788D6:  ADDS            R2, R1, #1
4788D8:  STR             R2, [R0]
4788DA:  MOVS            R2, #0xFF
4788DC:  STRB            R2, [R1]
4788DE:  LDR             R1, [R0,#4]
4788E0:  SUBS            R1, #1
4788E2:  STR             R1, [R0,#4]
4788E4:  BNE             loc_4788FC
4788E6:  LDR             R1, [R0,#0xC]
4788E8:  MOV             R0, R4
4788EA:  BLX             R1
4788EC:  CBNZ            R0, loc_4788FC
4788EE:  LDR             R0, [R4]
4788F0:  MOVS            R1, #0x18
4788F2:  STR             R1, [R0,#0x14]
4788F4:  LDR             R0, [R4]
4788F6:  LDR             R1, [R0]
4788F8:  MOV             R0, R4
4788FA:  BLX             R1
4788FC:  LDR             R0, [R4,#0x18]
4788FE:  LDR             R1, [R0]
478900:  ADDS            R2, R1, #1
478902:  STR             R2, [R0]
478904:  MOVS            R2, #0xEE
478906:  STRB            R2, [R1]
478908:  LDR             R1, [R0,#4]
47890A:  SUBS            R1, #1
47890C:  STR             R1, [R0,#4]
47890E:  BNE             loc_478926
478910:  LDR             R1, [R0,#0xC]
478912:  MOV             R0, R4
478914:  BLX             R1
478916:  CBNZ            R0, loc_478926
478918:  LDR             R0, [R4]
47891A:  MOVS            R1, #0x18
47891C:  STR             R1, [R0,#0x14]
47891E:  LDR             R0, [R4]
478920:  LDR             R1, [R0]
478922:  MOV             R0, R4
478924:  BLX             R1
478926:  LDR             R0, [R4,#0x18]
478928:  LDR             R1, [R0]
47892A:  ADDS            R2, R1, #1
47892C:  STR             R2, [R0]
47892E:  MOVS            R2, #0
478930:  STRB            R2, [R1]
478932:  LDR             R1, [R0,#4]
478934:  SUBS            R1, #1
478936:  STR             R1, [R0,#4]
478938:  BNE             loc_478950
47893A:  LDR             R1, [R0,#0xC]
47893C:  MOV             R0, R4
47893E:  BLX             R1
478940:  CBNZ            R0, loc_478950
478942:  LDR             R0, [R4]
478944:  MOVS            R1, #0x18
478946:  STR             R1, [R0,#0x14]
478948:  LDR             R0, [R4]
47894A:  LDR             R1, [R0]
47894C:  MOV             R0, R4
47894E:  BLX             R1
478950:  LDR             R0, [R4,#0x18]
478952:  LDR             R1, [R0]
478954:  ADDS            R2, R1, #1
478956:  STR             R2, [R0]
478958:  MOVS            R2, #0xE
47895A:  STRB            R2, [R1]
47895C:  LDR             R1, [R0,#4]
47895E:  SUBS            R1, #1
478960:  STR             R1, [R0,#4]
478962:  BNE             loc_47897A
478964:  LDR             R1, [R0,#0xC]
478966:  MOV             R0, R4
478968:  BLX             R1
47896A:  CBNZ            R0, loc_47897A
47896C:  LDR             R0, [R4]
47896E:  MOVS            R1, #0x18
478970:  STR             R1, [R0,#0x14]
478972:  LDR             R0, [R4]
478974:  LDR             R1, [R0]
478976:  MOV             R0, R4
478978:  BLX             R1
47897A:  LDR             R0, [R4,#0x18]
47897C:  LDR             R1, [R0]
47897E:  ADDS            R2, R1, #1
478980:  STR             R2, [R0]
478982:  MOVS            R2, #0x41 ; 'A'
478984:  STRB            R2, [R1]
478986:  LDR             R1, [R0,#4]
478988:  SUBS            R1, #1
47898A:  STR             R1, [R0,#4]
47898C:  BNE             loc_4789A4
47898E:  LDR             R1, [R0,#0xC]
478990:  MOV             R0, R4
478992:  BLX             R1
478994:  CBNZ            R0, loc_4789A4
478996:  LDR             R0, [R4]
478998:  MOVS            R1, #0x18
47899A:  STR             R1, [R0,#0x14]
47899C:  LDR             R0, [R4]
47899E:  LDR             R1, [R0]
4789A0:  MOV             R0, R4
4789A2:  BLX             R1
4789A4:  LDR             R0, [R4,#0x18]
4789A6:  LDR             R1, [R0]
4789A8:  ADDS            R2, R1, #1
4789AA:  STR             R2, [R0]
4789AC:  MOVS            R2, #0x64 ; 'd'
4789AE:  STRB            R2, [R1]
4789B0:  LDR             R1, [R0,#4]
4789B2:  SUBS            R1, #1
4789B4:  STR             R1, [R0,#4]
4789B6:  BNE             loc_4789CE
4789B8:  LDR             R1, [R0,#0xC]
4789BA:  MOV             R0, R4
4789BC:  BLX             R1
4789BE:  CBNZ            R0, loc_4789CE
4789C0:  LDR             R0, [R4]
4789C2:  MOVS            R1, #0x18
4789C4:  STR             R1, [R0,#0x14]
4789C6:  LDR             R0, [R4]
4789C8:  LDR             R1, [R0]
4789CA:  MOV             R0, R4
4789CC:  BLX             R1
4789CE:  LDR             R0, [R4,#0x18]
4789D0:  LDR             R1, [R0]
4789D2:  ADDS            R2, R1, #1
4789D4:  STR             R2, [R0]
4789D6:  MOVS            R2, #0x6F ; 'o'
4789D8:  STRB            R2, [R1]
4789DA:  LDR             R1, [R0,#4]
4789DC:  SUBS            R1, #1
4789DE:  STR             R1, [R0,#4]
4789E0:  BNE             loc_4789F8
4789E2:  LDR             R1, [R0,#0xC]
4789E4:  MOV             R0, R4
4789E6:  BLX             R1
4789E8:  CBNZ            R0, loc_4789F8
4789EA:  LDR             R0, [R4]
4789EC:  MOVS            R1, #0x18
4789EE:  STR             R1, [R0,#0x14]
4789F0:  LDR             R0, [R4]
4789F2:  LDR             R1, [R0]
4789F4:  MOV             R0, R4
4789F6:  BLX             R1
4789F8:  LDR             R0, [R4,#0x18]
4789FA:  LDR             R1, [R0]
4789FC:  ADDS            R2, R1, #1
4789FE:  STR             R2, [R0]
478A00:  MOVS            R2, #0x62 ; 'b'
478A02:  STRB            R2, [R1]
478A04:  LDR             R1, [R0,#4]
478A06:  SUBS            R1, #1
478A08:  STR             R1, [R0,#4]
478A0A:  BNE             loc_478A22
478A0C:  LDR             R1, [R0,#0xC]
478A0E:  MOV             R0, R4
478A10:  BLX             R1
478A12:  CBNZ            R0, loc_478A22
478A14:  LDR             R0, [R4]
478A16:  MOVS            R1, #0x18
478A18:  STR             R1, [R0,#0x14]
478A1A:  LDR             R0, [R4]
478A1C:  LDR             R1, [R0]
478A1E:  MOV             R0, R4
478A20:  BLX             R1
478A22:  LDR             R0, [R4,#0x18]
478A24:  LDR             R1, [R0]
478A26:  ADDS            R2, R1, #1
478A28:  STR             R2, [R0]
478A2A:  MOVS            R2, #0x65 ; 'e'
478A2C:  STRB            R2, [R1]
478A2E:  LDR             R1, [R0,#4]
478A30:  SUBS            R1, #1
478A32:  STR             R1, [R0,#4]
478A34:  BNE             loc_478A4C
478A36:  LDR             R1, [R0,#0xC]
478A38:  MOV             R0, R4
478A3A:  BLX             R1
478A3C:  CBNZ            R0, loc_478A4C
478A3E:  LDR             R0, [R4]
478A40:  MOVS            R1, #0x18
478A42:  STR             R1, [R0,#0x14]
478A44:  LDR             R0, [R4]
478A46:  LDR             R1, [R0]
478A48:  MOV             R0, R4
478A4A:  BLX             R1
478A4C:  LDR             R0, [R4,#0x18]
478A4E:  LDR             R1, [R0]
478A50:  ADDS            R2, R1, #1
478A52:  STR             R2, [R0]
478A54:  MOVS            R2, #0
478A56:  STRB            R2, [R1]
478A58:  LDR             R1, [R0,#4]
478A5A:  SUBS            R1, #1
478A5C:  STR             R1, [R0,#4]
478A5E:  BNE             loc_478A76
478A60:  LDR             R1, [R0,#0xC]
478A62:  MOV             R0, R4
478A64:  BLX             R1
478A66:  CBNZ            R0, loc_478A76
478A68:  LDR             R0, [R4]
478A6A:  MOVS            R1, #0x18
478A6C:  STR             R1, [R0,#0x14]
478A6E:  LDR             R0, [R4]
478A70:  LDR             R1, [R0]
478A72:  MOV             R0, R4
478A74:  BLX             R1
478A76:  LDR             R0, [R4,#0x18]
478A78:  LDR             R1, [R0]
478A7A:  ADDS            R2, R1, #1
478A7C:  STR             R2, [R0]
478A7E:  MOVS            R2, #0x64 ; 'd'
478A80:  STRB            R2, [R1]
478A82:  LDR             R1, [R0,#4]
478A84:  SUBS            R1, #1
478A86:  STR             R1, [R0,#4]
478A88:  BNE             loc_478AA0
478A8A:  LDR             R1, [R0,#0xC]
478A8C:  MOV             R0, R4
478A8E:  BLX             R1
478A90:  CBNZ            R0, loc_478AA0
478A92:  LDR             R0, [R4]
478A94:  MOVS            R1, #0x18
478A96:  STR             R1, [R0,#0x14]
478A98:  LDR             R0, [R4]
478A9A:  LDR             R1, [R0]
478A9C:  MOV             R0, R4
478A9E:  BLX             R1
478AA0:  LDR             R0, [R4,#0x18]
478AA2:  MOVS            R5, #0
478AA4:  LDR             R1, [R0]
478AA6:  ADDS            R2, R1, #1
478AA8:  STR             R2, [R0]
478AAA:  STRB            R5, [R1]
478AAC:  LDR             R1, [R0,#4]
478AAE:  SUBS            R1, #1
478AB0:  STR             R1, [R0,#4]
478AB2:  BNE             loc_478ACA
478AB4:  LDR             R1, [R0,#0xC]
478AB6:  MOV             R0, R4
478AB8:  BLX             R1
478ABA:  CBNZ            R0, loc_478ACA
478ABC:  LDR             R0, [R4]
478ABE:  MOVS            R1, #0x18
478AC0:  STR             R1, [R0,#0x14]
478AC2:  LDR             R0, [R4]
478AC4:  LDR             R1, [R0]
478AC6:  MOV             R0, R4
478AC8:  BLX             R1
478ACA:  LDR             R0, [R4,#0x18]
478ACC:  LDR             R1, [R0]
478ACE:  ADDS            R2, R1, #1
478AD0:  STR             R2, [R0]
478AD2:  STRB            R5, [R1]
478AD4:  LDR             R1, [R0,#4]
478AD6:  SUBS            R1, #1
478AD8:  STR             R1, [R0,#4]
478ADA:  BNE             loc_478AF2
478ADC:  LDR             R1, [R0,#0xC]
478ADE:  MOV             R0, R4
478AE0:  BLX             R1
478AE2:  CBNZ            R0, loc_478AF2
478AE4:  LDR             R0, [R4]
478AE6:  MOVS            R1, #0x18
478AE8:  STR             R1, [R0,#0x14]
478AEA:  LDR             R0, [R4]
478AEC:  LDR             R1, [R0]
478AEE:  MOV             R0, R4
478AF0:  BLX             R1
478AF2:  LDR             R0, [R4,#0x18]
478AF4:  MOVS            R5, #0
478AF6:  LDR             R1, [R0]
478AF8:  ADDS            R2, R1, #1
478AFA:  STR             R2, [R0]
478AFC:  STRB            R5, [R1]
478AFE:  LDR             R1, [R0,#4]
478B00:  SUBS            R1, #1
478B02:  STR             R1, [R0,#4]
478B04:  BNE             loc_478B1C
478B06:  LDR             R1, [R0,#0xC]
478B08:  MOV             R0, R4
478B0A:  BLX             R1
478B0C:  CBNZ            R0, loc_478B1C
478B0E:  LDR             R0, [R4]
478B10:  MOVS            R1, #0x18
478B12:  STR             R1, [R0,#0x14]
478B14:  LDR             R0, [R4]
478B16:  LDR             R1, [R0]
478B18:  MOV             R0, R4
478B1A:  BLX             R1
478B1C:  LDR             R0, [R4,#0x18]
478B1E:  LDR             R1, [R0]
478B20:  ADDS            R2, R1, #1
478B22:  STR             R2, [R0]
478B24:  STRB            R5, [R1]
478B26:  LDR             R1, [R0,#4]
478B28:  SUBS            R1, #1
478B2A:  STR             R1, [R0,#4]
478B2C:  BNE             loc_478B44
478B2E:  LDR             R1, [R0,#0xC]
478B30:  MOV             R0, R4
478B32:  BLX             R1
478B34:  CBNZ            R0, loc_478B44
478B36:  LDR             R0, [R4]
478B38:  MOVS            R1, #0x18
478B3A:  STR             R1, [R0,#0x14]
478B3C:  LDR             R0, [R4]
478B3E:  LDR             R1, [R0]
478B40:  MOV             R0, R4
478B42:  BLX             R1
478B44:  LDR             R0, [R4,#0x40]
478B46:  CMP             R0, #5
478B48:  BEQ             loc_478B5E
478B4A:  CMP             R0, #3
478B4C:  LDR             R0, [R4,#0x18]
478B4E:  LDR             R1, [R0]
478B50:  ADD.W           R2, R1, #1
478B54:  STR             R2, [R0]
478B56:  ITE EQ
478B58:  MOVEQ           R2, #1
478B5A:  MOVNE           R2, #0
478B5C:  B               loc_478B68
478B5E:  LDR             R0, [R4,#0x18]
478B60:  LDR             R1, [R0]
478B62:  ADDS            R2, R1, #1
478B64:  STR             R2, [R0]
478B66:  MOVS            R2, #2
478B68:  STRB            R2, [R1]
478B6A:  LDR             R1, [R0,#4]
478B6C:  SUBS            R1, #1
478B6E:  STR             R1, [R0,#4]
478B70:  BEQ             loc_478B74
478B72:  POP             {R4,R5,R7,PC}
478B74:  LDR             R1, [R0,#0xC]
478B76:  MOV             R0, R4
478B78:  BLX             R1
478B7A:  CMP             R0, #0
478B7C:  IT NE
478B7E:  POPNE           {R4,R5,R7,PC}
478B80:  LDR             R0, [R4]
478B82:  MOVS            R1, #0x18
478B84:  STR             R1, [R0,#0x14]
478B86:  LDR             R0, [R4]
478B88:  LDR             R1, [R0]
478B8A:  MOV             R0, R4
478B8C:  POP.W           {R4,R5,R7,LR}
478B90:  BX              R1
