; =========================================================
; Game Engine Function: sub_10E584
; Address            : 0x10E584 - 0x10E9CC
; =========================================================

10E584:  PUSH            {R4-R7,LR}
10E586:  ADD             R7, SP, #0xC
10E588:  PUSH.W          {R8-R11}
10E58C:  SUB             SP, SP, #0xCC
10E58E:  MOV             R5, R0
10E590:  LDR             R0, =(off_23494C - 0x10E59A)
10E592:  LDR             R1, =(sub_10EAE4+1 - 0x10E5A0)
10E594:  MOVS            R2, #0
10E596:  ADD             R0, PC; off_23494C
10E598:  STRD.W          R2, R2, [R5,#0xC]
10E59C:  ADD             R1, PC; sub_10EAE4
10E59E:  LDR.W           R10, [R0]; dword_23DF24
10E5A2:  MOVS            R0, #0x41700000
10E5A8:  STR             R0, [R5,#4]
10E5AA:  MOV             R0, R5
10E5AC:  LDR.W           R11, [R10]
10E5B0:  STR.W           R2, [R0,#8]!
10E5B4:  STRB            R2, [R5]
10E5B6:  STR             R0, [SP,#0xE8+var_E4]
10E5B8:  ADD             R0, SP, #0xE8+var_68
10E5BA:  MOVS            R2, #0
10E5BC:  MOV             R3, R5
10E5BE:  BL              sub_10EB3C
10E5C2:  ADD.W           R8, SP, #0xE8+var_50
10E5C6:  ADD.W           R9, SP, #0xE8+var_68
10E5CA:  MOV             R0, R8
10E5CC:  MOV             R1, R9
10E5CE:  BL              sub_10F778
10E5D2:  BL              sub_10F720
10E5D6:  LDR             R0, =(unk_2632A8 - 0x10E5DC)
10E5D8:  ADD             R0, PC; unk_2632A8
10E5DA:  LDR             R4, [R0,#(dword_2632B8 - 0x2632A8)]
10E5DC:  CBNZ            R4, loc_10E60E
10E5DE:  ADD             R6, SP, #0xE8+var_50
10E5E0:  ADD             R0, SP, #0xE8+var_38
10E5E2:  MOV             R1, R6
10E5E4:  BL              sub_10F778
10E5E8:  BL              sub_10F720
10E5EC:  LDR             R0, =(unk_2632A8 - 0x10E5F2)
10E5EE:  ADD             R0, PC; unk_2632A8
10E5F0:  ADD             R6, SP, #0xE8+var_38
10E5F2:  MOV             R1, R6
10E5F4:  BL              sub_10F7A4
10E5F8:  LDR             R0, [SP,#0xE8+var_28]
10E5FA:  CMP             R6, R0
10E5FC:  BEQ             loc_10E604
10E5FE:  CBZ             R0, loc_10E60E
10E600:  MOVS            R1, #5
10E602:  B               loc_10E606
10E604:  MOVS            R1, #4
10E606:  LDR             R2, [R0]
10E608:  LDR.W           R1, [R2,R1,LSL#2]
10E60C:  BLX             R1
10E60E:  LDR             R0, [SP,#0xE8+var_40]
10E610:  CMP             R8, R0
10E612:  BEQ             loc_10E61A
10E614:  CBZ             R0, loc_10E624
10E616:  MOVS            R1, #5
10E618:  B               loc_10E61C
10E61A:  MOVS            R1, #4
10E61C:  LDR             R2, [R0]
10E61E:  LDR.W           R1, [R2,R1,LSL#2]
10E622:  BLX             R1
10E624:  CBNZ            R4, loc_10E63C
10E626:  MOVW            R0, #0xF764
10E62A:  LDR             R1, =(sub_10F6F4+1 - 0x10E63A)
10E62C:  MOVT            R0, #0x66 ; 'f'
10E630:  ADD.W           R2, R5, #0x14
10E634:  ADD             R0, R11
10E636:  ADD             R1, PC; sub_10F6F4
10E638:  BL              sub_164196
10E63C:  LDR             R0, [SP,#0xE8+var_58]
10E63E:  CMP             R9, R0
10E640:  BEQ             loc_10E648
10E642:  CBZ             R0, loc_10E652
10E644:  MOVS            R1, #5
10E646:  B               loc_10E64A
10E648:  MOVS            R1, #4
10E64A:  LDR             R2, [R0]
10E64C:  LDR.W           R1, [R2,R1,LSL#2]
10E650:  BLX             R1
10E652:  LDR.W           R8, [R10]
10E656:  LDR             R1, =(sub_10EB78+1 - 0x10E65C)
10E658:  ADD             R1, PC; sub_10EB78
10E65A:  ADD             R0, SP, #0xE8+var_80
10E65C:  MOVS            R2, #0
10E65E:  MOV             R3, R5
10E660:  BL              sub_10EB3C
10E664:  ADD             R4, SP, #0xE8+var_50
10E666:  ADD.W           R9, SP, #0xE8+var_80
10E66A:  MOV             R0, R4
10E66C:  MOV             R1, R9
10E66E:  BL              sub_10F778
10E672:  BL              sub_10F998
10E676:  LDR             R0, =(unk_2632C8 - 0x10E67C)
10E678:  ADD             R0, PC; unk_2632C8
10E67A:  LDR.W           R11, [R0,#(dword_2632D8 - 0x2632C8)]
10E67E:  CMP.W           R11, #0
10E682:  BNE             loc_10E6B4
10E684:  ADD             R6, SP, #0xE8+var_50
10E686:  ADD             R0, SP, #0xE8+var_38
10E688:  MOV             R1, R6
10E68A:  BL              sub_10F778
10E68E:  BL              sub_10F998
10E692:  LDR             R0, =(unk_2632C8 - 0x10E698)
10E694:  ADD             R0, PC; unk_2632C8
10E696:  ADD             R6, SP, #0xE8+var_38
10E698:  MOV             R1, R6
10E69A:  BL              sub_10F7A4
10E69E:  LDR             R0, [SP,#0xE8+var_28]
10E6A0:  CMP             R6, R0
10E6A2:  BEQ             loc_10E6AA
10E6A4:  CBZ             R0, loc_10E6B4
10E6A6:  MOVS            R1, #5
10E6A8:  B               loc_10E6AC
10E6AA:  MOVS            R1, #4
10E6AC:  LDR             R2, [R0]
10E6AE:  LDR.W           R1, [R2,R1,LSL#2]
10E6B2:  BLX             R1
10E6B4:  LDR             R0, [SP,#0xE8+var_40]
10E6B6:  CMP             R4, R0
10E6B8:  BEQ             loc_10E6C0
10E6BA:  CBZ             R0, loc_10E6CA
10E6BC:  MOVS            R1, #5
10E6BE:  B               loc_10E6C2
10E6C0:  MOVS            R1, #4
10E6C2:  LDR             R2, [R0]
10E6C4:  LDR.W           R1, [R2,R1,LSL#2]
10E6C8:  BLX             R1
10E6CA:  MOVW            R0, #0x2014
10E6CE:  CMP.W           R11, #0
10E6D2:  MOVT            R0, #0x66 ; 'f'
10E6D6:  BNE             loc_10E6E6
10E6D8:  LDR             R1, =(sub_10F96C+1 - 0x10E6E4)
10E6DA:  ADD             R0, R8
10E6DC:  ADD.W           R2, R5, #0x18
10E6E0:  ADD             R1, PC; sub_10F96C
10E6E2:  BL              sub_164196
10E6E6:  LDR             R0, [SP,#0xE8+var_70]
10E6E8:  CMP             R9, R0
10E6EA:  BEQ             loc_10E6F2
10E6EC:  CBZ             R0, loc_10E6FC
10E6EE:  MOVS            R1, #5
10E6F0:  B               loc_10E6F4
10E6F2:  MOVS            R1, #4
10E6F4:  LDR             R2, [R0]
10E6F6:  LDR.W           R1, [R2,R1,LSL#2]
10E6FA:  BLX             R1
10E6FC:  LDR.W           R8, [R10]
10E700:  LDR             R1, =(sub_10EBD0+1 - 0x10E706)
10E702:  ADD             R1, PC; sub_10EBD0
10E704:  ADD             R0, SP, #0xE8+var_98
10E706:  MOVS            R2, #0
10E708:  MOV             R3, R5
10E70A:  BL              sub_10EB3C
10E70E:  ADD.W           R11, SP, #0xE8+var_50
10E712:  ADD.W           R9, SP, #0xE8+var_98
10E716:  MOV             R0, R11
10E718:  MOV             R1, R9
10E71A:  BL              sub_10F778
10E71E:  BL              sub_10FA1C
10E722:  LDR             R0, =(unk_2632E8 - 0x10E728)
10E724:  ADD             R0, PC; unk_2632E8
10E726:  LDR             R4, [R0,#(dword_2632F8 - 0x2632E8)]
10E728:  CBNZ            R4, loc_10E75A
10E72A:  ADD             R6, SP, #0xE8+var_50
10E72C:  ADD             R0, SP, #0xE8+var_38
10E72E:  MOV             R1, R6
10E730:  BL              sub_10F778
10E734:  BL              sub_10FA1C
10E738:  LDR             R0, =(unk_2632E8 - 0x10E73E)
10E73A:  ADD             R0, PC; unk_2632E8
10E73C:  ADD             R6, SP, #0xE8+var_38
10E73E:  MOV             R1, R6
10E740:  BL              sub_10F7A4
10E744:  LDR             R0, [SP,#0xE8+var_28]
10E746:  CMP             R6, R0
10E748:  BEQ             loc_10E750
10E74A:  CBZ             R0, loc_10E75A
10E74C:  MOVS            R1, #5
10E74E:  B               loc_10E752
10E750:  MOVS            R1, #4
10E752:  LDR             R2, [R0]
10E754:  LDR.W           R1, [R2,R1,LSL#2]
10E758:  BLX             R1
10E75A:  LDR             R0, [SP,#0xE8+var_40]
10E75C:  CMP             R11, R0
10E75E:  BEQ             loc_10E766
10E760:  CBZ             R0, loc_10E770
10E762:  MOVS            R1, #5
10E764:  B               loc_10E768
10E766:  MOVS            R1, #4
10E768:  LDR             R2, [R0]
10E76A:  LDR.W           R1, [R2,R1,LSL#2]
10E76E:  BLX             R1
10E770:  CBNZ            R4, loc_10E78A
10E772:  MOVW            R0, #0x2014
10E776:  LDR             R1, =(sub_10F9F0+1 - 0x10E786)
10E778:  MOVT            R0, #0x66 ; 'f'
10E77C:  ADD.W           R2, R5, #0x1C
10E780:  ADD             R0, R8
10E782:  ADD             R1, PC; sub_10F9F0
10E784:  ADDS            R0, #0x64 ; 'd'
10E786:  BL              sub_164196
10E78A:  LDR             R0, [SP,#0xE8+var_88]
10E78C:  CMP             R9, R0
10E78E:  BEQ             loc_10E796
10E790:  CBZ             R0, loc_10E7A0
10E792:  MOVS            R1, #5
10E794:  B               loc_10E798
10E796:  MOVS            R1, #4
10E798:  LDR             R2, [R0]
10E79A:  LDR.W           R1, [R2,R1,LSL#2]
10E79E:  BLX             R1
10E7A0:  LDR.W           R8, [R10]
10E7A4:  LDR             R1, =(sub_10EC28+1 - 0x10E7AA)
10E7A6:  ADD             R1, PC; sub_10EC28
10E7A8:  ADD             R0, SP, #0xE8+var_B0
10E7AA:  MOVS            R2, #0
10E7AC:  MOV             R3, R5
10E7AE:  BL              sub_10EB3C
10E7B2:  ADD             R4, SP, #0xE8+var_50
10E7B4:  ADD.W           R9, SP, #0xE8+var_B0
10E7B8:  MOV             R0, R4
10E7BA:  MOV             R1, R9
10E7BC:  BL              sub_10F778
10E7C0:  BL              sub_10FAA0
10E7C4:  LDR             R0, =(unk_263308 - 0x10E7CA)
10E7C6:  ADD             R0, PC; unk_263308
10E7C8:  LDR.W           R11, [R0,#(dword_263318 - 0x263308)]
10E7CC:  CMP.W           R11, #0
10E7D0:  BNE             loc_10E802
10E7D2:  ADD             R6, SP, #0xE8+var_50
10E7D4:  ADD             R0, SP, #0xE8+var_38
10E7D6:  MOV             R1, R6
10E7D8:  BL              sub_10F778
10E7DC:  BL              sub_10FAA0
10E7E0:  LDR             R0, =(unk_263308 - 0x10E7E6)
10E7E2:  ADD             R0, PC; unk_263308
10E7E4:  ADD             R6, SP, #0xE8+var_38
10E7E6:  MOV             R1, R6
10E7E8:  BL              sub_10F7A4
10E7EC:  LDR             R0, [SP,#0xE8+var_28]
10E7EE:  CMP             R6, R0
10E7F0:  BEQ             loc_10E7F8
10E7F2:  CBZ             R0, loc_10E802
10E7F4:  MOVS            R1, #5
10E7F6:  B               loc_10E7FA
10E7F8:  MOVS            R1, #4
10E7FA:  LDR             R2, [R0]
10E7FC:  LDR.W           R1, [R2,R1,LSL#2]
10E800:  BLX             R1
10E802:  LDR             R0, [SP,#0xE8+var_40]
10E804:  CMP             R4, R0
10E806:  BEQ             loc_10E80E
10E808:  CBZ             R0, loc_10E818
10E80A:  MOVS            R1, #5
10E80C:  B               loc_10E810
10E80E:  MOVS            R1, #4
10E810:  LDR             R2, [R0]
10E812:  LDR.W           R1, [R2,R1,LSL#2]
10E816:  BLX             R1
10E818:  MOVW            R0, #0x7C30
10E81C:  CMP.W           R11, #0
10E820:  MOVT            R0, #0x66 ; 'f'
10E824:  BNE             loc_10E834
10E826:  LDR             R1, =(sub_10FA74+1 - 0x10E832)
10E828:  ADD             R0, R8
10E82A:  ADD.W           R2, R5, #0x20 ; ' '
10E82E:  ADD             R1, PC; sub_10FA74
10E830:  BL              sub_164196
10E834:  LDR             R0, [SP,#0xE8+var_A0]
10E836:  CMP             R9, R0
10E838:  BEQ             loc_10E840
10E83A:  CBZ             R0, loc_10E84A
10E83C:  MOVS            R1, #5
10E83E:  B               loc_10E842
10E840:  MOVS            R1, #4
10E842:  LDR             R2, [R0]
10E844:  LDR.W           R1, [R2,R1,LSL#2]
10E848:  BLX             R1
10E84A:  LDR.W           R8, [R10]
10E84E:  LDR             R1, =(sub_10EC80+1 - 0x10E854)
10E850:  ADD             R1, PC; sub_10EC80
10E852:  ADD             R0, SP, #0xE8+var_C8
10E854:  MOVS            R2, #0
10E856:  MOV             R3, R5
10E858:  BL              sub_10EB3C
10E85C:  ADD.W           R11, SP, #0xE8+var_50
10E860:  ADD.W           R9, SP, #0xE8+var_C8
10E864:  MOV             R0, R11
10E866:  MOV             R1, R9
10E868:  BL              sub_10F778
10E86C:  BL              sub_10FB24
10E870:  LDR             R0, =(unk_263328 - 0x10E876)
10E872:  ADD             R0, PC; unk_263328
10E874:  LDR             R4, [R0,#(dword_263338 - 0x263328)]
10E876:  CBNZ            R4, loc_10E8A8
10E878:  ADD             R6, SP, #0xE8+var_50
10E87A:  ADD             R0, SP, #0xE8+var_38
10E87C:  MOV             R1, R6
10E87E:  BL              sub_10F778
10E882:  BL              sub_10FB24
10E886:  LDR             R0, =(unk_263328 - 0x10E88C)
10E888:  ADD             R0, PC; unk_263328
10E88A:  ADD             R6, SP, #0xE8+var_38
10E88C:  MOV             R1, R6
10E88E:  BL              sub_10F7A4
10E892:  LDR             R0, [SP,#0xE8+var_28]
10E894:  CMP             R6, R0
10E896:  BEQ             loc_10E89E
10E898:  CBZ             R0, loc_10E8A8
10E89A:  MOVS            R1, #5
10E89C:  B               loc_10E8A0
10E89E:  MOVS            R1, #4
10E8A0:  LDR             R2, [R0]
10E8A2:  LDR.W           R1, [R2,R1,LSL#2]
10E8A6:  BLX             R1
10E8A8:  LDR             R0, [SP,#0xE8+var_40]
10E8AA:  CMP             R11, R0
10E8AC:  BEQ             loc_10E8B4
10E8AE:  CBZ             R0, loc_10E8BE
10E8B0:  MOVS            R1, #5
10E8B2:  B               loc_10E8B6
10E8B4:  MOVS            R1, #4
10E8B6:  LDR             R2, [R0]
10E8B8:  LDR.W           R1, [R2,R1,LSL#2]
10E8BC:  BLX             R1
10E8BE:  CBNZ            R4, loc_10E8D8
10E8C0:  MOVW            R0, #0x7C30
10E8C4:  LDR             R1, =(sub_10FAF8+1 - 0x10E8D4)
10E8C6:  MOVT            R0, #0x66 ; 'f'
10E8CA:  ADD.W           R2, R5, #0x24 ; '$'
10E8CE:  ADD             R0, R8
10E8D0:  ADD             R1, PC; sub_10FAF8
10E8D2:  ADDS            R0, #0x64 ; 'd'
10E8D4:  BL              sub_164196
10E8D8:  LDR             R0, [SP,#0xE8+var_B8]
10E8DA:  CMP             R9, R0
10E8DC:  BEQ             loc_10E914
10E8DE:  CBZ             R0, loc_10E91E
10E8E0:  MOVS            R1, #5
10E8E2:  B               loc_10E916
10E8E4:  DCD off_23494C - 0x10E59A
10E8E8:  DCD sub_10EAE4+1 - 0x10E5A0
10E8EC:  DCD unk_2632A8 - 0x10E5DC
10E8F0:  DCD unk_2632A8 - 0x10E5F2
10E8F4:  DCD sub_10F6F4+1 - 0x10E63A
10E8F8:  DCD sub_10EB78+1 - 0x10E65C
10E8FC:  DCD unk_2632C8 - 0x10E67C
10E900:  DCD unk_2632C8 - 0x10E698
10E904:  DCD sub_10F96C+1 - 0x10E6E4
10E908:  DCD sub_10EBD0+1 - 0x10E706
10E90C:  DCD unk_2632E8 - 0x10E728
10E910:  DCD unk_2632E8 - 0x10E73E
10E914:  MOVS            R1, #4
10E916:  LDR             R2, [R0]
10E918:  LDR.W           R1, [R2,R1,LSL#2]
10E91C:  BLX             R1
10E91E:  LDR.W           R8, [R10]
10E922:  LDR             R1, =(sub_10ECD8+1 - 0x10E928)
10E924:  ADD             R1, PC; sub_10ECD8
10E926:  ADD             R0, SP, #0xE8+var_E0
10E928:  MOVS            R2, #0
10E92A:  MOV             R3, R5
10E92C:  BL              sub_10EB3C
10E930:  ADD.W           R10, SP, #0xE8+var_50
10E934:  ADD.W           R9, SP, #0xE8+var_E0
10E938:  MOV             R0, R10
10E93A:  MOV             R1, R9
10E93C:  BL              sub_10F778
10E940:  BL              sub_10FBA8
10E944:  LDR             R0, =(unk_263348 - 0x10E94A)
10E946:  ADD             R0, PC; unk_263348
10E948:  LDR             R4, [R0,#(dword_263358 - 0x263348)]
10E94A:  CBNZ            R4, loc_10E97C
10E94C:  ADD             R6, SP, #0xE8+var_50
10E94E:  ADD             R0, SP, #0xE8+var_38
10E950:  MOV             R1, R6
10E952:  BL              sub_10F778
10E956:  BL              sub_10FBA8
10E95A:  LDR             R0, =(unk_263348 - 0x10E960)
10E95C:  ADD             R0, PC; unk_263348
10E95E:  ADD             R6, SP, #0xE8+var_38
10E960:  MOV             R1, R6
10E962:  BL              sub_10F7A4
10E966:  LDR             R0, [SP,#0xE8+var_28]
10E968:  CMP             R6, R0
10E96A:  BEQ             loc_10E972
10E96C:  CBZ             R0, loc_10E97C
10E96E:  MOVS            R1, #5
10E970:  B               loc_10E974
10E972:  MOVS            R1, #4
10E974:  LDR             R2, [R0]
10E976:  LDR.W           R1, [R2,R1,LSL#2]
10E97A:  BLX             R1
10E97C:  LDR             R0, [SP,#0xE8+var_40]
10E97E:  CMP             R10, R0
10E980:  BEQ             loc_10E988
10E982:  CBZ             R0, loc_10E992
10E984:  MOVS            R1, #5
10E986:  B               loc_10E98A
10E988:  MOVS            R1, #4
10E98A:  LDR             R2, [R0]
10E98C:  LDR.W           R1, [R2,R1,LSL#2]
10E990:  BLX             R1
10E992:  CBNZ            R4, loc_10E9AC
10E994:  MOVW            R0, #0x7C30
10E998:  LDR             R1, =(sub_10FB7C+1 - 0x10E9A8)
10E99A:  MOVT            R0, #0x66 ; 'f'
10E99E:  ADD.W           R2, R5, #0x28 ; '('
10E9A2:  ADD             R0, R8
10E9A4:  ADD             R1, PC; sub_10FB7C
10E9A6:  ADDS            R0, #0xD8
10E9A8:  BL              sub_164196
10E9AC:  LDR             R0, [SP,#0xE8+var_D0]
10E9AE:  CMP             R9, R0
10E9B0:  BEQ             loc_10E9B8
10E9B2:  CBZ             R0, loc_10E9C2
10E9B4:  MOVS            R1, #5
10E9B6:  B               loc_10E9BA
10E9B8:  MOVS            R1, #4
10E9BA:  LDR             R2, [R0]
10E9BC:  LDR.W           R1, [R2,R1,LSL#2]
10E9C0:  BLX             R1
10E9C2:  MOV             R0, R5
10E9C4:  ADD             SP, SP, #0xCC
10E9C6:  POP.W           {R8-R11}
10E9CA:  POP             {R4-R7,PC}
