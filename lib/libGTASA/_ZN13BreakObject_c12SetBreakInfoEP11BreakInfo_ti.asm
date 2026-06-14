; =========================================================
; Game Engine Function: _ZN13BreakObject_c12SetBreakInfoEP11BreakInfo_ti
; Address            : 0x4515A4 - 0x451B56
; =========================================================

4515A4:  PUSH            {R4-R7,LR}
4515A6:  ADD             R7, SP, #0xC
4515A8:  PUSH.W          {R8-R11}
4515AC:  SUB             SP, SP, #4
4515AE:  VPUSH           {D8-D11}
4515B2:  SUB             SP, SP, #0x20
4515B4:  MOV             R6, R2
4515B6:  MOV             R4, R0
4515B8:  ADD.W           R0, R1, #0x14
4515BC:  CMP             R6, #1
4515BE:  STR             R0, [SP,#0x60+var_4C]
4515C0:  MOV.W           R9, #0x74 ; 't'
4515C4:  STR             R1, [SP,#0x60+var_54]
4515C6:  IT NE
4515C8:  ADDNE.W         R0, R1, #0x20 ; ' '
4515CC:  LDRH.W          R8, [R0]
4515D0:  STR.W           R8, [R4,#4]
4515D4:  MUL.W           R0, R8, R9; unsigned int
4515D8:  BLX             _Znaj; operator new[](uint)
4515DC:  CMP.W           R8, #0
4515E0:  STR             R0, [R4,#8]
4515E2:  STR             R6, [SP,#0x60+var_50]
4515E4:  BEQ.W           loc_4516EC
4515E8:  VLDR            S16, =0.000015259
4515EC:  ADD.W           R11, SP, #0x60+var_48
4515F0:  VLDR            S18, =32.0
4515F4:  MOV.W           R10, #0
4515F8:  B               loc_4515FC
4515FA:  LDR             R0, [R4,#8]
4515FC:  MLA.W           R0, R10, R9, R0
451600:  MOVS            R2, #0
451602:  LDR             R1, [SP,#0x60+var_54]
451604:  CMP             R6, #1
451606:  STRH.W          R2, [R0,#0x4E]
45160A:  LDR             R0, [R4,#8]
45160C:  MLA.W           R0, R10, R9, R0
451610:  STR             R2, [R0,#0x54]
451612:  BNE             loc_451618
451614:  MOVS            R3, #1
451616:  B               loc_451694
451618:  LDR             R0, [SP,#0x60+var_4C]
45161A:  LDRH            R0, [R0]
45161C:  CBZ             R0, loc_451692
45161E:  LDR             R5, [R1,#0x1C]
451620:  CMP             R0, #4
451622:  BCC             loc_45167C
451624:  AND.W           R12, R0, #3
451628:  SUBS.W          R2, R0, R12
45162C:  BEQ             loc_45167C
45162E:  VMOV.I32        Q8, #0
451632:  VDUP.32         Q9, R10
451636:  MOV             LR, R4
451638:  MOV             R3, R2
45163A:  MOV             R1, R5
45163C:  LDR             R4, [R1,#4]
45163E:  SUBS            R3, #4
451640:  LDR             R6, [R1]
451642:  ADD.W           R1, R1, #8
451646:  STRD.W          R6, R4, [SP,#0x60+var_48]
45164A:  VLD1.16         {D20}, [R11@64]
45164E:  VMOVL.U16       Q10, D20
451652:  VCEQ.I32        Q10, Q9, Q10
451656:  VSUB.I32        Q8, Q8, Q10
45165A:  BNE             loc_45163C
45165C:  VEXT.8          Q9, Q8, Q8, #8
451660:  LDR             R6, [SP,#0x60+var_50]
451662:  CMP.W           R12, #0
451666:  MOV             R4, LR
451668:  VADD.I32        Q8, Q8, Q9
45166C:  VDUP.32         Q9, D16[1]
451670:  VADD.I32        Q8, Q8, Q9
451674:  VMOV.32         R3, D16[0]
451678:  BNE             loc_451680
45167A:  B               loc_451694
45167C:  MOVS            R3, #0
45167E:  MOVS            R2, #0
451680:  LDRH.W          R1, [R5,R2,LSL#1]
451684:  ADDS            R2, #1
451686:  CMP             R10, R1
451688:  IT EQ
45168A:  ADDEQ           R3, #1
45168C:  CMP             R2, R0
45168E:  BLT             loc_451680
451690:  B               loc_451694
451692:  MOVS            R3, #0
451694:  MOVS            R0, #0x48 ; 'H'
451696:  UMULL.W         R0, R1, R3, R0
45169A:  CMP             R1, #0
45169C:  IT NE
45169E:  MOVNE           R1, #1
4516A0:  CMP             R1, #0
4516A2:  IT NE
4516A4:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
4516A8:  BLX             _Znaj; operator new[](uint)
4516AC:  LDR             R1, [R4,#8]
4516AE:  MLA.W           R1, R10, R9, R1
4516B2:  STR             R0, [R1,#0x50]
4516B4:  BLX             rand
4516B8:  UXTH            R0, R0
4516BA:  VMOV            S0, R0
4516BE:  VCVT.F32.S32    S0, S0
4516C2:  LDR             R0, [R4,#8]
4516C4:  MLA.W           R0, R10, R9, R0
4516C8:  ADD.W           R10, R10, #1
4516CC:  VMUL.F32        S0, S0, S16
4516D0:  VMUL.F32        S0, S0, S18
4516D4:  VCVT.S32.F32    S0, S0
4516D8:  VMOV            R1, S0
4516DC:  ADD.W           R1, R1, #0x100
4516E0:  STR             R1, [R0,#0x70]
4516E2:  LDR.W           R8, [R4,#4]
4516E6:  CMP             R10, R8
4516E8:  BLT.W           loc_4515FA
4516EC:  LDR             R0, [SP,#0x60+var_4C]
4516EE:  LDR             R5, [SP,#0x60+var_54]
4516F0:  LDRH            R0, [R0]
4516F2:  CMP             R0, #0
4516F4:  BEQ.W           loc_451B24
4516F8:  LDR.W           R0, =(AmbientLightColourForFrame_ptr - 0x45170C)
4516FC:  MOV.W           R12, #0
451700:  VLDR            S16, =255.0
451704:  MOV.W           R8, #0x74 ; 't'
451708:  ADD             R0, PC; AmbientLightColourForFrame_ptr
45170A:  MOVS            R1, #0
45170C:  LDR             R0, [R0]; AmbientLightColourForFrame
45170E:  STR             R0, [SP,#0x60+var_60]
451710:  CMP             R6, #1
451712:  MOV             R11, R1
451714:  ITT NE
451716:  LDRNE           R0, [R5,#0x1C]
451718:  LDRHNE.W        R11, [R0,R1,LSL#1]
45171C:  STR             R1, [SP,#0x60+var_4C]
45171E:  LDR             R0, [R4,#8]
451720:  LDR             R3, [R5,#0x18]
451722:  MLA.W           R0, R11, R8, R0
451726:  LDR             R2, [R5,#8]
451728:  ADD.W           R6, R3, R12
45172C:  LDRH.W          LR, [R6,#4]
451730:  LDRH            R6, [R6,#2]
451732:  LDR             R1, [R0,#0x50]
451734:  LDRH.W          R0, [R0,#0x4E]
451738:  STR.W           R12, [SP,#0x60+var_58]
45173C:  LDRH.W          R3, [R3,R12]
451740:  ADD.W           R9, R0, R0,LSL#3
451744:  MOV             R10, R3
451746:  ADD.W           R3, R3, R3,LSL#1
45174A:  LDR.W           R2, [R2,R3,LSL#2]
45174E:  STR.W           R2, [R1,R9,LSL#3]
451752:  ADD.W           R2, R6, R6,LSL#1
451756:  LDR             R0, [R4,#8]
451758:  MLA.W           R0, R11, R8, R0
45175C:  LDR             R1, [R5,#8]
45175E:  ADD.W           R1, R1, R3,LSL#2
451762:  LDR             R1, [R1,#4]
451764:  LDR             R0, [R0,#0x50]
451766:  ADD.W           R0, R0, R9,LSL#3
45176A:  STR             R1, [R0,#4]
45176C:  LDR             R0, [R4,#8]
45176E:  MLA.W           R0, R11, R8, R0
451772:  LDR             R1, [R5,#8]
451774:  ADD.W           R1, R1, R3,LSL#2
451778:  LDR             R1, [R1,#8]
45177A:  LDR             R0, [R0,#0x50]
45177C:  ADD.W           R0, R0, R9,LSL#3
451780:  STR             R1, [R0,#8]
451782:  LDR             R0, [R4,#8]
451784:  MLA.W           R0, R11, R8, R0
451788:  LDR             R1, [R5,#8]
45178A:  LDR.W           R1, [R1,R2,LSL#2]
45178E:  LDR             R0, [R0,#0x50]
451790:  ADD.W           R0, R0, R9,LSL#3
451794:  STR             R1, [R0,#0xC]
451796:  LDR             R0, [R4,#8]
451798:  MLA.W           R0, R11, R8, R0
45179C:  LDR             R1, [R5,#8]
45179E:  ADD.W           R1, R1, R2,LSL#2
4517A2:  LDR             R1, [R1,#4]
4517A4:  LDR             R0, [R0,#0x50]
4517A6:  ADD.W           R0, R0, R9,LSL#3
4517AA:  STR             R1, [R0,#0x10]
4517AC:  LDR             R0, [R4,#8]
4517AE:  MLA.W           R0, R11, R8, R0
4517B2:  LDR             R1, [R5,#8]
4517B4:  ADD.W           R1, R1, R2,LSL#2
4517B8:  ADD.W           R2, LR, LR,LSL#1
4517BC:  LDR             R1, [R1,#8]
4517BE:  LDR             R0, [R0,#0x50]
4517C0:  ADD.W           R0, R0, R9,LSL#3
4517C4:  STR             R1, [R0,#0x14]
4517C6:  LDR             R0, [R4,#8]
4517C8:  MLA.W           R0, R11, R8, R0
4517CC:  LDR             R1, [R5,#8]
4517CE:  LDR             R0, [R0,#0x50]
4517D0:  STR.W           LR, [SP,#0x60+var_5C]
4517D4:  ADD.W           R0, R0, R9,LSL#3
4517D8:  LDR.W           R1, [R1,R2,LSL#2]
4517DC:  STR             R1, [R0,#0x18]
4517DE:  LDR             R0, [R4,#8]
4517E0:  MLA.W           R0, R11, R8, R0
4517E4:  LDR             R1, [R5,#8]
4517E6:  ADD.W           R1, R1, R2,LSL#2
4517EA:  LDR             R1, [R1,#4]
4517EC:  LDR             R0, [R0,#0x50]
4517EE:  ADD.W           R0, R0, R9,LSL#3
4517F2:  STR             R1, [R0,#0x1C]
4517F4:  LDR             R0, [R4,#8]
4517F6:  MLA.W           R0, R11, R8, R0
4517FA:  LDR             R1, [R5,#8]
4517FC:  ADD.W           R1, R1, R2,LSL#2
451800:  LDR             R1, [R1,#8]
451802:  LDR             R0, [R0,#0x50]
451804:  ADD.W           R0, R0, R9,LSL#3
451808:  STR             R1, [R0,#0x20]
45180A:  LDR             R0, [SP,#0x60+var_50]
45180C:  CMP             R0, #1
45180E:  MOV             R0, R11
451810:  ITTT EQ
451812:  LDREQ           R0, [R5,#0x1C]
451814:  LDREQ           R1, [SP,#0x60+var_4C]
451816:  LDRHEQ.W        R0, [R0,R1,LSL#1]
45181A:  LDR             R2, [R5,#0x24]
45181C:  LDR             R1, [R4,#8]
45181E:  MLA.W           R1, R11, R8, R1
451822:  LDR.W           R2, [R2,R0,LSL#2]
451826:  ADD.W           R0, R0, R0,LSL#1
45182A:  STR             R2, [R1,#0x54]
45182C:  LDR             R1, [R5,#0x30]
45182E:  ADD.W           R0, R1, R0,LSL#2; this
451832:  VLDR            S22, [R0]
451836:  VLDR            S20, [R0,#4]
45183A:  VLDR            S18, [R0,#8]
45183E:  BLX             j__ZN12CPostEffects16IsVisionFXActiveEv; CPostEffects::IsVisionFXActive(void)
451842:  CBZ             R0, loc_45186C
451844:  LDR             R0, =(unk_6AE4BC - 0x45184A)
451846:  ADD             R0, PC; unk_6AE4BC
451848:  VLDR            S0, [R0]
45184C:  LDR             R0, =(unk_6AE4B8 - 0x451852)
45184E:  ADD             R0, PC; unk_6AE4B8
451850:  VLDR            S2, [R0]
451854:  LDR             R0, =(unk_6AE4B4 - 0x45185A)
451856:  ADD             R0, PC; unk_6AE4B4
451858:  VLDR            S4, [R0]
45185C:  B               loc_45189E
45185E:  ALIGN 0x10
451860:  DCFS 0.000015259
451864:  DCFS 32.0
451868:  DCFS 255.0
45186C:  LDR             R0, [SP,#0x60+var_60]
45186E:  VLDR            S0, [R0]
451872:  VLDR            S2, [R0,#4]
451876:  VMUL.F32        S4, S0, S16
45187A:  VLDR            S6, [R0,#8]
45187E:  LDR             R0, =(unk_6AE4B4 - 0x45188C)
451880:  VMUL.F32        S2, S2, S16
451884:  VMUL.F32        S0, S6, S16
451888:  ADD             R0, PC; unk_6AE4B4
45188A:  VSTR            S4, [R0]
45188E:  LDR             R0, =(unk_6AE4B8 - 0x451894)
451890:  ADD             R0, PC; unk_6AE4B8
451892:  VSTR            S2, [R0]
451896:  LDR             R0, =(unk_6AE4BC - 0x45189C)
451898:  ADD             R0, PC; unk_6AE4BC
45189A:  VSTR            S0, [R0]
45189E:  LDRD.W          R12, R5, [SP,#0x60+var_58]
4518A2:  MOVS            R3, #1
4518A4:  LDR             R0, [R5,#0x10]
4518A6:  ORR.W           R2, R3, R10,LSL#2
4518AA:  MOV.W           LR, #2
4518AE:  ADD.W           R12, R12, #6
4518B2:  LDRB.W          R0, [R0,R10,LSL#2]
4518B6:  VMOV            S6, R0
4518BA:  VCVT.F32.U32    S6, S6
4518BE:  LDR             R0, [R4,#8]
4518C0:  MLA.W           R0, R11, R8, R0
4518C4:  VMUL.F32        S6, S22, S6
4518C8:  LDR             R0, [R0,#0x50]
4518CA:  ADD.W           R0, R0, R9,LSL#3
4518CE:  VADD.F32        S6, S4, S6
4518D2:  VMIN.F32        D3, D3, D8
4518D6:  VCVT.U32.F32    S6, S6
4518DA:  VMOV            R1, S6
4518DE:  STRB.W          R1, [R0,#0x3C]
4518E2:  LDR             R1, [R5,#0x10]
4518E4:  LDR             R0, [R4,#8]
4518E6:  MLA.W           R0, R11, R8, R0
4518EA:  LDRB            R1, [R1,R2]
4518EC:  MOVS            R2, #2
4518EE:  ORR.W           R2, R2, R10,LSL#2
4518F2:  VMOV            S6, R1
4518F6:  LDR             R0, [R0,#0x50]
4518F8:  VCVT.F32.U32    S6, S6
4518FC:  ADD.W           R0, R0, R9,LSL#3
451900:  VMUL.F32        S6, S20, S6
451904:  VADD.F32        S6, S2, S6
451908:  VMIN.F32        D3, D3, D8
45190C:  VCVT.U32.F32    S6, S6
451910:  VMOV            R1, S6
451914:  STRB.W          R1, [R0,#0x3D]
451918:  LDR             R1, [R5,#0x10]
45191A:  LDR             R0, [R4,#8]
45191C:  MLA.W           R0, R11, R8, R0
451920:  LDRB            R1, [R1,R2]
451922:  ORR.W           R2, R3, R6,LSL#2
451926:  VMOV            S6, R1
45192A:  LDR             R0, [R0,#0x50]
45192C:  VCVT.F32.U32    S6, S6
451930:  ADD.W           R0, R0, R9,LSL#3
451934:  VMUL.F32        S6, S18, S6
451938:  VADD.F32        S6, S0, S6
45193C:  VMIN.F32        D3, D3, D8
451940:  VCVT.U32.F32    S6, S6
451944:  VMOV            R1, S6
451948:  STRB.W          R1, [R0,#0x3E]
45194C:  LDR             R1, [R5,#0x10]
45194E:  LDR             R0, [R4,#8]
451950:  MLA.W           R0, R11, R8, R0
451954:  LDRB.W          R1, [R1,R6,LSL#2]
451958:  VMOV            S6, R1
45195C:  LDR             R0, [R0,#0x50]
45195E:  VCVT.F32.U32    S6, S6
451962:  ADD.W           R0, R0, R9,LSL#3
451966:  VMUL.F32        S6, S22, S6
45196A:  VADD.F32        S6, S4, S6
45196E:  VMIN.F32        D3, D3, D8
451972:  VCVT.U32.F32    S6, S6
451976:  VMOV            R1, S6
45197A:  STRB.W          R1, [R0,#0x40]
45197E:  LDR             R1, [R5,#0x10]
451980:  LDR             R0, [R4,#8]
451982:  MLA.W           R0, R11, R8, R0
451986:  LDRB            R1, [R1,R2]
451988:  ORR.W           R2, LR, R6,LSL#2
45198C:  MOV             LR, R6
45198E:  VMOV            S6, R1
451992:  LDR             R0, [R0,#0x50]
451994:  VCVT.F32.U32    S6, S6
451998:  ADD.W           R0, R0, R9,LSL#3
45199C:  VMUL.F32        S6, S20, S6
4519A0:  VADD.F32        S6, S2, S6
4519A4:  VMIN.F32        D3, D3, D8
4519A8:  VCVT.U32.F32    S6, S6
4519AC:  VMOV            R1, S6
4519B0:  STRB.W          R1, [R0,#0x41]
4519B4:  LDR             R1, [R5,#0x10]
4519B6:  LDR             R0, [R4,#8]
4519B8:  MLA.W           R0, R11, R8, R0
4519BC:  LDRB            R1, [R1,R2]
4519BE:  VMOV            S6, R1
4519C2:  LDR             R0, [R0,#0x50]
4519C4:  VCVT.F32.U32    S6, S6
4519C8:  ADD.W           R0, R0, R9,LSL#3
4519CC:  VMUL.F32        S6, S18, S6
4519D0:  VADD.F32        S6, S0, S6
4519D4:  VMIN.F32        D3, D3, D8
4519D8:  VCVT.U32.F32    S6, S6
4519DC:  VMOV            R1, S6
4519E0:  STRB.W          R1, [R0,#0x42]
4519E4:  LDR             R1, [R5,#0x10]
4519E6:  LDR             R6, [SP,#0x60+var_5C]
4519E8:  LDR             R0, [R4,#8]
4519EA:  MLA.W           R0, R11, R8, R0
4519EE:  LDRB.W          R1, [R1,R6,LSL#2]
4519F2:  VMOV            S6, R1
4519F6:  LDR             R0, [R0,#0x50]
4519F8:  VCVT.F32.U32    S6, S6
4519FC:  ADD.W           R0, R0, R9,LSL#3
451A00:  VMUL.F32        S6, S22, S6
451A04:  VADD.F32        S4, S4, S6
451A08:  VMIN.F32        D2, D2, D8
451A0C:  VCVT.U32.F32    S4, S4
451A10:  VMOV            R1, S4
451A14:  STRB.W          R1, [R0,#0x44]
451A18:  ORR.W           R1, R3, R6,LSL#2
451A1C:  LDR             R2, [R5,#0x10]
451A1E:  MOVS            R3, #4
451A20:  LDR             R0, [R4,#8]
451A22:  MLA.W           R0, R11, R8, R0
451A26:  LDRB            R1, [R2,R1]
451A28:  VMOV            S4, R1
451A2C:  LDR             R0, [R0,#0x50]
451A2E:  VCVT.F32.U32    S4, S4
451A32:  ADD.W           R0, R0, R9,LSL#3
451A36:  VMUL.F32        S4, S20, S4
451A3A:  VADD.F32        S2, S2, S4
451A3E:  VMIN.F32        D1, D1, D8
451A42:  VCVT.U32.F32    S2, S2
451A46:  VMOV            R1, S2
451A4A:  STRB.W          R1, [R0,#0x45]
451A4E:  MOVS            R1, #2
451A50:  LDR             R2, [R5,#0x10]
451A52:  ORR.W           R1, R1, R6,LSL#2
451A56:  LDR             R0, [R4,#8]
451A58:  MLA.W           R0, R11, R8, R0
451A5C:  LDRB            R1, [R2,R1]
451A5E:  VMOV            S2, R1
451A62:  LDR             R0, [R0,#0x50]
451A64:  VCVT.F32.U32    S2, S2
451A68:  ADD.W           R0, R0, R9,LSL#3
451A6C:  VMUL.F32        S2, S18, S2
451A70:  VADD.F32        S0, S0, S2
451A74:  VMIN.F32        D0, D0, D8
451A78:  VCVT.U32.F32    S0, S0
451A7C:  VMOV            R1, S0
451A80:  STRB.W          R1, [R0,#0x46]
451A84:  LDR             R0, [R4,#8]
451A86:  MLA.W           R0, R11, R8, R0
451A8A:  LDR             R1, [R5,#0xC]
451A8C:  LDR.W           R1, [R1,R10,LSL#3]
451A90:  LDR             R0, [R0,#0x50]
451A92:  ADD.W           R0, R0, R9,LSL#3
451A96:  STR             R1, [R0,#0x24]
451A98:  ORR.W           R1, R3, R10,LSL#3
451A9C:  LDR             R0, [R4,#8]
451A9E:  MLA.W           R0, R11, R8, R0
451AA2:  LDR             R2, [R5,#0xC]
451AA4:  LDR             R1, [R2,R1]
451AA6:  LDR             R0, [R0,#0x50]
451AA8:  ADD.W           R0, R0, R9,LSL#3
451AAC:  STR             R1, [R0,#0x28]
451AAE:  LDR             R0, [R4,#8]
451AB0:  MLA.W           R0, R11, R8, R0
451AB4:  LDR             R1, [R5,#0xC]
451AB6:  LDR.W           R1, [R1,LR,LSL#3]
451ABA:  LDR             R0, [R0,#0x50]
451ABC:  ADD.W           R0, R0, R9,LSL#3
451AC0:  STR             R1, [R0,#0x2C]
451AC2:  ORR.W           R1, R3, LR,LSL#3
451AC6:  LDR             R0, [R4,#8]
451AC8:  MLA.W           R0, R11, R8, R0
451ACC:  LDR             R2, [R5,#0xC]
451ACE:  LDR             R1, [R2,R1]
451AD0:  LDR             R0, [R0,#0x50]
451AD2:  ADD.W           R0, R0, R9,LSL#3
451AD6:  STR             R1, [R0,#0x30]
451AD8:  LDR             R0, [R4,#8]
451ADA:  MLA.W           R0, R11, R8, R0
451ADE:  LDR             R1, [R5,#0xC]
451AE0:  LDR.W           R1, [R1,R6,LSL#3]
451AE4:  LDR             R0, [R0,#0x50]
451AE6:  ADD.W           R0, R0, R9,LSL#3
451AEA:  STR             R1, [R0,#0x34]
451AEC:  ORR.W           R1, R3, R6,LSL#3
451AF0:  LDR             R0, [R4,#8]
451AF2:  MLA.W           R0, R11, R8, R0
451AF6:  LDR             R2, [R5,#0xC]
451AF8:  LDR             R1, [R2,R1]
451AFA:  LDR             R0, [R0,#0x50]
451AFC:  ADD.W           R0, R0, R9,LSL#3
451B00:  STR             R1, [R0,#0x38]
451B02:  LDR             R0, [R4,#8]
451B04:  MLA.W           R0, R11, R8, R0
451B08:  LDRH.W          R1, [R0,#0x4E]
451B0C:  ADDS            R1, #1
451B0E:  STRH.W          R1, [R0,#0x4E]
451B12:  LDR             R1, [SP,#0x60+var_4C]
451B14:  LDRH            R0, [R5,#0x14]
451B16:  LDR             R6, [SP,#0x60+var_50]
451B18:  ADDS            R1, #1
451B1A:  CMP             R1, R0
451B1C:  BLT.W           loc_451710
451B20:  LDR.W           R8, [R4,#4]
451B24:  CMP.W           R8, #1
451B28:  BLT             loc_451B48
451B2A:  MOVS            R0, #0
451B2C:  MOVS            R1, #0x54 ; 'T'
451B2E:  LDR             R2, [R4,#8]
451B30:  ADDS            R0, #1
451B32:  LDR             R2, [R2,R1]
451B34:  ADDS            R1, #0x74 ; 't'
451B36:  CMP             R2, #0
451B38:  ITTTT NE
451B3A:  LDRNE           R3, [R2,#0x54]
451B3C:  ADDNE           R3, #1
451B3E:  STRNE           R3, [R2,#0x54]
451B40:  LDRNE.W         R8, [R4,#4]
451B44:  CMP             R0, R8
451B46:  BLT             loc_451B2E
451B48:  ADD             SP, SP, #0x20 ; ' '
451B4A:  VPOP            {D8-D11}
451B4E:  ADD             SP, SP, #4
451B50:  POP.W           {R8-R11}
451B54:  POP             {R4-R7,PC}
