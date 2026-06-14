; =========================================================
; Game Engine Function: _ZN5CRope18UpdateWeightInRopeE7CVectorfPS0_
; Address            : 0x4146E8 - 0x414A48
; =========================================================

4146E8:  PUSH            {R4-R7,LR}
4146EA:  ADD             R7, SP, #0xC
4146EC:  PUSH.W          {R8}
4146F0:  VPUSH           {D8-D10}
4146F4:  SUB             SP, SP, #0x10
4146F6:  MOV             R4, R0
4146F8:  VMOV            S0, R2
4146FC:  LDRB.W          R5, [R4,#0x324]
414700:  VMOV            S4, R1
414704:  ADD.W           R0, R5, R5,LSL#1
414708:  ADD.W           R0, R4, R0,LSL#2
41470C:  VLDR            S18, [R0,#4]
414710:  VLDR            S16, [R0]
414714:  VSUB.F32        S2, S0, S18
414718:  VLDR            S20, [R0,#8]
41471C:  VSUB.F32        S0, S4, S16
414720:  RSB.W           R0, R5, #0x1F
414724:  VMOV            S4, R3
414728:  VSUB.F32        S4, S4, S20
41472C:  VMUL.F32        S6, S2, S2
414730:  VMUL.F32        S8, S0, S0
414734:  VMUL.F32        S10, S4, S4
414738:  VADD.F32        S6, S8, S6
41473C:  VMOV            S8, R0
414740:  ADD.W           R0, R4, #0x174
414744:  VCVT.F32.S32    S8, S8
414748:  VADD.F32        S6, S6, S10
41474C:  VLDR            S10, [R4,#0x30C]
414750:  VSTR            S4, [SP,#0x38+var_2C]
414754:  VSTR            S2, [SP,#0x38+var_30]
414758:  VMUL.F32        S8, S10, S8
41475C:  VSTR            S0, [SP,#0x38+var_34]
414760:  STM             R0!, {R1-R3}
414762:  VSQRT.F32       S6, S6
414766:  VCMPE.F32       S6, S8
41476A:  VMRS            APSR_nzcv, FPSCR
41476E:  BGE.W           loc_41498A
414772:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x414784)
414774:  VMOV.F32        S0, #1.0
414778:  ADD.W           R12, R4, #0x178
41477C:  MOV.W           LR, #0
414780:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
414782:  MOVS            R2, #1
414784:  LDR.W           R8, [R0]; CTimer::ms_fTimeStep ...
414788:  UXTAB.W         R0, R2, R5
41478C:  CMP             R0, #0x1E
41478E:  BHI.W           loc_4148F4
414792:  MOVS            R0, #0x1F
414794:  ADD.W           R6, R0, R0,LSL#1
414798:  ADD.W           R6, R4, R6,LSL#2
41479C:  VLDR            S2, [R6,#-0xC]
4147A0:  VLDR            S8, [R6]
4147A4:  VLDR            S6, [R6,#-8]
4147A8:  VLDR            S10, [R6,#4]
4147AC:  VSUB.F32        S1, S8, S2
4147B0:  VLDR            S4, [R6,#-4]
4147B4:  VSUB.F32        S14, S10, S6
4147B8:  VLDR            S12, [R6,#8]
4147BC:  VSUB.F32        S3, S12, S4
4147C0:  VMUL.F32        S1, S1, S1
4147C4:  VMUL.F32        S14, S14, S14
4147C8:  VMUL.F32        S3, S3, S3
4147CC:  VADD.F32        S14, S1, S14
4147D0:  VLDR            S1, [R4,#0x30C]
4147D4:  VADD.F32        S14, S14, S3
4147D8:  VSQRT.F32       S14, S14
4147DC:  VCMPE.F32       S14, S1
4147E0:  VMRS            APSR_nzcv, FPSCR
4147E4:  BLE             loc_41485E
4147E6:  VDIV.F32        S14, S1, S14
4147EA:  SUBS            R5, R6, #4
4147EC:  SUB.W           R1, R6, #8
4147F0:  SUBS            R6, #0xC
4147F2:  SUBS            R3, R0, #1
4147F4:  VSUB.F32        S1, S2, S8
4147F8:  VSUB.F32        S3, S6, S10
4147FC:  VSUB.F32        S5, S4, S12
414800:  VMUL.F32        S1, S1, S14
414804:  VMUL.F32        S3, S3, S14
414808:  VMUL.F32        S14, S5, S14
41480C:  VADD.F32        S8, S8, S1
414810:  VADD.F32        S10, S10, S3
414814:  VADD.F32        S12, S12, S14
414818:  VSTR            S8, [R6]
41481C:  VSUB.F32        S2, S8, S2
414820:  VSTR            S10, [R1]
414824:  VSUB.F32        S6, S10, S6
414828:  VSTR            S12, [R5]
41482C:  VSUB.F32        S4, S12, S4
414830:  VLDR            S14, [R8]
414834:  ADD.W           R1, R3, R3,LSL#1
414838:  VDIV.F32        S14, S0, S14
41483C:  ADD.W           R1, R4, R1,LSL#2
414840:  VMUL.F32        S2, S2, S14
414844:  VMUL.F32        S6, S6, S14
414848:  VMUL.F32        S4, S4, S14
41484C:  VSTR            S2, [R1,#0x180]
414850:  VSTR            S6, [R1,#0x184]
414854:  VSTR            S4, [R1,#0x188]
414858:  LDRB.W          R5, [R4,#0x324]
41485C:  B               loc_414860
41485E:  MOVS            R0, #0
414860:  UXTAB.W         R6, R2, R5
414864:  SUBS            R0, #1
414866:  CMP             R0, R6
414868:  BGT             loc_414794
41486A:  CMP             R6, #0x1E
41486C:  BHI             loc_4148F4
41486E:  UXTB            R0, R5
414870:  LSLS            R6, R0, #1
414872:  UXTAB.W         R6, R6, R5
414876:  ADD.W           R5, R4, R6,LSL#2
41487A:  VLDR            S2, [R5]
41487E:  VLDR            S8, [R5,#0xC]
414882:  VLDR            S6, [R5,#4]
414886:  VLDR            S10, [R5,#0x10]
41488A:  VSUB.F32        S8, S8, S2
41488E:  VLDR            S4, [R5,#8]
414892:  VSUB.F32        S10, S10, S6
414896:  VLDR            S12, [R5,#0x14]
41489A:  VSUB.F32        S12, S12, S4
41489E:  VMUL.F32        S1, S8, S8
4148A2:  VMUL.F32        S14, S10, S10
4148A6:  VMUL.F32        S3, S12, S12
4148AA:  VADD.F32        S14, S1, S14
4148AE:  VLDR            S1, [R4,#0x30C]
4148B2:  VADD.F32        S14, S14, S3
4148B6:  VSQRT.F32       S14, S14
4148BA:  VCMPE.F32       S14, S1
4148BE:  VMRS            APSR_nzcv, FPSCR
4148C2:  BLE             loc_4148EC
4148C4:  VDIV.F32        S14, S1, S14
4148C8:  VMUL.F32        S10, S10, S14
4148CC:  VMUL.F32        S8, S8, S14
4148D0:  VMUL.F32        S12, S12, S14
4148D4:  VADD.F32        S6, S6, S10
4148D8:  VADD.F32        S2, S2, S8
4148DC:  VADD.F32        S4, S4, S12
4148E0:  VSTR            S2, [R5,#0xC]
4148E4:  VSTR            S6, [R5,#0x10]
4148E8:  VSTR            S4, [R5,#0x14]
4148EC:  ADDS            R0, #1
4148EE:  ADDS            R5, #0xC
4148F0:  CMP             R0, #0x1E
4148F2:  BLT             loc_41487A
4148F4:  LDRB.W          R5, [R4,#0x324]
4148F8:  ADD.W           LR, LR, #1
4148FC:  CMP.W           LR, #6
414900:  BNE.W           loc_414788
414904:  ADDS            R0, R5, #1
414906:  CMP             R0, #0x1E
414908:  BHI             loc_414986
41490A:  ADD.W           R0, R4, #0x168
41490E:  VLDR            D16, [R12]
414912:  VLDR            S0, [R4,#0x174]
414916:  MOVS            R1, #0x1F
414918:  VLDR            S2, [R0]
41491C:  VLDR            D17, [R0,#4]
414920:  VSUB.F32        S4, S0, S2
414924:  VSUB.F32        D18, D16, D17
414928:  VMUL.F32        D3, D18, D18
41492C:  VMUL.F32        S4, S4, S4
414930:  VADD.F32        S4, S4, S6
414934:  VADD.F32        S4, S4, S7
414938:  VLDR            S6, [R4,#0x30C]
41493C:  VSQRT.F32       S4, S4
414940:  VCMPE.F32       S4, S6
414944:  VMRS            APSR_nzcv, FPSCR
414948:  BLE             loc_414986
41494A:  VDIV.F32        S4, S6, S4
41494E:  ADDS            R2, R0, #4
414950:  SUBS            R1, #1
414952:  VSUB.F32        S2, S2, S0
414956:  VSUB.F32        D17, D17, D16
41495A:  VMUL.F32        D17, D17, D2[0]
41495E:  VMUL.F32        S2, S2, S4
414962:  VADD.F32        D16, D16, D17
414966:  VADD.F32        S0, S0, S2
41496A:  VST1.32         {D16[0]}, [R2@32]
41496E:  ADD.W           R2, R0, #8
414972:  VST1.32         {D16[1]}, [R2@32]
414976:  VSTR            S0, [R0]
41497A:  SUBS            R0, #0xC
41497C:  LDRB.W          R2, [R4,#0x324]
414980:  ADDS            R2, #1
414982:  CMP             R1, R2
414984:  BGT             loc_414918
414986:  MOVS            R0, #0
414988:  B               loc_414A3C
41498A:  VDIV.F32        S6, S8, S6
41498E:  LDR             R0, [R7,#arg_4]
414990:  VMUL.F32        S2, S6, S2
414994:  VMUL.F32        S0, S6, S0
414998:  VMUL.F32        S4, S6, S4
41499C:  VADD.F32        S2, S18, S2
4149A0:  VADD.F32        S0, S16, S0
4149A4:  VADD.F32        S4, S20, S4
4149A8:  VSTR            S0, [R0]
4149AC:  VSTR            S2, [R0,#4]
4149B0:  VSTR            S4, [R0,#8]
4149B4:  LDRB.W          R0, [R4,#0x324]
4149B8:  CMP             R0, #0x1E
4149BA:  BHI             loc_414A3A
4149BC:  ADD.W           R1, R0, R0,LSL#1
4149C0:  SUBS            R5, R0, #1
4149C2:  ADD.W           R8, SP, #0x38+var_34
4149C6:  ADD.W           R1, R4, R1,LSL#2
4149CA:  ADD.W           R6, R1, #0xC
4149CE:  MOV             R0, R8; this
4149D0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4149D4:  VLDR            S0, [SP,#0x38+var_34]
4149D8:  VLDR            S6, [R4,#0x30C]
4149DC:  VLDR            S2, [SP,#0x38+var_30]
4149E0:  VLDR            S4, [SP,#0x38+var_2C]
4149E4:  VMUL.F32        S0, S6, S0
4149E8:  VMUL.F32        S2, S6, S2
4149EC:  VMUL.F32        S4, S6, S4
4149F0:  VSTR            S0, [SP,#0x38+var_34]
4149F4:  VSTR            S2, [SP,#0x38+var_30]
4149F8:  VSTR            S4, [SP,#0x38+var_2C]
4149FC:  LDRB.W          R0, [R4,#0x324]
414A00:  SUBS            R0, R5, R0
414A02:  ADDS            R5, #1
414A04:  ADDS            R0, #2
414A06:  CMP             R5, #0x1E
414A08:  VMOV            S6, R0
414A0C:  VCVT.F32.S32    S6, S6
414A10:  VMUL.F32        S2, S2, S6
414A14:  VMUL.F32        S0, S0, S6
414A18:  VMUL.F32        S4, S4, S6
414A1C:  VADD.F32        S2, S18, S2
414A20:  VADD.F32        S0, S16, S0
414A24:  VADD.F32        S4, S20, S4
414A28:  VSTR            S0, [R6]
414A2C:  VSTR            S2, [R6,#4]
414A30:  VSTR            S4, [R6,#8]
414A34:  ADD.W           R6, R6, #0xC
414A38:  BLT             loc_4149CE
414A3A:  MOVS            R0, #1
414A3C:  ADD             SP, SP, #0x10
414A3E:  VPOP            {D8-D10}
414A42:  POP.W           {R8}
414A46:  POP             {R4-R7,PC}
