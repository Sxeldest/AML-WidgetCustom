; =========================================================
; Game Engine Function: _ZN11CWaterLevel17RenderWakeSegmentER9CVector2DS1_S1_S1_RfS2_S2_S2_S2_
; Address            : 0x59B640 - 0x59BBCA
; =========================================================

59B640:  PUSH            {R4-R7,LR}
59B642:  ADD             R7, SP, #0xC
59B644:  PUSH.W          {R8-R11}
59B648:  SUB             SP, SP, #4
59B64A:  VPUSH           {D8-D15}
59B64E:  SUB             SP, SP, #0x88
59B650:  ADD.W           R12, SP, #0xE8+var_BC
59B654:  VLDR            S2, =0.0015339
59B658:  STM.W           R12, {R0-R3}
59B65C:  MOV.W           R11, #0
59B660:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x59B66C)
59B664:  LDR.W           R2, =(TempBufferIndicesStored_ptr - 0x59B672)
59B668:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
59B66A:  LDR.W           R1, =(aAlphaFade_ptr - 0x59B67A)
59B66E:  ADD             R2, PC; TempBufferIndicesStored_ptr
59B670:  LDR.W           R3, =(TempBufferVerticesStored_ptr - 0x59B67E)
59B674:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
59B676:  ADD             R1, PC; aAlphaFade_ptr
59B678:  LDR             R2, [R2]; TempBufferIndicesStored
59B67A:  ADD             R3, PC; TempBufferVerticesStored_ptr
59B67C:  LDR             R1, [R1]; aAlphaFade
59B67E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
59B680:  ADD.W           R8, R1, #4
59B684:  BFC.W           R0, #0xC, #0x14
59B688:  VMOV            S0, R0
59B68C:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x59B69E)
59B690:  VCVT.F32.U32    S0, S0
59B694:  LDR             R1, [R2]
59B696:  LDR.W           R2, =(TempBufferIndicesStored_ptr - 0x59B6A0)
59B69A:  ADD             R0, PC; TempBufferVerticesStored_ptr
59B69C:  ADD             R2, PC; TempBufferIndicesStored_ptr
59B69E:  LDR             R0, [R0]; TempBufferVerticesStored
59B6A0:  LDR             R2, [R2]; TempBufferIndicesStored
59B6A2:  STR             R2, [SP,#0xE8+var_D4]
59B6A4:  LDR             R2, [R3]; TempBufferVerticesStored
59B6A6:  VMUL.F32        S0, S0, S2
59B6AA:  STR             R2, [SP,#0xE8+var_D8]
59B6AC:  LDR.W           R2, =(TempBufferVerticesStored_ptr - 0x59B6B8)
59B6B0:  LDR.W           R3, =(TempVertexBuffer_ptr - 0x59B6BC)
59B6B4:  ADD             R2, PC; TempBufferVerticesStored_ptr
59B6B6:  LDR             R0, [R0]
59B6B8:  ADD             R3, PC; TempVertexBuffer_ptr
59B6BA:  LDR             R2, [R2]; TempBufferVerticesStored
59B6BC:  STR             R2, [SP,#0xE8+var_DC]
59B6BE:  LDR             R2, [R3]; TempVertexBuffer
59B6C0:  STR             R2, [SP,#0xE8+var_E0]
59B6C2:  LDR.W           R2, =(TempBufferIndicesStored_ptr - 0x59B6CE)
59B6C6:  LDR.W           R3, =(TempBufferRenderIndexList_ptr - 0x59B6D4)
59B6CA:  ADD             R2, PC; TempBufferIndicesStored_ptr
59B6CC:  VSTR            S0, [SP,#0xE8+var_C0]
59B6D0:  ADD             R3, PC; TempBufferRenderIndexList_ptr
59B6D2:  VLDR            S29, [SP,#0xE8+var_C0]
59B6D6:  LDR             R2, [R2]; TempBufferIndicesStored
59B6D8:  STR             R2, [SP,#0xE8+var_E4]
59B6DA:  LDR             R2, [R3]; TempBufferRenderIndexList
59B6DC:  STR             R2, [SP,#0xE8+var_E8]
59B6DE:  LDR.W           R2, =(TempVertexBuffer_ptr - 0x59B6E6)
59B6E2:  ADD             R2, PC; TempVertexBuffer_ptr
59B6E4:  LDR             R2, [R2]; TempVertexBuffer
59B6E6:  STR             R2, [SP,#0xE8+var_68]
59B6E8:  LDR.W           R2, =(TempBufferVerticesStored_ptr - 0x59B6F0)
59B6EC:  ADD             R2, PC; TempBufferVerticesStored_ptr
59B6EE:  LDR             R2, [R2]; TempBufferVerticesStored
59B6F0:  STR             R2, [SP,#0xE8+var_C4]
59B6F2:  LDR.W           R2, =(_ZN8CWeather11WindClippedE_ptr - 0x59B6FE)
59B6F6:  LDR.W           R9, [SP,#0xE8+var_C4]
59B6FA:  ADD             R2, PC; _ZN8CWeather11WindClippedE_ptr
59B6FC:  LDR             R2, [R2]; CWeather::WindClipped ...
59B6FE:  STR             R2, [SP,#0xE8+var_C8]
59B700:  LDR.W           R2, =(TempBufferRenderIndexList_ptr - 0x59B708)
59B704:  ADD             R2, PC; TempBufferRenderIndexList_ptr
59B706:  LDR             R2, [R2]; TempBufferRenderIndexList
59B708:  STR             R2, [SP,#0xE8+var_CC]
59B70A:  LDR.W           R2, =(TempBufferIndicesStored_ptr - 0x59B712)
59B70E:  ADD             R2, PC; TempBufferIndicesStored_ptr
59B710:  LDR             R2, [R2]; TempBufferIndicesStored
59B712:  STR             R2, [SP,#0xE8+var_D0]
59B714:  B               loc_59B720
59B716:  ALIGN 4
59B718:  DCFS 0.0015339
59B71C:  DCFS 0.0
59B720:  MOVW            R2, #0xFF9
59B724:  CMP             R1, R2
59B726:  ITT LE
59B728:  MOVWLE          R1, #0x7FC
59B72C:  CMPLE           R0, R1
59B72E:  BLT             loc_59B760
59B730:  CBZ             R0, loc_59B756
59B732:  BLX.W           j__Z10LittleTestv; LittleTest(void)
59B736:  LDR             R0, [SP,#0xE8+var_DC]
59B738:  MOVS            R2, #0
59B73A:  MOVS            R3, #1
59B73C:  LDR             R1, [R0]
59B73E:  LDR             R0, [SP,#0xE8+var_E0]
59B740:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
59B744:  CBZ             R0, loc_59B756
59B746:  LDR             R0, [SP,#0xE8+var_E4]
59B748:  LDR             R1, [SP,#0xE8+var_E8]
59B74A:  LDR             R2, [R0]
59B74C:  MOVS            R0, #3
59B74E:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
59B752:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
59B756:  LDR             R1, [SP,#0xE8+var_D4]
59B758:  MOVS            R0, #0
59B75A:  STR             R0, [R1]
59B75C:  LDR             R1, [SP,#0xE8+var_D8]
59B75E:  STR             R0, [R1]
59B760:  LDR             R1, [R7,#arg_8]
59B762:  ADD.W           R0, R0, R0,LSL#3
59B766:  VLDR            S0, [R8,#-4]
59B76A:  MOV             R3, #0xFFFFFF
59B76E:  VMOV.F32        S30, #0.25
59B772:  VLDR            S31, =0.0
59B776:  MOV             R2, R1
59B778:  VLDR            S2, [R2]
59B77C:  VMUL.F32        S2, S2, S0
59B780:  VCVT.U32.F32    S2, S2
59B784:  LDR             R1, [SP,#0xE8+var_68]
59B786:  ADD.W           R0, R1, R0,LSL#2
59B78A:  MOV             R4, R1
59B78C:  VMOV            R1, S2
59B790:  VLDR            S2, [R8]
59B794:  ORR.W           R1, R3, R1,LSL#24
59B798:  STR             R1, [R0,#0x18]
59B79A:  VLDR            S4, [R2]
59B79E:  VMUL.F32        S4, S4, S2
59B7A2:  VCVT.U32.F32    S4, S4
59B7A6:  VMOV            R1, S4
59B7AA:  ORR.W           R1, R3, R1,LSL#24
59B7AE:  STR             R1, [R0,#0x3C]
59B7B0:  LDR             R1, [R7,#arg_C]
59B7B2:  MOV             R2, R1
59B7B4:  VLDR            S4, [R2]
59B7B8:  VMUL.F32        S2, S4, S2
59B7BC:  VMOV            S4, R11
59B7C0:  ADD.W           R11, R11, #1
59B7C4:  VMOV            S6, R11
59B7C8:  VCVT.F32.S32    S4, S4
59B7CC:  VCVT.F32.S32    S6, S6
59B7D0:  VCVT.U32.F32    S2, S2
59B7D4:  VMUL.F32        S27, S4, S30
59B7D8:  VMUL.F32        S28, S6, S30
59B7DC:  VMOV            R1, S2
59B7E0:  ORR.W           R1, R3, R1,LSL#24
59B7E4:  STR             R1, [R0,#0x60]
59B7E6:  VLDR            S2, [R2]
59B7EA:  VMUL.F32        S0, S2, S0
59B7EE:  VMOV.F32        S2, #1.0
59B7F2:  VCVT.U32.F32    S0, S0
59B7F6:  VSUB.F32        S26, S2, S27
59B7FA:  VSUB.F32        S24, S2, S28
59B7FE:  VMOV            R1, S0
59B802:  ORR.W           R1, R3, R1,LSL#24
59B806:  STR.W           R1, [R0,#0x84]
59B80A:  LDR             R0, [SP,#0xE8+var_B4]
59B80C:  VLDR            S0, [R0]
59B810:  VSTR            S0, [SP,#0xE8+var_90]
59B814:  VLDR            S0, [R0,#4]
59B818:  LDR             R0, [SP,#0xE8+var_B0]
59B81A:  VMUL.F32        S4, S27, S0
59B81E:  VMUL.F32        S0, S28, S0
59B822:  VLDR            S2, [R0]
59B826:  VSTR            S2, [SP,#0xE8+var_94]
59B82A:  VLDR            S2, [R0,#4]
59B82E:  LDR             R0, [SP,#0xE8+var_B8]
59B830:  VMUL.F32        S6, S26, S2
59B834:  VMUL.F32        S2, S24, S2
59B838:  VADD.F32        S4, S6, S4
59B83C:  VADD.F32        S2, S2, S0
59B840:  VMUL.F32        S0, S4, S30
59B844:  VSTR            S4, [SP,#0xE8+var_70]
59B848:  VSTR            S2, [SP,#0xE8+var_64]
59B84C:  VMUL.F32        S2, S2, S30
59B850:  VLDR            S23, [R0]
59B854:  VADD.F32        S18, S0, S31
59B858:  VLDR            S0, [R0,#4]
59B85C:  VADD.F32        S4, S2, S31
59B860:  LDR             R0, [SP,#0xE8+var_BC]
59B862:  VMIN.F32        D16, D2, D9
59B866:  VSTR            D2, [SP,#0xE8+var_78]
59B86A:  VMUL.F32        S4, S28, S0
59B86E:  VLDR            S2, [R0,#4]
59B872:  VMUL.F32        S0, S27, S0
59B876:  VLDR            S22, [R0]
59B87A:  VMUL.F32        S6, S24, S2
59B87E:  VMUL.F32        S2, S26, S2
59B882:  VADD.F32        S25, S6, S4
59B886:  VADD.F32        S2, S2, S0
59B88A:  VMUL.F32        S4, S25, S30
59B88E:  VSTR            S25, [SP,#0xE8+var_7C]
59B892:  VMUL.F32        S0, S2, S30
59B896:  VMOV.F32        S16, S2
59B89A:  VADD.F32        S4, S4, S31
59B89E:  VADD.F32        S0, S0, S31
59B8A2:  VSTR            S16, [SP,#0xE8+var_6C]
59B8A6:  VMIN.F32        D16, D2, D16
59B8AA:  VSTR            D2, [SP,#0xE8+var_88]
59B8AE:  VSTR            D0, [SP,#0xE8+var_A0]
59B8B2:  VMIN.F32        D0, D0, D16
59B8B6:  VMOV            R0, S0; x
59B8BA:  BLX.W           floorf
59B8BE:  VMOV            S20, R0
59B8C2:  LDR.W           R0, [R9]
59B8C6:  VLDR            S17, =3072.0
59B8CA:  VSUB.F32        S0, S18, S20
59B8CE:  ADD.W           R0, R0, R0,LSL#3
59B8D2:  ADD.W           R4, R4, R0,LSL#2
59B8D6:  VSTR            S0, [R4,#0x8C]
59B8DA:  VADD.F32        S0, S16, S17
59B8DE:  VLDR            S16, =0.03125
59B8E2:  VMUL.F32        S18, S0, S16
59B8E6:  VMOV            R0, S18; x
59B8EA:  BLX.W           floorf
59B8EE:  VMOV            S0, R0
59B8F2:  VMUL.F32        S2, S26, S22
59B8F6:  VSUB.F32        S18, S18, S0
59B8FA:  VMUL.F32        S0, S27, S23
59B8FE:  VADD.F32        S21, S2, S0
59B902:  VADD.F32        S0, S21, S17
59B906:  VSTR            S21, [SP,#0xE8+var_A4]
59B90A:  VMUL.F32        S19, S0, S16
59B90E:  VMOV            R0, S19; x
59B912:  BLX.W           floorf
59B916:  VMOV            S0, R0
59B91A:  VLDR            S2, =6.2832
59B91E:  VSUB.F32        S0, S19, S0
59B922:  VADD.F32        S0, S0, S18
59B926:  VMUL.F32        S0, S0, S2
59B92A:  VADD.F32        S0, S29, S0
59B92E:  VMOV            R0, S0; x
59B932:  BLX.W           sinf
59B936:  VADD.F32        S0, S25, S17
59B93A:  MOV             R5, R0
59B93C:  VMUL.F32        S18, S0, S16
59B940:  VMOV            R0, S18; x
59B944:  BLX.W           floorf
59B948:  VMOV            S0, R0
59B94C:  VMUL.F32        S2, S24, S22
59B950:  VSUB.F32        S18, S18, S0
59B954:  VMUL.F32        S0, S28, S23
59B958:  VADD.F32        S2, S2, S0
59B95C:  VADD.F32        S0, S2, S17
59B960:  VMOV.F32        S25, S2
59B964:  VMUL.F32        S19, S0, S16
59B968:  VSTR            S25, [SP,#0xE8+var_8C]
59B96C:  VMOV            R0, S19; x
59B970:  BLX.W           floorf
59B974:  VMOV            S0, R0
59B978:  VLDR            S6, [SP,#0xE8+var_94]
59B97C:  VLDR            S4, [SP,#0xE8+var_90]
59B980:  VSUB.F32        S0, S19, S0
59B984:  VMUL.F32        S2, S26, S6
59B988:  VADD.F32        S0, S0, S18
59B98C:  VSTR            S0, [SP,#0xE8+var_AC]
59B990:  VMUL.F32        S0, S27, S4
59B994:  VADD.F32        S2, S2, S0
59B998:  VMUL.F32        S0, S2, S30
59B99C:  VMOV.F32        S27, S2
59B9A0:  VMUL.F32        S2, S24, S6
59B9A4:  VADD.F32        S18, S0, S31
59B9A8:  VMUL.F32        S0, S28, S4
59B9AC:  VSTR            S27, [SP,#0xE8+var_A8]
59B9B0:  VADD.F32        S28, S2, S0
59B9B4:  VMUL.F32        S0, S28, S30
59B9B8:  VADD.F32        S22, S0, S31
59B9BC:  VMUL.F32        S0, S25, S30
59B9C0:  VMIN.F32        D16, D11, D9
59B9C4:  VADD.F32        S24, S0, S31
59B9C8:  VMUL.F32        S0, S21, S30
59B9CC:  VMIN.F32        D16, D12, D16
59B9D0:  VADD.F32        S30, S0, S31
59B9D4:  VMIN.F32        D0, D15, D16
59B9D8:  VMOV            R0, S0; x
59B9DC:  BLX.W           floorf
59B9E0:  VMOV            S0, R0
59B9E4:  VLDR            D1, [SP,#0xE8+var_A0]
59B9E8:  VSUB.F32        S31, S30, S0
59B9EC:  VSUB.F32        S24, S24, S0
59B9F0:  VSUB.F32        S22, S22, S0
59B9F4:  VSUB.F32        S0, S18, S0
59B9F8:  VSUB.F32        S26, S2, S20
59B9FC:  VLDR            D1, [SP,#0xE8+var_88]
59BA00:  VSUB.F32        S30, S2, S20
59BA04:  VSTR            S0, [R4,#0x88]
59BA08:  VLDR            S0, [SP,#0xE8+var_64]
59BA0C:  VADD.F32        S0, S0, S17
59BA10:  VMUL.F32        S18, S0, S16
59BA14:  VMOV            R0, S18; x
59BA18:  BLX.W           floorf
59BA1C:  VMOV            S0, R0
59BA20:  VSUB.F32        S18, S18, S0
59BA24:  VADD.F32        S0, S28, S17
59BA28:  VMUL.F32        S19, S0, S16
59BA2C:  VMOV            R0, S19; x
59BA30:  BLX.W           floorf
59BA34:  VADD.F32        S2, S27, S17
59BA38:  VLDR            S27, [SP,#0xE8+var_70]
59BA3C:  VMOV            S0, R0
59BA40:  VSUB.F32        S19, S19, S0
59BA44:  VLDR            D0, [SP,#0xE8+var_78]
59BA48:  VSUB.F32        S0, S0, S20
59BA4C:  VMUL.F32        S20, S2, S16
59BA50:  VADD.F32        S2, S27, S17
59BA54:  VLDR            S17, =6.2832
59BA58:  VSTR            S0, [R4,#0x68]
59BA5C:  VLDR            S0, [SP,#0xE8+var_AC]
59BA60:  VMUL.F32        S23, S2, S16
59BA64:  VMUL.F32        S21, S0, S17
59BA68:  VMOV            R0, S23; x
59BA6C:  BLX.W           floorf
59BA70:  VMOV            S25, R0
59BA74:  LDR             R1, [SP,#0xE8+var_C8]
59BA76:  VMOV            R0, S20; x
59BA7A:  VSTR            S22, [R4,#0x64]
59BA7E:  VADD.F32        S0, S19, S18
59BA82:  VSTR            S24, [R4,#0x40]
59BA86:  VSTR            S30, [R4,#0x44]
59BA8A:  VADD.F32        S18, S29, S21
59BA8E:  VSTR            S31, [R4,#0x1C]
59BA92:  VSTR            S26, [R4,#0x20]
59BA96:  VLDR            S16, [R1]
59BA9A:  VMUL.F32        S22, S0, S17
59BA9E:  BLX.W           floorf
59BAA2:  VLDR            S2, =0.4
59BAA6:  VMOV            S0, R0
59BAAA:  VMOV            R0, S18; x
59BAAE:  VLDR            S8, =0.2
59BAB2:  VMUL.F32        S2, S16, S2
59BAB6:  LDR             R6, [R7,#arg_10]
59BAB8:  VSUB.F32        S4, S23, S25
59BABC:  VSUB.F32        S0, S20, S0
59BAC0:  VADD.F32        S6, S29, S22
59BAC4:  VADD.F32        S16, S2, S8
59BAC8:  VMOV            S2, R5
59BACC:  VADD.F32        S0, S0, S4
59BAD0:  VMOV            R5, S6
59BAD4:  VMUL.F32        S2, S2, S16
59BAD8:  VMUL.F32        S18, S0, S17
59BADC:  VLDR            S0, [R6]
59BAE0:  VADD.F32        S20, S0, S2
59BAE4:  BLX.W           sinf
59BAE8:  VMOV            S0, R0
59BAEC:  VLDR            S4, [SP,#0xE8+var_A4]
59BAF0:  VADD.F32        S2, S29, S18
59BAF4:  MOV             R0, R5; x
59BAF6:  VMUL.F32        S0, S0, S16
59BAFA:  VSTR            S4, [R4]
59BAFE:  VLDR            S4, [SP,#0xE8+var_6C]
59BB02:  VSTR            S4, [R4,#4]
59BB06:  VSTR            S20, [R4,#8]
59BB0A:  VLDR            S4, [R6]
59BB0E:  VMOV            R10, S2
59BB12:  VADD.F32        S18, S4, S0
59BB16:  BLX.W           sinf
59BB1A:  VMOV            S0, R0
59BB1E:  VLDR            S2, [SP,#0xE8+var_8C]
59BB22:  MOV             R0, R10; x
59BB24:  VMUL.F32        S0, S0, S16
59BB28:  VSTR            S2, [R4,#0x24]
59BB2C:  VLDR            S2, [SP,#0xE8+var_7C]
59BB30:  VSTR            S2, [R4,#0x28]
59BB34:  VSTR            S18, [R4,#0x2C]
59BB38:  VLDR            S2, [R6]
59BB3C:  VSTR            S28, [R4,#0x48]
59BB40:  VADD.F32        S0, S2, S0
59BB44:  VLDR            S2, [SP,#0xE8+var_64]
59BB48:  VSTR            S2, [R4,#0x4C]
59BB4C:  VSTR            S0, [R4,#0x50]
59BB50:  BLX.W           sinf
59BB54:  VMOV            S0, R0
59BB58:  VLDR            S2, [R6]
59BB5C:  LDR.W           R2, [R9]
59BB60:  ADD.W           R8, R8, #4
59BB64:  VMUL.F32        S0, S0, S16
59BB68:  LDR             R3, [SP,#0xE8+var_68]
59BB6A:  ADDS            R0, R2, #3
59BB6C:  LDR             R6, [SP,#0xE8+var_D0]
59BB6E:  ADDS            R5, R2, #1
59BB70:  CMP.W           R11, #4
59BB74:  ADD.W           R1, R0, R0,LSL#3
59BB78:  ADD.W           R1, R3, R1,LSL#2
59BB7C:  LDR             R3, [SP,#0xE8+var_CC]
59BB7E:  VADD.F32        S0, S2, S0
59BB82:  VLDR            S2, [SP,#0xE8+var_A8]
59BB86:  VSTR            S2, [R1]
59BB8A:  VSTR            S27, [R1,#4]
59BB8E:  VSTR            S0, [R1,#8]
59BB92:  LDR             R1, [R6]
59BB94:  STRH.W          R2, [R3,R1,LSL#1]
59BB98:  ADD.W           R3, R3, R1,LSL#1
59BB9C:  ADD.W           R1, R1, #6
59BBA0:  STRH            R5, [R3,#4]
59BBA2:  STRH            R0, [R3,#8]
59BBA4:  ADD.W           R0, R2, #2
59BBA8:  STRH            R0, [R3,#2]
59BBAA:  STRH            R2, [R3,#6]
59BBAC:  STRH            R0, [R3,#0xA]
59BBAE:  ADD.W           R0, R2, #4
59BBB2:  STR             R1, [R6]
59BBB4:  STR.W           R0, [R9]
59BBB8:  BNE.W           loc_59B720
59BBBC:  ADD             SP, SP, #0x88
59BBBE:  VPOP            {D8-D15}
59BBC2:  ADD             SP, SP, #4
59BBC4:  POP.W           {R8-R11}
59BBC8:  POP             {R4-R7,PC}
