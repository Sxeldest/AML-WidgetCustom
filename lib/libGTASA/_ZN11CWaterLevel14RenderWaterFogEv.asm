; =========================================================
; Game Engine Function: _ZN11CWaterLevel14RenderWaterFogEv
; Address            : 0x59BF14 - 0x59C2B6
; =========================================================

59BF14:  PUSH            {R4-R7,LR}
59BF16:  ADD             R7, SP, #0xC
59BF18:  PUSH.W          {R8-R11}
59BF1C:  SUB             SP, SP, #4
59BF1E:  VPUSH           {D8-D12}
59BF22:  SUB             SP, SP, #0x60
59BF24:  LDR.W           R0, =(_ZN11CWaterLevel11m_bWaterFogE_ptr - 0x59BF2C)
59BF28:  ADD             R0, PC; _ZN11CWaterLevel11m_bWaterFogE_ptr
59BF2A:  LDR             R0, [R0]; CWaterLevel::m_bWaterFog ...
59BF2C:  LDRB            R0, [R0]; CWaterLevel::m_bWaterFog
59BF2E:  CMP             R0, #0
59BF30:  BEQ             loc_59BFF2
59BF32:  LDR             R0, =(_ZN11CWaterLevel17m_bWaterFogScriptE_ptr - 0x59BF38)
59BF34:  ADD             R0, PC; _ZN11CWaterLevel17m_bWaterFogScriptE_ptr
59BF36:  LDR             R0, [R0]; CWaterLevel::m_bWaterFogScript ...
59BF38:  LDRB            R0, [R0]; CWaterLevel::m_bWaterFogScript
59BF3A:  CMP             R0, #0
59BF3C:  BEQ             loc_59BFF2
59BF3E:  LDR             R0, =(_ZN12CPostEffects29m_fWaterFXStartUnderWaternessE_ptr - 0x59BF46)
59BF40:  LDR             R1, =(_ZN8CWeather14UnderWaternessE_ptr - 0x59BF48)
59BF42:  ADD             R0, PC; _ZN12CPostEffects29m_fWaterFXStartUnderWaternessE_ptr
59BF44:  ADD             R1, PC; _ZN8CWeather14UnderWaternessE_ptr
59BF46:  LDR             R0, [R0]; CPostEffects::m_fWaterFXStartUnderWaterness ...
59BF48:  LDR             R1, [R1]; CWeather::UnderWaterness ...
59BF4A:  VLDR            S0, [R0]
59BF4E:  VLDR            S2, [R1]
59BF52:  VCMPE.F32       S2, S0
59BF56:  VMRS            APSR_nzcv, FPSCR
59BF5A:  BGE             loc_59BFE4
59BF5C:  LDR             R0, =(_ZN11CWaterLevel17m_WaterFogDensityE_ptr - 0x59BF64)
59BF5E:  LDR             R1, =(_ZN8CWeather17WaterFogFXControlE_ptr - 0x59BF66)
59BF60:  ADD             R0, PC; _ZN11CWaterLevel17m_WaterFogDensityE_ptr
59BF62:  ADD             R1, PC; _ZN8CWeather17WaterFogFXControlE_ptr
59BF64:  LDR             R0, [R0]; CWaterLevel::m_WaterFogDensity ...
59BF66:  VLDR            S0, [R0]
59BF6A:  LDR             R0, [R1]; CWeather::WaterFogFXControl ...
59BF6C:  VCVT.F32.S32    S0, S0
59BF70:  VLDR            S20, [R0]
59BF74:  VMUL.F32        S0, S20, S0
59BF78:  VCVT.S32.F32    S0, S0
59BF7C:  VMOV            R0, S0
59BF80:  CBZ             R0, loc_59BFEA
59BF82:  LDR             R0, =(_ZN11CWaterLevel17m_fWaterFogHeightE_ptr - 0x59BF8E)
59BF84:  VCVT.F32.S32    S16, S0
59BF88:  LDR             R1, =(byte_A1DCA0 - 0x59BF90)
59BF8A:  ADD             R0, PC; _ZN11CWaterLevel17m_fWaterFogHeightE_ptr
59BF8C:  ADD             R1, PC; byte_A1DCA0
59BF8E:  LDR             R0, [R0]; CWaterLevel::m_fWaterFogHeight ...
59BF90:  VLDR            S18, [R0]
59BF94:  LDR             R0, =(dword_A1DC9C - 0x59BF9A)
59BF96:  ADD             R0, PC; dword_A1DC9C
59BF98:  LDR             R2, [R0]
59BF9A:  STR             R2, [SP,#0xA8+var_8C]
59BF9C:  MOVS            R2, #0
59BF9E:  LDRB            R1, [R1]
59BFA0:  STR             R2, [R0]
59BFA2:  CMP             R1, #1
59BFA4:  BNE             loc_59C000
59BFA6:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x59BFB4)
59BFA8:  VMOV.F32        S4, #1.0
59BFAC:  LDR             R1, =(_ZN11CWaterLevel26m_fWaterFogInsideFadeSpeedE_ptr - 0x59BFBA)
59BFAE:  MOVS            R2, #0
59BFB0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
59BFB2:  MOVT            R2, #0x4220
59BFB6:  ADD             R1, PC; _ZN11CWaterLevel26m_fWaterFogInsideFadeSpeedE_ptr
59BFB8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
59BFBA:  LDR             R1, [R1]; CWaterLevel::m_fWaterFogInsideFadeSpeed ...
59BFBC:  VLDR            S0, [R0]
59BFC0:  VLDR            S2, [R1]
59BFC4:  LDR             R0, =(dword_A1DCA4 - 0x59BFD0)
59BFC6:  VMUL.F32        S0, S2, S0
59BFCA:  LDR             R1, =(dword_A1DCA8 - 0x59BFD2)
59BFCC:  ADD             R0, PC; dword_A1DCA4
59BFCE:  ADD             R1, PC; dword_A1DCA8
59BFD0:  VLDR            S2, [R0]
59BFD4:  STR             R2, [R1]
59BFD6:  VADD.F32        S0, S2, S0
59BFDA:  VMIN.F32        D11, D0, D2
59BFDE:  VSTR            S22, [R0]
59BFE2:  B               loc_59C06C
59BFE4:  LDR             R0, =(dword_A1DC9C - 0x59BFEA)
59BFE6:  ADD             R0, PC; dword_A1DC9C
59BFE8:  B               loc_59BFEE
59BFEA:  LDR             R0, =(dword_A1DC9C - 0x59BFF0)
59BFEC:  ADD             R0, PC; dword_A1DC9C
59BFEE:  MOVS            R1, #0
59BFF0:  STR             R1, [R0]
59BFF2:  ADD             SP, SP, #0x60 ; '`'
59BFF4:  VPOP            {D8-D12}
59BFF8:  ADD             SP, SP, #4
59BFFA:  POP.W           {R8-R11}
59BFFE:  POP             {R4-R7,PC}
59C000:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x59C008)
59C002:  LDR             R1, =(dword_A1DCA8 - 0x59C00A)
59C004:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
59C006:  ADD             R1, PC; dword_A1DCA8
59C008:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
59C00A:  VLDR            S2, [R1]
59C00E:  VLDR            S0, [R0]
59C012:  VSUB.F32        S2, S2, S0
59C016:  VCMPE.F32       S2, #0.0
59C01A:  VSTR            S2, [R1]
59C01E:  VMRS            APSR_nzcv, FPSCR
59C022:  BLE             loc_59C02E
59C024:  LDR             R0, =(dword_A1DCA4 - 0x59C02A)
59C026:  ADD             R0, PC; dword_A1DCA4
59C028:  VLDR            S22, [R0]
59C02C:  B               loc_59C06C
59C02E:  LDR             R0, =(_ZN11CWaterLevel26m_fWaterFogInsideFadeSpeedE_ptr - 0x59C036)
59C030:  LDR             R1, =(dword_A1DCA4 - 0x59C03A)
59C032:  ADD             R0, PC; _ZN11CWaterLevel26m_fWaterFogInsideFadeSpeedE_ptr
59C034:  LDR             R2, =(dword_A1DCA8 - 0x59C03E)
59C036:  ADD             R1, PC; dword_A1DCA4
59C038:  LDR             R0, [R0]; CWaterLevel::m_fWaterFogInsideFadeSpeed ...
59C03A:  ADD             R2, PC; dword_A1DCA8
59C03C:  VLDR            S2, [R0]
59C040:  MOVS            R0, #0
59C042:  STR             R0, [R2]
59C044:  VMUL.F32        S0, S2, S0
59C048:  VLDR            S2, [R1]
59C04C:  VSUB.F32        S22, S2, S0
59C050:  VCMPE.F32       S22, #0.0
59C054:  VSTR            S22, [R1]
59C058:  VMRS            APSR_nzcv, FPSCR
59C05C:  BGE             loc_59C06C
59C05E:  LDR             R1, =(byte_A1DCA0 - 0x59C066)
59C060:  LDR             R2, =(dword_A1DCA4 - 0x59C068)
59C062:  ADD             R1, PC; byte_A1DCA0
59C064:  ADD             R2, PC; dword_A1DCA4
59C066:  STRB            R0, [R1]
59C068:  STR             R0, [R2]
59C06A:  B               loc_59C102
59C06C:  LDR             R0, =(byte_A1DCA0 - 0x59C07C)
59C06E:  VCMPE.F32       S22, #0.0
59C072:  MOVS            R4, #0
59C074:  VMRS            APSR_nzcv, FPSCR
59C078:  ADD             R0, PC; byte_A1DCA0
59C07A:  STRB            R4, [R0]
59C07C:  BLE             loc_59C102
59C07E:  LDR             R0, =(_ZN11CWaterLevel19m_WaterFogInsideColE_ptr - 0x59C086)
59C080:  LDR             R1, =(RsGlobal_ptr - 0x59C088)
59C082:  ADD             R0, PC; _ZN11CWaterLevel19m_WaterFogInsideColE_ptr
59C084:  ADD             R1, PC; RsGlobal_ptr
59C086:  LDR             R5, [R0]; CWaterLevel::m_WaterFogInsideCol ...
59C088:  LDR             R6, [R1]; RsGlobal
59C08A:  LDRB            R0, [R5,#(byte_A1C107 - 0xA1C104)]
59C08C:  VMOV            S0, R0; this
59C090:  VCVT.F32.U32    S24, S0
59C094:  BLX.W           j__ZN12CPostEffects30ImmediateModeRenderStatesStoreEv; CPostEffects::ImmediateModeRenderStatesStore(void)
59C098:  BLX.W           j__ZN12CPostEffects28ImmediateModeRenderStatesSetEv; CPostEffects::ImmediateModeRenderStatesSet(void)
59C09C:  VLDR            S0, [R6,#4]
59C0A0:  VMUL.F32        S4, S22, S24
59C0A4:  VLDR            S2, [R6,#8]
59C0A8:  VCVT.F32.S32    S0, S0
59C0AC:  VCVT.F32.S32    S2, S2
59C0B0:  VMOV            R2, S0
59C0B4:  VCVT.S32.F32    S0, S4
59C0B8:  VMOV            R3, S2
59C0BC:  VCVT.F32.S32    S0, S0
59C0C0:  LDRB            R6, [R5,#(byte_A1C106 - 0xA1C104)]
59C0C2:  LDRB            R1, [R5,#(byte_A1C105 - 0xA1C104)]
59C0C4:  LDRB            R0, [R5]; CWaterLevel::m_WaterFogInsideCol
59C0C6:  STR             R4, [SP,#0xA8+var_98]
59C0C8:  STRD.W          R1, R6, [SP,#0xA8+var_A4]
59C0CC:  MOVS            R1, #0
59C0CE:  VMUL.F32        S0, S20, S0
59C0D2:  VCVT.S32.F32    S0, S0
59C0D6:  STR             R0, [SP,#0xA8+var_A8]
59C0D8:  VMOV            R0, S0
59C0DC:  UXTB            R0, R0
59C0DE:  STR             R0, [SP,#0xA8+var_9C]
59C0E0:  MOVS            R0, #0
59C0E2:  BLX.W           j__ZN12CPostEffects8DrawQuadEffffhhhhP8RwRaster; CPostEffects::DrawQuad(float,float,float,float,uchar,uchar,uchar,uchar,RwRaster *)
59C0E6:  BLX.W           j__ZN12CPostEffects32ImmediateModeRenderStatesReStoreEv; CPostEffects::ImmediateModeRenderStatesReStore(void)
59C0EA:  VMOV.F32        S0, #1.0
59C0EE:  LDR             R0, =(dword_A1DCA4 - 0x59C0F4)
59C0F0:  ADD             R0, PC; dword_A1DCA4 ; this
59C0F2:  VLDR            S2, [R0]
59C0F6:  VCMP.F32        S2, S0
59C0FA:  VMRS            APSR_nzcv, FPSCR
59C0FE:  BEQ.W           loc_59BFF2
59C102:  BLX.W           j__ZN12CPostEffects30ImmediateModeRenderStatesStoreEv; CPostEffects::ImmediateModeRenderStatesStore(void)
59C106:  BLX.W           j__ZN12CPostEffects28ImmediateModeRenderStatesSetEv; CPostEffects::ImmediateModeRenderStatesSet(void)
59C10A:  MOVS            R0, #6
59C10C:  MOVS            R1, #1
59C10E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59C112:  MOVS            R0, #1
59C114:  MOVS            R1, #0
59C116:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59C11A:  VMOV.F32        S0, #1.0
59C11E:  LDR             R0, =(dword_A1DCA4 - 0x59C124)
59C120:  ADD             R0, PC; dword_A1DCA4
59C122:  VLDR            S2, [R0]
59C126:  VSUB.F32        S0, S0, S2
59C12A:  VMUL.F32        S0, S0, S16
59C12E:  VCVT.S32.F32    S0, S0
59C132:  LDR             R0, [SP,#0xA8+var_8C]
59C134:  CMP             R0, #1
59C136:  BLT.W           loc_59C2A2
59C13A:  VMOV            R0, S0
59C13E:  LDR             R1, =(_ZN11CWaterLevel13m_WaterFogColE_ptr - 0x59C14A)
59C140:  VDIV.F32        S16, S18, S16
59C144:  ADD             R5, SP, #0xA8+var_78
59C146:  ADD             R1, PC; _ZN11CWaterLevel13m_WaterFogColE_ptr
59C148:  ADD             R6, SP, #0xA8+var_60
59C14A:  MOVS            R4, #0
59C14C:  MOVS            R3, #0
59C14E:  LDR.W           R9, [R1]; CWaterLevel::m_WaterFogCol ...
59C152:  STR             R0, [SP,#0xA8+var_84]
59C154:  LDR             R0, =(_ZN11CWaterLevel13m_WaterFogColE_ptr - 0x59C15A)
59C156:  ADD             R0, PC; _ZN11CWaterLevel13m_WaterFogColE_ptr
59C158:  LDR             R0, [R0]; CWaterLevel::m_WaterFogCol ...
59C15A:  LDRB            R0, [R0,#(byte_A1C103 - 0xA1C100)]
59C15C:  MOV.W           R8, R0,LSL#24
59C160:  LDR             R0, =(_ZN11CWaterLevel11ms_WaterFogE_ptr - 0x59C166)
59C162:  ADD             R0, PC; _ZN11CWaterLevel11ms_WaterFogE_ptr
59C164:  LDR             R0, [R0]; CWaterLevel::ms_WaterFog ...
59C166:  STR             R0, [SP,#0xA8+var_90]
59C168:  LDR             R0, =(TempVertexBuffer_ptr - 0x59C16E)
59C16A:  ADD             R0, PC; TempVertexBuffer_ptr
59C16C:  LDR.W           R10, [R0]; TempVertexBuffer
59C170:  LDR             R0, =(TempVertexBuffer_ptr - 0x59C176)
59C172:  ADD             R0, PC; TempVertexBuffer_ptr
59C174:  LDR             R0, [R0]; TempVertexBuffer
59C176:  STR             R0, [SP,#0xA8+var_7C]
59C178:  LDR             R2, [SP,#0xA8+var_90]
59C17A:  ADD.W           R1, R2, R3,LSL#1
59C17E:  LDRSH.W         LR, [R2,R3,LSL#1]
59C182:  LDRSH.W         R0, [R1,#0x118]
59C186:  LDRSH.W         R12, [R1,#0x8C]
59C18A:  LDRSH.W         R1, [R1,#0x1A4]
59C18E:  VMOV            S0, LR
59C192:  VMOV            S2, R0
59C196:  ADD.W           R0, R2, R3,LSL#2
59C19A:  VMOV            S4, R12
59C19E:  VMOV            S6, R1
59C1A2:  VCVT.F32.S32    S0, S0
59C1A6:  VCVT.F32.S32    S2, S2
59C1AA:  STR             R3, [SP,#0xA8+var_88]
59C1AC:  VLDR            S18, [R0,#0x230]
59C1B0:  VCVT.F32.S32    S4, S4
59C1B4:  VCVT.F32.S32    S6, S6
59C1B8:  VSTR            S0, [SP,#0xA8+var_60]
59C1BC:  VSTR            S0, [SP,#0xA8+var_54]
59C1C0:  VSTR            S0, [SP,#0xA8+var_4C]
59C1C4:  VSTR            S2, [SP,#0xA8+var_5C]
59C1C8:  VSTR            S2, [SP,#0xA8+var_58]
59C1CC:  VSTR            S4, [SP,#0xA8+var_78]
59C1D0:  VSTR            S4, [SP,#0xA8+var_6C]
59C1D4:  VSTR            S6, [SP,#0xA8+var_64]
59C1D8:  VSTR            S4, [SP,#0xA8+var_74]
59C1DC:  VSTR            S6, [SP,#0xA8+var_70]
59C1E0:  VSTR            S2, [SP,#0xA8+var_50]
59C1E4:  VSTR            S6, [SP,#0xA8+var_68]
59C1E8:  LDR             R0, [SP,#0xA8+var_84]
59C1EA:  CMP             R0, #1
59C1EC:  BLT             loc_59C276
59C1EE:  MOVS            R1, #0
59C1F0:  MOV.W           R11, #0
59C1F4:  STR             R1, [SP,#0xA8+var_80]
59C1F6:  ADD.W           R2, R4, R4,LSL#3
59C1FA:  LDR.W           R1, [R6,R11,LSL#2]
59C1FE:  LDR.W           R0, [R5,R11,LSL#2]
59C202:  STR.W           R1, [R10,R2,LSL#2]
59C206:  ADD.W           R1, R10, R2,LSL#2
59C20A:  LDRB.W          R2, [R9,#(byte_A1C101 - 0xA1C100)]
59C20E:  CMP             R4, #0
59C210:  STR             R0, [R1,#4]
59C212:  LDRB.W          R0, [R9]; CWaterLevel::m_WaterFogCol
59C216:  LDRB.W          R3, [R9,#(byte_A1C102 - 0xA1C100)]
59C21A:  ORR.W           R0, R0, R8
59C21E:  VSTR            S18, [R1,#8]
59C222:  ORR.W           R0, R0, R2,LSL#8
59C226:  ORR.W           R0, R0, R3,LSL#16
59C22A:  STR             R0, [R1,#0x18]
59C22C:  ADD.W           R0, R4, #1
59C230:  BLT             loc_59C25C
59C232:  MOVW            R1, #0x7FE
59C236:  CMP             R0, R1
59C238:  MOV             R4, R0
59C23A:  BNE             loc_59C25E
59C23C:  LDR             R0, [SP,#0xA8+var_7C]
59C23E:  MOVW            R1, #0x7FE
59C242:  MOVS            R2, #0
59C244:  MOVS            R3, #8
59C246:  MOVS            R4, #0
59C248:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
59C24C:  CBZ             R0, loc_59C25E
59C24E:  MOVS            R0, #3
59C250:  BLX             j__Z21RwIm3DRenderPrimitive15RwPrimitiveType; RwIm3DRenderPrimitive(RwPrimitiveType)
59C254:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
59C258:  MOVS            R4, #0
59C25A:  B               loc_59C25E
59C25C:  MOV             R4, R0
59C25E:  ADD.W           R11, R11, #1
59C262:  CMP.W           R11, #6
59C266:  BNE             loc_59C1F6
59C268:  VADD.F32        S18, S16, S18
59C26C:  LDR             R1, [SP,#0xA8+var_80]
59C26E:  LDR             R0, [SP,#0xA8+var_84]
59C270:  ADDS            R1, #1
59C272:  CMP             R1, R0
59C274:  BNE             loc_59C1F0
59C276:  LDR             R3, [SP,#0xA8+var_88]
59C278:  LDR             R0, [SP,#0xA8+var_8C]
59C27A:  ADDS            R3, #1
59C27C:  CMP             R3, R0
59C27E:  BNE.W           loc_59C178
59C282:  CMP             R4, #0
59C284:  BLE             loc_59C2A2
59C286:  LDR             R0, =(TempVertexBuffer_ptr - 0x59C292)
59C288:  MOV             R1, R4
59C28A:  MOVS            R2, #0
59C28C:  MOVS            R3, #8
59C28E:  ADD             R0, PC; TempVertexBuffer_ptr
59C290:  LDR             R0, [R0]; TempVertexBuffer
59C292:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
59C296:  CBZ             R0, loc_59C2A2
59C298:  MOVS            R0, #3
59C29A:  BLX             j__Z21RwIm3DRenderPrimitive15RwPrimitiveType; RwIm3DRenderPrimitive(RwPrimitiveType)
59C29E:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
59C2A2:  ADD             SP, SP, #0x60 ; '`'
59C2A4:  VPOP            {D8-D12}
59C2A8:  ADD             SP, SP, #4
59C2AA:  POP.W           {R8-R11}
59C2AE:  POP.W           {R4-R7,LR}
59C2B2:  B.W             sub_198D54
