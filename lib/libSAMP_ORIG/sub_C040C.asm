; =========================================================
; Game Engine Function: sub_C040C
; Address            : 0xC040C - 0xC0B2A
; =========================================================

C040C:  PUSH            {R4-R7,LR}
C040E:  ADD             R7, SP, #0xC
C0410:  PUSH.W          {R8-R11}
C0414:  SUB             SP, SP, #0x2C
C0416:  LDR.W           R9, [R7,#arg_0]
C041A:  MOV             R10, R0
C041C:  STR             R1, [SP,#0x48+var_30]
C041E:  MOVS            R0, #0
C0420:  LDR             R1, [R7,#arg_14]
C0422:  CMP.W           R9, #2
C0426:  IT EQ
C0428:  MOVEQ           R0, #1
C042A:  MOV             R8, R2
C042C:  CMP             R1, #0
C042E:  ADD.W           R4, R10, #8
C0432:  IT NE
C0434:  MOVNE           R1, #1
C0436:  MOV             R11, R3
C0438:  ANDS            R0, R1
C043A:  MOV.W           R1, #4
C043E:  IT NE
C0440:  MOVNE           R1, #0x10
C0442:  LDR.W           R2, [R10]
C0446:  STR             R2, [SP,#0x48+var_20]
C0448:  CMP             R0, #0
C044A:  LDM             R4, {R2-R4}
C044C:  STR             R2, [SP,#0x48+var_34]
C044E:  LDR             R2, [R2,#0x30]
C0450:  STR             R3, [SP,#0x48+var_28]
C0452:  LDR             R0, [R7,#arg_4]
C0454:  LDRSH.W         R2, [R2,R3,LSL#1]
C0458:  LDR             R3, [R7,#arg_10]
C045A:  ADD.W           R5, R2, R3,LSL#3
C045E:  RSB.W           R2, R1, R5,ASR#1
C0462:  MOV.W           R1, #0xFFFFFFFF
C0466:  IT NE
C0468:  MOVNE           R1, #0xFFFFFFFE
C046C:  LDR             R6, [R0]
C046E:  ADD.W           R1, R1, R9,LSL#1
C0472:  MLA.W           R0, R2, R1, R6
C0476:  BLX             sub_108848
C047A:  SUBS            R1, R6, R5
C047C:  SUBS            R1, #0x20 ; ' '
C047E:  CMP             R1, R0
C0480:  IT LT
C0482:  MOVLT           R0, R1
C0484:  CMP             R0, #0x40 ; '@'
C0486:  IT GE
C0488:  MOVGE           R0, #0x40 ; '@'
C048A:  LDR.W           R3, [R10,#0x24]
C048E:  LDR.W           R5, [R10,#0x1C]
C0492:  CMP             R0, #4
C0494:  BGE             loc_C049A
C0496:  MOVS            R0, #1
C0498:  B               loc_C04B6
C049A:  AND.W           R1, R0, #7
C049E:  ADR.W           R2, sub_C0B2C
C04A2:  LDRSH.W         R1, [R2,R1,LSL#1]
C04A6:  MOVS            R2, #0xE
C04A8:  SUB.W           R0, R2, R0,LSR#3
C04AC:  ASR.W           R0, R1, R0
C04B0:  ADDS            R0, #1
C04B2:  BIC.W           R0, R0, #1
C04B6:  LDR             R2, [R7,#arg_14]
C04B8:  MOV             R6, R0
C04BA:  CMP             R2, #0
C04BC:  IT NE
C04BE:  MOVNE           R6, #1
C04C0:  LDR             R1, [SP,#0x48+var_28]
C04C2:  CMP             R1, R4
C04C4:  IT LT
C04C6:  MOVLT           R6, R0
C04C8:  LDR             R0, [SP,#0x48+var_20]
C04CA:  STR             R3, [SP,#0x48+var_38]
C04CC:  CMP             R0, #0
C04CE:  BEQ             loc_C04E4
C04D0:  LDR.W           R0, [R10,#0x2C]
C04D4:  MOV             R1, R11
C04D6:  STR             R0, [SP,#0x48+var_48]
C04D8:  MOV             R0, R8
C04DA:  MOV             R3, R9
C04DC:  BLX             j_stereo_itheta
C04E0:  MOV             R9, R0
C04E2:  B               loc_C04E8
C04E4:  MOV.W           R9, #0
C04E8:  MOV             R0, R5
C04EA:  BLX             j_ec_tell_frac
C04EE:  CMP             R6, #1
C04F0:  STR             R0, [SP,#0x48+var_2C]
C04F2:  STR             R5, [SP,#0x48+var_24]
C04F4:  BNE             loc_C0550
C04F6:  LDR             R0, [R7,#arg_14]
C04F8:  CMP             R0, #0
C04FA:  BEQ.W           loc_C08E4
C04FE:  LDR             R0, [SP,#0x48+var_20]
C0500:  CMP             R0, #0
C0502:  BEQ             loc_C05A2
C0504:  CMP.W           R9, #0x2000
C0508:  LDR             R3, [R7,#arg_0]
C050A:  LDR             R4, [R7,#arg_18]
C050C:  MOV.W           R6, #0
C0510:  LDR.W           R9, [R7,#arg_8]
C0514:  BLE             loc_C0538
C0516:  LDR.W           R0, [R10,#0x34]
C051A:  CMP             R0, #0
C051C:  IT EQ
C051E:  MOVEQ           R6, #1
C0520:  BNE             loc_C0538
C0522:  CMP             R3, #1
C0524:  BLT             loc_C0538
C0526:  MOV             R0, R3
C0528:  MOV             R1, R11
C052A:  LDRH            R2, [R1]
C052C:  SUBS            R0, #1
C052E:  RSB.W           R2, R2, #0
C0532:  STRH.W          R2, [R1],#2
C0536:  BNE             loc_C052A
C0538:  LDR             R0, [SP,#0x48+var_34]
C053A:  MOV             R2, R11
C053C:  STR             R6, [SP,#0x48+var_3C]
C053E:  LDR             R1, [SP,#0x48+var_28]
C0540:  LDR             R0, [R0,#8]
C0542:  STRD.W          R1, R3, [SP,#0x48+var_48]
C0546:  MOV             R1, R8
C0548:  LDR             R3, [SP,#0x48+var_38]
C054A:  BL              sub_C0B3C
C054E:  B               loc_C05AC
C0550:  LDR             R0, [SP,#0x48+var_20]
C0552:  LDR             R3, [R7,#arg_14]
C0554:  CMP             R0, #0
C0556:  BEQ.W           loc_C075A
C055A:  CMP             R3, #0
C055C:  BEQ             loc_C05E0
C055E:  LDR.W           R4, [R10,#0x30]
C0562:  CMP             R4, #0
C0564:  BEQ.W           loc_C074E
C0568:  MOVW            R0, #0x8001
C056C:  CMP.W           R9, #0x2000
C0570:  MOVT            R0, #0xFFFF
C0574:  MOV             R1, R6
C0576:  IT GT
C0578:  MOVWGT          R0, #0x7FFF
C057C:  BLX             sub_108848
C0580:  MLA.W           R0, R9, R6, R0
C0584:  MOVS            R2, #0
C0586:  LDR             R3, [R7,#arg_14]
C0588:  ASRS            R1, R0, #0xE
C058A:  CMP             R1, #0
C058C:  IT GT
C058E:  ASRGT           R2, R0, #0xE
C0590:  MOVS            R0, #1
C0592:  CMP             R6, R2
C0594:  EOR.W           R0, R0, R4,LSR#31
C0598:  IT LE
C059A:  SUBLE           R2, R6, #1
C059C:  ADD.W           R9, R2, R0
C05A0:  B               loc_C075A
C05A2:  MOVS            R0, #0
C05A4:  LDR             R4, [R7,#arg_18]
C05A6:  STR             R0, [SP,#0x48+var_3C]
C05A8:  LDR.W           R9, [R7,#arg_8]
C05AC:  LDR             R6, [R7,#arg_4]
C05AE:  MOVS            R5, #0
C05B0:  LDR             R0, [R6]
C05B2:  LDRD.W          R11, R8, [SP,#0x48+var_30]
C05B6:  CMP             R0, #0x11
C05B8:  MOV.W           R0, #0
C05BC:  BLT.W           loc_C0916
C05C0:  LDR.W           R0, [R10,#0x20]
C05C4:  CMP             R0, #0x11
C05C6:  BLT.W           loc_C074A
C05CA:  LDR             R0, [SP,#0x48+var_20]
C05CC:  CMP             R0, #0
C05CE:  BEQ.W           loc_C090E
C05D2:  LDR             R0, [SP,#0x48+var_24]
C05D4:  MOVS            R2, #2
C05D6:  LDR             R1, [SP,#0x48+var_3C]
C05D8:  BLX             j_ec_enc_bit_logp
C05DC:  LDR             R0, [SP,#0x48+var_3C]
C05DE:  B               loc_C0916
C05E0:  MUL.W           R0, R9, R6
C05E4:  ADD.W           R0, R0, #0x2000
C05E8:  ASRS            R4, R0, #0xE
C05EA:  CMP             R4, R6
C05EC:  BGE.W           loc_C0746
C05F0:  CMP             R4, #1
C05F2:  BLT.W           loc_C0746
C05F6:  LDR.W           R0, [R10,#0x38]
C05FA:  MOV             R9, R4
C05FC:  CMP             R0, #0
C05FE:  BEQ.W           loc_C0786
C0602:  LSLS            R0, R4, #0xE
C0604:  MOV             R1, R6
C0606:  BLX             sub_108874
C060A:  LSLS            R2, R0, #0x10
C060C:  SXTH            R1, R0
C060E:  ASRS            R2, R2, #0xD
C0610:  MOVW            R5, #0xFFFF
C0614:  MULS            R1, R2
C0616:  MOV             R2, #0xFFFFFD8E
C061E:  MOV.W           R12, #0x4000
C0622:  RSB.W           R0, R0, #0x4000
C0626:  MOV             R10, #0x1EFC0000
C062E:  ADD.W           R1, R1, #0x8000
C0632:  SMULTB.W        R3, R1, R2
C0636:  MOV.W           R2, #0x8000
C063A:  ADD.W           R3, R2, R3,LSL#1
C063E:  BICS            R3, R5
C0640:  MOVS            R5, #0x20550000
C0646:  ADD             R3, R5
C0648:  MOVS            R5, #0
C064A:  SMULTT.W        R3, R3, R1
C064E:  MOVT            R5, #0xE21D
C0652:  ADD.W           R3, R2, R3,LSL#1
C0656:  BFC.W           R3, #0, #0x10
C065A:  ADD             R3, R5
C065C:  SMLATT.W        R3, R3, R1, R12
C0660:  SUB.W           R1, R2, R1,ASR#16
C0664:  ADD.W           R1, R1, R3,LSR#15
C0668:  SXTH            R1, R1
C066A:  CLZ.W           R3, R1
C066E:  RSB.W           R9, R3, #0x20 ; ' '
C0672:  MOVW            R3, #0xF5DB
C0676:  RSB.W           R5, R9, #0xF
C067A:  MOVT            R3, #0xFFFF
C067E:  LSLS            R1, R5
C0680:  SXTH            R5, R1
C0682:  SMULBB.W        R5, R5, R3
C0686:  MOV             R3, #0xFFFFFD8E
C068E:  ADD.W           R5, R2, R5,LSL#1
C0692:  BFC.W           R5, #0, #0x10
C0696:  ADD.W           LR, R5, R10
C069A:  SXTH            R5, R0
C069C:  LSLS            R0, R0, #0x10
C069E:  MOVW            R10, #0xF5DB
C06A2:  ASRS            R0, R0, #0xD
C06A4:  MOVT            R10, #0xFFFF
C06A8:  MULS            R0, R5
C06AA:  SMLABT.W        R1, R1, LR, R12
C06AE:  ADD.W           R0, R0, #0x8000
C06B2:  SMULTB.W        R5, R0, R3
C06B6:  MOVS            R3, #0x20550000
C06BC:  ADD.W           R5, R2, R5,LSL#1
C06C0:  BFC.W           R5, #0, #0x10
C06C4:  ADD             R5, R3
C06C6:  MOVS            R3, #0xE21D0000
C06CC:  SMULTT.W        R5, R5, R0
C06D0:  ADD.W           R5, R2, R5,LSL#1
C06D4:  BFC.W           R5, #0, #0x10
C06D8:  ADD             R5, R3
C06DA:  SMLATT.W        R5, R5, R0, R12
C06DE:  SUB.W           R0, R2, R0,ASR#16
C06E2:  ADD.W           R0, R0, R5,LSR#15
C06E6:  SXTH            R0, R0
C06E8:  CLZ.W           R5, R0
C06EC:  RSB.W           R5, R5, #0x20 ; ' '
C06F0:  RSB.W           R3, R5, #0xF
C06F4:  LSLS            R0, R3
C06F6:  SXTH            R3, R0
C06F8:  SMULBB.W        R3, R3, R10
C06FC:  ADD.W           R2, R2, R3,LSL#1
C0700:  MOVS            R3, #0x1EFC0000
C0706:  BFC.W           R2, #0, #0x10
C070A:  ADD             R2, R3
C070C:  LDR             R3, [R7,#arg_14]
C070E:  SMLABT.W        R0, R0, R2, R12
C0712:  SUB.W           R2, R5, R9
C0716:  LDR             R5, [SP,#0x48+var_24]
C0718:  MOV             R9, R6
C071A:  LSLS            R2, R2, #0xB
C071C:  SUB.W           R1, R2, R1,LSR#15
C0720:  LDR             R2, [R7,#arg_0]
C0722:  ADD.W           R0, R1, R0,LSR#15
C0726:  MOVS            R1, #0xFF800000
C072C:  ADD.W           R1, R1, R2,LSL#23
C0730:  SMLABT.W        R1, R0, R1, R12
C0734:  LDR             R0, [R7,#arg_4]
C0736:  LDR             R0, [R0]
C0738:  ASRS            R1, R1, #0xF
C073A:  CMP             R1, R0
C073C:  BGT             loc_C0786
C073E:  NEGS            R0, R0
C0740:  CMP             R1, R0
C0742:  IT LT
C0744:  MOVLT           R4, #0
C0746:  MOV             R9, R4
C0748:  B               loc_C0786
C074A:  MOVS            R0, #0
C074C:  B               loc_C0916
C074E:  MUL.W           R0, R9, R6
C0752:  ADD.W           R0, R0, #0x2000
C0756:  MOV.W           R9, R0,ASR#14
C075A:  LDR             R0, [R7,#arg_0]
C075C:  CMP             R0, #3
C075E:  BLT             loc_C0786
C0760:  CBZ             R3, loc_C0786
C0762:  ADD.W           R0, R6, R6,LSR#31
C0766:  MOVS            R1, #1
C0768:  ADD.W           R5, R1, R0,ASR#1
C076C:  ASRS            R4, R0, #1
C076E:  ADD.W           R10, R5, R5,LSL#1
C0772:  ADD.W           R3, R10, R0,ASR#1
C0776:  LDR             R0, [SP,#0x48+var_20]
C0778:  CBZ             R0, loc_C07CC
C077A:  CMP             R9, R4
C077C:  BGT             loc_C07FA
C077E:  ADD.W           R5, R9, R9,LSL#1
C0782:  MOV             R1, R5
C0784:  B               loc_C0806
C0786:  LDR             R0, [R7,#arg_C]
C0788:  CMP             R0, #1
C078A:  BGT             loc_C07BC
C078C:  CBNZ            R3, loc_C07BC
C078E:  MOVS            R0, #1
C0790:  ADD.W           R4, R0, R6,ASR#1
C0794:  LDR             R0, [SP,#0x48+var_20]
C0796:  ASRS            R5, R6, #1
C0798:  MUL.W           R10, R4, R4
C079C:  CMP             R0, #0
C079E:  BEQ             loc_C0828
C07A0:  ADDS            R0, R6, #1
C07A2:  ADD.W           R2, R9, #1
C07A6:  SUB.W           R1, R0, R9
C07AA:  CMP             R9, R5
C07AC:  MOV             R3, R1
C07AE:  IT LE
C07B0:  MOVLE           R3, R2
C07B2:  BGT             loc_C0856
C07B4:  MUL.W           R1, R2, R9
C07B8:  ASRS            R1, R1, #1
C07BA:  B               loc_C0862
C07BC:  LDR             R0, [SP,#0x48+var_20]
C07BE:  ADDS            R2, R6, #1
C07C0:  CBZ             R0, loc_C0816
C07C2:  MOV             R0, R5
C07C4:  MOV             R1, R9
C07C6:  BLX             j_ec_enc_uint
C07CA:  B               loc_C086C
C07CC:  LDR             R0, [SP,#0x48+var_24]
C07CE:  MOV             R1, R3
C07D0:  MOV             R9, R3
C07D2:  BLX             j_ec_decode
C07D6:  MOVW            R1, #0x5556
C07DA:  SUB.W           R8, R0, R5,LSL#1
C07DE:  MOVT            R1, #0x5555
C07E2:  CMP             R0, R10
C07E4:  SMMUL.W         R1, R0, R1
C07E8:  IT LT
C07EA:  ADDLT.W         R8, R1, R1,LSR#31
C07EE:  CMP             R8, R4
C07F0:  BGT             loc_C08EC
C07F2:  ADD.W           R0, R8, R8,LSL#1
C07F6:  MOV             R1, R0
C07F8:  B               loc_C08F8
C07FA:  MVNS            R0, R4
C07FC:  ADD.W           R5, R9, R9,LSL#1
C0800:  ADD             R0, R10
C0802:  ADD.W           R1, R0, R9
C0806:  SUB.W           R2, R10, R4
C080A:  LDR             R0, [SP,#0x48+var_24]
C080C:  ADD             R2, R9
C080E:  CMP             R9, R4
C0810:  IT LE
C0812:  ADDLE           R2, R5, #3
C0814:  B               loc_C0868
C0816:  MOV             R0, R5
C0818:  MOV             R1, R2
C081A:  BLX             j_ec_dec_uint
C081E:  MOV             R8, R0
C0820:  LDR.W           R11, [SP,#0x48+var_30]
C0824:  LDR             R5, [R7,#arg_4]
C0826:  B               loc_C096E
C0828:  LDR             R0, [SP,#0x48+var_24]
C082A:  MOV             R1, R10
C082C:  BLX             j_ec_decode
C0830:  MUL.W           R1, R4, R5
C0834:  CMP.W           R0, R1,ASR#1
C0838:  BGE             loc_C0932
C083A:  MOVS            R4, #1
C083C:  ORR.W           R0, R4, R0,LSL#3
C0840:  BLX             j_isqrt32
C0844:  SUBS            R1, R0, #1
C0846:  ADD.W           R0, R4, R1,LSR#1
C084A:  MOV.W           R8, R1,LSR#1
C084E:  MUL.W           R1, R0, R8
C0852:  LSRS            R1, R1, #1
C0854:  B               loc_C095E
C0856:  ADDS            R2, R6, #2
C0858:  SUB.W           R2, R2, R9
C085C:  MULS            R1, R2
C085E:  SUB.W           R1, R10, R1,ASR#1
C0862:  LDR             R0, [SP,#0x48+var_24]
C0864:  ADDS            R2, R1, R3
C0866:  MOV             R3, R10
C0868:  BLX             j_ec_encode
C086C:  MOV.W           R4, R9,LSL#14
C0870:  MOV             R1, R6
C0872:  MOV             R0, R4
C0874:  BLX             sub_108874
C0878:  MOV             R9, R0
C087A:  LDR             R0, [R7,#arg_14]
C087C:  CMP             R0, #0
C087E:  ITT NE
C0880:  LDRNE           R0, [SP,#0x48+var_20]
C0882:  CMPNE           R0, #0
C0884:  BEQ             loc_C08E4
C0886:  CMP             R6, R4
C0888:  BLS             loc_C08B2
C088A:  LDR             R0, [SP,#0x48+var_34]
C088C:  MOV             R2, R11
C088E:  LDR             R1, [SP,#0x48+var_28]
C0890:  LDR             R3, [SP,#0x48+var_38]
C0892:  LDR             R0, [R0,#8]
C0894:  STR             R1, [SP,#0x48+var_48]
C0896:  LDR             R1, [R7,#arg_0]
C0898:  STR             R1, [SP,#0x48+var_44]
C089A:  MOV             R1, R8
C089C:  BL              sub_C0B3C
C08A0:  LDR.W           R11, [SP,#0x48+var_30]
C08A4:  MOVS            R5, #0
C08A6:  LDRD.W          R6, R9, [R7,#arg_4]
C08AA:  LDR             R4, [R7,#arg_18]
C08AC:  LDR.W           R8, [SP,#0x48+var_2C]
C08B0:  B               loc_C0920
C08B2:  LDR             R1, [R7,#arg_0]
C08B4:  CMP             R1, #1
C08B6:  BLT             loc_C08E4
C08B8:  MOVW            R0, #0x5A82
C08BC:  LDRSH.W         R2, [R11]
C08C0:  SUBS            R1, #1
C08C2:  LDRSH.W         R3, [R8]
C08C6:  SMULBB.W        R2, R2, R0
C08CA:  SMLABB.W        R6, R3, R0, R2
C08CE:  MLS.W           R2, R3, R0, R2
C08D2:  MOV.W           R3, R6,LSR#15
C08D6:  STRH.W          R3, [R8],#2
C08DA:  MOV.W           R2, R2,LSR#15
C08DE:  STRH.W          R2, [R11],#2
C08E2:  BNE             loc_C08BC
C08E4:  LDR.W           R11, [SP,#0x48+var_30]
C08E8:  LDR             R5, [R7,#arg_4]
C08EA:  B               loc_C097A
C08EC:  MVNS            R0, R4
C08EE:  ADD             R0, R10
C08F0:  ADD.W           R1, R0, R8
C08F4:  ADD.W           R0, R8, R8,LSL#1
C08F8:  SUB.W           R2, R10, R4
C08FC:  CMP             R8, R4
C08FE:  ADD             R2, R8
C0900:  LDR.W           R11, [SP,#0x48+var_30]
C0904:  IT LE
C0906:  ADDLE           R2, R0, #3
C0908:  LDR             R5, [R7,#arg_4]
C090A:  MOV             R3, R9
C090C:  B               loc_C0968
C090E:  LDR             R0, [SP,#0x48+var_24]
C0910:  MOVS            R1, #2
C0912:  BLX             j_ec_dec_bit_logp
C0916:  LDR.W           R1, [R10,#0x34]
C091A:  CMP             R1, #0
C091C:  IT EQ
C091E:  MOVEQ           R5, R0
C0920:  LDR             R0, [SP,#0x48+var_24]
C0922:  BLX             j_ec_tell_frac
C0926:  SUB.W           R0, R0, R8
C092A:  LDR             R1, [R6]
C092C:  SUBS            R1, R1, R0
C092E:  STR             R1, [R6]
C0930:  B               loc_C09A0
C0932:  SUB.W           R0, R10, R0
C0936:  MOV             R1, #0xFFFFFFF9
C093A:  ADD.W           R0, R1, R0,LSL#3
C093E:  BLX             j_isqrt32
C0942:  ADDS            R1, R6, #1
C0944:  RSB.W           R2, R0, R1,LSL#1
C0948:  ADDS            R0, R6, #2
C094A:  SUB.W           R3, R0, R2,LSR#1
C094E:  SUB.W           R0, R1, R2,LSR#1
C0952:  MOV.W           R8, R2,LSR#1
C0956:  MUL.W           R1, R0, R3
C095A:  SUB.W           R1, R10, R1,ASR#1
C095E:  ADDS            R2, R1, R0
C0960:  LDR.W           R11, [SP,#0x48+var_30]
C0964:  LDR             R5, [R7,#arg_4]
C0966:  MOV             R3, R10
C0968:  LDR             R0, [SP,#0x48+var_24]
C096A:  BLX             j_ec_dec_update
C096E:  MOV.W           R0, R8,LSL#14
C0972:  MOV             R1, R6
C0974:  BLX             sub_108874
C0978:  MOV             R9, R0
C097A:  LDR             R0, [SP,#0x48+var_24]
C097C:  LDR             R4, [SP,#0x48+var_2C]
C097E:  BLX             j_ec_tell_frac
C0982:  LDR             R1, [R5]
C0984:  SUBS            R0, R0, R4
C0986:  CMP.W           R9, #0x4000
C098A:  SUB.W           R1, R1, R0
C098E:  STR             R1, [R5]
C0990:  BEQ             loc_C09C2
C0992:  CMP.W           R9, #0
C0996:  BNE             loc_C09EA
C0998:  MOVS            R5, #0
C099A:  LDR             R4, [R7,#arg_18]
C099C:  LDR.W           R9, [R7,#arg_8]
C09A0:  MOVS            R1, #1
C09A2:  LDR             R2, [R4]
C09A4:  LSL.W           R1, R1, R9
C09A8:  MOVW            R3, #0xC000
C09AC:  SUBS            R1, #1
C09AE:  MOVT            R3, #0xFFFF
C09B2:  ANDS            R1, R2
C09B4:  STR             R1, [R4]
C09B6:  MOVW            R1, #0x7FFF
C09BA:  MOV.W           R9, #0
C09BE:  MOVS            R2, #0
C09C0:  B               loc_C0B12
C09C2:  LDR             R2, [R7,#arg_8]
C09C4:  MOVS            R1, #1
C09C6:  MOVS            R5, #0
C09C8:  MOV.W           R9, #0x4000
C09CC:  MOV             R6, R2
C09CE:  LDR             R2, [R7,#arg_18]
C09D0:  LSLS            R1, R6
C09D2:  SUBS            R1, #1
C09D4:  MOV             R3, R2
C09D6:  LDR             R2, [R3]
C09D8:  LSLS            R1, R6
C09DA:  ANDS            R1, R2
C09DC:  STR             R1, [R3]
C09DE:  MOVW            R2, #0x7FFF
C09E2:  MOVS            R1, #0
C09E4:  MOV.W           R3, #0x4000
C09E8:  B               loc_C0B12
C09EA:  MOV.W           R2, R9,LSL#16
C09EE:  SXTH.W          R1, R9
C09F2:  ASRS            R2, R2, #0xD
C09F4:  MOV.W           R6, #0x8000
C09F8:  MULS            R1, R2
C09FA:  MOV             R2, #0xFFFFFD8E
C0A02:  MOVW            R3, #0xFFFF
C0A06:  MOVS            R5, #0xE21D0000
C0A0C:  MOV.W           LR, #0x4000
C0A10:  MOVW            R10, #0
C0A14:  ADD.W           R1, R1, #0x8000
C0A18:  MOVT            R10, #0x1EFC
C0A1C:  SMULTB.W        R2, R1, R2
C0A20:  ADD.W           R2, R6, R2,LSL#1
C0A24:  BICS            R2, R3
C0A26:  MOVS            R3, #0x20550000
C0A2C:  ADD             R2, R3
C0A2E:  MOVW            R3, #0xF5DB
C0A32:  SMULTT.W        R2, R2, R1
C0A36:  MOVT            R3, #0xFFFF
C0A3A:  ADD.W           R2, R6, R2,LSL#1
C0A3E:  BFC.W           R2, #0, #0x10
C0A42:  ADD             R2, R5
C0A44:  SMLATT.W        R2, R2, R1, LR
C0A48:  SUB.W           R1, R6, R1,ASR#16
C0A4C:  ADD.W           R1, R1, R2,LSR#15
C0A50:  SXTH            R1, R1
C0A52:  CLZ.W           R2, R1
C0A56:  RSB.W           R8, R2, #0x20 ; ' '
C0A5A:  RSB.W           R2, R8, #0xF
C0A5E:  LSL.W           R2, R1, R2
C0A62:  SXTH            R4, R2
C0A64:  SMULBB.W        R4, R4, R3
C0A68:  MOV             R3, #0xFFFFFD8E
C0A70:  ADD.W           R4, R6, R4,LSL#1
C0A74:  BFC.W           R4, #0, #0x10
C0A78:  ADD             R4, R10
C0A7A:  MOV             R10, #0xFFFFF5DB
C0A82:  SMLABT.W        R12, R2, R4, LR
C0A86:  RSB.W           R2, R9, #0x4000
C0A8A:  SXTH            R4, R2
C0A8C:  LSLS            R2, R2, #0x10
C0A8E:  ASRS            R2, R2, #0xD
C0A90:  MULS            R2, R4
C0A92:  ADD.W           R2, R2, #0x8000
C0A96:  SMULTB.W        R4, R2, R3
C0A9A:  MOVS            R3, #0x20550000
C0AA0:  ADD.W           R4, R6, R4,LSL#1
C0AA4:  BFC.W           R4, #0, #0x10
C0AA8:  ADD             R4, R3
C0AAA:  SMULTT.W        R4, R4, R2
C0AAE:  ADD.W           R4, R6, R4,LSL#1
C0AB2:  BFC.W           R4, #0, #0x10
C0AB6:  ADD             R4, R5
C0AB8:  SMLATT.W        R4, R4, R2, LR
C0ABC:  SUB.W           R2, R6, R2,ASR#16
C0AC0:  ADD.W           R2, R2, R4,LSR#15
C0AC4:  SXTH            R2, R2
C0AC6:  CLZ.W           R4, R2
C0ACA:  RSB.W           R4, R4, #0x20 ; ' '
C0ACE:  RSB.W           R3, R4, #0xF
C0AD2:  SUB.W           R4, R4, R8
C0AD6:  LSL.W           R3, R2, R3
C0ADA:  LSLS            R4, R4, #0xB
C0ADC:  SXTH            R5, R3
C0ADE:  SMULBB.W        R5, R5, R10
C0AE2:  ADD.W           R5, R6, R5,LSL#1
C0AE6:  MOVS            R6, #0x1EFC0000
C0AEC:  BFC.W           R5, #0, #0x10
C0AF0:  ADD             R5, R6
C0AF2:  SUB.W           R6, R4, R12,LSR#15
C0AF6:  SMLABT.W        R3, R3, R5, LR
C0AFA:  LDR             R5, [R7,#arg_0]
C0AFC:  ADD.W           R3, R6, R3,LSR#15
C0B00:  MOVS            R6, #0xFF800000
C0B06:  ADD.W           R6, R6, R5,LSL#23
C0B0A:  MOVS            R5, #0
C0B0C:  SMLABT.W        R3, R3, R6, LR
C0B10:  ASRS            R3, R3, #0xF
C0B12:  STRD.W          R5, R1, [R11]
C0B16:  ADD.W           R1, R11, #8
C0B1A:  STM.W           R1, {R2,R3,R9}
C0B1E:  STR.W           R0, [R11,#0x14]
C0B22:  ADD             SP, SP, #0x2C ; ','
C0B24:  POP.W           {R8-R11}
C0B28:  POP             {R4-R7,PC}
