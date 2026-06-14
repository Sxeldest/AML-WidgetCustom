; =========================================================
; Game Engine Function: _ZN11CWaterLevel32RenderFlatWaterTriangle_OneLayerEii7CRenPariiS0_iiS0_i
; Address            : 0x59974C - 0x599A80
; =========================================================

59974C:  PUSH            {R4-R7,LR}
59974E:  ADD             R7, SP, #0xC
599750:  PUSH.W          {R8-R11}
599754:  SUB             SP, SP, #4
599756:  VPUSH           {D8-D12}
59975A:  SUB             SP, SP, #0x10
59975C:  STR             R2, [SP,#0x58+var_4C]
59975E:  MOV             R10, R0
599760:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x599768)
599762:  LDR             R2, =(TempBufferIndicesStored_ptr - 0x59976E)
599764:  ADD             R0, PC; TempBufferVerticesStored_ptr
599766:  LDR.W           R9, [R7,#arg_38]
59976A:  ADD             R2, PC; TempBufferIndicesStored_ptr
59976C:  LDR             R0, [R0]; TempBufferVerticesStored
59976E:  LDR             R2, [R2]; TempBufferIndicesStored
599770:  LDR.W           R8, [R0]
599774:  MOVW            R0, #0xFFC
599778:  LDR.W           R11, [R2]
59977C:  CMP             R11, R0
59977E:  ITT LE
599780:  MOVWLE          R0, #0x7FD
599784:  CMPLE           R8, R0
599786:  BLT             loc_5997E2
599788:  MOV             R4, R1
59978A:  CMP.W           R8, #0
59978E:  BEQ             loc_5997C4
599790:  BLX.W           j__Z10LittleTestv; LittleTest(void)
599794:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x59979E)
599796:  MOVS            R3, #1
599798:  LDR             R1, =(TempVertexBuffer_ptr - 0x5997A0)
59979A:  ADD             R0, PC; TempBufferVerticesStored_ptr
59979C:  ADD             R1, PC; TempVertexBuffer_ptr
59979E:  LDR             R2, [R0]; TempBufferVerticesStored
5997A0:  LDR             R0, [R1]; TempVertexBuffer
5997A2:  LDR             R1, [R2]
5997A4:  MOVS            R2, #0
5997A6:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5997AA:  CBZ             R0, loc_5997C4
5997AC:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5997B4)
5997AE:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5997B6)
5997B0:  ADD             R0, PC; TempBufferIndicesStored_ptr
5997B2:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5997B4:  LDR             R0, [R0]; TempBufferIndicesStored
5997B6:  LDR             R1, [R1]; TempBufferRenderIndexList
5997B8:  LDR             R2, [R0]
5997BA:  MOVS            R0, #3
5997BC:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5997C0:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5997C4:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5997D4)
5997C6:  MOV.W           R11, #0
5997CA:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5997D6)
5997CC:  MOV.W           R8, #0
5997D0:  ADD             R1, PC; TempBufferVerticesStored_ptr
5997D2:  ADD             R0, PC; TempBufferIndicesStored_ptr
5997D4:  LDR             R1, [R1]; TempBufferVerticesStored
5997D6:  LDR             R0, [R0]; TempBufferIndicesStored
5997D8:  STR.W           R11, [R1]
5997DC:  MOV             R1, R4
5997DE:  STR.W           R11, [R0]
5997E2:  LDR             R2, [R7,#arg_28]
5997E4:  CMP.W           R9, #0
5997E8:  LDR             R5, [R7,#arg_10]
5997EA:  LDRD.W          R6, R4, [R7,#arg_20]
5997EE:  BEQ             loc_59985E
5997F0:  CMP.W           R9, #1
5997F4:  BNE             loc_5998D2
5997F6:  VMOV            S0, R10
5997FA:  LDR             R0, =(TextureShiftSecondU_ptr - 0x59980A)
5997FC:  VLDR            S18, =0.04
599800:  MOV             R6, R2
599802:  VCVT.F32.S32    S16, S0
599806:  ADD             R0, PC; TextureShiftSecondU_ptr
599808:  LDR             R3, =(TextureShiftSecondV_ptr - 0x599810)
59980A:  LDR             R0, [R0]; TextureShiftSecondU
59980C:  ADD             R3, PC; TextureShiftSecondV_ptr
59980E:  VLDR            S2, [R0]
599812:  LDR             R3, [R3]; TextureShiftSecondV
599814:  VMUL.F32        S0, S16, S18
599818:  VADD.F32        S22, S0, S2
59981C:  VMOV            S0, R1
599820:  VCVT.F32.S32    S20, S0
599824:  VLDR            S2, [R3]
599828:  STR             R1, [SP,#0x58+var_54]
59982A:  VMOV            R0, S22; x
59982E:  VMUL.F32        S0, S20, S18
599832:  VADD.F32        S24, S0, S2
599836:  BLX.W           floorf
59983A:  MOV             R9, R0
59983C:  VMOV            R0, S24; x
599840:  BLX.W           floorf
599844:  VMOV            S0, R0
599848:  MOV             R2, R6
59984A:  VMOV            S2, R9
59984E:  LDR             R6, [R7,#arg_20]
599850:  VSUB.F32        S0, S24, S0
599854:  MOV.W           R0, #0x5A000000
599858:  VSUB.F32        S2, S22, S2
59985C:  B               loc_5998C8
59985E:  VMOV            S0, R10
599862:  LDR             R0, =(TextureShiftU_ptr - 0x599872)
599864:  VLDR            S18, =0.08
599868:  MOV             R6, R2
59986A:  VCVT.F32.S32    S16, S0
59986E:  ADD             R0, PC; TextureShiftU_ptr
599870:  LDR             R3, =(TextureShiftV_ptr - 0x599878)
599872:  LDR             R0, [R0]; TextureShiftU
599874:  ADD             R3, PC; TextureShiftV_ptr
599876:  VLDR            S2, [R0]
59987A:  LDR             R3, [R3]; TextureShiftV
59987C:  VMUL.F32        S0, S16, S18
599880:  VADD.F32        S22, S0, S2
599884:  VMOV            S0, R1
599888:  VCVT.F32.S32    S20, S0
59988C:  VLDR            S2, [R3]
599890:  STR             R1, [SP,#0x58+var_54]
599892:  VMOV            R0, S22; x
599896:  VMUL.F32        S0, S20, S18
59989A:  VADD.F32        S24, S0, S2
59989E:  BLX.W           floorf
5998A2:  MOV             R9, R0
5998A4:  VMOV            R0, S24; x
5998A8:  BLX.W           floorf
5998AC:  LDR             R1, =(dword_6B15B8 - 0x5998BC)
5998AE:  VMOV            S0, R0
5998B2:  VMOV            S2, R9
5998B6:  MOV             R2, R6
5998B8:  ADD             R1, PC; dword_6B15B8
5998BA:  LDR             R6, [R7,#arg_20]
5998BC:  VSUB.F32        S0, S24, S0
5998C0:  LDR             R0, [R1]
5998C2:  VSUB.F32        S2, S22, S2
5998C6:  LSLS            R0, R0, #0x18
5998C8:  STR             R0, [SP,#0x58+var_50]
5998CA:  LDR             R0, [SP,#0x58+var_4C]
5998CC:  LDR.W           LR, [SP,#0x58+var_54]
5998D0:  B               loc_5998EA
5998D2:  VMOV            S0, R1
5998D6:  MOVS            R0, #0
5998D8:  MOV             LR, R1
5998DA:  VCVT.F32.S32    S20, S0
5998DE:  VMOV            S0, R10
5998E2:  VCVT.F32.S32    S16, S0
5998E6:  STR             R0, [SP,#0x58+var_50]
5998E8:  LDR             R0, [SP,#0x58+var_4C]
5998EA:  VMOV.F32        S4, #-7.0
5998EE:  LDR.W           R9, [R7,#arg_8]
5998F2:  LDR.W           R12, [R7,#arg_C]
5998F6:  VMOV            S10, R5
5998FA:  SUB.W           R3, R9, R10
5998FE:  SUB.W           R5, R6, R10
599902:  VMOV            S1, R9
599906:  LDR             R1, =(TempVertexBuffer_ptr - 0x59992E)
599908:  VMOV            S12, R12
59990C:  VLDR            S6, =0.0
599910:  VMOV            S3, R5
599914:  SUB.W           R5, R4, LR
599918:  VMOV            S5, R3
59991C:  CMP             R5, #0
59991E:  VMOV.F32        S8, #7.0
599922:  SUB.W           R3, R12, LR
599926:  VCVT.F32.S32    S12, S12
59992A:  ADD             R1, PC; TempVertexBuffer_ptr
59992C:  VCVT.F32.S32    S1, S1
599930:  VLDR            S15, =0.577
599934:  VCVT.F32.S32    S3, S3
599938:  IT GT
59993A:  VMOVGT.F32      S8, S4
59993E:  VCVT.F32.S32    S5, S5
599942:  VMOV            S14, R0
599946:  LDR             R0, =(WaterColorDebug_ptr - 0x599958)
599948:  VMOV            S7, R3
59994C:  ADD.W           R3, R8, R8,LSL#3
599950:  VMOV            S11, R5
599954:  ADD             R0, PC; WaterColorDebug_ptr
599956:  VCVT.F32.S32    S7, S7
59995A:  VCVT.F32.S32    S11, S11
59995E:  LDR             R5, [R0]; WaterColorDebug
599960:  VADD.F32        S14, S14, S6
599964:  LDR             R0, =(TempBufferRenderIndexList_ptr - 0x599974)
599966:  VMOV            S9, R2
59996A:  LDR             R2, [R1]; TempVertexBuffer
59996C:  VADD.F32        S2, S2, S4
599970:  ADD             R0, PC; TempBufferRenderIndexList_ptr
599972:  VADD.F32        S0, S8, S0
599976:  ADD.W           R1, R2, R3,LSL#2
59997A:  VMUL.F32        S8, S18, S5
59997E:  LDRB            R2, [R5]
599980:  LDRB            R3, [R5,#(WaterColorDebug+1 - 0xA1C484)]
599982:  VMUL.F32        S4, S18, S7
599986:  VMUL.F32        S5, S18, S11
59998A:  VSTR            S16, [R1]
59998E:  VSTR            S20, [R1,#4]
599992:  VMOV            S11, R6
599996:  VSTR            S14, [R1,#8]
59999A:  VMOV            S14, R4
59999E:  VMOV            S7, R3
5999A2:  VSTR            S2, [R1,#0x1C]
5999A6:  VMOV            S13, R2
5999AA:  LDRB            R5, [R5,#(WaterColorDebug+2 - 0xA1C484)]
5999AC:  VSTR            S0, [R1,#0x20]
5999B0:  VCVT.F32.S32    S14, S14
5999B4:  VCVT.F32.U32    S7, S7
5999B8:  LDR             R4, =(TempBufferVerticesStored_ptr - 0x5999C8)
5999BA:  VCVT.F32.S32    S11, S11
5999BE:  LDR             R3, =(TempBufferIndicesStored_ptr - 0x5999CE)
5999C0:  VMUL.F32        S3, S18, S3
5999C4:  ADD             R4, PC; TempBufferVerticesStored_ptr
5999C6:  VADD.F32        S8, S8, S2
5999CA:  ADD             R3, PC; TempBufferIndicesStored_ptr
5999CC:  VCVT.F32.U32    S13, S13
5999D0:  LDR             R2, [R4]; TempBufferVerticesStored
5999D2:  VMOV            S16, R5
5999D6:  LDR             R5, [R0]; TempBufferRenderIndexList
5999D8:  VADD.F32        S10, S10, S6
5999DC:  LDR             R3, [R3]; TempBufferIndicesStored
5999DE:  VCVT.F32.U32    S16, S16
5999E2:  VADD.F32        S6, S9, S6
5999E6:  VADD.F32        S2, S3, S2
5999EA:  VSTR            S8, [R1,#0x40]
5999EE:  VADD.F32        S3, S5, S0
5999F2:  VADD.F32        S0, S4, S0
5999F6:  VSTR            S1, [R1,#0x24]
5999FA:  VMUL.F32        S4, S7, S15
5999FE:  VSTR            S12, [R1,#0x28]
599A02:  VMUL.F32        S8, S13, S15
599A06:  VSTR            S10, [R1,#0x2C]
599A0A:  VMUL.F32        S12, S16, S15
599A0E:  VSTR            S2, [R1,#0x64]
599A12:  VSTR            S14, [R1,#0x4C]
599A16:  VSTR            S11, [R1,#0x48]
599A1A:  VSTR            S6, [R1,#0x50]
599A1E:  VSTR            S0, [R1,#0x44]
599A22:  VCVT.U32.F32    S0, S4
599A26:  VSTR            S3, [R1,#0x68]
599A2A:  VCVT.U32.F32    S2, S8
599A2E:  VCVT.U32.F32    S4, S12
599A32:  LDR             R6, [SP,#0x58+var_50]
599A34:  STRH.W          R8, [R5,R11,LSL#1]
599A38:  VMOV            R4, S0
599A3C:  VMOV            R0, S2
599A40:  ORRS            R0, R6
599A42:  ORR.W           R0, R0, R4,LSL#8
599A46:  VMOV            R4, S4
599A4A:  ORR.W           R0, R0, R4,LSL#16
599A4E:  STR             R0, [R1,#0x18]
599A50:  STR             R0, [R1,#0x3C]
599A52:  STR             R0, [R1,#0x60]
599A54:  ADD.W           R0, R5, R11,LSL#1
599A58:  ADD.W           R1, R8, #1
599A5C:  STRH            R1, [R0,#2]
599A5E:  LDR             R0, [R3]
599A60:  LDR             R1, [R2]
599A62:  ADD.W           R6, R5, R0,LSL#1
599A66:  ADDS            R0, #3
599A68:  ADDS            R5, R1, #2
599A6A:  STR             R0, [R3]
599A6C:  ADDS            R0, R1, #3
599A6E:  STRH            R5, [R6,#4]
599A70:  STR             R0, [R2]
599A72:  ADD             SP, SP, #0x10
599A74:  VPOP            {D8-D12}
599A78:  ADD             SP, SP, #4
599A7A:  POP.W           {R8-R11}
599A7E:  POP             {R4-R7,PC}
