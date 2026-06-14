; =========================================================
; Game Engine Function: sub_20B5F0
; Address            : 0x20B5F0 - 0x20B998
; =========================================================

20B5F0:  PUSH            {R4-R7,LR}
20B5F2:  ADD             R7, SP, #0xC
20B5F4:  PUSH.W          {R8-R11}
20B5F8:  SUB             SP, SP, #0x14
20B5FA:  MOV             R10, R0
20B5FC:  MOVW            R0, #0x1694
20B600:  ADD             R0, R10
20B602:  STR             R0, [SP,#0x30+var_20]
20B604:  MOVW            R0, #0x1690
20B608:  STR             R1, [SP,#0x30+var_28]
20B60A:  ADD             R0, R10
20B60C:  STR             R0, [SP,#0x30+var_24]
20B60E:  MOVW            R0, #0x1698
20B612:  ADD.W           R11, R10, R0
20B616:  MOVW            R0, #0x169C
20B61A:  ADD.W           R8, R10, R0
20B61E:  LDR             R0, =(_length_code_ptr - 0x20B628)
20B620:  MOVS            R6, #0
20B622:  LDR             R1, =(_dist_code_ptr - 0x20B62A)
20B624:  ADD             R0, PC; _length_code_ptr
20B626:  ADD             R1, PC; _dist_code_ptr
20B628:  LDR             R0, [R0]; _length_code
20B62A:  STR             R0, [SP,#0x30+var_2C]
20B62C:  LDR             R0, [R1]; _dist_code
20B62E:  STR             R0, [SP,#0x30+var_30]
20B630:  LDR.W           R0, [R10,#0x6C]
20B634:  LSRS            R0, R0, #1
20B636:  CMP             R0, #0x82
20B638:  BHI             loc_20B65A
20B63A:  MOV             R0, R10
20B63C:  BL              sub_20BDEC
20B640:  LDR             R1, [SP,#0x30+var_28]
20B642:  LDR.W           R0, [R10,#0x6C]
20B646:  CBNZ            R1, loc_20B650
20B648:  CMP.W           R0, #0x106
20B64C:  BCC.W           loc_20B8F6
20B650:  CMP             R0, #0
20B652:  BEQ.W           loc_20B8FA
20B656:  CMP             R0, #3
20B658:  BCC             loc_20B696
20B65A:  LDRD.W          R12, R1, [R10,#0x2C]
20B65E:  LDRD.W          LR, R3, [R10,#0x38]
20B662:  LDR.W           R4, [R10,#0x64]
20B666:  LDR.W           R6, [R10,#0x40]
20B66A:  ADD             R1, R4
20B66C:  LDRD.W          R0, R2, [R10,#0x4C]
20B670:  LDRB            R1, [R1,#2]
20B672:  LSL.W           R2, R6, R2
20B676:  EORS            R1, R2
20B678:  ANDS            R0, R1
20B67A:  STR.W           R0, [R10,#0x40]
20B67E:  LDRH.W          R6, [R3,R0,LSL#1]
20B682:  AND.W           R0, R12, R4
20B686:  STRH.W          R6, [LR,R0,LSL#1]
20B68A:  LDRD.W          R0, R1, [R10,#0x3C]
20B68E:  LDR.W           R2, [R10,#0x64]
20B692:  STRH.W          R2, [R0,R1,LSL#1]
20B696:  CBZ             R6, loc_20B6B4
20B698:  LDR.W           R0, [R10,#0x24]
20B69C:  LDR.W           R1, [R10,#0x64]
20B6A0:  SUB.W           R0, R0, #0x106
20B6A4:  SUBS            R1, R1, R6
20B6A6:  CMP             R1, R0
20B6A8:  BHI             loc_20B6B4
20B6AA:  LDR.W           R0, [R10,#0x80]
20B6AE:  CMP             R0, #2
20B6B0:  BNE.W           loc_20B7F0
20B6B4:  LDR.W           R0, [R10,#0x58]
20B6B8:  CMP             R0, #3
20B6BA:  BCC.W           loc_20B802
20B6BE:  LDR.W           R1, [R11]
20B6C2:  ADDS            R0, #0xFD
20B6C4:  LDR.W           R2, [R8]
20B6C8:  MOV.W           LR, #0
20B6CC:  LDRD.W          R3, R4, [R10,#0x64]
20B6D0:  SUBS            R3, R3, R4
20B6D2:  STRH.W          R3, [R2,R1,LSL#1]
20B6D6:  UXTB            R4, R0
20B6D8:  LDR             R1, [SP,#0x30+var_24]
20B6DA:  LDR             R5, [SP,#0x30+var_2C]
20B6DC:  LDR.W           R2, [R11]
20B6E0:  LDR             R1, [R1]
20B6E2:  LDRB.W          R12, [R5,R4]
20B6E6:  ADDS            R4, R2, #1
20B6E8:  STR.W           R4, [R11]
20B6EC:  STRB            R0, [R1,R2]
20B6EE:  MOVW            R0, #0xFFFF
20B6F2:  ADD             R0, R3
20B6F4:  MOV.W           R1, #0x100
20B6F8:  UXTH            R0, R0
20B6FA:  CMP.W           R0, #0x100
20B6FE:  IT CS
20B700:  ADDCS.W         R0, R1, R0,LSR#7
20B704:  LDR             R2, [SP,#0x30+var_30]
20B706:  ORR.W           R1, R12, #0x100
20B70A:  LDRB            R0, [R2,R0]
20B70C:  ADD.W           R1, R10, R1,LSL#2
20B710:  LDRH.W          R2, [R1,#0x90]
20B714:  ADD.W           R0, R10, R0,LSL#2
20B718:  ADDS            R2, #1
20B71A:  STRH.W          R2, [R1,#0x90]
20B71E:  LDRH.W          R1, [R0,#0x980]
20B722:  ADDS            R1, #1
20B724:  STRH.W          R1, [R0,#0x980]
20B728:  LDR             R2, [SP,#0x30+var_20]
20B72A:  LDR.W           R1, [R10,#0x58]
20B72E:  LDR.W           R0, [R10,#0x6C]
20B732:  LDR             R4, [R2]
20B734:  LDR.W           R3, [R11]
20B738:  SUBS            R2, R0, R1
20B73A:  LDR.W           R12, [R10,#0x78]
20B73E:  SUBS            R0, R4, #1
20B740:  CMP             R3, R0
20B742:  STR.W           R2, [R10,#0x6C]
20B746:  IT EQ
20B748:  MOVEQ.W         LR, #1
20B74C:  CMP             R2, #3
20B74E:  BCC             loc_20B7BA
20B750:  CMP             R1, R12
20B752:  BHI             loc_20B7BA
20B754:  SUBS            R1, #1
20B756:  STR.W           R1, [R10,#0x58]
20B75A:  LDR.W           R1, [R10,#0x64]
20B75E:  LDRD.W          R12, R3, [R10,#0x2C]
20B762:  LDRD.W          R9, R6, [R10,#0x38]
20B766:  ADDS            R4, R1, #1
20B768:  LDR.W           R0, [R10,#0x40]
20B76C:  ADD             R1, R3
20B76E:  LDRD.W          R5, R2, [R10,#0x4C]
20B772:  STR.W           R4, [R10,#0x64]
20B776:  LDRB            R1, [R1,#3]
20B778:  LSLS            R0, R2
20B77A:  EORS            R0, R1
20B77C:  ANDS            R0, R5
20B77E:  STR.W           R0, [R10,#0x40]
20B782:  LDRH.W          R6, [R6,R0,LSL#1]
20B786:  AND.W           R0, R12, R4
20B78A:  STRH.W          R6, [R9,R0,LSL#1]
20B78E:  LDRD.W          R0, R1, [R10,#0x3C]
20B792:  LDR.W           R2, [R10,#0x64]
20B796:  STRH.W          R2, [R0,R1,LSL#1]
20B79A:  LDR.W           R0, [R10,#0x58]
20B79E:  SUBS            R0, #1
20B7A0:  STR.W           R0, [R10,#0x58]
20B7A4:  BNE             loc_20B75A
20B7A6:  LDR.W           R0, [R10,#0x64]
20B7AA:  ADDS            R2, R0, #1
20B7AC:  STR.W           R2, [R10,#0x64]
20B7B0:  CMP.W           LR, #0
20B7B4:  BEQ.W           loc_20B630
20B7B8:  B               loc_20B86C
20B7BA:  LDR.W           R0, [R10,#0x30]
20B7BE:  MOVS            R4, #0
20B7C0:  LDRD.W          R3, R5, [R10,#0x4C]
20B7C4:  LDR.W           R2, [R10,#0x64]
20B7C8:  STR.W           R4, [R10,#0x58]
20B7CC:  ADD             R2, R1
20B7CE:  STR.W           R2, [R10,#0x64]
20B7D2:  LDRB            R1, [R0,R2]
20B7D4:  ADD             R0, R2
20B7D6:  STR.W           R1, [R10,#0x40]
20B7DA:  LDRB            R0, [R0,#1]
20B7DC:  LSLS            R1, R5
20B7DE:  EORS            R0, R1
20B7E0:  ANDS            R0, R3
20B7E2:  STR.W           R0, [R10,#0x40]
20B7E6:  CMP.W           LR, #0
20B7EA:  BEQ.W           loc_20B630
20B7EE:  B               loc_20B86C
20B7F0:  MOV             R0, R10
20B7F2:  MOV             R1, R6
20B7F4:  BL              sub_20C01E
20B7F8:  STR.W           R0, [R10,#0x58]
20B7FC:  CMP             R0, #3
20B7FE:  BCS.W           loc_20B6BE
20B802:  LDR.W           R0, [R10,#0x30]
20B806:  MOV.W           LR, #0
20B80A:  LDR.W           R1, [R10,#0x64]
20B80E:  LDR.W           R2, [R11]
20B812:  LDR.W           R3, [R8]
20B816:  LDRB            R0, [R0,R1]
20B818:  MOVS            R1, #0
20B81A:  STRH.W          R1, [R3,R2,LSL#1]
20B81E:  LDR             R1, [SP,#0x30+var_24]
20B820:  LDR.W           R2, [R11]
20B824:  LDR             R1, [R1]
20B826:  ADDS            R3, R2, #1
20B828:  STR.W           R3, [R11]
20B82C:  STRB            R0, [R1,R2]
20B82E:  ADD.W           R0, R10, R0,LSL#2
20B832:  LDRH.W          R1, [R0,#0x8C]
20B836:  ADDS            R1, #1
20B838:  STRH.W          R1, [R0,#0x8C]
20B83C:  LDR             R2, [SP,#0x30+var_20]
20B83E:  LDR.W           R0, [R10,#0x64]
20B842:  LDR.W           R3, [R11]
20B846:  LDR             R5, [R2]
20B848:  ADDS            R2, R0, #1
20B84A:  LDR.W           R1, [R10,#0x6C]
20B84E:  SUBS            R0, R5, #1
20B850:  CMP             R3, R0
20B852:  SUB.W           R1, R1, #1
20B856:  STR.W           R1, [R10,#0x6C]
20B85A:  STR.W           R2, [R10,#0x64]
20B85E:  IT EQ
20B860:  MOVEQ.W         LR, #1
20B864:  CMP.W           LR, #0
20B868:  BEQ.W           loc_20B630
20B86C:  LDR.W           R0, [R10,#0x54]
20B870:  MOVS            R3, #0
20B872:  CMP             R0, #0
20B874:  SUB.W           R2, R2, R0
20B878:  ITTE GE
20B87A:  LDRGE.W         R1, [R10,#0x30]
20B87E:  ADDGE           R1, R0
20B880:  MOVLT           R1, #0
20B882:  MOV             R0, R10
20B884:  BLX             j__tr_flush_block
20B888:  LDR.W           R9, [R10]
20B88C:  LDR.W           R0, [R10,#0x64]
20B890:  STR.W           R0, [R10,#0x54]
20B894:  LDR.W           R0, [R9,#0x1C]
20B898:  LDR.W           R1, [R9,#0x10]
20B89C:  LDR             R4, [R0,#0x14]
20B89E:  CMP             R4, R1
20B8A0:  IT HI
20B8A2:  MOVHI           R4, R1
20B8A4:  CBZ             R4, loc_20B8EA
20B8A6:  LDR             R1, [R0,#0x10]; void *
20B8A8:  MOV             R2, R4; size_t
20B8AA:  LDR.W           R0, [R9,#0xC]; void *
20B8AE:  BLX             memcpy_1
20B8B2:  LDR.W           R0, [R9,#0xC]
20B8B6:  LDR.W           R1, [R9,#0x1C]
20B8BA:  ADD             R0, R4
20B8BC:  STR.W           R0, [R9,#0xC]
20B8C0:  LDR             R0, [R1,#0x10]
20B8C2:  ADD             R0, R4
20B8C4:  STR             R0, [R1,#0x10]
20B8C6:  LDRD.W          R0, R1, [R9,#0x10]
20B8CA:  LDR.W           R2, [R9,#0x1C]
20B8CE:  ADD             R1, R4
20B8D0:  SUBS            R0, R0, R4
20B8D2:  STRD.W          R0, R1, [R9,#0x10]
20B8D6:  LDR             R0, [R2,#0x14]
20B8D8:  SUBS            R0, R0, R4
20B8DA:  STR             R0, [R2,#0x14]
20B8DC:  LDR.W           R0, [R9,#0x1C]
20B8E0:  LDR             R1, [R0,#0x14]
20B8E2:  CMP             R1, #0
20B8E4:  ITT EQ
20B8E6:  LDREQ           R1, [R0,#8]
20B8E8:  STREQ           R1, [R0,#0x10]
20B8EA:  LDR.W           R0, [R10]
20B8EE:  LDR             R0, [R0,#0x10]
20B8F0:  CMP             R0, #0
20B8F2:  BNE.W           loc_20B630
20B8F6:  MOVS            R0, #0
20B8F8:  B               loc_20B990
20B8FA:  LDR.W           R0, [R10,#0x54]
20B8FE:  MOVS            R3, #0
20B900:  CMP             R0, #0
20B902:  ITTE GE
20B904:  LDRGE.W         R1, [R10,#0x30]
20B908:  ADDGE           R1, R0
20B90A:  MOVLT           R1, #0
20B90C:  LDR.W           R2, [R10,#0x64]
20B910:  LDR             R6, [SP,#0x30+var_28]
20B912:  SUBS            R2, R2, R0
20B914:  MOV             R0, R10
20B916:  CMP             R6, #4
20B918:  IT EQ
20B91A:  MOVEQ           R3, #1
20B91C:  BLX             j__tr_flush_block
20B920:  LDR.W           R6, [R10]
20B924:  LDR.W           R0, [R10,#0x64]
20B928:  STR.W           R0, [R10,#0x54]
20B92C:  LDR             R0, [R6,#0x1C]
20B92E:  LDR             R1, [R6,#0x10]
20B930:  LDR             R4, [R0,#0x14]
20B932:  CMP             R4, R1
20B934:  IT HI
20B936:  MOVHI           R4, R1
20B938:  CBZ             R4, loc_20B972
20B93A:  LDR             R1, [R0,#0x10]; void *
20B93C:  MOV             R2, R4; size_t
20B93E:  LDR             R0, [R6,#0xC]; void *
20B940:  BLX             memcpy_1
20B944:  LDR             R0, [R6,#0xC]
20B946:  LDR             R1, [R6,#0x1C]
20B948:  ADD             R0, R4
20B94A:  STR             R0, [R6,#0xC]
20B94C:  LDR             R0, [R1,#0x10]
20B94E:  ADD             R0, R4
20B950:  STR             R0, [R1,#0x10]
20B952:  LDRD.W          R0, R1, [R6,#0x10]
20B956:  LDR             R2, [R6,#0x1C]
20B958:  ADD             R1, R4
20B95A:  SUBS            R0, R0, R4
20B95C:  STRD.W          R0, R1, [R6,#0x10]
20B960:  LDR             R0, [R2,#0x14]
20B962:  SUBS            R0, R0, R4
20B964:  STR             R0, [R2,#0x14]
20B966:  LDR             R0, [R6,#0x1C]
20B968:  LDR             R1, [R0,#0x14]
20B96A:  CMP             R1, #0
20B96C:  ITT EQ
20B96E:  LDREQ           R1, [R0,#8]
20B970:  STREQ           R1, [R0,#0x10]
20B972:  LDR.W           R0, [R10]
20B976:  LDR             R0, [R0,#0x10]
20B978:  CBZ             R0, loc_20B986
20B97A:  LDR             R1, [SP,#0x30+var_28]
20B97C:  MOVS            R0, #1
20B97E:  CMP             R1, #4
20B980:  IT EQ
20B982:  MOVEQ           R0, #3
20B984:  B               loc_20B990
20B986:  LDR             R1, [SP,#0x30+var_28]
20B988:  MOVS            R0, #0
20B98A:  CMP             R1, #4
20B98C:  IT EQ
20B98E:  MOVEQ           R0, #2
20B990:  ADD             SP, SP, #0x14
20B992:  POP.W           {R8-R11}
20B996:  POP             {R4-R7,PC}
