; =========================================================
; Game Engine Function: _ZN14CLoadingScreen12RenderSplashEv
; Address            : 0x43AFA0 - 0x43B164
; =========================================================

43AFA0:  PUSH            {R4,R6,R7,LR}
43AFA2:  ADD             R7, SP, #8
43AFA4:  SUB             SP, SP, #0x20
43AFA6:  BLX             j__ZN9CSprite2d12InitPerFrameEv; CSprite2d::InitPerFrame(void)
43AFAA:  LDR             R0, =(RsGlobal_ptr - 0x43AFB2)
43AFAC:  LDR             R1, =(_ZN14CLoadingScreen11m_aSplashesE_ptr - 0x43AFB6)
43AFAE:  ADD             R0, PC; RsGlobal_ptr
43AFB0:  LDR             R2, =(_ZN14CLoadingScreen21m_currDisplayedSplashE_ptr - 0x43AFBA)
43AFB2:  ADD             R1, PC; _ZN14CLoadingScreen11m_aSplashesE_ptr
43AFB4:  LDR             R0, [R0]; RsGlobal
43AFB6:  ADD             R2, PC; _ZN14CLoadingScreen21m_currDisplayedSplashE_ptr
43AFB8:  VLDR            S0, [R0,#4]
43AFBC:  VLDR            S2, [R0,#8]
43AFC0:  VCVT.F32.S32    S0, S0
43AFC4:  LDR             R0, [R1]; CLoadingScreen::m_aSplashes ...
43AFC6:  VCVT.F32.S32    S2, S2
43AFCA:  LDR             R1, [R2]; CLoadingScreen::m_currDisplayedSplash ...
43AFCC:  MOVS            R2, #0; unsigned __int8
43AFCE:  LDR             R0, [R0,#(dword_9920A8 - 0x9920A4)]
43AFD0:  LDR             R1, [R1]; CLoadingScreen::m_currDisplayedSplash
43AFD2:  STR             R2, [SP,#0x28+var_18]
43AFD4:  CMP             R1, #0
43AFD6:  STR             R2, [SP,#0x28+var_C]
43AFD8:  VSTR            S0, [SP,#0x28+var_10]
43AFDC:  VSTR            S2, [SP,#0x28+var_14]
43AFE0:  IT NE
43AFE2:  CMPNE           R0, #0
43AFE4:  BNE             loc_43AFF8
43AFE6:  MOVS            R0, #0; this
43AFE8:  MOVS            R1, #0; unsigned __int8
43AFEA:  BLX             j__ZN14CLoadingScreen12LoadSplashesEhh; CLoadingScreen::LoadSplashes(uchar,uchar)
43AFEE:  LDR             R0, =(_ZN14CLoadingScreen21m_currDisplayedSplashE_ptr - 0x43AFF6)
43AFF0:  MOVS            R1, #1
43AFF2:  ADD             R0, PC; _ZN14CLoadingScreen21m_currDisplayedSplashE_ptr
43AFF4:  LDR             R0, [R0]; CLoadingScreen::m_currDisplayedSplash ...
43AFF6:  STR             R1, [R0]; CLoadingScreen::m_currDisplayedSplash
43AFF8:  ADD             R4, SP, #0x28+var_1C
43AFFA:  MOVS            R0, #0xFF
43AFFC:  STR             R0, [SP,#0x28+var_28]; unsigned __int8
43AFFE:  MOVS            R1, #0; unsigned __int8
43B000:  MOV             R0, R4; this
43B002:  MOVS            R2, #0; unsigned __int8
43B004:  MOVS            R3, #0; unsigned __int8
43B006:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43B00A:  ADD             R0, SP, #0x28+var_18
43B00C:  MOV             R1, R4
43B00E:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
43B012:  LDR             R0, =(RsGlobal_ptr - 0x43B01A)
43B014:  LDR             R1, =(_ZN14CLoadingScreen21m_currDisplayedSplashE_ptr - 0x43B01C)
43B016:  ADD             R0, PC; RsGlobal_ptr
43B018:  ADD             R1, PC; _ZN14CLoadingScreen21m_currDisplayedSplashE_ptr
43B01A:  LDR             R0, [R0]; RsGlobal
43B01C:  LDR             R1, [R1]; CLoadingScreen::m_currDisplayedSplash ...
43B01E:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
43B020:  LDR             R1, [R1]; CLoadingScreen::m_currDisplayedSplash
43B022:  CBZ             R1, loc_43B088
43B024:  LDR             R2, =(RsGlobal_ptr - 0x43B02E)
43B026:  VMOV            S2, R0
43B02A:  ADD             R2, PC; RsGlobal_ptr
43B02C:  LDR             R2, [R2]; RsGlobal
43B02E:  VLDR            S0, [R2,#8]
43B032:  VCVT.F32.S32    S2, S2
43B036:  VCVT.F32.S32    S0, S0
43B03A:  VDIV.F32        S0, S2, S0
43B03E:  VLDR            S2, =1.3333
43B042:  VCMPE.F32       S0, S2
43B046:  VMRS            APSR_nzcv, FPSCR
43B04A:  BLT             loc_43B088
43B04C:  VLDR            S2, =1.8889
43B050:  VCMPE.F32       S0, S2
43B054:  VMRS            APSR_nzcv, FPSCR
43B058:  BGT             loc_43B088
43B05A:  LDR             R0, =(_ZN14CLoadingScreen11m_aSplashesE_ptr - 0x43B068)
43B05C:  MOV.W           R2, #0xFFFFFFFF
43B060:  STR             R2, [SP,#0x28+var_20]
43B062:  ADD             R2, SP, #0x28+var_20
43B064:  ADD             R0, PC; _ZN14CLoadingScreen11m_aSplashesE_ptr
43B066:  LDR             R0, [R0]; CLoadingScreen::m_aSplashes ...
43B068:  LDR.W           R0, [R0,R1,LSL#2]
43B06C:  LDR             R1, =(aMobilescD - 0x43B074); "mobilesc%d"
43B06E:  ADDS            R0, #0x10; s
43B070:  ADD             R1, PC; "mobilesc%d"
43B072:  BLX             sscanf
43B076:  LDR             R0, [SP,#0x28+var_20]
43B078:  CMP             R0, #5
43B07A:  BHI             loc_43B0C6
43B07C:  ADR             R1, dword_43B190
43B07E:  ADD.W           R0, R1, R0,LSL#2
43B082:  VLDR            S0, [R0]
43B086:  B               loc_43B0CA
43B088:  VLDR            S0, [SP,#0x28+var_14]
43B08C:  VMOV            S4, R0
43B090:  VLDR            S2, [SP,#0x28+var_C]
43B094:  VCVT.F32.S32    S4, S4
43B098:  VSUB.F32        S0, S0, S2
43B09C:  VMOV.F32        S2, #3.0
43B0A0:  VABS.F32        S0, S0
43B0A4:  VADD.F32        S0, S0, S0
43B0A8:  VDIV.F32        S0, S0, S2
43B0AC:  VMOV.F32        S2, #0.5
43B0B0:  VMUL.F32        S2, S4, S2
43B0B4:  VSUB.F32        S4, S2, S0
43B0B8:  VADD.F32        S0, S2, S0
43B0BC:  VSTR            S4, [SP,#0x28+var_18]
43B0C0:  VSTR            S0, [SP,#0x28+var_10]
43B0C4:  B               loc_43B11A
43B0C6:  VMOV.F32        S0, #0.5
43B0CA:  VLDR            S2, [SP,#0x28+var_18]
43B0CE:  VLDR            S6, [SP,#0x28+var_10]
43B0D2:  VLDR            S4, [SP,#0x28+var_14]
43B0D6:  VSUB.F32        S2, S6, S2
43B0DA:  VLDR            S8, [SP,#0x28+var_C]
43B0DE:  VMOV.F32        S6, #-3.0
43B0E2:  VSUB.F32        S4, S4, S8
43B0E6:  VMOV.F32        S8, #0.25
43B0EA:  VABS.F32        S2, S2
43B0EE:  VABS.F32        S4, S4
43B0F2:  VMUL.F32        S2, S2, S6
43B0F6:  VMOV.F32        S6, #-1.0
43B0FA:  VMUL.F32        S2, S2, S8
43B0FE:  VADD.F32        S6, S0, S6
43B102:  VADD.F32        S2, S4, S2
43B106:  VMUL.F32        S6, S6, S2
43B10A:  VMUL.F32        S0, S0, S2
43B10E:  VADD.F32        S2, S4, S6
43B112:  VSTR            S0, [SP,#0x28+var_C]
43B116:  VSTR            S2, [SP,#0x28+var_14]
43B11A:  MOVS            R0, #0xFF
43B11C:  MOVS            R1, #0xFF; unsigned __int8
43B11E:  STR             R0, [SP,#0x28+var_28]; unsigned __int8
43B120:  ADD             R0, SP, #0x28+var_20; this
43B122:  MOVS            R2, #0xFF; unsigned __int8
43B124:  MOVS            R3, #0xFF; unsigned __int8
43B126:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43B12A:  MOVS            R0, #2
43B12C:  MOVS            R1, #3
43B12E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43B132:  MOVS            R0, #0; unsigned __int8
43B134:  BLX             j__Z12emu_GammaSeth; emu_GammaSet(uchar)
43B138:  LDR             R0, =(_ZN14CLoadingScreen16m_bReadyToDeleteE_ptr - 0x43B13E)
43B13A:  ADD             R0, PC; _ZN14CLoadingScreen16m_bReadyToDeleteE_ptr
43B13C:  LDR             R0, [R0]; CLoadingScreen::m_bReadyToDelete ...
43B13E:  LDRB            R0, [R0]; CLoadingScreen::m_bReadyToDelete
43B140:  CBZ             R0, loc_43B146
43B142:  ADD             SP, SP, #0x20 ; ' '
43B144:  POP             {R4,R6,R7,PC}
43B146:  LDR             R0, =(_ZN14CLoadingScreen21m_currDisplayedSplashE_ptr - 0x43B150)
43B148:  ADD             R2, SP, #0x28+var_20
43B14A:  LDR             R1, =(_ZN14CLoadingScreen11m_aSplashesE_ptr - 0x43B152)
43B14C:  ADD             R0, PC; _ZN14CLoadingScreen21m_currDisplayedSplashE_ptr
43B14E:  ADD             R1, PC; _ZN14CLoadingScreen11m_aSplashesE_ptr
43B150:  LDR             R0, [R0]; CLoadingScreen::m_currDisplayedSplash ...
43B152:  LDR             R1, [R1]; CLoadingScreen::m_aSplashes ...
43B154:  LDR             R0, [R0]; CLoadingScreen::m_currDisplayedSplash
43B156:  ADD.W           R0, R1, R0,LSL#2
43B15A:  ADD             R1, SP, #0x28+var_18
43B15C:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
43B160:  ADD             SP, SP, #0x20 ; ' '
43B162:  POP             {R4,R6,R7,PC}
