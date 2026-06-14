; =========================================================
; Game Engine Function: sub_95710
; Address            : 0x95710 - 0x959A8
; =========================================================

95710:  PUSH            {R4-R7,LR}
95712:  ADD             R7, SP, #0xC
95714:  PUSH.W          {R8-R11}
95718:  SUB             SP, SP, #4
9571A:  VPUSH           {D8}
9571E:  SUB             SP, SP, #0x118
95720:  STR             R3, [SP,#0x140+var_130]
95722:  MOV             R10, R1
95724:  LDR             R1, =(dword_1ACF68 - 0x9572E)
95726:  LDR.W           R12, [R7,#arg_0]
9572A:  ADD             R1, PC; dword_1ACF68
9572C:  STR             R1, [SP,#0x140+var_134]
9572E:  LDR             R1, [R1]
95730:  LDR             R3, =(__stack_chk_guard_ptr - 0x95736)
95732:  ADD             R3, PC; __stack_chk_guard_ptr
95734:  LDR             R3, [R3]; __stack_chk_guard
95736:  LDR             R3, [R3]
95738:  STR             R3, [SP,#0x140+var_2C]
9573A:  MOVW            R3, #0x19AC
9573E:  LDR             R4, [R1,R3]
95740:  MOVW            R3, #0x1544
95744:  ADD.W           R8, R1, R3
95748:  MOVW            R3, #0x1A30
9574C:  ADD.W           R11, R1, R3
95750:  MOVW            R3, #0x103
95754:  LDR             R5, [R4,#8]
95756:  MOVT            R3, #0x100
9575A:  LDR.W           R6, [R4,#0x1C0]
9575E:  AND.W           R1, R5, #4
95762:  VLDR            S0, [R4,#0x22C]
95766:  ORR.W           R1, R1, R12
9576A:  CBZ             R6, loc_957A6
9576C:  LDR             R5, [R6,#0xC]
9576E:  VLDR            S2, [R6,#0x14]
95772:  VLDR            S4, [R6,#0x18]
95776:  CMN.W           R5, #2
9577A:  LDR             R6, [R6,#0x44]
9577C:  IT GT
9577E:  ADDGT           R5, #1
95780:  VSUB.F32        S4, S4, S2
95784:  RSB.W           R5, R5, R5,LSL#3
95788:  ADD.W           R6, R6, R5,LSL#2
9578C:  VLDR            S6, [R6]
95790:  VMLA.F32        S2, S4, S6
95794:  VLDR            S4, [R4,#0xC]
95798:  VLDR            S6, [R4,#0x34]
9579C:  VADD.F32        S2, S4, S2
957A0:  VSUB.F32        S2, S2, S6
957A4:  B               loc_957AA
957A6:  VLDR            S2, [R4,#0x228]
957AA:  VLDR            S6, [R2,#4]
957AE:  ORR.W           R6, R1, R3
957B2:  VLDR            S4, [R2]
957B6:  MOVS            R5, #1
957B8:  VCVT.S32.F32    S6, S6
957BC:  VLDR            S10, [R4,#0xCC]
957C0:  VCVT.S32.F32    S4, S4
957C4:  VLDR            S8, [R4,#0xC8]
957C8:  VSUB.F32        S0, S0, S10
957CC:  VSUB.F32        S2, S2, S8
957D0:  VMOV.F32        S8, #4.0
957D4:  VMOV            R1, S6
957D8:  VMOV            R2, S4
957DC:  VCVT.F32.S32    S6, S6
957E0:  VCVT.F32.S32    S4, S4
957E4:  VMOV.F32        S10, S8
957E8:  VADD.F32        S0, S0, S6
957EC:  VADD.F32        S2, S2, S4
957F0:  VCMP.F32        S0, S8
957F4:  VMRS            APSR_nzcv, FPSCR
957F8:  VCMP.F32        S2, S8
957FC:  IT GE
957FE:  VMOVGE.F32      S10, S0
95802:  VMRS            APSR_nzcv, FPSCR
95806:  IT GE
95808:  VMOVGE.F32      S8, S2
9580C:  CMP             R1, #0
9580E:  IT GT
95810:  VMOVGT.F32      S10, S6
95814:  CMP             R2, #0
95816:  IT GT
95818:  VMOVGT.F32      S8, S4
9581C:  LDR.W           R3, [R8,#0x4CC]
95820:  CLZ.W           R2, R2
95824:  STR.W           R5, [R8,#0x4D4]
95828:  ORR.W           R3, R3, #2
9582C:  STR.W           R3, [R8,#0x4CC]
95830:  VSTR            S8, [R11]
95834:  MOV.W           R9, R2,LSR#5
95838:  VSTR            S10, [R11,#4]
9583C:  CMP             R1, #0
9583E:  LDR             R3, [R4]
95840:  IT EQ
95842:  ADDEQ.W         R9, R9, #2
95846:  CBZ             R0, loc_95852
95848:  LDR             R2, =(aSS08x - 0x95852); "%s/%s_%08X" ...
9584A:  STRD.W          R0, R10, [SP,#0x140+var_140]
9584E:  ADD             R2, PC; "%s/%s_%08X"
95850:  B               loc_9585A
95852:  LDR             R2, =(aS08x - 0x9585C); "%s/%08X" ...
95854:  STR.W           R10, [SP,#0x140+var_140]
95858:  ADD             R2, PC; "%s/%08X"
9585A:  ADD             R0, SP, #0x140+s; s
9585C:  MOV.W           R1, #0x100
95860:  BL              sub_886C0
95864:  LDR             R0, [SP,#0x140+var_130]
95866:  MOVS            R1, #0
95868:  VLDR            S16, [R8]
9586C:  MOV             R2, R6
9586E:  CMP             R0, #0
95870:  ITT EQ
95872:  MOVEQ           R0, #0
95874:  STREQ.W         R0, [R8]
95878:  ADD             R0, SP, #0x140+s
9587A:  BL              sub_8FD20
9587E:  LDR.W           R6, [R8,#0x468]
95882:  MOV             R5, R0
95884:  VSTR            S16, [R8]
95888:  LDRH.W          R0, [R6,#0x84]
9588C:  STR.W           R9, [R6,#0x9C]
95890:  STR.W           R10, [R6,#0x4C]
95894:  CMP             R0, #1
95896:  ITT EQ
95898:  LDRDEQ.W        R0, R1, [R6,#0xC]
9589C:  STRDEQ.W        R0, R1, [R4,#0xC8]
958A0:  LDR             R0, [R7,#arg_0]
958A2:  LSLS            R0, R0, #8
958A4:  BMI             loc_95976
958A6:  LDR.W           R0, [R11,#0x8C]
958AA:  CMP             R0, R10
958AC:  BNE             loc_95976
958AE:  LDR.W           R0, [R6,#0x138]
958B2:  CMP             R0, #0
958B4:  ITT EQ
958B6:  LDRBEQ.W        R0, [R6,#0x141]
958BA:  CMPEQ           R0, #0
958BC:  BEQ             loc_95976
958BE:  MOV             R0, R6
958C0:  BL              sub_8C628
958C4:  LDR             R0, [SP,#0x140+var_134]
958C6:  MOVW            R2, #0x19D0
958CA:  LDR             R1, [R6,#8]
958CC:  LDR             R0, [R0]
958CE:  ADD             R0, R2
958D0:  LSLS            R2, R1, #0xD
958D2:  BMI             loc_9591A
958D4:  AND.W           R1, R1, #0x5000000
958D8:  CMP.W           R1, #0x1000000
958DC:  BNE             loc_958E4
958DE:  LDR.W           R1, [R6,#0x30C]
958E2:  CBNZ            R1, loc_9591E
958E4:  ADR             R1, dword_959B0
958E6:  LDR.W           R2, [R0,#0x13C]
958EA:  VLD1.64         {D16-D17}, [R1@128]
958EE:  MOVS            R3, #0
958F0:  MOVW            R4, #0x101
958F4:  LDR.W           R1, [R0,#0xE4]
958F8:  STR.W           R3, [R0,#0xE8]
958FC:  ADD.W           R1, R1, R2,LSL#2
95900:  STRB.W          R3, [R0,#0x14A]
95904:  STRH.W          R4, [R0,#0x148]
95908:  STR.W           R3, [R1,#0x30C]
9590C:  ADD.W           R1, R0, #0x150
95910:  STR.W           R3, [R0,#0x14C]
95914:  VST1.64         {D16-D17}, [R1]
95918:  B               loc_95922
9591A:  LDR.W           R1, [R6,#0x30C]
9591E:  STR.W           R1, [R0,#0xE8]
95922:  LDR             R2, [R0]
95924:  ADD.W           R1, R10, #1
95928:  SUBS            R3, R2, R1
9592A:  IT NE
9592C:  MOVNE           R3, #1
9592E:  CMP             R2, R1
95930:  STRB            R3, [R0,#0xC]
95932:  BEQ             loc_95942
95934:  MOVS            R2, #0
95936:  CMP             R1, #0
95938:  STRH            R2, [R0,#0xE]
9593A:  STR             R2, [R0,#8]
9593C:  IT NE
9593E:  STRDNE.W        R1, R2, [R0,#0x38]
95942:  MOVS            R2, #0
95944:  STRD.W          R2, R2, [R0,#0x14]
95948:  STR             R1, [R0]
9594A:  STR             R6, [R0,#0x24]
9594C:  STRB            R2, [R0,#0xD]
9594E:  STRB            R2, [R0,#0x10]
95950:  CBZ             R1, loc_95970
95952:  LDR.W           R2, [R0,#0xEC]
95956:  STR             R1, [R0,#4]
95958:  CMP             R2, R1
9595A:  BEQ             loc_9596C
9595C:  LDR.W           R2, [R0,#0xF8]
95960:  CMP             R2, R1
95962:  BEQ             loc_9596C
95964:  LDR.W           R2, [R0,#0xFC]
95968:  CMP             R2, R1
9596A:  BNE             loc_9599A
9596C:  MOVS            R2, #2
9596E:  STR             R2, [R0,#0x28]
95970:  MOVS            R0, #2
95972:  STR.W           R0, [R8,#0x4B4]
95976:  LDR             R0, [SP,#0x140+var_2C]
95978:  LDR             R1, =(__stack_chk_guard_ptr - 0x9597E)
9597A:  ADD             R1, PC; __stack_chk_guard_ptr
9597C:  LDR             R1, [R1]; __stack_chk_guard
9597E:  LDR             R1, [R1]
95980:  CMP             R1, R0
95982:  ITTTT EQ
95984:  MOVEQ           R0, R5
95986:  ADDEQ           SP, SP, #0x118
95988:  VPOPEQ          {D8}
9598C:  ADDEQ           SP, SP, #4
9598E:  ITT EQ
95990:  POPEQ.W         {R8-R11}
95994:  POPEQ           {R4-R7,PC}
95996:  BLX             __stack_chk_fail
9599A:  LDR.W           R3, [R0,#0x100]
9599E:  MOVS            R2, #1
959A0:  CMP             R3, R1
959A2:  IT EQ
959A4:  MOVEQ           R2, #2
959A6:  B               loc_9596E
