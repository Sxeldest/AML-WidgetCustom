; =========================================================
; Game Engine Function: _ZN7CClouds14RenderSkyPolysEv
; Address            : 0x59F9A0 - 0x5A0170
; =========================================================

59F9A0:  PUSH            {R4-R7,LR}
59F9A2:  ADD             R7, SP, #0xC
59F9A4:  PUSH.W          {R8-R11}
59F9A8:  SUB             SP, SP, #4
59F9AA:  VPUSH           {D8-D15}
59F9AE:  SUB             SP, SP, #0x50
59F9B0:  LDR.W           R0, =(TheCamera_ptr - 0x59F9B8)
59F9B4:  ADD             R0, PC; TheCamera_ptr
59F9B6:  LDR             R0, [R0]; TheCamera
59F9B8:  LDR             R0, [R0,#(dword_951FBC - 0x951FA8)]
59F9BA:  CBZ             R0, loc_59F9CA
59F9BC:  VLDR            D16, [R0,#0x10]
59F9C0:  LDR             R0, [R0,#0x18]
59F9C2:  STR             R0, [SP,#0xB0+var_68]
59F9C4:  VSTR            D16, [SP,#0xB0+var_70]
59F9C8:  B               loc_59F9EC
59F9CA:  LDR.W           R0, =(TheCamera_ptr - 0x59F9D6)
59F9CE:  MOVS            R1, #0
59F9D0:  STR             R1, [SP,#0xB0+var_68]
59F9D2:  ADD             R0, PC; TheCamera_ptr
59F9D4:  LDR             R0, [R0]; TheCamera
59F9D6:  LDR             R4, [R0,#(dword_951FB8 - 0x951FA8)]
59F9D8:  MOV             R0, R4; x
59F9DA:  BLX.W           cosf
59F9DE:  STR             R0, [SP,#0xB0+var_70+4]
59F9E0:  MOV             R0, R4; x
59F9E2:  BLX.W           sinf
59F9E6:  EOR.W           R0, R0, #0x80000000
59F9EA:  STR             R0, [SP,#0xB0+var_70]
59F9EC:  ADD             R0, SP, #0xB0+var_70; this
59F9EE:  MOV.W           R8, #0
59F9F2:  STR.W           R8, [SP,#0xB0+var_68]
59F9F6:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
59F9FA:  LDR.W           R0, =(_ZN10CTimeCycle18m_BelowHorizonGreyE_ptr - 0x59FA06)
59F9FE:  LDR.W           R1, =(TheCamera_ptr - 0x59FA0C)
59FA02:  ADD             R0, PC; _ZN10CTimeCycle18m_BelowHorizonGreyE_ptr
59FA04:  LDR.W           R3, =(_ZN8CWeather9FoggynessE_ptr - 0x59FA14)
59FA08:  ADD             R1, PC; TheCamera_ptr
59FA0A:  LDR.W           R2, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x59FA18)
59FA0E:  LDR             R0, [R0]; CTimeCycle::m_BelowHorizonGrey ...
59FA10:  ADD             R3, PC; _ZN8CWeather9FoggynessE_ptr
59FA12:  LDR             R1, [R1]; TheCamera
59FA14:  ADD             R2, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
59FA16:  LDR             R3, [R3]; CWeather::Foggyness ...
59FA18:  LDR             R2, [R2]; CTimeCycle::m_CurrentColours ...
59FA1A:  LDRB.W          R9, [R0]; CTimeCycle::m_BelowHorizonGrey
59FA1E:  LDRB.W          R10, [R0,#(byte_96B4AD - 0x96B4AC)]
59FA22:  LDRB            R5, [R0,#(byte_96B4AE - 0x96B4AC)]
59FA24:  LDR             R0, [R1,#(dword_951FBC - 0x951FA8)]
59FA26:  VLDR            S28, [R3]
59FA2A:  ADD.W           R3, R0, #0x30 ; '0'
59FA2E:  CMP             R0, #0
59FA30:  LDRH.W          R11, [R2,#(dword_966576 - 0x96654C)]
59FA34:  IT EQ
59FA36:  ADDEQ           R3, R1, #4
59FA38:  MOVS            R0, #1
59FA3A:  MOVS            R1, #0
59FA3C:  LDRH            R6, [R2,#(dword_966576+2 - 0x96654C)]
59FA3E:  LDRH            R4, [R2,#(word_96657A - 0x96654C)]
59FA40:  VLDR            S26, [SP,#0xB0+var_70]
59FA44:  VLDR            S24, [SP,#0xB0+var_70+4]
59FA48:  VLDR            S16, [R3]
59FA4C:  VLDR            S18, [R3,#4]
59FA50:  VLDR            S20, [R3,#8]
59FA54:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59FA58:  MOVS            R0, #6
59FA5A:  MOVS            R1, #0
59FA5C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59FA60:  MOVS            R0, #8
59FA62:  MOVS            R1, #0
59FA64:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59FA68:  MOVS            R0, #0xC
59FA6A:  MOVS            R1, #0
59FA6C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59FA70:  MOVS            R0, #0xA
59FA72:  MOVS            R1, #5
59FA74:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59FA78:  MOVS            R0, #0xB
59FA7A:  MOVS            R1, #6
59FA7C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59FA80:  MOVS            R0, #0xE
59FA82:  MOVS            R1, #0
59FA84:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59FA88:  MOVS            R0, #0x14
59FA8A:  MOVS            R1, #1
59FA8C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59FA90:  VMOV.F32        S0, #-25.0
59FA94:  VLDR            S2, =80.0
59FA98:  VMOV.F32        S22, #1.0
59FA9C:  VLDR            S30, =0.0
59FAA0:  VMOV            S4, R5
59FAA4:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x59FAB8)
59FAA8:  VMOV            S8, R6
59FAAC:  LDR.W           R1, =(TempBufferVerticesStored_ptr - 0x59FABE)
59FAB0:  VMOV            S10, R10
59FAB4:  ADD             R0, PC; TempBufferIndicesStored_ptr
59FAB6:  VMOV            S12, R11
59FABA:  ADD             R1, PC; TempBufferVerticesStored_ptr
59FABC:  VMOV            S14, R9
59FAC0:  LDR             R0, [R0]; TempBufferIndicesStored
59FAC2:  VADD.F32        S0, S20, S0
59FAC6:  LDR             R1, [R1]; TempBufferVerticesStored
59FAC8:  VDIV.F32        S0, S0, S2
59FACC:  VMIN.F32        D16, D0, D11
59FAD0:  VMOV            S0, R4
59FAD4:  VCVT.F32.U32    S0, S0
59FAD8:  VMAX.F32        D16, D16, D15
59FADC:  VCVT.F32.U32    S4, S4
59FAE0:  VCVT.F32.U32    S8, S8
59FAE4:  VCVT.F32.U32    S10, S10
59FAE8:  VMAX.F32        D1, D16, D14
59FAEC:  VCVT.F32.U32    S12, S12
59FAF0:  VCVT.F32.U32    S14, S14
59FAF4:  VSUB.F32        S6, S22, S2
59FAF8:  VMUL.F32        S0, S2, S0
59FAFC:  VMUL.F32        S8, S2, S8
59FB00:  VMUL.F32        S2, S2, S12
59FB04:  VMUL.F32        S4, S6, S4
59FB08:  VMUL.F32        S10, S6, S10
59FB0C:  VMUL.F32        S6, S6, S14
59FB10:  VADD.F32        S0, S0, S4
59FB14:  VADD.F32        S4, S8, S10
59FB18:  VADD.F32        S2, S2, S6
59FB1C:  VCVT.U32.F32    S0, S0
59FB20:  STR.W           R8, [R0]
59FB24:  VCVT.U32.F32    S4, S4
59FB28:  VCVT.U32.F32    S2, S2
59FB2C:  STR.W           R8, [R1]
59FB30:  VMOV            R0, S0
59FB34:  VMOV            R9, S4
59FB38:  VMOV            R10, S2
59FB3C:  STR             R0, [SP,#0xB0+var_74]
59FB3E:  MOV.W           R0, #0xFFFFFFFF; int
59FB42:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
59FB46:  MOV             R11, R0
59FB48:  CMP.W           R11, #0
59FB4C:  BEQ             loc_59FB9C
59FB4E:  LDR.W           R0, [R11,#0x14]
59FB52:  ADD.W           R1, R0, #0x30 ; '0'
59FB56:  CMP             R0, #0
59FB58:  IT EQ
59FB5A:  ADDEQ.W         R1, R11, #4
59FB5E:  VLDR            S17, [R1,#8]
59FB62:  VCMPE.F32       S17, #0.0
59FB66:  VMRS            APSR_nzcv, FPSCR
59FB6A:  BLE             loc_59FBA0
59FB6C:  VLDR            S0, =40.0
59FB70:  VMOV.F32        S2, #1.0
59FB74:  VDIV.F32        S0, S17, S0
59FB78:  VADD.F32        S22, S0, S2
59FB7C:  B               loc_59FBA0
59FB7E:  ALIGN 0x10
59FB80:  DCFS 80.0
59FB84:  DCFS 0.0
59FB88:  DCFS 40.0
59FB8C:  DCFS -1.4
59FB90:  DCFS 1.4
59FB94:  DCFS -0.05
59FB98:  DCFS 0.15
59FB9C:  VMOV.F32        S17, S30
59FBA0:  VLDR            S0, =-1.4
59FBA4:  VMOV.F32        S19, #0.5
59FBA8:  VLDR            S2, =1.4
59FBAC:  VMUL.F32        S28, S26, S0
59FBB0:  VLDR            S0, [SP,#0xB0+var_70]
59FBB4:  VMUL.F32        S26, S24, S2
59FBB8:  VLDR            S2, [SP,#0xB0+var_70+4]
59FBBC:  VLDR            S4, [SP,#0xB0+var_68]
59FBC0:  VMOV.F32        S24, #30.0
59FBC4:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x59FBD4)
59FBC8:  VADD.F32        S3, S4, S30
59FBCC:  VADD.F32        S10, S4, S19
59FBD0:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
59FBD2:  VSUB.F32        S6, S2, S28
59FBD6:  LDR.W           R8, [R0]; CTimeCycle::m_CurrentColours ...
59FBDA:  VADD.F32        S8, S26, S0
59FBDE:  VSUB.F32        S0, S0, S26
59FBE2:  VADD.F32        S2, S28, S2
59FBE6:  LDRB.W          R2, [R8,#(word_96657A - 0x96654C)]
59FBEA:  VADD.F32        S5, S3, S19
59FBEE:  LDRB.W          R3, [R8,#(word_966574 - 0x96654C)]
59FBF2:  VMUL.F32        S10, S10, S24
59FBF6:  LDRB.W          R1, [R8,#(dword_966576 - 0x96654C)]
59FBFA:  LDRB.W          R0, [R8,#(dword_966576+2 - 0x96654C)]
59FBFE:  VMUL.F32        S4, S4, S24
59FC02:  VADD.F32        S12, S6, S30
59FC06:  STR             R2, [SP,#0xB0+var_7C]
59FC08:  VADD.F32        S14, S8, S30
59FC0C:  STR             R0, [SP,#0xB0+var_80]
59FC0E:  VADD.F32        S1, S0, S30
59FC12:  STR             R1, [SP,#0xB0+var_84]
59FC14:  VMUL.F32        S7, S2, S24
59FC18:  STR             R3, [SP,#0xB0+var_88]
59FC1A:  VADD.F32        S2, S2, S30
59FC1E:  LDRB.W          R4, [R8,#(dword_966570+2 - 0x96654C)]
59FC22:  VADD.F32        S10, S20, S10
59FC26:  LDRB.W          R5, [R8,#(dword_966570 - 0x96654C)]
59FC2A:  VMUL.F32        S6, S6, S24
59FC2E:  STR             R4, [SP,#0xB0+var_8C]
59FC30:  VMUL.F32        S12, S12, S24
59FC34:  STR             R5, [SP,#0xB0+var_90]
59FC36:  VMUL.F32        S14, S14, S24
59FC3A:  VMUL.F32        S1, S1, S24
59FC3E:  VMUL.F32        S8, S8, S24
59FC42:  VMUL.F32        S0, S0, S24
59FC46:  VMOV            R2, S10
59FC4A:  VMUL.F32        S10, S5, S24
59FC4E:  VADD.F32        S12, S18, S12
59FC52:  VADD.F32        S14, S16, S14
59FC56:  VADD.F32        S1, S16, S1
59FC5A:  VMUL.F32        S2, S2, S24
59FC5E:  VMUL.F32        S3, S3, S24
59FC62:  VADD.F32        S4, S20, S4
59FC66:  VADD.F32        S8, S16, S8
59FC6A:  VMOV            R1, S12
59FC6E:  VMOV            R3, S14
59FC72:  VMOV            R0, S1
59FC76:  VADD.F32        S2, S18, S2
59FC7A:  VADD.F32        S12, S20, S3
59FC7E:  VADD.F32        S14, S18, S7
59FC82:  VADD.F32        S6, S18, S6
59FC86:  VADD.F32        S0, S16, S0
59FC8A:  VADD.F32        S10, S20, S10
59FC8E:  VSTR            S2, [SP,#0xB0+var_B0]
59FC92:  VSTR            S10, [SP,#0xB0+var_AC]
59FC96:  VSTR            S0, [SP,#0xB0+var_A8]
59FC9A:  VSTR            S6, [SP,#0xB0+var_A4]
59FC9E:  VSTR            S4, [SP,#0xB0+var_A0]
59FCA2:  VSTR            S8, [SP,#0xB0+var_9C]
59FCA6:  VSTR            S14, [SP,#0xB0+var_98]
59FCAA:  VSTR            S12, [SP,#0xB0+var_94]
59FCAE:  BLX.W           j__ZN7CClouds15SetUpOneSkyPolyE7CVectorS0_S0_S0_hhhhhh; CClouds::SetUpOneSkyPoly(CVector,CVector,CVector,CVector,uchar,uchar,uchar,uchar,uchar,uchar)
59FCB2:  VLDR            S0, [SP,#0xB0+var_70]
59FCB6:  VLDR            S2, [SP,#0xB0+var_70+4]
59FCBA:  VSUB.F32        S6, S0, S26
59FCBE:  VLDR            S4, [SP,#0xB0+var_68]
59FCC2:  VSUB.F32        S8, S2, S28
59FCC6:  VLDR            S21, =-0.05
59FCCA:  VADD.F32        S0, S26, S0
59FCCE:  LDRB.W          R5, [R8,#(dword_966576 - 0x96654C)]
59FCD2:  VMUL.F32        S10, S4, S24
59FCD6:  LDRB.W          R4, [R8,#(dword_966576+2 - 0x96654C)]
59FCDA:  VADD.F32        S12, S4, S21
59FCDE:  LDRB.W          R6, [R8,#(word_96657A - 0x96654C)]
59FCE2:  VADD.F32        S4, S4, S30
59FCE6:  VADD.F32        S2, S28, S2
59FCEA:  STRD.W          R5, R4, [SP,#0xB0+var_90]
59FCEE:  VMUL.F32        S6, S6, S24
59FCF2:  STRD.W          R6, R5, [SP,#0xB0+var_88]
59FCF6:  VMUL.F32        S8, S8, S24
59FCFA:  STRD.W          R4, R6, [SP,#0xB0+var_80]
59FCFE:  VMUL.F32        S0, S0, S24
59FD02:  VADD.F32        S10, S20, S10
59FD06:  VMUL.F32        S12, S12, S24
59FD0A:  VADD.F32        S14, S4, S21
59FD0E:  VMUL.F32        S2, S2, S24
59FD12:  VADD.F32        S6, S16, S6
59FD16:  VADD.F32        S8, S18, S8
59FD1A:  VADD.F32        S0, S16, S0
59FD1E:  VMOV            R2, S10
59FD22:  VMUL.F32        S4, S4, S24
59FD26:  VMUL.F32        S10, S14, S24
59FD2A:  VADD.F32        S2, S18, S2
59FD2E:  VMOV            R0, S6
59FD32:  VMOV            R1, S8
59FD36:  VMOV            R3, S0
59FD3A:  VADD.F32        S12, S20, S12
59FD3E:  VADD.F32        S4, S20, S4
59FD42:  VADD.F32        S10, S20, S10
59FD46:  VSTR            S2, [SP,#0xB0+var_B0]
59FD4A:  VSTR            S4, [SP,#0xB0+var_AC]
59FD4E:  VSTR            S6, [SP,#0xB0+var_A8]
59FD52:  VSTR            S8, [SP,#0xB0+var_A4]
59FD56:  VSTR            S12, [SP,#0xB0+var_A0]
59FD5A:  VSTR            S0, [SP,#0xB0+var_9C]
59FD5E:  VSTR            S2, [SP,#0xB0+var_98]
59FD62:  VSTR            S10, [SP,#0xB0+var_94]
59FD66:  BLX.W           j__ZN7CClouds15SetUpOneSkyPolyE7CVectorS0_S0_S0_hhhhhh; CClouds::SetUpOneSkyPoly(CVector,CVector,CVector,CVector,uchar,uchar,uchar,uchar,uchar,uchar)
59FD6A:  VLDR            S4, [SP,#0xB0+var_68]
59FD6E:  VMUL.F32        S6, S22, S30
59FD72:  VLDR            S0, [SP,#0xB0+var_70]
59FD76:  VLDR            S2, [SP,#0xB0+var_70+4]
59FD7A:  VADD.F32        S3, S4, S21
59FD7E:  VSUB.F32        S10, S0, S26
59FD82:  VLDR            S5, =0.15
59FD86:  VADD.F32        S8, S28, S2
59FD8A:  LDR             R0, [SP,#0xB0+var_74]
59FD8C:  VSUB.F32        S2, S2, S28
59FD90:  LDRB.W          R3, [R8,#(word_96657A - 0x96654C)]
59FD94:  VADD.F32        S0, S26, S0
59FD98:  STR             R0, [SP,#0xB0+var_7C]
59FD9A:  VMUL.F32        S5, S22, S5
59FD9E:  STR.W           R9, [SP,#0xB0+var_80]
59FDA2:  VADD.F32        S7, S4, S30
59FDA6:  STR.W           R10, [SP,#0xB0+var_84]
59FDAA:  VMUL.F32        S3, S3, S24
59FDAE:  STR             R3, [SP,#0xB0+var_88]
59FDB0:  VSUB.F32        S1, S10, S6
59FDB4:  LDRB.W          R5, [R8,#(dword_966576+2 - 0x96654C)]
59FDB8:  VSUB.F32        S12, S8, S6
59FDBC:  LDRB.W          R6, [R8,#(dword_966576 - 0x96654C)]
59FDC0:  VSUB.F32        S14, S2, S6
59FDC4:  STR             R5, [SP,#0xB0+var_8C]
59FDC6:  VSUB.F32        S6, S0, S6
59FDCA:  STR             R6, [SP,#0xB0+var_90]
59FDCC:  VMUL.F32        S2, S2, S24
59FDD0:  VMUL.F32        S10, S10, S24
59FDD4:  VMUL.F32        S0, S0, S24
59FDD8:  VADD.F32        S3, S20, S3
59FDDC:  VSUB.F32        S4, S4, S5
59FDE0:  VSUB.F32        S9, S7, S5
59FDE4:  VADD.F32        S5, S7, S21
59FDE8:  VADD.F32        S2, S18, S2
59FDEC:  VADD.F32        S10, S16, S10
59FDF0:  VADD.F32        S0, S16, S0
59FDF4:  VMOV            R2, S3
59FDF8:  VMUL.F32        S4, S4, S24
59FDFC:  VMUL.F32        S8, S8, S24
59FE00:  VMUL.F32        S6, S6, S24
59FE04:  VMOV            R1, S2
59FE08:  VMOV            R0, S10
59FE0C:  VMOV            R3, S0
59FE10:  VMUL.F32        S12, S12, S24
59FE14:  VMUL.F32        S0, S14, S24
59FE18:  VMUL.F32        S2, S1, S24
59FE1C:  VMUL.F32        S10, S5, S24
59FE20:  VMUL.F32        S7, S9, S24
59FE24:  VADD.F32        S8, S18, S8
59FE28:  VADD.F32        S4, S20, S4
59FE2C:  VADD.F32        S12, S18, S12
59FE30:  VADD.F32        S6, S16, S6
59FE34:  VADD.F32        S0, S18, S0
59FE38:  VADD.F32        S2, S16, S2
59FE3C:  VADD.F32        S14, S20, S7
59FE40:  VADD.F32        S10, S20, S10
59FE44:  VSTR            S8, [SP,#0xB0+var_B0]
59FE48:  VSTR            S10, [SP,#0xB0+var_AC]
59FE4C:  VSTR            S2, [SP,#0xB0+var_A8]
59FE50:  VSTR            S0, [SP,#0xB0+var_A4]
59FE54:  VSTR            S4, [SP,#0xB0+var_A0]
59FE58:  VSTR            S6, [SP,#0xB0+var_9C]
59FE5C:  VSTR            S12, [SP,#0xB0+var_98]
59FE60:  VSTR            S14, [SP,#0xB0+var_94]
59FE64:  BLX.W           j__ZN7CClouds15SetUpOneSkyPolyE7CVectorS0_S0_S0_hhhhhh; CClouds::SetUpOneSkyPoly(CVector,CVector,CVector,CVector,uchar,uchar,uchar,uchar,uchar,uchar)
59FE68:  VLDR            S0, [SP,#0xB0+var_70]
59FE6C:  VLDR            S2, [SP,#0xB0+var_70+4]
59FE70:  VSUB.F32        S6, S0, S26
59FE74:  VLDR            S4, [SP,#0xB0+var_68]
59FE78:  VSUB.F32        S8, S2, S28
59FE7C:  LDRB.W          R6, [R8,#(dword_966570 - 0x96654C)]
59FE80:  VADD.F32        S10, S26, S0
59FE84:  LDRB.W          R5, [R8,#(dword_966570+2 - 0x96654C)]
59FE88:  VADD.F32        S12, S4, S19
59FE8C:  LDRB.W          R4, [R8,#(word_966574 - 0x96654C)]
59FE90:  VNEG.F32        S1, S0
59FE94:  VNEG.F32        S14, S2
59FE98:  STRD.W          R6, R5, [SP,#0xB0+var_90]
59FE9C:  VSUB.F32        S5, S28, S2
59FEA0:  STRD.W          R4, R6, [SP,#0xB0+var_88]
59FEA4:  VADD.F32        S6, S6, S30
59FEA8:  STRD.W          R5, R4, [SP,#0xB0+var_80]
59FEAC:  VADD.F32        S8, S8, S30
59FEB0:  VADD.F32        S10, S10, S30
59FEB4:  VMUL.F32        S12, S12, S24
59FEB8:  VSUB.F32        S3, S30, S4
59FEBC:  VADD.F32        S7, S4, S30
59FEC0:  VSUB.F32        S0, S26, S0
59FEC4:  VMUL.F32        S6, S6, S24
59FEC8:  VMUL.F32        S8, S8, S24
59FECC:  VMUL.F32        S10, S10, S24
59FED0:  VADD.F32        S2, S28, S2
59FED4:  VSUB.F32        S14, S14, S28
59FED8:  VSUB.F32        S1, S1, S26
59FEDC:  VADD.F32        S12, S20, S12
59FEE0:  VADD.F32        S6, S16, S6
59FEE4:  VADD.F32        S8, S18, S8
59FEE8:  VADD.F32        S10, S16, S10
59FEEC:  VSUB.F32        S4, S19, S4
59FEF0:  VADD.F32        S3, S3, S19
59FEF4:  VADD.F32        S5, S5, S30
59FEF8:  VADD.F32        S0, S0, S30
59FEFC:  VADD.F32        S7, S7, S19
59FF00:  VADD.F32        S2, S2, S30
59FF04:  VADD.F32        S14, S14, S30
59FF08:  VADD.F32        S1, S1, S30
59FF0C:  VMOV            R0, S6
59FF10:  VMOV            R1, S8
59FF14:  VMOV            R2, S12
59FF18:  VMOV            R3, S10
59FF1C:  VMUL.F32        S4, S4, S24
59FF20:  VMUL.F32        S0, S0, S24
59FF24:  VMUL.F32        S2, S2, S24
59FF28:  VMUL.F32        S6, S14, S24
59FF2C:  VMUL.F32        S8, S1, S24
59FF30:  VMUL.F32        S3, S3, S24
59FF34:  VMUL.F32        S5, S5, S24
59FF38:  VMUL.F32        S7, S7, S24
59FF3C:  VADD.F32        S4, S20, S4
59FF40:  VADD.F32        S2, S18, S2
59FF44:  VADD.F32        S0, S16, S0
59FF48:  VADD.F32        S6, S18, S6
59FF4C:  VADD.F32        S10, S20, S3
59FF50:  VADD.F32        S12, S18, S5
59FF54:  VADD.F32        S14, S20, S7
59FF58:  VADD.F32        S8, S16, S8
59FF5C:  VSTR            S2, [SP,#0xB0+var_B0]
59FF60:  VSTR            S14, [SP,#0xB0+var_AC]
59FF64:  VSTR            S8, [SP,#0xB0+var_A8]
59FF68:  VSTR            S6, [SP,#0xB0+var_A4]
59FF6C:  VSTR            S4, [SP,#0xB0+var_A0]
59FF70:  VSTR            S0, [SP,#0xB0+var_9C]
59FF74:  VSTR            S12, [SP,#0xB0+var_98]
59FF78:  VSTR            S10, [SP,#0xB0+var_94]
59FF7C:  BLX.W           j__ZN7CClouds15SetUpOneSkyPolyE7CVectorS0_S0_S0_hhhhhh; CClouds::SetUpOneSkyPoly(CVector,CVector,CVector,CVector,uchar,uchar,uchar,uchar,uchar,uchar)
59FF80:  CMP.W           R11, #0
59FF84:  BEQ             loc_59FFF8
59FF86:  VLDR            S0, =105.0
59FF8A:  MOVS            R6, #1
59FF8C:  VCMPE.F32       S17, S0
59FF90:  VMRS            APSR_nzcv, FPSCR
59FF94:  BGT             loc_59FFD2
59FF96:  VCMPE.F32       S17, #0.0
59FF9A:  VMRS            APSR_nzcv, FPSCR
59FF9E:  BLT             loc_59FFD2
59FFA0:  LDR             R0, =(TheCamera_ptr - 0x59FFAC)
59FFA2:  MOVS            R4, #0
59FFA4:  VLDR            S0, =300.0
59FFA8:  ADD             R0, PC; TheCamera_ptr
59FFAA:  LDR             R0, [R0]; TheCamera
59FFAC:  LDR.W           R0, [R0,#(dword_952880 - 0x951FA8)]
59FFB0:  VLDR            S2, [R0,#0x84]
59FFB4:  LDR.W           R0, [R11,#0x440]; this
59FFB8:  VCMPE.F32       S2, S0
59FFBC:  VMRS            APSR_nzcv, FPSCR
59FFC0:  IT LT
59FFC2:  MOVLT           R4, #1
59FFC4:  BLX.W           j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
59FFC8:  CMP             R0, #0
59FFCA:  IT NE
59FFCC:  MOVNE           R0, #1
59FFCE:  ORR.W           R6, R4, R0
59FFD2:  MOV.W           R0, #0xFFFFFFFF; int
59FFD6:  MOVS            R1, #0; bool
59FFD8:  MOVS            R5, #0
59FFDA:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
59FFDE:  CBZ             R0, loc_5A0014
59FFE0:  MOV.W           R0, #0xFFFFFFFF; int
59FFE4:  MOVS            R1, #0; bool
59FFE6:  MOVS            R5, #0
59FFE8:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
59FFEC:  LDR.W           R0, [R0,#0x5A4]
59FFF0:  CMP             R0, #4
59FFF2:  BNE             loc_5A0000
59FFF4:  MOVS            R5, #1
59FFF6:  B               loc_5A0014
59FFF8:  MOVS            R6, #0
59FFFA:  MOVS            R5, #0
59FFFC:  MOVS            R0, #0
59FFFE:  B               loc_5A0036
5A0000:  MOV.W           R0, #0xFFFFFFFF; int
5A0004:  MOVS            R1, #0; bool
5A0006:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5A000A:  LDR.W           R0, [R0,#0x5A4]
5A000E:  CMP             R0, #3
5A0010:  IT EQ
5A0012:  MOVEQ           R5, #1
5A0014:  LDR.W           R0, [R11,#0x440]; this
5A0018:  BLX.W           j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
5A001C:  CBNZ            R0, loc_5A0044
5A001E:  LDRSB.W         R0, [R11,#0x71C]
5A0022:  RSB.W           R0, R0, R0,LSL#3
5A0026:  ADD.W           R0, R11, R0,LSL#2
5A002A:  LDR.W           R1, [R0,#0x5A4]
5A002E:  MOVS            R0, #0
5A0030:  CMP             R1, #0x2E ; '.'
5A0032:  IT EQ
5A0034:  MOVEQ           R0, #1
5A0036:  CMP             R6, #0
5A0038:  IT EQ
5A003A:  CMPEQ           R5, #0
5A003C:  BNE             loc_5A0044
5A003E:  CMP             R0, #1
5A0040:  BNE.W           loc_5A015E
5A0044:  VLDR            S0, [SP,#0xB0+var_70]
5A0048:  VLDR            S2, [SP,#0xB0+var_70+4]
5A004C:  VLDR            S6, =-0.15
5A0050:  VSUB.F32        S8, S0, S26
5A0054:  VSUB.F32        S10, S2, S28
5A0058:  VLDR            S14, =0.0
5A005C:  VADD.F32        S12, S26, S0
5A0060:  VLDR            S4, [SP,#0xB0+var_68]
5A0064:  VMUL.F32        S6, S22, S6
5A0068:  STRD.W          R10, R9, [SP,#0xB0+var_90]
5A006C:  VNEG.F32        S7, S0
5A0070:  LDR             R6, [SP,#0xB0+var_74]
5A0072:  VNEG.F32        S5, S2
5A0076:  STRD.W          R6, R10, [SP,#0xB0+var_88]
5A007A:  VSUB.F32        S9, S28, S2
5A007E:  VADD.F32        S8, S8, S14
5A0082:  STRD.W          R9, R6, [SP,#0xB0+var_80]
5A0086:  VADD.F32        S10, S10, S14
5A008A:  VADD.F32        S12, S12, S14
5A008E:  VADD.F32        S1, S6, S4
5A0092:  VSUB.F32        S3, S14, S4
5A0096:  VSUB.F32        S0, S26, S0
5A009A:  VADD.F32        S2, S28, S2
5A009E:  VMUL.F32        S8, S8, S24
5A00A2:  VMUL.F32        S10, S10, S24
5A00A6:  VMUL.F32        S12, S12, S24
5A00AA:  VMUL.F32        S1, S1, S24
5A00AE:  VSUB.F32        S5, S5, S28
5A00B2:  VADD.F32        S11, S4, S14
5A00B6:  VSUB.F32        S7, S7, S26
5A00BA:  VADD.F32        S8, S16, S8
5A00BE:  VADD.F32        S10, S18, S10
5A00C2:  VADD.F32        S12, S16, S12
5A00C6:  VADD.F32        S1, S20, S1
5A00CA:  VADD.F32        S3, S6, S3
5A00CE:  VSUB.F32        S4, S6, S4
5A00D2:  VADD.F32        S0, S0, S14
5A00D6:  VADD.F32        S6, S6, S11
5A00DA:  VADD.F32        S2, S2, S14
5A00DE:  VADD.F32        S9, S9, S14
5A00E2:  VADD.F32        S5, S5, S14
5A00E6:  VADD.F32        S14, S7, S14
5A00EA:  VMOV            R1, S10
5A00EE:  VMOV            R3, S12
5A00F2:  VMOV            R0, S8
5A00F6:  VMOV            R2, S1
5A00FA:  VMUL.F32        S0, S0, S24
5A00FE:  VMUL.F32        S4, S4, S24
5A0102:  VMUL.F32        S6, S6, S24
5A0106:  VMUL.F32        S2, S2, S24
5A010A:  VMUL.F32        S10, S5, S24
5A010E:  VMUL.F32        S12, S14, S24
5A0112:  VMUL.F32        S3, S3, S24
5A0116:  VMUL.F32        S7, S9, S24
5A011A:  VADD.F32        S0, S16, S0
5A011E:  VADD.F32        S4, S20, S4
5A0122:  VADD.F32        S2, S18, S2
5A0126:  VADD.F32        S6, S20, S6
5A012A:  VADD.F32        S10, S18, S10
5A012E:  VADD.F32        S8, S20, S3
5A0132:  VADD.F32        S14, S18, S7
5A0136:  VADD.F32        S12, S16, S12
5A013A:  VSTR            S2, [SP,#0xB0+var_B0]
5A013E:  VSTR            S6, [SP,#0xB0+var_AC]
5A0142:  VSTR            S12, [SP,#0xB0+var_A8]
5A0146:  VSTR            S10, [SP,#0xB0+var_A4]
5A014A:  VSTR            S4, [SP,#0xB0+var_A0]
5A014E:  VSTR            S0, [SP,#0xB0+var_9C]
5A0152:  VSTR            S14, [SP,#0xB0+var_98]
5A0156:  VSTR            S8, [SP,#0xB0+var_94]
5A015A:  BLX.W           j__ZN7CClouds15SetUpOneSkyPolyE7CVectorS0_S0_S0_hhhhhh; CClouds::SetUpOneSkyPoly(CVector,CVector,CVector,CVector,uchar,uchar,uchar,uchar,uchar,uchar)
5A015E:  BLX.W           j__ZN13CBrightLights23RenderOutGeometryBufferEv; CBrightLights::RenderOutGeometryBuffer(void)
5A0162:  ADD             SP, SP, #0x50 ; 'P'
5A0164:  VPOP            {D8-D15}
5A0168:  ADD             SP, SP, #4
5A016A:  POP.W           {R8-R11}
5A016E:  POP             {R4-R7,PC}
