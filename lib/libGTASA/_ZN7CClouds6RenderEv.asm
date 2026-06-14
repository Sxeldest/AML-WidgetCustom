; =========================================================
; Game Engine Function: _ZN7CClouds6RenderEv
; Address            : 0x59EB88 - 0x59F770
; =========================================================

59EB88:  PUSH            {R4-R7,LR}
59EB8A:  ADD             R7, SP, #0xC
59EB8C:  PUSH.W          {R8-R11}
59EB90:  SUB             SP, SP, #4
59EB92:  VPUSH           {D8-D15}
59EB96:  SUB             SP, SP, #0x68
59EB98:  BLX             j__ZN5CGame25CanSeeOutSideFromCurrAreaEv; CGame::CanSeeOutSideFromCurrArea(void)
59EB9C:  CMP             R0, #1
59EB9E:  BNE.W           loc_59F762
59EBA2:  LDR.W           R0, =(_ZN8CCoronas18SunBlockedByCloudsE_ptr - 0x59EBAC)
59EBA6:  MOVS            R1, #0
59EBA8:  ADD             R0, PC; _ZN8CCoronas18SunBlockedByCloudsE_ptr
59EBAA:  LDR             R0, [R0]; CCoronas::SunBlockedByClouds ...
59EBAC:  STRB            R1, [R0]; CCoronas::SunBlockedByClouds
59EBAE:  MOVS            R0, #8
59EBB0:  MOVS            R1, #0
59EBB2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59EBB6:  MOVS            R0, #6
59EBB8:  MOVS            R1, #0
59EBBA:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59EBBE:  MOVS            R0, #0xC
59EBC0:  MOVS            R1, #1
59EBC2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59EBC6:  MOVS            R0, #0xA
59EBC8:  MOVS            R1, #2
59EBCA:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59EBCE:  MOVS            R0, #0xB
59EBD0:  MOVS            R1, #2
59EBD2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59EBD6:  BLX.W           j__ZN7CSprite16InitSpriteBufferEv; CSprite::InitSpriteBuffer(void)
59EBDA:  LDR.W           R0, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x59EBE6)
59EBDE:  VLDR            S16, =60.0
59EBE2:  ADD             R0, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
59EBE4:  LDR.W           R1, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x59EBEE)
59EBE8:  LDR             R0, [R0]; CClock::ms_nGameClockSeconds ...
59EBEA:  ADD             R1, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
59EBEC:  LDR             R1, [R1]; CClock::ms_nGameClockMinutes ...
59EBEE:  LDRH            R0, [R0]; CClock::ms_nGameClockSeconds
59EBF0:  VMOV            S0, R0
59EBF4:  LDR.W           R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x59EC00)
59EBF8:  VCVT.F32.U32    S0, S0
59EBFC:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
59EBFE:  LDRB            R1, [R1]; CClock::ms_nGameClockMinutes
59EC00:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
59EC02:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
59EC04:  VDIV.F32        S0, S0, S16
59EC08:  RSB.W           R2, R0, R0,LSL#4
59EC0C:  ADD.W           R1, R1, R2,LSL#2
59EC10:  VMOV            S2, R1
59EC14:  VCVT.F32.S32    S2, S2
59EC18:  VADD.F32        S0, S0, S2
59EC1C:  VLDR            S2, =-220.0
59EC20:  VADD.F32        S0, S0, S2
59EC24:  VABS.F32        S0, S0
59EC28:  VCVT.S32.F32    S0, S0
59EC2C:  VMOV            R1, S0
59EC30:  CMP             R1, #0xDB
59EC32:  BGT.W           loc_59EEE2
59EC36:  LDR.W           R2, =(_ZN8CWeather9FoggynessE_ptr - 0x59EC4A)
59EC3A:  VMOV.F32        S18, #1.0
59EC3E:  LDR.W           R3, =(_ZN8CWeather13CloudCoverageE_ptr - 0x59EC4C)
59EC42:  RSB.W           R1, R1, #0xDC
59EC46:  ADD             R2, PC; _ZN8CWeather9FoggynessE_ptr
59EC48:  ADD             R3, PC; _ZN8CWeather13CloudCoverageE_ptr
59EC4A:  LDR             R2, [R2]; CWeather::Foggyness ...
59EC4C:  LDR             R3, [R3]; CWeather::CloudCoverage ...
59EC4E:  VLDR            S0, [R2]
59EC52:  VLDR            S2, [R3]
59EC56:  VMAX.F32        D0, D1, D0
59EC5A:  VMOV            S2, R1
59EC5E:  VCVT.F32.S32    S2, S2
59EC62:  VSUB.F32        S0, S18, S0
59EC66:  VMUL.F32        S0, S0, S2
59EC6A:  VCVT.S32.F32    S20, S0
59EC6E:  VMOV            R4, S20
59EC72:  CMP             R4, #1
59EC74:  BLT.W           loc_59EEE2
59EC78:  LDR.W           R0, =(TheCamera_ptr - 0x59EC8A)
59EC7C:  MOVS            R2, #0x41700000
59EC82:  VLDR            S0, =0.0
59EC86:  ADD             R0, PC; TheCamera_ptr
59EC88:  STR             R2, [SP,#0xC8+var_78]
59EC8A:  MOVS            R5, #0
59EC8C:  ADD             R3, SP, #0xC8+var_74
59EC8E:  LDR             R0, [R0]; TheCamera
59EC90:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
59EC92:  ADD.W           R2, R1, #0x30 ; '0'
59EC96:  CMP             R1, #0
59EC98:  IT EQ
59EC9A:  ADDEQ           R2, R0, #4
59EC9C:  MOVS            R0, #1
59EC9E:  VLDR            S2, [R2]
59ECA2:  ADD             R1, SP, #0xC8+var_6C
59ECA4:  VLDR            S4, [R2,#4]
59ECA8:  VADD.F32        S0, S2, S0
59ECAC:  VLDR            S2, =-100.0
59ECB0:  VLDR            S6, [R2,#8]
59ECB4:  ADD             R2, SP, #0xC8+var_70
59ECB6:  VSTR            S0, [SP,#0xC8+var_80]
59ECBA:  VADD.F32        S0, S4, S2
59ECBE:  VMOV.F32        S2, #15.0
59ECC2:  VSTR            S0, [SP,#0xC8+var_7C]
59ECC6:  VADD.F32        S0, S6, S2
59ECCA:  VSTR            S0, [SP,#0xC8+var_78]
59ECCE:  STRD.W          R5, R0, [SP,#0xC8+var_C8]; float
59ECD2:  ADD             R0, SP, #0xC8+var_80
59ECD4:  BLX.W           j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
59ECD8:  CMP             R0, #1
59ECDA:  BNE.W           loc_59EED8
59ECDE:  LDR.W           R0, =(_ZN6CClock17ms_nGameClockDaysE_ptr - 0x59ECE8)
59ECE2:  MOVS            R1, #0
59ECE4:  ADD             R0, PC; _ZN6CClock17ms_nGameClockDaysE_ptr
59ECE6:  LDR             R0, [R0]; CClock::ms_nGameClockDays ...
59ECE8:  LDRB.W          R10, [R0]; CClock::ms_nGameClockDays
59ECEC:  MOVS            R0, #1
59ECEE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59ECF2:  MOVS            R0, #0xA
59ECF4:  MOVS            R1, #5
59ECF6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59ECFA:  MOVS            R0, #0xB
59ECFC:  MOVS            R1, #2
59ECFE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59ED02:  LDR.W           R0, =(_ZN8CCoronas8MoonSizeE_ptr - 0x59ED16)
59ED06:  VMOV.F32        S22, #4.0
59ED0A:  LDR.W           R1, =(_ZN5CDraw12ms_fFarClipZE_ptr - 0x59ED18)
59ED0E:  MOV.W           R8, #0xFF
59ED12:  ADD             R0, PC; _ZN8CCoronas8MoonSizeE_ptr
59ED14:  ADD             R1, PC; _ZN5CDraw12ms_fFarClipZE_ptr
59ED16:  LDR             R6, [R0]; CCoronas::MoonSize ...
59ED18:  LDR.W           R9, [R1]; CDraw::ms_fFarClipZ ...
59ED1C:  VLDR            S0, [R6]
59ED20:  VLDR            S2, [R9]
59ED24:  VCVT.F32.U32    S0, S0
59ED28:  LDRD.W          R0, R1, [SP,#0xC8+var_6C]; float
59ED2C:  VLDR            S6, [SP,#0xC8+var_70]
59ED30:  VMOV            R2, S2; float
59ED34:  VLDR            S8, [SP,#0xC8+var_74]
59ED38:  VDIV.F32        S4, S18, S2
59ED3C:  STRD.W          R8, R5, [SP,#0xC8+var_B0]; float
59ED40:  STRD.W          R5, R5, [SP,#0xC8+var_A8]; unsigned __int8
59ED44:  STR             R5, [SP,#0xC8+var_A0]; float
59ED46:  STRD.W          R5, R5, [SP,#0xC8+var_C4]; float
59ED4A:  STRD.W          R5, R8, [SP,#0xC8+var_BC]; unsigned __int8
59ED4E:  VADD.F32        S0, S0, S0
59ED52:  VSTR            S4, [SP,#0xC8+var_B4]
59ED56:  VADD.F32        S0, S0, S22
59ED5A:  VMUL.F32        S8, S8, S0
59ED5E:  VMUL.F32        S0, S6, S0
59ED62:  VSTR            S8, [SP,#0xC8+var_C8]
59ED66:  VMOV            R3, S0; float
59ED6A:  BLX.W           j__ZN7CSprite18RenderOneXLUSpriteEfffffhhhsfhhhff; CSprite::RenderOneXLUSprite(float,float,float,float,float,uchar,uchar,uchar,short,float,uchar,uchar,uchar,float,float)
59ED6E:  LDR.W           R0, =(gpMoonMask_ptr - 0x59ED76)
59ED72:  ADD             R0, PC; gpMoonMask_ptr
59ED74:  LDR             R0, [R0]; gpMoonMask
59ED76:  LDR             R0, [R0]
59ED78:  LDR             R1, [R0]
59ED7A:  MOVS            R0, #1
59ED7C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59ED80:  MOVS            R0, #0xA
59ED82:  MOVS            R1, #5
59ED84:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59ED88:  MOVS            R0, #0xB
59ED8A:  MOVS            R1, #2
59ED8C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59ED90:  VLDR            S0, [R6]
59ED94:  VMOV            S4, R10
59ED98:  VMOV.F32        S2, #31.0
59ED9C:  VLDR            S3, =0.7
59EDA0:  VCVT.F32.U32    S0, S0
59EDA4:  VCVT.F32.U32    S4, S4
59EDA8:  VLDR            S6, [SP,#0xC8+var_70]
59EDAC:  VMOV.F32        S10, #-0.5
59EDB0:  VLDR            S5, [SP,#0xC8+var_68]
59EDB4:  VLDR            S12, [R9]
59EDB8:  VDIV.F32        S14, S18, S12
59EDBC:  VADD.F32        S0, S0, S0
59EDC0:  VDIV.F32        S2, S4, S2
59EDC4:  VADD.F32        S0, S0, S22
59EDC8:  VLDR            S4, =2.7
59EDCC:  VADD.F32        S2, S2, S10
59EDD0:  VLDR            S10, =1.7
59EDD4:  VMOV            R2, S12; float
59EDD8:  VMUL.F32        S8, S6, S0
59EDDC:  VMUL.F32        S4, S8, S4
59EDE0:  VLDR            S8, [SP,#0xC8+var_74]
59EDE4:  VMUL.F32        S1, S8, S0
59EDE8:  VMUL.F32        S0, S0, S10
59EDEC:  VLDR            S10, [SP,#0xC8+var_6C]
59EDF0:  STRD.W          R8, R5, [SP,#0xC8+var_B0]; float
59EDF4:  STRD.W          R5, R5, [SP,#0xC8+var_A8]; unsigned __int8
59EDF8:  STR             R5, [SP,#0xC8+var_A0]; float
59EDFA:  VADD.F32        S4, S4, S4
59EDFE:  STRD.W          R5, R5, [SP,#0xC8+var_C4]; float
59EE02:  STRD.W          R5, R5, [SP,#0xC8+var_BC]; unsigned __int8
59EE06:  VMUL.F32        S1, S1, S3
59EE0A:  VSTR            S14, [SP,#0xC8+var_B4]
59EE0E:  VMUL.F32        S2, S2, S4
59EE12:  VMUL.F32        S4, S8, S0
59EE16:  VMUL.F32        S0, S6, S0
59EE1A:  VADD.F32        S6, S5, S1
59EE1E:  VADD.F32        S2, S10, S2
59EE22:  VSTR            S4, [SP,#0xC8+var_C8]
59EE26:  VMOV            R3, S0; float
59EE2A:  VMOV            R1, S6; float
59EE2E:  VMOV            R0, S2; this
59EE32:  BLX.W           j__ZN7CSprite18RenderOneXLUSpriteEfffffhhhsfhhhff; CSprite::RenderOneXLUSprite(float,float,float,float,float,uchar,uchar,uchar,short,float,uchar,uchar,uchar,float,float)
59EE36:  MOVS            R0, #0xA
59EE38:  MOVS            R1, #7
59EE3A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59EE3E:  MOVS            R0, #0xB
59EE40:  MOVS            R1, #2
59EE42:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59EE46:  MOVS            R0, #8
59EE48:  MOVS            R1, #0
59EE4A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59EE4E:  LDR.W           R0, =(gpCoronaTexture_ptr - 0x59EE56)
59EE52:  ADD             R0, PC; gpCoronaTexture_ptr
59EE54:  LDR             R0, [R0]; gpCoronaTexture
59EE56:  LDR             R0, [R0,#(dword_A25B10 - 0xA25B08)]
59EE58:  LDR             R1, [R0]
59EE5A:  MOVS            R0, #1
59EE5C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59EE60:  VLDR            S0, [R6]
59EE64:  VLDR            S4, =0.85
59EE68:  VCVT.F32.U32    S0, S0
59EE6C:  VCVT.F32.S32    S2, S20
59EE70:  VLDR            S6, [SP,#0xC8+var_74]
59EE74:  VADD.F32        S0, S0, S0
59EE78:  VMUL.F32        S2, S2, S4
59EE7C:  VLDR            S4, [R9]
59EE80:  LDRD.W          R0, R1, [SP,#0xC8+var_6C]; float
59EE84:  VLDR            S10, [SP,#0xC8+var_70]
59EE88:  VMOV            R2, S4; float
59EE8C:  VDIV.F32        S8, S18, S4
59EE90:  VADD.F32        S0, S0, S22
59EE94:  VCVT.U32.F32    S2, S2
59EE98:  STRD.W          R8, R5, [SP,#0xC8+var_B0]; float
59EE9C:  STRD.W          R5, R5, [SP,#0xC8+var_A8]; unsigned __int8
59EEA0:  STR             R5, [SP,#0xC8+var_A0]; float
59EEA2:  UXTB            R5, R4
59EEA4:  STRD.W          R5, R5, [SP,#0xC8+var_C4]; float
59EEA8:  VMUL.F32        S10, S10, S0
59EEAC:  VMOV            R6, S2
59EEB0:  VMUL.F32        S0, S6, S0
59EEB4:  VMOV            R3, S10; float
59EEB8:  STRD.W          R6, R8, [SP,#0xC8+var_BC]; unsigned __int8
59EEBC:  VSTR            S8, [SP,#0xC8+var_B4]
59EEC0:  VSTR            S0, [SP,#0xC8+var_C8]
59EEC4:  BLX.W           j__ZN7CSprite18RenderOneXLUSpriteEfffffhhhsfhhhff; CSprite::RenderOneXLUSprite(float,float,float,float,float,uchar,uchar,uchar,short,float,uchar,uchar,uchar,float,float)
59EEC8:  MOVS            R0, #0xA
59EECA:  MOVS            R1, #2
59EECC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59EED0:  MOVS            R0, #0xB
59EED2:  MOVS            R1, #2
59EED4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59EED8:  LDR.W           R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x59EEE0)
59EEDC:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
59EEDE:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
59EEE0:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
59EEE2:  SUBS            R1, R0, #6
59EEE4:  UXTB            R1, R1
59EEE6:  CMP             R1, #0x10
59EEE8:  BCC.W           loc_59F20E
59EEEC:  SUBS            R1, R0, #5
59EEEE:  MOVS            R4, #0xFF
59EEF0:  UXTB            R1, R1
59EEF2:  CMP             R1, #0x11
59EEF4:  BHI             loc_59EF80
59EEF6:  LDR.W           R1, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x59EF00)
59EEFA:  CMP             R0, #0x16
59EEFC:  ADD             R1, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
59EEFE:  LDR             R1, [R1]; CClock::ms_nGameClockMinutes ...
59EF00:  LDRB            R1, [R1]; CClock::ms_nGameClockMinutes
59EF02:  BNE             loc_59EF60
59EF04:  RSB.W           R0, R1, R1,LSL#8
59EF08:  MOV             R1, #0x88888889
59EF10:  UMULL.W         R0, R1, R0, R1
59EF14:  LSRS            R4, R1, #5
59EF16:  CBNZ            R4, loc_59EF80
59EF18:  B               loc_59F20E
59EF1A:  ALIGN 4
59EF1C:  DCFS 60.0
59EF20:  DCFS -220.0
59EF24:  DCFS 0.0
59EF28:  DCFS -100.0
59EF2C:  DCFS 0.7
59EF30:  DCFS 2.7
59EF34:  DCFS 1.7
59EF38:  DCFS 0.85
59EF3C:  DCFS 100.0
59EF40:  DCFS -90.0
59EF44:  DCFS 80.0
59EF48:  DCFS 0.8
59EF4C:  DCFS -0.015
59EF50:  DCFS 0.0015625
59EF54:  DCFS 800.0
59EF58:  DCFS 40.0
59EF5C:  DCFS 320.0
59EF60:  RSB.W           R0, R1, #0x3C ; '<'
59EF64:  MOV             R1, #0x88888889
59EF6C:  RSB.W           R0, R0, R0,LSL#8
59EF70:  SMMLA.W         R0, R1, R0, R0
59EF74:  ASRS            R1, R0, #5
59EF76:  ADD.W           R4, R1, R0,LSR#31
59EF7A:  CMP             R4, #0
59EF7C:  BEQ.W           loc_59F20E
59EF80:  LDR.W           R0, =(gpCoronaTexture_ptr - 0x59EF8E)
59EF84:  MOVS            R5, #1
59EF86:  LDR.W           R1, =(_ZN8CWeather9FoggynessE_ptr - 0x59EF94)
59EF8A:  ADD             R0, PC; gpCoronaTexture_ptr
59EF8C:  LDR.W           R2, =(_ZN8CWeather13CloudCoverageE_ptr - 0x59EF98)
59EF90:  ADD             R1, PC; _ZN8CWeather9FoggynessE_ptr
59EF92:  LDR             R0, [R0]; gpCoronaTexture
59EF94:  ADD             R2, PC; _ZN8CWeather13CloudCoverageE_ptr
59EF96:  LDR             R1, [R1]; CWeather::Foggyness ...
59EF98:  LDR             R2, [R2]; CWeather::CloudCoverage ...
59EF9A:  LDR             R0, [R0]
59EF9C:  VLDR            S20, [R1]
59EFA0:  VLDR            S22, [R2]
59EFA4:  LDR             R1, [R0]
59EFA6:  MOVS            R0, #1
59EFA8:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59EFAC:  VMOV.F32        S18, #1.0
59EFB0:  LDR.W           R0, =(TheCamera_ptr - 0x59EFC4)
59EFB4:  VMAX.F32        D0, D11, D10
59EFB8:  VLDR            S28, =100.0
59EFBC:  VMOV            S2, R4
59EFC0:  ADD             R0, PC; TheCamera_ptr
59EFC2:  VMOV.F32        S24, #10.0
59EFC6:  VLDR            S30, =-100.0
59EFCA:  VCVT.F32.S32    S2, S2
59EFCE:  LDR.W           R10, [R0]; TheCamera
59EFD2:  VLDR            S22, =-90.0
59EFD6:  ADD             R6, SP, #0xC8+var_70
59EFD8:  VLDR            S17, =80.0
59EFDC:  ADD             R4, SP, #0xC8+var_74
59EFDE:  VSUB.F32        S0, S18, S0
59EFE2:  VLDR            S26, =0.0
59EFE6:  VLDR            S19, =0.8
59EFEA:  MOV.W           R9, #0
59EFEE:  VLDR            S21, =-0.015
59EFF2:  MOV.W           R11, #0
59EFF6:  VMUL.F32        S0, S0, S2
59EFFA:  VCVT.S32.F32    S0, S0
59EFFE:  VCVT.F32.S32    S20, S0
59F002:  MOVW            R1, #0x8E39
59F006:  MOVS            R0, #0
59F008:  MOVT            R1, #0x38E3
59F00C:  MOVT            R0, #0x42C8
59F010:  SMMUL.W         R1, R11, R1
59F014:  STR.W           R9, [SP,#0xC8+var_7C]
59F018:  STR             R0, [SP,#0xC8+var_80]
59F01A:  MOVS            R0, #0
59F01C:  CMP.W           R11, #9
59F020:  MOVT            R0, #0x4120
59F024:  VMOV.F32        S0, S28
59F028:  STR             R0, [SP,#0xC8+var_78]
59F02A:  ITTTT GE
59F02C:  MOVGE           R0, #0
59F02E:  MOVTGE          R0, #0xC2C8
59F032:  STRGE           R0, [SP,#0xC8+var_80]
59F034:  VMOVGE.F32      S0, S30
59F038:  LDR.W           R0, [R10,#(dword_951FBC - 0x951FA8)]
59F03C:  MOV             R3, R4
59F03E:  ADD.W           R2, R0, #0x30 ; '0'
59F042:  CMP             R0, #0
59F044:  MOV.W           R0, R1,ASR#1
59F048:  IT EQ
59F04A:  ADDEQ.W         R2, R10, #4
59F04E:  ADD.W           R0, R0, R1,LSR#31
59F052:  VLDR            S2, [R2]
59F056:  VLDR            S4, [R2,#4]
59F05A:  ADD             R1, SP, #0xC8+var_6C
59F05C:  ADD.W           R0, R0, R0,LSL#3
59F060:  VADD.F32        S0, S2, S0
59F064:  SUB.W           R8, R11, R0
59F068:  ADR.W           R0, dword_59F7C0
59F06C:  VLDR            S6, [R2,#8]
59F070:  VADD.F32        S4, S4, S26
59F074:  ADD.W           R0, R0, R8,LSL#2
59F078:  MOV             R2, R6
59F07A:  VADD.F32        S6, S6, S24
59F07E:  VLDR            S2, [R0]
59F082:  ADR.W           R0, dword_59F7E4
59F086:  ADD.W           R0, R0, R8,LSL#2
59F08A:  VSTR            S0, [SP,#0xC8+var_80]
59F08E:  VMUL.F32        S2, S2, S17
59F092:  VLDR            S0, [R0]
59F096:  ADD             R0, SP, #0xC8+var_80
59F098:  VMUL.F32        S0, S0, S22
59F09C:  VADD.F32        S2, S6, S2
59F0A0:  VADD.F32        S0, S4, S0
59F0A4:  VSTR            S2, [SP,#0xC8+var_78]
59F0A8:  VSTR            S0, [SP,#0xC8+var_7C]
59F0AC:  STRD.W          R9, R5, [SP,#0xC8+var_C8]; float
59F0B0:  BLX.W           j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
59F0B4:  CMP             R0, #1
59F0B6:  BNE             loc_59F128
59F0B8:  ADR.W           R0, dword_59F808
59F0BC:  VLDR            S23, [SP,#0xC8+var_64]
59F0C0:  ADD.W           R0, R0, R8,LSL#2
59F0C4:  VLDR            S25, [R0]
59F0C8:  BLX.W           rand
59F0CC:  AND.W           R0, R0, #0x1F
59F0D0:  VMUL.F32        S2, S25, S19
59F0D4:  ADD             R2, SP, #0xC8+var_6C
59F0D6:  MOVS            R5, #0xFF
59F0D8:  VMOV            S0, R0
59F0DC:  VDIV.F32        S6, S18, S23
59F0E0:  VCVT.F32.S32    S0, S0
59F0E4:  VLDR            S4, [SP,#0xC8+var_70]
59F0E8:  VMUL.F32        S4, S2, S4
59F0EC:  VMUL.F32        S0, S0, S21
59F0F0:  VMOV            R3, S4; float
59F0F4:  VLDR            S4, [SP,#0xC8+var_74]
59F0F8:  LDM             R2, {R0-R2}; float
59F0FA:  VMUL.F32        S2, S2, S4
59F0FE:  STR             R5, [SP,#0xC8+var_B0]; float
59F100:  STR             R5, [SP,#0xC8+var_B8]; unsigned __int8
59F102:  VADD.F32        S0, S0, S18
59F106:  VSTR            S2, [SP,#0xC8+var_C8]
59F10A:  VMUL.F32        S0, S0, S20
59F10E:  VCVT.S32.F32    S0, S0
59F112:  VSTR            S6, [SP,#0xC8+var_B4]
59F116:  VMOV            R5, S0
59F11A:  UXTB            R5, R5
59F11C:  STR             R5, [SP,#0xC8+var_BC]; unsigned __int8
59F11E:  STRD.W          R5, R5, [SP,#0xC8+var_C4]; float
59F122:  MOVS            R5, #1
59F124:  BLX.W           j__ZN7CSprite26RenderBufferedOneXLUSpriteEfffffhhhsfh; CSprite::RenderBufferedOneXLUSprite(float,float,float,float,float,uchar,uchar,uchar,short,float,uchar)
59F128:  ADD.W           R11, R11, #1
59F12C:  CMP.W           R11, #0xB
59F130:  BNE.W           loc_59F002
59F134:  LDR.W           R0, =(TheCamera_ptr - 0x59F146)
59F138:  MOVS            R2, #0x41200000
59F13E:  VLDR            S0, =100.0
59F142:  ADD             R0, PC; TheCamera_ptr
59F144:  STR             R2, [SP,#0xC8+var_78]
59F146:  LDR             R0, [R0]; TheCamera
59F148:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
59F14A:  ADD.W           R2, R1, #0x30 ; '0'
59F14E:  CMP             R1, #0
59F150:  IT EQ
59F152:  ADDEQ           R2, R0, #4
59F154:  VLDR            S2, [R2]
59F158:  VLDR            S6, [R2,#8]
59F15C:  VADD.F32        S0, S2, S0
59F160:  VLDR            S4, [R2,#4]
59F164:  VADD.F32        S2, S4, S22
59F168:  VSTR            S0, [SP,#0xC8+var_80]
59F16C:  VADD.F32        S0, S6, S24
59F170:  VSTR            S2, [SP,#0xC8+var_7C]
59F174:  VADD.F32        S0, S0, S26
59F178:  VSTR            S0, [SP,#0xC8+var_78]
59F17C:  BLX.W           rand
59F180:  MOV             R4, R0
59F182:  MOVS            R0, #1
59F184:  MOVS            R5, #0
59F186:  ADD             R1, SP, #0xC8+var_6C
59F188:  STRD.W          R5, R0, [SP,#0xC8+var_C8]; float
59F18C:  ADD             R0, SP, #0xC8+var_80
59F18E:  ADD             R2, SP, #0xC8+var_70
59F190:  ADD             R3, SP, #0xC8+var_74
59F192:  BLX.W           j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
59F196:  CBZ             R0, loc_59F20A
59F198:  AND.W           R0, R4, #0x7F
59F19C:  VMOV.F32        S2, #5.0
59F1A0:  VLDR            S4, =0.0015625
59F1A4:  VMOV.F32        S6, #0.5
59F1A8:  VMOV            S0, R0
59F1AC:  MOVS            R6, #0xFF
59F1AE:  VCVT.F32.S32    S0, S0
59F1B2:  VLDR            S8, [SP,#0xC8+var_70]
59F1B6:  VLDR            S10, [SP,#0xC8+var_64]
59F1BA:  LDRD.W          R0, R1, [SP,#0xC8+var_6C]; float
59F1BE:  VMOV            R2, S10; float
59F1C2:  VMUL.F32        S0, S0, S4
59F1C6:  VMUL.F32        S4, S8, S2
59F1CA:  VDIV.F32        S8, S18, S10
59F1CE:  VADD.F32        S0, S0, S6
59F1D2:  VMOV            R3, S4; float
59F1D6:  VLDR            S4, [SP,#0xC8+var_74]
59F1DA:  STRD.W          R6, R5, [SP,#0xC8+var_B0]; float
59F1DE:  VMUL.F32        S2, S4, S2
59F1E2:  STRD.W          R5, R5, [SP,#0xC8+var_A8]; unsigned __int8
59F1E6:  STR             R5, [SP,#0xC8+var_A0]; float
59F1E8:  STR             R6, [SP,#0xC8+var_B8]; unsigned __int8
59F1EA:  VMUL.F32        S0, S0, S20
59F1EE:  VSTR            S2, [SP,#0xC8+var_C8]
59F1F2:  VCVT.S32.F32    S0, S0
59F1F6:  VSTR            S8, [SP,#0xC8+var_B4]
59F1FA:  VMOV            R6, S0
59F1FE:  UXTB            R6, R6
59F200:  STR             R6, [SP,#0xC8+var_BC]; unsigned __int8
59F202:  STRD.W          R6, R6, [SP,#0xC8+var_C4]; float
59F206:  BLX.W           j__ZN7CSprite18RenderOneXLUSpriteEfffffhhhsfhhhff; CSprite::RenderOneXLUSprite(float,float,float,float,float,uchar,uchar,uchar,short,float,uchar,uchar,uchar,float,float)
59F20A:  BLX.W           j__ZN7CSprite17FlushSpriteBufferEv; CSprite::FlushSpriteBuffer(void)
59F20E:  LDR.W           R0, =(gpCloudTex_ptr - 0x59F21A)
59F212:  LDR.W           R1, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x59F220)
59F216:  ADD             R0, PC; gpCloudTex_ptr
59F218:  LDR.W           R2, =(_ZN8CWeather14ExtraSunnynessE_ptr - 0x59F228)
59F21C:  ADD             R1, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
59F21E:  LDR.W           R3, =(_ZN8CWeather13CloudCoverageE_ptr - 0x59F22E)
59F222:  LDR             R0, [R0]; gpCloudTex
59F224:  ADD             R2, PC; _ZN8CWeather14ExtraSunnynessE_ptr
59F226:  LDR.W           R6, =(_ZN8CWeather9FoggynessE_ptr - 0x59F234)
59F22A:  ADD             R3, PC; _ZN8CWeather13CloudCoverageE_ptr
59F22C:  LDR             R1, [R1]; CTimeCycle::m_CurrentColours ...
59F22E:  LDR             R0, [R0]
59F230:  ADD             R6, PC; _ZN8CWeather9FoggynessE_ptr
59F232:  LDR             R2, [R2]; CWeather::ExtraSunnyness ...
59F234:  LDR             R3, [R3]; CWeather::CloudCoverage ...
59F236:  LDR             R6, [R6]; CWeather::Foggyness ...
59F238:  LDRH.W          R8, [R1,#(word_9665A8 - 0x96654C)]
59F23C:  LDRH.W          R5, [R1,#(word_9665AA - 0x96654C)]
59F240:  LDRH.W          R4, [R1,#(word_9665AC - 0x96654C)]
59F244:  LDR             R1, [R0]
59F246:  MOVS            R0, #1
59F248:  VLDR            S20, [R2]
59F24C:  VLDR            S22, [R3]
59F250:  VLDR            S24, [R6]
59F254:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59F258:  VMAX.F32        D16, D12, D11
59F25C:  LDR.W           R0, =(TheCamera_ptr - 0x59F26C)
59F260:  VMOV.F32        S18, #1.0
59F264:  VMOV            S2, R4
59F268:  ADD             R0, PC; TheCamera_ptr
59F26A:  VMOV            S4, R5
59F26E:  VMAX.F32        D0, D10, D16
59F272:  LDR             R0, [R0]; TheCamera
59F274:  VCVT.F32.U32    S2, S2
59F278:  VCVT.F32.U32    S4, S4
59F27C:  VMOV            S6, R8
59F280:  VSUB.F32        S0, S18, S0
59F284:  VCVT.F32.U32    S6, S6
59F288:  VMUL.F32        S2, S0, S2
59F28C:  VMUL.F32        S4, S0, S4
59F290:  VMUL.F32        S0, S0, S6
59F294:  VCVT.U32.F32    S2, S2
59F298:  VCVT.U32.F32    S4, S4
59F29C:  LDR             R6, [R0,#(dword_951FBC - 0x951FA8)]
59F29E:  VCVT.U32.F32    S0, S0
59F2A2:  CMP             R6, #0
59F2A4:  VMOV            R0, S2
59F2A8:  STR             R0, [SP,#0xC8+var_90]
59F2AA:  VMOV            R0, S4
59F2AE:  STR             R0, [SP,#0xC8+var_94]
59F2B0:  VMOV            R0, S0
59F2B4:  STR             R0, [SP,#0xC8+var_98]
59F2B6:  BEQ             loc_59F2F6
59F2B8:  VLDR            S0, [R6]
59F2BC:  VLDR            S2, [R6,#4]
59F2C0:  VMUL.F32        S0, S0, S0
59F2C4:  VMUL.F32        S2, S2, S2
59F2C8:  VADD.F32        S0, S0, S2
59F2CC:  VLDR            S2, [R6,#0x28]
59F2D0:  VCMPE.F32       S2, #0.0
59F2D4:  VMRS            APSR_nzcv, FPSCR
59F2D8:  VSQRT.F32       S0, S0
59F2DC:  VNEG.F32        S4, S0
59F2E0:  IT LT
59F2E2:  VMOVLT.F32      S0, S4
59F2E6:  LDR             R0, [R6,#8]; y
59F2E8:  VMOV            R1, S0; x
59F2EC:  BLX.W           atan2f
59F2F0:  VMOV            S0, R0
59F2F4:  B               loc_59F2FA
59F2F6:  VLDR            S0, =0.0
59F2FA:  LDR.W           R0, =(_ZN7CClouds13ms_cameraRollE_ptr - 0x59F30C)
59F2FE:  ADD             R4, SP, #0xC8+var_74
59F300:  VLDR            S20, =800.0
59F304:  MOV.W           R10, #0xFF
59F308:  ADD             R0, PC; _ZN7CClouds13ms_cameraRollE_ptr
59F30A:  VLDR            S22, =40.0
59F30E:  VLDR            S24, =320.0
59F312:  MOVS            R5, #0
59F314:  LDR             R0, [R0]; CClouds::ms_cameraRoll ...
59F316:  VSTR            S0, [R0]
59F31A:  LDR.W           R0, =(TheCamera_ptr - 0x59F322)
59F31E:  ADD             R0, PC; TheCamera_ptr
59F320:  LDR.W           R11, [R0]; TheCamera
59F324:  LDR.W           R0, =(_ZN7CClouds13ms_cameraRollE_ptr - 0x59F32C)
59F328:  ADD             R0, PC; _ZN7CClouds13ms_cameraRollE_ptr
59F32A:  LDR.W           R9, [R0]; CClouds::ms_cameraRoll ...
59F32E:  LDR.W           R0, =(TheCamera_ptr - 0x59F336)
59F332:  ADD             R0, PC; TheCamera_ptr
59F334:  LDR.W           R8, [R0]; TheCamera
59F338:  B               loc_59F340
59F33A:  LDR.W           R6, [R8,#(dword_951FBC - 0x951FA8)]
59F33E:  ADDS            R5, #4
59F340:  LDR.W           R0, =(unk_61F2FC - 0x59F354)
59F344:  CMP             R6, #0
59F346:  LDR.W           R1, =(unk_61F29C - 0x59F356)
59F34A:  MOV             R3, R4
59F34C:  LDR.W           R2, =(unk_61F2CC - 0x59F35A)
59F350:  ADD             R0, PC; unk_61F2FC
59F352:  ADD             R1, PC; unk_61F29C
59F354:  ADD             R0, R5
59F356:  ADD             R2, PC; unk_61F2CC
59F358:  ADD             R1, R5
59F35A:  ADD             R2, R5
59F35C:  VLDR            S4, [R0]
59F360:  VLDR            S2, [R1]
59F364:  VLDR            S0, [R2]
59F368:  VMUL.F32        S4, S4, S16
59F36C:  VMUL.F32        S2, S2, S20
59F370:  ADD.W           R2, R6, #0x30 ; '0'
59F374:  VMUL.F32        S0, S0, S20
59F378:  IT EQ
59F37A:  ADDEQ.W         R2, R11, #4
59F37E:  LDRD.W          R0, R1, [R2]
59F382:  ADD             R2, SP, #0xC8+var_70
59F384:  STRD.W          R0, R1, [SP,#0xC8+var_80]
59F388:  MOVS            R0, #0
59F38A:  VLDR            S6, [SP,#0xC8+var_80]
59F38E:  ADD             R1, SP, #0xC8+var_6C
59F390:  VLDR            S8, [SP,#0xC8+var_7C]
59F394:  VADD.F32        S4, S4, S22
59F398:  STR             R0, [SP,#0xC8+var_C8]; float
59F39A:  VADD.F32        S2, S6, S2
59F39E:  MOVS            R0, #1
59F3A0:  VADD.F32        S0, S8, S0
59F3A4:  STR             R0, [SP,#0xC8+var_C4]
59F3A6:  ADD             R0, SP, #0xC8+var_80
59F3A8:  VSTR            S2, [SP,#0xC8+var_80]
59F3AC:  VSTR            S4, [SP,#0xC8+var_78]
59F3B0:  VSTR            S0, [SP,#0xC8+var_7C]
59F3B4:  BLX.W           j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
59F3B8:  CMP             R0, #1
59F3BA:  BNE             loc_59F406
59F3BC:  VLDR            S0, [SP,#0xC8+var_70]
59F3C0:  VLDR            S2, [SP,#0xC8+var_64]
59F3C4:  VMUL.F32        S0, S0, S24
59F3C8:  LDRD.W          R0, R1, [SP,#0xC8+var_6C]; float
59F3CC:  VDIV.F32        S4, S18, S2
59F3D0:  LDR             R6, [SP,#0xC8+var_98]
59F3D2:  STR.W           R10, [SP,#0xC8+var_AC]; unsigned __int8
59F3D6:  VMOV            R2, S2; float
59F3DA:  VLDR            S2, [R9]
59F3DE:  VMOV            R3, S0; float
59F3E2:  VLDR            S0, [SP,#0xC8+var_74]
59F3E6:  VSTR            S2, [SP,#0xC8+var_B0]
59F3EA:  VMUL.F32        S0, S0, S22
59F3EE:  STR             R6, [SP,#0xC8+var_C4]; float
59F3F0:  LDR             R6, [SP,#0xC8+var_94]
59F3F2:  STR             R6, [SP,#0xC8+var_C0]; unsigned __int8
59F3F4:  LDR             R6, [SP,#0xC8+var_90]
59F3F6:  STRD.W          R6, R10, [SP,#0xC8+var_BC]; unsigned __int8
59F3FA:  VSTR            S0, [SP,#0xC8+var_C8]
59F3FE:  VSTR            S4, [SP,#0xC8+var_B4]
59F402:  BLX.W           j__ZN7CSprite43RenderBufferedOneXLUSprite_Rotate_DimensionEfffffhhhsffh; CSprite::RenderBufferedOneXLUSprite_Rotate_Dimension(float,float,float,float,float,uchar,uchar,uchar,short,float,float,uchar)
59F406:  CMP             R5, #0x2C ; ','
59F408:  BNE             loc_59F33A
59F40A:  BLX.W           j__ZN7CSprite17FlushSpriteBufferEv; CSprite::FlushSpriteBuffer(void)
59F40E:  LDR.W           R0, =(_ZN8CWeather7RainbowE_ptr - 0x59F416)
59F412:  ADD             R0, PC; _ZN8CWeather7RainbowE_ptr
59F414:  LDR             R0, [R0]; CWeather::Rainbow ...
59F416:  VLDR            S0, [R0]
59F41A:  VCMP.F32        S0, #0.0
59F41E:  VMRS            APSR_nzcv, FPSCR
59F422:  BEQ.W           loc_59F564
59F426:  LDR.W           R0, =(gpCoronaTexture_ptr - 0x59F430)
59F42A:  MOVS            R6, #1
59F42C:  ADD             R0, PC; gpCoronaTexture_ptr
59F42E:  LDR             R0, [R0]; gpCoronaTexture
59F430:  LDR             R0, [R0]
59F432:  LDR             R1, [R0]
59F434:  MOVS            R0, #1
59F436:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59F43A:  LDR.W           R0, =(TheCamera_ptr - 0x59F44E)
59F43E:  VMOV.F32        S16, #1.5
59F442:  VMOV.F32        S22, #5.0
59F446:  VLDR            S20, =100.0
59F44A:  ADD             R0, PC; TheCamera_ptr
59F44C:  ADD.W           R11, SP, #0xC8+var_70
59F450:  ADD             R4, SP, #0xC8+var_74
59F452:  VLDR            S24, =50.0
59F456:  LDR             R5, [R0]; TheCamera
59F458:  MOV.W           R9, #0xFF
59F45C:  LDR.W           R0, =(_ZN8CWeather7RainbowE_ptr - 0x59F468)
59F460:  MOV.W           R8, #0
59F464:  ADD             R0, PC; _ZN8CWeather7RainbowE_ptr
59F466:  LDR.W           R10, [R0]; CWeather::Rainbow ...
59F46A:  VMOV            S0, R8
59F46E:  MOVS            R1, #0x40A00000
59F474:  MOV             R2, R11
59F476:  VCVT.F32.S32    S0, S0
59F47A:  LDR             R0, [R5,#(dword_951FBC - 0x951FA8)]
59F47C:  STR             R1, [SP,#0xC8+var_78]
59F47E:  MOV             R3, R4
59F480:  ADD.W           R1, R0, #0x30 ; '0'
59F484:  CMP             R0, #0
59F486:  IT EQ
59F488:  ADDEQ           R1, R5, #4
59F48A:  MOVS            R0, #0
59F48C:  VLDR            S2, [R1]
59F490:  VLDR            S4, [R1,#4]
59F494:  VLDR            S6, [R1,#8]
59F498:  ADD             R1, SP, #0xC8+var_6C
59F49A:  VMUL.F32        S0, S0, S16
59F49E:  VADD.F32        S0, S2, S0
59F4A2:  VSTR            S0, [SP,#0xC8+var_80]
59F4A6:  VADD.F32        S0, S4, S20
59F4AA:  VSTR            S0, [SP,#0xC8+var_7C]
59F4AE:  VADD.F32        S0, S6, S22
59F4B2:  VSTR            S0, [SP,#0xC8+var_78]
59F4B6:  STRD.W          R0, R6, [SP,#0xC8+var_C8]; float
59F4BA:  ADD             R0, SP, #0xC8+var_80
59F4BC:  BLX.W           j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
59F4C0:  CMP             R0, #1
59F4C2:  BNE             loc_59F556
59F4C4:  ADR             R0, dword_59F868
59F4C6:  ADR             R1, dword_59F870
59F4C8:  VLDR            S4, [SP,#0xC8+var_70]
59F4CC:  ADR             R2, dword_59F878
59F4CE:  LDRB.W          R0, [R0,R8]
59F4D2:  LDRB.W          R1, [R1,R8]
59F4D6:  VADD.F32        S4, S4, S4
59F4DA:  VMOV            S8, R0
59F4DE:  VLDR            S0, [SP,#0xC8+var_64]
59F4E2:  VMOV            S6, R1
59F4E6:  LDRB.W          R3, [R2,R8]
59F4EA:  VDIV.F32        S2, S18, S0
59F4EE:  VCVT.F32.U32    S6, S6
59F4F2:  VCVT.F32.U32    S8, S8
59F4F6:  VMOV            R2, S0; float
59F4FA:  VMOV            S0, R3
59F4FE:  VMOV            R3, S4; float
59F502:  VCVT.F32.U32    S0, S0
59F506:  VLDR            S4, [R10]
59F50A:  VLDR            S10, [SP,#0xC8+var_74]
59F50E:  VMUL.F32        S6, S4, S6
59F512:  LDRD.W          R0, R1, [SP,#0xC8+var_6C]; float
59F516:  VMUL.F32        S8, S4, S8
59F51A:  STR.W           R9, [SP,#0xC8+var_B0]; float
59F51E:  VMUL.F32        S10, S10, S24
59F522:  STR.W           R9, [SP,#0xC8+var_B8]; unsigned __int8
59F526:  VMUL.F32        S0, S4, S0
59F52A:  VCVT.U32.F32    S4, S8
59F52E:  VSTR            S10, [SP,#0xC8+var_C8]
59F532:  VCVT.U32.F32    S6, S6
59F536:  VCVT.U32.F32    S0, S0
59F53A:  VMOV            R6, S6
59F53E:  STR             R6, [SP,#0xC8+var_BC]; unsigned __int8
59F540:  VMOV            R6, S0
59F544:  STR             R6, [SP,#0xC8+var_C0]; unsigned __int8
59F546:  VMOV            R6, S4
59F54A:  STR             R6, [SP,#0xC8+var_C4]; float
59F54C:  MOVS            R6, #1
59F54E:  VSTR            S2, [SP,#0xC8+var_B4]
59F552:  BLX.W           j__ZN7CSprite26RenderBufferedOneXLUSpriteEfffffhhhsfh; CSprite::RenderBufferedOneXLUSprite(float,float,float,float,float,uchar,uchar,uchar,short,float,uchar)
59F556:  ADD.W           R8, R8, #1
59F55A:  CMP.W           R8, #6
59F55E:  BNE             loc_59F46A
59F560:  BLX.W           j__ZN7CSprite17FlushSpriteBufferEv; CSprite::FlushSpriteBuffer(void)
59F564:  MOVS            R0, #0xA
59F566:  MOVS            R1, #5
59F568:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59F56C:  MOVS            R0, #0xB
59F56E:  MOVS            R1, #6
59F570:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59F574:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x59F57A)
59F576:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
59F578:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
59F57A:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
59F57C:  CMP             R0, #4
59F57E:  BHI.W           loc_59F762
59F582:  LDR             R0, =(_ZN8CWeather14OldWeatherTypeE_ptr - 0x59F588)
59F584:  ADD             R0, PC; _ZN8CWeather14OldWeatherTypeE_ptr
59F586:  LDR             R0, [R0]; CWeather::OldWeatherType ...
59F588:  LDRH            R0, [R0]; CWeather::OldWeatherType
59F58A:  CMP             R0, #0x11
59F58C:  BHI.W           loc_59F762
59F590:  MOVS            R1, #1
59F592:  LSLS            R1, R0
59F594:  MOV             R0, #0x22845
59F59C:  TST             R1, R0
59F59E:  BEQ.W           loc_59F762
59F5A2:  LDR             R1, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x59F5A8)
59F5A4:  ADD             R1, PC; _ZN8CWeather14NewWeatherTypeE_ptr
59F5A6:  LDR             R1, [R1]; CWeather::NewWeatherType ...
59F5A8:  LDRH            R1, [R1]; CWeather::NewWeatherType
59F5AA:  CMP             R1, #0x11
59F5AC:  BHI.W           loc_59F762
59F5B0:  MOVS            R2, #1
59F5B2:  LSL.W           R1, R2, R1
59F5B6:  TST             R1, R0
59F5B8:  BEQ.W           loc_59F762
59F5BC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x59F5C2)
59F5BE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
59F5C0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
59F5C2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
59F5C4:  MOV             R4, R0
59F5C6:  UBFX.W          R5, R0, #0xD, #6
59F5CA:  BFC.W           R4, #0xD, #0x13
59F5CE:  LSRS            R1, R4, #5
59F5D0:  CMP             R1, #0x18
59F5D2:  BHI.W           loc_59F762
59F5D6:  MOVW            R1, #0x4925
59F5DA:  LSRS            R0, R0, #0xD
59F5DC:  MOVT            R1, #0x2492
59F5E0:  AND.W           R0, R0, #7
59F5E4:  UMULL.W         R1, R2, R5, R1
59F5E8:  SUBS            R0, #4
59F5EA:  LDR             R1, =(TheCamera_ptr - 0x59F5F4)
59F5EC:  VMOV            S0, R0
59F5F0:  ADD             R1, PC; TheCamera_ptr
59F5F2:  VLDR            S4, =0.1
59F5F6:  VCVT.F32.S32    S0, S0
59F5FA:  SUBS            R0, R5, R2
59F5FC:  ADD.W           R0, R2, R0,LSR#1
59F600:  LSRS            R2, R0, #2
59F602:  LSLS            R2, R2, #3
59F604:  SUB.W           R0, R2, R0,LSR#2
59F608:  SUBS            R0, R5, R0
59F60A:  VMUL.F32        S0, S0, S4
59F60E:  SUBS            R0, #3
59F610:  VMOV            S2, R0
59F614:  LDR             R0, [R1]; TheCamera
59F616:  VCVT.F32.S32    S2, S2
59F61A:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
59F61C:  ADD.W           R2, R1, #0x30 ; '0'
59F620:  CMP             R1, #0
59F622:  IT EQ
59F624:  ADDEQ           R2, R0, #4
59F626:  MOV.W           R0, #0x3F800000
59F62A:  VLDR            S16, [R2]
59F62E:  VLDR            S18, [R2,#4]
59F632:  VMUL.F32        S2, S2, S4
59F636:  VLDR            S20, [R2,#8]
59F63A:  STR             R0, [SP,#0xC8+var_78]
59F63C:  ADD             R0, SP, #0xC8+var_80; this
59F63E:  VSTR            S0, [SP,#0xC8+var_7C]
59F642:  VSTR            S2, [SP,#0xC8+var_80]
59F646:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
59F64A:  MOV             R0, #0x38E38E39
59F652:  UMULL.W         R0, R1, R5, R0
59F656:  MOV             R0, #0xCCCCCCCD
59F65E:  UMULL.W         R0, R2, R5, R0
59F662:  LSRS            R0, R1, #1
59F664:  ADD.W           R0, R0, R0,LSL#3
59F668:  SUBS            R0, R5, R0
59F66A:  LSRS            R1, R2, #3
59F66C:  SUBS            R0, #5
59F66E:  ADD.W           R1, R1, R1,LSL#2
59F672:  VMOV            S2, R0
59F676:  MOVW            R0, #0xCCCD
59F67A:  SUB.W           R1, R5, R1,LSL#1
59F67E:  MOVT            R0, #0x3DCC
59F682:  SUBS            R1, #5
59F684:  VMOV            S0, R1
59F688:  VCVT.F32.S32    S0, S0
59F68C:  VCVT.F32.S32    S2, S2
59F690:  VSTR            S0, [SP,#0xC8+var_88]
59F694:  VSTR            S2, [SP,#0xC8+var_8C]
59F698:  STR             R0, [SP,#0xC8+var_84]
59F69A:  ADD             R0, SP, #0xC8+var_8C; this
59F69C:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
59F6A0:  RSB.W           R0, R4, #0x190
59F6A4:  VLDR            S2, =1000.0
59F6A8:  VLDR            S10, =50.0
59F6AC:  MOV             R1, #0xE1FFFFFF
59F6B0:  VMOV            S0, R0
59F6B4:  LDR             R0, =(TempVertexBuffer_ptr - 0x59F6CA)
59F6B6:  MOVS            R2, #0
59F6B8:  MOVS            R3, #0x18
59F6BA:  VCVT.F32.S32    S0, S0
59F6BE:  VLDR            S4, [SP,#0xC8+var_8C]
59F6C2:  VLDR            S6, [SP,#0xC8+var_88]
59F6C6:  ADD             R0, PC; TempVertexBuffer_ptr
59F6C8:  VLDR            S8, [SP,#0xC8+var_84]
59F6CC:  VMUL.F32        S4, S4, S2
59F6D0:  VMUL.F32        S6, S6, S2
59F6D4:  VLDR            S12, [SP,#0xC8+var_80]
59F6D8:  VMUL.F32        S2, S8, S2
59F6DC:  VLDR            S14, [SP,#0xC8+var_7C]
59F6E0:  VLDR            S1, [SP,#0xC8+var_78]
59F6E4:  LDR             R0, [R0]; TempVertexBuffer
59F6E6:  VADD.F32        S0, S0, S0
59F6EA:  VADD.F32        S4, S16, S4
59F6EE:  STR             R1, [R0,#(dword_A5A1F0 - 0xA5A1D8)]
59F6F0:  VADD.F32        S6, S18, S6
59F6F4:  MOV             R1, #0xFFFFFF
59F6F8:  VADD.F32        S2, S20, S2
59F6FC:  STR             R1, [R0,#(dword_A5A214 - 0xA5A1D8)]
59F6FE:  MOVS            R1, #2
59F700:  VADD.F32        S8, S0, S10
59F704:  VMUL.F32        S10, S0, S12
59F708:  VMUL.F32        S3, S0, S14
59F70C:  VMUL.F32        S0, S0, S1
59F710:  VMUL.F32        S12, S8, S12
59F714:  VMUL.F32        S1, S8, S1
59F718:  VMUL.F32        S8, S8, S14
59F71C:  VADD.F32        S10, S4, S10
59F720:  VADD.F32        S14, S6, S3
59F724:  VADD.F32        S0, S2, S0
59F728:  VADD.F32        S4, S4, S12
59F72C:  VADD.F32        S2, S2, S1
59F730:  VADD.F32        S6, S6, S8
59F734:  VSTR            S10, [R0]
59F738:  VSTR            S14, [R0,#4]
59F73C:  VSTR            S0, [R0,#8]
59F740:  VSTR            S4, [R0,#0x24]
59F744:  VSTR            S6, [R0,#0x28]
59F748:  VSTR            S2, [R0,#0x2C]
59F74C:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
59F750:  CBZ             R0, loc_59F762
59F752:  LDR             R1, =(unk_6B15E4 - 0x59F75C)
59F754:  MOVS            R0, #2
59F756:  MOVS            R2, #2
59F758:  ADD             R1, PC; unk_6B15E4
59F75A:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
59F75E:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
59F762:  ADD             SP, SP, #0x68 ; 'h'
59F764:  VPOP            {D8-D15}
59F768:  ADD             SP, SP, #4
59F76A:  POP.W           {R8-R11}
59F76E:  POP             {R4-R7,PC}
