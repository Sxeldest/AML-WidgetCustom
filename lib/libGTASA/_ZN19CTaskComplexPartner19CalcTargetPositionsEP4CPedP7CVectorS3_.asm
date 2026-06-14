; =========================================================
; Game Engine Function: _ZN19CTaskComplexPartner19CalcTargetPositionsEP4CPedP7CVectorS3_
; Address            : 0x5347FC - 0x534986
; =========================================================

5347FC:  PUSH            {R4-R7,LR}
5347FE:  ADD             R7, SP, #0xC
534800:  PUSH.W          {R8}
534804:  VPUSH           {D8-D15}
534808:  SUB             SP, SP, #0x10
53480A:  MOV             R6, R0
53480C:  MOV             R5, R2
53480E:  LDR             R0, [R6,#0x38]
534810:  MOV             R8, R3
534812:  LDR             R2, [R1,#0x14]
534814:  LDR             R3, [R0,#0x14]
534816:  ADD.W           R4, R2, #0x30 ; '0'
53481A:  CMP             R2, #0
53481C:  IT EQ
53481E:  ADDEQ           R4, R1, #4
534820:  ADD.W           R1, R3, #0x30 ; '0'
534824:  CMP             R3, #0
534826:  VLDR            S16, [R4]
53482A:  VLDR            S18, [R4,#4]
53482E:  VLDR            S22, [R4,#8]
534832:  IT EQ
534834:  ADDEQ           R1, R0, #4
534836:  VLDR            S20, [R1]
53483A:  ADD             R0, SP, #0x60+var_5C; this
53483C:  VLDR            S24, [R1,#4]
534840:  VLDR            S0, [R1,#8]
534844:  VSUB.F32        S28, S20, S16
534848:  VSUB.F32        S26, S24, S18
53484C:  VSUB.F32        S30, S0, S22
534850:  VSTR            S26, [SP,#0x60+var_58]
534854:  VSTR            S28, [SP,#0x60+var_5C]
534858:  VSTR            S30, [SP,#0x60+var_54]
53485C:  VLDR            S17, [R6,#0x3C]
534860:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
534864:  VMUL.F32        S2, S17, S26
534868:  LDR             R0, [R6]
53486A:  VMUL.F32        S4, S17, S28
53486E:  VMUL.F32        S0, S30, S17
534872:  LDR             R1, [R0,#0x14]
534874:  MOV             R0, R6
534876:  VADD.F32        S26, S18, S2
53487A:  VADD.F32        S28, S16, S4
53487E:  VADD.F32        S22, S22, S0
534882:  BLX             R1
534884:  VLDR            S0, [SP,#0x60+var_5C]
534888:  MOVW            R1, #0x4B4
53488C:  VLDR            S2, [SP,#0x60+var_58]
534890:  CMP             R0, R1
534892:  VLDR            S4, [SP,#0x60+var_54]
534896:  BEQ             loc_53493A
534898:  VMOV.F32        S8, #0.75
53489C:  VLDR            S6, =0.7
5348A0:  MOV.W           R0, #0xFFFFFFFF
5348A4:  VSUB.F32        S10, S26, S18
5348A8:  VSUB.F32        S12, S28, S16
5348AC:  VMUL.F32        S10, S10, S10
5348B0:  VMUL.F32        S12, S12, S12
5348B4:  VADD.F32        S10, S12, S10
5348B8:  VSQRT.F32       S10, S10
5348BC:  VCMPE.F32       S10, S6
5348C0:  VMRS            APSR_nzcv, FPSCR
5348C4:  BGE             loc_5348E6
5348C6:  VSUB.F32        S10, S8, S10
5348CA:  MOVS            R1, #1
5348CC:  VMUL.F32        S12, S10, S4
5348D0:  VMUL.F32        S14, S10, S2
5348D4:  VMUL.F32        S10, S10, S0
5348D8:  VADD.F32        S22, S22, S12
5348DC:  VADD.F32        S26, S26, S14
5348E0:  VADD.F32        S28, S28, S10
5348E4:  B               loc_5348E8
5348E6:  MOVS            R1, #0
5348E8:  VSUB.F32        S10, S26, S24
5348EC:  VSUB.F32        S12, S28, S20
5348F0:  VMUL.F32        S10, S10, S10
5348F4:  VMUL.F32        S12, S12, S12
5348F8:  VADD.F32        S10, S12, S10
5348FC:  VSQRT.F32       S10, S10
534900:  VCMPE.F32       S10, S6
534904:  VMRS            APSR_nzcv, FPSCR
534908:  BGE             loc_534928
53490A:  VSUB.F32        S10, S8, S10
53490E:  VMUL.F32        S12, S10, S4
534912:  VMUL.F32        S14, S10, S2
534916:  VMUL.F32        S10, S10, S0
53491A:  VSUB.F32        S22, S22, S12
53491E:  VSUB.F32        S26, S26, S14
534922:  VSUB.F32        S28, S28, S10
534926:  B               loc_53492C
534928:  CMP             R1, #1
53492A:  BNE             loc_53493A
53492C:  ADDS            R0, #1
53492E:  CMP             R0, #9
534930:  BLE             loc_5348A4
534932:  MOVS            R0, #1
534934:  STRB.W          R0, [R6,#0x5C]
534938:  B               loc_53497A
53493A:  VMOV.F32        S6, #0.5
53493E:  VMUL.F32        S2, S2, S6
534942:  VMUL.F32        S0, S0, S6
534946:  VMUL.F32        S4, S4, S6
53494A:  VSUB.F32        S8, S26, S2
53494E:  VSUB.F32        S10, S28, S0
534952:  VSUB.F32        S6, S22, S4
534956:  VADD.F32        S2, S26, S2
53495A:  VADD.F32        S0, S28, S0
53495E:  VADD.F32        S4, S22, S4
534962:  VSTR            S10, [R5]
534966:  VSTR            S8, [R5,#4]
53496A:  VSTR            S6, [R5,#8]
53496E:  VSTR            S0, [R8]
534972:  VSTR            S2, [R8,#4]
534976:  VSTR            S4, [R8,#8]
53497A:  ADD             SP, SP, #0x10
53497C:  VPOP            {D8-D15}
534980:  POP.W           {R8}
534984:  POP             {R4-R7,PC}
