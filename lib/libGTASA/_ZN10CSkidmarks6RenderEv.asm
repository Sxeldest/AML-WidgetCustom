; =========================================================
; Game Engine Function: _ZN10CSkidmarks6RenderEv
; Address            : 0x5BE8C4 - 0x5BEBF0
; =========================================================

5BE8C4:  PUSH            {R4-R7,LR}
5BE8C6:  ADD             R7, SP, #0xC
5BE8C8:  PUSH.W          {R8-R11}
5BE8CC:  SUB             SP, SP, #4
5BE8CE:  VPUSH           {D8-D12}
5BE8D2:  SUB             SP, SP, #0x48
5BE8D4:  MOVS            R0, #8
5BE8D6:  MOVS            R1, #0
5BE8D8:  MOV.W           R10, #0
5BE8DC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BE8E0:  MOVS            R0, #0xC
5BE8E2:  MOVS            R1, #1
5BE8E4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BE8E8:  MOVS            R0, #0xA
5BE8EA:  MOVS            R1, #5
5BE8EC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BE8F0:  MOVS            R0, #0xB
5BE8F2:  MOVS            R1, #6
5BE8F4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BE8F8:  MOVS            R0, #0xE
5BE8FA:  MOVS            R1, #1
5BE8FC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BE900:  LDR             R0, =(dword_A5626C - 0x5BE906)
5BE902:  ADD             R0, PC; dword_A5626C
5BE904:  LDR             R0, [R0]
5BE906:  LDR             R1, [R0]
5BE908:  MOVS            R0, #1
5BE90A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BE90E:  LDR             R0, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BE91E)
5BE910:  VMOV.F32        S16, #1.0
5BE914:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5BE924)
5BE916:  MOV.W           R11, #0x158
5BE91A:  ADD             R0, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BE91C:  VLDR            S18, =0.6
5BE920:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5BE922:  VLDR            S20, =0.4
5BE926:  LDR             R3, [R0]; CSkidmarks::aSkidmarks ...
5BE928:  MOVS            R5, #0
5BE92A:  LDR             R0, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BE936)
5BE92C:  MOVS            R4, #0
5BE92E:  VLDR            S22, =5.01
5BE932:  ADD             R0, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BE934:  VLDR            S24, =0.1
5BE938:  STR             R3, [SP,#0x90+var_70]
5BE93A:  LDR             R0, [R0]; CSkidmarks::aSkidmarks ...
5BE93C:  STR             R0, [SP,#0x90+var_6C]
5BE93E:  LDR             R0, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BE944)
5BE940:  ADD             R0, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BE942:  LDR             R0, [R0]; CSkidmarks::aSkidmarks ...
5BE944:  STR             R0, [SP,#0x90+var_74]
5BE946:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr - 0x5BE94C)
5BE948:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr
5BE94A:  LDR             R0, [R0]; CCustomBuildingDNPipeline::m_fDNBalanceParam ...
5BE94C:  STR             R0, [SP,#0x90+var_78]
5BE94E:  LDR             R0, =(TempVertexBuffer_ptr - 0x5BE954)
5BE950:  ADD             R0, PC; TempVertexBuffer_ptr
5BE952:  LDR             R0, [R0]; TempVertexBuffer
5BE954:  STR             R0, [SP,#0x90+var_7C]
5BE956:  LDR             R0, =(TempVertexBuffer_ptr - 0x5BE95C)
5BE958:  ADD             R0, PC; TempVertexBuffer_ptr
5BE95A:  LDR             R0, [R0]; TempVertexBuffer
5BE95C:  STR             R0, [SP,#0x90+var_80]
5BE95E:  LDR             R0, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BE964)
5BE960:  ADD             R0, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BE962:  LDR             R0, [R0]; CSkidmarks::aSkidmarks ...
5BE964:  STR             R0, [SP,#0x90+var_54]
5BE966:  LDR             R0, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BE96C)
5BE968:  ADD             R0, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BE96A:  LDR             R0, [R0]; CSkidmarks::aSkidmarks ...
5BE96C:  STR             R0, [SP,#0x90+var_84]
5BE96E:  LDR             R0, [R1]; CTimer::m_snTimeInMilliseconds ...
5BE970:  STR             R0, [SP,#0x90+var_88]
5BE972:  LDR             R0, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BE978)
5BE974:  ADD             R0, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BE976:  LDR             R0, [R0]; CSkidmarks::aSkidmarks ...
5BE978:  STR             R0, [SP,#0x90+var_8C]
5BE97A:  MLA.W           R0, R4, R11, R3
5BE97E:  LDRB.W          R1, [R0,#0x156]
5BE982:  CMP             R1, #0
5BE984:  BEQ.W           loc_5BEBBE
5BE988:  LDR             R1, [SP,#0x90+var_6C]
5BE98A:  MLA.W           R1, R4, R11, R1
5BE98E:  LDRSH.W         R2, [R1,#0x154]
5BE992:  CMP             R2, #1
5BE994:  BLT.W           loc_5BEBBE
5BE998:  ADD.W           R8, R0, #0x156
5BE99C:  ADD.W           R0, R1, #0x154
5BE9A0:  STR             R0, [SP,#0x90+var_60]
5BE9A2:  MOVS            R0, #0xFF
5BE9A4:  STR             R0, [SP,#0x90+var_90]; unsigned __int8
5BE9A6:  ADD             R0, SP, #0x90+var_4C; this
5BE9A8:  MOVS            R1, #0; unsigned __int8
5BE9AA:  MOVS            R2, #0; unsigned __int8
5BE9AC:  MOVS            R3, #0; unsigned __int8
5BE9AE:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5BE9B2:  LDR             R0, [SP,#0x90+var_74]
5BE9B4:  MLA.W           R0, R4, R11, R0
5BE9B8:  LDR.W           R2, [R0,#0x150]
5BE9BC:  CMP             R2, #4
5BE9BE:  BCS             loc_5BE9FA
5BE9C0:  LDR             R0, =(off_66E32C - 0x5BE9C8)
5BE9C2:  LDR             R1, =(off_66E33C - 0x5BE9CC)
5BE9C4:  ADD             R0, PC; off_66E32C
5BE9C6:  LDR             R3, =(off_66E34C - 0x5BE9D4)
5BE9C8:  ADD             R1, PC; off_66E33C
5BE9CA:  LDR             R6, =(off_66E35C - 0x5BE9DA)
5BE9CC:  LDR.W           R0, [R0,R2,LSL#2]
5BE9D0:  ADD             R3, PC; off_66E34C
5BE9D2:  LDR.W           R1, [R1,R2,LSL#2]
5BE9D6:  ADD             R6, PC; off_66E35C
5BE9D8:  LDRB            R0, [R0]
5BE9DA:  STRB.W          R0, [SP,#0x90+var_4C]
5BE9DE:  LDR.W           R3, [R3,R2,LSL#2]
5BE9E2:  LDRB            R1, [R1]
5BE9E4:  LDR.W           R6, [R6,R2,LSL#2]
5BE9E8:  STRB.W          R1, [SP,#0x90+var_4B]
5BE9EC:  LDRB            R2, [R3]
5BE9EE:  STRB.W          R2, [SP,#0x90+var_4A]
5BE9F2:  LDRB            R3, [R6]
5BE9F4:  STRB.W          R3, [SP,#0x90+var_49]
5BE9F8:  B               loc_5BEA06
5BE9FA:  LDRB.W          R0, [SP,#0x90+var_4C]
5BE9FE:  LDRB.W          R1, [SP,#0x90+var_4B]
5BEA02:  LDRB.W          R2, [SP,#0x90+var_4A]
5BEA06:  LDR             R3, [SP,#0x90+var_78]
5BEA08:  VMOV            S2, R2
5BEA0C:  VMOV            S4, R0
5BEA10:  VMOV            S6, R1
5BEA14:  VLDR            S0, [R3]
5BEA18:  VCVT.F32.U32    S2, S2
5BEA1C:  VCVT.F32.U32    S4, S4
5BEA20:  VSUB.F32        S0, S16, S0
5BEA24:  VCVT.F32.U32    S6, S6
5BEA28:  VMUL.F32        S0, S0, S18
5BEA2C:  VADD.F32        S0, S0, S20
5BEA30:  VMUL.F32        S2, S0, S2
5BEA34:  VMUL.F32        S4, S0, S4
5BEA38:  VMUL.F32        S0, S0, S6
5BEA3C:  VCVT.U32.F32    S2, S2
5BEA40:  VCVT.U32.F32    S4, S4
5BEA44:  VCVT.U32.F32    S0, S0
5BEA48:  LDRB.W          R1, [R8]
5BEA4C:  CMP             R1, #1
5BEA4E:  VMOV            R6, S2
5BEA52:  VMOV            R0, S4
5BEA56:  VMOV            R9, S0
5BEA5A:  STRB.W          R0, [SP,#0x90+var_4C]
5BEA5E:  STR             R0, [SP,#0x90+var_50]
5BEA60:  MOV             R0, R1
5BEA62:  STRB.W          R9, [SP,#0x90+var_4B]
5BEA66:  STRB.W          R6, [SP,#0x90+var_4A]
5BEA6A:  STR             R0, [SP,#0x90+var_58]
5BEA6C:  STRD.W          R4, R5, [SP,#0x90+var_68]
5BEA70:  BEQ             loc_5BEA84
5BEA72:  LDR             R0, [SP,#0x90+var_84]
5BEA74:  MLA.W           R1, R4, R11, R0
5BEA78:  LDR             R0, [SP,#0x90+var_88]
5BEA7A:  LDR             R0, [R0]
5BEA7C:  LDR.W           R1, [R1,#0x148]
5BEA80:  CMP             R0, R1
5BEA82:  BCS             loc_5BEA88
5BEA84:  MOVS            R0, #0xFF
5BEA86:  B               loc_5BEA9E
5BEA88:  LDR             R2, [SP,#0x90+var_8C]
5BEA8A:  MLA.W           R2, R4, R11, R2
5BEA8E:  LDR.W           R2, [R2,#0x14C]
5BEA92:  SUBS            R0, R2, R0
5BEA94:  SUBS            R1, R2, R1
5BEA96:  RSB.W           R0, R0, R0,LSL#8
5BEA9A:  BLX.W           __aeabi_uidiv
5BEA9E:  LDR             R1, [SP,#0x90+var_60]
5BEAA0:  LDRSH.W         R1, [R1]
5BEAA4:  STR             R1, [SP,#0x90+var_5C]
5BEAA6:  CMP             R1, #0
5BEAA8:  BLT             loc_5BEB80
5BEAAA:  LDR             R1, [SP,#0x90+var_5C]
5BEAAC:  MOV.W           R12, R9,LSL#8
5BEAB0:  SXTH.W          R9, R0
5BEAB4:  LDR             R0, [SP,#0x90+var_64]
5BEAB6:  LDR             R2, [SP,#0x90+var_80]
5BEAB8:  ADD.W           LR, R1, #1
5BEABC:  MOV.W           R11, R6,LSL#16
5BEAC0:  MOVS            R6, #0
5BEAC2:  MOV             R1, R0
5BEAC4:  MOV             R4, R0
5BEAC6:  CBZ             R6, loc_5BEAE6
5BEAC8:  LDR             R0, [SP,#0x90+var_5C]
5BEACA:  MOV.W           R8, #0x80
5BEACE:  CMP             R0, R6
5BEAD0:  BNE             loc_5BEAEA
5BEAD2:  LDR             R0, [SP,#0x90+var_58]
5BEAD4:  UXTB.W          R10, R0
5BEAD8:  CMP.W           R10, #2
5BEADC:  MOV.W           R10, #0
5BEAE0:  BNE             loc_5BEAEA
5BEAE2:  MOVS            R0, #2
5BEAE4:  STR             R0, [SP,#0x90+var_58]
5BEAE6:  MOV.W           R8, #0
5BEAEA:  SMULBB.W        R3, R8, R9
5BEAEE:  VMOV            S0, R6
5BEAF2:  MOV.W           R0, #0xFF000000
5BEAF6:  ADDS            R6, #1
5BEAF8:  VCVT.F32.S32    S0, S0
5BEAFC:  CMP             LR, R6
5BEAFE:  AND.W           R3, R0, R3,LSL#16
5BEB02:  LDR             R0, [SP,#0x90+var_50]
5BEB04:  ORR.W           R3, R3, R0
5BEB08:  LDR             R0, [SP,#0x90+var_54]
5BEB0A:  ORR.W           R3, R3, R12
5BEB0E:  ADD.W           R5, R0, R1
5BEB12:  ADD             R0, R4
5BEB14:  VMUL.F32        S0, S0, S22
5BEB18:  ORR.W           R3, R3, R11
5BEB1C:  VLDR            S6, [R0,#8]
5BEB20:  ADD.W           R1, R1, #4
5BEB24:  VLDR            S2, [R0]
5BEB28:  ADD.W           R4, R4, #0xC
5BEB2C:  VLDR            S4, [R0,#4]
5BEB30:  VADD.F32        S6, S6, S24
5BEB34:  VLDR            S8, [R5,#0xC0]
5BEB38:  MOV.W           R0, #0x3F800000
5BEB3C:  VLDR            S10, [R5,#0x100]
5BEB40:  VADD.F32        S14, S2, S8
5BEB44:  STR             R3, [R2,#0x18]
5BEB46:  VADD.F32        S12, S4, S10
5BEB4A:  STR.W           R10, [R2,#0x1C]
5BEB4E:  VSUB.F32        S2, S2, S8
5BEB52:  STR             R3, [R2,#0x3C]
5BEB54:  VSUB.F32        S4, S4, S10
5BEB58:  STR             R0, [R2,#0x40]
5BEB5A:  VSTR            S0, [R2,#0x44]
5BEB5E:  VSTR            S14, [R2]
5BEB62:  VSTR            S12, [R2,#4]
5BEB66:  VSTR            S6, [R2,#8]
5BEB6A:  VSTR            S0, [R2,#0x20]
5BEB6E:  VSTR            S2, [R2,#0x24]
5BEB72:  VSTR            S4, [R2,#0x28]
5BEB76:  VSTR            S6, [R2,#0x2C]
5BEB7A:  ADD.W           R2, R2, #0x48 ; 'H'
5BEB7E:  BNE             loc_5BEAC6
5BEB80:  BLX.W           j__Z10LittleTestv; LittleTest(void)
5BEB84:  LDR             R4, [SP,#0x90+var_60]
5BEB86:  MOVS            R1, #2
5BEB88:  MOVS            R2, #0
5BEB8A:  MOVS            R3, #1
5BEB8C:  LDRSH.W         R0, [R4]
5BEB90:  ADD.W           R1, R1, R0,LSL#1
5BEB94:  LDR             R0, [SP,#0x90+var_7C]
5BEB96:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5BEB9A:  CBZ             R0, loc_5BEBB4
5BEB9C:  LDRSH.W         R0, [R4]
5BEBA0:  LDR             R1, =(unk_A56270 - 0x5BEBAA)
5BEBA2:  ADD.W           R0, R0, R0,LSL#1
5BEBA6:  ADD             R1, PC; unk_A56270
5BEBA8:  LSLS            R2, R0, #1
5BEBAA:  MOVS            R0, #3
5BEBAC:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5BEBB0:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5BEBB4:  LDR             R3, [SP,#0x90+var_70]
5BEBB6:  MOV.W           R11, #0x158
5BEBBA:  LDRD.W          R4, R5, [SP,#0x90+var_68]
5BEBBE:  ADDS            R4, #1
5BEBC0:  ADD.W           R5, R5, #0x158
5BEBC4:  CMP             R4, #0x20 ; ' '
5BEBC6:  BNE.W           loc_5BE97A
5BEBCA:  MOVS            R0, #0xC
5BEBCC:  MOVS            R1, #0
5BEBCE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BEBD2:  MOVS            R0, #8
5BEBD4:  MOVS            R1, #1
5BEBD6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BEBDA:  MOVS            R0, #6
5BEBDC:  MOVS            R1, #1
5BEBDE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BEBE2:  ADD             SP, SP, #0x48 ; 'H'
5BEBE4:  VPOP            {D8-D12}
5BEBE8:  ADD             SP, SP, #4
5BEBEA:  POP.W           {R8-R11}
5BEBEE:  POP             {R4-R7,PC}
