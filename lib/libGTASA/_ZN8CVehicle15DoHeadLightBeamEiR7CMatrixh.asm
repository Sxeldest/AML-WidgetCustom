; =========================================================
; Game Engine Function: _ZN8CVehicle15DoHeadLightBeamEiR7CMatrixh
; Address            : 0x5906D0 - 0x590AB4
; =========================================================

5906D0:  PUSH            {R4-R7,LR}
5906D2:  ADD             R7, SP, #0xC
5906D4:  PUSH.W          {R8-R10}
5906D8:  VPUSH           {D8-D14}
5906DC:  SUB             SP, SP, #0x40
5906DE:  MOV             R5, R0
5906E0:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5906EE)
5906E4:  MOV             R4, R2
5906E6:  LDRSH.W         R2, [R5,#0x26]
5906EA:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5906EC:  MOV             R6, R3
5906EE:  CMP             R1, #1
5906F0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5906F2:  LDR.W           R0, [R0,R2,LSL#2]
5906F6:  ADD.W           R2, R1, R1,LSL#1
5906FA:  LDR             R0, [R0,#0x74]
5906FC:  ADD.W           R0, R0, R2,LSL#3
590700:  VLDR            D16, [R0]
590704:  LDR             R0, [R0,#8]
590706:  STR             R0, [SP,#0x90+var_58]
590708:  VSTR            D16, [SP,#0x90+var_60]
59070C:  BNE             loc_59073A
59070E:  VLDR            S0, [SP,#0x90+var_60]
590712:  VCMP.F32        S0, #0.0
590716:  VMRS            APSR_nzcv, FPSCR
59071A:  ITTT EQ
59071C:  VLDREQ          S0, [SP,#0x90+var_60+4]
590720:  VCMPEQ.F32      S0, #0.0
590724:  VMRSEQ          APSR_nzcv, FPSCR
590728:  BNE             loc_59073A
59072A:  VLDR            S0, [SP,#0x90+var_58]
59072E:  VCMP.F32        S0, #0.0
590732:  VMRS            APSR_nzcv, FPSCR
590736:  BEQ.W           loc_590AA8
59073A:  ADD             R0, SP, #0x90+var_6C
59073C:  ADD             R2, SP, #0x90+var_60
59073E:  MOV             R1, R4
590740:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
590744:  CBZ             R6, loc_590754
590746:  VLDR            S0, [SP,#0x90+var_6C]
59074A:  VLDR            S2, [SP,#0x90+var_68]
59074E:  VLDR            S4, [SP,#0x90+var_64]
590752:  B               loc_590798
590754:  VLDR            S0, [SP,#0x90+var_60]
590758:  VLDR            S2, [R4]
59075C:  VADD.F32        S0, S0, S0
590760:  VLDR            S4, [R4,#4]
590764:  VLDR            S6, [R4,#8]
590768:  VLDR            S8, [SP,#0x90+var_68]
59076C:  VLDR            S10, [SP,#0x90+var_64]
590770:  VMUL.F32        S2, S2, S0
590774:  VMUL.F32        S4, S0, S4
590778:  VMUL.F32        S6, S0, S6
59077C:  VLDR            S0, [SP,#0x90+var_6C]
590780:  VSUB.F32        S0, S0, S2
590784:  VSUB.F32        S2, S8, S4
590788:  VSUB.F32        S4, S10, S6
59078C:  VSTR            S0, [SP,#0x90+var_6C]
590790:  VSTR            S2, [SP,#0x90+var_68]
590794:  VSTR            S4, [SP,#0x90+var_64]
590798:  LDR             R0, =(TheCamera_ptr - 0x5907A2)
59079A:  ADD.W           R8, SP, #0x90+var_78
59079E:  ADD             R0, PC; TheCamera_ptr
5907A0:  LDR             R0, [R0]; TheCamera
5907A2:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
5907A4:  ADD.W           R2, R1, #0x30 ; '0'
5907A8:  CMP             R1, #0
5907AA:  IT EQ
5907AC:  ADDEQ           R2, R0, #4
5907AE:  MOV             R0, R8; this
5907B0:  VLDR            S6, [R2]
5907B4:  VLDR            S8, [R2,#4]
5907B8:  VLDR            S10, [R2,#8]
5907BC:  VSUB.F32        S0, S6, S0
5907C0:  VSUB.F32        S2, S8, S2
5907C4:  VSUB.F32        S4, S10, S4
5907C8:  VSTR            S0, [SP,#0x90+var_78]
5907CC:  VSTR            S2, [SP,#0x90+var_74]
5907D0:  VSTR            S4, [SP,#0x90+var_70]
5907D4:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
5907D8:  MOVS            R0, #8
5907DA:  MOVS            R1, #0
5907DC:  VLDR            S16, [R4,#0x10]
5907E0:  VLDR            S20, [R4,#0x14]
5907E4:  VLDR            S18, [R4,#0x18]
5907E8:  VLDR            S22, [SP,#0x90+var_78]
5907EC:  VLDR            S26, [SP,#0x90+var_74]
5907F0:  VLDR            S24, [SP,#0x90+var_70]
5907F4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5907F8:  MOVS            R0, #6
5907FA:  MOVS            R1, #1
5907FC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590800:  MOVS            R0, #0xC
590802:  MOVS            R1, #1
590804:  MOV.W           R10, #0xC
590808:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59080C:  MOVS            R0, #0xA
59080E:  MOVS            R1, #5
590810:  MOV.W           R9, #5
590814:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590818:  MOVS            R0, #0xB
59081A:  MOVS            R1, #2
59081C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590820:  MOVS            R0, #7
590822:  MOVS            R1, #2
590824:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590828:  MOVS            R0, #1
59082A:  MOVS            R1, #0
59082C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590830:  MOVS            R0, #0x14
590832:  MOVS            R1, #1
590834:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590838:  MOVS            R0, #0x1D
59083A:  MOVS            R1, #5
59083C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590840:  MOVS            R0, #0x1E
590842:  MOVS            R1, #0
590844:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590848:  VMOV.F32        S28, #0.5
59084C:  LDRH            R0, [R5,#0x26]
59084E:  MOVW            R1, #0x212
590852:  VLDR            S0, =0.15
590856:  CMP             R0, R1
590858:  ADD             R5, SP, #0x90+var_84
59085A:  MOV             R0, R5; this
59085C:  IT EQ
59085E:  VMOVEQ.F32      S0, S28
590862:  VLDR            S2, [R4,#0x20]
590866:  VLDR            S4, [R4,#0x24]
59086A:  VLDR            S6, [R4,#0x28]
59086E:  VMUL.F32        S2, S2, S0
590872:  VMUL.F32        S4, S0, S4
590876:  VLDR            S8, [R4,#0x10]
59087A:  VMUL.F32        S0, S0, S6
59087E:  VLDR            S10, [R4,#0x14]
590882:  VLDR            S12, [R4,#0x18]
590886:  VSUB.F32        S2, S8, S2
59088A:  VSUB.F32        S4, S10, S4
59088E:  VSUB.F32        S0, S12, S0
590892:  VSTR            S4, [SP,#0x90+var_80]
590896:  VSTR            S2, [SP,#0x90+var_84]
59089A:  VSTR            S0, [SP,#0x90+var_7C]
59089E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5908A2:  MOV             R6, SP
5908A4:  MOV             R1, R5; CVector *
5908A6:  MOV             R0, R6; CVector *
5908A8:  MOV             R2, R8
5908AA:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5908AE:  MOV             R0, R6; this
5908B0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5908B4:  VMUL.F32        S6, S26, S20
5908B8:  VLDR            S0, [R4,#0x10]
5908BC:  VMUL.F32        S8, S22, S16
5908C0:  VLDR            S2, [R4,#0x14]
5908C4:  VMUL.F32        S10, S24, S18
5908C8:  VLDR            S4, [R4,#0x18]
5908CC:  LDR             R0, =(TempBufferRenderIndexList_ptr - 0x5908D8)
5908CE:  ADR             R2, dword_590AC0
5908D0:  VLDR            S12, [SP,#0x90+var_68]
5908D4:  ADD             R0, PC; TempBufferRenderIndexList_ptr
5908D6:  VLDR            S14, [SP,#0x90+var_64]
5908DA:  LDR             R3, =(TempVertexBuffer_ptr - 0x5908EE)
5908DC:  LDR             R5, [R0]; TempBufferRenderIndexList
5908DE:  VADD.F32        S6, S8, S6
5908E2:  VLDR            S8, =0.1
5908E6:  VLD1.64         {D16-D17}, [R2@128]
5908EA:  ADD             R3, PC; TempVertexBuffer_ptr
5908EC:  VMUL.F32        S2, S2, S8
5908F0:  MOV             R2, R5
5908F2:  VMUL.F32        S4, S4, S8
5908F6:  VST1.16         {D16-D17}, [R2]!
5908FA:  VMUL.F32        S0, S0, S8
5908FE:  VLDR            S8, [SP,#0x90+var_6C]
590902:  LDR             R0, [R3]; TempVertexBuffer
590904:  MOVS            R3, #4
590906:  VADD.F32        S6, S6, S10
59090A:  STRH            R3, [R2]
59090C:  VMOV.F32        S10, #1.0
590910:  MOV.W           R2, #0x20000
590914:  VSUB.F32        S2, S12, S2
590918:  STR.W           R2, [R5,#(dword_A7A1EA - 0xA7A1D8)]
59091C:  VSUB.F32        S4, S14, S4
590920:  VLDR            S14, [SP,#0x90+var_84]
590924:  VSUB.F32        S0, S8, S0
590928:  VLDR            S1, [SP,#0x90+var_7C]
59092C:  VLDR            S9, [SP,#0x90+var_90]
590930:  VMOV.F32        S12, #3.0
590934:  VLDR            S11, [SP,#0x90+var_8C]
590938:  VABS.F32        S6, S6
59093C:  VLDR            S15, [SP,#0x90+var_88]
590940:  LDR             R2, =(TempBufferIndicesStored_ptr - 0x59094A)
590942:  VLDR            S8, =0.2
590946:  ADD             R2, PC; TempBufferIndicesStored_ptr
590948:  VLDR            S7, =0.05
59094C:  VSTR            S0, [SP,#0x90+var_6C]
590950:  VMUL.F32        S3, S14, S8
590954:  VSTR            S2, [SP,#0x90+var_68]
590958:  VMUL.F32        S14, S14, S12
59095C:  VSTR            S4, [SP,#0x90+var_64]
590960:  VMUL.F32        S13, S9, S7
590964:  VSUB.F32        S6, S10, S6
590968:  VLDR            S10, =32.0
59096C:  LDR             R6, [R2]; TempBufferIndicesStored
59096E:  VMUL.F32        S9, S9, S28
590972:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x59097C)
590974:  VADD.F32        S3, S3, S0
590978:  ADD             R1, PC; TempBufferVerticesStored_ptr
59097A:  VADD.F32        S14, S14, S0
59097E:  VSUB.F32        S16, S0, S13
590982:  LDR             R1, [R1]; TempBufferVerticesStored
590984:  VMUL.F32        S6, S6, S10
590988:  VLDR            S10, [SP,#0x90+var_80]
59098C:  VADD.F32        S0, S13, S0
590990:  VMUL.F32        S5, S10, S8
590994:  VMUL.F32        S8, S1, S8
590998:  VMUL.F32        S1, S1, S12
59099C:  VMUL.F32        S10, S10, S12
5909A0:  VMUL.F32        S12, S11, S7
5909A4:  VCVT.U32.F32    S6, S6
5909A8:  STRH            R3, [R5,#(word_A7A1EE - 0xA7A1D8)]
5909AA:  VMUL.F32        S7, S15, S7
5909AE:  MOV             R3, #0xFFFFFF
5909B2:  VMUL.F32        S15, S15, S28
5909B6:  STR.W           R9, [R1]
5909BA:  VMUL.F32        S11, S11, S28
5909BE:  MOVS            R1, #5
5909C0:  VADD.F32        S1, S1, S4
5909C4:  STR.W           R10, [R6]
5909C8:  VADD.F32        S10, S10, S2
5909CC:  VSUB.F32        S13, S14, S9
5909D0:  VMOV            R2, S6
5909D4:  VSUB.F32        S6, S2, S12
5909D8:  VADD.F32        S5, S5, S2
5909DC:  VADD.F32        S2, S12, S2
5909E0:  VADD.F32        S8, S8, S4
5909E4:  VSUB.F32        S18, S4, S7
5909E8:  VADD.F32        S4, S7, S4
5909EC:  VSUB.F32        S7, S10, S11
5909F0:  VSUB.F32        S12, S1, S15
5909F4:  VADD.F32        S10, S10, S11
5909F8:  VADD.F32        S14, S14, S9
5909FC:  ORR.W           R2, R3, R2,LSL#24
590A00:  STR             R2, [R0,#(dword_A5A1F0 - 0xA5A1D8)]
590A02:  STR             R2, [R0,#(dword_A5A214 - 0xA5A1D8)]
590A04:  STR             R3, [R0,#(dword_A5A238 - 0xA5A1D8)]
590A06:  VSTR            S16, [R0]
590A0A:  VSTR            S6, [R0,#4]
590A0E:  VADD.F32        S6, S1, S15
590A12:  VSTR            S18, [R0,#8]
590A16:  VSTR            S0, [R0,#0x24]
590A1A:  VSTR            S2, [R0,#0x28]
590A1E:  VSTR            S4, [R0,#0x2C]
590A22:  VSTR            S13, [R0,#0x48]
590A26:  VSTR            S7, [R0,#0x4C]
590A2A:  VSTR            S12, [R0,#0x50]
590A2E:  STR.W           R3, [R0,#(dword_A5A25C - 0xA5A1D8)]
590A32:  MOVS            R3, #0x18
590A34:  VSTR            S14, [R0,#0x6C]
590A38:  VSTR            S10, [R0,#0x70]
590A3C:  VSTR            S6, [R0,#0x74]
590A40:  STR.W           R2, [R0,#(dword_A5A280 - 0xA5A1D8)]
590A44:  MOVS            R2, #0
590A46:  VSTR            S3, [R0,#0x90]
590A4A:  VSTR            S5, [R0,#0x94]
590A4E:  VSTR            S8, [R0,#0x98]
590A52:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
590A56:  CBZ             R0, loc_590A70
590A58:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x590A60)
590A5A:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x590A62)
590A5C:  ADD             R0, PC; TempBufferIndicesStored_ptr
590A5E:  ADD             R1, PC; TempBufferRenderIndexList_ptr
590A60:  LDR             R0, [R0]; TempBufferIndicesStored
590A62:  LDR             R1, [R1]; TempBufferRenderIndexList
590A64:  LDR             R2, [R0]
590A66:  MOVS            R0, #3
590A68:  BLX             j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
590A6C:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
590A70:  MOVS            R0, #1
590A72:  MOVS            R1, #0
590A74:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590A78:  MOVS            R0, #8
590A7A:  MOVS            R1, #1
590A7C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590A80:  MOVS            R0, #6
590A82:  MOVS            R1, #1
590A84:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590A88:  MOVS            R0, #0xA
590A8A:  MOVS            R1, #5
590A8C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590A90:  MOVS            R0, #0xB
590A92:  MOVS            R1, #6
590A94:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590A98:  MOVS            R0, #0xC
590A9A:  MOVS            R1, #0
590A9C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590AA0:  MOVS            R0, #0x14
590AA2:  MOVS            R1, #2
590AA4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
590AA8:  ADD             SP, SP, #0x40 ; '@'
590AAA:  VPOP            {D8-D14}
590AAE:  POP.W           {R8-R10}
590AB2:  POP             {R4-R7,PC}
