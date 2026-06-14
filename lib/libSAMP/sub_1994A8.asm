; =========================================================
; Game Engine Function: sub_1994A8
; Address            : 0x1994A8 - 0x1998CE
; =========================================================

1994A8:  PUSH            {R4-R7,LR}
1994AA:  ADD             R7, SP, #0xC
1994AC:  PUSH.W          {R8-R11}
1994B0:  SUB             SP, SP, #0x44
1994B2:  MOV             R4, R0
1994B4:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1994C0)
1994B8:  MOV             R10, R2
1994BA:  LDR             R6, [R7,#arg_14]
1994BC:  ADD             R0, PC; __stack_chk_guard_ptr
1994BE:  LDR             R0, [R0]; __stack_chk_guard
1994C0:  LDR             R0, [R0]
1994C2:  STR.W           R0, [R7,#var_24]
1994C6:  LDRD.W          R11, R0, [R4,#4]
1994CA:  STR.W           R0, [R7,#var_48]
1994CE:  LDR             R2, [R4,#0x24]
1994D0:  LDR             R0, [R7,#arg_10]
1994D2:  LSL.W           R8, R2, R6
1994D6:  CMP             R0, #0
1994D8:  IT EQ
1994DA:  MOVEQ           R2, R8
1994DC:  STR.W           R2, [R7,#var_30]
1994E0:  MOVS            R2, #7
1994E2:  ADD.W           R2, R2, R8,LSL#2
1994E6:  BIC.W           R2, R2, #7
1994EA:  SUB.W           R5, SP, R2
1994EE:  MOV             SP, R5
1994F0:  CMP             R0, #0
1994F2:  LDR             R2, [R4,#0x1C]
1994F4:  MOV.W           R0, #1
1994F8:  LSL.W           R12, R0, R6
1994FC:  IT EQ
1994FE:  SUBEQ           R2, R2, R6
199500:  MOV             R9, R12
199502:  STR.W           R2, [R7,#var_3C]
199506:  IT EQ
199508:  MOVEQ.W         R9, #1
19950C:  LDRD.W          R6, LR, [R7,#arg_18]
199510:  LDRD.W          R0, R2, [R7,#arg_8]
199514:  STRD.W          R9, R11, [R7,#var_38]
199518:  CMP             R0, #1
19951A:  IT EQ
19951C:  CMPEQ           R2, #2
19951E:  BNE.W           loc_199638
199522:  MOV.W           R0, R8,LSL#2
199526:  STR.W           R0, [R7,#n]
19952A:  SUB             SP, SP, #0x18
19952C:  LDR             R0, [R7,#arg_0]
19952E:  MOV             R2, R5; int
199530:  STR             R0, [SP,#0x78+var_78]; int
199532:  LDR             R0, [R7,#arg_4]
199534:  STRD.W          R0, R12, [SP,#0x78+var_74]; int
199538:  MOV             R0, R4; int
19953A:  STRD.W          R6, LR, [SP,#0x78+var_6C]; int
19953E:  BLX             j_denormalise_bands
199542:  ADD             SP, SP, #0x18
199544:  ADD.W           R0, R11, R11,LSR#31
199548:  LDR.W           R1, [R10,#4]
19954C:  MOV             R2, #0xFFFFFFFC
199550:  AND.W           R0, R2, R0,LSL#1
199554:  LDR.W           R2, [R7,#n]; n
199558:  ADDS            R6, R1, R0
19955A:  MOV             R1, R5; src
19955C:  MOV             R0, R6; dest
19955E:  BLX             j_memcpy
199562:  CMP.W           R9, #1
199566:  MOV             R0, R4
199568:  BLT.W           loc_199872
19956C:  LDR.W           R1, [R7,#var_30]
199570:  ADD.W           R12, R0, #0x38 ; '8'
199574:  STR.W           R8, [R7,#var_44]
199578:  MOV             R11, R0
19957A:  STR.W           R10, [R7,#var_2C]
19957E:  LDR.W           R4, [R7,#var_38]
199582:  LSLS            R1, R1, #2
199584:  LDR.W           R8, [R7,#var_34]
199588:  LDR.W           R10, [R7,#var_3C]
19958C:  STR.W           R5, [R7,#var_4C]
199590:  MOVS            R5, #0
199592:  STR.W           R1, [R7,#var_30]
199596:  LDR.W           R0, [R7,#var_2C]
19959A:  LDR.W           R3, [R11,#0x34]
19959E:  LDR             R0, [R0]
1995A0:  SUB             SP, SP, #0x10
1995A2:  STRD.W          R8, R10, [SP,#0x70+var_70]
1995A6:  ADDS            R2, R0, R5
1995A8:  LDR.W           R1, [R7,#var_38]
1995AC:  MOV             R0, R12
1995AE:  STR             R1, [SP,#0x70+var_68]
1995B0:  MOV             R9, R12
1995B2:  LDR             R1, [R7,#arg_20]
1995B4:  STR             R1, [SP,#0x70+var_64]
1995B6:  MOV             R1, R6
1995B8:  BLX             j_clt_mdct_backward_c
1995BC:  MOV             R12, R9
1995BE:  ADD             SP, SP, #0x10
1995C0:  LDR.W           R0, [R7,#var_30]
1995C4:  SUBS            R4, #1
1995C6:  ADD.W           R6, R6, #4
1995CA:  ADD             R5, R0
1995CC:  BNE             loc_199596
1995CE:  LDR.W           R0, [R7,#var_38]
1995D2:  LDR.W           R6, [R7,#var_4C]
1995D6:  LDR.W           R8, [R7,#var_44]
1995DA:  CMP             R0, #1
1995DC:  LDRD.W          R1, R10, [R7,#var_30]
1995E0:  MOV             R0, R11
1995E2:  BLT.W           loc_199872
1995E6:  LDR.W           R4, [R7,#var_38]
1995EA:  MOVS            R5, #0
1995EC:  STR.W           R0, [R7,#var_28]
1995F0:  LDR             R3, [R0,#0x34]
1995F2:  LDR.W           R0, [R10,#4]
1995F6:  SUB             SP, SP, #0x10
1995F8:  MOV             R11, R8
1995FA:  MOV             R8, R10
1995FC:  MOV             R10, R1
1995FE:  LDR.W           R1, [R7,#var_34]
199602:  STR             R1, [SP,#0x70+var_70]
199604:  ADDS            R2, R0, R5
199606:  LDR.W           R1, [R7,#var_3C]
19960A:  MOV             R0, R12
19960C:  STR             R1, [SP,#0x70+var_6C]
19960E:  LDR.W           R1, [R7,#var_38]
199612:  STR             R1, [SP,#0x70+var_68]
199614:  LDR             R1, [R7,#arg_20]
199616:  STR             R1, [SP,#0x70+var_64]
199618:  MOV             R1, R6
19961A:  BLX             j_clt_mdct_backward_c
19961E:  LDR.W           R0, [R7,#var_28]
199622:  MOV             R1, R10
199624:  MOV             R10, R8
199626:  MOV             R8, R11
199628:  MOV             R12, R9
19962A:  ADD             SP, SP, #0x10
19962C:  ADD             R5, R1
19962E:  SUBS            R4, #1
199630:  ADD.W           R6, R6, #4
199634:  BNE             loc_1995F0
199636:  B               loc_199872
199638:  CMP             R0, #2
19963A:  IT EQ
19963C:  CMPEQ           R2, #1
19963E:  BEQ             loc_19972A
199640:  CMP.W           R9, #0
199644:  STR.W           R5, [R7,#var_4C]
199648:  STR.W           R12, [R7,#n]
19964C:  BLE.W           loc_19981A
199650:  ADD.W           R0, R4, #0x38 ; '8'
199654:  STR.W           R0, [R7,#var_58]
199658:  LDR.W           R0, [R7,#var_30]
19965C:  STR.W           R4, [R7,#var_28]
199660:  LDR.W           R11, [R7,#var_4C]
199664:  LSLS            R0, R0, #2
199666:  LDR             R6, [R7,#arg_18]
199668:  STR.W           R0, [R7,#var_5C]
19966C:  MOVS            R0, #0
19966E:  STR.W           R0, [R7,#var_30]
199672:  LDRD.W          R2, R0, [R7,#arg_0]
199676:  STR.W           R8, [R7,#var_44]
19967A:  STRD.W          R1, R3, [R7,#var_54]
19967E:  STR.W           R10, [R7,#var_2C]
199682:  LDR.W           R4, [R7,#var_48]
199686:  LDR.W           R5, [R7,#var_30]
19968A:  MUL.W           R9, R5, R4
19968E:  SUB             SP, SP, #0x18
199690:  MUL.W           R8, R5, R8
199694:  STRD.W          R2, R0, [SP,#0x78+var_78]; int
199698:  STRD.W          R12, R6, [SP,#0x78+var_70]; int
19969C:  LDR.W           R0, [R7,#var_28]; int
1996A0:  ADD.W           R3, R3, R9,LSL#1; int
1996A4:  MOV             R2, R11; int
1996A6:  STR.W           LR, [SP,#0x78+var_68]; int
1996AA:  ADD.W           R1, R1, R8,LSL#1; int
1996AE:  BLX             j_denormalise_bands
1996B2:  ADD             SP, SP, #0x18
1996B4:  MOV             R4, R11
1996B6:  LDR.W           R11, [R7,#var_38]
1996BA:  LDR.W           R6, [R7,#var_3C]
1996BE:  MOV.W           R9, #0
1996C2:  LDRD.W          R8, R5, [R7,#var_5C]
1996C6:  MOV             R10, R11
1996C8:  LDRD.W          R0, R1, [R7,#var_30]
1996CC:  LDR.W           R0, [R1,R0,LSL#2]
1996D0:  LDR.W           R1, [R7,#var_28]
1996D4:  LDR             R3, [R1,#0x34]
1996D6:  SUB             SP, SP, #0x10
1996D8:  LDR.W           R1, [R7,#var_34]
1996DC:  ADD.W           R2, R0, R9
1996E0:  MOV             R0, R5
1996E2:  STMEA.W         SP, {R1,R6,R11}
1996E6:  LDR             R1, [R7,#arg_20]
1996E8:  STR             R1, [SP,#0x70+var_64]
1996EA:  MOV             R1, R4
1996EC:  BLX             j_clt_mdct_backward_c
1996F0:  ADD             SP, SP, #0x10
1996F2:  ADD             R9, R8
1996F4:  ADDS            R4, #4
1996F6:  SUBS.W          R10, R10, #1
1996FA:  BNE             loc_1996C8
1996FC:  LDR.W           R0, [R7,#var_30]
199700:  SUB.W           R11, R7, #-var_54
199704:  LDR.W           R10, [R7,#var_2C]
199708:  MOV             R2, R0
19970A:  LDR             R0, [R7,#arg_C]
19970C:  ADDS            R2, #1
19970E:  CMP             R2, R0
199710:  MOV             R1, R2
199712:  STR.W           R1, [R7,#var_30]
199716:  LDM.W           R11, {R1,R3,R11}; int
19971A:  LDRD.W          R8, R12, [R7,#var_44]
19971E:  LDRD.W          R6, LR, [R7,#arg_18]
199722:  LDRD.W          R2, R0, [R7,#arg_0]
199726:  BLT             loc_199682
199728:  B               loc_199872
19972A:  STR.W           R8, [R7,#var_44]
19972E:  LDR.W           R0, [R10]
199732:  STR.W           R0, [R7,#n]
199736:  SUB             SP, SP, #0x18
199738:  LDR             R0, [R7,#arg_0]
19973A:  MOV             R2, R5; int
19973C:  STR             R0, [SP,#0x78+var_78]; int
19973E:  MOV             R8, R1
199740:  LDR             R0, [R7,#arg_4]
199742:  MOV             R9, R12
199744:  STRD.W          R0, R12, [SP,#0x78+var_74]; int
199748:  MOV             R0, R4; int
19974A:  STRD.W          R6, LR, [SP,#0x78+var_6C]; int
19974E:  MOV             R6, R3
199750:  BLX             j_denormalise_bands
199754:  ADD             SP, SP, #0x18
199756:  SUB             SP, SP, #0x18
199758:  LDR             R0, [R7,#arg_0]
19975A:  MOV             R2, #0xFFFFFFFC
19975E:  STR             R0, [SP,#0x78+var_78]; int
199760:  LDR             R0, [R7,#arg_4]
199762:  STRD.W          R0, R9, [SP,#0x78+var_74]; int
199766:  LDR             R0, [R7,#arg_18]
199768:  STR             R0, [SP,#0x78+var_6C]; int
19976A:  LDR             R0, [R7,#arg_1C]
19976C:  STR             R0, [SP,#0x78+var_68]; int
19976E:  LDR.W           R0, [R7,#var_44]
199772:  ADD.W           R1, R8, R0,LSL#1; int
199776:  LDR.W           R0, [R7,#var_48]
19977A:  LDR.W           R8, [R7,#var_44]
19977E:  ADD.W           R3, R6, R0,LSL#1; int
199782:  ADD.W           R0, R11, R11,LSR#31
199786:  MOV             R11, R4
199788:  AND.W           R0, R2, R0,LSL#1
19978C:  LDR.W           R2, [R7,#n]
199790:  ADDS            R6, R2, R0
199792:  MOV             R0, R4; int
199794:  MOV             R2, R6; int
199796:  BLX             j_denormalise_bands
19979A:  ADD             SP, SP, #0x18
19979C:  CMP.W           R8, #1
1997A0:  BLT             loc_1997BC
1997A2:  MOV             R0, R8
1997A4:  MOV             R1, R5
1997A6:  LDR.W           R2, [R6],#4
1997AA:  SUBS            R0, #1
1997AC:  LDR             R3, [R1]
1997AE:  MOV.W           R2, R2,ASR#1
1997B2:  ADD.W           R2, R2, R3,ASR#1
1997B6:  STR.W           R2, [R1],#4
1997BA:  BNE             loc_1997A6
1997BC:  LDR.W           R6, [R7,#var_38]
1997C0:  MOV             R9, R5
1997C2:  STR.W           R11, [R7,#var_28]
1997C6:  CMP             R6, #1
1997C8:  BLT             loc_199872
1997CA:  LDR.W           R0, [R7,#var_30]
1997CE:  MOVS            R5, #0
1997D0:  MOV             R4, R6
1997D2:  LSLS            R0, R0, #2
1997D4:  STR.W           R0, [R7,#var_30]
1997D8:  LDR.W           R0, [R7,#var_28]
1997DC:  ADD.W           R11, R0, #0x38 ; '8'
1997E0:  LDR.W           R0, [R7,#var_28]
1997E4:  LDR             R3, [R0,#0x34]
1997E6:  LDR.W           R0, [R10]
1997EA:  SUB             SP, SP, #0x10
1997EC:  LDR.W           R1, [R7,#var_34]
1997F0:  ADDS            R2, R0, R5
1997F2:  STR             R1, [SP,#0x70+var_70]
1997F4:  MOV             R0, R11
1997F6:  LDR.W           R1, [R7,#var_3C]
1997FA:  STRD.W          R1, R6, [SP,#0x70+var_6C]
1997FE:  LDR             R1, [R7,#arg_20]
199800:  STR             R1, [SP,#0x70+var_64]
199802:  MOV             R1, R9
199804:  BLX             j_clt_mdct_backward_c
199808:  ADD             SP, SP, #0x10
19980A:  LDR.W           R0, [R7,#var_30]
19980E:  SUBS            R4, #1
199810:  ADD.W           R9, R9, #4
199814:  ADD             R5, R0
199816:  BNE             loc_1997E0
199818:  B               loc_199872
19981A:  MOV.W           R0, R8,LSL#1
19981E:  LDR.W           R5, [R7,#var_4C]
199822:  STR.W           R0, [R7,#var_30]
199826:  MOVS            R6, #0
199828:  LDR.W           R0, [R7,#var_48]
19982C:  LSLS            R0, R0, #1
19982E:  STR.W           R0, [R7,#var_34]
199832:  SUB             SP, SP, #0x18
199834:  LDR             R0, [R7,#arg_0]
199836:  MOV             R2, R5; int
199838:  STR             R0, [SP,#0x78+var_78]; int
19983A:  MOV             R11, R3
19983C:  LDR             R0, [R7,#arg_4]
19983E:  MOV             R9, R1
199840:  STRD.W          R0, R12, [SP,#0x78+var_74]; int
199844:  LDR             R0, [R7,#arg_18]
199846:  STRD.W          R0, LR, [SP,#0x78+var_6C]; int
19984A:  MOV             R0, R4; int
19984C:  BLX             j_denormalise_bands
199850:  LDR.W           LR, [R7,#arg_1C]
199854:  MOV             R1, R9
199856:  LDR.W           R12, [R7,#n]
19985A:  MOV             R3, R11
19985C:  ADD             SP, SP, #0x18
19985E:  LDR.W           R0, [R7,#var_30]
199862:  ADDS            R6, #1
199864:  ADD             R1, R0
199866:  LDR.W           R0, [R7,#var_34]
19986A:  ADD             R3, R0
19986C:  LDR             R0, [R7,#arg_C]
19986E:  CMP             R6, R0
199870:  BLT             loc_199832
199872:  LDR             R4, [R7,#arg_C]
199874:  CMP.W           R8, #1
199878:  BLT             loc_1998AE
19987A:  MOVW            R1, #0x5D00
19987E:  MOVW            R2, #0xA300
199882:  MOVS            R0, #0
199884:  MOVT            R1, #0xEE1E
199888:  MOVT            R2, #0x11E1
19988C:  LDR.W           R3, [R10,R0,LSL#2]
199890:  MOV             R6, R8
199892:  LDR             R5, [R3]
199894:  CMP             R5, R1
199896:  IT LE
199898:  MOVLE           R5, R1
19989A:  CMP             R5, R2
19989C:  IT GE
19989E:  MOVGE           R5, R2
1998A0:  SUBS            R6, #1
1998A2:  STR.W           R5, [R3],#4
1998A6:  BNE             loc_199892
1998A8:  ADDS            R0, #1
1998AA:  CMP             R0, R4
1998AC:  BLT             loc_19988C
1998AE:  LDR             R0, =(__stack_chk_guard_ptr - 0x1998B8)
1998B0:  LDR.W           R1, [R7,#var_24]
1998B4:  ADD             R0, PC; __stack_chk_guard_ptr
1998B6:  LDR             R0, [R0]; __stack_chk_guard
1998B8:  LDR             R0, [R0]
1998BA:  SUBS            R0, R0, R1
1998BC:  ITTTT EQ
1998BE:  SUBEQ.W         R4, R7, #-var_1C
1998C2:  MOVEQ           SP, R4
1998C4:  POPEQ.W         {R8-R11}
1998C8:  POPEQ           {R4-R7,PC}
1998CA:  BLX             __stack_chk_fail
