; =========================================================
; Game Engine Function: quant_all_bands
; Address            : 0xBE47C - 0xBF18E
; =========================================================

BE47C:  PUSH            {R4-R7,LR}
BE47E:  ADD             R7, SP, #0xC
BE480:  PUSH.W          {R8-R11}
BE484:  SUB.W           SP, SP, #0x6F8
BE488:  SUB             SP, SP, #4
BE48A:  LDR.W           R5, =(__stack_chk_guard_ptr - 0xBE49A)
BE48E:  MOV             R6, SP
BE490:  LDR             R4, [R7,#arg_1C]
BE492:  MOV.W           R8, #0
BE496:  ADD             R5, PC; __stack_chk_guard_ptr
BE498:  STR.W           R3, [R6,#0x718+var_694]
BE49C:  LDR.W           R9, [R7,#arg_4]
BE4A0:  CMP             R4, #0
BE4A2:  LDR             R5, [R5]; __stack_chk_guard
BE4A4:  MOV             R3, R4
BE4A6:  LDR.W           R12, [R7,#arg_40]
BE4AA:  MOV.W           LR, #0
BE4AE:  MOV             R4, R9
BE4B0:  LDR             R5, [R5]
BE4B2:  STR.W           R5, [R6,#0x718+var_63C]
BE4B6:  MOV             R5, R0
BE4B8:  STR.W           R3, [R6,#0x718+var_670]
BE4BC:  IT EQ
BE4BE:  MOVEQ.W         R8, #1
BE4C2:  CMP             R0, #0
BE4C4:  MOV.W           R3, #1
BE4C8:  IT NE
BE4CA:  MOVNE           R5, #1
BE4CC:  CMP.W           R9, #0
BE4D0:  IT NE
BE4D2:  MOVNE           R4, #1
BE4D4:  CMP.W           R12, #7
BE4D8:  AND.W           R5, R5, R4
BE4DC:  MOV.W           R4, #0
BE4E0:  IT GT
BE4E2:  MOVGT           R4, #1
BE4E4:  LDR.W           R12, [R1,#0x18]
BE4E8:  STR.W           R1, [R6,#0x718+var_680]
BE4EC:  AND.W           R5, R5, R8
BE4F0:  LDR.W           R11, [R1,#8]
BE4F4:  CMP             R0, #0
BE4F6:  IT EQ
BE4F8:  MOVEQ.W         LR, #1
BE4FC:  AND.W           R10, R5, R4
BE500:  ORR.W           R1, R10, LR
BE504:  STR.W           R1, [R6,#0x718+var_698]
BE508:  STR.W           R2, [R6,#0x718+var_674]
BE50C:  ADD.W           R1, R12, R11,LSL#1
BE510:  LDRSH.W         R2, [R12,R2,LSL#1]
BE514:  CMP.W           R9, #0
BE518:  LDRSH.W         R5, [R1,#-2]
BE51C:  LDR.W           LR, [R7,#arg_34]
BE520:  MOV.W           R8, #1
BE524:  STR.W           R2, [R6,#0x718+var_640]
BE528:  LSL.W           R2, R2, LR
BE52C:  LSL.W           R1, R5, LR
BE530:  SUB.W           R4, R1, R2
BE534:  STR.W           R2, [R6,#0x718+var_68C]
BE538:  IT NE
BE53A:  MOVNE.W         R8, #2
BE53E:  MUL.W           R2, R8, R4
BE542:  MOVS            R4, #7
BE544:  ADD.W           R2, R4, R2,LSL#1
BE548:  BIC.W           R2, R2, #7
BE54C:  SUB.W           R9, SP, R2
BE550:  LDR             R2, [R7,#arg_14]
BE552:  CMP             R2, #0
BE554:  LDR             R2, [R7,#arg_0]
BE556:  IT NE
BE558:  LSLNE.W         R3, R3, LR
BE55C:  STR.W           R9, [R6,#0x718+var_654]
BE560:  STR.W           R3, [R6,#0x718+var_688]
BE564:  LDR             R3, [R7,#arg_18]
BE566:  MOV             SP, R9
BE568:  CMP.W           R10, #0
BE56C:  STR.W           R10, [R6,#0x88]
BE570:  STRD.W          R12, R1, [R6,#0xD0]
BE574:  BEQ             loc_BE592
BE576:  LDRSH.W         R2, [R12,R11,LSL#1]
BE57A:  SUBS            R2, R2, R5
BE57C:  LSL.W           R2, R2, LR
BE580:  ADD.W           R4, R4, R2,LSL#1
BE584:  LSLS            R2, R2, #1
BE586:  BIC.W           R4, R4, #7
BE58A:  SUB.W           LR, SP, R4
BE58E:  MOV             SP, LR
BE590:  B               loc_BE598
BE592:  ADD.W           LR, R2, R1,LSL#1
BE596:  MOVS            R2, #0
BE598:  ADDS            R2, #7
BE59A:  BIC.W           R2, R2, #7
BE59E:  SUB.W           R5, SP, R2
BE5A2:  STR             R5, [R6,#0x7C]
BE5A4:  MOV             SP, R5
BE5A6:  SUB.W           R5, SP, R2
BE5AA:  STR             R5, [R6,#0x78]
BE5AC:  MOV             SP, R5
BE5AE:  SUB.W           R5, SP, R2
BE5B2:  STR             R5, [R6,#0x1C]
BE5B4:  MOV             SP, R5
BE5B6:  SUB.W           R5, SP, R2
BE5BA:  STR             R5, [R6,#0x18]
BE5BC:  MOV             SP, R5
BE5BE:  SUB.W           R2, SP, R2
BE5C2:  STR             R2, [R6,#4]
BE5C4:  MOV             SP, R2
BE5C6:  ADD.W           R2, R6, #0x1B4
BE5CA:  LDR.W           R9, [R7,#arg_30]
BE5CE:  MOV             R1, R3
BE5D0:  LDR.W           R3, [R6,#0x90]
BE5D4:  MOV             R4, R2
BE5D6:  LDR             R2, [R7,#arg_C]
BE5D8:  STR.W           R9, [R4,#0x20]
BE5DC:  CMP             R3, #1
BE5DE:  STR             R2, [R4,#0x28]
BE5E0:  LDR             R2, [R7,#arg_3C]
BE5E2:  LDR             R5, [R2]
BE5E4:  LDR             R2, [R7,#arg_20]
BE5E6:  STRD.W          R2, R1, [R4,#0x14]
BE5EA:  LDR             R2, [R7,#arg_44]
BE5EC:  STR             R5, [R4,#0x2C]
BE5EE:  STR             R2, [R4,#0x30]
BE5F0:  LDR             R2, [R7,#arg_48]
BE5F2:  STR             R2, [R4,#0x38]
BE5F4:  LDR.W           R2, [R6,#0x80]
BE5F8:  STR             R0, [R4,#4]
BE5FA:  STR             R2, [R4,#8]
BE5FC:  LDR.W           R2, [R6,#0x98]
BE600:  STR             R2, [R4,#0xC]
BE602:  MOV.W           R2, #0
BE606:  STR             R2, [R4,#0x34]
BE608:  MOV.W           R2, #0
BE60C:  IT GT
BE60E:  MOVGT           R2, #1
BE610:  STR             R2, [R4,#0x3C]
BE612:  LDR.W           R4, [R6,#0xA4]
BE616:  MOV             R12, R4
BE618:  LDR.W           R4, [R6,#0x84]
BE61C:  CMP             R12, R4
BE61E:  BGE.W           loc_BF16A
BE622:  MOV             R5, R1
BE624:  LDR.W           R1, [R6,#0xD8]
BE628:  LDR.W           R10, [R6,#0xD4]
BE62C:  CMP             R3, #1
BE62E:  STR.W           LR, [R6,#0xCC]
BE632:  LDR.W           LR, [R6,#0xC4]
BE636:  UXTH            R1, R1
BE638:  LDR.W           R11, [R6,#0x8C]
BE63C:  ADD.W           R2, LR, R10,LSL#1
BE640:  STR.W           R1, [R6,#0xD8]
BE644:  LDR.W           R9, [R7,#arg_2C]
BE648:  SUB.W           R1, R2, R11,LSL#1
BE64C:  MOV.W           R2, #0
BE650:  STR             R1, [R6,#0x54]
BE652:  RSB.W           R1, R11, #0
BE656:  STR             R1, [R6,#0x60]
BE658:  IT GT
BE65A:  MOVGT           R2, #1
BE65C:  CMP             R5, #3
BE65E:  MOV.W           R5, #0
BE662:  IT NE
BE664:  MOVNE           R5, #1
BE666:  ORR.W           R1, R5, R2
BE66A:  LDR             R2, [R7,#arg_4]
BE66C:  STR             R1, [R6,#0x5C]
BE66E:  MOV.W           R1, R10,LSL#1
BE672:  SUB.W           R1, R1, R11,LSL#1
BE676:  CMP             R2, #0
BE678:  IT NE
BE67A:  MOVNE           R2, LR
BE67C:  ADD             R1, LR
BE67E:  CMP             R0, #0
BE680:  STR             R2, [R6,#0x74]
BE682:  STR.W           R1, [R6,#0xAC]
BE686:  IT NE
BE688:  MOVNE           R0, #1
BE68A:  LDR.W           R1, [R6,#0x88]
BE68E:  MOV             R11, R12
BE690:  LDR.W           R2, [R6,#0xD0]
BE694:  EORS            R0, R1
BE696:  STR             R0, [R6,#0x70]
BE698:  MOVS            R0, #1
BE69A:  LDR             R1, [R7,#arg_30]
BE69C:  LSLS            R0, R3
BE69E:  SUBS            R0, #1
BE6A0:  STR             R0, [R6,#0x6C]
BE6A2:  SUBS            R0, R2, #2
BE6A4:  STR             R0, [R6,#0x50]
BE6A6:  RSB.W           R0, R8, #0
BE6AA:  STR             R0, [R6,#0x4C]
BE6AC:  SUB.W           R0, R8, #1
BE6B0:  STR             R0, [R6,#0x68]
BE6B2:  ADD.W           R0, R1, #0x1C
BE6B6:  STR             R0, [R6,#0x44]
BE6B8:  ADD.W           R0, R1, #8
BE6BC:  STR             R0, [R6,#0x40]
BE6BE:  ADD.W           R0, R12, #2
BE6C2:  STR             R0, [R6,#0x58]
BE6C4:  ADD.W           R0, R12, #1
BE6C8:  STR.W           R0, [R6,#0xB0]
BE6CC:  SUBS            R0, R4, #1
BE6CE:  STR.W           R0, [R6,#0xB4]
BE6D2:  MOVS            R0, #0
BE6D4:  STR.W           R0, [R6,#0xBC]
BE6D8:  MOVS            R0, #1
BE6DA:  STR.W           R0, [R6,#0xC0]
BE6DE:  B               loc_BE702
BE6E0:  CMP.W           R4, R9,LSL#3
BE6E4:  MOV.W           R5, #0
BE6E8:  IT GT
BE6EA:  MOVGT           R5, #1
BE6EC:  STR.W           R5, [R6,#0xC0]
BE6F0:  LDRH.W          R5, [R2,R11,LSL#1]
BE6F4:  STR.W           R5, [R6,#0xD8]
BE6F8:  LDR.W           R5, [R6,#0x94]
BE6FC:  ADD             R1, R5
BE6FE:  ADD.W           R9, R1, R0
BE702:  ADD.W           R10, R6, #0x1B4
BE706:  ADD.W           R0, R11, #1
BE70A:  STR.W           R0, [R6,#0x9C]
BE70E:  STR.W           R11, [R10,#0x10]
BE712:  LDRSH.W         R5, [R2,R0,LSL#1]
BE716:  LDR             R0, [R7,#arg_30]
BE718:  BLX             j_ec_tell_frac
BE71C:  MOV             R2, R0
BE71E:  LDR             R0, [R7,#arg_28]
BE720:  LDR             R1, [R7,#arg_34]
BE722:  SUBS            R4, R0, R2
BE724:  STR.W           R2, [R6,#0x94]
BE728:  SUBS            R0, R4, #1
BE72A:  STR.W           R0, [R10,#0x24]
BE72E:  LDR.W           R0, [R6,#0xD8]
BE732:  LSLS            R5, R1
BE734:  SXTH            R0, R0
BE736:  LSL.W           R10, R0, R1
BE73A:  LDR.W           R0, [R6,#0xA4]
BE73E:  CMP             R11, R0
BE740:  LDR             R0, [R7,#arg_4]
BE742:  IT NE
BE744:  SUBNE.W         R9, R9, R2
BE748:  CMP             R0, #0
BE74A:  IT NE
BE74C:  ADDNE.W         R0, R0, R10,LSL#1
BE750:  STR.W           R9, [R6,#0xA0]
BE754:  STR.W           R0, [R6,#0xD8]
BE758:  LDR             R0, [R7,#arg_38]
BE75A:  MOV             R1, R0
BE75C:  CMP             R11, R1
BE75E:  BGE             loc_BE78E
BE760:  SUB.W           R1, R1, R11
BE764:  MOV             R0, R9
BE766:  CMP             R1, #3
BE768:  IT GE
BE76A:  MOVGE           R1, #3
BE76C:  BLX             sub_108848
BE770:  LDR             R1, [R7,#arg_10]
BE772:  LDR.W           R1, [R1,R11,LSL#2]
BE776:  ADD             R1, R0
BE778:  CMP             R4, R1
BE77A:  IT LT
BE77C:  MOVLT           R1, R4
BE77E:  CMP             R1, #0
BE780:  BLT             loc_BE78E
BE782:  MOVW            R0, #0x3FFF
BE786:  CMP             R1, R0
BE788:  IT GE
BE78A:  MOVGE           R1, R0
BE78C:  B               loc_BE790
BE78E:  MOVS            R1, #0
BE790:  LDR.W           R0, [R6,#0x80]
BE794:  SUB.W           R3, R5, R10
BE798:  LDR.W           LR, [R6,#0xD0]
BE79C:  LDR.W           R4, [R6,#0xC4]
BE7A0:  CMP             R0, #1
BE7A2:  LDR.W           R12, [R6,#0xAC]
BE7A6:  STR.W           R1, [R6,#0xB8]
BE7AA:  STR.W           R3, [R6,#0xD4]
BE7AE:  STR.W           R10, [R6,#0xC8]
BE7B2:  BNE             loc_BE7EC
BE7B4:  LDR.W           R0, [R6,#0xB0]
BE7B8:  CMP             R11, R0
BE7BA:  BEQ             loc_BE7D4
BE7BC:  LDR.W           R0, [R6,#0xA4]
BE7C0:  LDRSH.W         R1, [LR,R11,LSL#1]
BE7C4:  LDR             R2, [R7,#arg_34]
BE7C6:  LDRSH.W         R0, [LR,R0,LSL#1]
BE7CA:  LSLS            R1, R2
BE7CC:  SUBS            R1, R1, R3
BE7CE:  LSLS            R0, R2
BE7D0:  CMP             R1, R0
BE7D2:  BLT             loc_BE7EC
BE7D4:  LDR.W           R0, [R6,#0xBC]
BE7D8:  CMP             R0, #0
BE7DA:  IT EQ
BE7DC:  MOVEQ           R0, R11
BE7DE:  LDR.W           R1, [R6,#0xC0]
BE7E2:  CMP             R1, #0
BE7E4:  IT NE
BE7E6:  MOVNE           R0, R11
BE7E8:  STR.W           R0, [R6,#0xBC]
BE7EC:  LDR.W           R0, [R6,#0xB0]
BE7F0:  CMP             R11, R0
BE7F2:  BNE             loc_BE862
BE7F4:  LDR.W           R0, [R6,#0x98]
BE7F8:  LDR.W           R1, [R6,#0xA4]
BE7FC:  LDR.W           R2, [R6,#0xB0]
BE800:  LDR             R0, [R0,#0x18]
BE802:  LDR             R3, [R6,#0x58]
BE804:  LDRSH.W         R1, [R0,R1,LSL#1]
BE808:  LDRSH.W         R2, [R0,R2,LSL#1]
BE80C:  LDRSH.W         R0, [R0,R3,LSL#1]
BE810:  SUBS            R1, R2, R1
BE812:  SUBS            R0, R0, R2
BE814:  LDR             R2, [R7,#arg_34]
BE816:  LSLS            R0, R2
BE818:  LSL.W           R10, R1, R2
BE81C:  RSB.W           R5, R0, R10,LSL#1
BE820:  SUB.W           R0, R0, R10
BE824:  MOV.W           R9, R0,LSL#1
BE828:  ADD.W           R1, R4, R5,LSL#1; src
BE82C:  ADD.W           R0, R4, R10,LSL#1; dest
BE830:  MOV             R2, R9; n
BE832:  BLX             j_memcpy
BE836:  LDR.W           R4, [R6,#0xC4]
BE83A:  LDR.W           LR, [R6,#0xD0]
BE83E:  LDRD.W          R0, R12, [R6,#0xA8]
BE842:  CMP             R0, #0
BE844:  BEQ             loc_BE862
BE846:  LDR             R1, [R6,#0x54]
BE848:  MOV             R2, R9; n
BE84A:  ADD.W           R0, R1, R10,LSL#1; dest
BE84E:  ADD.W           R1, R1, R5,LSL#1; src
BE852:  BLX             j_memcpy
BE856:  LDR.W           R12, [R6,#0xAC]
BE85A:  LDR.W           R4, [R6,#0xC4]
BE85E:  LDR.W           LR, [R6,#0xD0]
BE862:  LDR             R0, [R7,#arg_24]
BE864:  ADD.W           R1, R6, #0x1B4
BE868:  LDR.W           R5, [R6,#0xCC]
BE86C:  MOVS            R2, #0
BE86E:  LDR.W           R0, [R0,R11,LSL#2]
BE872:  STR             R0, [R1,#0x1C]
BE874:  LDR.W           R1, [R6,#0x98]
BE878:  LDR             R1, [R1,#0xC]
BE87A:  CMP             R11, R1
BE87C:  IT GE
BE87E:  MOVGE           R5, R2
BE880:  LDR.W           R2, [R6,#0xB4]
BE884:  CMP             R11, R2
BE886:  MOV             R2, R5
BE888:  IT EQ
BE88A:  MOVEQ           R2, #0
BE88C:  LDR.W           R3, [R6,#0x88]
BE890:  CMP             R3, #0
BE892:  IT EQ
BE894:  MOVEQ           R5, R2
BE896:  LDR.W           R3, [R6,#0xC8]
BE89A:  CMP             R11, R1
BE89C:  LDR             R1, [R7,#arg_0]
BE89E:  MOV             R2, R4
BE8A0:  STR.W           R5, [R6,#0xCC]
BE8A4:  IT LT
BE8A6:  ADDLT.W         R2, R1, R3,LSL#1
BE8AA:  LDR             R1, [R6,#0x74]
BE8AC:  STR.W           R2, [R6,#0xC0]
BE8B0:  LDR.W           R2, [R6,#0xD8]
BE8B4:  IT GE
BE8B6:  MOVGE           R2, R1
BE8B8:  CMP             R0, #0
BE8BA:  MOV.W           R0, #0
BE8BE:  STR.W           R2, [R6,#0xD8]
BE8C2:  IT LT
BE8C4:  MOVLT           R0, #1
BE8C6:  LDR.W           R1, [R6,#0xBC]
BE8CA:  MOV.W           R2, #0xFFFFFFFF
BE8CE:  CMP             R1, #0
BE8D0:  BEQ             loc_BE992
BE8D2:  LDR             R1, [R6,#0x5C]
BE8D4:  LDR.W           R9, [R6,#0x6C]
BE8D8:  LDR.W           R5, [R6,#0x8C]
BE8DC:  ORRS            R0, R1
BE8DE:  CMP             R0, #1
BE8E0:  MOV             R10, R9
BE8E2:  BNE             loc_BE99C
BE8E4:  LDR.W           R1, [R6,#0xBC]
BE8E8:  LDR.W           R9, [R7,#arg_34]
BE8EC:  LDR.W           R2, [R6,#0xD4]
BE8F0:  SUBS            R3, R1, #2
BE8F2:  LDRSH.W         R0, [LR,R1,LSL#1]
BE8F6:  MOV             R4, R1
BE8F8:  LSL.W           R0, R0, R9
BE8FC:  SUBS            R0, R0, R5
BE8FE:  SUBS            R2, R0, R2
BE900:  MOVS            R0, #0
BE902:  CMP             R2, #0
BE904:  IT LE
BE906:  MOVLE           R2, R0
BE908:  LDR.W           R10, [R6,#0x50]
BE90C:  ADD.W           R12, R2, R5
BE910:  LDR             R5, [R6,#0x4C]
BE912:  STR.W           R2, [R6,#0xC8]
BE916:  MOV             R0, R3
BE918:  LDRSH.W         R3, [R10,R4,LSL#1]
BE91C:  MOV             R1, R5
BE91E:  SUB.W           R5, R1, R8
BE922:  SUBS            R4, #1
BE924:  LSL.W           R2, R3, R9
BE928:  SUBS            R3, R0, #1
BE92A:  CMP             R2, R12
BE92C:  BGT             loc_BE916
BE92E:  LDR.W           R2, [R6,#0xD4]
BE932:  LDR.W           R3, [R6,#0xBC]
BE936:  ADD             R2, R12
BE938:  MOV             R4, R3
BE93A:  CMP             R4, R11
BE93C:  ITTTT LT
BE93E:  LDRSHLT.W       R3, [LR,R4,LSL#1]
BE942:  LSLLT.W         R5, R3, R9
BE946:  ADDLT           R3, R4, #1
BE948:  CMPLT           R5, R2
BE94A:  BLT             loc_BE938
BE94C:  LDR.W           R3, [R6,#0xBC]
BE950:  SUBS            R4, #1
BE952:  LDR             R2, [R7,#arg_8]
BE954:  MOV.W           R10, #0
BE958:  MOV.W           R9, #0
BE95C:  MLA.W           R12, R8, R3, R2
BE960:  ADDS            R3, #1
BE962:  MLA.W           R3, R8, R3, R2
BE966:  LDRB.W          R5, [R12,R1]
BE96A:  ADD.W           R2, R1, R8
BE96E:  ADD             R1, R3
BE970:  ADDS            R0, #1
BE972:  ORR.W           R10, R10, R5
BE976:  LDRB.W          R1, [R1,#-1]
BE97A:  CMP             R0, R4
BE97C:  ORR.W           R9, R9, R1
BE980:  MOV             R1, R2
BE982:  BLT             loc_BE966
BE984:  LDR.W           R5, [R6,#0x8C]
BE988:  LDR.W           R12, [R6,#0xAC]
BE98C:  LDRD.W          R4, R2, [R6,#0xC4]
BE990:  B               loc_BE99C
BE992:  LDR.W           R9, [R6,#0x6C]
BE996:  LDR.W           R5, [R6,#0x8C]
BE99A:  MOV             R10, R9
BE99C:  LDR             R0, [R7,#arg_20]
BE99E:  MOVS            R1, #0
BE9A0:  STR.W           R2, [R6,#0xC8]
BE9A4:  CMP             R11, R0
BE9A6:  MOV.W           R0, #0
BE9AA:  IT NE
BE9AC:  MOVNE           R0, #1
BE9AE:  LDR.W           R2, [R6,#0xA8]
BE9B2:  CMP             R2, #0
BE9B4:  IT EQ
BE9B6:  MOVEQ           R1, #1
BE9B8:  ORRS            R0, R1
BE9BA:  LDR             R1, [R6,#0x70]
BE9BC:  ORRS            R0, R1
BE9BE:  BEQ             loc_BEA44
BE9C0:  CMP             R2, #0
BE9C2:  ITT NE
BE9C4:  LDRNE           R0, [R7,#arg_20]
BE9C6:  CMPNE           R11, R0
BE9C8:  BEQ             loc_BEA70
BE9CA:  LDR.W           R1, [R6,#0xC8]
BE9CE:  ADDS            R0, R1, #1
BE9D0:  STR             R0, [R6,#0x3C]
BE9D2:  MOV.W           R0, #0
BE9D6:  IT NE
BE9D8:  ADDNE.W         R0, R4, R1,LSL#1
BE9DC:  LDR.W           R1, [R6,#0xB8]
BE9E0:  ADD.W           R1, R1, R1,LSR#31
BE9E4:  ASRS            R3, R1, #1; int
BE9E6:  LDR.W           R1, [R6,#0xB4]
BE9EA:  STR             R3, [R6,#0x48]
BE9EC:  CMP             R11, R1
BE9EE:  BNE.W           loc_BED6C
BE9F2:  SUB             SP, SP, #0x20 ; ' '
BE9F4:  LDR.W           R1, [R6,#0x90]
BE9F8:  MOVS            R2, #0
BE9FA:  STRD.W          R1, R0, [SP,#0x738+var_738]; int
BE9FE:  MOVW            R1, #0x7FFF
BEA02:  LDR             R0, [R7,#arg_34]
BEA04:  STRD.W          R0, R2, [SP,#0x738+var_730]; int
BEA08:  LDR.W           R4, [R6,#0xCC]
BEA0C:  STR             R1, [SP,#0x738+var_728]; int
BEA0E:  STRD.W          R4, R10, [SP,#0x738+dest]; dest
BEA12:  ADD.W           R10, R6, #0x1B8
BEA16:  LDR.W           R5, [R6,#0xD4]
BEA1A:  LDR.W           R1, [R6,#0xC0]; int
BEA1E:  MOV             R0, R10; int
BEA20:  MOV             R2, R5; int
BEA22:  BL              sub_BF198
BEA26:  LDR             R3, [R7,#arg_34]
BEA28:  ADD             SP, SP, #0x20 ; ' '
BEA2A:  STR             R0, [R6,#0x64]
BEA2C:  LDR             R0, [R6,#0x3C]
BEA2E:  LDR.W           R2, [R6,#0xC8]
BEA32:  LDR             R1, [R6,#0x54]
BEA34:  CMP             R0, #0
BEA36:  MOV.W           R0, #0
BEA3A:  IT NE
BEA3C:  ADDNE.W         R0, R1, R2,LSL#1
BEA40:  MOVS            R2, #0
BEA42:  B               loc_BEDDC
BEA44:  LDRSH.W         R0, [LR,R11,LSL#1]
BEA48:  LDR             R3, [R7,#arg_34]
BEA4A:  LSLS            R0, R3
BEA4C:  CMP             R0, R5
BEA4E:  BLE             loc_BEA70
BEA50:  MOVS            R0, #0
BEA52:  LDRSH.W         R1, [R4,R0,LSL#1]
BEA56:  LDRSH.W         R2, [R12,R0,LSL#1]
BEA5A:  ADD             R1, R2
BEA5C:  LSRS            R1, R1, #1
BEA5E:  STRH.W          R1, [R4,R0,LSL#1]
BEA62:  ADDS            R0, #1
BEA64:  LDRSH.W         R1, [LR,R11,LSL#1]
BEA68:  LSLS            R1, R3
BEA6A:  SUBS            R1, R1, R5
BEA6C:  CMP             R0, R1
BEA6E:  BLT             loc_BEA52
BEA70:  LDR.W           R0, [R6,#0xD8]
BEA74:  CMP             R0, #0
BEA76:  BEQ.W           loc_BEC8E
BEA7A:  LDR             R0, [R7,#arg_20]
BEA7C:  CMP             R11, R0
BEA7E:  MOV.W           R0, #0
BEA82:  IT LT
BEA84:  MOVLT           R0, #1
BEA86:  LDR.W           R1, [R6,#0x88]
BEA8A:  ANDS            R0, R1
BEA8C:  CMP             R0, #1
BEA8E:  BNE.W           loc_BECF6
BEA92:  LDR.W           R0, [R6,#0x98]
BEA96:  LDR             R1, [R6,#0x40]
BEA98:  LDR             R4, [R7,#arg_C]
BEA9A:  LDR             R0, [R0,#8]
BEA9C:  MOV             R5, R1
BEA9E:  MOV             R12, R4
BEAA0:  LDM             R5, {R1-R3,R5}
BEAA2:  ADD             R0, R11
BEAA4:  LDR.W           R4, [R12,R11,LSL#2]
BEAA8:  STR             R4, [R6,#0x64]
BEAAA:  LDR.W           R0, [R12,R0,LSL#2]
BEAAE:  STR             R0, [R6,#0x48]
BEAB0:  LDR             R0, [R7,#arg_30]
BEAB2:  MOV             R4, R0
BEAB4:  LDR             R0, [R4]
BEAB6:  STR             R0, [R6,#0x34]
BEAB8:  LDR             R0, [R4,#4]
BEABA:  STR             R0, [R6,#0x30]
BEABC:  ADD.W           R0, R6, #0x1B4
BEAC0:  STMDB.W         R0, {R1-R3}
BEAC4:  ADD.W           R1, R6, #0x190
BEAC8:  STR             R5, [R0]
BEACA:  LDR.W           R12, [R6,#0x44]
BEACE:  LDR             R0, [R4,#0x18]
BEAD0:  STR             R0, [R6,#0x38]
BEAD2:  LDM.W           R12, {R0,R2-R5}
BEAD6:  ADD.W           R12, R6, #0x120
BEADA:  STM             R1!, {R0,R2-R5}
BEADC:  ADD.W           R1, R6, #0x1B8
BEAE0:  LDM             R1!, {R0,R2-R5}
BEAE2:  STM.W           R12!, {R0,R2-R5}
BEAE6:  LDM             R1!, {R0,R2-R5}
BEAE8:  STM.W           R12!, {R0,R2-R5}
BEAEC:  LDM.W           R1, {R0,R2-R5}
BEAF0:  STM.W           R12, {R0,R2-R5}
BEAF4:  LDR.W           R0, [R6,#0xD4]
BEAF8:  LDR.W           R1, [R6,#0xC0]; src
BEAFC:  LSLS            R4, R0, #1
BEAFE:  LDR             R0, [R6,#0x7C]; dest
BEB00:  MOV             R2, R4; n
BEB02:  BLX             j_memcpy
BEB06:  LDR             R0, [R6,#0x78]; dest
BEB08:  MOV             R2, R4; n
BEB0A:  LDR.W           R1, [R6,#0xD8]; src
BEB0E:  STR.W           R4, [R6,#0xA8]
BEB12:  BLX             j_memcpy
BEB16:  ADD.W           R1, R6, #0x1B4
BEB1A:  MOV.W           R0, #0xFFFFFFFF
BEB1E:  LDR             R2, [R6,#0x48]
BEB20:  STR             R0, [R1,#0x34]
BEB22:  LDR             R1, [R6,#0x64]
BEB24:  MOV             R0, R2
BEB26:  LDR.W           R12, [R6,#0xC4]
BEB2A:  CMP             R1, R2
BEB2C:  MOV             R3, R2
BEB2E:  IT LT
BEB30:  MOVLT           R0, R1
BEB32:  MOV             R2, R1
BEB34:  MOV             R1, #0x55555556
BEB3C:  SMMUL.W         R0, R0, R1
BEB40:  ADD.W           R0, R0, R0,LSR#31
BEB44:  ADDS            R1, R0, R3
BEB46:  ADD             R0, R2
BEB48:  CMP             R0, R1
BEB4A:  MOV             R2, R1
BEB4C:  IT GT
BEB4E:  MOVGT           R2, R0
BEB50:  ADDS            R2, #1
BEB52:  CLZ.W           R2, R2
BEB56:  RSB.W           R3, R2, #0x11
BEB5A:  RSB.W           R2, R2, #0x1F
BEB5E:  RSB.W           R5, R2, #0xE
BEB62:  CMP             R2, #0xE
BEB64:  ORR.W           R2, R9, R10
BEB68:  LDR.W           R10, [R7,#arg_34]
BEB6C:  LSL.W           R4, R1, R5
BEB70:  IT GT
BEB72:  ASRGT.W         R4, R1, R3
BEB76:  STR             R4, [R6,#0x2C]
BEB78:  LSL.W           R4, R0, R5
BEB7C:  IT GT
BEB7E:  ASRGT.W         R4, R0, R3
BEB82:  LDR.W           R1, [R6,#0xC8]
BEB86:  MOVS            R3, #0
BEB88:  ADDS            R0, R1, #1
BEB8A:  IT NE
BEB8C:  ADDNE.W         R3, R12, R1,LSL#1
BEB90:  LDR.W           R1, [R6,#0xB4]
BEB94:  MOVS            R0, #0
BEB96:  CMP             R11, R1
BEB98:  BEQ             loc_BEBB0
BEB9A:  LDR.W           R0, [R6,#0xD0]
BEB9E:  LDR             R1, [R6,#0x60]
BEBA0:  LDRSH.W         R0, [R0,R11,LSL#1]
BEBA4:  LSL.W           R0, R0, R10
BEBA8:  ADD.W           R0, R12, R0,LSL#1
BEBAC:  ADD.W           R0, R0, R1,LSL#1
BEBB0:  SUB             SP, SP, #0x20 ; ' '
BEBB2:  LDR.W           R1, [R6,#0xB8]
BEBB6:  STR             R1, [SP,#0x738+var_738]; int
BEBB8:  LDR.W           R1, [R6,#0x90]
BEBBC:  STR             R1, [SP,#0x738+src]; int
BEBBE:  STR             R3, [R6,#0x3C]
BEBC0:  STRD.W          R3, R10, [SP,#0x738+var_730]; void *
BEBC4:  STR             R0, [SP,#0x738+var_728]; int
BEBC6:  LDR.W           R0, [R6,#0xCC]
BEBCA:  STR             R0, [SP,#0x738+dest]; void *
BEBCC:  ADD.W           R0, R6, #0x1B8; int
BEBD0:  STR             R2, [R6,#0x64]
BEBD2:  STR             R2, [SP,#0x738+var_720]; int
BEBD4:  LDR.W           R5, [R6,#0xC0]
BEBD8:  LDRD.W          R9, R2, [R6,#0xD4]; int
BEBDC:  MOV             R1, R5; int
BEBDE:  MOV             R3, R9; int
BEBE0:  BL              sub_BF844
BEBE4:  ADD             SP, SP, #0x20 ; ' '
BEBE6:  STR             R0, [R6,#0x10]
BEBE8:  SXTH            R0, R4
BEBEA:  MOV.W           R12, R4,LSL#16
BEBEE:  CMP.W           R9, #1
BEBF2:  STR             R0, [R6,#0x48]
BEBF4:  STR.W           R12, [R6,#0x14]
BEBF8:  BLT.W           loc_BEE0E
BEBFC:  LDR             R1, [R6,#0x7C]
BEBFE:  MOVS            R0, #0
BEC00:  MOV             R2, R5
BEC02:  MOV             R3, R9
BEC04:  MOV             LR, R5
BEC06:  LDRSH.W         R5, [R1],#2
BEC0A:  SUBS            R3, #1
BEC0C:  LDRSH.W         R4, [R2],#2
BEC10:  SMLABB.W        R0, R4, R5, R0
BEC14:  BNE             loc_BEC06
BEC16:  ASRS            R0, R0, #0x10
BEC18:  MOV.W           R1, R12,ASR#15
BEC1C:  MUL.W           R12, R1, R0
BEC20:  LDR             R2, [R6,#0x7C]
BEC22:  MOVS            R1, #0
BEC24:  MOV             R3, LR
BEC26:  MOV             R5, R9
BEC28:  LDRSH.W         R4, [R2],#2
BEC2C:  SUBS            R5, #1
BEC2E:  LDRSH.W         R0, [R3],#2
BEC32:  SMLABB.W        R1, R0, R4, R1
BEC36:  BNE             loc_BEC28
BEC38:  UXTH            R0, R1
BEC3A:  LDR             R1, [R6,#0x48]
BEC3C:  LDR.W           R2, [R6,#0xD8]
BEC40:  MULS            R0, R1
BEC42:  LDR             R1, [R6,#0x78]
BEC44:  ADD.W           R0, R12, R0,ASR#15
BEC48:  STR             R0, [R6,#0x28]
BEC4A:  LDR             R0, [R6,#0x2C]
BEC4C:  LSLS            R0, R0, #0x10
BEC4E:  STR.W           R0, [R6,#0xC8]
BEC52:  MOVS            R0, #0
BEC54:  LDRSH.W         R5, [R1],#2
BEC58:  SUBS.W          R9, R9, #1
BEC5C:  LDRSH.W         R4, [R2],#2
BEC60:  SMLABB.W        R0, R4, R5, R0
BEC64:  BNE             loc_BEC54
BEC66:  LDR.W           R1, [R6,#0xC8]
BEC6A:  ASRS            R0, R0, #0x10
BEC6C:  MOV.W           R9, #0
BEC70:  ASRS            R1, R1, #0xF
BEC72:  MULS            R0, R1
BEC74:  STR             R0, [R6,#0x24]
BEC76:  LDR             R0, [R6,#0x78]
BEC78:  LDRD.W          R2, R1, [R6,#0xD4]
BEC7C:  LDRSH.W         R3, [R0],#2
BEC80:  SUBS            R2, #1
BEC82:  LDRSH.W         R5, [R1],#2
BEC86:  SMLABB.W        R9, R5, R3, R9
BEC8A:  BNE             loc_BEC7C
BEC8C:  B               loc_BEE22
BEC8E:  LDR.W           R2, [R6,#0xC8]
BEC92:  ADD.W           R12, R6, #0x1B8
BEC96:  MOVS            R1, #0
BEC98:  MOVW            R5, #0x7FFF
BEC9C:  ADDS            R0, R2, #1
BEC9E:  MOV.W           R0, #0
BECA2:  IT NE
BECA4:  ADDNE.W         R0, R4, R2,LSL#1
BECA8:  LDR.W           R2, [R6,#0xB4]
BECAC:  CMP             R11, R2
BECAE:  BEQ             loc_BECC2
BECB0:  LDRSH.W         R1, [LR,R11,LSL#1]
BECB4:  LDR             R2, [R7,#arg_34]
BECB6:  LSLS            R1, R2
BECB8:  LDR             R2, [R6,#0x60]
BECBA:  ADD.W           R1, R4, R1,LSL#1
BECBE:  ADD.W           R1, R1, R2,LSL#1
BECC2:  ORR.W           R2, R9, R10
BECC6:  SUB             SP, SP, #0x20 ; ' '
BECC8:  LDR.W           R3, [R6,#0x90]
BECCC:  STRD.W          R3, R0, [SP,#0x738+var_738]; int
BECD0:  ADD             R3, SP, #0x738+var_730
BECD2:  LDR             R0, [R7,#arg_34]
BECD4:  STM             R3!, {R0,R1,R5}
BECD6:  LDR.W           R0, [R6,#0xCC]
BECDA:  STRD.W          R0, R2, [SP,#0x738+dest]; dest
BECDE:  MOV             R0, R12; int
BECE0:  LDR.W           R9, [R6,#0xD4]
BECE4:  LDR.W           R4, [R6,#0xB8]
BECE8:  LDR.W           R1, [R6,#0xC0]; int
BECEC:  MOV             R2, R9; int
BECEE:  MOV             R3, R4; int
BECF0:  BL              sub_BF198
BECF4:  B               loc_BED5E
BECF6:  ADD.W           R1, R6, #0x1B4
BECFA:  LDR.W           R2, [R6,#0xC8]
BECFE:  MOVS            R0, #0
BED00:  ADD.W           R5, R6, #0x1B8
BED04:  STR             R0, [R1,#0x34]
BED06:  ADDS            R1, R2, #1
BED08:  MOV.W           R1, #0
BED0C:  IT NE
BED0E:  ADDNE.W         R1, R4, R2,LSL#1
BED12:  LDR.W           R2, [R6,#0xB4]
BED16:  CMP             R11, R2
BED18:  BEQ             loc_BED2C
BED1A:  LDRSH.W         R0, [LR,R11,LSL#1]
BED1E:  LDR             R2, [R7,#arg_34]
BED20:  LSLS            R0, R2
BED22:  LDR             R2, [R6,#0x60]
BED24:  ADD.W           R0, R4, R0,LSL#1
BED28:  ADD.W           R0, R0, R2,LSL#1
BED2C:  ORR.W           R2, R9, R10
BED30:  SUB             SP, SP, #0x20 ; ' '
BED32:  LDR.W           R4, [R6,#0xB8]
BED36:  LDR.W           R3, [R6,#0x90]
BED3A:  STR             R4, [SP,#0x738+var_738]; int
BED3C:  STRD.W          R3, R1, [SP,#0x738+src]; int
BED40:  LDR             R1, [R7,#arg_34]
BED42:  STRD.W          R1, R0, [SP,#0x738+var_72C]; int
BED46:  LDR.W           R0, [R6,#0xCC]
BED4A:  STRD.W          R0, R2, [SP,#0x738+dest]; void *
BED4E:  MOV             R0, R5; int
BED50:  LDR.W           R1, [R6,#0xC0]; int
BED54:  LDRD.W          R9, R2, [R6,#0xD4]; int
BED58:  MOV             R3, R9; int
BED5A:  BL              sub_BF844
BED5E:  ADD             SP, SP, #0x20 ; ' '
BED60:  MOV             R5, R0
BED62:  MOVS            R0, #0
BED64:  STR.W           R0, [R6,#0xA8]
BED68:  MOV             R0, R5
BED6A:  B               loc_BF130
BED6C:  LDRSH.W         R1, [LR,R11,LSL#1]
BED70:  SUB             SP, SP, #0x20 ; ' '
BED72:  LDR             R2, [R7,#arg_34]
BED74:  LDR             R5, [R6,#0x60]
BED76:  LSLS            R1, R2
BED78:  ADD.W           R1, R4, R1,LSL#1
BED7C:  ADD.W           R1, R1, R5,LSL#1
BED80:  LDR.W           R5, [R6,#0x90]
BED84:  STRD.W          R5, R0, [SP,#0x738+var_738]; int
BED88:  MOVW            R0, #0x7FFF
BED8C:  STRD.W          R2, R1, [SP,#0x738+var_730]; int
BED90:  LDR.W           R4, [R6,#0xCC]
BED94:  STR             R0, [SP,#0x738+var_728]; int
BED96:  STRD.W          R4, R10, [SP,#0x738+dest]; dest
BED9A:  ADD.W           R10, R6, #0x1B8
BED9E:  LDR.W           R5, [R6,#0xD4]
BEDA2:  LDR.W           R1, [R6,#0xC0]; int
BEDA6:  MOV             R0, R10; int
BEDA8:  MOV             R2, R5; int
BEDAA:  BL              sub_BF198
BEDAE:  ADD             SP, SP, #0x20 ; ' '
BEDB0:  STR             R0, [R6,#0x64]
BEDB2:  LDR.W           R0, [R6,#0xD0]
BEDB6:  LDR.W           R3, [R6,#0xC8]
BEDBA:  LDR             R2, [R6,#0x54]
BEDBC:  LDRSH.W         R1, [R0,R11,LSL#1]
BEDC0:  LDR             R0, [R6,#0x3C]
BEDC2:  CMP             R0, #0
BEDC4:  MOV.W           R0, #0
BEDC8:  IT NE
BEDCA:  ADDNE.W         R0, R2, R3,LSL#1
BEDCE:  LDR             R3, [R7,#arg_34]
BEDD0:  LSLS            R1, R3
BEDD2:  ADD.W           R1, R2, R1,LSL#1
BEDD6:  LDR             R2, [R6,#0x60]
BEDD8:  ADD.W           R2, R1, R2,LSL#1
BEDDC:  SUB             SP, SP, #0x20 ; ' '
BEDDE:  LDR.W           R1, [R6,#0x90]
BEDE2:  STRD.W          R1, R0, [SP,#0x738+var_738]; int
BEDE6:  MOVW            R0, #0x7FFF
BEDEA:  ADD             R1, SP, #0x738+var_728
BEDEC:  STRD.W          R3, R2, [SP,#0x738+var_730]; int
BEDF0:  STM.W           R1, {R0,R4,R9}
BEDF4:  MOV             R0, R10; int
BEDF6:  MOV             R2, R5; int
BEDF8:  LDR.W           R1, [R6,#0xD8]; int
BEDFC:  LDR             R3, [R6,#0x48]; int
BEDFE:  BL              sub_BF198
BEE02:  ADD             SP, SP, #0x20 ; ' '
BEE04:  MOV             R9, R5
BEE06:  LDR.W           R4, [R6,#0xB8]
BEE0A:  LDR             R5, [R6,#0x64]
BEE0C:  B               loc_BF130
BEE0E:  LDR             R0, [R6,#0x2C]
BEE10:  MOV.W           R9, #0
BEE14:  LSLS            R0, R0, #0x10
BEE16:  STR.W           R0, [R6,#0xC8]
BEE1A:  MOVS            R0, #0
BEE1C:  STR             R0, [R6,#0x24]
BEE1E:  MOVS            R0, #0
BEE20:  STR             R0, [R6,#0x28]
BEE22:  LDR.W           R12, [R7,#arg_30]
BEE26:  ADD.W           R1, R6, #0x160
BEE2A:  LDM.W           R12!, {R0,R2-R5,LR}
BEE2E:  STM.W           R1!, {R0,R2-R5,LR}
BEE32:  LDM.W           R12, {R0,R2-R5,LR}
BEE36:  ADD.W           R12, R6, #0xE0
BEE3A:  STM.W           R1, {R0,R2-R5,LR}
BEE3E:  ADD.W           R1, R6, #0x1B8
BEE42:  LDM             R1!, {R0,R2-R5}
BEE44:  STM.W           R12!, {R0,R2-R5}
BEE48:  LDM             R1!, {R0,R2-R5}
BEE4A:  STM.W           R12!, {R0,R2-R5}
BEE4E:  LDM.W           R1, {R0,R2-R5}
BEE52:  STM.W           R12, {R0,R2-R5}
BEE56:  LDR.W           R4, [R6,#0xA8]
BEE5A:  LDR             R0, [R6,#0x1C]; dest
BEE5C:  LDR.W           R1, [R6,#0xC0]; src
BEE60:  MOV             R2, R4; n
BEE62:  BLX             j_memcpy
BEE66:  LDR             R0, [R6,#0x18]; dest
BEE68:  MOV             R2, R4; n
BEE6A:  LDR.W           R1, [R6,#0xD8]; src
BEE6E:  BLX             j_memcpy
BEE72:  LDR.W           R0, [R6,#0xB4]
BEE76:  CMP             R11, R0
BEE78:  BEQ             loc_BEE9C
BEE7A:  LDR.W           R0, [R6,#0xD0]
BEE7E:  MOV             R2, R4; n
BEE80:  LDR.W           R1, [R6,#0xC4]
BEE84:  LDRSH.W         R0, [R0,R11,LSL#1]
BEE88:  LSL.W           R0, R0, R10
BEE8C:  ADD.W           R0, R1, R0,LSL#1
BEE90:  LDR             R1, [R6,#0x60]
BEE92:  ADD.W           R1, R0, R1,LSL#1; src
BEE96:  LDR             R0, [R6,#4]; dest
BEE98:  BLX             j_memcpy
BEE9C:  LDR.W           R0, [R6,#0xC8]
BEEA0:  ASRS            R0, R0, #0x10
BEEA2:  STR             R0, [R6,#0x2C]
BEEA4:  UXTH.W          R0, R9
BEEA8:  STR             R0, [R6,#0x20]
BEEAA:  ADD.W           R0, R6, #0x1F8; dest
BEEAE:  LDRD.W          R4, R10, [R6,#0x34]
BEEB2:  LDR.W           R9, [R6,#0x30]
BEEB6:  ADD.W           R1, R4, R10; src
BEEBA:  SUB.W           R2, R9, R10; n
BEEBE:  STRD.W          R1, R2, [R6,#8]
BEEC2:  BLX             j_memcpy
BEEC6:  LDR             R0, [R7,#arg_30]
BEEC8:  MOV             R5, R0
BEECA:  ADD.W           R0, R6, #0x1B4
BEECE:  STRD.W          R4, R9, [R5]
BEED2:  MOV             R3, R0
BEED4:  LDMDB.W         R3, {R0-R2}
BEED8:  LDR             R4, [R6,#0x40]
BEEDA:  LDR             R3, [R3]
BEEDC:  STM             R4!, {R0-R3}
BEEDE:  ADD.W           R1, R6, #0x190
BEEE2:  STR.W           R10, [R5,#0x18]
BEEE6:  LDR.W           R12, [R6,#0x44]
BEEEA:  LDM.W           R1, {R0,R2-R5}
BEEEE:  ADD.W           R1, R6, #0x1B8
BEEF2:  STM.W           R12, {R0,R2-R5}
BEEF6:  ADD.W           R12, R6, #0x120
BEEFA:  LDM.W           R12!, {R0,R2-R5}
BEEFE:  STM             R1!, {R0,R2-R5}
BEF00:  LDM.W           R12!, {R0,R2-R5}
BEF04:  STM             R1!, {R0,R2-R5}
BEF06:  LDM.W           R12, {R0,R2-R5}
BEF0A:  STM             R1!, {R0,R2-R5}
BEF0C:  LDR.W           R4, [R6,#0xA8]
BEF10:  LDR.W           R0, [R6,#0xC0]; dest
BEF14:  LDR             R1, [R6,#0x7C]; src
BEF16:  MOV             R2, R4; n
BEF18:  BLX             j_memcpy
BEF1C:  LDR.W           R0, [R6,#0xD8]; dest
BEF20:  MOV             R2, R4; n
BEF22:  LDR             R1, [R6,#0x78]; src
BEF24:  BLX             j_memcpy
BEF28:  LDR.W           R0, [R6,#0xB0]
BEF2C:  CMP             R11, R0
BEF2E:  BNE             loc_BEF70
BEF30:  LDR.W           R0, [R6,#0x98]
BEF34:  LDR.W           R1, [R6,#0xA4]
BEF38:  LDR.W           R2, [R6,#0xB0]
BEF3C:  LDR             R0, [R0,#0x18]
BEF3E:  LDR             R3, [R6,#0x58]
BEF40:  LDR.W           R5, [R6,#0xC4]
BEF44:  LDRSH.W         R1, [R0,R1,LSL#1]
BEF48:  LDRSH.W         R2, [R0,R2,LSL#1]
BEF4C:  LDRSH.W         R0, [R0,R3,LSL#1]
BEF50:  SUBS            R1, R2, R1
BEF52:  SUBS            R0, R0, R2
BEF54:  LDR             R2, [R7,#arg_34]
BEF56:  LSLS            R0, R2
BEF58:  LSL.W           R3, R1, R2
BEF5C:  RSB.W           R1, R0, R3,LSL#1
BEF60:  SUBS            R0, R0, R3
BEF62:  LSLS            R2, R0, #1; n
BEF64:  ADD.W           R1, R5, R1,LSL#1; src
BEF68:  ADD.W           R0, R5, R3,LSL#1; dest
BEF6C:  BLX             j_memcpy
BEF70:  LDR.W           R10, [R6,#0x2C]
BEF74:  ADD.W           R2, R6, #0x1B4
BEF78:  LDR             R0, [R6,#0x20]
BEF7A:  MOVS            R3, #1
BEF7C:  MUL.W           R12, R0, R10
BEF80:  LDRD.W          R1, R0, [R6,#0x24]
BEF84:  STR             R3, [R2,#0x34]
BEF86:  LDR.W           R2, [R6,#0xB4]
BEF8A:  ADD             R1, R0
BEF8C:  LDR.W           R5, [R6,#0xC4]
BEF90:  CMP             R11, R2
BEF92:  BNE             loc_BEF9C
BEF94:  MOV.W           LR, #0
BEF98:  LDR             R3, [R7,#arg_34]
BEF9A:  B               loc_BEFB2
BEF9C:  LDR.W           R2, [R6,#0xD0]
BEFA0:  LDR             R3, [R7,#arg_34]
BEFA2:  LDRSH.W         R2, [R2,R11,LSL#1]
BEFA6:  LSLS            R2, R3
BEFA8:  ADD.W           R2, R5, R2,LSL#1
BEFAC:  LDR             R5, [R6,#0x60]
BEFAE:  ADD.W           LR, R2, R5,LSL#1
BEFB2:  LDR.W           R4, [R6,#0xCC]
BEFB6:  ADD.W           R9, R1, R12,ASR#15
BEFBA:  LDR.W           R5, [R6,#0xC0]
BEFBE:  ADD.W           R0, R6, #0x1B8; int
BEFC2:  LDR.W           R2, [R6,#0x90]
BEFC6:  SUB             SP, SP, #0x20 ; ' '
BEFC8:  LDR.W           R1, [R6,#0xB8]
BEFCC:  STRD.W          R1, R2, [SP,#0x738+var_738]; int
BEFD0:  ADD             R2, SP, #0x738+var_730
BEFD2:  LDR             R1, [R6,#0x3C]
BEFD4:  STM.W           R2, {R1,R3,LR}
BEFD8:  LDR             R1, [R6,#0x64]
BEFDA:  STR             R4, [SP,#0x738+dest]; void *
BEFDC:  STR             R1, [SP,#0x738+var_720]; int
BEFDE:  MOV             R1, R5; int
BEFE0:  LDRD.W          R4, R2, [R6,#0xD4]; int
BEFE4:  MOV             R3, R4; int
BEFE6:  BL              sub_BF844
BEFEA:  ADD             SP, SP, #0x20 ; ' '
BEFEC:  CMP             R4, #1
BEFEE:  STR             R0, [R6,#0x64]
BEFF0:  BLT             loc_BF078
BEFF2:  LDR             R1, [R6,#0x7C]
BEFF4:  MOVS            R0, #0
BEFF6:  MOV             R2, R5
BEFF8:  MOV             R3, R4
BEFFA:  MOV             LR, R5
BEFFC:  LDRSH.W         R5, [R1],#2
BF000:  SUBS            R3, #1
BF002:  LDRSH.W         R4, [R2],#2
BF006:  SMLABB.W        R0, R4, R5, R0
BF00A:  BNE             loc_BEFFC
BF00C:  LDR             R1, [R6,#0x14]
BF00E:  ASRS            R0, R0, #0x10
BF010:  LDR             R2, [R6,#0x7C]
BF012:  MOV             R3, LR
BF014:  LDR.W           R4, [R6,#0xD4]
BF018:  ASRS            R1, R1, #0xF
BF01A:  MUL.W           R12, R1, R0
BF01E:  MOVS            R1, #0
BF020:  LDRSH.W         R5, [R2],#2
BF024:  SUBS            R4, #1
BF026:  LDRSH.W         R0, [R3],#2
BF02A:  SMLABB.W        R1, R0, R5, R1
BF02E:  BNE             loc_BF020
BF030:  UXTH            R0, R1
BF032:  LDR             R1, [R6,#0x48]
BF034:  LDR             R2, [R6,#0x78]
BF036:  LDRD.W          R4, R3, [R6,#0xD4]
BF03A:  MULS            R0, R1
BF03C:  MOVS            R1, #0
BF03E:  ADD.W           R12, R12, R0,ASR#15
BF042:  LDRSH.W         R5, [R2],#2
BF046:  SUBS            R4, #1
BF048:  LDRSH.W         R0, [R3],#2
BF04C:  SMLABB.W        R1, R0, R5, R1
BF050:  BNE             loc_BF042
BF052:  ASRS            R0, R1, #0x10
BF054:  LDR.W           R1, [R6,#0xC8]
BF058:  LDR             R3, [R6,#0x78]
BF05A:  MOVS            R2, #0
BF05C:  LDRD.W          R5, R4, [R6,#0xD4]
BF060:  ASRS            R1, R1, #0xF
BF062:  MUL.W           LR, R1, R0
BF066:  LDRSH.W         R0, [R3],#2
BF06A:  SUBS            R5, #1
BF06C:  LDRSH.W         R1, [R4],#2
BF070:  SMLABB.W        R2, R1, R0, R2
BF074:  BNE             loc_BF066
BF076:  B               loc_BF082
BF078:  MOV.W           LR, #0
BF07C:  MOV.W           R12, #0
BF080:  MOVS            R2, #0
BF082:  UXTH            R0, R2
BF084:  ADD.W           R1, R12, LR
BF088:  MUL.W           R0, R0, R10
BF08C:  LDR             R5, [R6,#0x64]
BF08E:  ADD.W           R0, R1, R0,ASR#15
BF092:  CMP             R9, R0
BF094:  LDR.W           R9, [R7,#arg_34]
BF098:  BLT             loc_BF120
BF09A:  ADD.W           R1, R6, #0x160
BF09E:  LDR.W           R12, [R7,#arg_30]
BF0A2:  LDM.W           R1!, {R0,R2-R5,LR}
BF0A6:  STM.W           R12!, {R0,R2-R5,LR}
BF0AA:  LDM.W           R1, {R0,R2-R5,LR}
BF0AE:  ADD.W           R1, R6, #0x1B8
BF0B2:  STM.W           R12, {R0,R2-R5,LR}
BF0B6:  ADD.W           R12, R6, #0xE0
BF0BA:  LDM.W           R12!, {R0,R2-R5}
BF0BE:  STM             R1!, {R0,R2-R5}
BF0C0:  LDM.W           R12!, {R0,R2-R5}
BF0C4:  STM             R1!, {R0,R2-R5}
BF0C6:  LDM.W           R12, {R0,R2-R5}
BF0CA:  STM             R1!, {R0,R2-R5}
BF0CC:  LDR.W           R4, [R6,#0xA8]
BF0D0:  LDR.W           R0, [R6,#0xC0]; dest
BF0D4:  LDR             R1, [R6,#0x1C]; src
BF0D6:  MOV             R2, R4; n
BF0D8:  BLX             j_memcpy
BF0DC:  LDR.W           R0, [R6,#0xD8]; dest
BF0E0:  MOV             R2, R4; n
BF0E2:  LDR             R1, [R6,#0x18]; src
BF0E4:  BLX             j_memcpy
BF0E8:  LDR.W           R0, [R6,#0xB4]
BF0EC:  CMP             R11, R0
BF0EE:  BEQ             loc_BF112
BF0F0:  LDR.W           R0, [R6,#0xD0]
BF0F4:  MOV             R2, R4; n
BF0F6:  LDR.W           R1, [R6,#0xC4]
BF0FA:  LDRSH.W         R0, [R0,R11,LSL#1]
BF0FE:  LSL.W           R0, R0, R9
BF102:  ADD.W           R0, R1, R0,LSL#1
BF106:  LDR             R1, [R6,#0x60]
BF108:  ADD.W           R0, R0, R1,LSL#1; dest
BF10C:  LDR             R1, [R6,#4]; src
BF10E:  BLX             j_memcpy
BF112:  LDR             R0, [R6,#8]; dest
BF114:  ADD.W           R1, R6, #0x1F8; src
BF118:  LDR             R2, [R6,#0xC]; n
BF11A:  BLX             j_memcpy
BF11E:  LDR             R5, [R6,#0x10]
BF120:  MOVS            R0, #0
BF122:  LDR.W           R4, [R6,#0xB8]
BF126:  STR.W           R0, [R6,#0xA8]
BF12A:  MOV             R0, R5
BF12C:  LDR.W           R9, [R6,#0xD4]
BF130:  LDR             R2, [R6,#0x68]
BF132:  MUL.W           R1, R11, R8
BF136:  LDR             R3, [R7,#arg_8]
BF138:  MLA.W           R2, R11, R8, R2
BF13C:  STRB            R5, [R3,R1]
BF13E:  ADD.W           R1, R6, #0x1B4
BF142:  STRB            R0, [R3,R2]
BF144:  MOVS            R2, #0
BF146:  LDR             R0, [R7,#arg_10]
BF148:  LDR.W           R0, [R0,R11,LSL#2]
BF14C:  STR             R2, [R1,#0x3C]
BF14E:  LDR.W           R1, [R6,#0x84]
BF152:  LDR.W           R11, [R6,#0x9C]
BF156:  LDR.W           R2, [R6,#0xD0]
BF15A:  CMP             R11, R1
BF15C:  LDR.W           R1, [R6,#0xA0]
BF160:  BNE.W           loc_BE6E0
BF164:  ADD.W           R0, R6, #0x1B4
BF168:  LDR             R5, [R0,#0x2C]
BF16A:  LDR             R0, [R7,#arg_3C]
BF16C:  STR             R5, [R0]
BF16E:  LDR             R0, =(__stack_chk_guard_ptr - 0xBF178)
BF170:  LDR.W           R1, [R6,#0xDC]
BF174:  ADD             R0, PC; __stack_chk_guard_ptr
BF176:  LDR             R0, [R0]; __stack_chk_guard
BF178:  LDR             R0, [R0]
BF17A:  SUBS            R0, R0, R1
BF17C:  ITTTT EQ
BF17E:  SUBEQ.W         R4, R7, #-var_1C
BF182:  MOVEQ           SP, R4
BF184:  POPEQ.W         {R8-R11}
BF188:  POPEQ           {R4-R7,PC}
BF18A:  BLX             __stack_chk_fail
