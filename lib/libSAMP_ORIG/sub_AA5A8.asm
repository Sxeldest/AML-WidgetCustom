; =========================================================
; Game Engine Function: sub_AA5A8
; Address            : 0xAA5A8 - 0xAAC56
; =========================================================

AA5A8:  PUSH            {R4-R7,LR}
AA5AA:  ADD             R7, SP, #0xC
AA5AC:  PUSH.W          {R8-R11}
AA5B0:  SUB             SP, SP, #4
AA5B2:  VPUSH           {D8-D15}
AA5B6:  SUB             SP, SP, #0x28
AA5B8:  STR             R3, [SP,#0x88+var_78]
AA5BA:  MOV             R6, R1
AA5BC:  LDR             R3, =(off_114D5C - 0xAA5CE)
AA5BE:  VMOV.F32        S2, #-4.0
AA5C2:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xAA5D4)
AA5C6:  VMOV.F32        S16, #1.0
AA5CA:  ADD             R3, PC; off_114D5C
AA5CC:  VLDR            S28, [R7,#arg_C]
AA5D0:  ADD             R1, PC; __stack_chk_guard_ptr
AA5D2:  VLDR            S26, [R7,#arg_4]
AA5D6:  VLDR            S24, [R7,#arg_0]
AA5DA:  BIC.W           R10, R2, #1
AA5DE:  LDR             R1, [R1]; __stack_chk_guard
AA5E0:  MOV             R8, R0
AA5E2:  LDR             R3, [R3]; dword_1ACF68
AA5E4:  VSUB.F32        S30, S26, S24
AA5E8:  VSUB.F32        S27, S24, S26
AA5EC:  LDR             R1, [R1]
AA5EE:  VCMP.F32        S28, S16
AA5F2:  STR             R1, [SP,#0x88+var_64]
AA5F4:  VMRS            APSR_nzcv, FPSCR
AA5F8:  LDR             R1, [R7,#arg_10]
AA5FA:  VCMP.F32        S24, S26
AA5FE:  AND.W           R1, R1, #1
AA602:  STR             R1, [SP,#0x88+var_70]
AA604:  ADD.W           R1, R0, R1,LSL#2
AA608:  MOV.W           R0, #0
AA60C:  VLDR            S0, [R1]
AA610:  VLDR            S19, [R1,#8]
AA614:  MOV.W           R1, #0
AA618:  IT NE
AA61A:  MOVNE           R1, #1
AA61C:  STR             R2, [SP,#0x88+var_7C]
AA61E:  VSUB.F32        S4, S19, S0
AA622:  SUB.W           R2, R10, #8
AA626:  LDR.W           R9, [R3]
AA62A:  CLZ.W           R2, R2
AA62E:  STR             R3, [SP,#0x88+var_80]
AA630:  MOVW            R3, #0x1588
AA634:  ADD.W           R11, R9, R3
AA638:  LSRS            R2, R2, #5
AA63A:  VMRS            APSR_nzcv, FPSCR
AA63E:  IT MI
AA640:  VMOVMI.F32      S27, S30
AA644:  ANDS            R2, R1
AA646:  CMP.W           R10, #8
AA64A:  VADD.F32        S23, S4, S2
AA64E:  VLDR            S2, [R11]
AA652:  BEQ             loc_AA674
AA654:  VCMP.F32        S27, #0.0
AA658:  VMRS            APSR_nzcv, FPSCR
AA65C:  BLT             loc_AA674
AA65E:  VADD.F32        S4, S27, S16
AA662:  VDIV.F32        S4, S23, S4
AA666:  VCMP.F32        S4, S2
AA66A:  VMRS            APSR_nzcv, FPSCR
AA66E:  IT GE
AA670:  VMOVGE.F32      S2, S4
AA674:  VMOV.F32        S20, #2.0
AA678:  EOR.W           R1, R2, #1
AA67C:  VMOV.F32        S18, #0.5
AA680:  VCMP.F32        S2, S23
AA684:  VMOV.F32        S22, S23
AA688:  VMRS            APSR_nzcv, FPSCR
AA68C:  IT MI
AA68E:  VMOVMI.F32      S22, S2
AA692:  VADD.F32        S17, S0, S20
AA696:  VMUL.F32        S0, S24, S26
AA69A:  VMUL.F32        S25, S22, S18
AA69E:  VCMP.F32        S0, #0.0
AA6A2:  VMRS            APSR_nzcv, FPSCR
AA6A6:  IT PL
AA6A8:  MOVPL           R0, #1
AA6AA:  ORRS            R0, R1
AA6AC:  STR             R2, [SP,#0x88+var_74]
AA6AE:  BNE             loc_AA704
AA6B0:  VDIV.F32        S0, S16, S28
AA6B4:  VCMP.F32        S24, #0.0
AA6B8:  VMOV            R5, S0
AA6BC:  VMRS            APSR_nzcv, FPSCR
AA6C0:  VNEG.F32        S2, S24
AA6C4:  IT GE
AA6C6:  VMOVGE.F32      S2, S24
AA6CA:  VMOV            R0, S2; x
AA6CE:  MOV             R1, R5; y
AA6D0:  BLX             powf
AA6D4:  VCMP.F32        S26, #0.0
AA6D8:  MOV             R4, R0
AA6DA:  VNEG.F32        S0, S26
AA6DE:  VMRS            APSR_nzcv, FPSCR
AA6E2:  IT GE
AA6E4:  VMOVGE.F32      S0, S26
AA6E8:  VMOV            R0, S0; x
AA6EC:  MOV             R1, R5; y
AA6EE:  BLX             powf
AA6F2:  VMOV            S0, R0
AA6F6:  VMOV            S2, R4
AA6FA:  VADD.F32        S0, S2, S0
AA6FE:  VDIV.F32        S21, S2, S0
AA702:  B               loc_AA716
AA704:  VCMP.F32        S24, #0.0
AA708:  VLDR            S21, =0.0
AA70C:  VMRS            APSR_nzcv, FPSCR
AA710:  IT MI
AA712:  VMOVMI.F32      S21, S16
AA716:  VADD.F32        S17, S25, S17
AA71A:  LDR.W           R0, [R11,#0x448]
AA71E:  CMP             R0, R6
AA720:  BNE.W           loc_AAA90
AA724:  LDR.W           R0, [R11,#0x470]
AA728:  MOVS            R5, #0
AA72A:  LDR             R4, [R7,#arg_8]
AA72C:  CMP             R0, #2
AA72E:  BEQ             loc_AA780
AA730:  CMP             R0, #1
AA732:  BNE.W           loc_AAA92
AA736:  LDRB.W          R0, [R9,#0xE8]
AA73A:  CMP             R0, #0
AA73C:  BEQ             loc_AA7D0
AA73E:  VSUB.F32        S0, S23, S22
AA742:  VCMP.F32        S0, #0.0
AA746:  VMRS            APSR_nzcv, FPSCR
AA74A:  BLE             loc_AA7D6
AA74C:  LDR             R1, [SP,#0x88+var_70]
AA74E:  ADD.W           R0, R9, R1,LSL#2
AA752:  VLDR            S2, [R0,#0xE0]
AA756:  VSUB.F32        S2, S2, S17
AA75A:  VDIV.F32        S2, S2, S0
AA75E:  VCMP.F32        S2, S16
AA762:  VLDR            S0, =0.0
AA766:  VMRS            APSR_nzcv, FPSCR
AA76A:  VCMP.F32        S2, #0.0
AA76E:  IT GT
AA770:  VMOVGT.F32      S2, S16
AA774:  VMRS            APSR_nzcv, FPSCR
AA778:  IT MI
AA77A:  VMOVMI.F32      S2, S0
AA77E:  B               loc_AA7DC
AA780:  ADD             R0, SP, #0x88+var_6C; int
AA782:  MOVS            R1, #3; int
AA784:  MOVS            R2, #5; int
AA786:  MOVS            R3, #0; int
AA788:  STR             R5, [SP,#0x88+var_88]; float
AA78A:  BL              sub_99284
AA78E:  VLDR            S2, [SP,#0x88+var_68]
AA792:  LDR             R0, [SP,#0x88+var_70]
AA794:  VNEG.F32        S29, S2
AA798:  VLDR            S0, [SP,#0x88+var_6C]
AA79C:  CMP             R0, #0
AA79E:  IT EQ
AA7A0:  VMOVEQ.F32      S29, S0
AA7A4:  LDR.W           R0, [R11,#0x53C]
AA7A8:  CMP             R0, R6
AA7AA:  ITT EQ
AA7AC:  LDRBEQ.W        R0, [R11,#0x454]
AA7B0:  CMPEQ           R0, #0
AA7B2:  BEQ             loc_AA7D0
AA7B4:  VCMP.F32        S29, #0.0
AA7B8:  VMRS            APSR_nzcv, FPSCR
AA7BC:  BEQ.W           loc_AAA90
AA7C0:  VCMP.F32        S24, S26
AA7C4:  VMRS            APSR_nzcv, FPSCR
AA7C8:  BNE             loc_AA836
AA7CA:  VLDR            S31, =0.0
AA7CE:  B               loc_AA9B2
AA7D0:  BL              sub_8B080
AA7D4:  B               loc_AAA90
AA7D6:  VLDR            S2, =0.0
AA7DA:  LDR             R1, [SP,#0x88+var_70]
AA7DC:  VSUB.F32        S0, S16, S2
AA7E0:  CMP             R1, #0
AA7E2:  IT EQ
AA7E4:  VMOVEQ.F32      S0, S2
AA7E8:  LDR             R0, [SP,#0x88+var_74]
AA7EA:  CBZ             R0, loc_AA826
AA7EC:  LDRD.W          R6, R5, [SP,#0x88+var_7C]
AA7F0:  VCMP.F32        S0, S21
AA7F4:  VMRS            APSR_nzcv, FPSCR
AA7F8:  BPL             loc_AA8C8
AA7FA:  VDIV.F32        S0, S0, S21
AA7FE:  VSUB.F32        S0, S16, S0
AA802:  VMOV            R1, S28; y
AA806:  VMOV            R0, S0; x
AA80A:  BLX             powf
AA80E:  VCMP.F32        S26, #0.0
AA812:  VLDR            S2, =0.0
AA816:  VMRS            APSR_nzcv, FPSCR
AA81A:  IT MI
AA81C:  VMOVMI.F32      S2, S26
AA820:  VSUB.F32        S0, S24, S2
AA824:  B               loc_AA910
AA826:  CMP.W           R10, #8
AA82A:  BNE             loc_AA91A
AA82C:  VMOV.F32        S2, S24
AA830:  VMLA.F32        S2, S30, S0
AA834:  B               loc_AA934
AA836:  LDR             R0, [SP,#0x88+var_78]
AA838:  VCMP.F32        S24, S26
AA83C:  VMOV.F32        S2, S24
AA840:  VMRS            APSR_nzcv, FPSCR
AA844:  VMOV.F32        S4, S26
AA848:  VLDR            S0, [R0]
AA84C:  IT MI
AA84E:  VMOVMI.F32      S2, S26
AA852:  IT MI
AA854:  VMOVMI.F32      S4, S24
AA858:  VCMP.F32        S2, S0
AA85C:  VMRS            APSR_nzcv, FPSCR
AA860:  VCMP.F32        S4, S0
AA864:  IT MI
AA866:  VMOVMI.F32      S0, S2
AA86A:  VMRS            APSR_nzcv, FPSCR
AA86E:  IT GT
AA870:  VMOVGT.F32      S0, S4
AA874:  LDR             R0, [SP,#0x88+var_74]
AA876:  CMP             R0, #0
AA878:  BEQ             loc_AA960
AA87A:  VCMP.F32        S0, #0.0
AA87E:  VLDR            S2, =0.0
AA882:  VMRS            APSR_nzcv, FPSCR
AA886:  BPL             loc_AA974
AA888:  VCMP.F32        S26, #0.0
AA88C:  VMOV.F32        S4, S26
AA890:  VMRS            APSR_nzcv, FPSCR
AA894:  IT GT
AA896:  VMOVGT.F32      S4, S2
AA89A:  VSUB.F32        S0, S0, S24
AA89E:  VSUB.F32        S2, S4, S24
AA8A2:  VDIV.F32        S0, S0, S2
AA8A6:  VDIV.F32        S2, S16, S28
AA8AA:  VSUB.F32        S0, S16, S0
AA8AE:  VMOV            R1, S2; y
AA8B2:  VMOV            R0, S0; x
AA8B6:  BLX             powf
AA8BA:  VMOV            S0, R0
AA8BE:  VSUB.F32        S0, S16, S0
AA8C2:  VMUL.F32        S31, S21, S0
AA8C6:  B               loc_AA9B2
AA8C8:  VMOV.F32        S2, #-1.0
AA8CC:  VLDR            S4, =0.000001
AA8D0:  VADD.F32        S2, S21, S2
AA8D4:  VABS.F32        S2, S2
AA8D8:  VCMP.F32        S2, S4
AA8DC:  VMRS            APSR_nzcv, FPSCR
AA8E0:  BLE             loc_AA8EE
AA8E2:  VSUB.F32        S0, S0, S21
AA8E6:  VSUB.F32        S2, S16, S21
AA8EA:  VDIV.F32        S0, S0, S2
AA8EE:  VMOV            R0, S0; x
AA8F2:  VMOV            R1, S28; y
AA8F6:  BLX             powf
AA8FA:  VCMP.F32        S24, #0.0
AA8FE:  VLDR            S2, =0.0
AA902:  VMRS            APSR_nzcv, FPSCR
AA906:  IT GE
AA908:  VMOVGE.F32      S2, S24
AA90C:  VSUB.F32        S0, S26, S2
AA910:  VMOV            S4, R0
AA914:  VMLA.F32        S2, S0, S4
AA918:  B               loc_AA938
AA91A:  VMUL.F32        S0, S30, S0
AA91E:  VADD.F32        S2, S0, S18
AA922:  VCMP.F32        S0, S2
AA926:  VMRS            APSR_nzcv, FPSCR
AA92A:  IT MI
AA92C:  VMOVMI.F32      S0, S2
AA930:  VADD.F32        S2, S0, S24
AA934:  LDRD.W          R6, R5, [SP,#0x88+var_7C]
AA938:  VMOV            R2, S2
AA93C:  MOV             R0, R4
AA93E:  MOV             R1, R6
AA940:  BL              sub_AF7EC
AA944:  VMOV            S0, R0
AA948:  VLDR            S2, [R5]
AA94C:  VCMP.F32        S2, S0
AA950:  VMRS            APSR_nzcv, FPSCR
AA954:  ITTE NE
AA956:  VSTRNE          S0, [R5]
AA95A:  MOVNE           R5, #1
AA95C:  MOVEQ           R5, #0
AA95E:  B               loc_AAA92
AA960:  VSUB.F32        S0, S0, S24
AA964:  VDIV.F32        S31, S0, S30
AA968:  B               loc_AA9B2
AA96A:  ALIGN 4
AA96C:  DCD off_114D5C - 0xAA5CE
AA970:  DCFS 0.0
AA974:  VCMP.F32        S24, #0.0
AA978:  VMOV.F32        S4, S24
AA97C:  VMRS            APSR_nzcv, FPSCR
AA980:  IT LS
AA982:  VMOVLS.F32      S4, S2
AA986:  VSUB.F32        S2, S26, S4
AA98A:  VSUB.F32        S0, S0, S4
AA98E:  VDIV.F32        S4, S16, S28
AA992:  VDIV.F32        S0, S0, S2
AA996:  VMOV            R1, S4; y
AA99A:  VMOV            R0, S0; x
AA99E:  BLX             powf
AA9A2:  VSUB.F32        S0, S16, S21
AA9A6:  VMOV.F32        S31, S21
AA9AA:  VMOV            S2, R0
AA9AE:  VMLA.F32        S31, S2, S0
AA9B2:  MOVS            R5, #0
AA9B4:  CMP.W           R10, #8
AA9B8:  MOV.W           R0, #0
AA9BC:  BNE             loc_AA9C6
AA9BE:  MOV             R0, R4
AA9C0:  MOVS            R1, #3
AA9C2:  BL              sub_AB7D0
AA9C6:  CMP             R0, #1
AA9C8:  IT LT
AA9CA:  MOVLT           R5, #1
AA9CC:  LDR             R0, [SP,#0x88+var_74]
AA9CE:  MVNS            R0, R0
AA9D0:  TST             R0, R5
AA9D2:  BNE             loc_AA9F8
AA9D4:  VLDR            S0, =100.0
AA9D8:  LDR             R0, [SP,#0x88+var_80]
AA9DA:  VDIV.F32        S0, S29, S0
AA9DE:  LDR             R0, [R0]
AA9E0:  VLDR            S2, [R0,#0x334]
AA9E4:  VCMP.F32        S2, #0.0
AA9E8:  VMRS            APSR_nzcv, FPSCR
AA9EC:  BLE             loc_AAA4A
AA9EE:  VMOV.F32        S2, #10.0
AA9F2:  VDIV.F32        S0, S0, S2
AA9F6:  B               loc_AAA4A
AA9F8:  LDR             R0, [SP,#0x88+var_80]
AA9FA:  VLDR            S0, =-100.0
AA9FE:  LDR             R0, [R0]
AAA00:  VCMP.F32        S27, S0
AAA04:  VMRS            APSR_nzcv, FPSCR
AAA08:  BLT             loc_AAA18
AAA0A:  VLDR            S0, =100.0
AAA0E:  VCMP.F32        S27, S0
AAA12:  VMRS            APSR_nzcv, FPSCR
AAA16:  BLS             loc_AAA26
AAA18:  VLDR            S0, [R0,#0x334]
AAA1C:  VCMP.F32        S0, #0.0
AAA20:  VMRS            APSR_nzcv, FPSCR
AAA24:  BLE             loc_AAA42
AAA26:  VCMP.F32        S29, #0.0
AAA2A:  VMOV.F32        S0, #-1.0
AAA2E:  VMRS            APSR_nzcv, FPSCR
AAA32:  VMOV.F32        S2, S16
AAA36:  IT MI
AAA38:  VMOVMI.F32      S2, S0
AAA3C:  VDIV.F32        S0, S2, S27
AAA40:  B               loc_AAA4A
AAA42:  VLDR            S0, =100.0
AAA46:  VDIV.F32        S0, S29, S0
AAA4A:  VMOV.F32        S2, #10.0
AAA4E:  VLDR            S4, [R0,#0x338]
AAA52:  VCMP.F32        S4, #0.0
AAA56:  VMRS            APSR_nzcv, FPSCR
AAA5A:  VCMP.F32        S31, S16
AAA5E:  VMUL.F32        S2, S0, S2
AAA62:  IT GT
AAA64:  VMOVGT.F32      S0, S2
AAA68:  VMRS            APSR_nzcv, FPSCR
AAA6C:  ITT GE
AAA6E:  VCMPGE.F32      S0, #0.0
AAA72:  VMRSGE          APSR_nzcv, FPSCR
AAA76:  BGT             loc_AAA90
AAA78:  VCMP.F32        S31, #0.0
AAA7C:  VMRS            APSR_nzcv, FPSCR
AAA80:  BHI.W           loc_AAC30
AAA84:  VCMP.F32        S0, #0.0
AAA88:  VMRS            APSR_nzcv, FPSCR
AAA8C:  BPL.W           loc_AAC30
AAA90:  MOVS            R5, #0
AAA92:  LDR             R4, [R7,#arg_14]
AAA94:  VCMP.F32        S23, S16
AAA98:  VMRS            APSR_nzcv, FPSCR
AAA9C:  BPL             loc_AAAAC
AAA9E:  VLDR            D16, [R8]
AAAA2:  VMOV            D17, D16
AAAA6:  VST1.32         {D16-D17}, [R4]
AAAAA:  B               loc_AAC0C
AAAAC:  VMOV.F32        S23, #-2.0
AAAB0:  VCMP.F32        S24, S26
AAAB4:  VMRS            APSR_nzcv, FPSCR
AAAB8:  VADD.F32        S0, S19, S23
AAABC:  VSUB.F32        S19, S0, S25
AAAC0:  BNE             loc_AAACA
AAAC2:  VLDR            S21, =0.0
AAAC6:  LDR             R6, [SP,#0x88+var_70]
AAAC8:  B               loc_AAB98
AAACA:  LDR             R0, [SP,#0x88+var_78]
AAACC:  VCMP.F32        S24, S26
AAAD0:  VMOV.F32        S2, S24
AAAD4:  VMRS            APSR_nzcv, FPSCR
AAAD8:  VMOV.F32        S4, S26
AAADC:  VLDR            S0, [R0]
AAAE0:  IT MI
AAAE2:  VMOVMI.F32      S2, S26
AAAE6:  IT MI
AAAE8:  VMOVMI.F32      S4, S24
AAAEC:  VCMP.F32        S2, S0
AAAF0:  VMRS            APSR_nzcv, FPSCR
AAAF4:  VCMP.F32        S4, S0
AAAF8:  IT MI
AAAFA:  VMOVMI.F32      S0, S2
AAAFE:  VMRS            APSR_nzcv, FPSCR
AAB02:  IT GT
AAB04:  VMOVGT.F32      S0, S4
AAB08:  LDR             R0, [SP,#0x88+var_74]
AAB0A:  LDR             R6, [SP,#0x88+var_70]
AAB0C:  CBZ             R0, loc_AAB58
AAB0E:  VCMP.F32        S0, #0.0
AAB12:  VLDR            S2, =0.0
AAB16:  VMRS            APSR_nzcv, FPSCR
AAB1A:  BPL             loc_AAB62
AAB1C:  VCMP.F32        S26, #0.0
AAB20:  VMRS            APSR_nzcv, FPSCR
AAB24:  IT GT
AAB26:  VMOVGT.F32      S26, S2
AAB2A:  VSUB.F32        S0, S0, S24
AAB2E:  VSUB.F32        S2, S26, S24
AAB32:  VDIV.F32        S0, S0, S2
AAB36:  VDIV.F32        S2, S16, S28
AAB3A:  VSUB.F32        S0, S16, S0
AAB3E:  VMOV            R1, S2; y
AAB42:  VMOV            R0, S0; x
AAB46:  BLX             powf
AAB4A:  VMOV            S0, R0
AAB4E:  VSUB.F32        S0, S16, S0
AAB52:  VMUL.F32        S21, S21, S0
AAB56:  B               loc_AAB98
AAB58:  VSUB.F32        S0, S0, S24
AAB5C:  VDIV.F32        S21, S0, S30
AAB60:  B               loc_AAB98
AAB62:  VCMP.F32        S24, #0.0
AAB66:  VMRS            APSR_nzcv, FPSCR
AAB6A:  IT LS
AAB6C:  VMOVLS.F32      S24, S2
AAB70:  VSUB.F32        S2, S26, S24
AAB74:  VSUB.F32        S0, S0, S24
AAB78:  VDIV.F32        S4, S16, S28
AAB7C:  VDIV.F32        S0, S0, S2
AAB80:  VMOV            R1, S4; y
AAB84:  VMOV            R0, S0; x
AAB88:  BLX             powf
AAB8C:  VSUB.F32        S0, S16, S21
AAB90:  VMOV            S2, R0
AAB94:  VMLA.F32        S21, S2, S0
AAB98:  VSUB.F32        S4, S19, S17
AAB9C:  CMP             R6, #0
AAB9E:  VSUB.F32        S2, S16, S21
AABA2:  IT EQ
AABA4:  VMOVEQ.F32      S2, S21
AABA8:  VNEG.F32        S0, S22
AABAC:  VMLA.F32        S17, S4, S2
AABB0:  BNE             loc_AABE0
AABB2:  VMOV.F32        S6, S17
AABB6:  VLDR            S2, [R8,#4]
AABBA:  VLDR            S4, [R8,#0xC]
AABBE:  VMLA.F32        S17, S0, S18
AABC2:  VADD.F32        S4, S4, S23
AABC6:  VMLA.F32        S6, S22, S18
AABCA:  VSTR            S17, [R4]
AABCE:  VADD.F32        S2, S2, S20
AABD2:  VSTR            S4, [R4,#0xC]
AABD6:  VSTR            S6, [R4,#8]
AABDA:  VSTR            S2, [R4,#4]
AABDE:  B               loc_AAC0C
AABE0:  VMOV.F32        S6, S17
AABE4:  VLDR            S4, [R8,#8]
AABE8:  VLDR            S2, [R8]
AABEC:  VMLA.F32        S17, S0, S18
AABF0:  VMLA.F32        S6, S22, S18
AABF4:  VSTR            S17, [R4,#4]
AABF8:  VADD.F32        S4, S4, S23
AABFC:  VADD.F32        S0, S2, S20
AAC00:  VSTR            S6, [R4,#0xC]
AAC04:  VSTR            S4, [R4,#8]
AAC08:  VSTR            S0, [R4]
AAC0C:  LDR             R0, [SP,#0x88+var_64]
AAC0E:  LDR             R1, =(__stack_chk_guard_ptr - 0xAAC14)
AAC10:  ADD             R1, PC; __stack_chk_guard_ptr
AAC12:  LDR             R1, [R1]; __stack_chk_guard
AAC14:  LDR             R1, [R1]
AAC16:  CMP             R1, R0
AAC18:  ITTTT EQ
AAC1A:  MOVEQ           R0, R5
AAC1C:  ADDEQ           SP, SP, #0x28 ; '('
AAC1E:  VPOPEQ          {D8-D15}
AAC22:  ADDEQ           SP, SP, #4
AAC24:  ITT EQ
AAC26:  POPEQ.W         {R8-R11}
AAC2A:  POPEQ           {R4-R7,PC}
AAC2C:  BLX             __stack_chk_fail
AAC30:  VADD.F32        S0, S31, S0
AAC34:  VLDR            S2, =0.0
AAC38:  VCMP.F32        S0, S16
AAC3C:  VMRS            APSR_nzcv, FPSCR
AAC40:  VCMP.F32        S0, #0.0
AAC44:  IT GT
AAC46:  VMOVGT.F32      S0, S16
AAC4A:  VMRS            APSR_nzcv, FPSCR
AAC4E:  IT MI
AAC50:  VMOVMI.F32      S0, S2
AAC54:  B               loc_AA7E8
