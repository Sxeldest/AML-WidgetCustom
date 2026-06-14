; =========================================================
; Game Engine Function: _Z10NvMultMatfPA4_fPA4_KfS3_
; Address            : 0x2775F0 - 0x277B56
; =========================================================

2775F0:  PUSH            {R7,LR}
2775F2:  MOV             R7, SP
2775F4:  VPUSH           {D8-D15}
2775F8:  VLDR            S15, [R1,#0x1C]
2775FC:  MOVS            R3, #0
2775FE:  VLDR            S11, [R1,#0xC]
277602:  MOV.W           R12, #0
277606:  VCMP.F32        S15, #0.0
27760A:  VMRS            APSR_nzcv, FPSCR
27760E:  VCMP.F32        S11, #0.0
277612:  IT EQ
277614:  MOVEQ           R3, #1
277616:  VMRS            APSR_nzcv, FPSCR
27761A:  IT EQ
27761C:  MOVEQ.W         R12, #1
277620:  TST.W           R12, R3
277624:  BEQ.W           loc_2777DC
277628:  VLDR            S4, [R1,#0x2C]
27762C:  VCMP.F32        S4, #0.0
277630:  VMRS            APSR_nzcv, FPSCR
277634:  ITTT EQ
277636:  VMOVEQ.F32      S3, #1.0
27763A:  VCMPEQ.F32      S4, S3
27763E:  VMRSEQ          APSR_nzcv, FPSCR
277642:  BNE.W           loc_2777DC
277646:  VLDR            S4, [R2,#0xC]
27764A:  VCMP.F32        S4, #0.0
27764E:  VMRS            APSR_nzcv, FPSCR
277652:  ITTT EQ
277654:  VLDREQ          S4, [R2,#0x1C]
277658:  VCMPEQ.F32      S4, #0.0
27765C:  VMRSEQ          APSR_nzcv, FPSCR
277660:  BNE.W           loc_2777DC
277664:  VLDR            S4, [R2,#0x2C]
277668:  VCMP.F32        S4, #0.0
27766C:  VMRS            APSR_nzcv, FPSCR
277670:  ITT EQ
277672:  VCMPEQ.F32      S4, S3
277676:  VMRSEQ          APSR_nzcv, FPSCR
27767A:  BNE.W           loc_2777DC
27767E:  VLDR            S4, [R1,#0x30]
277682:  VCMP.F32        S4, #0.0
277686:  VMRS            APSR_nzcv, FPSCR
27768A:  ITTT EQ
27768C:  VLDREQ          S6, [R1,#0x34]
277690:  VCMPEQ.F32      S6, #0.0
277694:  VMRSEQ          APSR_nzcv, FPSCR
277698:  BNE.W           loc_2779F4
27769C:  VLDR            S6, [R1,#0x38]
2776A0:  VCMP.F32        S6, #0.0
2776A4:  VMRS            APSR_nzcv, FPSCR
2776A8:  ITTT EQ
2776AA:  VLDREQ          S6, [R2,#0x30]
2776AE:  VCMPEQ.F32      S6, #0.0
2776B2:  VMRSEQ          APSR_nzcv, FPSCR
2776B6:  BNE.W           loc_2779F4
2776BA:  VLDR            S6, [R2,#0x34]
2776BE:  VCMP.F32        S6, #0.0
2776C2:  VMRS            APSR_nzcv, FPSCR
2776C6:  ITTT EQ
2776C8:  VLDREQ          S6, [R2,#0x38]
2776CC:  VCMPEQ.F32      S6, #0.0
2776D0:  VMRSEQ          APSR_nzcv, FPSCR
2776D4:  BNE.W           loc_2779F4
2776D8:  VLDR            S0, [R2,#0x14]
2776DC:  VLDR            S4, [R1,#0x14]
2776E0:  VLDR            S14, [R2,#0x10]
2776E4:  VLDR            S3, [R1,#4]
2776E8:  VMUL.F32        S7, S4, S0
2776EC:  VLDR            S6, [R1,#0x18]
2776F0:  VMUL.F32        S11, S3, S14
2776F4:  VLDR            S1, [R1]
2776F8:  VLDR            S13, [R2,#0x20]
2776FC:  VMUL.F32        S15, S6, S0
277700:  VLDR            S2, [R1,#0x10]
277704:  VMUL.F32        S24, S1, S14
277708:  VLDR            S9, [R2,#0x24]
27770C:  VMUL.F32        S18, S1, S13
277710:  VLDR            S8, [R2]
277714:  VMUL.F32        S0, S2, S0
277718:  VLDR            S5, [R1,#8]
27771C:  VMUL.F32        S16, S2, S9
277720:  VLDR            S10, [R2,#4]
277724:  VMUL.F32        S20, S4, S9
277728:  VMUL.F32        S14, S5, S14
27772C:  VLDR            S12, [R2,#8]
277730:  VMUL.F32        S9, S6, S9
277734:  VLDR            S26, [R1,#0x28]
277738:  VADD.F32        S7, S11, S7
27773C:  VMUL.F32        S6, S10, S6
277740:  VMUL.F32        S11, S8, S5
277744:  VMUL.F32        S22, S3, S13
277748:  VMUL.F32        S13, S5, S13
27774C:  VLDR            S5, [R2,#0x18]
277750:  VMUL.F32        S1, S1, S8
277754:  VMUL.F32        S2, S2, S10
277758:  VMUL.F32        S4, S10, S4
27775C:  VMUL.F32        S8, S8, S3
277760:  VADD.F32        S14, S14, S15
277764:  VADD.F32        S15, S18, S16
277768:  VLDR            S16, [R1,#0x20]
27776C:  VLDR            S18, [R1,#0x24]
277770:  VADD.F32        S11, S11, S6
277774:  VLDR            S6, [R2,#0x28]
277778:  VADD.F32        S0, S24, S0
27777C:  VADD.F32        S20, S22, S20
277780:  ADR             R1, dword_277B60
277782:  VADD.F32        S9, S13, S9
277786:  VMUL.F32        S24, S16, S5
27778A:  VMUL.F32        S13, S18, S5
27778E:  VMUL.F32        S5, S26, S5
277792:  VMUL.F32        S22, S12, S18
277796:  VMUL.F32        S28, S16, S6
27779A:  VMUL.F32        S18, S18, S6
27779E:  VADD.F32        S3, S8, S4
2777A2:  VMUL.F32        S6, S26, S6
2777A6:  VMUL.F32        S30, S12, S26
2777AA:  VMUL.F32        S16, S16, S12
2777AE:  VADD.F32        S2, S1, S2
2777B2:  VADD.F32        S10, S14, S5
2777B6:  VADD.F32        S12, S7, S13
2777BA:  VADD.F32        S8, S15, S28
2777BE:  VADD.F32        S4, S9, S6
2777C2:  VADD.F32        S6, S20, S18
2777C6:  VADD.F32        S14, S0, S24
2777CA:  VADD.F32        S5, S11, S30
2777CE:  VADD.F32        S7, S3, S22
2777D2:  VADD.F32        S9, S2, S16
2777D6:  VLD1.64         {D0-D1}, [R1@128]
2777DA:  B               loc_277B4C
2777DC:  ADD.W           R3, R1, #0x10
2777E0:  VLDM            R1, {S8-S10}
2777E4:  VLDM            R3, {S12-S14}
2777E8:  ADD.W           R3, R2, #0x30 ; '0'
2777EC:  VLDR            S0, [R2,#0x20]
2777F0:  VLD1.32         {D16[]-D17[]}, [R3@32]
2777F4:  ADD.W           R3, R2, #0x34 ; '4'
2777F8:  VMUL.F32        S1, S10, S0
2777FC:  VLDR            S2, [R2,#0x24]
277800:  VLD1.32         {D18[]-D19[]}, [R3@32]
277804:  ADD.W           R3, R2, #0x38 ; '8'
277808:  VMUL.F32        S5, S11, S0
27780C:  VMUL.F32        S4, S14, S2
277810:  VLD1.32         {D20[]-D21[]}, [R3@32]
277814:  ADD.W           R3, R1, #0x20 ; ' '
277818:  ADDS            R1, #0x30 ; '0'
27781A:  VMUL.F32        Q9, Q3, Q9
27781E:  VMUL.F32        Q8, Q2, Q8
277822:  VLD1.32         {D8-D9}, [R3]
277826:  VMUL.F32        Q10, Q4, Q10
27782A:  VLDR            S6, [R2,#0x28]
27782E:  VADD.F32        S4, S1, S4
277832:  VLDR            S1, [R2,#0x2C]
277836:  VMUL.F32        S3, S18, S6
27783A:  VLD1.32         {D10-D11}, [R1]
27783E:  VADD.F32        Q8, Q8, Q9
277842:  VLDR            S28, [R2,#0x10]
277846:  VLDR            S30, [R2,#0x14]
27784A:  VMUL.F32        S29, S11, S28
27784E:  VLDR            S25, [R2,#0x18]
277852:  VMUL.F32        S27, S15, S30
277856:  VLDR            S7, [R2]
27785A:  VLDR            S24, [R2,#4]
27785E:  VADD.F32        Q8, Q8, Q10
277862:  VLDR            S26, [R2,#8]
277866:  VADD.F32        S4, S4, S3
27786A:  VMUL.F32        S3, S22, S1
27786E:  VMUL.F32        S31, S7, S9
277872:  VADD.F32        S27, S29, S27
277876:  VMUL.F32        S29, S19, S25
27787A:  VADD.F32        S4, S4, S3
27787E:  VMUL.F32        S3, S15, S2
277882:  VADD.F32        S27, S27, S29
277886:  VADD.F32        S3, S5, S3
27788A:  VMUL.F32        S5, S19, S6
27788E:  VADD.F32        S3, S3, S5
277892:  VMUL.F32        S5, S23, S1
277896:  VADD.F32        S3, S3, S5
27789A:  VLDR            S5, [R2,#0x1C]
27789E:  VMUL.F32        S29, S23, S5
2778A2:  VMOV            R12, S3
2778A6:  VLDR            S3, [R2,#0xC]
2778AA:  ADDS            R2, #0x3C ; '<'
2778AC:  VADD.F32        S27, S27, S29
2778B0:  VMUL.F32        S29, S7, S11
2778B4:  VLD1.32         {D18[]-D19[]}, [R2@32]
2778B8:  VMUL.F32        Q9, Q5, Q9
2778BC:  VMOV            R3, S27
2778C0:  VMUL.F32        S27, S24, S15
2778C4:  VADD.F32        S27, S29, S27
2778C8:  VMUL.F32        S29, S26, S19
2778CC:  VADD.F32        S27, S27, S29
2778D0:  VMUL.F32        S29, S3, S23
2778D4:  VADD.F32        S27, S27, S29
2778D8:  VMUL.F32        S29, S8, S7
2778DC:  VMUL.F32        S7, S7, S10
2778E0:  VMOV            R1, S27
2778E4:  VMUL.F32        S27, S12, S24
2778E8:  VADD.F32        S27, S29, S27
2778EC:  VMUL.F32        S29, S16, S26
2778F0:  VADD.F32        S27, S27, S29
2778F4:  VMUL.F32        S29, S24, S13
2778F8:  VMUL.F32        S24, S24, S14
2778FC:  VADD.F32        S29, S31, S29
277900:  VADD.F32        S7, S7, S24
277904:  VMUL.F32        S24, S26, S18
277908:  VMUL.F32        S31, S26, S17
27790C:  VMUL.F32        S26, S8, S28
277910:  VADD.F32        S7, S7, S24
277914:  VMUL.F32        S24, S12, S30
277918:  VADD.F32        S29, S29, S31
27791C:  VMUL.F32        S31, S9, S28
277920:  VMUL.F32        S28, S10, S28
277924:  VADD.F32        S24, S26, S24
277928:  VMUL.F32        S26, S16, S25
27792C:  VADD.F32        S24, S24, S26
277930:  VMUL.F32        S26, S13, S30
277934:  VMUL.F32        S30, S14, S30
277938:  VADD.F32        S26, S31, S26
27793C:  VADD.F32        S28, S28, S30
277940:  VMUL.F32        S30, S18, S25
277944:  VMUL.F32        S31, S17, S25
277948:  VMUL.F32        S25, S8, S0
27794C:  VMUL.F32        S0, S9, S0
277950:  VMUL.F32        S9, S3, S21
277954:  VMUL.F32        S10, S22, S5
277958:  VMUL.F32        S8, S20, S1
27795C:  VADD.F32        S28, S28, S30
277960:  VMUL.F32        S30, S12, S2
277964:  VMUL.F32        S2, S13, S2
277968:  VMUL.F32        S14, S20, S5
27796C:  VADD.F32        S26, S26, S31
277970:  VMUL.F32        S12, S21, S5
277974:  VADD.F32        S10, S28, S10
277978:  VADD.F32        S30, S25, S30
27797C:  VMUL.F32        S25, S16, S6
277980:  VADD.F32        S0, S0, S2
277984:  VMUL.F32        S2, S17, S6
277988:  VMUL.F32        S6, S21, S1
27798C:  VADD.F32        S12, S26, S12
277990:  VADD.F32        S14, S24, S14
277994:  VADD.F32        S30, S30, S25
277998:  VADD.F32        S0, S0, S2
27799C:  VMUL.F32        S2, S20, S3
2779A0:  VMUL.F32        S3, S3, S22
2779A4:  VADD.F32        S8, S30, S8
2779A8:  VADD.F32        S6, S0, S6
2779AC:  VADD.F32        S5, S7, S3
2779B0:  VADD.F32        S7, S29, S9
2779B4:  VADD.F32        S9, S27, S2
2779B8:  VADD.F32        Q0, Q8, Q9
2779BC:  VSTR            S9, [R0]
2779C0:  VSTR            S7, [R0,#4]
2779C4:  VSTR            S5, [R0,#8]
2779C8:  STR             R1, [R0,#0xC]
2779CA:  VSTR            S14, [R0,#0x10]
2779CE:  VSTR            S12, [R0,#0x14]
2779D2:  VSTR            S10, [R0,#0x18]
2779D6:  STR             R3, [R0,#0x1C]
2779D8:  STR.W           R12, [R0,#0x2C]
2779DC:  VSTR            S8, [R0,#0x20]
2779E0:  VSTR            S6, [R0,#0x24]
2779E4:  VSTR            S4, [R0,#0x28]
2779E8:  ADDS            R0, #0x30 ; '0'
2779EA:  VST1.32         {D0-D1}, [R0]
2779EE:  VPOP            {D8-D15}
2779F2:  POP             {R7,PC}
2779F4:  VLDR            S6, [R2,#0x14]
2779F8:  VLDR            S8, [R1,#0x10]
2779FC:  VLDR            S10, [R1,#0x14]
277A00:  VLDR            S12, [R1,#0x18]
277A04:  VMUL.F32        S20, S8, S6
277A08:  VLDR            S5, [R2,#4]
277A0C:  VMUL.F32        S16, S10, S6
277A10:  VLDR            S14, [R2]
277A14:  VMUL.F32        S6, S12, S6
277A18:  VLDR            S15, [R1,#8]
277A1C:  VMUL.F32        S24, S5, S12
277A20:  VLDR            S9, [R2,#0x10]
277A24:  VLDR            S11, [R1]
277A28:  VMUL.F32        S26, S14, S15
277A2C:  VLDR            S13, [R1,#4]
277A30:  VMUL.F32        S22, S11, S9
277A34:  VLDR            S28, [R2,#0x24]
277A38:  VMUL.F32        S18, S13, S9
277A3C:  VLDR            S30, [R2,#0x20]
277A40:  VMUL.F32        S9, S15, S9
277A44:  VLDR            S19, [R2,#0x34]
277A48:  VMUL.F32        S17, S8, S28
277A4C:  VLDR            S21, [R2,#0x38]
277A50:  VLDR            S25, [R1,#0x28]
277A54:  VADD.F32        S24, S26, S24
277A58:  VLDR            S23, [R1,#0x24]
277A5C:  VMUL.F32        S26, S14, S13
277A60:  VLDR            S7, [R2,#8]
277A64:  VADD.F32        S20, S22, S20
277A68:  VMUL.F32        S22, S5, S10
277A6C:  VADD.F32        S16, S18, S16
277A70:  VMUL.F32        S18, S11, S30
277A74:  VADD.F32        S9, S9, S6
277A78:  VLDR            S6, [R2,#0x30]
277A7C:  VMUL.F32        S27, S25, S21
277A80:  VMUL.F32        S29, S11, S6
277A84:  VMUL.F32        S14, S11, S14
277A88:  VLDR            S11, [R1,#0x38]
277A8C:  VADD.F32        S22, S26, S22
277A90:  VMUL.F32        S26, S12, S19
277A94:  VADD.F32        S18, S18, S17
277A98:  VMUL.F32        S17, S15, S6
277A9C:  VMUL.F32        S6, S13, S6
277AA0:  VMUL.F32        S12, S12, S28
277AA4:  VMUL.F32        S15, S15, S30
277AA8:  VADD.F32        S26, S17, S26
277AAC:  VLDR            S17, [R1,#0x20]
277AB0:  VADD.F32        S26, S26, S27
277AB4:  VMUL.F32        S27, S8, S19
277AB8:  VMUL.F32        S19, S10, S19
277ABC:  VMUL.F32        S8, S8, S5
277AC0:  VMUL.F32        S5, S13, S30
277AC4:  VMUL.F32        S10, S10, S28
277AC8:  VADD.F32        S27, S29, S27
277ACC:  VADD.F32        S6, S6, S19
277AD0:  VMUL.F32        S19, S23, S21
277AD4:  VMUL.F32        S29, S17, S21
277AD8:  VADD.F32        S10, S5, S10
277ADC:  VLDR            S5, [R1,#0x34]
277AE0:  VADD.F32        S13, S14, S8
277AE4:  VADD.F32        S8, S15, S12
277AE8:  VLDR            S12, [R2,#0x18]
277AEC:  VMUL.F32        S21, S7, S23
277AF0:  VMUL.F32        S14, S17, S12
277AF4:  VADD.F32        S6, S6, S19
277AF8:  VADD.F32        S27, S27, S29
277AFC:  VMUL.F32        S19, S17, S7
277B00:  VMUL.F32        S7, S7, S25
277B04:  VADD.F32        S14, S20, S14
277B08:  VADD.F32        S1, S5, S6
277B0C:  VADD.F32        S0, S4, S27
277B10:  VLDR            S4, [R2,#0x28]
277B14:  VADD.F32        S2, S26, S11
277B18:  VMUL.F32        S6, S23, S4
277B1C:  VMUL.F32        S5, S23, S12
277B20:  VMUL.F32        S11, S17, S4
277B24:  VMUL.F32        S4, S25, S4
277B28:  VMUL.F32        S12, S25, S12
277B2C:  VADD.F32        S6, S10, S6
277B30:  VADD.F32        S4, S8, S4
277B34:  VADD.F32        S10, S9, S12
277B38:  VADD.F32        S12, S16, S5
277B3C:  VADD.F32        S5, S24, S7
277B40:  VADD.F32        S8, S18, S11
277B44:  VADD.F32        S7, S22, S21
277B48:  VADD.F32        S9, S13, S19
277B4C:  MOV.W           R12, #0
277B50:  MOVS            R3, #0
277B52:  MOVS            R1, #0
277B54:  B               loc_2779BC
