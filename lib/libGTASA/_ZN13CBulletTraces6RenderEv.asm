; =========================================================
; Game Engine Function: _ZN13CBulletTraces6RenderEv
; Address            : 0x5C0C04 - 0x5C0E92
; =========================================================

5C0C04:  PUSH            {R4-R7,LR}
5C0C06:  ADD             R7, SP, #0xC
5C0C08:  PUSH.W          {R8-R11}
5C0C0C:  SUB             SP, SP, #4
5C0C0E:  VPUSH           {D8-D11}
5C0C12:  SUB             SP, SP, #0x120
5C0C14:  LDR             R0, =(unk_61FC98 - 0x5C0C24)
5C0C16:  VMOV.F32        S16, #1.0
5C0C1A:  LDR             R1, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C0C2C)
5C0C1C:  MOVW            R11, #:lower16:unk_80FFFF
5C0C20:  ADD             R0, PC; unk_61FC98
5C0C22:  MOVS            R5, #0
5C0C24:  VLD1.64         {D16-D17}, [R0]!
5C0C28:  ADD             R1, PC; _ZN13CBulletTraces7aTracesE_ptr
5C0C2A:  MOVT            R11, #:upper16:unk_80FFFF
5C0C2E:  VLDR            D18, [R0]
5C0C32:  ADD             R0, SP, #0x160+var_58
5C0C34:  VST1.64         {D16-D17}, [R0]!
5C0C38:  VSTR            D18, [R0]
5C0C3C:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C0C42)
5C0C3E:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C0C40:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C0C42:  STR             R0, [SP,#0x160+var_158]
5C0C44:  LDR             R0, =(TheCamera_ptr - 0x5C0C4A)
5C0C46:  ADD             R0, PC; TheCamera_ptr
5C0C48:  LDR.W           R8, [R0]; TheCamera
5C0C4C:  LDR             R0, [R1]; CBulletTraces::aTraces ...
5C0C4E:  STR             R0, [SP,#0x160+var_15C]
5C0C50:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5C0C56)
5C0C52:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5C0C54:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5C0C56:  STR             R0, [SP,#0x160+var_160]
5C0C58:  LDR             R0, [SP,#0x160+var_158]
5C0C5A:  ADD             R0, R5
5C0C5C:  LDRB            R0, [R0,#0x18]
5C0C5E:  CMP             R0, #0
5C0C60:  BEQ.W           loc_5C0E5A
5C0C64:  LDR             R1, [SP,#0x160+var_15C]
5C0C66:  ADD             R4, SP, #0x160+var_13C
5C0C68:  LDR.W           R0, [R8,#(dword_951FBC - 0x951FA8)]
5C0C6C:  ADD.W           R9, R1, R5
5C0C70:  ADD.W           R1, R0, #0x30 ; '0'
5C0C74:  CMP             R0, #0
5C0C76:  VLDR            S0, [R9]
5C0C7A:  MOV             R0, R4; this
5C0C7C:  VLDR            S2, [R9,#4]
5C0C80:  VLDR            S4, [R9,#8]
5C0C84:  IT EQ
5C0C86:  ADDEQ.W         R1, R8, #4
5C0C8A:  VLDR            S6, [R1]
5C0C8E:  VLDR            S8, [R1,#4]
5C0C92:  VLDR            S10, [R1,#8]
5C0C96:  VSUB.F32        S0, S0, S6
5C0C9A:  VSUB.F32        S2, S2, S8
5C0C9E:  VSUB.F32        S4, S4, S10
5C0CA2:  VSTR            S0, [SP,#0x160+var_13C]
5C0CA6:  VSTR            S2, [SP,#0x160+var_138]
5C0CAA:  VSTR            S4, [SP,#0x160+var_134]
5C0CAE:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5C0CB2:  VLDR            S0, [R9]
5C0CB6:  ADD.W           R10, SP, #0x160+var_148
5C0CBA:  VLDR            S6, [R9,#0xC]
5C0CBE:  VLDR            S2, [R9,#4]
5C0CC2:  MOV             R0, R10; this
5C0CC4:  VLDR            S8, [R9,#0x10]
5C0CC8:  VSUB.F32        S20, S6, S0
5C0CCC:  VLDR            S4, [R9,#8]
5C0CD0:  VLDR            S10, [R9,#0x14]
5C0CD4:  VSUB.F32        S18, S8, S2
5C0CD8:  VSUB.F32        S22, S10, S4
5C0CDC:  VSTR            S18, [SP,#0x160+var_144]
5C0CE0:  VSTR            S20, [SP,#0x160+var_148]
5C0CE4:  VSTR            S22, [SP,#0x160+var_140]
5C0CE8:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5C0CEC:  ADD             R6, SP, #0x160+var_154
5C0CEE:  MOV             R1, R4; CVector *
5C0CF0:  MOV             R2, R10
5C0CF2:  MOV             R0, R6; CVector *
5C0CF4:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5C0CF8:  MOV             R0, R6; this
5C0CFA:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5C0CFE:  LDR             R1, [SP,#0x160+var_160]
5C0D00:  VMUL.F32        S0, S18, S18
5C0D04:  VMUL.F32        S2, S20, S20
5C0D08:  LDR.W           R0, [R9,#0x1C]
5C0D0C:  VLDR            S4, [R9,#0x20]
5C0D10:  VMUL.F32        S6, S22, S22
5C0D14:  LDR             R1, [R1]
5C0D16:  MOVS            R2, #0
5C0D18:  MOVS            R3, #0x10
5C0D1A:  SUBS            R0, R1, R0
5C0D1C:  MOVS            R1, #6
5C0D1E:  VADD.F32        S0, S2, S0
5C0D22:  VCVT.F32.U32    S2, S4
5C0D26:  VMOV            S4, R0
5C0D2A:  VCVT.F32.U32    S4, S4
5C0D2E:  LDRB.W          R0, [R9,#0x28]
5C0D32:  VADD.F32        S0, S0, S6
5C0D36:  VDIV.F32        S2, S4, S2
5C0D3A:  VMOV            S4, R0
5C0D3E:  VSUB.F32        S2, S16, S2
5C0D42:  VCVT.F32.U32    S4, S4
5C0D46:  STR.W           R11, [SP,#0x160+var_118]
5C0D4A:  VSQRT.F32       S0, S0
5C0D4E:  STR.W           R11, [SP,#0x160+var_F4]
5C0D52:  STR.W           R11, [SP,#0x160+var_D0]
5C0D56:  STR.W           R11, [SP,#0x160+var_88]
5C0D5A:  VMUL.F32        S4, S2, S4
5C0D5E:  VLDR            S6, [SP,#0x160+var_148]
5C0D62:  VLDR            S8, [SP,#0x160+var_144]
5C0D66:  VLDR            S10, [SP,#0x160+var_140]
5C0D6A:  VMUL.F32        S6, S0, S6
5C0D6E:  VMUL.F32        S8, S0, S8
5C0D72:  VMUL.F32        S0, S0, S10
5C0D76:  VCVT.U32.F32    S4, S4
5C0D7A:  VLDR            S14, [R9,#0x24]
5C0D7E:  VLDR            S10, [R9,#0x10]
5C0D82:  VMUL.F32        S6, S2, S6
5C0D86:  VLDR            S12, [R9,#0x14]
5C0D8A:  VMUL.F32        S8, S2, S8
5C0D8E:  VLDR            S1, [SP,#0x160+var_150]
5C0D92:  VMUL.F32        S0, S2, S0
5C0D96:  VLDR            S3, [SP,#0x160+var_14C]
5C0D9A:  VMUL.F32        S14, S2, S14
5C0D9E:  VLDR            S2, [SP,#0x160+var_154]
5C0DA2:  STR.W           R11, [SP,#0x160+var_64]
5C0DA6:  VMOV            R0, S4
5C0DAA:  VLDR            S4, [R9,#0xC]
5C0DAE:  VSUB.F32        S6, S4, S6
5C0DB2:  VSUB.F32        S8, S10, S8
5C0DB6:  VSUB.F32        S0, S12, S0
5C0DBA:  VMUL.F32        S1, S14, S1
5C0DBE:  VMUL.F32        S2, S2, S14
5C0DC2:  VMUL.F32        S14, S14, S3
5C0DC6:  VADD.F32        S5, S1, S8
5C0DCA:  VADD.F32        S3, S2, S6
5C0DCE:  VADD.F32        S7, S14, S0
5C0DD2:  VSUB.F32        S9, S6, S2
5C0DD6:  VSUB.F32        S11, S8, S1
5C0DDA:  VSUB.F32        S13, S0, S14
5C0DDE:  VSUB.F32        S15, S12, S14
5C0DE2:  VSUB.F32        S18, S10, S1
5C0DE6:  ORR.W           R0, R11, R0,LSL#24
5C0DEA:  STR             R0, [SP,#0x160+var_AC]
5C0DEC:  VSTR            S0, [SP,#0x160+var_128]
5C0DF0:  VSUB.F32        S0, S4, S2
5C0DF4:  VSTR            S8, [SP,#0x160+var_12C]
5C0DF8:  VADD.F32        S8, S14, S12
5C0DFC:  VSTR            S6, [SP,#0x160+var_130]
5C0E00:  VADD.F32        S6, S1, S10
5C0E04:  VADD.F32        S2, S2, S4
5C0E08:  ADD             R0, SP, #0x160+var_130
5C0E0A:  VSTR            S3, [SP,#0x160+var_10C]
5C0E0E:  VSTR            S5, [SP,#0x160+var_108]
5C0E12:  VSTR            S7, [SP,#0x160+var_104]
5C0E16:  VSTR            S9, [SP,#0x160+var_E8]
5C0E1A:  VSTR            S11, [SP,#0x160+var_E4]
5C0E1E:  VSTR            S13, [SP,#0x160+var_E0]
5C0E22:  VSTR            S4, [SP,#0x160+var_C4]
5C0E26:  VSTR            S10, [SP,#0x160+var_C0]
5C0E2A:  VSTR            S12, [SP,#0x160+var_BC]
5C0E2E:  VSTR            S2, [SP,#0x160+var_A0]
5C0E32:  VSTR            S6, [SP,#0x160+var_9C]
5C0E36:  VSTR            S8, [SP,#0x160+var_98]
5C0E3A:  VSTR            S0, [SP,#0x160+var_7C]
5C0E3E:  VSTR            S18, [SP,#0x160+var_78]
5C0E42:  VSTR            S15, [SP,#0x160+var_74]
5C0E46:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5C0E4A:  CBZ             R0, loc_5C0E5A
5C0E4C:  ADD             R1, SP, #0x160+var_58
5C0E4E:  MOVS            R0, #3
5C0E50:  MOVS            R2, #0xC
5C0E52:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5C0E56:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5C0E5A:  ADDS            R5, #0x2C ; ','
5C0E5C:  CMP.W           R5, #0x2C0
5C0E60:  BNE.W           loc_5C0C58
5C0E64:  MOVS            R0, #8
5C0E66:  MOVS            R1, #1
5C0E68:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0E6C:  MOVS            R0, #0xA
5C0E6E:  MOVS            R1, #5
5C0E70:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0E74:  MOVS            R0, #0xB
5C0E76:  MOVS            R1, #6
5C0E78:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0E7C:  MOVS            R0, #0x14
5C0E7E:  MOVS            R1, #2
5C0E80:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0E84:  ADD             SP, SP, #0x120
5C0E86:  VPOP            {D8-D11}
5C0E8A:  ADD             SP, SP, #4
5C0E8C:  POP.W           {R8-R11}
5C0E90:  POP             {R4-R7,PC}
