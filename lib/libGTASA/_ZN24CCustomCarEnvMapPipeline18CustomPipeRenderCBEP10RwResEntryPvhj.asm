; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline18CustomPipeRenderCBEP10RwResEntryPvhj
; Address            : 0x2CB990 - 0x2CBEC2
; =========================================================

2CB990:  PUSH            {R4-R7,LR}
2CB992:  ADD             R7, SP, #0xC
2CB994:  PUSH.W          {R8-R11}
2CB998:  SUB             SP, SP, #4
2CB99A:  VPUSH           {D8-D15}
2CB99E:  SUB             SP, SP, #0x60
2CB9A0:  STR             R3, [SP,#0xC0+var_90]
2CB9A2:  MOV             R4, R0
2CB9A4:  STR             R1, [SP,#0xC0+var_94]
2CB9A6:  LDR             R0, [R1,#0x18]
2CB9A8:  LDRB            R0, [R0,#9]
2CB9AA:  LSLS            R0, R0, #0x1D
2CB9AC:  BMI.W           loc_2CBEB4
2CB9B0:  LDR             R5, [SP,#0xC0+var_94]
2CB9B2:  MOV             R0, R5
2CB9B4:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
2CB9B8:  MOV             R6, R0
2CB9BA:  MOV             R0, R5
2CB9BC:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
2CB9C0:  LDR.W           R1, =(pDirect_ptr - 0x2CB9CC)
2CB9C4:  AND.W           R0, R0, #0x4000
2CB9C8:  ADD             R1, PC; pDirect_ptr
2CB9CA:  LDR             R1, [R1]; pDirect
2CB9CC:  LDR             R1, [R1]
2CB9CE:  LDRB            R1, [R1,#2]
2CB9D0:  LSLS            R1, R1, #0x1F
2CB9D2:  MOV.W           R1, #0
2CB9D6:  IT EQ
2CB9D8:  MOVEQ           R1, #1
2CB9DA:  TST.W           R6, #0x6000
2CB9DE:  BEQ             loc_2CB9F2
2CB9E0:  CBNZ            R0, loc_2CB9F2
2CB9E2:  LDR.W           R2, =(g_realTimeShadowMan_ptr - 0x2CB9EA)
2CB9E6:  ADD             R2, PC; g_realTimeShadowMan_ptr
2CB9E8:  LDR             R2, [R2]; g_realTimeShadowMan
2CB9EA:  LDRB.W          R8, [R2,#(byte_A48210 - 0xA4816C)]
2CB9EE:  MOVS            R2, #0
2CB9F0:  B               loc_2CBA30
2CB9F2:  LDR.W           R2, =(g_realTimeShadowMan_ptr - 0x2CB9FE)
2CB9F6:  LDR.W           R3, =(_ZN14MobileSettings8settingsE_ptr - 0x2CBA00)
2CB9FA:  ADD             R2, PC; g_realTimeShadowMan_ptr
2CB9FC:  ADD             R3, PC; _ZN14MobileSettings8settingsE_ptr
2CB9FE:  LDR             R2, [R2]; g_realTimeShadowMan
2CBA00:  LDR             R3, [R3]; MobileSettings::settings ...
2CBA02:  LDRB.W          R8, [R2,#(byte_A48210 - 0xA4816C)]
2CBA06:  LDR.W           R2, [R3,#(dword_6E04DC - 0x6E03F4)]
2CBA0A:  MOVS            R3, #0
2CBA0C:  STR             R3, [SP,#0xC0+var_70]
2CBA0E:  CMP             R2, #1
2CBA10:  BLT             loc_2CBA32
2CBA12:  CMP.W           R8, #0
2CBA16:  BNE             loc_2CBA32
2CBA18:  LDR.W           R2, =(_ZN8CMirrors12TypeOfMirrorE_ptr - 0x2CBA24)
2CBA1C:  MOV.W           R8, #0
2CBA20:  ADD             R2, PC; _ZN8CMirrors12TypeOfMirrorE_ptr
2CBA22:  LDR             R2, [R2]; CMirrors::TypeOfMirror ...
2CBA24:  LDR             R2, [R2]; CMirrors::TypeOfMirror
2CBA26:  CMP             R2, #3
2CBA28:  MOV.W           R2, #0
2CBA2C:  IT NE
2CBA2E:  MOVNE           R2, #1
2CBA30:  STR             R2, [SP,#0xC0+var_70]
2CBA32:  LDRH            R6, [R4,#0x1A]
2CBA34:  CMP             R6, #0
2CBA36:  BEQ.W           loc_2CBEB4
2CBA3A:  AND.W           R0, R1, R0,LSR#14
2CBA3E:  STR             R0, [SP,#0xC0+var_64]
2CBA40:  EOR.W           R0, R0, #1
2CBA44:  STR             R0, [SP,#0xC0+var_A4]
2CBA46:  LDR             R0, [SP,#0xC0+var_90]
2CBA48:  VMOV.F32        S22, #1.0
2CBA4C:  VMOV.F32        S24, #0.125
2CBA50:  ADD.W           R9, R4, #0x1C
2CBA54:  AND.W           R1, R0, #0x84
2CBA58:  AND.W           R0, R0, #8
2CBA5C:  STR             R0, [SP,#0xC0+var_A8]
2CBA5E:  VMOV.F32        S30, #5.0
2CBA62:  LDR.W           R0, =(_rwOpenGLLightingEnabled_ptr - 0x2CBA6E)
2CBA66:  VLDR            S16, =0.0
2CBA6A:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
2CBA6C:  VLDR            D9, =0.9
2CBA70:  VLDR            S25, =0.2
2CBA74:  LDR             R0, [R0]; _rwOpenGLLightingEnabled
2CBA76:  STR             R0, [SP,#0xC0+var_7C]
2CBA78:  LDR.W           R0, =(_rwOpenGLColorMaterialEnabled_ptr - 0x2CBA84)
2CBA7C:  VLDR            S26, =50.0
2CBA80:  ADD             R0, PC; _rwOpenGLColorMaterialEnabled_ptr
2CBA82:  VLDR            S28, =0.05
2CBA86:  VLDR            S21, =255.0
2CBA8A:  LDR             R0, [R0]; _rwOpenGLColorMaterialEnabled
2CBA8C:  STR             R0, [SP,#0xC0+var_AC]
2CBA8E:  LDR.W           R0, =(_rwOpenGLOpaqueBlack_ptr - 0x2CBA9A)
2CBA92:  VLDR            S27, =0.0039216
2CBA96:  ADD             R0, PC; _rwOpenGLOpaqueBlack_ptr
2CBA98:  STR             R1, [SP,#0xC0+var_78]
2CBA9A:  STR.W           R8, [SP,#0xC0+var_A0]
2CBA9E:  LDR             R0, [R0]; _rwOpenGLOpaqueBlack
2CBAA0:  STR             R0, [SP,#0xC0+var_B4]
2CBAA2:  LDR.W           R0, =(_rwOpenGLColorMaterialEnabled_ptr - 0x2CBAAA)
2CBAA6:  ADD             R0, PC; _rwOpenGLColorMaterialEnabled_ptr
2CBAA8:  LDR             R0, [R0]; _rwOpenGLColorMaterialEnabled
2CBAAA:  STR             R0, [SP,#0xC0+var_B0]
2CBAAC:  LDR.W           R0, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CBAB4)
2CBAB0:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CBAB2:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CBAB4:  STR             R0, [SP,#0xC0+var_80]
2CBAB6:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2CBABE)
2CBABA:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2CBABC:  LDR             R0, [R0]; MobileSettings::settings ...
2CBABE:  STR             R0, [SP,#0xC0+var_84]
2CBAC0:  LDR.W           R0, =(carLodLerp_ptr - 0x2CBAC8)
2CBAC4:  ADD             R0, PC; carLodLerp_ptr
2CBAC6:  LDR             R0, [R0]; carLodLerp
2CBAC8:  STR             R0, [SP,#0xC0+var_8C]
2CBACA:  LDR.W           R0, =(carLodLerp_ptr - 0x2CBAD2)
2CBACE:  ADD             R0, PC; carLodLerp_ptr
2CBAD0:  LDR             R0, [R0]; carLodLerp
2CBAD2:  STR             R0, [SP,#0xC0+var_98]
2CBAD4:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2CBADC)
2CBAD8:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2CBADA:  LDR             R0, [R0]; MobileSettings::settings ...
2CBADC:  STR             R0, [SP,#0xC0+var_9C]
2CBADE:  LDR.W           R0, =(carLodLerp_ptr - 0x2CBAE6)
2CBAE2:  ADD             R0, PC; carLodLerp_ptr
2CBAE4:  LDR             R0, [R0]; carLodLerp
2CBAE6:  STR             R0, [SP,#0xC0+var_88]
2CBAE8:  STR             R0, [SP,#0xC0+var_74]
2CBAEA:  B               loc_2CBAFA
2CBAEC:  CMP             R6, #0
2CBAEE:  IT NE
2CBAF0:  BLXNE           j__Z24emu_DisableAlphaModulatev; emu_DisableAlphaModulate(void)
2CBAF4:  ADD.W           R9, R9, #0x38 ; '8'
2CBAF8:  B               loc_2CBEAC
2CBAFA:  LDR             R0, [SP,#0xC0+var_64]
2CBAFC:  LDR.W           R5, [R9,#0x30]
2CBB00:  CMP             R0, #1
2CBB02:  BNE             loc_2CBB30
2CBB04:  LDRB            R0, [R5,#5]
2CBB06:  LDR             R2, [R5,#4]
2CBB08:  LDRB            R1, [R5,#6]
2CBB0A:  LSRS            R0, R0, #3
2CBB0C:  STR             R2, [SP,#0xC0+var_74]
2CBB0E:  UBFX.W          R2, R2, #3, #5
2CBB12:  STRB            R2, [R5,#4]
2CBB14:  STRB            R0, [R5,#5]
2CBB16:  LSRS            R0, R1, #3
2CBB18:  STRB            R0, [R5,#6]
2CBB1A:  MOVS            R1, #0
2CBB1C:  LDR.W           R0, [R9,#0x30]
2CBB20:  VLDR            S29, [R5,#0x14]
2CBB24:  VLDR            S31, [R5,#0xC]
2CBB28:  STR             R1, [R0,#0x14]
2CBB2A:  LDR.W           R0, [R9,#0x30]
2CBB2E:  STR             R1, [R0,#0xC]
2CBB30:  LDR.W           R1, [R9,#0x34]
2CBB34:  SUBS            R6, #1
2CBB36:  LDRB            R0, [R5,#7]
2CBB38:  CMP             R1, #0
2CBB3A:  IT EQ
2CBB3C:  CMPEQ           R0, #0xFF
2CBB3E:  BNE             loc_2CBB44
2CBB40:  MOVS            R4, #0
2CBB42:  B               loc_2CBB60
2CBB44:  CMP             R0, #0
2CBB46:  BEQ.W           loc_2CBCC4
2CBB4A:  VMOV            S0, R0
2CBB4E:  VCVT.F32.U32    S0, S0
2CBB52:  VDIV.F32        S0, S0, S21
2CBB56:  VMOV            R0, S0; float
2CBB5A:  BLX             j__Z23emu_EnableAlphaModulatef; emu_EnableAlphaModulate(float)
2CBB5E:  MOVS            R4, #1
2CBB60:  MOVS            R0, #0xC
2CBB62:  MOV             R1, R4
2CBB64:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
2CBB68:  LDR             R0, [SP,#0xC0+var_7C]
2CBB6A:  STR             R4, [SP,#0xC0+var_68]
2CBB6C:  LDR             R0, [R0]
2CBB6E:  CBZ             R0, loc_2CBB7C
2CBB70:  LDR.W           R0, [R9,#0x30]
2CBB74:  LDR             R1, [SP,#0xC0+var_90]
2CBB76:  BLX             j__Z36_rwOpenGLLightsSetMaterialPropertiesPK10RpMaterialj; _rwOpenGLLightsSetMaterialProperties(RpMaterial const*,uint)
2CBB7A:  B               loc_2CBB9C
2CBB7C:  LDR             R0, [SP,#0xC0+var_AC]
2CBB7E:  LDR             R0, [R0]
2CBB80:  CBZ             R0, loc_2CBB90
2CBB82:  MOVW            R0, #0xB57; unsigned int
2CBB86:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
2CBB8A:  LDR             R1, [SP,#0xC0+var_B0]
2CBB8C:  MOVS            R0, #0
2CBB8E:  STR             R0, [R1]
2CBB90:  LDR             R0, [SP,#0xC0+var_A8]
2CBB92:  CMP             R0, #0
2CBB94:  ITT EQ
2CBB96:  LDREQ           R0, [SP,#0xC0+var_B4]; float *
2CBB98:  BLXEQ           j__Z14emu_glColor4fvPKf; emu_glColor4fv(float const*)
2CBB9C:  LDR             R1, [SP,#0xC0+var_80]
2CBB9E:  VMOV.F32        S20, S16
2CBBA2:  LDR.W           R0, [R9,#0x30]
2CBBA6:  LDR             R1, [R1]
2CBBA8:  LDR.W           R10, [R0,#0x10]
2CBBAC:  ANDS.W          R2, R10, #3
2CBBB0:  IT NE
2CBBB2:  MOVNE           R2, #1
2CBBB4:  LDR.W           R11, [R0,R1]
2CBBB8:  LDR             R1, [SP,#0xC0+var_70]
2CBBBA:  CMP.W           R11, #0
2CBBBE:  AND.W           R4, R1, R2
2CBBC2:  ITTTT NE
2CBBC4:  LDRBNE.W        R1, [R11,#4]
2CBBC8:  VMOVNE          S0, R1
2CBBCC:  VCVTNE.F32.U32  S0, S0
2CBBD0:  VMULNE.F32      S20, S0, S27
2CBBD4:  MOVS            R1, #0
2CBBD6:  MOVS            R2, #0
2CBBD8:  VCVT.F64.F32    D16, S20
2CBBDC:  VCMPE.F64       D16, D9
2CBBE0:  VMRS            APSR_nzcv, FPSCR
2CBBE4:  IT LT
2CBBE6:  MOVLT           R1, #1
2CBBE8:  CMP.W           R10, #4
2CBBEC:  IT EQ
2CBBEE:  MOVEQ           R2, #1
2CBBF0:  LDR             R3, [SP,#0xC0+var_84]
2CBBF2:  STR             R6, [SP,#0xC0+var_6C]
2CBBF4:  LDR.W           R3, [R3,#0xE8]
2CBBF8:  CMP             R3, #2
2CBBFA:  BLT             loc_2CBC30
2CBBFC:  ANDS            R1, R2
2CBBFE:  LDR             R2, [SP,#0xC0+var_70]
2CBC00:  ANDS            R1, R2
2CBC02:  CMP             R1, #1
2CBC04:  BNE             loc_2CBC30
2CBC06:  LDRB            R1, [R5,#4]
2CBC08:  CMP             R1, #0xF0
2CBC0A:  BCS             loc_2CBC10
2CBC0C:  CBNZ            R1, loc_2CBC1C
2CBC0E:  B               loc_2CBC30
2CBC10:  LDRB            R1, [R5,#5]
2CBC12:  CMP             R1, #0xF0
2CBC14:  BCC             loc_2CBC1C
2CBC16:  LDRB            R1, [R5,#6]
2CBC18:  CMP             R1, #0xF0
2CBC1A:  BCS             loc_2CBC30
2CBC1C:  LDR             R0, [R0]
2CBC1E:  CBZ             R0, loc_2CBC2A
2CBC20:  ADDS            R0, #0x10; haystack
2CBC22:  ADR             R1, aInterior; "interior"
2CBC24:  BLX             strstr
2CBC28:  CBNZ            R0, loc_2CBC30
2CBC2A:  VMOV.F32        S20, S25
2CBC2E:  MOVS            R4, #1
2CBC30:  CMP.W           R11, #0
2CBC34:  MOV             R0, R11
2CBC36:  IT NE
2CBC38:  MOVNE           R0, #1
2CBC3A:  AND.W           R6, R4, R0
2CBC3E:  CMP             R6, #1
2CBC40:  BNE.W           loc_2CBDD0
2CBC44:  LDR             R0, [SP,#0xC0+var_8C]
2CBC46:  VLDR            S0, [R0]
2CBC4A:  VCMPE.F32       S0, S22
2CBC4E:  VMRS            APSR_nzcv, FPSCR
2CBC52:  BGE.W           loc_2CBDD0
2CBC56:  LDR             R2, [SP,#0xC0+var_94]
2CBC58:  LDRSB.W         R4, [R11,#2]
2CBC5C:  LDRSB.W         R8, [R11,#3]
2CBC60:  LDR             R0, [R2,#0x3C]
2CBC62:  ADDS            R1, R0, #4
2CBC64:  CMP             R0, #0
2CBC66:  IT EQ
2CBC68:  ADDEQ           R1, R2, #4
2CBC6A:  LDR             R0, [R1]
2CBC6C:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
2CBC70:  VMOV            S0, R8
2CBC74:  VMOV            S2, R4
2CBC78:  VCVT.F32.S32    S0, S0
2CBC7C:  VCVT.F32.S32    S2, S2
2CBC80:  VLDR            S6, [R0,#0x34]
2CBC84:  VMOV.F32        S12, S28
2CBC88:  VMUL.F32        S0, S0, S24
2CBC8C:  VMUL.F32        S4, S2, S24
2CBC90:  VLDR            S2, [R0,#0x30]
2CBC94:  VMUL.F32        S0, S0, S26
2CBC98:  VMUL.F32        S4, S4, S26
2CBC9C:  VDIV.F32        S8, S6, S0
2CBCA0:  VDIV.F32        S10, S2, S4
2CBCA4:  VCVT.S32.F32    S8, S8
2CBCA8:  VCVT.F32.S32    S8, S8
2CBCAC:  VCVT.S32.F32    S10, S10
2CBCB0:  VCVT.F32.S32    S10, S10
2CBCB4:  LDR             R0, [SP,#0xC0+var_64]
2CBCB6:  CBNZ            R0, loc_2CBD1E
2CBCB8:  CMP.W           R10, #2
2CBCBC:  BNE             loc_2CBCD0
2CBCBE:  VMUL.F32        S12, S20, S24
2CBCC2:  B               loc_2CBD1E
2CBCC4:  ADD.W           R9, R9, #0x38 ; '8'
2CBCC8:  LSLS            R0, R6, #0x10
2CBCCA:  BNE.W           loc_2CBAFA
2CBCCE:  B               loc_2CBEB4
2CBCD0:  LDR             R0, [SP,#0xC0+var_68]
2CBCD2:  CBZ             R0, loc_2CBCDA
2CBCD4:  VMOV.F32        S12, S20
2CBCD8:  B               loc_2CBD1E
2CBCDA:  LDRB            R0, [R5,#4]
2CBCDC:  LDRB            R1, [R5,#5]
2CBCDE:  LDRB            R2, [R5,#6]
2CBCE0:  CMP             R0, #0xFF
2CBCE2:  ADD             R1, R0
2CBCE4:  ADD             R1, R2
2CBCE6:  VMOV            S12, R1
2CBCEA:  VCVT.F32.S32    S14, S12
2CBCEE:  VSUB.F32        S12, S21, S14
2CBCF2:  VADD.F32        S12, S12, S12
2CBCF6:  VDIV.F32        S12, S12, S21
2CBCFA:  VMAX.F32        D6, D6, D11
2CBCFE:  BEQ             loc_2CBD1A
2CBD00:  VCMP.F32        S12, S22
2CBD04:  VMRS            APSR_nzcv, FPSCR
2CBD08:  BNE             loc_2CBD1A
2CBD0A:  VLDR            S12, =600.0
2CBD0E:  VDIV.F32        S12, S14, S12
2CBD12:  VMUL.F32        S12, S12, S12
2CBD16:  VMAX.F32        D6, D6, D11
2CBD1A:  VMUL.F32        S12, S20, S12
2CBD1E:  LDR             R0, [SP,#0xC0+var_98]
2CBD20:  VLDR            S14, [R0]
2CBD24:  VCMPE.F32       S14, #0.0
2CBD28:  VMRS            APSR_nzcv, FPSCR
2CBD2C:  ITTT GT
2CBD2E:  VSUBGT.F32      S14, S22, S14
2CBD32:  VMAXGT.F32      D7, D7, D8
2CBD36:  VMULGT.F32      S12, S12, S14
2CBD3A:  LDRD.W          R8, R0, [SP,#0xC0+var_A0]
2CBD3E:  LDR.W           R0, [R0,#0xE8]
2CBD42:  CMP             R0, #2
2CBD44:  BLT             loc_2CBD70
2CBD46:  LDR             R0, [SP,#0xC0+var_68]
2CBD48:  VMUL.F32        S0, S12, S30
2CBD4C:  CMP             R0, #0
2CBD4E:  IT EQ
2CBD50:  VMOVEQ.F32      S0, S12
2CBD54:  VMOV            R0, S0; float
2CBD58:  BLX             j__Z10SetReflMapf; SetReflMap(float)
2CBD5C:  B               loc_2CBDD0
2CBD5E:  ALIGN 0x10
2CBD60:  DCFS 0.2
2CBD64:  DCFS 0.0
2CBD68:  DCFD 0.9
2CBD70:  VMUL.F32        S8, S0, S8
2CBD74:  VMUL.F32        S10, S4, S10
2CBD78:  VSUB.F32        S6, S6, S8
2CBD7C:  VSUB.F32        S2, S2, S10
2CBD80:  VDIV.F32        S0, S6, S0
2CBD84:  VDIV.F32        S2, S2, S4
2CBD88:  VMOV            R0, S0
2CBD8C:  VMOV            R1, S2
2CBD90:  EOR.W           R12, R0, #0x80000000
2CBD94:  LDRSB.W         R0, [R11]
2CBD98:  EOR.W           R4, R1, #0x80000000
2CBD9C:  LDRSB.W         R1, [R11,#1]
2CBDA0:  VMOV            S0, R0
2CBDA4:  VMOV            S2, R1
2CBDA8:  VCVT.F32.S32    S0, S0
2CBDAC:  VCVT.F32.S32    S2, S2
2CBDB0:  LDR.W           R0, [R11,#8]
2CBDB4:  VMOV            R1, S12
2CBDB8:  STRD.W          R4, R12, [SP,#0xC0+var_C0]
2CBDBC:  VMUL.F32        S0, S0, S24
2CBDC0:  VMUL.F32        S2, S2, S24
2CBDC4:  VMOV            R2, S0
2CBDC8:  VMOV            R3, S2
2CBDCC:  BLX             j__Z16SetEnvMapTextureP9RwTexturefff5RwV2d; SetEnvMapTexture(RwTexture *,float,float,float,RwV2d)
2CBDD0:  LDR             R0, [SP,#0xC0+var_64]
2CBDD2:  CMP             R0, #1
2CBDD4:  BNE             loc_2CBDEA
2CBDD6:  LDR             R0, [SP,#0xC0+var_74]
2CBDD8:  STR             R0, [R5,#4]
2CBDDA:  LDR.W           R0, [R9,#0x30]
2CBDDE:  VSTR            S29, [R0,#0x14]
2CBDE2:  LDR.W           R0, [R9,#0x30]
2CBDE6:  VSTR            S31, [R0,#0xC]
2CBDEA:  LDR             R0, [SP,#0xC0+var_78]
2CBDEC:  MOV             R10, R6
2CBDEE:  CBZ             R0, loc_2CBE28
2CBDF0:  LDR.W           R0, [R9,#0x30]
2CBDF4:  CMP.W           R8, #0
2CBDF8:  LDR             R6, [SP,#0xC0+var_68]
2CBDFA:  LDR             R4, [R0]
2CBDFC:  BEQ             loc_2CBE34
2CBDFE:  CBZ             R4, loc_2CBE56
2CBE00:  LDR             R1, [R4]
2CBE02:  CMP             R1, #0
2CBE04:  ITT NE
2CBE06:  LDRNE           R0, [R1,#0x2C]
2CBE08:  CMPNE           R0, #0
2CBE0A:  BEQ             loc_2CBE56
2CBE0C:  LDRB            R0, [R0,#8]
2CBE0E:  TST.W           R0, #0xF0
2CBE12:  BNE             loc_2CBE3E
2CBE14:  B               loc_2CBE56
2CBE16:  ALIGN 4
2CBE18:  DCFS 50.0
2CBE1C:  DCFS 0.05
2CBE20:  DCFS 255.0
2CBE24:  DCFS 0.0039216
2CBE28:  MOVS            R0, #1
2CBE2A:  MOVS            R1, #0
2CBE2C:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
2CBE30:  LDR             R6, [SP,#0xC0+var_68]
2CBE32:  B               loc_2CBE5E
2CBE34:  CBZ             R4, loc_2CBE56
2CBE36:  LDR             R1, [R4]
2CBE38:  CMP             R1, #0
2CBE3A:  BEQ.W           loc_2CBAEC
2CBE3E:  LDRB.W          R0, [R1,#0x30]
2CBE42:  LSLS            R0, R0, #0x1F
2CBE44:  BNE.W           loc_2CBAEC
2CBE48:  MOVS            R0, #1
2CBE4A:  BLX             j__Z31_rwOpenGLSetRenderStateNoExtras13RwRenderStatePv; _rwOpenGLSetRenderStateNoExtras(RwRenderState,void *)
2CBE4E:  LDRB.W          R1, [R4,#0x50]
2CBE52:  MOVS            R0, #9
2CBE54:  B               loc_2CBE5A
2CBE56:  MOVS            R0, #1
2CBE58:  MOVS            R1, #0
2CBE5A:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
2CBE5E:  CMP.W           R8, #0
2CBE62:  IT NE
2CBE64:  CMPNE           R6, #0
2CBE66:  BNE             loc_2CBE80
2CBE68:  LDRB            R0, [R5,#7]
2CBE6A:  CMP             R0, #0xC0
2CBE6C:  MOV.W           R0, #0
2CBE70:  IT HI
2CBE72:  MOVHI           R0, #1
2CBE74:  LDR             R1, [SP,#0xC0+var_A4]
2CBE76:  ORRS            R0, R1
2CBE78:  ITT NE
2CBE7A:  MOVNE           R0, R9; this
2CBE7C:  BLXNE           j__ZN24RxOpenGLMeshInstanceData10DrawStoredEv; RxOpenGLMeshInstanceData::DrawStored(void)
2CBE80:  CMP             R6, #0
2CBE82:  ADD.W           R9, R9, #0x38 ; '8'
2CBE86:  IT NE
2CBE88:  BLXNE           j__Z24emu_DisableAlphaModulatev; emu_DisableAlphaModulate(void)
2CBE8C:  LDR             R0, [SP,#0xC0+var_88]
2CBE8E:  VLDR            S0, [R0]
2CBE92:  MOVS            R0, #0
2CBE94:  VCMPE.F32       S0, S22
2CBE98:  VMRS            APSR_nzcv, FPSCR
2CBE9C:  IT LT
2CBE9E:  MOVLT           R0, #1
2CBEA0:  AND.W           R0, R0, R10
2CBEA4:  CMP             R0, #1
2CBEA6:  IT EQ
2CBEA8:  BLXEQ           j__Z11ResetEnvMapv; ResetEnvMap(void)
2CBEAC:  LDR             R6, [SP,#0xC0+var_6C]
2CBEAE:  LSLS            R0, R6, #0x10
2CBEB0:  BNE.W           loc_2CBAFA
2CBEB4:  ADD             SP, SP, #0x60 ; '`'
2CBEB6:  VPOP            {D8-D15}
2CBEBA:  ADD             SP, SP, #4
2CBEBC:  POP.W           {R8-R11}
2CBEC0:  POP             {R4-R7,PC}
