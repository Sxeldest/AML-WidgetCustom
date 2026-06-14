; =========================================================
; Game Engine Function: sub_1746E4
; Address            : 0x1746E4 - 0x174BE2
; =========================================================

1746E4:  PUSH            {R4-R7,LR}
1746E6:  ADD             R7, SP, #0xC
1746E8:  PUSH.W          {R8-R11}
1746EC:  SUB             SP, SP, #4
1746EE:  VPUSH           {D8-D15}
1746F2:  SUB             SP, SP, #0x20; float
1746F4:  LDR             R5, [R7,#arg_10]
1746F6:  MOV             R10, R3
1746F8:  LDRD.W          R8, R6, [R7,#arg_8]
1746FC:  MOV             R4, R2
1746FE:  VLDR            S16, [R7,#arg_0]
174702:  MOV             R11, R1
174704:  MOV             R9, R0
174706:  CBNZ            R5, loc_174710
174708:  MOV             R0, R6; s
17470A:  BLX             strlen
17470E:  ADDS            R5, R6, R0
174710:  VCVT.S32.F32    S0, S16
174714:  VLDR            S2, [R9,#0x34]
174718:  VLDR            S26, [R8,#0xC]
17471C:  VCVT.F32.S32    S0, S0
174720:  VADD.F32        S18, S2, S0
174724:  VCMP.F32        S18, S26
174728:  VMRS            APSR_nzcv, FPSCR
17472C:  BGT.W           loc_174BD0
174730:  VMOV            S0, R4
174734:  VLDR            S2, [R9,#0x10]
174738:  VLDR            S16, [R7,#arg_14]
17473C:  VDIV.F32        S20, S0, S2
174740:  VMUL.F32        S22, S2, S20
174744:  VLDR            S24, [R9,#0x30]
174748:  VCMP.F32        S16, #0.0
17474C:  VMRS            APSR_nzcv, FPSCR
174750:  BGT             loc_174790
174752:  VADD.F32        S0, S18, S22
174756:  VLDR            S28, [R8,#4]
17475A:  VCMP.F32        S0, S28
17475E:  VMRS            APSR_nzcv, FPSCR
174762:  BPL             loc_174790
174764:  CMP             R5, R6
174766:  BLS             loc_174790
174768:  SUBS            R2, R5, R6; n
17476A:  MOV             R0, R6; s
17476C:  MOVS            R1, #0xA; c
17476E:  VMOV.F32        S18, S0
174772:  BLX             memchr
174776:  VADD.F32        S0, S22, S18
17477A:  CMP             R0, #0
17477C:  MOV             R6, R5
17477E:  IT NE
174780:  ADDNE           R6, R0, #1
174782:  VCMP.F32        S0, S28
174786:  VMRS            APSR_nzcv, FPSCR
17478A:  BPL             loc_174790
17478C:  CMP             R6, R5
17478E:  BCC             loc_174768
174790:  VCMP.F32        S16, #0.0
174794:  VMRS            APSR_nzcv, FPSCR
174798:  BGT             loc_1747E2
17479A:  SUBS            R0, R5, R6
17479C:  MOVW            R1, #0x2711
1747A0:  CMP             R0, R1
1747A2:  BLT             loc_1747E2
1747A4:  VCMP.F32        S18, S26
1747A8:  VMRS            APSR_nzcv, FPSCR
1747AC:  BPL.W           loc_174BDE
1747B0:  CMP             R6, R5
1747B2:  MOV             R4, R6
1747B4:  BCS             loc_1747E4
1747B6:  VMOV.F32        S28, S18
1747BA:  MOV             R4, R6
1747BC:  SUBS            R2, R5, R4; n
1747BE:  MOV             R0, R4; s
1747C0:  MOVS            R1, #0xA; c
1747C2:  BLX             memchr
1747C6:  VADD.F32        S28, S22, S28
1747CA:  CMP             R0, #0
1747CC:  MOV             R4, R5
1747CE:  IT NE
1747D0:  ADDNE           R4, R0, #1
1747D2:  VCMP.F32        S28, S26
1747D6:  VMRS            APSR_nzcv, FPSCR
1747DA:  BPL             loc_1747E4
1747DC:  CMP             R4, R5
1747DE:  BCC             loc_1747BC
1747E0:  B               loc_1747E4
1747E2:  MOV             R4, R5
1747E4:  CMP             R6, R4
1747E6:  BEQ.W           loc_174BD0
1747EA:  SUBS            R0, R4, R6
1747EC:  LDR.W           R5, [R11,#0xC]
1747F0:  LSLS            R2, R0, #2
1747F2:  ADD.W           R0, R0, R0,LSL#1
1747F6:  LSLS            R1, R0, #1
1747F8:  MOV             R0, R11
1747FA:  STR             R1, [SP,#0x80+var_78]
1747FC:  BL              sub_172DC0
174800:  LDR.W           R0, [R11,#0x34]
174804:  CMP             R6, R4
174806:  STR             R0, [SP,#0x80+var_70]
174808:  LDR.W           R0, [R11,#0x38]
17480C:  STR             R0, [SP,#0x80+var_68]
17480E:  LDR.W           R0, [R11,#0x3C]
174812:  STR             R0, [SP,#0x80+var_6C]
174814:  STR             R5, [SP,#0x80+var_74]
174816:  BCS.W           loc_174AE8
17481A:  VMOV            S0, R10
17481E:  VLDR            S26, =0.0
174822:  VMOV.F32        S28, #1.0
174826:  MOV.W           R10, #0
17482A:  VCVT.S32.F32    S0, S0
17482E:  VCVT.F32.S32    S0, S0
174832:  VADD.F32        S24, S24, S0
174836:  VMOV.F32        S30, S24
17483A:  VMOV.F32        S19, S30
17483E:  MOV             R5, R6
174840:  VMOV.F32        S17, S18
174844:  MOV             R0, R10
174846:  VCMP.F32        S16, #0.0
17484A:  VMRS            APSR_nzcv, FPSCR
17484E:  BLE             loc_1748B6
174850:  CBNZ            R0, loc_174872
174852:  VMOV            R1, S20; int
174856:  MOV             R0, R9; int
174858:  VSUB.F32        S0, S19, S24
17485C:  MOV             R2, R5; int
17485E:  MOV             R3, R4; int
174860:  VSUB.F32        S0, S16, S0
174864:  VSTR            S0, [SP,#0x80+var_80]
174868:  BL              sub_1789B4
17486C:  CMP             R0, R5
17486E:  IT EQ
174870:  ADDEQ           R0, #1
174872:  CMP             R5, R0
174874:  BCC             loc_1748AA
174876:  CMP             R5, R4
174878:  BCS             loc_17489A
17487A:  SUBS            R0, R4, R5
17487C:  MOV             R1, R5
17487E:  LDRB.W          R2, [R1],#1
174882:  CMP             R2, #0x20 ; ' '
174884:  IT NE
174886:  CMPNE           R2, #9
174888:  BNE             loc_174894
17488A:  SUBS            R0, #1
17488C:  MOV             R5, R1
17488E:  BNE             loc_17487E
174890:  MOV             R5, R4
174892:  B               loc_17489A
174894:  CMP             R2, #0xA
174896:  IT EQ
174898:  ADDEQ           R5, #1
17489A:  VADD.F32        S17, S22, S17
17489E:  MOVS            R0, #0
1748A0:  VMOV.F32        S19, S24
1748A4:  CMP             R5, R4
1748A6:  BCC             loc_174846
1748A8:  B               loc_174AE8
1748AA:  VMOV.F32        S30, S19
1748AE:  MOV             R6, R5
1748B0:  VMOV.F32        S18, S17
1748B4:  MOV             R10, R0
1748B6:  LDRSB.W         R0, [R6]
1748BA:  CMP             R0, #0
1748BC:  UXTB            R1, R0
1748BE:  STR             R1, [SP,#0x80+var_64]
1748C0:  BMI             loc_1748C6
1748C2:  ADDS            R6, #1
1748C4:  B               loc_1748DA
1748C6:  ADD             R0, SP, #0x80+var_64
1748C8:  MOV             R1, R6
1748CA:  MOV             R2, R4
1748CC:  BL              sub_165308
1748D0:  LDR             R1, [SP,#0x80+var_64]
1748D2:  CMP             R1, #0
1748D4:  BEQ.W           loc_174AE8
1748D8:  ADD             R6, R0
1748DA:  CMP             R1, #0x1F
1748DC:  BHI             loc_174900
1748DE:  CMP             R1, #0xD
1748E0:  BEQ             loc_1749CC
1748E2:  CMP             R1, #0xA
1748E4:  BNE             loc_174900
1748E6:  VADD.F32        S18, S22, S18
1748EA:  VLDR            S0, [R8,#0xC]
1748EE:  VCMP.F32        S18, S0
1748F2:  VMRS            APSR_nzcv, FPSCR
1748F6:  BGT.W           loc_174AE8
1748FA:  VMOV.F32        S30, S24
1748FE:  B               loc_1749CC
174900:  LDR.W           R0, [R9,#0x14]
174904:  UXTH            R2, R1
174906:  CMP             R0, R2
174908:  BLE             loc_174928
17490A:  LDR.W           R3, [R9,#0x1C]
17490E:  MOVW            R5, #0xFFFF
174912:  LDRD.W          R12, R0, [R9,#0x28]
174916:  LDRH.W          R2, [R3,R2,LSL#1]
17491A:  CMP             R2, R5
17491C:  ADD.W           R3, R2, R2,LSL#2
174920:  IT NE
174922:  ADDNE.W         R0, R12, R3,LSL#3
174926:  B               loc_17492C
174928:  LDR.W           R0, [R9,#0x2C]
17492C:  CMP             R0, #0
17492E:  BEQ             loc_1749C4
174930:  VLDR            S0, [R0,#4]
174934:  CMP             R1, #9
174936:  IT NE
174938:  CMPNE           R1, #0x20 ; ' '
17493A:  VMUL.F32        S0, S20, S0
17493E:  BEQ             loc_1749C8
174940:  VMOV.F32        S14, S30
174944:  VLDR            S2, [R0,#8]
174948:  VMLA.F32        S14, S2, S20
17494C:  VLDR            S2, [R8,#8]
174950:  VCMP.F32        S14, S2
174954:  VMRS            APSR_nzcv, FPSCR
174958:  BHI             loc_1749C8
17495A:  VMOV.F32        S3, S30
17495E:  VLDR            S4, [R0,#0x10]
174962:  VMLA.F32        S3, S4, S20
174966:  VLDR            S4, [R8]
17496A:  VCMP.F32        S3, S4
17496E:  VMRS            APSR_nzcv, FPSCR
174972:  BLT             loc_1749C8
174974:  VMOV.F32        S1, S18
174978:  VLDR            S5, [R0,#0x14]
17497C:  VLDR            S7, [R0,#0xC]
174980:  VLDR            S6, [R0,#0x18]
174984:  VLDR            S12, [R0,#0x1C]
174988:  VLDR            S10, [R0,#0x20]
17498C:  VLDR            S8, [R0,#0x24]
174990:  VMLA.F32        S1, S5, S20
174994:  LDR             R0, [R7,#arg_18]
174996:  VMOV.F32        S5, S18
17499A:  VMLA.F32        S5, S7, S20
17499E:  CBZ             R0, loc_1749D4
1749A0:  VCMP.F32        S14, S4
1749A4:  VMRS            APSR_nzcv, FPSCR
1749A8:  BPL             loc_1749E6
1749AA:  VSUB.F32        S14, S3, S14
1749AE:  VSUB.F32        S7, S3, S4
1749B2:  VDIV.F32        S14, S7, S14
1749B6:  VSUB.F32        S7, S10, S6
1749BA:  VSUB.F32        S14, S28, S14
1749BE:  VMLA.F32        S6, S14, S7
1749C2:  B               loc_1749EA
1749C4:  VMOV.F32        S0, S26
1749C8:  VADD.F32        S30, S30, S0
1749CC:  CMP             R6, R4
1749CE:  BCC.W           loc_17483A
1749D2:  B               loc_174AE8
1749D4:  VMOV.F32        S4, S14
1749D8:  VMOV.F32        S2, S3
1749DC:  VMOV.F32        S14, S5
1749E0:  VMOV.F32        S3, S1
1749E4:  B               loc_174A74
1749E6:  VMOV.F32        S4, S14
1749EA:  VLDR            S14, [R8,#4]
1749EE:  VCMP.F32        S5, S14
1749F2:  VMRS            APSR_nzcv, FPSCR
1749F6:  BPL             loc_174A12
1749F8:  VSUB.F32        S5, S1, S5
1749FC:  VSUB.F32        S7, S1, S14
174A00:  VDIV.F32        S5, S7, S5
174A04:  VSUB.F32        S7, S8, S12
174A08:  VSUB.F32        S5, S28, S5
174A0C:  VMLA.F32        S12, S5, S7
174A10:  B               loc_174A16
174A12:  VMOV.F32        S14, S5
174A16:  VCMP.F32        S3, S2
174A1A:  VMRS            APSR_nzcv, FPSCR
174A1E:  BLE             loc_174A3A
174A20:  VSUB.F32        S3, S3, S4
174A24:  VSUB.F32        S5, S2, S4
174A28:  VDIV.F32        S3, S5, S3
174A2C:  VSUB.F32        S5, S10, S6
174A30:  VMOV.F32        S10, S6
174A34:  VMLA.F32        S10, S3, S5
174A38:  B               loc_174A3E
174A3A:  VMOV.F32        S2, S3
174A3E:  VLDR            S3, [R8,#0xC]
174A42:  VCMP.F32        S1, S3
174A46:  VMRS            APSR_nzcv, FPSCR
174A4A:  BLE             loc_174A66
174A4C:  VSUB.F32        S1, S1, S14
174A50:  VSUB.F32        S5, S3, S14
174A54:  VDIV.F32        S1, S5, S1
174A58:  VSUB.F32        S5, S8, S12
174A5C:  VMOV.F32        S8, S12
174A60:  VMLA.F32        S8, S1, S5
174A64:  B               loc_174A6A
174A66:  VMOV.F32        S3, S1
174A6A:  VCMP.F32        S14, S3
174A6E:  VMRS            APSR_nzcv, FPSCR
174A72:  BGE             loc_1749C8
174A74:  LDR             R2, [SP,#0x80+var_70]
174A76:  LDR             R1, [SP,#0x80+var_6C]
174A78:  ADDS            R0, R2, #3
174A7A:  LDR             R3, [R7,#arg_4]
174A7C:  STRH            R0, [R1,#0xA]
174A7E:  ADDS            R0, R2, #2
174A80:  STRH            R0, [R1,#8]
174A82:  STRH            R0, [R1,#4]
174A84:  ADDS            R0, R2, #1
174A86:  STRH            R0, [R1,#2]
174A88:  LDR             R0, [SP,#0x80+var_68]
174A8A:  STRH            R2, [R1,#6]
174A8C:  STRH            R2, [R1]
174A8E:  ADDS            R1, #0xC
174A90:  ADDS            R2, #4
174A92:  STR             R3, [R0,#0x10]
174A94:  STR             R3, [R0,#0x24]
174A96:  VSTR            S4, [R0]
174A9A:  VSTR            S14, [R0,#4]
174A9E:  VSTR            S6, [R0,#8]
174AA2:  VSTR            S12, [R0,#0xC]
174AA6:  STR             R3, [R0,#0x38]
174AA8:  VSTR            S2, [R0,#0x14]
174AAC:  VSTR            S14, [R0,#0x18]
174AB0:  VSTR            S10, [R0,#0x1C]
174AB4:  VSTR            S12, [R0,#0x20]
174AB8:  STR             R3, [R0,#0x4C]
174ABA:  VSTR            S2, [R0,#0x28]
174ABE:  VSTR            S3, [R0,#0x2C]
174AC2:  VSTR            S10, [R0,#0x30]
174AC6:  VSTR            S8, [R0,#0x34]
174ACA:  VSTR            S4, [R0,#0x3C]
174ACE:  VSTR            S3, [R0,#0x40]
174AD2:  VSTR            S6, [R0,#0x44]
174AD6:  VSTR            S8, [R0,#0x48]
174ADA:  ADDS            R0, #0x50 ; 'P'
174ADC:  STR             R1, [SP,#0x80+var_6C]
174ADE:  STR             R2, [SP,#0x80+var_70]
174AE0:  STR             R0, [SP,#0x80+var_68]
174AE2:  B               loc_1749C8
174AE4:  DCFS 0.0
174AE8:  LDR.W           R9, [SP,#0x80+var_68]
174AEC:  MOVW            R2, #0xCCCD
174AF0:  LDRD.W          R0, R1, [R11,#0x1C]
174AF4:  MOVT            R2, #0xCCCC
174AF8:  SUB.W           R1, R9, R1
174AFC:  LDR             R4, [SP,#0x80+var_6C]
174AFE:  ASRS            R1, R1, #2
174B00:  MUL.W           R5, R1, R2
174B04:  CMP             R0, R5
174B06:  BGE             loc_174B50
174B08:  CMP             R0, #0
174B0A:  ITTE NE
174B0C:  ADDNE.W         R1, R0, R0,LSR#31
174B10:  ADDNE.W         R1, R0, R1,ASR#1
174B14:  MOVEQ           R1, #8
174B16:  CMP             R1, R5
174B18:  MOV             R6, R5
174B1A:  IT GT
174B1C:  MOVGT           R6, R1
174B1E:  CMP             R0, R6
174B20:  BGE             loc_174B50
174B22:  ADD.W           R0, R6, R6,LSL#2
174B26:  LSLS            R0, R0, #2
174B28:  BL              sub_1654B0
174B2C:  LDR.W           R1, [R11,#0x20]; src
174B30:  MOV             R8, R0
174B32:  CBZ             R1, loc_174B4C
174B34:  LDR.W           R0, [R11,#0x18]
174B38:  ADD.W           R0, R0, R0,LSL#2
174B3C:  LSLS            R2, R0, #2; n
174B3E:  MOV             R0, R8; dest
174B40:  BLX             j_memcpy
174B44:  LDR.W           R0, [R11,#0x20]
174B48:  BL              sub_165578
174B4C:  STRD.W          R6, R8, [R11,#0x1C]
174B50:  LDRD.W          R0, R1, [R11,#0x10]
174B54:  SUBS            R1, R4, R1
174B56:  STR.W           R5, [R11,#0x18]
174B5A:  ASRS            R5, R1, #1
174B5C:  CMP.W           R0, R1,ASR#1
174B60:  BGE             loc_174BA0
174B62:  CMP             R0, #0
174B64:  ITTE NE
174B66:  ADDNE.W         R1, R0, R0,LSR#31
174B6A:  ADDNE.W         R6, R0, R1,ASR#1
174B6E:  MOVEQ           R6, #8
174B70:  CMP             R6, R5
174B72:  IT LE
174B74:  MOVLE           R6, R5
174B76:  CMP             R0, R6
174B78:  BGE             loc_174BA0
174B7A:  LSLS            R0, R6, #1
174B7C:  BL              sub_1654B0
174B80:  LDR.W           R1, [R11,#0x14]; src
174B84:  MOV             R8, R0
174B86:  CBZ             R1, loc_174B9C
174B88:  LDR.W           R0, [R11,#0xC]
174B8C:  LSLS            R2, R0, #1; n
174B8E:  MOV             R0, R8; dest
174B90:  BLX             j_memcpy
174B94:  LDR.W           R0, [R11,#0x14]
174B98:  BL              sub_165578
174B9C:  STRD.W          R6, R8, [R11,#0x10]
174BA0:  LDR.W           R0, [R11]
174BA4:  LDR.W           R1, [R11,#8]
174BA8:  LDR             R2, [SP,#0x80+var_70]
174BAA:  ADD.W           R0, R0, R0,LSL#2
174BAE:  STRD.W          R2, R9, [R11,#0x34]
174BB2:  LDRD.W          R3, R2, [SP,#0x80+var_78]
174BB6:  ADD.W           R0, R1, R0,LSL#3
174BBA:  STR.W           R5, [R11,#0xC]
174BBE:  ADD             R2, R3
174BC0:  STR.W           R4, [R11,#0x3C]
174BC4:  LDR.W           R1, [R0,#-0x28]
174BC8:  SUBS            R2, R5, R2
174BCA:  ADD             R1, R2
174BCC:  STR.W           R1, [R0,#-0x28]
174BD0:  ADD             SP, SP, #0x20 ; ' '
174BD2:  VPOP            {D8-D15}
174BD6:  ADD             SP, SP, #4
174BD8:  POP.W           {R8-R11}
174BDC:  POP             {R4-R7,PC}
174BDE:  MOV             R4, R6
174BE0:  B               loc_1747E4
