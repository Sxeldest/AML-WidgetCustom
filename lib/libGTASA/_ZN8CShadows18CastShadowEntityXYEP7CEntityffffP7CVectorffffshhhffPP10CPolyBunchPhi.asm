; =========================================================
; Game Engine Function: _ZN8CShadows18CastShadowEntityXYEP7CEntityffffP7CVectorffffshhhffPP10CPolyBunchPhi
; Address            : 0x5BBB9C - 0x5BD168
; =========================================================

5BBB9C:  PUSH            {R4-R7,LR}
5BBB9E:  ADD             R7, SP, #0xC
5BBBA0:  PUSH.W          {R8-R11}
5BBBA4:  SUB             SP, SP, #4
5BBBA6:  VPUSH           {D8-D15}
5BBBAA:  SUB             SP, SP, #0xA8
5BBBAC:  MOV             R1, R0
5BBBAE:  LDR.W           R0, =(byte_A53628 - 0x5BBBB6)
5BBBB2:  ADD             R0, PC; byte_A53628
5BBBB4:  LDRB            R0, [R0]
5BBBB6:  DMB.W           ISH
5BBBBA:  TST.W           R0, #1
5BBBBE:  MOV             R0, R1
5BBBC0:  STR             R0, [SP,#0x108+var_90]
5BBBC2:  BNE             loc_5BBBDE
5BBBC4:  LDR.W           R0, =(byte_A53628 - 0x5BBBCC)
5BBBC8:  ADD             R0, PC; byte_A53628 ; __guard *
5BBBCA:  BLX.W           j___cxa_guard_acquire
5BBBCE:  LDR             R1, [SP,#0x108+var_90]
5BBBD0:  CBZ             R0, loc_5BBBDE
5BBBD2:  LDR.W           R0, =(byte_A53628 - 0x5BBBDA)
5BBBD6:  ADD             R0, PC; byte_A53628 ; __guard *
5BBBD8:  BLX.W           j___cxa_guard_release
5BBBDC:  LDR             R1, [SP,#0x108+var_90]
5BBBDE:  LDR.W           R0, =(byte_A5371C - 0x5BBBE6)
5BBBE2:  ADD             R0, PC; byte_A5371C
5BBBE4:  LDRB            R0, [R0]
5BBBE6:  DMB.W           ISH
5BBBEA:  TST.W           R0, #1
5BBBEE:  BNE             loc_5BBC0A
5BBBF0:  LDR.W           R0, =(byte_A5371C - 0x5BBBF8)
5BBBF4:  ADD             R0, PC; byte_A5371C ; __guard *
5BBBF6:  BLX.W           j___cxa_guard_acquire
5BBBFA:  LDR             R1, [SP,#0x108+var_90]
5BBBFC:  CBZ             R0, loc_5BBC0A
5BBBFE:  LDR.W           R0, =(byte_A5371C - 0x5BBC06)
5BBC02:  ADD             R0, PC; byte_A5371C ; __guard *
5BBC04:  BLX.W           j___cxa_guard_release
5BBC08:  LDR             R1, [SP,#0x108+var_90]
5BBC0A:  LDR.W           R0, =(byte_A53750 - 0x5BBC12)
5BBC0E:  ADD             R0, PC; byte_A53750
5BBC10:  LDRB            R0, [R0]
5BBC12:  DMB.W           ISH
5BBC16:  TST.W           R0, #1
5BBC1A:  BNE             loc_5BBC36
5BBC1C:  LDR.W           R0, =(byte_A53750 - 0x5BBC24)
5BBC20:  ADD             R0, PC; byte_A53750 ; __guard *
5BBC22:  BLX.W           j___cxa_guard_acquire
5BBC26:  LDR             R1, [SP,#0x108+var_90]
5BBC28:  CBZ             R0, loc_5BBC36
5BBC2A:  LDR.W           R0, =(byte_A53750 - 0x5BBC32)
5BBC2E:  ADD             R0, PC; byte_A53750 ; __guard *
5BBC30:  BLX.W           j___cxa_guard_release
5BBC34:  LDR             R1, [SP,#0x108+var_90]
5BBC36:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5BBC42)
5BBC3A:  LDRSH.W         R1, [R1,#0x26]
5BBC3E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5BBC40:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5BBC42:  LDR.W           R0, [R0,R1,LSL#2]
5BBC46:  LDR             R0, [R0,#0x2C]; this
5BBC48:  LDR.W           R11, [R0,#0x2C]
5BBC4C:  CMP.W           R11, #0
5BBC50:  ITT NE
5BBC52:  LDRHNE.W        R1, [R11,#4]; CColModel *
5BBC56:  CMPNE           R1, #0
5BBC58:  BEQ.W           loc_5BD01E
5BBC5C:  VLDR            S20, [R7,#arg_14]
5BBC60:  VLDR            S22, [R7,#arg_10]
5BBC64:  VLDR            S18, [R7,#arg_C]
5BBC68:  VLDR            S24, [R7,#arg_8]
5BBC6C:  LDR.W           R8, [R7,#arg_4]
5BBC70:  BLX.W           j__ZN10CCollision23CalculateTrianglePlanesEP9CColModel; CCollision::CalculateTrianglePlanes(CColModel *)
5BBC74:  LDR             R0, [SP,#0x108+var_90]; this
5BBC76:  LDR             R2, [R0,#0x14]
5BBC78:  CBZ             R2, loc_5BBC84
5BBC7A:  VLDR            S0, [R2]
5BBC7E:  VMUL.F32        S16, S0, S24
5BBC82:  B               loc_5BBCA8
5BBC84:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BBC88:  LDR             R0, [SP,#0x108+var_90]
5BBC8A:  LDR             R1, [R0,#0x14]; CMatrix *
5BBC8C:  LDR             R0, [SP,#0x108+var_90]
5BBC8E:  ADDS            R6, R0, #4
5BBC90:  MOV             R0, R6; this
5BBC92:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BBC96:  LDR             R0, [SP,#0x108+var_90]; this
5BBC98:  LDR             R2, [R0,#0x14]
5BBC9A:  CMP             R2, #0
5BBC9C:  VLDR            S0, [R2]
5BBCA0:  VMUL.F32        S16, S0, S24
5BBCA4:  BEQ.W           loc_5BD02C
5BBCA8:  VLDR            S0, [R2,#4]
5BBCAC:  VMUL.F32        S0, S0, S18
5BBCB0:  VADD.F32        S16, S16, S0
5BBCB4:  VLDR            S0, [R2,#0x10]
5BBCB8:  VMUL.F32        S24, S0, S24
5BBCBC:  VLDR            S0, [R2,#0x14]
5BBCC0:  VMUL.F32        S0, S0, S18
5BBCC4:  VADD.F32        S18, S24, S0
5BBCC8:  VLDR            S0, [R2]
5BBCCC:  VMUL.F32        S24, S0, S22
5BBCD0:  VLDR            S0, [R2,#4]
5BBCD4:  VMUL.F32        S0, S0, S20
5BBCD8:  VADD.F32        S24, S24, S0
5BBCDC:  VLDR            S0, [R2,#0x10]
5BBCE0:  VMUL.F32        S28, S0, S22
5BBCE4:  VLDR            S0, [R2,#0x14]
5BBCE8:  ADDS            R4, R0, #4
5BBCEA:  CMP             R2, #0
5BBCEC:  VLDR            S2, [R8]
5BBCF0:  VMUL.F32        S0, S0, S20
5BBCF4:  MOV             R1, R4
5BBCF6:  VLDR            S4, [R8,#4]
5BBCFA:  IT NE
5BBCFC:  ADDNE.W         R1, R2, #0x30 ; '0'
5BBD00:  VLDR            S6, [R1]
5BBD04:  CMP             R2, #0
5BBD06:  VLDR            S8, [R1,#4]
5BBD0A:  VSUB.F32        S26, S2, S6
5BBD0E:  VSUB.F32        S22, S4, S8
5BBD12:  VADD.F32        S20, S28, S0
5BBD16:  BEQ             loc_5BBD22
5BBD18:  VLDR            S0, [R2]
5BBD1C:  VMUL.F32        S28, S26, S0
5BBD20:  B               loc_5BBD42
5BBD22:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BBD26:  LDR             R0, [SP,#0x108+var_90]
5BBD28:  LDR             R1, [R0,#0x14]; CMatrix *
5BBD2A:  MOV             R0, R4; this
5BBD2C:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BBD30:  LDR             R0, [SP,#0x108+var_90]; this
5BBD32:  LDR             R2, [R0,#0x14]
5BBD34:  CMP             R2, #0
5BBD36:  VLDR            S0, [R2]
5BBD3A:  VMUL.F32        S28, S26, S0
5BBD3E:  BEQ.W           loc_5BD10E
5BBD42:  VLDR            S0, [R2,#4]
5BBD46:  VMUL.F32        S0, S22, S0
5BBD4A:  VADD.F32        S28, S28, S0
5BBD4E:  VLDR            S0, [R2,#0x10]
5BBD52:  VMUL.F32        S26, S26, S0
5BBD56:  VLDR            S0, [R2,#0x14]
5BBD5A:  VADD.F32        S2, S16, S28
5BBD5E:  VSUB.F32        S4, S28, S16
5BBD62:  LDR.W           R1, =(dword_A53720 - 0x5BBD6E)
5BBD66:  VMUL.F32        S0, S22, S0
5BBD6A:  ADD             R1, PC; dword_A53720
5BBD6C:  VSUB.F32        S6, S2, S24
5BBD70:  VADD.F32        S10, S24, S2
5BBD74:  VADD.F32        S0, S26, S0
5BBD78:  VADD.F32        S12, S24, S4
5BBD7C:  VSUB.F32        S14, S4, S24
5BBD80:  VSTR            S6, [R1]
5BBD84:  VADD.F32        S8, S18, S0
5BBD88:  VSUB.F32        S9, S0, S18
5BBD8C:  VSUB.F32        S0, S8, S20
5BBD90:  VADD.F32        S2, S20, S8
5BBD94:  VADD.F32        S4, S20, S9
5BBD98:  VSUB.F32        S8, S9, S20
5BBD9C:  VSTR            S0, [R1,#4]
5BBDA0:  VSTR            S10, [R1,#0xC]
5BBDA4:  VSTR            S2, [R1,#0x10]
5BBDA8:  VSTR            S12, [R1,#0x18]
5BBDAC:  VSTR            S4, [R1,#0x1C]
5BBDB0:  VSTR            S14, [R1,#0x24]
5BBDB4:  VSTR            S8, [R1,#0x28]
5BBDB8:  MOV             R1, R4
5BBDBA:  LDR             R0, [R0,#0x14]
5BBDBC:  VLDR            S18, [R8,#8]
5BBDC0:  CMP             R0, #0
5BBDC2:  IT NE
5BBDC4:  ADDNE.W         R1, R0, #0x30 ; '0'
5BBDC8:  LDRB.W          R0, [R11,#7]
5BBDCC:  VLDR            S20, [R1,#8]
5BBDD0:  TST.W           R0, #2
5BBDD4:  BNE             loc_5BBDDA
5BBDD6:  MOVS            R1, #1
5BBDD8:  B               loc_5BBDE6
5BBDDA:  LDR.W           R1, [R11,#0x30]
5BBDDE:  LDR             R1, [R1]
5BBDE0:  CMP             R1, #1
5BBDE2:  BLT.W           loc_5BD01E
5BBDE6:  LDR             R5, [R7,#arg_24]
5BBDE8:  ADD.W           R6, R7, #0x20 ; ' '
5BBDEC:  VMAX.F32        D21, D0, D1
5BBDF0:  STR             R1, [SP,#0x108+var_9C]
5BBDF2:  VMIN.F32        D23, D0, D1
5BBDF6:  STR             R4, [SP,#0x108+var_94]
5BBDF8:  VMOV            S0, R5
5BBDFC:  LDM             R6, {R2,R3,R6}
5BBDFE:  ADD             R1, SP, #0x108+var_6C
5BBE00:  VCVT.F32.U32    S0, S0
5BBE04:  LDR.W           R5, =(TempBufferRenderIndexList_ptr - 0x5BBE12)
5BBE08:  LSLS            R2, R2, #0x18
5BBE0A:  LDR.W           R12, [R7,#arg_38]
5BBE0E:  ADD             R5, PC; TempBufferRenderIndexList_ptr
5BBE10:  VSUB.F32        S18, S18, S20
5BBE14:  VLDR            S16, [R7,#arg_28]
5BBE18:  VMAX.F32        D20, D2, D4
5BBE1C:  VMIN.F32        D22, D2, D4
5BBE20:  LDR.W           R9, =(dword_A5362C - 0x5BBE4C)
5BBE24:  VMAX.F32        D16, D6, D7
5BBE28:  VLDR            S17, [R7,#arg_2C]
5BBE2C:  VMAX.F32        D19, D3, D5
5BBE30:  VLDR            S29, =0.1
5BBE34:  VSTR            S0, [SP,#0x108+var_D0]
5BBE38:  VMOV            S0, R6
5BBE3C:  LDR.W           R6, =(_ZN12RenderBuffer17IndicesToBeStoredE_ptr - 0x5BBE4E)
5BBE40:  VMIN.F32        D17, D6, D7
5BBE44:  VCVT.F32.U32    S0, S0
5BBE48:  ADD             R9, PC; dword_A5362C
5BBE4A:  ADD             R6, PC; _ZN12RenderBuffer17IndicesToBeStoredE_ptr
5BBE4C:  VMIN.F32        D18, D3, D5
5BBE50:  VSUB.F32        S28, S18, S16
5BBE54:  VLDR            S16, =0.06
5BBE58:  VMOV.F32        S31, #1.0
5BBE5C:  MOVS            R4, #0
5BBE5E:  VMAX.F32        D10, D19, D16
5BBE62:  VMIN.F32        D11, D18, D17
5BBE66:  VMAX.F32        D12, D21, D20
5BBE6A:  VSTR            S0, [SP,#0x108+var_D4]
5BBE6E:  VMOV            S0, R3
5BBE72:  LDR.W           R3, =(_ZN12RenderBuffer18VerticesToBeStoredE_ptr - 0x5BBE88)
5BBE76:  VMIN.F32        D13, D23, D22
5BBE7A:  VCVT.F32.U32    S0, S0
5BBE7E:  STR             R2, [SP,#0x108+var_DC]
5BBE80:  LDR.W           R2, =(TempBufferIndicesStored_ptr - 0x5BBE8E)
5BBE84:  ADD             R3, PC; _ZN12RenderBuffer18VerticesToBeStoredE_ptr
5BBE86:  VSTR            S28, [SP,#0x108+var_A4]
5BBE8A:  ADD             R2, PC; TempBufferIndicesStored_ptr
5BBE8C:  STR.W           R11, [SP,#0x108+var_A0]
5BBE90:  LDR             R2, [R2]; TempBufferIndicesStored
5BBE92:  STR             R2, [SP,#0x108+var_B0]
5BBE94:  LDR.W           R2, =(TempBufferVerticesStored_ptr - 0x5BBEA0)
5BBE98:  VSTR            S0, [SP,#0x108+var_D8]
5BBE9C:  ADD             R2, PC; TempBufferVerticesStored_ptr
5BBE9E:  LDR             R2, [R2]; TempBufferVerticesStored
5BBEA0:  STR             R2, [SP,#0x108+var_B4]
5BBEA2:  LDR.W           R2, =(TempBufferVerticesStored_ptr - 0x5BBEAA)
5BBEA6:  ADD             R2, PC; TempBufferVerticesStored_ptr
5BBEA8:  LDR             R2, [R2]; TempBufferVerticesStored
5BBEAA:  STR             R2, [SP,#0x108+var_EC]
5BBEAC:  LDR.W           R2, =(TempBufferIndicesStored_ptr - 0x5BBEB4)
5BBEB0:  ADD             R2, PC; TempBufferIndicesStored_ptr
5BBEB2:  LDR             R2, [R2]; TempBufferIndicesStored
5BBEB4:  STR             R2, [SP,#0x108+var_B8]
5BBEB6:  LDR             R2, [R3]; RenderBuffer::VerticesToBeStored ...
5BBEB8:  STR             R2, [SP,#0x108+var_BC]
5BBEBA:  LDR             R2, [R6]; RenderBuffer::IndicesToBeStored ...
5BBEBC:  STR             R2, [SP,#0x108+var_C0]
5BBEBE:  LDR             R2, [R5]; TempBufferRenderIndexList
5BBEC0:  MOV             R5, R1
5BBEC2:  UXTB.W          R1, R12
5BBEC6:  STR             R2, [SP,#0x108+var_E0]
5BBEC8:  STR             R1, [SP,#0x108+var_C4]
5BBECA:  LDR.W           R1, =(TempVertexBuffer_ptr - 0x5BBED6)
5BBECE:  LDR.W           R2, =(TempBufferIndicesStored_ptr - 0x5BBEDA)
5BBED2:  ADD             R1, PC; TempVertexBuffer_ptr
5BBED4:  LDR             R6, [SP,#0x108+var_9C]
5BBED6:  ADD             R2, PC; TempBufferIndicesStored_ptr
5BBED8:  LDR             R1, [R1]; TempVertexBuffer
5BBEDA:  STR             R1, [SP,#0x108+var_E4]
5BBEDC:  LDR.W           R1, =(TempBufferRenderIndexList_ptr - 0x5BBEE4)
5BBEE0:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5BBEE2:  LDR             R1, [R1]; TempBufferRenderIndexList
5BBEE4:  STR             R1, [SP,#0x108+var_E8]
5BBEE6:  LDR.W           R1, =(TempBufferRenderIndexList_ptr - 0x5BBEEE)
5BBEEA:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5BBEEC:  LDR             R1, [R1]; TempBufferRenderIndexList
5BBEEE:  STR             R1, [SP,#0x108+var_F4]
5BBEF0:  LDR.W           R1, =(TempBufferVerticesStored_ptr - 0x5BBEF8)
5BBEF4:  ADD             R1, PC; TempBufferVerticesStored_ptr
5BBEF6:  LDR             R1, [R1]; TempBufferVerticesStored
5BBEF8:  STR             R1, [SP,#0x108+var_C8]
5BBEFA:  LDR             R1, [R2]; TempBufferIndicesStored
5BBEFC:  STR             R1, [SP,#0x108+var_CC]
5BBEFE:  LDR.W           R1, =(_ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr - 0x5BBF06)
5BBF02:  ADD             R1, PC; _ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr
5BBF04:  LDR             R1, [R1]; CCustomBuildingDNPipeline::m_fDNBalanceParam ...
5BBF06:  STR             R1, [SP,#0x108+var_F0]
5BBF08:  LDR.W           R1, =(_ZN8CShadows15pEmptyBunchListE_ptr - 0x5BBF10)
5BBF0C:  ADD             R1, PC; _ZN8CShadows15pEmptyBunchListE_ptr
5BBF0E:  LDR             R1, [R1]; CShadows::pEmptyBunchList ...
5BBF10:  STR             R1, [SP,#0x108+var_A8]
5BBF12:  LDR.W           R1, =(_ZN8CShadows15pEmptyBunchListE_ptr - 0x5BBF1A)
5BBF16:  ADD             R1, PC; _ZN8CShadows15pEmptyBunchListE_ptr
5BBF18:  LDR             R1, [R1]; CShadows::pEmptyBunchList ...
5BBF1A:  STR             R1, [SP,#0x108+var_AC]
5BBF1C:  B               loc_5BBF80
5BBF1E:  MVNS            R1, R4
5BBF20:  LDR.W           R0, [R11,#0x30]
5BBF24:  RSB.W           R1, R1, R1,LSL#3
5BBF28:  ADD.W           R0, R0, R1,LSL#2
5BBF2C:  VLDR            S0, [R0]
5BBF30:  VCMPE.F32       S20, S0
5BBF34:  VMRS            APSR_nzcv, FPSCR
5BBF38:  BLE             loc_5BBF72
5BBF3A:  VLDR            S0, [R0,#0xC]
5BBF3E:  VCMPE.F32       S22, S0
5BBF42:  VMRS            APSR_nzcv, FPSCR
5BBF46:  BGE             loc_5BBF72
5BBF48:  VLDR            S0, [R0,#4]
5BBF4C:  VCMPE.F32       S24, S0
5BBF50:  VMRS            APSR_nzcv, FPSCR
5BBF54:  BLE             loc_5BBF72
5BBF56:  VLDR            S0, [R0,#0x10]
5BBF5A:  VCMPE.F32       S26, S0
5BBF5E:  VMRS            APSR_nzcv, FPSCR
5BBF62:  BGE             loc_5BBF72
5BBF64:  LDRSH.W         R8, [R0,#0x18]
5BBF68:  LDRSH.W         R0, [R0,#0x1A]
5BBF6C:  ADDS            R4, R0, #1
5BBF6E:  CMP             R8, R4
5BBF70:  BLT             loc_5BBF92
5BBF72:  LDR             R4, [SP,#0x108+var_8C]
5BBF74:  ADDS            R4, #1
5BBF76:  CMP             R4, R6
5BBF78:  BEQ.W           loc_5BD01E
5BBF7C:  LDRB.W          R0, [R11,#7]
5BBF80:  LSLS            R0, R0, #0x1E
5BBF82:  STR             R4, [SP,#0x108+var_8C]
5BBF84:  BMI             loc_5BBF1E
5BBF86:  LDRSH.W         R4, [R11,#4]
5BBF8A:  MOV.W           R8, #0
5BBF8E:  CMP             R8, R4
5BBF90:  BGE             loc_5BBF72
5BBF92:  STR             R4, [SP,#0x108+var_88]
5BBF94:  LDR.W           R0, [R11,#0x1C]
5BBF98:  ADD.W           R10, R8, R8,LSL#2
5BBF9C:  ADD.W           R0, R0, R10,LSL#2
5BBFA0:  VLDR            S0, [R0,#8]
5BBFA4:  VABS.F32        S0, S0
5BBFA8:  VCMPE.F32       S0, S29
5BBFAC:  VMRS            APSR_nzcv, FPSCR
5BBFB0:  BLE.W           loc_5BD010
5BBFB4:  LDR.W           R4, [R11,#0x18]
5BBFB8:  MOV.W           R0, R8,LSL#4
5BBFBC:  MOV             R1, R5; CVector *
5BBFBE:  LDR             R2, [R4,R0]; int
5BBFC0:  MOV             R0, R11; this
5BBFC2:  BLX.W           j__ZNK14CCollisionData16GetTrianglePointER7CVectori; CCollisionData::GetTrianglePoint(CVector &,int)
5BBFC6:  ADD.W           R4, R4, R8,LSL#4
5BBFCA:  ADD             R1, SP, #0x108+var_78; CVector *
5BBFCC:  MOV             R0, R11; this
5BBFCE:  LDR             R2, [R4,#4]; int
5BBFD0:  BLX.W           j__ZNK14CCollisionData16GetTrianglePointER7CVectori; CCollisionData::GetTrianglePoint(CVector &,int)
5BBFD4:  LDR             R2, [R4,#8]; int
5BBFD6:  ADD             R1, SP, #0x108+var_84; CVector *
5BBFD8:  MOV             R0, R11; this
5BBFDA:  LDR             R4, [SP,#0x108+var_88]
5BBFDC:  BLX.W           j__ZNK14CCollisionData16GetTrianglePointER7CVectori; CCollisionData::GetTrianglePoint(CVector &,int)
5BBFE0:  VLDR            S0, [SP,#0x108+var_6C]
5BBFE4:  VLDR            S14, [SP,#0x108+var_78]
5BBFE8:  VCMPE.F32       S0, S22
5BBFEC:  VLDR            S4, [SP,#0x108+var_84]
5BBFF0:  VMRS            APSR_nzcv, FPSCR
5BBFF4:  ITT LE
5BBFF6:  VCMPELE.F32     S14, S22
5BBFFA:  VMRSLE          APSR_nzcv, FPSCR
5BBFFE:  BGT             loc_5BC00C
5BC000:  VCMPE.F32       S4, S22
5BC004:  VMRS            APSR_nzcv, FPSCR
5BC008:  BLE.W           loc_5BD010
5BC00C:  VCMPE.F32       S0, S20
5BC010:  VMRS            APSR_nzcv, FPSCR
5BC014:  ITT GE
5BC016:  VCMPEGE.F32     S14, S20
5BC01A:  VMRSGE          APSR_nzcv, FPSCR
5BC01E:  BLT             loc_5BC02C
5BC020:  VCMPE.F32       S4, S20
5BC024:  VMRS            APSR_nzcv, FPSCR
5BC028:  BGE.W           loc_5BD010
5BC02C:  VLDR            S2, [SP,#0x108+var_68]
5BC030:  VLDR            S1, [SP,#0x108+var_74]
5BC034:  VCMPE.F32       S2, S26
5BC038:  VLDR            S8, [SP,#0x108+var_80]
5BC03C:  VMRS            APSR_nzcv, FPSCR
5BC040:  ITT LE
5BC042:  VCMPELE.F32     S1, S26
5BC046:  VMRSLE          APSR_nzcv, FPSCR
5BC04A:  BGT             loc_5BC058
5BC04C:  VCMPE.F32       S8, S26
5BC050:  VMRS            APSR_nzcv, FPSCR
5BC054:  BLE.W           loc_5BD010
5BC058:  VCMPE.F32       S2, S24
5BC05C:  VMRS            APSR_nzcv, FPSCR
5BC060:  ITT GE
5BC062:  VCMPEGE.F32     S1, S24
5BC066:  VMRSGE          APSR_nzcv, FPSCR
5BC06A:  BLT             loc_5BC078
5BC06C:  VCMPE.F32       S8, S24
5BC070:  VMRS            APSR_nzcv, FPSCR
5BC074:  BGE.W           loc_5BD010
5BC078:  VLDR            S6, [SP,#0x108+var_64]
5BC07C:  VLDR            S12, [SP,#0x108+var_70]
5BC080:  VCMPE.F32       S6, S18
5BC084:  VLDR            S10, [SP,#0x108+var_7C]
5BC088:  VMRS            APSR_nzcv, FPSCR
5BC08C:  ITT GE
5BC08E:  VCMPEGE.F32     S12, S18
5BC092:  VMRSGE          APSR_nzcv, FPSCR
5BC096:  BLT             loc_5BC0A4
5BC098:  VCMPE.F32       S10, S18
5BC09C:  VMRS            APSR_nzcv, FPSCR
5BC0A0:  BGE.W           loc_5BD010
5BC0A4:  VCMPE.F32       S6, S28
5BC0A8:  VMRS            APSR_nzcv, FPSCR
5BC0AC:  ITT LE
5BC0AE:  VCMPELE.F32     S12, S28
5BC0B2:  VMRSLE          APSR_nzcv, FPSCR
5BC0B6:  BGT             loc_5BC0C4
5BC0B8:  VCMPE.F32       S10, S28
5BC0BC:  VMRS            APSR_nzcv, FPSCR
5BC0C0:  BLE.W           loc_5BD010
5BC0C4:  LDR.W           R0, =(dword_A53720 - 0x5BC0D4)
5BC0C8:  VSUB.F32        S10, S1, S2
5BC0CC:  VSUB.F32        S12, S14, S0
5BC0D0:  ADD             R0, PC; dword_A53720
5BC0D2:  MOV             R1, R0
5BC0D4:  LDRD.W          R0, R12, [R1,#(dword_A53744 - 0xA53720)]
5BC0D8:  LDRD.W          R2, R3, [R1,#(dword_A53738 - 0xA53720)]
5BC0DC:  LDRD.W          R6, R5, [R1]
5BC0E0:  LDRD.W          R4, LR, [R1,#(dword_A5372C - 0xA53720)]
5BC0E4:  VMOV            S5, R5
5BC0E8:  LDR.W           R1, =(dword_A53538 - 0x5BC0F4)
5BC0EC:  VMOV            S3, R6
5BC0F0:  ADD             R1, PC; dword_A53538
5BC0F2:  STR             R0, [R1,#(dword_A5355C - 0xA53538)]
5BC0F4:  MOVS            R0, #0
5BC0F6:  STRD.W          R2, R3, [R1,#(dword_A53550 - 0xA53538)]
5BC0FA:  MOV.W           R2, #0x3F800000
5BC0FE:  STRD.W          R6, R5, [R1]
5BC102:  MOVS            R3, #0
5BC104:  STRD.W          R4, LR, [R1,#(dword_A53544 - 0xA53538)]
5BC108:  MOV.W           LR, #0
5BC10C:  STR.W           R12, [R1,#(dword_A53560 - 0xA53538)]
5BC110:  LDR.W           R1, =(dword_A5362C - 0x5BC118)
5BC114:  ADD             R1, PC; dword_A5362C
5BC116:  STRD.W          R0, R0, [R1]
5BC11A:  STRD.W          R2, R0, [R1,#(dword_A53638 - 0xA5362C)]
5BC11E:  STRD.W          R2, R2, [R1,#(dword_A53644 - 0xA5362C)]
5BC122:  STRD.W          R0, R2, [R1,#(dword_A53650 - 0xA5362C)]
5BC126:  MOVS            R2, #0
5BC128:  B               loc_5BC13E
5BC12A:  LDR.W           R1, =(dword_A53538 - 0x5BC134)
5BC12E:  ADDS            R2, #1
5BC130:  ADD             R1, PC; dword_A53538
5BC132:  ADD             R1, R0
5BC134:  ADDS            R0, #0xC
5BC136:  VLDR            S3, [R1,#0xC]
5BC13A:  VLDR            S5, [R1,#0x10]
5BC13E:  VSUB.F32        S5, S5, S2
5BC142:  LDR.W           R1, =(dword_A53538 - 0x5BC14E)
5BC146:  VSUB.F32        S7, S3, S0
5BC14A:  ADD             R1, PC; dword_A53538
5BC14C:  ADDS            R6, R1, R0
5BC14E:  VMUL.F32        S5, S12, S5
5BC152:  VMUL.F32        S7, S10, S7
5BC156:  VSUB.F32        S5, S7, S5
5BC15A:  VCMPE.F32       S5, #0.0
5BC15E:  VMRS            APSR_nzcv, FPSCR
5BC162:  BLE             loc_5BC18C
5BC164:  UXTH            R1, R3
5BC166:  CMP             R1, #2
5BC168:  BEQ             loc_5BC248
5BC16A:  SXTH            R1, R3
5BC16C:  CMP             R1, #1
5BC16E:  BEQ.W           loc_5BC308
5BC172:  CMP             R1, #0
5BC174:  BNE.W           loc_5BC35E
5BC178:  LDR.W           R3, =(dword_A5362C - 0x5BC184)
5BC17C:  ADD.W           R1, LR, LR,LSL#1
5BC180:  ADD             R3, PC; dword_A5362C
5BC182:  B               loc_5BC312
5BC184:  DCFS 0.1
5BC188:  DCFS 0.06
5BC18C:  UXTH            R1, R3
5BC18E:  CMP             R1, #1
5BC190:  BNE             loc_5BC23E
5BC192:  LDR.W           R12, =(dword_A53538 - 0x5BC1A6)
5BC196:  VABS.F32        S5, S5
5BC19A:  LDR.W           R1, =(dword_A5362C - 0x5BC1B0)
5BC19E:  ADD.W           R5, LR, LR,LSL#1
5BC1A2:  ADD             R12, PC; dword_A53538
5BC1A4:  ADD.W           LR, LR, #1
5BC1A8:  ADD.W           R3, R12, R0
5BC1AC:  ADD             R1, PC; dword_A5362C
5BC1AE:  VLDR            S9, [R3,#-8]
5BC1B2:  MOV             R4, R1
5BC1B4:  VLDR            S7, [R3,#-0xC]
5BC1B8:  ADDS            R1, R4, R0
5BC1BA:  VSUB.F32        S9, S9, S2
5BC1BE:  ADD.W           R4, R4, R5,LSL#2
5BC1C2:  VSUB.F32        S11, S7, S0
5BC1C6:  VLDR            S13, [R1,#-0xC]
5BC1CA:  VMUL.F32        S9, S12, S9
5BC1CE:  VMUL.F32        S11, S10, S11
5BC1D2:  VSUB.F32        S9, S11, S9
5BC1D6:  VLDR            S11, [R1]
5BC1DA:  VABS.F32        S9, S9
5BC1DE:  VADD.F32        S5, S5, S9
5BC1E2:  VDIV.F32        S5, S9, S5
5BC1E6:  VSUB.F32        S9, S31, S5
5BC1EA:  VMUL.F32        S11, S11, S5
5BC1EE:  VMUL.F32        S3, S5, S3
5BC1F2:  VMUL.F32        S13, S13, S9
5BC1F6:  VMUL.F32        S7, S9, S7
5BC1FA:  VADD.F32        S11, S11, S13
5BC1FE:  VADD.F32        S3, S3, S7
5BC202:  VSTR            S11, [R4,#0x78]
5BC206:  VLDR            S11, [R1,#4]
5BC20A:  VLDR            S13, [R1,#-8]
5BC20E:  ADD.W           R1, R12, R5,LSL#2
5BC212:  VMUL.F32        S11, S11, S5
5BC216:  VSTR            S3, [R1,#0x78]
5BC21A:  VMUL.F32        S13, S13, S9
5BC21E:  VLDR            S3, [R3,#-8]
5BC222:  VLDR            S7, [R6,#4]
5BC226:  VMUL.F32        S3, S9, S3
5BC22A:  VMUL.F32        S5, S5, S7
5BC22E:  VADD.F32        S11, S11, S13
5BC232:  VADD.F32        S3, S5, S3
5BC236:  VSTR            S11, [R4,#0x7C]
5BC23A:  VSTR            S3, [R1,#0x7C]
5BC23E:  MOVS            R3, #2
5BC240:  CMP             R0, #0x24 ; '$'
5BC242:  BNE.W           loc_5BC12A
5BC246:  B               loc_5BC366
5BC248:  LDR.W           R12, =(dword_A53538 - 0x5BC25C)
5BC24C:  VABS.F32        S5, S5
5BC250:  LDR.W           R9, =(dword_A5362C - 0x5BC262)
5BC254:  ADD.W           R5, LR, LR,LSL#1
5BC258:  ADD             R12, PC; dword_A53538
5BC25A:  ADD.W           R3, R12, R0
5BC25E:  ADD             R9, PC; dword_A5362C
5BC260:  ADD.W           R1, R9, R0
5BC264:  ADD.W           R4, R9, R5,LSL#2
5BC268:  VLDR            S9, [R3,#-8]
5BC26C:  ADD.W           R5, R12, R5,LSL#2
5BC270:  VLDR            S7, [R3,#-0xC]
5BC274:  VSUB.F32        S9, S9, S2
5BC278:  VLDR            S13, [R1,#-0xC]
5BC27C:  VSUB.F32        S11, S7, S0
5BC280:  VMUL.F32        S9, S12, S9
5BC284:  VMUL.F32        S11, S10, S11
5BC288:  VSUB.F32        S9, S11, S9
5BC28C:  VLDR            S11, [R1]
5BC290:  VABS.F32        S9, S9
5BC294:  VADD.F32        S5, S5, S9
5BC298:  VDIV.F32        S5, S9, S5
5BC29C:  VSUB.F32        S9, S31, S5
5BC2A0:  VMUL.F32        S11, S11, S5
5BC2A4:  VMUL.F32        S3, S5, S3
5BC2A8:  VMUL.F32        S13, S13, S9
5BC2AC:  VMUL.F32        S7, S9, S7
5BC2B0:  VADD.F32        S11, S11, S13
5BC2B4:  VADD.F32        S3, S3, S7
5BC2B8:  VSTR            S11, [R4,#0x78]
5BC2BC:  VLDR            S11, [R1,#4]
5BC2C0:  VLDR            S13, [R1,#-8]
5BC2C4:  VMUL.F32        S11, S11, S5
5BC2C8:  VSTR            S3, [R5,#0x78]
5BC2CC:  VMUL.F32        S13, S13, S9
5BC2D0:  VLDR            S3, [R3,#-8]
5BC2D4:  VLDR            S7, [R6,#4]
5BC2D8:  ADDS            R6, R1, #4
5BC2DA:  VMUL.F32        S3, S9, S3
5BC2DE:  ADD.W           R1, LR, #1
5BC2E2:  VMUL.F32        S5, S5, S7
5BC2E6:  VADD.F32        S11, S11, S13
5BC2EA:  VADD.F32        S3, S5, S3
5BC2EE:  VSTR            S11, [R4,#0x7C]
5BC2F2:  LDR.W           R3, [R9,R0]
5BC2F6:  LDR.W           R9, =(dword_A5362C - 0x5BC304)
5BC2FA:  STR.W           R3, [R4,#0x84]
5BC2FE:  MOVS            R3, #2
5BC300:  ADD             R9, PC; dword_A5362C
5BC302:  VSTR            S3, [R5,#0x7C]
5BC306:  B               loc_5BC32A
5BC308:  LDR.W           R3, =(dword_A5362C - 0x5BC314)
5BC30C:  ADD.W           R1, LR, LR,LSL#1
5BC310:  ADD             R3, PC; dword_A5362C
5BC312:  MOV             R6, R3
5BC314:  ADD.W           R1, R6, R1,LSL#2
5BC318:  LDR             R3, [R6,R0]
5BC31A:  STR             R3, [R1,#0x78]
5BC31C:  ADD.W           R1, R2, R2,LSL#1
5BC320:  MOVS            R3, #1
5BC322:  ADD.W           R1, R6, R1,LSL#2
5BC326:  ADDS            R6, R1, #4
5BC328:  MOV             R1, LR
5BC32A:  LDR.W           R5, =(dword_A5362C - 0x5BC33A)
5BC32E:  ADD.W           R1, R1, R1,LSL#1
5BC332:  LDR             R6, [R6]
5BC334:  ADD             LR, R3
5BC336:  ADD             R5, PC; dword_A5362C
5BC338:  MOVS            R3, #1
5BC33A:  ADD.W           R5, R5, R1,LSL#2
5BC33E:  STR             R6, [R5,#0x7C]
5BC340:  LDR.W           R6, =(dword_A53538 - 0x5BC348)
5BC344:  ADD             R6, PC; dword_A53538
5BC346:  MOV             R5, R6
5BC348:  ADD.W           R1, R5, R1,LSL#2
5BC34C:  LDR             R6, [R5,R0]
5BC34E:  STR             R6, [R1,#0x78]
5BC350:  ADDS            R6, R5, R0
5BC352:  LDR             R6, [R6,#4]
5BC354:  STR             R6, [R1,#0x7C]
5BC356:  CMP             R0, #0x24 ; '$'
5BC358:  BNE.W           loc_5BC12A
5BC35C:  B               loc_5BC366
5BC35E:  MOVS            R3, #1
5BC360:  CMP             R0, #0x24 ; '$'
5BC362:  BNE.W           loc_5BC12A
5BC366:  LDR.W           R0, =(dword_A53538 - 0x5BC370)
5BC36A:  CMP             R3, #2
5BC36C:  ADD             R0, PC; dword_A53538
5BC36E:  VLDR            S5, [R0,#4]
5BC372:  VLDR            S3, [R0]
5BC376:  VSUB.F32        S5, S5, S2
5BC37A:  VSUB.F32        S7, S3, S0
5BC37E:  VMUL.F32        S5, S12, S5
5BC382:  VMUL.F32        S7, S10, S7
5BC386:  VSUB.F32        S5, S7, S5
5BC38A:  BNE             loc_5BC396
5BC38C:  VCMPE.F32       S5, #0.0
5BC390:  VMRS            APSR_nzcv, FPSCR
5BC394:  BGT             loc_5BC3A4
5BC396:  CMP             R3, #1
5BC398:  BNE             loc_5BC44A
5BC39A:  VCMPE.F32       S5, #0.0
5BC39E:  VMRS            APSR_nzcv, FPSCR
5BC3A2:  BGT             loc_5BC44A
5BC3A4:  LDR.W           R2, =(dword_A53538 - 0x5BC3B4)
5BC3A8:  VABS.F32        S5, S5
5BC3AC:  LDR.W           R0, =(dword_A5362C - 0x5BC3B6)
5BC3B0:  ADD             R2, PC; dword_A53538
5BC3B2:  ADD             R0, PC; dword_A5362C
5BC3B4:  VLDR            S9, [R2,#0x28]
5BC3B8:  VLDR            S7, [R2,#0x24]
5BC3BC:  MOV             R3, R0
5BC3BE:  VSUB.F32        S9, S9, S2
5BC3C2:  VLDR            S13, [R3,#0x24]
5BC3C6:  VSUB.F32        S11, S7, S0
5BC3CA:  ADD.W           R0, LR, LR,LSL#1
5BC3CE:  ADD.W           LR, LR, #1
5BC3D2:  ADD.W           R1, R3, R0,LSL#2
5BC3D6:  ADD.W           R0, R2, R0,LSL#2
5BC3DA:  VMUL.F32        S9, S12, S9
5BC3DE:  VMUL.F32        S11, S10, S11
5BC3E2:  VSUB.F32        S9, S11, S9
5BC3E6:  VLDR            S11, [R3]
5BC3EA:  VABS.F32        S9, S9
5BC3EE:  VADD.F32        S5, S5, S9
5BC3F2:  VDIV.F32        S5, S9, S5
5BC3F6:  VSUB.F32        S9, S31, S5
5BC3FA:  VMUL.F32        S11, S11, S5
5BC3FE:  VMUL.F32        S3, S5, S3
5BC402:  VMUL.F32        S13, S13, S9
5BC406:  VMUL.F32        S7, S9, S7
5BC40A:  VADD.F32        S11, S11, S13
5BC40E:  VADD.F32        S3, S3, S7
5BC412:  VSTR            S11, [R1,#0x78]
5BC416:  VSTR            S3, [R0,#0x78]
5BC41A:  VLDR            S11, [R3,#4]
5BC41E:  VLDR            S13, [R3,#0x28]
5BC422:  VLDR            S3, [R2,#4]
5BC426:  VMUL.F32        S11, S11, S5
5BC42A:  VLDR            S7, [R2,#0x28]
5BC42E:  VMUL.F32        S13, S13, S9
5BC432:  VMUL.F32        S3, S5, S3
5BC436:  VMUL.F32        S7, S9, S7
5BC43A:  VADD.F32        S11, S11, S13
5BC43E:  VADD.F32        S3, S3, S7
5BC442:  VSTR            S11, [R1,#0x7C]
5BC446:  VSTR            S3, [R0,#0x7C]
5BC44A:  CMP.W           LR, #1
5BC44E:  BLT.W           loc_5BC6A4
5BC452:  VSUB.F32        S10, S8, S1
5BC456:  MOVS            R2, #0
5BC458:  VSUB.F32        S12, S4, S14
5BC45C:  MOV             R3, LR
5BC45E:  MOVS            R1, #0
5BC460:  MOVS            R6, #0
5BC462:  MOVS            R5, #0
5BC464:  STR.W           LR, [SP,#0x108+var_98]
5BC468:  LDR.W           R0, =(dword_A53538 - 0x5BC470)
5BC46C:  ADD             R0, PC; dword_A53538
5BC46E:  ADDS            R4, R0, R2
5BC470:  VLDR            S5, [R4,#0x7C]
5BC474:  VLDR            S3, [R4,#0x78]
5BC478:  VSUB.F32        S5, S5, S1
5BC47C:  VSUB.F32        S7, S3, S14
5BC480:  VMUL.F32        S5, S12, S5
5BC484:  VMUL.F32        S7, S10, S7
5BC488:  VSUB.F32        S5, S7, S5
5BC48C:  VCMPE.F32       S5, #0.0
5BC490:  VMRS            APSR_nzcv, FPSCR
5BC494:  BLE             loc_5BC4B6
5BC496:  UXTH            R0, R5
5BC498:  CMP             R0, #2
5BC49A:  BEQ             loc_5BC576
5BC49C:  VMOV            R12, S3
5BC4A0:  SXTH            R0, R5
5BC4A2:  CMP             R0, #1
5BC4A4:  BEQ.W           loc_5BC63C
5BC4A8:  CMP             R0, #0
5BC4AA:  BNE.W           loc_5BC694
5BC4AE:  LDR.W           R0, =(dword_A5362C - 0x5BC4B6)
5BC4B2:  ADD             R0, PC; dword_A5362C
5BC4B4:  B               loc_5BC642
5BC4B6:  UXTH            R0, R5
5BC4B8:  CMP             R0, #1
5BC4BA:  BNE             loc_5BC572
5BC4BC:  LDR.W           R9, =(dword_A53538 - 0x5BC4CE)
5BC4C0:  VABS.F32        S5, S5
5BC4C4:  LDR.W           R0, =(dword_A5362C - 0x5BC4D8)
5BC4C8:  MOV             R5, R1
5BC4CA:  ADD             R9, PC; dword_A53538
5BC4CC:  ADD.W           LR, R5, R5,LSL#1
5BC4D0:  ADD.W           R12, R9, R2
5BC4D4:  ADD             R0, PC; dword_A5362C
5BC4D6:  ADDS            R1, R0, R2
5BC4D8:  ADD.W           R0, R0, LR,LSL#2
5BC4DC:  VLDR            S9, [R12,#0x70]
5BC4E0:  VLDR            S7, [R12,#0x6C]
5BC4E4:  VSUB.F32        S9, S9, S1
5BC4E8:  VLDR            S13, [R1,#0x78]
5BC4EC:  VSUB.F32        S11, S7, S14
5BC4F0:  VMUL.F32        S9, S12, S9
5BC4F4:  VMUL.F32        S11, S10, S11
5BC4F8:  VSUB.F32        S9, S11, S9
5BC4FC:  VLDR            S11, [R1,#0x6C]
5BC500:  VABS.F32        S9, S9
5BC504:  VADD.F32        S5, S5, S9
5BC508:  VDIV.F32        S5, S9, S5
5BC50C:  VSUB.F32        S9, S31, S5
5BC510:  VMUL.F32        S13, S13, S5
5BC514:  VMUL.F32        S3, S5, S3
5BC518:  VMUL.F32        S11, S11, S9
5BC51C:  VMUL.F32        S7, S9, S7
5BC520:  VADD.F32        S11, S13, S11
5BC524:  VADD.F32        S3, S3, S7
5BC528:  VSTR            S11, [R0]
5BC52C:  VLDR            S11, [R1,#0x70]
5BC530:  VLDR            S13, [R1,#0x7C]
5BC534:  MOV             R1, R5
5BC536:  VMUL.F32        S11, S11, S9
5BC53A:  ADDS            R1, #1
5BC53C:  VMUL.F32        S13, S13, S5
5BC540:  VADD.F32        S11, S13, S11
5BC544:  VSTR            S11, [R0,#4]
5BC548:  ADD.W           R0, R9, LR,LSL#2
5BC54C:  LDR.W           R9, =(dword_A5362C - 0x5BC55C)
5BC550:  VSTR            S3, [R0]
5BC554:  VLDR            S3, [R12,#0x70]
5BC558:  ADD             R9, PC; dword_A5362C
5BC55A:  VLDR            S7, [R4,#0x7C]
5BC55E:  VMUL.F32        S3, S9, S3
5BC562:  LDR.W           LR, [SP,#0x108+var_98]
5BC566:  VMUL.F32        S5, S5, S7
5BC56A:  VADD.F32        S3, S5, S3
5BC56E:  VSTR            S3, [R0,#4]
5BC572:  MOVS            R5, #2
5BC574:  B               loc_5BC696
5BC576:  LDR.W           R9, =(dword_A53538 - 0x5BC588)
5BC57A:  VABS.F32        S5, S5
5BC57E:  LDR.W           R0, =(dword_A5362C - 0x5BC592)
5BC582:  MOV             LR, R1
5BC584:  ADD             R9, PC; dword_A53538
5BC586:  ADD.W           R1, LR, LR,LSL#1
5BC58A:  ADD.W           R5, R9, R2
5BC58E:  ADD             R0, PC; dword_A5362C
5BC590:  VLDR            S9, [R5,#0x70]
5BC594:  MOV             R12, R0
5BC596:  VLDR            S7, [R5,#0x6C]
5BC59A:  ADD.W           R0, R12, R2
5BC59E:  VSUB.F32        S9, S9, S1
5BC5A2:  ADD.W           R12, R12, R1,LSL#2
5BC5A6:  VSUB.F32        S11, S7, S14
5BC5AA:  VLDR            S13, [R0,#0x78]
5BC5AE:  ADD.W           R1, R9, R1,LSL#2
5BC5B2:  LDR.W           R9, =(dword_A5362C - 0x5BC5BA)
5BC5B6:  ADD             R9, PC; dword_A5362C
5BC5B8:  VMUL.F32        S9, S12, S9
5BC5BC:  VMUL.F32        S11, S10, S11
5BC5C0:  VSUB.F32        S9, S11, S9
5BC5C4:  VLDR            S11, [R0,#0x6C]
5BC5C8:  VABS.F32        S9, S9
5BC5CC:  VADD.F32        S5, S5, S9
5BC5D0:  VDIV.F32        S5, S9, S5
5BC5D4:  VSUB.F32        S9, S31, S5
5BC5D8:  VMUL.F32        S13, S13, S5
5BC5DC:  VMUL.F32        S3, S5, S3
5BC5E0:  VMUL.F32        S11, S11, S9
5BC5E4:  VMUL.F32        S7, S9, S7
5BC5E8:  VADD.F32        S11, S13, S11
5BC5EC:  VADD.F32        S3, S3, S7
5BC5F0:  VSTR            S11, [R12]
5BC5F4:  VSTR            S3, [R1]
5BC5F8:  VLDR            S11, [R0,#0x70]
5BC5FC:  VLDR            S13, [R0,#0x7C]
5BC600:  VLDR            S3, [R5,#0x70]
5BC604:  VMUL.F32        S11, S11, S9
5BC608:  VLDR            S7, [R4,#0x7C]
5BC60C:  VMUL.F32        S13, S13, S5
5BC610:  VMUL.F32        S3, S9, S3
5BC614:  VMUL.F32        S5, S5, S7
5BC618:  VADD.F32        S11, S13, S11
5BC61C:  VADD.F32        S3, S5, S3
5BC620:  VSTR            S11, [R12,#4]
5BC624:  VSTR            S3, [R1,#4]
5BC628:  LDR             R1, [R0,#0x78]
5BC62A:  ADDS            R0, #0x7C ; '|'
5BC62C:  STR.W           R1, [R12,#0xC]
5BC630:  ADD.W           R1, LR, #1
5BC634:  LDR.W           R12, [R5,#0x78]
5BC638:  MOVS            R5, #2
5BC63A:  B               loc_5BC660
5BC63C:  LDR.W           R0, =(dword_A5362C - 0x5BC644)
5BC640:  ADD             R0, PC; dword_A5362C
5BC642:  MOV             R4, R0
5BC644:  ADDS            R0, R4, R2
5BC646:  MOV             LR, R1
5BC648:  MOVS            R5, #1
5BC64A:  ADD.W           R1, LR, LR,LSL#1
5BC64E:  LDR             R0, [R0,#0x78]
5BC650:  STR.W           R0, [R4,R1,LSL#2]
5BC654:  ADD.W           R0, R6, R6,LSL#1
5BC658:  MOV             R1, LR
5BC65A:  ADD.W           R0, R4, R0,LSL#2
5BC65E:  ADDS            R0, #0x7C ; '|'
5BC660:  LDR.W           R4, =(dword_A5362C - 0x5BC670)
5BC664:  ADD.W           R1, R1, R1,LSL#1
5BC668:  LDR             R0, [R0]
5BC66A:  ADD             LR, R5
5BC66C:  ADD             R4, PC; dword_A5362C
5BC66E:  MOVS            R5, #1
5BC670:  ADD.W           R4, R4, R1,LSL#2
5BC674:  STR             R0, [R4,#4]
5BC676:  LDR.W           R0, =(dword_A53538 - 0x5BC67E)
5BC67A:  ADD             R0, PC; dword_A53538
5BC67C:  MOV             R4, R0
5BC67E:  ADDS            R0, R4, R2
5BC680:  STR.W           R12, [R4,R1,LSL#2]
5BC684:  ADD.W           R1, R4, R1,LSL#2
5BC688:  LDR             R0, [R0,#0x7C]
5BC68A:  STR             R0, [R1,#4]
5BC68C:  MOV             R1, LR
5BC68E:  LDR.W           LR, [SP,#0x108+var_98]
5BC692:  B               loc_5BC696
5BC694:  MOVS            R5, #1
5BC696:  ADDS            R2, #0xC
5BC698:  SUBS            R3, #1
5BC69A:  ADD.W           R6, R6, #1
5BC69E:  BNE.W           loc_5BC468
5BC6A2:  B               loc_5BC6A8
5BC6A4:  MOVS            R5, #0
5BC6A6:  MOVS            R1, #0
5BC6A8:  LDR.W           R0, =(dword_A53538 - 0x5BC6B2)
5BC6AC:  CMP             R5, #2
5BC6AE:  ADD             R0, PC; dword_A53538
5BC6B0:  VLDR            S5, [R0,#0x7C]
5BC6B4:  VLDR            S3, [R0,#0x78]
5BC6B8:  VSUB.F32        S5, S5, S1
5BC6BC:  VSUB.F32        S7, S3, S14
5BC6C0:  VMUL.F32        S5, S12, S5
5BC6C4:  VMUL.F32        S7, S10, S7
5BC6C8:  VSUB.F32        S5, S7, S5
5BC6CC:  BNE             loc_5BC6D8
5BC6CE:  VCMPE.F32       S5, #0.0
5BC6D2:  VMRS            APSR_nzcv, FPSCR
5BC6D6:  BGT             loc_5BC6E6
5BC6D8:  CMP             R5, #1
5BC6DA:  BNE             loc_5BC7A2
5BC6DC:  VCMPE.F32       S5, #0.0
5BC6E0:  VMRS            APSR_nzcv, FPSCR
5BC6E4:  BGT             loc_5BC7A2
5BC6E6:  LDR.W           R6, =(dword_A53538 - 0x5BC6FC)
5BC6EA:  ADD.W           R0, LR, LR,LSL#1
5BC6EE:  MOV             R4, R1
5BC6F0:  MOV             R1, #0xFFFFFFF4
5BC6F4:  ADD.W           R0, R1, R0,LSL#2
5BC6F8:  ADD             R6, PC; dword_A53538
5BC6FA:  ADDS            R1, R6, R0
5BC6FC:  LDR.W           R2, =(dword_A5362C - 0x5BC708)
5BC700:  VLDR            S7, [R1,#0x78]
5BC704:  ADD             R2, PC; dword_A5362C
5BC706:  VLDR            S9, [R1,#0x7C]
5BC70A:  VSUB.F32        S14, S7, S14
5BC70E:  MOV             R5, R2
5BC710:  VSUB.F32        S1, S9, S1
5BC714:  ADD.W           R2, R5, #0x78 ; 'x'
5BC718:  ADD             R0, R2
5BC71A:  ADD.W           R2, R4, R4,LSL#1
5BC71E:  VLDR            S9, [R0]
5BC722:  ADD.W           R3, R5, R2,LSL#2
5BC726:  VMUL.F32        S14, S10, S14
5BC72A:  VMUL.F32        S1, S12, S1
5BC72E:  VSUB.F32        S14, S14, S1
5BC732:  VABS.F32        S1, S5
5BC736:  VLDR            S5, [R5,#0x78]
5BC73A:  VABS.F32        S14, S14
5BC73E:  VADD.F32        S1, S1, S14
5BC742:  VDIV.F32        S14, S14, S1
5BC746:  VSUB.F32        S1, S31, S14
5BC74A:  VMUL.F32        S5, S5, S14
5BC74E:  VMUL.F32        S3, S14, S3
5BC752:  VMUL.F32        S9, S9, S1
5BC756:  VMUL.F32        S7, S1, S7
5BC75A:  VADD.F32        S5, S5, S9
5BC75E:  VADD.F32        S3, S3, S7
5BC762:  VSTR            S5, [R3]
5BC766:  VLDR            S5, [R0,#4]
5BC76A:  ADD.W           R0, R6, R2,LSL#2
5BC76E:  VLDR            S9, [R5,#0x7C]
5BC772:  VMUL.F32        S5, S5, S1
5BC776:  VSTR            S3, [R0]
5BC77A:  VMUL.F32        S9, S9, S14
5BC77E:  VLDR            S3, [R1,#0x7C]
5BC782:  MOV             R1, R4
5BC784:  VMUL.F32        S1, S1, S3
5BC788:  ADDS            R1, #1
5BC78A:  VADD.F32        S5, S9, S5
5BC78E:  VSTR            S5, [R3,#4]
5BC792:  VLDR            S5, [R6,#0x7C]
5BC796:  VMUL.F32        S14, S14, S5
5BC79A:  VADD.F32        S14, S14, S1
5BC79E:  VSTR            S14, [R0,#4]
5BC7A2:  ADD             R5, SP, #0x108+var_6C
5BC7A4:  CMP             R1, #1
5BC7A6:  BLT.W           loc_5BCA78
5BC7AA:  VSUB.F32        S10, S2, S8
5BC7AE:  LDR.W           R0, =(dword_A5362C - 0x5BC7BE)
5BC7B2:  VSUB.F32        S12, S0, S4
5BC7B6:  LDR.W           R2, =(dword_A53538 - 0x5BC7C4)
5BC7BA:  ADD             R0, PC; dword_A5362C
5BC7BC:  MOV             R3, R1
5BC7BE:  ADDS            R1, R0, #4
5BC7C0:  ADD             R2, PC; dword_A53538
5BC7C2:  MOV.W           R12, #0
5BC7C6:  MOVS            R4, #0
5BC7C8:  MOVS            R6, #0
5BC7CA:  STR             R3, [SP,#0x108+var_98]
5BC7CC:  VLDR            S1, [R2,#4]
5BC7D0:  VLDR            S14, [R2]
5BC7D4:  VSUB.F32        S1, S1, S8
5BC7D8:  VSUB.F32        S3, S14, S4
5BC7DC:  VMUL.F32        S1, S12, S1
5BC7E0:  VMUL.F32        S3, S10, S3
5BC7E4:  VSUB.F32        S1, S3, S1
5BC7E8:  VCMPE.F32       S1, #0.0
5BC7EC:  VMRS            APSR_nzcv, FPSCR
5BC7F0:  BLE             loc_5BC81A
5BC7F2:  UXTH            R0, R6
5BC7F4:  CMP             R0, #2
5BC7F6:  BEQ             loc_5BC8C8
5BC7F8:  VMOV            LR, S14
5BC7FC:  SXTH            R0, R6
5BC7FE:  CMP             R0, #1
5BC800:  BEQ.W           loc_5BC980
5BC804:  CMP             R0, #0
5BC806:  BNE.W           loc_5BC9D2
5BC80A:  LDR.W           R5, =(dword_A5362C - 0x5BC81A)
5BC80E:  ADD.W           R6, R12, R12,LSL#1
5BC812:  LDR.W           R0, [R1,#-4]
5BC816:  ADD             R5, PC; dword_A5362C
5BC818:  B               loc_5BC98E
5BC81A:  UXTH            R0, R6
5BC81C:  CMP             R0, #1
5BC81E:  BNE             loc_5BC8C4
5BC820:  VLDR            S5, [R2,#-8]
5BC824:  VABS.F32        S1, S1
5BC828:  VLDR            S3, [R2,#-0xC]
5BC82C:  ADD.W           R0, R12, R12,LSL#1
5BC830:  VSUB.F32        S5, S5, S8
5BC834:  VLDR            S9, [R1,#-0x10]
5BC838:  VSUB.F32        S7, S3, S4
5BC83C:  LDR.W           R6, =(dword_A5362C - 0x5BC848)
5BC840:  ADD.W           R12, R12, #1
5BC844:  ADD             R6, PC; dword_A5362C
5BC846:  ADD.W           R6, R6, R0,LSL#2
5BC84A:  VMUL.F32        S5, S12, S5
5BC84E:  VMUL.F32        S7, S10, S7
5BC852:  VSUB.F32        S5, S7, S5
5BC856:  VLDR            S7, [R1,#-4]
5BC85A:  VABS.F32        S5, S5
5BC85E:  VADD.F32        S1, S1, S5
5BC862:  VDIV.F32        S1, S5, S1
5BC866:  VSUB.F32        S5, S31, S1
5BC86A:  VMUL.F32        S7, S7, S1
5BC86E:  VMUL.F32        S14, S1, S14
5BC872:  VMUL.F32        S9, S9, S5
5BC876:  VMUL.F32        S3, S5, S3
5BC87A:  VADD.F32        S7, S7, S9
5BC87E:  VADD.F32        S14, S14, S3
5BC882:  VSTR            S7, [R6,#0x78]
5BC886:  VLDR            S7, [R1]
5BC88A:  VLDR            S9, [R1,#-0xC]
5BC88E:  VMUL.F32        S7, S7, S1
5BC892:  VMUL.F32        S9, S9, S5
5BC896:  VADD.F32        S7, S7, S9
5BC89A:  VSTR            S7, [R6,#0x7C]
5BC89E:  LDR.W           R6, =(dword_A53538 - 0x5BC8A6)
5BC8A2:  ADD             R6, PC; dword_A53538
5BC8A4:  ADD.W           R0, R6, R0,LSL#2
5BC8A8:  VSTR            S14, [R0,#0x78]
5BC8AC:  VLDR            S14, [R2,#4]
5BC8B0:  VLDR            S3, [R2,#-8]
5BC8B4:  VMUL.F32        S14, S1, S14
5BC8B8:  VMUL.F32        S3, S5, S3
5BC8BC:  VADD.F32        S14, S14, S3
5BC8C0:  VSTR            S14, [R0,#0x7C]
5BC8C4:  MOVS            R6, #2
5BC8C6:  B               loc_5BC9D4
5BC8C8:  VLDR            S5, [R2,#-8]
5BC8CC:  VABS.F32        S1, S1
5BC8D0:  VLDR            S3, [R2,#-0xC]
5BC8D4:  ADD.W           R0, R12, R12,LSL#1
5BC8D8:  VSUB.F32        S5, S5, S8
5BC8DC:  VLDR            S9, [R1,#-0x10]
5BC8E0:  VSUB.F32        S7, S3, S4
5BC8E4:  LDR.W           R6, =(dword_A5362C - 0x5BC8F4)
5BC8E8:  LDR.W           R5, =(dword_A53538 - 0x5BC8F6)
5BC8EC:  MOV.W           R9, #2
5BC8F0:  ADD             R6, PC; dword_A5362C
5BC8F2:  ADD             R5, PC; dword_A53538
5BC8F4:  ADD.W           R6, R6, R0,LSL#2
5BC8F8:  ADD.W           R0, R5, R0,LSL#2
5BC8FC:  ADD.W           R5, R12, #1
5BC900:  VMUL.F32        S5, S12, S5
5BC904:  VMUL.F32        S7, S10, S7
5BC908:  VSUB.F32        S5, S7, S5
5BC90C:  VLDR            S7, [R1,#-4]
5BC910:  VABS.F32        S5, S5
5BC914:  VADD.F32        S1, S1, S5
5BC918:  VDIV.F32        S1, S5, S1
5BC91C:  VSUB.F32        S5, S31, S1
5BC920:  VMUL.F32        S14, S1, S14
5BC924:  VMUL.F32        S7, S7, S1
5BC928:  VMUL.F32        S3, S5, S3
5BC92C:  VMUL.F32        S9, S9, S5
5BC930:  VADD.F32        S14, S14, S3
5BC934:  VADD.F32        S7, S7, S9
5BC938:  VSTR            S14, [R0,#0x78]
5BC93C:  VSTR            S7, [R6,#0x78]
5BC940:  VLDR            S14, [R2,#4]
5BC944:  VLDR            S3, [R2,#-8]
5BC948:  VLDR            S7, [R1]
5BC94C:  VMUL.F32        S14, S1, S14
5BC950:  VLDR            S9, [R1,#-0xC]
5BC954:  VMUL.F32        S3, S5, S3
5BC958:  VMUL.F32        S7, S7, S1
5BC95C:  VMUL.F32        S9, S9, S5
5BC960:  VADD.F32        S14, S14, S3
5BC964:  VADD.F32        S7, S7, S9
5BC968:  VSTR            S14, [R0,#0x7C]
5BC96C:  LDR.W           LR, [R2]
5BC970:  VSTR            S7, [R6,#0x7C]
5BC974:  LDR.W           R0, [R1,#-4]
5BC978:  STR.W           R0, [R6,#0x84]
5BC97C:  MOV             R0, R1
5BC97E:  B               loc_5BC9A4
5BC980:  LDR.W           R5, =(dword_A5362C - 0x5BC990)
5BC984:  ADD.W           R6, R12, R12,LSL#1
5BC988:  LDR.W           R0, [R1,#-4]
5BC98C:  ADD             R5, PC; dword_A5362C
5BC98E:  ADD.W           R6, R5, R6,LSL#2
5BC992:  MOV.W           R9, #1
5BC996:  STR             R0, [R6,#0x78]
5BC998:  ADD.W           R0, R4, R4,LSL#1
5BC99C:  ADD.W           R0, R5, R0,LSL#2
5BC9A0:  MOV             R5, R12
5BC9A2:  ADDS            R0, #4
5BC9A4:  LDR.W           R6, =(dword_A5362C - 0x5BC9B4)
5BC9A8:  ADD.W           R5, R5, R5,LSL#1
5BC9AC:  LDR             R0, [R0]
5BC9AE:  ADD             R12, R9
5BC9B0:  ADD             R6, PC; dword_A5362C
5BC9B2:  LDR.W           R9, =(dword_A5362C - 0x5BC9BE)
5BC9B6:  ADD.W           R6, R6, R5,LSL#2
5BC9BA:  ADD             R9, PC; dword_A5362C
5BC9BC:  STR             R0, [R6,#0x7C]
5BC9BE:  LDR.W           R0, =(dword_A53538 - 0x5BC9C6)
5BC9C2:  ADD             R0, PC; dword_A53538
5BC9C4:  ADD.W           R0, R0, R5,LSL#2
5BC9C8:  ADD             R5, SP, #0x108+var_6C
5BC9CA:  STR.W           LR, [R0,#0x78]
5BC9CE:  LDR             R6, [R2,#4]
5BC9D0:  STR             R6, [R0,#0x7C]
5BC9D2:  MOVS            R6, #1
5BC9D4:  ADDS            R1, #0xC
5BC9D6:  ADDS            R2, #0xC
5BC9D8:  SUBS            R3, #1
5BC9DA:  ADD.W           R4, R4, #1
5BC9DE:  BNE.W           loc_5BC7CC
5BC9E2:  LDR             R1, [SP,#0x108+var_98]
5BC9E4:  B               loc_5BCA7E
5BC9E6:  ALIGN 4
5BC9E8:  DCD byte_A53628 - 0x5BBBB6
5BC9EC:  DCD byte_A53628 - 0x5BBBCC
5BC9F0:  DCD byte_A53628 - 0x5BBBDA
5BC9F4:  DCD byte_A5371C - 0x5BBBE6
5BC9F8:  DCD byte_A5371C - 0x5BBBF8
5BC9FC:  DCD byte_A5371C - 0x5BBC06
5BCA00:  DCD byte_A53750 - 0x5BBC12
5BCA04:  DCD byte_A53750 - 0x5BBC24
5BCA08:  DCD byte_A53750 - 0x5BBC32
5BCA0C:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5BBC42
5BCA10:  DCD dword_A53720 - 0x5BBD6E
5BCA14:  DCD TempBufferRenderIndexList_ptr - 0x5BBE12
5BCA18:  DCD dword_A5362C - 0x5BBE4C
5BCA1C:  DCD _ZN12RenderBuffer17IndicesToBeStoredE_ptr - 0x5BBE4E
5BCA20:  DCD _ZN12RenderBuffer18VerticesToBeStoredE_ptr - 0x5BBE88
5BCA24:  DCD TempBufferIndicesStored_ptr - 0x5BBE8E
5BCA28:  DCD TempBufferVerticesStored_ptr - 0x5BBEA0
5BCA2C:  DCD TempBufferVerticesStored_ptr - 0x5BBEAA
5BCA30:  DCD TempBufferIndicesStored_ptr - 0x5BBEB4
5BCA34:  DCD TempVertexBuffer_ptr - 0x5BBED6
5BCA38:  DCD TempBufferIndicesStored_ptr - 0x5BBEDA
5BCA3C:  DCD TempBufferRenderIndexList_ptr - 0x5BBEE4
5BCA40:  DCD TempBufferRenderIndexList_ptr - 0x5BBEEE
5BCA44:  DCD TempBufferVerticesStored_ptr - 0x5BBEF8
5BCA48:  DCD _ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr - 0x5BBF06
5BCA4C:  DCD _ZN8CShadows15pEmptyBunchListE_ptr - 0x5BBF10
5BCA50:  DCD _ZN8CShadows15pEmptyBunchListE_ptr - 0x5BBF1A
5BCA54:  DCD dword_A53720 - 0x5BC0D4
5BCA58:  DCD dword_A53538 - 0x5BC0F4
5BCA5C:  DCD dword_A5362C - 0x5BC118
5BCA60:  DCD dword_A53538 - 0x5BC134
5BCA64:  DCD dword_A53538 - 0x5BC14E
5BCA68:  DCD dword_A5362C - 0x5BC184
5BCA6C:  DCD dword_A53538 - 0x5BC1A6
5BCA70:  DCD dword_A5362C - 0x5BC1B0
5BCA74:  DCFS 200.0
5BCA78:  MOVS            R6, #0
5BCA7A:  MOV.W           R12, #0
5BCA7E:  LDR.W           R0, =(dword_A53538 - 0x5BCA88)
5BCA82:  CMP             R6, #2
5BCA84:  ADD             R0, PC; dword_A53538
5BCA86:  VLDR            S1, [R0,#4]
5BCA8A:  VLDR            S14, [R0]
5BCA8E:  VSUB.F32        S1, S1, S8
5BCA92:  VSUB.F32        S3, S14, S4
5BCA96:  VMUL.F32        S1, S12, S1
5BCA9A:  VMUL.F32        S3, S10, S3
5BCA9E:  VSUB.F32        S1, S3, S1
5BCAA2:  BNE             loc_5BCAAE
5BCAA4:  VCMPE.F32       S1, #0.0
5BCAA8:  VMRS            APSR_nzcv, FPSCR
5BCAAC:  BGT             loc_5BCABC
5BCAAE:  CMP             R6, #1
5BCAB0:  BNE             loc_5BCB72
5BCAB2:  VCMPE.F32       S1, #0.0
5BCAB6:  VMRS            APSR_nzcv, FPSCR
5BCABA:  BGT             loc_5BCB72
5BCABC:  LDR.W           R6, =(dword_A53538 - 0x5BCAD4)
5BCAC0:  ADD.W           R0, R1, R1,LSL#1
5BCAC4:  MOV             R1, #0xFFFFFFF4
5BCAC8:  LDR.W           R2, =(dword_A5362C - 0x5BCAD8)
5BCACC:  ADD.W           R1, R1, R0,LSL#2
5BCAD0:  ADD             R6, PC; dword_A53538
5BCAD2:  ADDS            R0, R6, R1
5BCAD4:  ADD             R2, PC; dword_A5362C
5BCAD6:  VLDR            S3, [R0]
5BCADA:  MOV             R4, R2
5BCADC:  VLDR            S5, [R0,#4]
5BCAE0:  ADD             R1, R4
5BCAE2:  VSUB.F32        S4, S3, S4
5BCAE6:  ADD.W           R2, R12, R12,LSL#1
5BCAEA:  VSUB.F32        S8, S5, S8
5BCAEE:  ADD.W           R12, R12, #1
5BCAF2:  ADD.W           R3, R4, R2,LSL#2
5BCAF6:  VMUL.F32        S4, S10, S4
5BCAFA:  VLDR            S10, [R4]
5BCAFE:  VMUL.F32        S8, S12, S8
5BCB02:  VLDR            S12, [R1]
5BCB06:  VSUB.F32        S4, S4, S8
5BCB0A:  VABS.F32        S8, S1
5BCB0E:  VABS.F32        S4, S4
5BCB12:  VADD.F32        S8, S8, S4
5BCB16:  VDIV.F32        S4, S4, S8
5BCB1A:  VSUB.F32        S8, S31, S4
5BCB1E:  VMUL.F32        S10, S10, S4
5BCB22:  VMUL.F32        S14, S4, S14
5BCB26:  VMUL.F32        S12, S12, S8
5BCB2A:  VMUL.F32        S1, S8, S3
5BCB2E:  VADD.F32        S10, S10, S12
5BCB32:  VSTR            S10, [R3,#0x78]
5BCB36:  VLDR            S10, [R1,#4]
5BCB3A:  ADD.W           R1, R6, R2,LSL#2
5BCB3E:  VLDR            S12, [R4,#4]
5BCB42:  VMUL.F32        S10, S10, S8
5BCB46:  VMUL.F32        S12, S12, S4
5BCB4A:  VADD.F32        S10, S12, S10
5BCB4E:  VADD.F32        S12, S14, S1
5BCB52:  VSTR            S10, [R3,#0x7C]
5BCB56:  VSTR            S12, [R1,#0x78]
5BCB5A:  VLDR            S10, [R0,#4]
5BCB5E:  VLDR            S12, [R6,#4]
5BCB62:  VMUL.F32        S8, S8, S10
5BCB66:  VMUL.F32        S4, S4, S12
5BCB6A:  VADD.F32        S4, S4, S8
5BCB6E:  VSTR            S4, [R1,#0x7C]
5BCB72:  LDR             R6, [SP,#0x108+var_9C]
5BCB74:  CMP.W           R12, #3
5BCB78:  LDR             R4, [SP,#0x108+var_88]
5BCB7A:  BLT.W           loc_5BD010
5BCB7E:  LDR.W           R0, [R11,#0x1C]
5BCB82:  VMOV.F32        S28, S16
5BCB86:  MOV             R1, R12
5BCB88:  ADD.W           R0, R0, R10,LSL#2
5BCB8C:  VLDR            S4, [R0]
5BCB90:  VLDR            S8, [R0,#4]
5BCB94:  VMUL.F32        S0, S4, S0
5BCB98:  VLDR            S10, [R0,#8]
5BCB9C:  VMUL.F32        S2, S8, S2
5BCBA0:  LDR.W           R0, =(dword_A53538 - 0x5BCBAC)
5BCBA4:  VMUL.F32        S6, S10, S6
5BCBA8:  ADD             R0, PC; dword_A53538
5BCBAA:  ADDS            R0, #0x80
5BCBAC:  VADD.F32        S0, S0, S2
5BCBB0:  VADD.F32        S0, S0, S6
5BCBB4:  VLDR            S2, [R0,#-8]
5BCBB8:  SUBS            R1, #1
5BCBBA:  VLDR            S6, [R0,#-4]
5BCBBE:  VMUL.F32        S2, S4, S2
5BCBC2:  VMUL.F32        S6, S8, S6
5BCBC6:  VADD.F32        S2, S2, S6
5BCBCA:  VSUB.F32        S2, S2, S0
5BCBCE:  VNEG.F32        S2, S2
5BCBD2:  VDIV.F32        S2, S2, S10
5BCBD6:  VSTR            S2, [R0]
5BCBDA:  ADD.W           R0, R0, #0xC
5BCBDE:  BNE             loc_5BCBB4
5BCBE0:  LDR             R0, [SP,#0x108+var_90]; this
5BCBE2:  CMP.W           R12, #1
5BCBE6:  STR.W           R12, [SP,#0x108+var_98]
5BCBEA:  BLT.W           loc_5BCD2A
5BCBEE:  LDR.W           R1, =(dword_A53538 - 0x5BCBFA)
5BCBF2:  MOVS            R6, #0
5BCBF4:  MOV             R11, R12
5BCBF6:  ADD             R1, PC; dword_A53538
5BCBF8:  ADD.W           R4, R1, #0x80
5BCBFC:  LDR             R2, [R0,#0x14]
5BCBFE:  VLDR            S19, [R4,#-8]
5BCC02:  CBZ             R2, loc_5BCC16
5BCC04:  VLDR            S0, [R2]
5BCC08:  SUB.W           R10, R4, #4
5BCC0C:  VLDR            S16, [R4,#-4]
5BCC10:  VMUL.F32        S30, S19, S0
5BCC14:  B               loc_5BCC64
5BCC16:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BCC1A:  LDR             R0, [SP,#0x108+var_90]
5BCC1C:  LDR.W           R9, [SP,#0x108+var_94]
5BCC20:  LDR             R1, [R0,#0x14]; CMatrix *
5BCC22:  MOV             R0, R9; this
5BCC24:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BCC28:  LDR             R0, [SP,#0x108+var_90]; this
5BCC2A:  ADD.W           R1, R6, R6,LSL#1
5BCC2E:  LDR.W           R3, =(dword_A53538 - 0x5BCC3C)
5BCC32:  VLDR            S16, [R4,#-4]
5BCC36:  LDR             R2, [R0,#0x14]
5BCC38:  ADD             R3, PC; dword_A53538
5BCC3A:  ADD.W           R1, R3, R1,LSL#2
5BCC3E:  ADD.W           R10, R1, #0x7C ; '|'
5BCC42:  CMP             R2, #0
5BCC44:  VLDR            S0, [R2]
5BCC48:  VMUL.F32        S30, S19, S0
5BCC4C:  BNE             loc_5BCC60
5BCC4E:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BCC52:  LDR             R0, [SP,#0x108+var_90]
5BCC54:  LDR             R1, [R0,#0x14]; CMatrix *
5BCC56:  MOV             R0, R9; this
5BCC58:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BCC5C:  LDR             R0, [SP,#0x108+var_90]; this
5BCC5E:  LDR             R2, [R0,#0x14]
5BCC60:  LDR.W           R12, [SP,#0x108+var_98]
5BCC64:  VLDR            S0, [R2,#0x10]
5BCC68:  CMP             R2, #0
5BCC6A:  LDR.W           R9, [SP,#0x108+var_94]
5BCC6E:  VMUL.F32        S0, S16, S0
5BCC72:  MOV             R1, R9
5BCC74:  IT NE
5BCC76:  ADDNE.W         R1, R2, #0x30 ; '0'
5BCC7A:  VLDR            S2, [R1]
5BCC7E:  VADD.F32        S0, S30, S0
5BCC82:  VADD.F32        S0, S0, S2
5BCC86:  VSTR            S0, [R4,#-8]
5BCC8A:  LDR             R2, [R0,#0x14]
5BCC8C:  CBZ             R2, loc_5BCC9C
5BCC8E:  VLDR            S0, [R2,#4]
5BCC92:  VLDR            S30, [R10]
5BCC96:  VMUL.F32        S16, S19, S0
5BCC9A:  B               loc_5BCCD4
5BCC9C:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BCCA0:  LDR             R0, [SP,#0x108+var_90]
5BCCA2:  LDR             R1, [R0,#0x14]; CMatrix *
5BCCA4:  MOV             R0, R9; this
5BCCA6:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BCCAA:  LDR             R0, [SP,#0x108+var_90]; this
5BCCAC:  VLDR            S30, [R10]
5BCCB0:  LDR             R2, [R0,#0x14]
5BCCB2:  CMP             R2, #0
5BCCB4:  VLDR            S0, [R2,#4]
5BCCB8:  VMUL.F32        S16, S19, S0
5BCCBC:  BNE             loc_5BCCD0
5BCCBE:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BCCC2:  LDR             R0, [SP,#0x108+var_90]
5BCCC4:  LDR             R1, [R0,#0x14]; CMatrix *
5BCCC6:  MOV             R0, R9; this
5BCCC8:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BCCCC:  LDR             R0, [SP,#0x108+var_90]
5BCCCE:  LDR             R2, [R0,#0x14]
5BCCD0:  LDR.W           R12, [SP,#0x108+var_98]
5BCCD4:  VLDR            S0, [R2,#0x14]
5BCCD8:  CMP             R2, #0
5BCCDA:  LDR             R3, [SP,#0x108+var_94]
5BCCDC:  ADD.W           R6, R6, #1
5BCCE0:  VMUL.F32        S0, S30, S0
5BCCE4:  LDR.W           R9, =(dword_A5362C - 0x5BCCEE)
5BCCE8:  MOV             R1, R3
5BCCEA:  ADD             R9, PC; dword_A5362C
5BCCEC:  IT NE
5BCCEE:  ADDNE.W         R1, R2, #0x30 ; '0'
5BCCF2:  VLDR            S2, [R1,#4]
5BCCF6:  MOV             R1, R3
5BCCF8:  VADD.F32        S0, S16, S0
5BCCFC:  VADD.F32        S0, S0, S2
5BCD00:  VSTR            S0, [R10]
5BCD04:  LDR             R2, [R0,#0x14]
5BCD06:  VLDR            S0, [R4]
5BCD0A:  CMP             R2, #0
5BCD0C:  IT NE
5BCD0E:  ADDNE.W         R1, R2, #0x30 ; '0'
5BCD12:  SUBS.W          R11, R11, #1
5BCD16:  VLDR            S2, [R1,#8]
5BCD1A:  VADD.F32        S0, S2, S0
5BCD1E:  VSTR            S0, [R4]
5BCD22:  ADD.W           R4, R4, #0xC
5BCD26:  BNE.W           loc_5BCBFC
5BCD2A:  LDR.W           R11, [SP,#0x108+var_A0]
5BCD2E:  LDR             R1, [R7,#arg_34]
5BCD30:  LDR.W           R0, [R11,#0x18]
5BCD34:  ADD.W           R0, R0, R8,LSL#4
5BCD38:  LDRB            R0, [R0,#0xD]
5BCD3A:  STRB            R0, [R1]
5BCD3C:  LDR             R0, [R7,#arg_30]
5BCD3E:  CMP             R0, #0
5BCD40:  BEQ             loc_5BCDD6
5BCD42:  VMOV.F32        S16, S28
5BCD46:  LDR             R0, [SP,#0x108+var_A8]
5BCD48:  LDR             R6, [SP,#0x108+var_9C]
5BCD4A:  ADD             R5, SP, #0x108+var_6C
5BCD4C:  LDR             R4, [SP,#0x108+var_88]
5BCD4E:  LDR             R0, [R0]
5BCD50:  VLDR            S28, [SP,#0x108+var_A4]
5BCD54:  VLDR            S2, =200.0
5BCD58:  CMP             R0, #0
5BCD5A:  BEQ.W           loc_5BD010
5BCD5E:  LDR             R2, [SP,#0x108+var_AC]
5BCD60:  CMP.W           R12, #1
5BCD64:  LDR             R1, [R0,#0x54]
5BCD66:  STR             R1, [R2]
5BCD68:  LDR             R1, [R7,#arg_30]
5BCD6A:  MOV             R2, R1
5BCD6C:  LDR             R1, [R2]
5BCD6E:  STR             R1, [R0,#0x54]
5BCD70:  STR             R0, [R2]
5BCD72:  STRH.W          R12, [R0,#0x58]
5BCD76:  BLT.W           loc_5BD010
5BCD7A:  MOVS            R1, #0
5BCD7C:  MOVS            R2, #0
5BCD7E:  LDR.W           R3, =(dword_A53538 - 0x5BCD88)
5BCD82:  ADDS            R6, R0, R1
5BCD84:  ADD             R3, PC; dword_A53538
5BCD86:  ADD             R3, R1
5BCD88:  VLDR            D16, [R3,#0x78]
5BCD8C:  LDR.W           R3, [R3,#0x80]
5BCD90:  STR             R3, [R6,#8]
5BCD92:  LDR.W           R3, =(dword_A5362C - 0x5BCDA0)
5BCD96:  VSTR            D16, [R6]
5BCD9A:  ADDS            R6, R0, R2
5BCD9C:  ADD             R3, PC; dword_A5362C
5BCD9E:  ADDS            R2, #1
5BCDA0:  ADD             R3, R1
5BCDA2:  ADDS            R1, #0xC
5BCDA4:  CMP             R12, R2
5BCDA6:  VLDR            S0, [R3,#0x78]
5BCDAA:  VMUL.F32        S0, S0, S2
5BCDAE:  VCVT.U32.F32    S0, S0
5BCDB2:  VMOV            R5, S0
5BCDB6:  STRB.W          R5, [R6,#0x5A]
5BCDBA:  ADD             R5, SP, #0x108+var_6C
5BCDBC:  VLDR            S0, [R3,#0x7C]
5BCDC0:  VMUL.F32        S0, S0, S2
5BCDC4:  VCVT.U32.F32    S0, S0
5BCDC8:  VMOV            R3, S0
5BCDCC:  STRB.W          R3, [R6,#0x61]
5BCDD0:  LDR             R6, [SP,#0x108+var_9C]
5BCDD2:  BNE             loc_5BCD7E
5BCDD4:  B               loc_5BD010
5BCDD6:  LDR             R0, [SP,#0x108+var_B0]
5BCDD8:  VMOV.F32        S16, S28
5BCDDC:  ADD.W           R2, R12, R12,LSL#1
5BCDE0:  SUBS            R4, R2, #6
5BCDE2:  LDR             R0, [R0]
5BCDE4:  MOV             R1, R2
5BCDE6:  STR             R1, [SP,#0x108+var_104]
5BCDE8:  ADD             R0, R4; this
5BCDEA:  CMP.W           R0, #0x1000
5BCDEE:  BLT             loc_5BCDF8
5BCDF0:  BLX.W           j__ZN12RenderBuffer19RenderStuffInBufferEv; RenderBuffer::RenderStuffInBuffer(void)
5BCDF4:  LDR.W           R12, [SP,#0x108+var_98]
5BCDF8:  LDR             R0, [SP,#0x108+var_B4]
5BCDFA:  VLDR            S28, [SP,#0x108+var_A4]
5BCDFE:  LDR             R1, [R0]
5BCE00:  ADD.W           R0, R1, R12; this
5BCE04:  CMP.W           R0, #0x800
5BCE08:  BLT             loc_5BCE16
5BCE0A:  BLX.W           j__ZN12RenderBuffer19RenderStuffInBufferEv; RenderBuffer::RenderStuffInBuffer(void)
5BCE0E:  LDR             R0, [SP,#0x108+var_EC]
5BCE10:  LDR.W           R12, [SP,#0x108+var_98]
5BCE14:  LDR             R1, [R0]
5BCE16:  LDR             R0, [SP,#0x108+var_B8]
5BCE18:  VMOV.F32        S0, S31
5BCE1C:  STR             R1, [SP,#0x108+var_F8]
5BCE1E:  STR             R4, [SP,#0x108+var_FC]
5BCE20:  LDR             R0, [R0]
5BCE22:  STR             R0, [SP,#0x108+var_100]
5BCE24:  LDR             R0, [SP,#0x108+var_C0]
5BCE26:  STR             R4, [R0]
5BCE28:  LDR             R0, [SP,#0x108+var_BC]
5BCE2A:  STR.W           R12, [R0]
5BCE2E:  LDR             R0, [SP,#0x108+var_C4]
5BCE30:  CMP             R0, #2
5BCE32:  BEQ             loc_5BCEA0
5BCE34:  LDR             R0, [R7,#arg_34]
5BCE36:  VMOV.F32        S4, #0.5
5BCE3A:  LDRB            R0, [R0]
5BCE3C:  AND.W           R1, R0, #0xF
5BCE40:  LSRS            R0, R0, #4
5BCE42:  VMOV            S0, R1
5BCE46:  VMOV            S2, R0
5BCE4A:  VCVT.F32.S32    S0, S0
5BCE4E:  VCVT.F32.S32    S2, S2
5BCE52:  LDR             R0, [SP,#0x108+var_F0]
5BCE54:  VMUL.F32        S0, S0, S4
5BCE58:  VMUL.F32        S2, S2, S4
5BCE5C:  VMOV.F32        S4, #15.0
5BCE60:  VDIV.F32        S0, S0, S4
5BCE64:  VDIV.F32        S2, S2, S4
5BCE68:  VLDR            S4, [R0]
5BCE6C:  VSUB.F32        S6, S31, S4
5BCE70:  VMUL.F32        S2, S4, S2
5BCE74:  VLDR            S4, =0.7
5BCE78:  VMUL.F32        S0, S6, S0
5BCE7C:  VADD.F32        S0, S2, S0
5BCE80:  VLDR            S2, =0.6
5BCE84:  VMUL.F32        S2, S6, S2
5BCE88:  VMUL.F32        S0, S0, S4
5BCE8C:  VLDR            S4, =0.4
5BCE90:  VADD.F32        S2, S2, S4
5BCE94:  VLDR            S4, =0.3
5BCE98:  VADD.F32        S0, S0, S4
5BCE9C:  VMIN.F32        D0, D1, D0
5BCEA0:  LDR.W           R10, =(dword_A53538 - 0x5BCEAC)
5BCEA4:  CMP.W           R12, #1
5BCEA8:  ADD             R10, PC; dword_A53538
5BCEAA:  BLT             loc_5BCF4C
5BCEAC:  VLDR            S2, [SP,#0x108+var_D4]
5BCEB0:  MOVS            R3, #0
5BCEB2:  VLDR            S4, [SP,#0x108+var_D8]
5BCEB6:  VMUL.F32        S2, S0, S2
5BCEBA:  VLDR            S6, [SP,#0x108+var_D0]
5BCEBE:  VMUL.F32        S4, S0, S4
5BCEC2:  VMUL.F32        S0, S0, S6
5BCEC6:  VCVT.U32.F32    S2, S2
5BCECA:  VCVT.U32.F32    S4, S4
5BCECE:  VCVT.U32.F32    S0, S0
5BCED2:  LDR             R1, [SP,#0x108+var_DC]
5BCED4:  LDR             R5, [SP,#0x108+var_98]
5BCED6:  VMOV            R0, S4
5BCEDA:  ORRS            R0, R1
5BCEDC:  VMOV            R1, S0
5BCEE0:  ORR.W           R0, R0, R1,LSL#16
5BCEE4:  VMOV            R1, S2
5BCEE8:  ORR.W           R12, R0, R1,LSL#8
5BCEEC:  LDR             R0, [SP,#0x108+var_F8]
5BCEEE:  ADD.W           R2, R0, R0,LSL#3
5BCEF2:  LDR             R0, [SP,#0x108+var_E4]
5BCEF4:  ADD.W           R1, R0, R2,LSL#2
5BCEF8:  LSLS            R2, R2, #2
5BCEFA:  ADD.W           LR, R1, #4
5BCEFE:  MOV             R6, R0
5BCF00:  ADD.W           R0, R9, R3
5BCF04:  ADDS            R4, R6, R2
5BCF06:  SUBS            R5, #1
5BCF08:  VLDR            S0, [R0,#0x78]
5BCF0C:  STR.W           R12, [R4,#0x18]
5BCF10:  VMUL.F32        S0, S0, S17
5BCF14:  VSTR            S0, [R4,#0x1C]
5BCF18:  VLDR            S0, [R0,#0x7C]
5BCF1C:  ADD.W           R0, R10, R3
5BCF20:  VMUL.F32        S0, S0, S17
5BCF24:  VSTR            S0, [R4,#0x20]
5BCF28:  VLDR            S0, [R0,#0x80]
5BCF2C:  LDRD.W          R1, R0, [R0,#0x78]
5BCF30:  VADD.F32        S0, S0, S16
5BCF34:  STR             R1, [R6,R2]
5BCF36:  ADD.W           R1, R3, R3,LSL#1
5BCF3A:  ADD.W           R6, R6, #0x24 ; '$'
5BCF3E:  ADD.W           R3, R3, #0xC
5BCF42:  STR.W           R0, [LR,R1]
5BCF46:  VSTR            S0, [R4,#8]
5BCF4A:  BNE             loc_5BCF00
5BCF4C:  LDR             R4, [SP,#0x108+var_FC]
5BCF4E:  CMP             R4, #0
5BCF50:  BLE             loc_5BCF8E
5BCF52:  LDR             R2, [SP,#0x108+var_104]
5BCF54:  MOV             R1, #0xFFFFFFF4
5BCF58:  LDR             R5, [SP,#0x108+var_100]
5BCF5A:  LDR             R0, [SP,#0x108+var_E0]
5BCF5C:  ADD.W           R2, R1, R2,LSL#1; size_t
5BCF60:  LDR             R1, =(unk_A53500 - 0x5BCF6A)
5BCF62:  ADD.W           R0, R0, R5,LSL#1; void *
5BCF66:  ADD             R1, PC; unk_A53500 ; void *
5BCF68:  BLX.W           memcpy_1
5BCF6C:  ADD.W           LR, R4, R5
5BCF70:  ADDS            R1, R5, #1
5BCF72:  CMP             LR, R1
5BCF74:  IT GT
5BCF76:  MOVGT           R1, LR
5BCF78:  LDR             R6, [SP,#0x108+var_9C]
5BCF7A:  SUBS            R2, R1, R5
5BCF7C:  CMP             R2, #8
5BCF7E:  BCS             loc_5BCFA0
5BCF80:  MOV             R1, R5
5BCF82:  ADD             R5, SP, #0x108+var_6C
5BCF84:  LDR             R4, [SP,#0x108+var_E8]
5BCF86:  LDR.W           R12, [SP,#0x108+var_98]
5BCF8A:  LDR             R0, [SP,#0x108+var_F8]
5BCF8C:  B               loc_5BCFF0
5BCF8E:  LDR             R0, [SP,#0x108+var_100]
5BCF90:  ADD             R5, SP, #0x108+var_6C
5BCF92:  LDR             R6, [SP,#0x108+var_9C]
5BCF94:  ADD.W           LR, R4, R0
5BCF98:  LDR.W           R12, [SP,#0x108+var_98]
5BCF9C:  LDR             R0, [SP,#0x108+var_F8]
5BCF9E:  B               loc_5BD000
5BCFA0:  LDR             R4, [SP,#0x108+var_E8]
5BCFA2:  BIC.W           R10, R2, #7
5BCFA6:  LDR             R0, [SP,#0x108+var_F8]
5BCFA8:  CMP.W           R10, #0
5BCFAC:  BEQ             loc_5BCFE8
5BCFAE:  LDR             R3, [SP,#0x108+var_F4]
5BCFB0:  ADD.W           R1, R5, R10
5BCFB4:  LDR.W           R12, [SP,#0x108+var_98]
5BCFB8:  VDUP.32         Q8, R0
5BCFBC:  ADD.W           R6, R3, R5,LSL#1
5BCFC0:  MOV             R3, R10
5BCFC2:  VLD1.16         {D18-D19}, [R6]
5BCFC6:  SUBS            R3, #8
5BCFC8:  VADDW.U16       Q10, Q8, D19
5BCFCC:  VADDW.U16       Q9, Q8, D18
5BCFD0:  VMOVN.I32       D21, Q10
5BCFD4:  VMOVN.I32       D20, Q9
5BCFD8:  VST1.16         {D20-D21}, [R6]!
5BCFDC:  BNE             loc_5BCFC2
5BCFDE:  LDR             R6, [SP,#0x108+var_9C]
5BCFE0:  ADD             R5, SP, #0x108+var_6C
5BCFE2:  CMP             R2, R10
5BCFE4:  BNE             loc_5BCFF0
5BCFE6:  B               loc_5BD000
5BCFE8:  MOV             R1, R5
5BCFEA:  ADD             R5, SP, #0x108+var_6C
5BCFEC:  LDR.W           R12, [SP,#0x108+var_98]
5BCFF0:  LDRH.W          R2, [R4,R1,LSL#1]
5BCFF4:  ADD             R2, R0
5BCFF6:  STRH.W          R2, [R4,R1,LSL#1]
5BCFFA:  ADDS            R1, #1
5BCFFC:  CMP             R1, LR
5BCFFE:  BLT             loc_5BCFF0
5BD000:  LDR             R2, [SP,#0x108+var_C8]
5BD002:  ADD.W           R1, R12, R0
5BD006:  LDR             R4, [SP,#0x108+var_88]
5BD008:  STR             R1, [R2]
5BD00A:  LDR             R1, [SP,#0x108+var_CC]
5BD00C:  STR.W           LR, [R1]
5BD010:  ADD.W           R8, R8, #1
5BD014:  CMP             R8, R4
5BD016:  BNE.W           loc_5BBF94
5BD01A:  B.W             loc_5BBF72
5BD01E:  ADD             SP, SP, #0xA8
5BD020:  VPOP            {D8-D15}
5BD024:  ADD             SP, SP, #4
5BD026:  POP.W           {R8-R11}
5BD02A:  POP             {R4-R7,PC}
5BD02C:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BD030:  LDR             R0, [SP,#0x108+var_90]
5BD032:  LDR             R1, [R0,#0x14]; CMatrix *
5BD034:  MOV             R0, R6; this
5BD036:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BD03A:  LDR             R0, [SP,#0x108+var_90]; this
5BD03C:  LDR             R2, [R0,#0x14]
5BD03E:  CMP             R2, #0
5BD040:  VLDR            S0, [R2,#4]
5BD044:  VMUL.F32        S0, S0, S18
5BD048:  VADD.F32        S16, S16, S0
5BD04C:  BNE.W           loc_5BBCB4
5BD050:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BD054:  LDR             R0, [SP,#0x108+var_90]
5BD056:  LDR             R1, [R0,#0x14]; CMatrix *
5BD058:  MOV             R0, R6; this
5BD05A:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BD05E:  LDR             R0, [SP,#0x108+var_90]; this
5BD060:  LDR             R2, [R0,#0x14]
5BD062:  CMP             R2, #0
5BD064:  VLDR            S0, [R2,#0x10]
5BD068:  VMUL.F32        S24, S0, S24
5BD06C:  BNE.W           loc_5BBCBC
5BD070:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BD074:  LDR             R0, [SP,#0x108+var_90]
5BD076:  LDR             R1, [R0,#0x14]; CMatrix *
5BD078:  MOV             R0, R6; this
5BD07A:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BD07E:  LDR             R0, [SP,#0x108+var_90]; this
5BD080:  LDR             R2, [R0,#0x14]
5BD082:  CMP             R2, #0
5BD084:  VLDR            S0, [R2,#0x14]
5BD088:  VMUL.F32        S0, S0, S18
5BD08C:  VADD.F32        S18, S24, S0
5BD090:  BNE.W           loc_5BBCC8
5BD094:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BD098:  LDR             R0, [SP,#0x108+var_90]
5BD09A:  LDR             R1, [R0,#0x14]; CMatrix *
5BD09C:  MOV             R0, R6; this
5BD09E:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BD0A2:  LDR             R0, [SP,#0x108+var_90]; this
5BD0A4:  LDR             R2, [R0,#0x14]
5BD0A6:  CMP             R2, #0
5BD0A8:  VLDR            S0, [R2]
5BD0AC:  VMUL.F32        S24, S0, S22
5BD0B0:  BNE.W           loc_5BBCD0
5BD0B4:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BD0B8:  LDR             R0, [SP,#0x108+var_90]
5BD0BA:  LDR             R1, [R0,#0x14]; CMatrix *
5BD0BC:  MOV             R0, R6; this
5BD0BE:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BD0C2:  LDR             R0, [SP,#0x108+var_90]; this
5BD0C4:  LDR             R2, [R0,#0x14]
5BD0C6:  CMP             R2, #0
5BD0C8:  VLDR            S0, [R2,#4]
5BD0CC:  VMUL.F32        S0, S0, S20
5BD0D0:  VADD.F32        S24, S24, S0
5BD0D4:  BNE.W           loc_5BBCDC
5BD0D8:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BD0DC:  LDR             R0, [SP,#0x108+var_90]
5BD0DE:  LDR             R1, [R0,#0x14]; CMatrix *
5BD0E0:  MOV             R0, R6; this
5BD0E2:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BD0E6:  LDR             R0, [SP,#0x108+var_90]; this
5BD0E8:  LDR             R2, [R0,#0x14]
5BD0EA:  CMP             R2, #0
5BD0EC:  VLDR            S0, [R2,#0x10]
5BD0F0:  VMUL.F32        S28, S0, S22
5BD0F4:  BNE.W           loc_5BBCE4
5BD0F8:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BD0FC:  LDR             R0, [SP,#0x108+var_90]
5BD0FE:  LDR             R1, [R0,#0x14]; CMatrix *
5BD100:  MOV             R0, R6; this
5BD102:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BD106:  LDR             R0, [SP,#0x108+var_90]
5BD108:  LDR             R2, [R0,#0x14]
5BD10A:  B.W             loc_5BBCE4
5BD10E:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BD112:  LDR             R0, [SP,#0x108+var_90]
5BD114:  LDR             R1, [R0,#0x14]; CMatrix *
5BD116:  MOV             R0, R4; this
5BD118:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BD11C:  LDR             R0, [SP,#0x108+var_90]; this
5BD11E:  LDR             R2, [R0,#0x14]
5BD120:  CMP             R2, #0
5BD122:  VLDR            S0, [R2,#4]
5BD126:  VMUL.F32        S0, S22, S0
5BD12A:  VADD.F32        S28, S28, S0
5BD12E:  BNE.W           loc_5BBD4E
5BD132:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BD136:  LDR             R0, [SP,#0x108+var_90]
5BD138:  LDR             R1, [R0,#0x14]; CMatrix *
5BD13A:  MOV             R0, R4; this
5BD13C:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BD140:  LDR             R0, [SP,#0x108+var_90]; this
5BD142:  LDR             R2, [R0,#0x14]
5BD144:  CMP             R2, #0
5BD146:  VLDR            S0, [R2,#0x10]
5BD14A:  VMUL.F32        S26, S26, S0
5BD14E:  BNE.W           loc_5BBD56
5BD152:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BD156:  LDR             R0, [SP,#0x108+var_90]
5BD158:  LDR             R1, [R0,#0x14]; CMatrix *
5BD15A:  MOV             R0, R4; this
5BD15C:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BD160:  LDR             R0, [SP,#0x108+var_90]
5BD162:  LDR             R2, [R0,#0x14]
5BD164:  B.W             loc_5BBD56
