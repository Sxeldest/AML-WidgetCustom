; =========================================================
; Game Engine Function: silk_noise_shape_analysis_FIX
; Address            : 0x1AD5D0 - 0x1AE60A
; =========================================================

1AD5D0:  PUSH            {R4-R7,LR}
1AD5D2:  ADD             R7, SP, #0xC
1AD5D4:  PUSH.W          {R8-R11}
1AD5D8:  SUB             SP, SP, #0x1B4
1AD5DA:  MOV             R4, R0
1AD5DC:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1AD5EA)
1AD5E0:  MOV             R6, SP
1AD5E2:  ADD.W           R12, R6, #0x80
1AD5E6:  ADD             R0, PC; __stack_chk_guard_ptr
1AD5E8:  STR             R3, [R6,#0x1D0+var_160]
1AD5EA:  MOV.W           R10, #0
1AD5EE:  MOV             R9, R1
1AD5F0:  LDR             R0, [R0]; __stack_chk_guard
1AD5F2:  MOVW            R1, #0x125C
1AD5F6:  MOV             R5, R2
1AD5F8:  MOVW            R2, #0x11F8
1AD5FC:  MOVW            R8, #0x126C
1AD600:  LDR             R0, [R0]
1AD602:  STR             R0, [R6,#0x1D0+var_154]
1AD604:  MOVW            R0, #0x1258
1AD608:  STR.W           R10, [R12,#4]
1AD60C:  LDR             R0, [R4,R0]
1AD60E:  LDR             R1, [R4,R1]
1AD610:  LDR             R2, [R4,R2]
1AD612:  ADD             R0, R1
1AD614:  STR             R2, [R6,#0x1D0+var_164]
1AD616:  MOVS            R1, #1
1AD618:  LDR.W           R11, [R4,R8]
1AD61C:  ASRS            R0, R0, #2
1AD61E:  STR.W           R0, [R9,#0x180]
1AD622:  SUB.W           R0, R11, #0xA00
1AD626:  ADD.W           R0, R1, R0,ASR#3
1AD62A:  ASRS            R0, R0, #1
1AD62C:  BLX             j_silk_sigm_Q15
1AD630:  ASRS            R0, R0, #1
1AD632:  MOVW            R1, #0x1244
1AD636:  STR.W           R0, [R9,#0x184]
1AD63A:  LDR             R1, [R4,R1]
1AD63C:  CBZ             R1, loc_1AD644
1AD63E:  STR.W           R11, [R6,#0x1D0+var_15C]
1AD642:  B               loc_1AD676
1AD644:  MOVW            R1, #0x11B4
1AD648:  LDR.W           R2, [R9,#0x180]
1AD64C:  LDR             R1, [R4,R1]
1AD64E:  SXTH            R0, R0
1AD650:  ADD.W           R2, R2, #0x4000
1AD654:  RSB.W           R1, R1, #0x100
1AD658:  MULS            R0, R2
1AD65A:  SXTH            R3, R1
1AD65C:  MULS            R1, R3
1AD65E:  ASRS            R3, R0, #0x10
1AD660:  SBFX.W          R1, R1, #8, #0x10
1AD664:  SUB.W           R1, R10, R1,LSL#3
1AD668:  UXTH            R2, R1
1AD66A:  SMLATT.W        R0, R1, R0, R11
1AD66E:  MULS            R2, R3
1AD670:  ADD.W           R0, R0, R2,ASR#16
1AD674:  STR             R0, [R6,#0x74]
1AD676:  MOVW            R10, #0x129D
1AD67A:  LDRB.W          R0, [R4,R10]
1AD67E:  STR.W           R9, [R6,#0x3C]
1AD682:  CMP             R0, #2
1AD684:  STR             R4, [R6,#0x10]
1AD686:  BNE             loc_1AD69E
1AD688:  MOVW            R0, #0x21B0
1AD68C:  MOVW            R1, #0x129E
1AD690:  LDR             R0, [R4,R0]
1AD692:  MOVS            R2, #0
1AD694:  STRB            R2, [R4,R1]
1AD696:  MOV             R8, R4
1AD698:  SBFX.W          R11, R0, #7, #9
1AD69C:  B               loc_1AD774
1AD69E:  ADD.W           R0, R4, R8
1AD6A2:  MOVW            R2, #0x6666
1AD6A6:  MOV.W           R10, #0
1AD6AA:  LDR             R0, [R0]
1AD6AC:  SXTH            R1, R0
1AD6AE:  LSLS            R0, R0, #0x10
1AD6B0:  SMULBB.W        R1, R1, R2
1AD6B4:  LDR.W           R2, [R9,#0x180]
1AD6B8:  RSB.W           R2, R2, #0x4000
1AD6BC:  SXTH            R3, R2
1AD6BE:  ASRS            R1, R1, #0x10
1AD6C0:  SUB.W           R0, R1, R0,ASR#15
1AD6C4:  ADD.W           R0, R0, #0xC00
1AD6C8:  UXTH            R1, R0
1AD6CA:  MULS            R1, R3
1AD6CC:  MOVW            R3, #0x11E4
1AD6D0:  LDRSH           R3, [R4,R3]
1AD6D2:  ADD.W           R3, R3, R3,LSL#2
1AD6D6:  CMP             R3, #2
1AD6D8:  MOV.W           R1, R1,ASR#16
1AD6DC:  ADD.W           R4, R3, R3,LSR#31
1AD6E0:  SMLATB.W        R0, R0, R2, R1
1AD6E4:  STR             R0, [R6,#0x68]
1AD6E6:  MOV.W           R0, R4,ASR#1
1AD6EA:  STR             R0, [R6,#0x78]
1AD6EC:  BLT             loc_1AD74C
1AD6EE:  LDR             R1, [R6,#0x10]
1AD6F0:  MOV.W           R0, #0x11E0
1AD6F4:  MOV.W           R8, #0
1AD6F8:  MOV.W           R10, #0
1AD6FC:  MOV.W           R11, #0
1AD700:  LDR             R0, [R1,R0]
1AD702:  LSLS            R4, R0, #1
1AD704:  MOV.W           R9, R0,LSL#2
1AD708:  ADD.W           R0, R6, #0x80
1AD70C:  ADD.W           R1, R6, #0x84
1AD710:  MOV             R2, R5
1AD712:  MOV             R3, R4
1AD714:  BLX             j_silk_sum_sqr_shift
1AD718:  ADD.W           R0, R6, #0x80
1AD71C:  MOV             R2, R0
1AD71E:  LDRD.W          R0, R1, [R2]
1AD722:  ASR.W           R1, R4, R1
1AD726:  ADD             R0, R1
1AD728:  STR             R0, [R2]
1AD72A:  BLX             j_silk_lin2log
1AD72E:  CMP.W           R8, #1
1AD732:  BLT             loc_1AD73E
1AD734:  SUBS.W          R1, R0, R11
1AD738:  IT MI
1AD73A:  NEGMI           R1, R1
1AD73C:  ADD             R10, R1
1AD73E:  LDR             R1, [R6,#0x78]
1AD740:  ADD.W           R8, R8, #1
1AD744:  ADD             R5, R9
1AD746:  MOV             R11, R0
1AD748:  CMP             R1, R8
1AD74A:  BNE             loc_1AD708
1AD74C:  LDR             R1, [R6,#0x78]
1AD74E:  MOVS            R0, #0x4D ; 'M'
1AD750:  MULS            R0, R1
1AD752:  MOVS            R1, #0
1AD754:  SUBS            R0, #0x4D ; 'M'
1AD756:  CMP             R10, R0
1AD758:  MOVW            R0, #0x129E
1AD75C:  IT LE
1AD75E:  MOVLE           R1, #1
1AD760:  LDR.W           R8, [R6,#0x10]
1AD764:  MOVW            R10, #0x129D
1AD768:  STRB.W          R1, [R8,R0]
1AD76C:  LDR.W           R9, [R6,#0x3C]
1AD770:  LDR.W           R11, [R6,#0x68]
1AD774:  LDR.W           R0, [R9,#0x188]
1AD778:  UXTH            R1, R0
1AD77A:  LSLS            R1, R1, #5
1AD77C:  UXTAH.W         R1, R1, R0
1AD780:  ASRS            R0, R0, #0x10
1AD782:  ADD.W           R0, R0, R0,LSL#5
1AD786:  UBFX.W          R1, R1, #0xF, #0x10
1AD78A:  ADD.W           R0, R1, R0,LSL#1
1AD78E:  UXTH            R1, R0
1AD790:  SXTH            R2, R0
1AD792:  MULS            R1, R2
1AD794:  MOVS            R2, #1
1AD796:  ADD.W           R2, R2, R0,ASR#15
1AD79A:  ASRS            R2, R2, #1
1AD79C:  ASRS            R1, R1, #0x10
1AD79E:  SMLABT.W        R1, R0, R0, R1
1AD7A2:  MLA.W           R0, R2, R0, R1
1AD7A6:  ADDS.W          R0, R0, #0x10000
1AD7AA:  MOV             R1, R0
1AD7AC:  IT MI
1AD7AE:  NEGMI           R1, R0
1AD7B0:  CLZ.W           R4, R1
1AD7B4:  SUBS            R1, R4, #1
1AD7B6:  LSL.W           R5, R0, R1
1AD7BA:  MOV             R0, #0x1FFFFFFF
1AD7BE:  ASRS            R1, R5, #0x10
1AD7C0:  BLX             sub_220A40
1AD7C4:  SXTH            R1, R0
1AD7C6:  MOVW            R2, #0x7852
1AD7CA:  SMULBB.W        R2, R1, R2
1AD7CE:  SMMUL.W         R3, R5, R2
1AD7D2:  MOVS            R5, #0x78520000
1AD7D8:  SUB.W           R3, R5, R3,LSL#3
1AD7DC:  UXTH            R5, R3
1AD7DE:  SMLABT.W        R0, R0, R3, R2
1AD7E2:  MULS            R1, R5
1AD7E4:  ADD.W           R0, R0, R1,ASR#16
1AD7E8:  RSB.W           R1, R4, #1
1AD7EC:  CMN.W           R1, #0x1D
1AD7F0:  BGT             loc_1AD818
1AD7F2:  MOV             R2, #0xFFFFFFE4
1AD7F6:  SUBS            R1, R2, R1
1AD7F8:  LDR             R4, [R6,#0x74]
1AD7FA:  MOV             R2, #0x7FFFFFFF
1AD7FE:  MOV.W           R3, #0x80000000
1AD802:  LSRS            R2, R1
1AD804:  ASRS            R3, R1
1AD806:  CMP             R3, R2
1AD808:  BLE             loc_1AD82C
1AD80A:  CMP             R0, R3
1AD80C:  MOV             R5, R3
1AD80E:  BGT             loc_1AD83A
1AD810:  CMP             R0, R2
1AD812:  IT LT
1AD814:  MOVLT           R0, R2
1AD816:  B               loc_1AD838
1AD818:  ADD.W           R2, R1, #0x1C
1AD81C:  MOVS            R3, #0
1AD81E:  CMP             R1, #4
1AD820:  IT LT
1AD822:  ASRLT.W         R3, R0, R2
1AD826:  LDR             R4, [R6,#0x74]
1AD828:  STR             R3, [R6,#0x2C]
1AD82A:  B               loc_1AD840
1AD82C:  CMP             R0, R2
1AD82E:  MOV             R5, R2
1AD830:  BGT             loc_1AD83A
1AD832:  CMP             R0, R3
1AD834:  IT LT
1AD836:  MOVLT           R0, R3
1AD838:  MOV             R5, R0
1AD83A:  LSL.W           R0, R5, R1
1AD83E:  STR             R0, [R6,#0x2C]
1AD840:  MOV.W           R0, #0x1240
1AD844:  LDR.W           R0, [R8,R0]
1AD848:  CMP             R0, #1
1AD84A:  BLT             loc_1AD864
1AD84C:  LDR             R1, [R6,#0x3C]
1AD84E:  MOVW            R3, #0xA3D
1AD852:  LDR.W           R1, [R1,#0x184]
1AD856:  UXTH            R2, R1
1AD858:  SMLABT.W        R0, R3, R1, R0
1AD85C:  MULS            R2, R3
1AD85E:  ADD.W           R0, R0, R2,LSR#16
1AD862:  B               loc_1AD866
1AD864:  MOVS            R0, #0
1AD866:  STR             R0, [R6,#0x14]
1AD868:  MOVW            R0, #0x1258
1AD86C:  ADD             R0, R8
1AD86E:  STR             R0, [R6,#8]
1AD870:  ADD.W           R0, R8, R10
1AD874:  STR             R0, [R6,#0xC]
1AD876:  ADD.W           R0, R11, R4
1AD87A:  STR             R0, [R6,#4]
1AD87C:  MOVW            R4, #0x11FC
1AD880:  MOVS            R2, #7
1AD882:  LDR.W           R0, [R8,R4]
1AD886:  MOV             LR, #0xFFFFC000
1AD88E:  ADD.W           R2, R2, R0,LSL#1
1AD892:  BIC.W           R2, R2, #7
1AD896:  SUB.W           R5, SP, R2
1AD89A:  MOVW            R2, #0x11E4
1AD89E:  ADD.W           R10, R8, R2
1AD8A2:  STR             R5, [R6,#0x28]
1AD8A4:  MOV             SP, R5
1AD8A6:  LDR.W           R2, [R8,R2]
1AD8AA:  STR.W           R10, [R6,#0x30]
1AD8AE:  CMP             R2, #1
1AD8B0:  BLT.W           loc_1AE1D0
1AD8B4:  LDRD.W          R1, R2, [R6,#0x6C]
1AD8B8:  LDR             R5, [R6,#0x10]
1AD8BA:  ADD.W           R11, R5, R4
1AD8BE:  LDR             R4, [R6,#0x14]
1AD8C0:  SUB.W           R1, R2, R1,LSL#1
1AD8C4:  ADD.W           R2, R5, #0x1240
1AD8C8:  RSB.W           R12, R4, #0
1AD8CC:  STR             R2, [R6,#0x24]
1AD8CE:  SXTH            R3, R4
1AD8D0:  UXTH.W          R2, R12
1AD8D4:  STR             R3, [R6,#0x74]
1AD8D6:  MULS            R2, R3
1AD8D8:  SUB.W           R3, LR, #0xC000
1AD8DC:  ASRS            R2, R2, #0x10
1AD8DE:  SMLABT.W        R2, R4, R12, R2
1AD8E2:  SUBS            R3, R3, R2
1AD8E4:  ADD.W           R2, R2, #0x10000
1AD8E8:  IT LT
1AD8EA:  MOVLT           R3, R2
1AD8EC:  CLZ.W           R3, R3
1AD8F0:  ADDS            R4, R3, #4
1AD8F2:  SUBS            R3, #1
1AD8F4:  STR             R4, [R6,#0x60]
1AD8F6:  LSL.W           R3, R2, R3
1AD8FA:  MOVW            R2, #0x121C
1AD8FE:  ADD             R2, R5
1AD900:  STR             R2, [R6,#0x48]
1AD902:  MOVW            R2, #0x11EC
1AD906:  ADD             R2, R5
1AD908:  STR             R2, [R6,#0x20]
1AD90A:  LDR             R2, [R6,#0x3C]
1AD90C:  ADDS            R2, #0x8C
1AD90E:  STR             R2, [R6,#0x44]
1AD910:  ADD.W           R2, R6, #0x88
1AD914:  ADDS            R4, R2, #4
1AD916:  SUBS            R2, #8
1AD918:  STR             R2, [R6,#0x68]
1AD91A:  ADD.W           R2, R5, #0x11E0
1AD91E:  STR             R2, [R6,#0x1C]
1AD920:  SXTH.W          R2, R12
1AD924:  STR             R2, [R6,#0x64]
1AD926:  MOVS            R2, #0
1AD928:  STR             R2, [R6,#0x40]
1AD92A:  UXTH            R2, R3
1AD92C:  STR             R4, [R6,#0x4C]
1AD92E:  STRD.W          R2, R3, [R6,#0x58]
1AD932:  ASRS            R2, R3, #0x10
1AD934:  STR             R2, [R6,#0x54]
1AD936:  STR.W           R11, [R6,#0x18]
1AD93A:  B               loc_1AD958
1AD93C:  STR.W           R11, [R6,#0x40]
1AD940:  ADD.W           R9, R9, #0x30 ; '0'
1AD944:  LDRD.W          R0, R1, [R6,#0x34]
1AD948:  LDR.W           R11, [R6,#0x18]
1AD94C:  ADD.W           R1, R1, R0,LSL#1
1AD950:  LDR.W           R0, [R11]
1AD954:  STR.W           R9, [R6,#0x44]
1AD958:  LDR             R2, [R6,#0x1C]
1AD95A:  MOV             R9, R1
1AD95C:  LDR.W           R10, [R6,#0x28]
1AD960:  LDR             R2, [R2]
1AD962:  ADD.W           R4, R2, R2,LSL#1
1AD966:  MOVS            R2, #1
1AD968:  SUBS            R5, R0, R4
1AD96A:  MOV             R0, R10
1AD96C:  MOV.W           R8, R5,ASR#1
1AD970:  MOV             R3, R8
1AD972:  BLX             j_silk_apply_sine_window
1AD976:  BIC.W           R1, R5, #1
1AD97A:  LSLS            R2, R4, #1; n
1AD97C:  ADD.W           R0, R10, R1; dest
1AD980:  ADD             R1, R9; src
1AD982:  BLX             j_memcpy
1AD986:  ADD.W           R1, R4, R5,ASR#1
1AD98A:  MOVS            R2, #2
1AD98C:  MOV             R3, R8
1AD98E:  STR.W           R9, [R6,#0x38]
1AD992:  ADD.W           R0, R10, R1,LSL#1
1AD996:  ADD.W           R1, R9, R1,LSL#1
1AD99A:  BLX             j_silk_apply_sine_window
1AD99E:  LDR             R0, [R6,#0x20]
1AD9A0:  LDR.W           R9, [R6,#0x24]
1AD9A4:  LDR             R0, [R0]
1AD9A6:  STR             R0, [R6,#0x34]
1AD9A8:  LDR             R0, [R6,#0x48]
1AD9AA:  LDR.W           R1, [R9]
1AD9AE:  LDR.W           R3, [R11]; int
1AD9B2:  LDR             R0, [R0]
1AD9B4:  CMP             R1, #1
1AD9B6:  BLT             loc_1AD9D0
1AD9B8:  STRD.W          R3, R0, [SP,#0x1D0+var_1D8]!
1AD9BC:  SUB.W           R5, R7, #-var_88
1AD9C0:  LDR             R3, [R6,#0x14]
1AD9C2:  ADD.W           R1, R6, #0x84
1AD9C6:  MOV             R2, R10
1AD9C8:  MOV             R0, R5
1AD9CA:  BLX             j_silk_warped_autocorrelation_FIX_c
1AD9CE:  B               loc_1AD9EA
1AD9D0:  SUB             SP, SP, #8
1AD9D2:  ADDS            R0, #1
1AD9D4:  SUB.W           R5, R7, #-var_88
1AD9D8:  STR             R0, [SP,#0x1D8+var_1D8]; int
1AD9DA:  ADD.W           R1, R6, #0x84; int
1AD9DE:  LDR             R0, [R7,#arg_0]
1AD9E0:  MOV             R2, R10; src
1AD9E2:  STR             R0, [SP,#0x1D8+var_1D4]; int
1AD9E4:  MOV             R0, R5; int
1AD9E6:  BLX             j_silk_autocorr
1AD9EA:  ADD             SP, SP, #8
1AD9EC:  LDR.W           R0, [R7,#var_88]
1AD9F0:  SUB.W           R4, R7, #-var_E8
1AD9F4:  LDR.W           R11, [R6,#0x40]
1AD9F8:  UBFX.W          R2, R0, #4, #0x10
1AD9FC:  ASRS            R1, R0, #0x14
1AD9FE:  LSLS            R1, R1, #5
1ADA00:  RSB.W           R2, R2, R2,LSL#5
1ADA04:  SUB.W           R1, R1, R0,ASR#20
1ADA08:  ADD.W           R1, R1, R2,LSR#16
1ADA0C:  MOVS            R2, #1
1ADA0E:  CMP             R1, #1
1ADA10:  IT LE
1ADA12:  MOVLE           R1, R2
1ADA14:  LDR.W           R10, [R6,#0x48]
1ADA18:  ADD             R0, R1
1ADA1A:  STR.W           R0, [R7,#var_88]
1ADA1E:  MOV             R0, R4
1ADA20:  MOV             R1, R5
1ADA22:  LDR.W           R2, [R10]
1ADA26:  BLX             j_silk_schur64
1ADA2A:  ADD.W           R5, R6, #0x80
1ADA2E:  MOV             R1, R4
1ADA30:  STR             R0, [R5]
1ADA32:  ADD.W           R0, R6, #0x88
1ADA36:  LDR.W           R2, [R10]
1ADA3A:  BLX             j_silk_k2a_Q16
1ADA3E:  LDR             R0, [R5,#4]
1ADA40:  TST.W           R0, #1
1ADA44:  BNE             loc_1ADA62
1ADA46:  LDR             R1, [R5]
1ADA48:  NEGS            R0, R0
1ADA4A:  CMP             R1, #1
1ADA4C:  BLT             loc_1ADA6E
1ADA4E:  CLZ.W           R2, R1
1ADA52:  RSBS.W          R3, R2, #0x18
1ADA56:  BEQ             loc_1ADA7E
1ADA58:  CMP.W           R3, #0xFFFFFFFF
1ADA5C:  BLE             loc_1ADA72
1ADA5E:  RORS            R1, R3
1ADA60:  B               loc_1ADA7E
1ADA62:  LDR             R1, [R5]
1ADA64:  MVNS            R0, R0
1ADA66:  ASRS            R1, R1, #1
1ADA68:  STR             R1, [R5]
1ADA6A:  CMP             R1, #1
1ADA6C:  BGE             loc_1ADA4E
1ADA6E:  MOVS            R1, #0
1ADA70:  B               loc_1ADAAE
1ADA72:  NEGS            R5, R3
1ADA74:  ADDS            R3, #0x20 ; ' '
1ADA76:  LSL.W           R5, R1, R5
1ADA7A:  LSRS            R1, R3
1ADA7C:  ORRS            R1, R5
1ADA7E:  AND.W           R1, R1, #0x7F
1ADA82:  MOV.W           R3, #0xD50000
1ADA86:  TST.W           R2, #1
1ADA8A:  MOV.W           R2, R2,LSR#1
1ADA8E:  MUL.W           R1, R3, R1
1ADA92:  MOV.W           R3, #0x8000
1ADA96:  IT EQ
1ADA98:  MOVWEQ          R3, #0xB486
1ADA9C:  LSR.W           R2, R3, R2
1ADAA0:  UXTH            R3, R2
1ADAA2:  LSRS            R1, R1, #0x10
1ADAA4:  MULS            R3, R1
1ADAA6:  SMLABT.W        R1, R1, R2, R2
1ADAAA:  ADD.W           R1, R1, R3,LSR#16
1ADAAE:  MOVS            R2, #0x10
1ADAB0:  SUB.W           R0, R2, R0,ASR#1
1ADAB4:  MOV             R2, #0x7FFFFFFF
1ADAB8:  MOV.W           R3, #0x80000000
1ADABC:  LSRS            R2, R0
1ADABE:  ASRS            R3, R0
1ADAC0:  CMP             R3, R2
1ADAC2:  BLE             loc_1ADAD2
1ADAC4:  CMP             R1, R3
1ADAC6:  MOV             R5, R3
1ADAC8:  BGT             loc_1ADAE0
1ADACA:  CMP             R1, R2
1ADACC:  IT LT
1ADACE:  MOVLT           R1, R2
1ADAD0:  B               loc_1ADADE
1ADAD2:  CMP             R1, R2
1ADAD4:  MOV             R5, R2
1ADAD6:  BGT             loc_1ADAE0
1ADAD8:  CMP             R1, R3
1ADADA:  IT LT
1ADADC:  MOVLT           R1, R3
1ADADE:  MOV             R5, R1
1ADAE0:  LSL.W           R8, R5, R0
1ADAE4:  LDR             R0, [R6,#0x3C]
1ADAE6:  STR.W           R8, [R0,R11,LSL#2]
1ADAEA:  LDR.W           R0, [R9]
1ADAEE:  CMP             R0, #1
1ADAF0:  BLT.W           loc_1ADC38
1ADAF4:  LDR.W           R1, [R10]
1ADAF8:  ADD.W           R0, R6, #0x88
1ADAFC:  LDR.W           R12, [R6,#0x74]
1ADB00:  CMP             R1, #2
1ADB02:  ADD.W           R0, R0, R1,LSL#2
1ADB06:  LDR.W           R0, [R0,#-4]
1ADB0A:  LDRD.W          R5, R4, [R6,#0x64]
1ADB0E:  BLT             loc_1ADB28
1ADB10:  UXTH            R3, R0
1ADB12:  LDR.W           R2, [R4,R1,LSL#2]
1ADB16:  MULS            R3, R5
1ADB18:  SMLATB.W        R0, R0, R5, R2
1ADB1C:  SUBS            R2, R1, #2
1ADB1E:  SUBS            R1, #1
1ADB20:  CMP             R2, #0
1ADB22:  ADD.W           R0, R0, R3,ASR#16
1ADB26:  BGT             loc_1ADB10
1ADB28:  UXTH            R1, R0
1ADB2A:  MUL.W           R1, R1, R12
1ADB2E:  ASRS            R1, R1, #0x10
1ADB30:  SMLATB.W        R0, R0, R12, R1
1ADB34:  ADD.W           R1, R0, #0x1000000
1ADB38:  CMP.W           R0, #0xFF000000
1ADB3C:  MOV             R2, R1
1ADB3E:  IT LE
1ADB40:  RSBLE.W         R2, R0, #0xFF000000
1ADB44:  CLZ.W           R4, R2
1ADB48:  SUBS            R0, R4, #1
1ADB4A:  LSL.W           R5, R1, R0
1ADB4E:  MOV             R0, #0x1FFFFFFF
1ADB52:  ASRS            R1, R5, #0x10
1ADB54:  BLX             sub_220A40
1ADB58:  UXTH            R1, R5
1ADB5A:  SXTH            R2, R0
1ADB5C:  MULS            R1, R2
1ADB5E:  MOVS            R3, #1
1ADB60:  ADD.W           R3, R3, R0,ASR#15
1ADB64:  ASRS            R3, R3, #1
1ADB66:  ASRS            R1, R1, #0x10
1ADB68:  SMLABT.W        R1, R0, R5, R1
1ADB6C:  NEGS            R1, R1
1ADB6E:  LSLS            R1, R1, #3
1ADB70:  MULS            R3, R1
1ADB72:  UXTH            R5, R1
1ADB74:  MULS            R2, R5
1ADB76:  ADD.W           R3, R3, R0,LSL#16
1ADB7A:  SMLATB.W        R0, R1, R0, R3
1ADB7E:  RSB.W           R1, R4, #0x3E ; '>'
1ADB82:  CMP             R1, #0x28 ; '('
1ADB84:  ADD.W           R0, R0, R2,ASR#16
1ADB88:  BGT             loc_1ADBAC
1ADB8A:  RSB.W           R1, R1, #0x28 ; '('
1ADB8E:  MOV             R2, #0x7FFFFFFF
1ADB92:  MOV.W           R3, #0x80000000
1ADB96:  LSRS            R2, R1
1ADB98:  ASRS            R3, R1
1ADB9A:  CMP             R3, R2
1ADB9C:  BLE             loc_1ADC00
1ADB9E:  CMP             R0, R3
1ADBA0:  MOV             R4, R3
1ADBA2:  BGT             loc_1ADC0E
1ADBA4:  CMP             R0, R2
1ADBA6:  IT LT
1ADBA8:  MOVLT           R0, R2
1ADBAA:  B               loc_1ADC0C
1ADBAC:  SUB.W           R2, R1, #0x28 ; '('
1ADBB0:  CMP             R1, #0x48 ; 'H'
1ADBB2:  MOV.W           R1, #0
1ADBB6:  IT LT
1ADBB8:  ASRLT.W         R1, R0, R2
1ADBBC:  CMP.W           R8, #0x4000
1ADBC0:  BLT             loc_1ADC18
1ADBC2:  MOVS            R2, #1
1ADBC4:  AND.W           R0, R8, #1
1ADBC8:  ADD.W           R2, R2, R1,ASR#15
1ADBCC:  ADD.W           R0, R0, R8,LSR#1
1ADBD0:  SXTH            R1, R1
1ADBD2:  ASRS            R2, R2, #1
1ADBD4:  UXTH            R3, R0
1ADBD6:  MULS            R2, R0
1ADBD8:  LSRS            R0, R0, #0x10
1ADBDA:  MULS            R3, R1
1ADBDC:  MLA.W           R0, R0, R1, R2
1ADBE0:  MOV             R2, #0x3FFFFFFE
1ADBE8:  ADD.W           R1, R0, R3,ASR#16
1ADBEC:  LDR             R3, [R6,#0x3C]
1ADBEE:  CMP             R1, R2
1ADBF0:  MOV.W           R0, R1,LSL#1
1ADBF4:  STR.W           R1, [R3,R11,LSL#2]
1ADBF8:  IT GT
1ADBFA:  MOVGT           R0, #0x7FFFFFFF
1ADBFE:  B               loc_1ADC34
1ADC00:  CMP             R0, R2
1ADC02:  MOV             R4, R2
1ADC04:  BGT             loc_1ADC0E
1ADC06:  CMP             R0, R3
1ADC08:  IT LT
1ADC0A:  MOVLT           R0, R3
1ADC0C:  MOV             R4, R0
1ADC0E:  LSL.W           R1, R4, R1
1ADC12:  CMP.W           R8, #0x4000
1ADC16:  BGE             loc_1ADBC2
1ADC18:  SXTH            R0, R1
1ADC1A:  UXTH.W          R2, R8
1ADC1E:  MULS            R0, R2
1ADC20:  MOVS            R2, #1
1ADC22:  LDR             R3, [R6,#0x3C]
1ADC24:  ASRS            R0, R0, #0x10
1ADC26:  SMLATB.W        R0, R8, R1, R0
1ADC2A:  ADD.W           R1, R2, R1,ASR#15
1ADC2E:  ASRS            R1, R1, #1
1ADC30:  MLA.W           R0, R1, R8, R0
1ADC34:  STR.W           R0, [R3,R11,LSL#2]
1ADC38:  ADD.W           R4, R6, #0x88
1ADC3C:  LDR.W           R1, [R10]
1ADC40:  LDR             R2, [R6,#0x2C]
1ADC42:  MOV             R0, R4
1ADC44:  BLX             j_silk_bwexpander_32
1ADC48:  LDR.W           R0, [R9]
1ADC4C:  CMP             R0, #1
1ADC4E:  BLT             loc_1ADD10
1ADC50:  LDR.W           R8, [R10]
1ADC54:  LDR.W           R9, [R6,#0x44]
1ADC58:  SUB.W           R0, R8, #1
1ADC5C:  STR             R0, [R6,#0x6C]
1ADC5E:  LDRD.W          R4, R5, [R6,#0x64]
1ADC62:  CMP.W           R8, #2
1ADC66:  BLT             loc_1ADC8E
1ADC68:  LDR             R1, [R6,#0x6C]
1ADC6A:  ADD.W           R0, R6, #0x88
1ADC6E:  LDR.W           R1, [R0,R1,LSL#2]
1ADC72:  MOV             R0, R8
1ADC74:  UXTH            R3, R1
1ADC76:  LDR.W           R2, [R5,R0,LSL#2]
1ADC7A:  MULS            R3, R4
1ADC7C:  SMLABT.W        R1, R4, R1, R2
1ADC80:  ADD.W           R1, R1, R3,ASR#16
1ADC84:  STR.W           R1, [R5,R0,LSL#2]
1ADC88:  SUBS            R0, #1
1ADC8A:  CMP             R0, #1
1ADC8C:  BGT             loc_1ADC74
1ADC8E:  ADD.W           R0, R6, #0x80
1ADC92:  LDR             R1, [R6,#0x74]
1ADC94:  LDR.W           R10, [R0,#8]
1ADC98:  UXTH.W          R0, R10
1ADC9C:  MULS            R0, R1
1ADC9E:  ASRS            R0, R0, #0x10
1ADCA0:  SMLATB.W        R0, R10, R1, R0
1ADCA4:  ADD.W           R1, R0, #0x1000000
1ADCA8:  CMP.W           R0, #0xFF000000
1ADCAC:  MOV             R2, R1
1ADCAE:  IT LE
1ADCB0:  RSBLE.W         R2, R0, #0xFF000000
1ADCB4:  CLZ.W           R4, R2
1ADCB8:  SUBS            R0, R4, #1
1ADCBA:  LSL.W           R5, R1, R0
1ADCBE:  MOV             R0, #0x1FFFFFFF
1ADCC2:  ASRS            R1, R5, #0x10
1ADCC4:  BLX             sub_220A40
1ADCC8:  LDR             R2, [R6,#0x58]
1ADCCA:  SXTH            R1, R0
1ADCCC:  LDR             R3, [R6,#0x54]
1ADCCE:  MULS            R2, R1
1ADCD0:  SMULBB.W        R3, R1, R3
1ADCD4:  ADD.W           R2, R3, R2,ASR#16
1ADCD8:  SMMUL.W         R3, R5, R2
1ADCDC:  LDR             R5, [R6,#0x5C]
1ADCDE:  SUB.W           R3, R5, R3,LSL#3
1ADCE2:  UXTH            R5, R3
1ADCE4:  SMLABT.W        R0, R0, R3, R2
1ADCE8:  MULS            R1, R5
1ADCEA:  LDR             R2, [R6,#0x60]
1ADCEC:  ADD.W           R1, R0, R1,ASR#16
1ADCF0:  RSB.W           R0, R4, #1
1ADCF4:  ADD             R2, R0
1ADCF6:  CMP.W           R2, #0xFFFFFFFF
1ADCFA:  BLE             loc_1ADD36
1ADCFC:  CMP             R2, #0x20 ; ' '
1ADCFE:  MOV.W           LR, #0
1ADD02:  IT LT
1ADD04:  ASRLT.W         LR, R1, R2
1ADD08:  CMP.W           R8, #1
1ADD0C:  BGE             loc_1ADD70
1ADD0E:  B               loc_1AE1BE
1ADD10:  LDR.W           R0, [R10]
1ADD14:  SUB             SP, SP, #8
1ADD16:  STR             R0, [SP,#0x1D8+var_1D8]
1ADD18:  ADD.W           R0, R11, R11,LSL#1
1ADD1C:  LDR             R1, [R6,#0x3C]
1ADD1E:  MOVS            R2, #0xD
1ADD20:  MOVS            R3, #0x18
1ADD22:  ADD.W           R0, R1, R0,LSL#4
1ADD26:  MOV             R1, R4
1ADD28:  ADDS            R0, #0x8C
1ADD2A:  BLX             j_silk_LPC_fit
1ADD2E:  ADD             SP, SP, #8
1ADD30:  LDR.W           R9, [R6,#0x44]
1ADD34:  B               loc_1AE1BE
1ADD36:  NEGS            R0, R2
1ADD38:  MOV             R2, #0x7FFFFFFF
1ADD3C:  MOV.W           R3, #0x80000000
1ADD40:  LSRS            R2, R0
1ADD42:  ASRS            R3, R0
1ADD44:  CMP             R3, R2
1ADD46:  BLE             loc_1ADD56
1ADD48:  CMP             R1, R3
1ADD4A:  MOV             R4, R3
1ADD4C:  BGT             loc_1ADD64
1ADD4E:  CMP             R1, R2
1ADD50:  IT LT
1ADD52:  MOVLT           R1, R2
1ADD54:  B               loc_1ADD62
1ADD56:  CMP             R1, R2
1ADD58:  MOV             R4, R2
1ADD5A:  BGT             loc_1ADD64
1ADD5C:  CMP             R1, R3
1ADD5E:  IT LT
1ADD60:  MOVLT           R1, R3
1ADD62:  MOV             R4, R1
1ADD64:  LSL.W           LR, R4, R0
1ADD68:  CMP.W           R8, #1
1ADD6C:  BLT.W           loc_1AE1BE
1ADD70:  UXTH.W          R12, LR
1ADD74:  SXTH.W          R2, R10
1ADD78:  MUL.W           R2, R2, R12
1ADD7C:  MOVS            R1, #1
1ADD7E:  ADD.W           R3, R1, R10,ASR#15
1ADD82:  MOVS            R0, #1
1ADD84:  CMP.W           R8, #1
1ADD88:  MOV.W           R3, R3,ASR#1
1ADD8C:  STR             R0, [R6,#0x50]
1ADD8E:  ADD.W           R0, R6, #0x80
1ADD92:  MOV.W           R2, R2,ASR#16
1ADD96:  SMLABT.W        R2, R10, LR, R2
1ADD9A:  MLA.W           R2, R3, LR, R2
1ADD9E:  STR             R2, [R0,#8]
1ADDA0:  BEQ             loc_1ADDE6
1ADDA2:  ADD.W           R0, R6, #0x88
1ADDA6:  MOV.W           R2, LR,ASR#16
1ADDAA:  MOVS            R3, #1
1ADDAC:  MOV.W           R10, #1
1ADDB0:  LDR.W           R5, [R0,R3,LSL#2]
1ADDB4:  SXTH            R4, R5
1ADDB6:  ADD.W           R5, R10, R5,ASR#15
1ADDBA:  MUL.W           R1, R4, R12
1ADDBE:  ASRS            R5, R5, #1
1ADDC0:  SMULBB.W        R4, R4, R2
1ADDC4:  ADD.W           R1, R4, R1,ASR#16
1ADDC8:  MLA.W           R1, R5, LR, R1
1ADDCC:  STR.W           R1, [R0,R3,LSL#2]
1ADDD0:  ADDS            R3, #1
1ADDD2:  CMP             R8, R3
1ADDD4:  BNE             loc_1ADDB0
1ADDD6:  CMP.W           R8, #1
1ADDDA:  MOV             R0, R8
1ADDDC:  IT NE
1ADDDE:  MOVNE           R0, #0
1ADDE0:  STR             R0, [R6,#0x50]
1ADDE2:  BLT.W           loc_1AE1BE
1ADDE6:  LDR.W           R12, [R6,#0x74]
1ADDEA:  ADD.W           R5, R6, #0x88
1ADDEE:  MOVS            R1, #0
1ADDF0:  MOV.W           R9, #0
1ADDF4:  STR             R1, [R6,#0x78]
1ADDF6:  MOV.W           R1, #0xFFFFFFFF
1ADDFA:  MOVS            R2, #0
1ADDFC:  LDR.W           R3, [R5,R2,LSL#2]
1ADE00:  EOR.W           R4, R3, R3,ASR#31
1ADE04:  SUB.W           R3, R4, R3,ASR#31
1ADE08:  CMP             R3, R1
1ADE0A:  ITT GT
1ADE0C:  MOVGT           R9, R2
1ADE0E:  MOVGT           R1, R3
1ADE10:  ADDS            R2, #1
1ADE12:  CMP             R8, R2
1ADE14:  BNE             loc_1ADDFC
1ADE16:  MOVW            R0, #0xFBE8
1ADE1A:  MOV.W           R11, R1,ASR#4
1ADE1E:  MOVT            R0, #0x3F ; '?'
1ADE22:  CMP             R11, R0
1ADE24:  BLT.W           loc_1AE170
1ADE28:  CMP.W           R8, #2
1ADE2C:  BLT             loc_1ADE56
1ADE2E:  ADD.W           R0, R6, #0x80
1ADE32:  LDR             R1, [R6,#0x6C]
1ADE34:  LDR             R2, [R6,#0x4C]
1ADE36:  LDR             R4, [R0,#8]
1ADE38:  LDR             R3, [R2]
1ADE3A:  SUBS            R1, #1
1ADE3C:  UXTH            R0, R3
1ADE3E:  SMLABT.W        R4, R12, R3, R4
1ADE42:  MUL.W           R0, R0, R12
1ADE46:  ADD.W           R0, R4, R0,ASR#16
1ADE4A:  STR.W           R0, [R2,#-4]
1ADE4E:  ADD.W           R2, R2, #4
1ADE52:  MOV             R4, R3
1ADE54:  BNE             loc_1ADE38
1ADE56:  CMP.W           LR, #0
1ADE5A:  MOV             R1, LR
1ADE5C:  IT MI
1ADE5E:  RSBMI.W         R1, LR, #0
1ADE62:  MOVS            R5, #1
1ADE64:  CLZ.W           R10, R1
1ADE68:  SUB.W           R0, R10, #1
1ADE6C:  LSL.W           R4, LR, R0
1ADE70:  MOV             R0, #0x1FFFFFFF
1ADE74:  ASRS            R1, R4, #0x10
1ADE76:  BLX             sub_220A40
1ADE7A:  UXTH            R1, R4
1ADE7C:  SXTH            R2, R0
1ADE7E:  MULS            R1, R2
1ADE80:  ADD.W           R3, R5, R0,ASR#15
1ADE84:  ASRS            R3, R3, #1
1ADE86:  ASRS            R1, R1, #0x10
1ADE88:  SMLABT.W        R1, R0, R4, R1
1ADE8C:  NEGS            R1, R1
1ADE8E:  LSLS            R1, R1, #3
1ADE90:  MULS            R3, R1
1ADE92:  UXTH            R4, R1
1ADE94:  MULS            R2, R4
1ADE96:  ADD.W           R3, R3, R0,LSL#16
1ADE9A:  SMLATB.W        R0, R1, R0, R3
1ADE9E:  RSB.W           R1, R10, #0x3E ; '>'
1ADEA2:  CMP             R1, #0x20 ; ' '
1ADEA4:  ADD.W           R4, R0, R2,ASR#16
1ADEA8:  BGT             loc_1ADED8
1ADEAA:  RSB.W           R1, R1, #0x20 ; ' '
1ADEAE:  MOV             R0, #0x7FFFFFFF
1ADEB2:  LSR.W           R2, R0, R1
1ADEB6:  MOV.W           R0, #0x80000000
1ADEBA:  ASR.W           R3, R0, R1
1ADEBE:  ADD.W           R0, R6, #0x88
1ADEC2:  CMP             R3, R2
1ADEC4:  BLE             loc_1ADEF2
1ADEC6:  CMP             R4, R3
1ADEC8:  MOV             R5, R3
1ADECA:  MOV.W           R10, #1
1ADECE:  BGT             loc_1ADF04
1ADED0:  CMP             R4, R2
1ADED2:  IT LT
1ADED4:  MOVLT           R4, R2
1ADED6:  B               loc_1ADF02
1ADED8:  SUB.W           R2, R1, #0x20 ; ' '
1ADEDC:  CMP             R1, #0x40 ; '@'
1ADEDE:  MOV.W           R12, #0
1ADEE2:  ADD.W           R0, R6, #0x88
1ADEE6:  IT LT
1ADEE8:  ASRLT.W         R12, R4, R2
1ADEEC:  MOV.W           R10, #1
1ADEF0:  B               loc_1ADF08
1ADEF2:  CMP             R4, R2
1ADEF4:  MOV             R5, R2
1ADEF6:  MOV.W           R10, #1
1ADEFA:  BGT             loc_1ADF04
1ADEFC:  CMP             R4, R3
1ADEFE:  IT LT
1ADF00:  MOVLT           R4, R3
1ADF02:  MOV             R5, R4
1ADF04:  LSL.W           R12, R5, R1
1ADF08:  UXTH.W          LR, R12
1ADF0C:  MOV.W           R2, R12,ASR#16
1ADF10:  MOVS            R3, #0
1ADF12:  LDR.W           R4, [R0,R3,LSL#2]
1ADF16:  SXTH            R5, R4
1ADF18:  MUL.W           R1, R5, LR
1ADF1C:  SMULBB.W        R5, R5, R2
1ADF20:  ADD.W           R1, R5, R1,ASR#16
1ADF24:  ADD.W           R5, R10, R4,ASR#15
1ADF28:  ASRS            R5, R5, #1
1ADF2A:  MLA.W           R1, R5, R12, R1
1ADF2E:  STR.W           R1, [R0,R3,LSL#2]
1ADF32:  ADDS            R3, #1
1ADF34:  CMP             R8, R3
1ADF36:  BNE             loc_1ADF12
1ADF38:  LDR             R0, [R6,#0x78]
1ADF3A:  MOVS            R1, #0x33 ; '3'
1ADF3C:  MOVS            R3, #0x3330000
1ADF42:  SXTH            R0, R0
1ADF44:  SMULBB.W        R0, R0, R1
1ADF48:  MOV             R1, #0xFFC00419
1ADF50:  ADD             R1, R11
1ADF52:  UXTH            R2, R1
1ADF54:  ADD.W           R0, R3, R0,LSL#17
1ADF58:  ASRS            R3, R0, #0x10
1ADF5A:  MULS            R2, R3
1ADF5C:  ASRS            R2, R2, #0x10
1ADF5E:  SMLATT.W        R1, R1, R0, R2
1ADF62:  ADD.W           R0, R9, #1
1ADF66:  MUL.W           R0, R11, R0
1ADF6A:  CMP             R1, #0
1ADF6C:  MOV             R2, R1
1ADF6E:  IT MI
1ADF70:  NEGMI           R2, R1
1ADF72:  CLZ.W           R11, R2
1ADF76:  CMP             R0, #0
1ADF78:  SUB.W           R2, R11, #1
1ADF7C:  LSL.W           R4, R1, R2
1ADF80:  UXTH            R1, R4
1ADF82:  STR             R1, [R6,#0x70]
1ADF84:  MOV             R1, R0
1ADF86:  IT MI
1ADF88:  NEGMI           R1, R0
1ADF8A:  CLZ.W           R5, R1
1ADF8E:  SUBS            R1, R5, #1
1ADF90:  LSL.W           R10, R0, R1
1ADF94:  MOV             R0, #0x1FFFFFFF
1ADF98:  MOV.W           R1, R10,ASR#16
1ADF9C:  BLX             sub_220A40
1ADFA0:  LDR             R2, [R6,#0x70]
1ADFA2:  SXTH            R1, R0
1ADFA4:  MULS            R2, R1
1ADFA6:  ASRS            R2, R2, #0x10
1ADFA8:  SMLABT.W        R2, R0, R4, R2
1ADFAC:  SMMUL.W         R3, R2, R10
1ADFB0:  SUB.W           R3, R4, R3,LSL#3
1ADFB4:  UXTH            R4, R3
1ADFB6:  SMLABT.W        R0, R0, R3, R2
1ADFBA:  MULS            R1, R4
1ADFBC:  ADD.W           R0, R0, R1,ASR#16
1ADFC0:  RSB.W           R1, R5, #7
1ADFC4:  ADD.W           R2, R1, R11
1ADFC8:  CMP.W           R2, #0xFFFFFFFF
1ADFCC:  BLE             loc_1ADFE4
1ADFCE:  CMP             R2, #0x20 ; ' '
1ADFD0:  MOV.W           R1, #0
1ADFD4:  ADD.W           R11, R6, #0x80
1ADFD8:  ADD.W           R10, R6, #0x88
1ADFDC:  IT LT
1ADFDE:  ASRLT.W         R1, R0, R2
1ADFE2:  B               loc_1AE01E
1ADFE4:  NEGS            R1, R2
1ADFE6:  MOV             R2, #0x7FFFFFFF
1ADFEA:  MOV.W           R3, #0x80000000
1ADFEE:  ADD.W           R11, R6, #0x80
1ADFF2:  ADD.W           R10, R6, #0x88
1ADFF6:  LSRS            R2, R1
1ADFF8:  ASRS            R3, R1
1ADFFA:  CMP             R3, R2
1ADFFC:  BLE             loc_1AE00C
1ADFFE:  CMP             R0, R3
1AE000:  MOV             R4, R3
1AE002:  BGT             loc_1AE01A
1AE004:  CMP             R0, R2
1AE006:  IT LT
1AE008:  MOVLT           R0, R2
1AE00A:  B               loc_1AE018
1AE00C:  CMP             R0, R2
1AE00E:  MOV             R4, R2
1AE010:  BGT             loc_1AE01A
1AE012:  CMP             R0, R3
1AE014:  IT LT
1AE016:  MOVLT           R0, R3
1AE018:  MOV             R4, R0
1AE01A:  LSL.W           R1, R4, R1
1AE01E:  MOVW            R0, #0xFD71
1AE022:  SUBS            R2, R0, R1
1AE024:  MOV             R0, R10
1AE026:  MOV             R1, R8
1AE028:  LDR             R4, [R6,#0x68]
1AE02A:  BLX             j_silk_bwexpander_32
1AE02E:  LDR             R5, [R6,#0x64]
1AE030:  CMP.W           R8, #2
1AE034:  BLT             loc_1AE058
1AE036:  LDR             R0, [R6,#0x6C]
1AE038:  LDR.W           R1, [R10,R0,LSL#2]
1AE03C:  MOV             R0, R8
1AE03E:  UXTH            R3, R1
1AE040:  LDR.W           R2, [R4,R0,LSL#2]
1AE044:  MULS            R3, R5
1AE046:  SMLABT.W        R1, R5, R1, R2
1AE04A:  ADD.W           R1, R1, R3,ASR#16
1AE04E:  STR.W           R1, [R4,R0,LSL#2]
1AE052:  SUBS            R0, #1
1AE054:  CMP             R0, #1
1AE056:  BGT             loc_1AE03E
1AE058:  LDR.W           R10, [R11,#8]
1AE05C:  LDR             R1, [R6,#0x74]
1AE05E:  UXTH.W          R0, R10
1AE062:  MULS            R0, R1
1AE064:  ASRS            R0, R0, #0x10
1AE066:  SMLATB.W        R0, R10, R1, R0
1AE06A:  ADD.W           R1, R0, #0x1000000
1AE06E:  CMP.W           R0, #0xFF000000
1AE072:  MOV             R2, R1
1AE074:  IT LE
1AE076:  RSBLE.W         R2, R0, #0xFF000000
1AE07A:  CLZ.W           R5, R2
1AE07E:  SUBS            R0, R5, #1
1AE080:  LSL.W           R4, R1, R0
1AE084:  MOV             R0, #0x1FFFFFFF
1AE088:  ASRS            R1, R4, #0x10
1AE08A:  BLX             sub_220A40
1AE08E:  LDR             R2, [R6,#0x58]
1AE090:  SXTH            R1, R0
1AE092:  LDR             R3, [R6,#0x54]
1AE094:  MULS            R2, R1
1AE096:  SMULBB.W        R3, R1, R3
1AE09A:  ADD.W           R2, R3, R2,ASR#16
1AE09E:  SMMUL.W         R3, R4, R2
1AE0A2:  LDR             R4, [R6,#0x5C]
1AE0A4:  SUB.W           R3, R4, R3,LSL#3
1AE0A8:  UXTH            R4, R3
1AE0AA:  SMLABT.W        R0, R0, R3, R2
1AE0AE:  MULS            R1, R4
1AE0B0:  LDR             R2, [R6,#0x60]
1AE0B2:  ADD.W           R1, R0, R1,ASR#16
1AE0B6:  RSB.W           R0, R5, #1
1AE0BA:  ADD             R2, R0
1AE0BC:  CMP.W           R2, #0xFFFFFFFF
1AE0C0:  BLE             loc_1AE0D0
1AE0C2:  CMP             R2, #0x20 ; ' '
1AE0C4:  MOV.W           LR, #0
1AE0C8:  IT LT
1AE0CA:  ASRLT.W         LR, R1, R2
1AE0CE:  B               loc_1AE108
1AE0D0:  RSB.W           R12, R2, #0
1AE0D4:  MOV             R0, #0x7FFFFFFF
1AE0D8:  LSR.W           R2, R0, R12
1AE0DC:  MOV.W           R0, #0x80000000
1AE0E0:  ASR.W           R3, R0, R12
1AE0E4:  CMP             R3, R2
1AE0E6:  BLE             loc_1AE0F6
1AE0E8:  CMP             R1, R3
1AE0EA:  MOV             R0, R3
1AE0EC:  BGT             loc_1AE104
1AE0EE:  CMP             R1, R2
1AE0F0:  IT LT
1AE0F2:  MOVLT           R1, R2
1AE0F4:  B               loc_1AE102
1AE0F6:  CMP             R1, R2
1AE0F8:  MOV             R0, R2
1AE0FA:  BGT             loc_1AE104
1AE0FC:  CMP             R1, R3
1AE0FE:  IT LT
1AE100:  MOVLT           R1, R3
1AE102:  MOV             R0, R1
1AE104:  LSL.W           LR, R0, R12
1AE108:  UXTH.W          R12, LR
1AE10C:  SXTH.W          R0, R10
1AE110:  MUL.W           R0, R0, R12
1AE114:  MOVS            R1, #1
1AE116:  ADD.W           R2, R1, R10,ASR#15
1AE11A:  ASRS            R2, R2, #1
1AE11C:  ASRS            R0, R0, #0x10
1AE11E:  SMLABT.W        R0, R10, LR, R0
1AE122:  MOV.W           R10, #1
1AE126:  MLA.W           R0, R2, LR, R0
1AE12A:  STR.W           R0, [R11,#8]
1AE12E:  LDR             R0, [R6,#0x50]
1AE130:  CBNZ            R0, loc_1AE15E
1AE132:  LDR             R3, [R6,#0x4C]
1AE134:  MOV.W           R2, LR,ASR#16
1AE138:  LDR             R4, [R6,#0x6C]
1AE13A:  LDR             R0, [R3]
1AE13C:  SUBS            R4, #1
1AE13E:  SXTH            R5, R0
1AE140:  ADD.W           R0, R10, R0,ASR#15
1AE144:  MUL.W           R1, R5, R12
1AE148:  MOV.W           R0, R0,ASR#1
1AE14C:  SMULBB.W        R5, R5, R2
1AE150:  ADD.W           R1, R5, R1,ASR#16
1AE154:  MLA.W           R0, R0, LR, R1
1AE158:  STR.W           R0, [R3],#4
1AE15C:  BNE             loc_1AE13A
1AE15E:  LDR             R0, [R6,#0x78]
1AE160:  ADD.W           R5, R6, #0x88
1AE164:  LDR.W           R12, [R6,#0x74]
1AE168:  ADDS            R1, R0, #1
1AE16A:  CMP             R0, #9
1AE16C:  BLT.W           loc_1ADDF4
1AE170:  LDR             R0, [R6,#0x48]
1AE172:  MOVW            R4, #0xC000
1AE176:  LDR.W           R9, [R6,#0x44]
1AE17A:  MOVT            R4, #0xFFFF
1AE17E:  LDR.W           R11, [R6,#0x40]
1AE182:  MOV             R12, R4
1AE184:  LDR.W           R8, [R0]
1AE188:  MOV             R4, R5
1AE18A:  MOV.W           LR, #1
1AE18E:  MOVW            R0, #0x7FFF
1AE192:  CMP.W           R8, #1
1AE196:  BLT             loc_1AE1BE
1AE198:  MOVS            R1, #0
1AE19A:  LDR.W           R2, [R4,R1,LSL#2]
1AE19E:  SUB.W           R5, R12, #0x4000
1AE1A2:  ADD.W           R2, LR, R2,ASR#10
1AE1A6:  ASRS            R3, R2, #1
1AE1A8:  CMP             R3, R5
1AE1AA:  IT GT
1AE1AC:  ASRGT           R5, R2, #1
1AE1AE:  CMP             R5, R0
1AE1B0:  IT GE
1AE1B2:  MOVGE           R5, R0
1AE1B4:  STRH.W          R5, [R9,R1,LSL#1]
1AE1B8:  ADDS            R1, #1
1AE1BA:  CMP             R1, R8
1AE1BC:  BLT             loc_1AE19A
1AE1BE:  LDR.W           R10, [R6,#0x30]
1AE1C2:  ADD.W           R11, R11, #1
1AE1C6:  LDR.W           R0, [R10]
1AE1CA:  CMP             R11, R0
1AE1CC:  BLT.W           loc_1AD93C
1AE1D0:  LDR             R3, [R6,#4]
1AE1D2:  MOVW            R1, #0x28F6
1AE1D6:  MOV.W           R2, #0x800
1AE1DA:  UXTH            R0, R3
1AE1DC:  MULS            R0, R1
1AE1DE:  MOV             R1, #0xFFFFD70A
1AE1E6:  SMLABT.W        R1, R1, R3, R2
1AE1EA:  SUB.W           R0, R1, R0,LSR#16
1AE1EE:  BLX             j_silk_log2lin
1AE1F2:  MOV             R4, R0
1AE1F4:  MOVW            R0, #0x828
1AE1F8:  BLX             j_silk_log2lin
1AE1FC:  LDR.W           R5, [R10]
1AE200:  LDR.W           R8, [R6,#0x3C]
1AE204:  CMP             R5, #1
1AE206:  BLT             loc_1AE242
1AE208:  MOVS            R1, #1
1AE20A:  SXTH            R2, R4
1AE20C:  ADD.W           R1, R1, R4,ASR#15
1AE210:  MOVS            R3, #0
1AE212:  MOV             LR, #0x7FFFFFFF
1AE216:  MOV.W           R12, R1,ASR#1
1AE21A:  LDR.W           R5, [R8,R3,LSL#2]
1AE21E:  UXTH            R4, R5
1AE220:  MLA.W           R1, R5, R12, R0
1AE224:  MULS            R4, R2
1AE226:  SMLATB.W        R1, R5, R2, R1
1AE22A:  ADD.W           R1, R1, R4,ASR#16
1AE22E:  CMP             R1, LR
1AE230:  IT CS
1AE232:  MOVCS           R1, LR
1AE234:  STR.W           R1, [R8,R3,LSL#2]
1AE238:  ADDS            R3, #1
1AE23A:  LDR.W           R5, [R10]
1AE23E:  CMP             R3, R5
1AE240:  BLT             loc_1AE21A
1AE242:  LDR             R0, [R6,#8]
1AE244:  MOV.W           R1, #0x80000000
1AE248:  LDR             R2, [R6,#0x10]
1AE24A:  MOVW            R8, #0x11B4
1AE24E:  LDR             R0, [R0]
1AE250:  LDR.W           R4, [R2,R8]
1AE254:  EOR.W           R0, R1, R0,LSL#16
1AE258:  MOV.W           R1, #0x40000
1AE25C:  ASRS            R0, R0, #0x14
1AE25E:  ADD.W           R0, R1, R0,LSL#6
1AE262:  MUL.W           R9, R0, R4
1AE266:  MOV.W           R0, #0x11E0
1AE26A:  LDR             R1, [R2,R0]
1AE26C:  LDR             R0, [R6,#0xC]
1AE26E:  LDRB.W          R11, [R0]
1AE272:  MOV.W           R10, R9,ASR#8
1AE276:  CMP.W           R11, #2
1AE27A:  BNE             loc_1AE314
1AE27C:  MOVW            R0, #0xCCD
1AE280:  BLX             sub_220A40
1AE284:  MOV             R2, R0
1AE286:  CMP             R5, #1
1AE288:  BLT             loc_1AE2EE
1AE28A:  LDR             R0, [R6,#0x10]
1AE28C:  MOVS            R5, #0
1AE28E:  STR.W           R11, [R6,#0x74]
1AE292:  ADD             R0, R8
1AE294:  MOV.W           R8, R9,ASR#24
1AE298:  LDR.W           R9, [R6,#0x3C]
1AE29C:  LDR.W           R11, [R6,#0x30]
1AE2A0:  STR             R0, [R6,#0x70]
1AE2A2:  UXTH.W          R0, R10
1AE2A6:  STR             R0, [R6,#0x78]
1AE2A8:  ADD.W           R4, R9, R5,LSL#2
1AE2AC:  MOV.W           R0, #0xC000
1AE2B0:  MOV             R10, R2
1AE2B2:  LDR             R1, [R4,#0x7C]
1AE2B4:  BLX             sub_220A40
1AE2B8:  MOV             R2, R10
1AE2BA:  ADD             R0, R2
1AE2BC:  LDR             R3, [R6,#0x78]
1AE2BE:  ADDS            R5, #1
1AE2C0:  SXTH            R1, R0
1AE2C2:  MUL.W           R12, R1, R3
1AE2C6:  RSB.W           R3, R0, #0x4000
1AE2CA:  ADD.W           R0, R0, #0xC000
1AE2CE:  MLS.W           R1, R1, R8, R3
1AE2D2:  SUB.W           R1, R1, R12,LSR#16
1AE2D6:  PKHBT.W         R0, R0, R1,LSL#16
1AE2DA:  STR.W           R0, [R4,#0x14C]
1AE2DE:  LDR.W           R0, [R11]
1AE2E2:  CMP             R5, R0
1AE2E4:  BLT             loc_1AE2A8
1AE2E6:  LDR             R0, [R6,#0x70]
1AE2E8:  LDR.W           R11, [R6,#0x74]
1AE2EC:  LDR             R4, [R0]
1AE2EE:  MOVW            R1, #0x999A
1AE2F2:  SXTH            R0, R4
1AE2F4:  MOVT            R1, #0x59 ; 'Y'
1AE2F8:  MOVW            R12, #0xC000
1AE2FC:  MULS            R0, R1
1AE2FE:  MOVT            R12, #0xFFFF
1AE302:  LDR.W           R9, [R6,#0x3C]
1AE306:  ASRS            R0, R0, #0x10
1AE308:  ADD.W           R0, R0, R0,LSL#1
1AE30C:  LSLS            R0, R0, #0xE
1AE30E:  SUB.W           R12, R12, R0,ASR#16
1AE312:  B               loc_1AE37C
1AE314:  MOVW            R0, #0x5333
1AE318:  BLX             sub_220A40
1AE31C:  SXTH            R1, R0
1AE31E:  MOVW            R2, #0x999A
1AE322:  MULS            R1, R2
1AE324:  UXTH.W          R3, R10
1AE328:  RSB.W           R2, R0, #0x4000
1AE32C:  MOV.W           R5, R9,ASR#24
1AE330:  LDR.W           R9, [R6,#0x3C]
1AE334:  ADD.W           R0, R0, #0xC000
1AE338:  ASRS            R1, R1, #0x10
1AE33A:  MULS            R3, R1
1AE33C:  MLS.W           R1, R1, R5, R2
1AE340:  SUB.W           R1, R1, R3,LSR#16
1AE344:  PKHBT.W         R0, R0, R1,LSL#16
1AE348:  STR.W           R0, [R9,#0x14C]
1AE34C:  LDR             R3, [R6,#0x30]
1AE34E:  LDR             R1, [R3]
1AE350:  CMP             R1, #2
1AE352:  BLT             loc_1AE3EE
1AE354:  STR.W           R0, [R9,#0x150]
1AE358:  MOVW            R12, #0xC000
1AE35C:  LDR             R0, [R3]
1AE35E:  MOVT            R12, #0xFFFF
1AE362:  CMP             R0, #3
1AE364:  BLT             loc_1AE37C
1AE366:  MOVS            R0, #0x55 ; 'U'
1AE368:  LDR.W           R1, [R9,#0x14C]
1AE36C:  STR.W           R1, [R9,R0,LSL#2]
1AE370:  SUB.W           R1, R0, #0x52 ; 'R'
1AE374:  ADDS            R0, #1
1AE376:  LDR             R2, [R3]
1AE378:  CMP             R1, R2
1AE37A:  BLT             loc_1AE368
1AE37C:  LDR             R2, [R6,#0x10]
1AE37E:  CMP.W           R11, #2
1AE382:  BNE             loc_1AE3EA
1AE384:  LDR.W           R0, [R9,#0x184]
1AE388:  MOV.W           R1, #0x40000
1AE38C:  LDRSH.W         R3, [R9,#0x180]
1AE390:  SUB.W           R0, R1, R0,LSL#4
1AE394:  UXTH            R1, R0
1AE396:  SMULTB.W        R0, R0, R3
1AE39A:  MULS            R1, R3
1AE39C:  MOVW            R3, #0x3333
1AE3A0:  RSB.W           R0, R0, #0x10000
1AE3A4:  SUB.W           R0, R0, R1,ASR#16
1AE3A8:  UXTH            R1, R0
1AE3AA:  MULS            R1, R3
1AE3AC:  LSRS            R1, R1, #0x10
1AE3AE:  SMLATB.W        R0, R0, R3, R1
1AE3B2:  MOVW            R1, #0x21B0
1AE3B6:  LDR             R1, [R2,R1]
1AE3B8:  MOVW            R3, #0x999A
1AE3BC:  LSLS            R1, R1, #0xF
1AE3BE:  CMP             R1, #1
1AE3C0:  ADD.W           R8, R3, R0,LSL#1
1AE3C4:  BLT             loc_1AE3FC
1AE3C6:  CLZ.W           R11, R1
1AE3CA:  STR.W           R12, [R6,#0x78]
1AE3CE:  RSBS.W          R5, R11, #0x18
1AE3D2:  MOV.W           R9, R8,ASR#16
1AE3D6:  RSB.W           R12, R5, #0
1AE3DA:  MOV             R0, R1
1AE3DC:  BEQ             loc_1AE410
1AE3DE:  CMP.W           R5, #0xFFFFFFFF
1AE3E2:  BLE             loc_1AE402
1AE3E4:  ROR.W           R0, R1, R5
1AE3E8:  B               loc_1AE410
1AE3EA:  MOVS            R1, #0
1AE3EC:  B               loc_1AE4B0
1AE3EE:  MOVW            R12, #0xC000
1AE3F2:  MOVS            R1, #0
1AE3F4:  LDR             R2, [R6,#0x10]
1AE3F6:  MOVT            R12, #0xFFFF
1AE3FA:  B               loc_1AE4B0
1AE3FC:  MOVS            R3, #0
1AE3FE:  MOVS            R0, #0
1AE400:  B               loc_1AE4A0
1AE402:  ADD.W           R4, R5, #0x20 ; ' '
1AE406:  LSL.W           R0, R1, R12
1AE40A:  LSR.W           R4, R1, R4
1AE40E:  ORRS            R0, R4
1AE410:  AND.W           R0, R0, #0x7F
1AE414:  MOV.W           LR, #0xD50000
1AE418:  TST.W           R11, #1
1AE41C:  MOV.W           R10, R11,LSR#1
1AE420:  MUL.W           R3, R0, LR
1AE424:  MOV.W           R0, #0x8000
1AE428:  IT EQ
1AE42A:  MOVWEQ          R0, #0xB486
1AE42E:  MOV.W           R4, #0x8000
1AE432:  LSR.W           R0, R0, R10
1AE436:  CMP             R5, #0
1AE438:  MOV.W           R2, R0,LSR#16
1AE43C:  MOV.W           R3, R3,LSR#16
1AE440:  MLA.W           R2, R3, R2, R0
1AE444:  UXTH            R0, R0
1AE446:  MUL.W           R0, R3, R0
1AE44A:  ADD.W           R0, R0, R2,LSL#16
1AE44E:  SMULTB.W        R3, R0, R9
1AE452:  LDR.W           R9, [R6,#0x3C]
1AE456:  BEQ             loc_1AE474
1AE458:  CMP.W           R5, #0xFFFFFFFF
1AE45C:  BLE             loc_1AE468
1AE45E:  RORS            R1, R5
1AE460:  B               loc_1AE474
1AE462:  ALIGN 4
1AE464:  DCD __stack_chk_guard_ptr - 0x1AD5EA
1AE468:  ADD.W           R2, R5, #0x20 ; ' '
1AE46C:  LSL.W           R0, R1, R12
1AE470:  LSRS            R1, R2
1AE472:  ORRS            R1, R0
1AE474:  AND.W           R0, R1, #0x7F
1AE478:  TST.W           R11, #1
1AE47C:  IT EQ
1AE47E:  MOVWEQ          R4, #0xB486
1AE482:  LDR.W           R12, [R6,#0x78]
1AE486:  MUL.W           R0, R0, LR
1AE48A:  LSR.W           R1, R4, R10
1AE48E:  LSRS            R2, R1, #0x10
1AE490:  LSRS            R0, R0, #0x10
1AE492:  MLA.W           R2, R0, R2, R1
1AE496:  UXTH            R1, R1
1AE498:  MULS            R0, R1
1AE49A:  ADD.W           R0, R0, R2,LSL#16
1AE49E:  ASRS            R0, R0, #0x10
1AE4A0:  MOVW            R1, #0xFFFE
1AE4A4:  LDR             R2, [R6,#0x10]
1AE4A6:  AND.W           R1, R1, R8
1AE4AA:  MULS            R0, R1
1AE4AC:  ADD.W           R1, R3, R0,ASR#16
1AE4B0:  MOVW            R10, #0x1C0C
1AE4B4:  MOVW            R11, #0x6666
1AE4B8:  LDR.W           R3, [R2,R10]
1AE4BC:  MOVW            LR, #0x1C08
1AE4C0:  LDR.W           R0, [R2,LR]
1AE4C4:  SUB.W           R5, R12, R3
1AE4C8:  MOV.W           R8, #1
1AE4CC:  UXTH            R4, R5
1AE4CE:  SMLABT.W        R5, R11, R5, R3
1AE4D2:  MUL.W           R4, R4, R11
1AE4D6:  ADD.W           R5, R5, R4,LSR#16
1AE4DA:  SUBS            R4, R1, R0
1AE4DC:  SMLABT.W        R0, R11, R4, R0
1AE4E0:  UXTH            R4, R4
1AE4E2:  MUL.W           R4, R4, R11
1AE4E6:  ADD.W           R0, R0, R4,LSR#16
1AE4EA:  STR.W           R0, [R2,LR]
1AE4EE:  ADD.W           R0, R8, R0,ASR#1
1AE4F2:  STR.W           R5, [R2,R10]
1AE4F6:  MOV             R5, R1
1AE4F8:  ASRS            R0, R0, #1
1AE4FA:  MOV             R1, R2
1AE4FC:  STR.W           R0, [R9,#0x16C]
1AE500:  LDR.W           R0, [R1,R10]
1AE504:  ADD.W           R0, R8, R0,ASR#1
1AE508:  ASRS            R0, R0, #1
1AE50A:  STR.W           R0, [R9,#0x15C]
1AE50E:  LDR.W           R0, [R1,R10]
1AE512:  SUB.W           R4, R12, R0
1AE516:  SMLABT.W        R0, R11, R4, R0
1AE51A:  UXTH            R4, R4
1AE51C:  MUL.W           R4, R4, R11
1AE520:  ADD.W           R0, R0, R4,LSR#16
1AE524:  STR.W           R0, [R1,R10]
1AE528:  LDR.W           R0, [R1,LR]
1AE52C:  SUBS            R4, R5, R0
1AE52E:  SMLABT.W        R0, R11, R4, R0
1AE532:  UXTH            R4, R4
1AE534:  MUL.W           R4, R4, R11
1AE538:  ADD.W           R0, R0, R4,LSR#16
1AE53C:  STR.W           R0, [R1,LR]
1AE540:  ADD.W           R0, R8, R0,ASR#1
1AE544:  ASRS            R0, R0, #1
1AE546:  STR.W           R0, [R9,#0x170]
1AE54A:  LDR.W           R0, [R1,R10]
1AE54E:  ADD.W           R0, R8, R0,ASR#1
1AE552:  ASRS            R0, R0, #1
1AE554:  STR.W           R0, [R9,#0x160]
1AE558:  LDR.W           R0, [R1,R10]
1AE55C:  SUB.W           R4, R12, R0
1AE560:  SMLABT.W        R0, R11, R4, R0
1AE564:  UXTH            R4, R4
1AE566:  MUL.W           R4, R4, R11
1AE56A:  ADD.W           R0, R0, R4,LSR#16
1AE56E:  STR.W           R0, [R1,R10]
1AE572:  LDR.W           R0, [R1,LR]
1AE576:  SUBS            R4, R5, R0
1AE578:  SMLABT.W        R0, R11, R4, R0
1AE57C:  UXTH            R4, R4
1AE57E:  MUL.W           R4, R4, R11
1AE582:  ADD.W           R0, R0, R4,LSR#16
1AE586:  STR.W           R0, [R1,LR]
1AE58A:  ADD.W           R0, R8, R0,ASR#1
1AE58E:  ASRS            R0, R0, #1
1AE590:  STR.W           R0, [R9,#0x174]
1AE594:  LDR.W           R0, [R1,R10]
1AE598:  ADD.W           R0, R8, R0,ASR#1
1AE59C:  ASRS            R0, R0, #1
1AE59E:  STR.W           R0, [R9,#0x164]
1AE5A2:  LDR.W           R3, [R1,LR]
1AE5A6:  LDR.W           R0, [R1,R10]
1AE5AA:  SUBS            R5, R5, R3
1AE5AC:  SUB.W           R4, R12, R0
1AE5B0:  SMLABT.W        R3, R11, R5, R3
1AE5B4:  UXTH            R5, R5
1AE5B6:  MUL.W           R5, R5, R11
1AE5BA:  SMLABT.W        R0, R11, R4, R0
1AE5BE:  ADD.W           R3, R3, R5,LSR#16
1AE5C2:  UXTH            R5, R4
1AE5C4:  MUL.W           R2, R5, R11
1AE5C8:  STR.W           R3, [R1,LR]
1AE5CC:  ADD.W           R0, R0, R2,LSR#16
1AE5D0:  STR.W           R0, [R1,R10]
1AE5D4:  ADD.W           R0, R8, R3,ASR#1
1AE5D8:  ASRS            R0, R0, #1
1AE5DA:  STR.W           R0, [R9,#0x178]
1AE5DE:  LDR.W           R0, [R1,R10]
1AE5E2:  ADD.W           R0, R8, R0,ASR#1
1AE5E6:  ASRS            R0, R0, #1
1AE5E8:  STR.W           R0, [R9,#0x168]
1AE5EC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AE5F4)
1AE5EE:  LDR             R1, [R6,#0x7C]
1AE5F0:  ADD             R0, PC; __stack_chk_guard_ptr
1AE5F2:  LDR             R0, [R0]; __stack_chk_guard
1AE5F4:  LDR             R0, [R0]
1AE5F6:  SUBS            R0, R0, R1
1AE5F8:  ITTTT EQ
1AE5FA:  SUBEQ.W         R4, R7, #-var_1C
1AE5FE:  MOVEQ           SP, R4
1AE600:  POPEQ.W         {R8-R11}
1AE604:  POPEQ           {R4-R7,PC}
1AE606:  BLX             __stack_chk_fail
