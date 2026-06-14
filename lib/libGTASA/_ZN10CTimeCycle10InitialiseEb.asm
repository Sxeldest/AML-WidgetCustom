; =========================================================
; Game Engine Function: _ZN10CTimeCycle10InitialiseEb
; Address            : 0x470E30 - 0x471612
; =========================================================

470E30:  PUSH            {R4-R7,LR}
470E32:  ADD             R7, SP, #0xC
470E34:  PUSH.W          {R8-R11}
470E38:  SUB             SP, SP, #4
470E3A:  VPUSH           {D8-D15}
470E3E:  SUB.W           SP, SP, #0x258
470E42:  LDR.W           R0, =(aData_3 - 0x470E52); "DATA"
470E46:  MOV             R1, #0x3FA3D70A; char *
470E4E:  ADD             R0, PC; "DATA"
470E50:  STR             R1, [SP,#0x2B8+var_130]
470E52:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
470E56:  ADR.W           R0, aTimecycDat; "TIMECYC.DAT"
470E5A:  ADR.W           R1, aRb_14; "rb"
470E5E:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
470E62:  MOV             R4, R0
470E64:  LDR.W           R0, =(byte_61CD7E - 0x470E6C)
470E68:  ADD             R0, PC; byte_61CD7E ; this
470E6A:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
470E6E:  LDR.W           R0, =(_ZN10CTimeCycle13m_nAmbientRedE_ptr - 0x470E82)
470E72:  VMOV.F32        S16, #10.0
470E76:  LDR.W           R1, =(_ZN10CTimeCycle24m_nFluffyCloudsBottomRedE_ptr - 0x470E8C)
470E7A:  VMOV.F32        S18, #0.5
470E7E:  ADD             R0, PC; _ZN10CTimeCycle13m_nAmbientRedE_ptr
470E80:  LDR.W           R2, =(_ZN10CTimeCycle26m_nFluffyCloudsBottomGreenE_ptr - 0x470E92)
470E84:  LDR.W           R3, =(_ZN10CTimeCycle25m_nFluffyCloudsBottomBlueE_ptr - 0x470E96)
470E88:  ADD             R1, PC; _ZN10CTimeCycle24m_nFluffyCloudsBottomRedE_ptr
470E8A:  LDR.W           R5, =(_ZN10CTimeCycle21m_nPoleShadowStrengthE_ptr - 0x470E9A)
470E8E:  ADD             R2, PC; _ZN10CTimeCycle26m_nFluffyCloudsBottomGreenE_ptr
470E90:  LDR             R0, [R0]; CTimeCycle::m_nAmbientRed ...
470E92:  ADD             R3, PC; _ZN10CTimeCycle25m_nFluffyCloudsBottomBlueE_ptr
470E94:  STR             R0, [SP,#0x2B8+var_134]
470E96:  ADD             R5, PC; _ZN10CTimeCycle21m_nPoleShadowStrengthE_ptr
470E98:  LDR             R0, [R1]; CTimeCycle::m_nFluffyCloudsBottomRed ...
470E9A:  MOVS            R6, #0
470E9C:  STR             R0, [SP,#0x2B8+var_138]
470E9E:  MOV.W           R11, #0x17
470EA2:  LDR             R0, [R2]; CTimeCycle::m_nFluffyCloudsBottomGreen ...
470EA4:  STR             R0, [SP,#0x2B8+var_13C]
470EA6:  LDR             R0, [R3]; CTimeCycle::m_nFluffyCloudsBottomBlue ...
470EA8:  STR             R0, [SP,#0x2B8+var_140]
470EAA:  LDR             R0, [R5]; CTimeCycle::m_nPoleShadowStrength ...
470EAC:  STR             R0, [SP,#0x2B8+var_144]
470EAE:  LDR.W           R0, =(_ZN10CTimeCycle15m_nAmbientGreenE_ptr - 0x470EBA)
470EB2:  LDR.W           R1, =(_ZN10CTimeCycle12m_fWaterBlueE_ptr - 0x470EC0)
470EB6:  ADD             R0, PC; _ZN10CTimeCycle15m_nAmbientGreenE_ptr
470EB8:  LDR.W           R2, =(_ZN10CTimeCycle15m_fPostFx2AlphaE_ptr - 0x470EC8)
470EBC:  ADD             R1, PC; _ZN10CTimeCycle12m_fWaterBlueE_ptr
470EBE:  VLDR            S20, =100.0
470EC2:  LDR             R0, [R0]; CTimeCycle::m_nAmbientGreen ...
470EC4:  ADD             R2, PC; _ZN10CTimeCycle15m_fPostFx2AlphaE_ptr
470EC6:  STR             R0, [SP,#0x2B8+var_148]
470EC8:  LDR.W           R0, =(_ZN10CTimeCycle14m_nAmbientBlueE_ptr - 0x470ED2)
470ECC:  LDR             R1, [R1]; CTimeCycle::m_fWaterBlue ...
470ECE:  ADD             R0, PC; _ZN10CTimeCycle14m_nAmbientBlueE_ptr
470ED0:  STR             R1, [SP,#0x2B8+var_1C0]
470ED2:  LDR.W           R1, =(_ZN10CTimeCycle13m_fPostFx1RedE_ptr - 0x470EDE)
470ED6:  LDR             R0, [R0]; CTimeCycle::m_nAmbientBlue ...
470ED8:  STR             R0, [SP,#0x2B8+var_14C]
470EDA:  ADD             R1, PC; _ZN10CTimeCycle13m_fPostFx1RedE_ptr
470EDC:  LDR.W           R0, =(_ZN10CTimeCycle17m_nAmbientRed_ObjE_ptr - 0x470EE6)
470EE0:  LDR             R1, [R1]; CTimeCycle::m_fPostFx1Red ...
470EE2:  ADD             R0, PC; _ZN10CTimeCycle17m_nAmbientRed_ObjE_ptr
470EE4:  STR             R1, [SP,#0x2B8+var_1C8]
470EE6:  LDR.W           R1, =(_ZN10CTimeCycle14m_fPostFx1BlueE_ptr - 0x470EF2)
470EEA:  LDR             R0, [R0]; CTimeCycle::m_nAmbientRed_Obj ...
470EEC:  STR             R0, [SP,#0x2B8+var_150]
470EEE:  ADD             R1, PC; _ZN10CTimeCycle14m_fPostFx1BlueE_ptr
470EF0:  LDR.W           R0, =(_ZN10CTimeCycle19m_nAmbientGreen_ObjE_ptr - 0x470EFA)
470EF4:  LDR             R1, [R1]; CTimeCycle::m_fPostFx1Blue ...
470EF6:  ADD             R0, PC; _ZN10CTimeCycle19m_nAmbientGreen_ObjE_ptr
470EF8:  STR             R1, [SP,#0x2B8+var_1D0]
470EFA:  LDR.W           R1, =(_ZN10CTimeCycle15m_fPostFx2GreenE_ptr - 0x470F06)
470EFE:  LDR             R0, [R0]; CTimeCycle::m_nAmbientGreen_Obj ...
470F00:  STR             R0, [SP,#0x2B8+var_154]
470F02:  ADD             R1, PC; _ZN10CTimeCycle15m_fPostFx2GreenE_ptr
470F04:  LDR.W           R0, =(_ZN10CTimeCycle18m_nAmbientBlue_ObjE_ptr - 0x470F0E)
470F08:  LDR             R1, [R1]; CTimeCycle::m_fPostFx2Green ...
470F0A:  ADD             R0, PC; _ZN10CTimeCycle18m_nAmbientBlue_ObjE_ptr
470F0C:  STR             R1, [SP,#0x2B8+var_1D8]
470F0E:  LDR.W           R1, =(_ZN10CTimeCycle15m_fPostFx1AlphaE_ptr - 0x470F1A)
470F12:  LDR             R0, [R0]; CTimeCycle::m_nAmbientBlue_Obj ...
470F14:  STR             R0, [SP,#0x2B8+var_158]
470F16:  ADD             R1, PC; _ZN10CTimeCycle15m_fPostFx1AlphaE_ptr
470F18:  LDR.W           R0, =(_ZN10CTimeCycle12m_nSkyTopRedE_ptr - 0x470F22)
470F1C:  LDR             R1, [R1]; CTimeCycle::m_fPostFx1Alpha ...
470F1E:  ADD             R0, PC; _ZN10CTimeCycle12m_nSkyTopRedE_ptr
470F20:  STR             R1, [SP,#0x2B8+var_1E0]
470F22:  LDR.W           R1, =(_ZN10CTimeCycle24m_nHighLightMinIntensityE_ptr - 0x470F2E)
470F26:  LDR             R0, [R0]; CTimeCycle::m_nSkyTopRed ...
470F28:  STR             R0, [SP,#0x2B8+var_15C]
470F2A:  ADD             R1, PC; _ZN10CTimeCycle24m_nHighLightMinIntensityE_ptr
470F2C:  LDR.W           R0, =(_ZN10CTimeCycle14m_nSkyTopGreenE_ptr - 0x470F36)
470F30:  LDR             R1, [R1]; unsigned int
470F32:  ADD             R0, PC; _ZN10CTimeCycle14m_nSkyTopGreenE_ptr
470F34:  STR             R1, [SP,#0x2B8+var_1EC]
470F36:  LDR             R0, [R0]; CTimeCycle::m_nSkyTopGreen ...
470F38:  STR             R0, [SP,#0x2B8+var_160]
470F3A:  LDR.W           R0, =(_ZN10CTimeCycle13m_nSkyTopBlueE_ptr - 0x470F42)
470F3E:  ADD             R0, PC; _ZN10CTimeCycle13m_nSkyTopBlueE_ptr
470F40:  LDR             R0, [R0]; CTimeCycle::m_nSkyTopBlue ...
470F42:  STR             R0, [SP,#0x2B8+var_164]
470F44:  LDR.W           R0, =(_ZN10CTimeCycle15m_nSkyBottomRedE_ptr - 0x470F4C)
470F48:  ADD             R0, PC; _ZN10CTimeCycle15m_nSkyBottomRedE_ptr
470F4A:  LDR             R0, [R0]; CTimeCycle::m_nSkyBottomRed ...
470F4C:  STR             R0, [SP,#0x2B8+var_168]
470F4E:  LDR.W           R0, =(_ZN10CTimeCycle17m_nSkyBottomGreenE_ptr - 0x470F56)
470F52:  ADD             R0, PC; _ZN10CTimeCycle17m_nSkyBottomGreenE_ptr
470F54:  LDR             R0, [R0]; CTimeCycle::m_nSkyBottomGreen ...
470F56:  STR             R0, [SP,#0x2B8+var_16C]
470F58:  LDR.W           R0, =(_ZN10CTimeCycle16m_nSkyBottomBlueE_ptr - 0x470F60)
470F5C:  ADD             R0, PC; _ZN10CTimeCycle16m_nSkyBottomBlueE_ptr
470F5E:  LDR             R0, [R0]; CTimeCycle::m_nSkyBottomBlue ...
470F60:  STR             R0, [SP,#0x2B8+var_170]
470F62:  LDR.W           R0, =(_ZN10CTimeCycle13m_nSunCoreRedE_ptr - 0x470F6A)
470F66:  ADD             R0, PC; _ZN10CTimeCycle13m_nSunCoreRedE_ptr
470F68:  LDR             R0, [R0]; CTimeCycle::m_nSunCoreRed ...
470F6A:  STR             R0, [SP,#0x2B8+var_174]
470F6C:  LDR.W           R0, =(_ZN10CTimeCycle15m_nSunCoreGreenE_ptr - 0x470F74)
470F70:  ADD             R0, PC; _ZN10CTimeCycle15m_nSunCoreGreenE_ptr
470F72:  LDR             R0, [R0]; CTimeCycle::m_nSunCoreGreen ...
470F74:  STR             R0, [SP,#0x2B8+var_178]
470F76:  LDR.W           R0, =(_ZN10CTimeCycle14m_nSunCoreBlueE_ptr - 0x470F7E)
470F7A:  ADD             R0, PC; _ZN10CTimeCycle14m_nSunCoreBlueE_ptr
470F7C:  LDR             R0, [R0]; CTimeCycle::m_nSunCoreBlue ...
470F7E:  STR             R0, [SP,#0x2B8+var_17C]
470F80:  LDR.W           R0, =(_ZN10CTimeCycle15m_nSunCoronaRedE_ptr - 0x470F88)
470F84:  ADD             R0, PC; _ZN10CTimeCycle15m_nSunCoronaRedE_ptr
470F86:  LDR             R0, [R0]; CTimeCycle::m_nSunCoronaRed ...
470F88:  STR             R0, [SP,#0x2B8+var_180]
470F8A:  LDR.W           R0, =(_ZN10CTimeCycle17m_nSunCoronaGreenE_ptr - 0x470F92)
470F8E:  ADD             R0, PC; _ZN10CTimeCycle17m_nSunCoronaGreenE_ptr
470F90:  LDR             R0, [R0]; CTimeCycle::m_nSunCoronaGreen ...
470F92:  STR             R0, [SP,#0x2B8+var_184]
470F94:  LDR.W           R0, =(_ZN10CTimeCycle16m_nSunCoronaBlueE_ptr - 0x470F9C)
470F98:  ADD             R0, PC; _ZN10CTimeCycle16m_nSunCoronaBlueE_ptr
470F9A:  LDR             R0, [R0]; CTimeCycle::m_nSunCoronaBlue ...
470F9C:  STR             R0, [SP,#0x2B8+var_188]
470F9E:  LDR.W           R0, =(_ZN10CTimeCycle10m_fSunSizeE_ptr - 0x470FA6)
470FA2:  ADD             R0, PC; _ZN10CTimeCycle10m_fSunSizeE_ptr
470FA4:  LDR             R0, [R0]; CTimeCycle::m_fSunSize ...
470FA6:  STR             R0, [SP,#0x2B8+var_18C]
470FA8:  LDR.W           R0, =(_ZN10CTimeCycle13m_fSpriteSizeE_ptr - 0x470FB0)
470FAC:  ADD             R0, PC; _ZN10CTimeCycle13m_fSpriteSizeE_ptr
470FAE:  LDR             R0, [R0]; CTimeCycle::m_fSpriteSize ...
470FB0:  STR             R0, [SP,#0x2B8+var_190]
470FB2:  LDR.W           R0, =(_ZN10CTimeCycle19m_fSpriteBrightnessE_ptr - 0x470FBA)
470FB6:  ADD             R0, PC; _ZN10CTimeCycle19m_fSpriteBrightnessE_ptr
470FB8:  LDR             R0, [R0]; CTimeCycle::m_fSpriteBrightness ...
470FBA:  STR             R0, [SP,#0x2B8+var_194]
470FBC:  LDR.W           R0, =(_ZN10CTimeCycle17m_nShadowStrengthE_ptr - 0x470FC4)
470FC0:  ADD             R0, PC; _ZN10CTimeCycle17m_nShadowStrengthE_ptr
470FC2:  LDR             R0, [R0]; CTimeCycle::m_nShadowStrength ...
470FC4:  STR             R0, [SP,#0x2B8+var_198]
470FC6:  LDR.W           R0, =(_ZN10CTimeCycle22m_nLightShadowStrengthE_ptr - 0x470FCE)
470FCA:  ADD             R0, PC; _ZN10CTimeCycle22m_nLightShadowStrengthE_ptr
470FCC:  LDR             R0, [R0]; CTimeCycle::m_nLightShadowStrength ...
470FCE:  STR             R0, [SP,#0x2B8+var_19C]
470FD0:  LDR.W           R0, =(_ZN10CTimeCycle10m_fFarClipE_ptr - 0x470FD8)
470FD4:  ADD             R0, PC; _ZN10CTimeCycle10m_fFarClipE_ptr
470FD6:  LDR             R0, [R0]; CTimeCycle::m_fFarClip ...
470FD8:  STR             R0, [SP,#0x2B8+var_1A0]
470FDA:  LDR.W           R0, =(_ZN10CTimeCycle16m_nLowCloudsBlueE_ptr - 0x470FE2)
470FDE:  ADD             R0, PC; _ZN10CTimeCycle16m_nLowCloudsBlueE_ptr
470FE0:  LDR             R0, [R0]; CTimeCycle::m_nLowCloudsBlue ...
470FE2:  STR             R0, [SP,#0x2B8+var_1A4]
470FE4:  LDR.W           R0, =(_ZN10CTimeCycle11m_fFogStartE_ptr - 0x470FEC)
470FE8:  ADD             R0, PC; _ZN10CTimeCycle11m_fFogStartE_ptr
470FEA:  LDR             R0, [R0]; CTimeCycle::m_fFogStart ...
470FEC:  STR             R0, [SP,#0x2B8+var_1A8]
470FEE:  LDR.W           R0, =(_ZN10CTimeCycle27m_fLightsOnGroundBrightnessE_ptr - 0x470FF6)
470FF2:  ADD             R0, PC; _ZN10CTimeCycle27m_fLightsOnGroundBrightnessE_ptr
470FF4:  LDR             R0, [R0]; CTimeCycle::m_fLightsOnGroundBrightness ...
470FF6:  STR             R0, [SP,#0x2B8+var_1AC]
470FF8:  LDR.W           R0, =(_ZN10CTimeCycle15m_nLowCloudsRedE_ptr - 0x471000)
470FFC:  ADD             R0, PC; _ZN10CTimeCycle15m_nLowCloudsRedE_ptr
470FFE:  LDR             R0, [R0]; CTimeCycle::m_nLowCloudsRed ...
471000:  STR             R0, [SP,#0x2B8+var_1B0]
471002:  LDR.W           R0, =(_ZN10CTimeCycle17m_nLowCloudsGreenE_ptr - 0x47100A)
471006:  ADD             R0, PC; _ZN10CTimeCycle17m_nLowCloudsGreenE_ptr
471008:  LDR             R0, [R0]; CTimeCycle::m_nLowCloudsGreen ...
47100A:  STR             R0, [SP,#0x2B8+var_1B4]
47100C:  LDR.W           R0, =(_ZN10CTimeCycle11m_fWaterRedE_ptr - 0x471014)
471010:  ADD             R0, PC; _ZN10CTimeCycle11m_fWaterRedE_ptr
471012:  LDR             R0, [R0]; CTimeCycle::m_fWaterRed ...
471014:  STR             R0, [SP,#0x2B8+var_1B8]
471016:  LDR.W           R0, =(_ZN10CTimeCycle13m_fWaterGreenE_ptr - 0x47101E)
47101A:  ADD             R0, PC; _ZN10CTimeCycle13m_fWaterGreenE_ptr
47101C:  LDR             R0, [R0]; CTimeCycle::m_fWaterGreen ...
47101E:  STR             R0, [SP,#0x2B8+var_1BC]
471020:  LDR.W           R0, =(_ZN10CTimeCycle13m_fWaterAlphaE_ptr - 0x471028)
471024:  ADD             R0, PC; _ZN10CTimeCycle13m_fWaterAlphaE_ptr
471026:  LDR             R0, [R0]; CTimeCycle::m_fWaterAlpha ...
471028:  STR             R0, [SP,#0x2B8+var_1C4]
47102A:  LDR.W           R0, =(_ZN10CTimeCycle15m_fPostFx1GreenE_ptr - 0x471032)
47102E:  ADD             R0, PC; _ZN10CTimeCycle15m_fPostFx1GreenE_ptr
471030:  LDR             R0, [R0]; CTimeCycle::m_fPostFx1Green ...
471032:  STR             R0, [SP,#0x2B8+var_1CC]
471034:  LDR.W           R0, =(_ZN10CTimeCycle13m_fPostFx2RedE_ptr - 0x47103C)
471038:  ADD             R0, PC; _ZN10CTimeCycle13m_fPostFx2RedE_ptr
47103A:  LDR             R0, [R0]; CTimeCycle::m_fPostFx2Red ...
47103C:  STR             R0, [SP,#0x2B8+var_1D4]
47103E:  LDR.W           R0, =(_ZN10CTimeCycle14m_fPostFx2BlueE_ptr - 0x471046)
471042:  ADD             R0, PC; _ZN10CTimeCycle14m_fPostFx2BlueE_ptr
471044:  LDR             R0, [R0]; CTimeCycle::m_fPostFx2Blue ...
471046:  STR             R0, [SP,#0x2B8+var_1DC]
471048:  LDR.W           R0, =(_ZN10CTimeCycle13m_fCloudAlphaE_ptr - 0x471050)
47104C:  ADD             R0, PC; _ZN10CTimeCycle13m_fCloudAlphaE_ptr
47104E:  LDR             R0, [R0]; CTimeCycle::m_fCloudAlpha ...
471050:  STR             R0, [SP,#0x2B8+var_1E4]
471052:  LDR             R0, [R2]; CTimeCycle::m_fPostFx2Alpha ...
471054:  STR             R0, [SP,#0x2B8+var_1E8]
471056:  LDR.W           R0, =(_ZN10CTimeCycle16m_nWaterFogAlphaE_ptr - 0x47105E)
47105A:  ADD             R0, PC; _ZN10CTimeCycle16m_nWaterFogAlphaE_ptr
47105C:  LDR.W           R8, [R0]; CTimeCycle::m_nWaterFogAlpha ...
471060:  LDR.W           R0, =(_ZN10CTimeCycle18m_nDirectionalMultE_ptr - 0x471068)
471064:  ADD             R0, PC; _ZN10CTimeCycle18m_nDirectionalMultE_ptr
471066:  LDR.W           R10, [R0]; CTimeCycle::m_nDirectionalMult ...
47106A:  MOV.W           R9, #0
47106E:  MOV             R0, R4; this
471070:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
471074:  CBZ             R0, loc_471088
471076:  LDRB            R1, [R0]
471078:  CMP             R1, #0x2F ; '/'
47107A:  BEQ             loc_47106E
47107C:  CMP             R1, #0
47107E:  BEQ             loc_47106E
471080:  B               loc_47108A
471082:  ALIGN 4
471084:  DCFS 100.0
471088:  MOVS            R0, #0; s
47108A:  ADD             R1, SP, #0x2B8+var_F8
47108C:  STR             R1, [SP,#0x2B8+var_1F8]
47108E:  ADD             R1, SP, #0x2B8+var_130
471090:  STR             R1, [SP,#0x2B8+var_1F4]
471092:  ADD             R1, SP, #0x2B8+var_110
471094:  STR             R1, [SP,#0x2B8+var_218]
471096:  ADD             R1, SP, #0x2B8+var_114
471098:  STR             R1, [SP,#0x2B8+var_214]
47109A:  ADD             R1, SP, #0x2B8+var_128
47109C:  STR             R1, [SP,#0x2B8+var_210]
47109E:  ADD             R1, SP, #0x2B8+var_11C
4710A0:  STR             R1, [SP,#0x2B8+var_20C]
4710A2:  ADD             R1, SP, #0x2B8+var_120
4710A4:  STR             R1, [SP,#0x2B8+var_208]
4710A6:  ADD             R1, SP, #0x2B8+var_124
4710A8:  STR             R1, [SP,#0x2B8+var_204]
4710AA:  ADD             R1, SP, #0x2B8+var_12C
4710AC:  STR             R1, [SP,#0x2B8+var_200]
4710AE:  ADD             R1, SP, #0x2B8+var_F4
4710B0:  STR             R1, [SP,#0x2B8+var_1FC]
4710B2:  ADD             R1, SP, #0x2B8+var_EC
4710B4:  STR             R1, [SP,#0x2B8+var_238]
4710B6:  ADD             R1, SP, #0x2B8+var_F0
4710B8:  STR             R1, [SP,#0x2B8+var_234]
4710BA:  ADD             R1, SP, #0x2B8+var_FC
4710BC:  STR             R1, [SP,#0x2B8+var_230]
4710BE:  ADD             R1, SP, #0x2B8+var_100
4710C0:  STR             R1, [SP,#0x2B8+var_22C]
4710C2:  ADD             R1, SP, #0x2B8+var_104
4710C4:  STR             R1, [SP,#0x2B8+var_228]
4710C6:  ADD             R1, SP, #0x2B8+var_108
4710C8:  STR             R1, [SP,#0x2B8+var_224]
4710CA:  ADD             R1, SP, #0x2B8+var_118
4710CC:  STR             R1, [SP,#0x2B8+var_220]
4710CE:  ADD             R1, SP, #0x2B8+var_10C
4710D0:  STR             R1, [SP,#0x2B8+var_21C]
4710D2:  ADD             R1, SP, #0x2B8+var_D8
4710D4:  STR             R1, [SP,#0x2B8+var_258]
4710D6:  ADD             R1, SP, #0x2B8+var_C4
4710D8:  STR             R1, [SP,#0x2B8+var_254]
4710DA:  ADD             R1, SP, #0x2B8+var_C8
4710DC:  STR             R1, [SP,#0x2B8+var_250]
4710DE:  ADD             R1, SP, #0x2B8+var_CC
4710E0:  STR             R1, [SP,#0x2B8+var_24C]
4710E2:  ADD             R1, SP, #0x2B8+var_DC
4710E4:  STR             R1, [SP,#0x2B8+var_248]
4710E6:  ADD             R1, SP, #0x2B8+var_E0
4710E8:  STR             R1, [SP,#0x2B8+var_244]
4710EA:  ADD             R1, SP, #0x2B8+var_E4
4710EC:  STR             R1, [SP,#0x2B8+var_240]
4710EE:  ADD             R1, SP, #0x2B8+var_E8
4710F0:  STR             R1, [SP,#0x2B8+var_23C]
4710F2:  ADD             R1, SP, #0x2B8+var_AC
4710F4:  STR             R1, [SP,#0x2B8+var_278]
4710F6:  ADD             R1, SP, #0x2B8+var_B0
4710F8:  STR             R1, [SP,#0x2B8+var_274]
4710FA:  ADD             R1, SP, #0x2B8+var_B4
4710FC:  STR             R1, [SP,#0x2B8+var_270]
4710FE:  ADD             R1, SP, #0x2B8+var_B8
471100:  STR             R1, [SP,#0x2B8+var_26C]
471102:  ADD             R1, SP, #0x2B8+var_BC
471104:  STR             R1, [SP,#0x2B8+var_268]
471106:  ADD             R1, SP, #0x2B8+var_C0
471108:  STR             R1, [SP,#0x2B8+var_264]
47110A:  ADD             R1, SP, #0x2B8+var_D0
47110C:  STR             R1, [SP,#0x2B8+var_260]
47110E:  ADD             R1, SP, #0x2B8+var_D4
471110:  STR             R1, [SP,#0x2B8+var_25C]
471112:  ADD             R1, SP, #0x2B8+var_80
471114:  STR             R1, [SP,#0x2B8+var_298]
471116:  ADD             R1, SP, #0x2B8+var_84
471118:  STR             R1, [SP,#0x2B8+var_294]
47111A:  ADD             R1, SP, #0x2B8+var_88
47111C:  STR             R1, [SP,#0x2B8+var_290]
47111E:  ADD             R1, SP, #0x2B8+var_8C
471120:  STR             R1, [SP,#0x2B8+var_28C]
471122:  ADD             R1, SP, #0x2B8+var_90
471124:  STR             R1, [SP,#0x2B8+var_288]
471126:  ADD             R1, SP, #0x2B8+var_A0
471128:  STR             R1, [SP,#0x2B8+var_284]
47112A:  ADD             R1, SP, #0x2B8+var_A4
47112C:  STR             R1, [SP,#0x2B8+var_280]
47112E:  ADD             R1, SP, #0x2B8+var_A8
471130:  STR             R1, [SP,#0x2B8+var_27C]
471132:  ADD             R1, SP, #0x2B8+var_6C
471134:  STR             R1, [SP,#0x2B8+var_2B8]
471136:  ADD             R1, SP, #0x2B8+var_70
471138:  STR             R1, [SP,#0x2B8+var_2B4]
47113A:  ADD             R1, SP, #0x2B8+var_74
47113C:  STR             R1, [SP,#0x2B8+var_2B0]
47113E:  ADD             R1, SP, #0x2B8+var_78
471140:  STR             R1, [SP,#0x2B8+var_2AC]
471142:  ADD             R1, SP, #0x2B8+var_94
471144:  STR             R1, [SP,#0x2B8+var_2A8]
471146:  ADD             R1, SP, #0x2B8+var_98
471148:  STR             R1, [SP,#0x2B8+var_2A4]
47114A:  ADD             R1, SP, #0x2B8+var_9C
47114C:  STR             R1, [SP,#0x2B8+var_2A0]
47114E:  ADD             R1, SP, #0x2B8+var_7C
471150:  STR             R1, [SP,#0x2B8+var_29C]
471152:  LDR.W           R1, =(aDDDDDDDDDDDDDD - 0x47115E); "%d %d %d %d %d %d %d %d %d %d %d %d %d "...
471156:  ADD             R2, SP, #0x2B8+var_64
471158:  ADD             R3, SP, #0x2B8+var_68
47115A:  ADD             R1, PC; "%d %d %d %d %d %d %d %d %d %d %d %d %d "...
47115C:  BLX             sscanf
471160:  LDR             R0, [SP,#0x2B8+var_134]
471162:  MLA.W           R5, R9, R11, R0
471166:  LDR             R0, [SP,#0x2B8+var_138]
471168:  MLA.W           R2, R9, R11, R0
47116C:  LDR             R0, [SP,#0x2B8+var_13C]
47116E:  VLDR            S0, [SP,#0x2B8+var_B8]
471172:  MLA.W           R1, R9, R11, R0
471176:  LDR             R0, [SP,#0x2B8+var_140]
471178:  VMUL.F32        S0, S0, S16
47117C:  MLA.W           R12, R9, R11, R0
471180:  LDR             R0, [SP,#0x2B8+var_144]
471182:  MLA.W           R3, R9, R11, R0
471186:  LDR             R0, [SP,#0x2B8+var_64]
471188:  STRB            R0, [R5,R6]
47118A:  LDR             R0, [SP,#0x2B8+var_148]
47118C:  MLA.W           R0, R9, R11, R0
471190:  LDR             R5, [SP,#0x2B8+var_68]
471192:  VADD.F32        S0, S0, S18
471196:  STRB            R5, [R0,R6]
471198:  LDR             R0, [SP,#0x2B8+var_14C]
47119A:  MLA.W           R0, R9, R11, R0
47119E:  LDR             R5, [SP,#0x2B8+var_6C]
4711A0:  STRB            R5, [R0,R6]
4711A2:  LDR             R0, [SP,#0x2B8+var_150]
4711A4:  MLA.W           R0, R9, R11, R0
4711A8:  LDR             R5, [SP,#0x2B8+var_70]
4711AA:  STRB            R5, [R0,R6]
4711AC:  LDR             R0, [SP,#0x2B8+var_154]
4711AE:  MLA.W           R0, R9, R11, R0
4711B2:  LDR             R5, [SP,#0x2B8+var_74]
4711B4:  STRB            R5, [R0,R6]
4711B6:  LDR             R0, [SP,#0x2B8+var_158]
4711B8:  MLA.W           R0, R9, R11, R0
4711BC:  LDR             R5, [SP,#0x2B8+var_78]
4711BE:  STRB            R5, [R0,R6]
4711C0:  LDR             R0, [SP,#0x2B8+var_15C]
4711C2:  MLA.W           R0, R9, R11, R0
4711C6:  LDR             R5, [SP,#0x2B8+var_7C]
4711C8:  STRB            R5, [R0,R6]
4711CA:  LDR             R0, [SP,#0x2B8+var_160]
4711CC:  MLA.W           R0, R9, R11, R0
4711D0:  LDR             R5, [SP,#0x2B8+var_80]
4711D2:  STRB            R5, [R0,R6]
4711D4:  LDR             R0, [SP,#0x2B8+var_164]
4711D6:  MLA.W           R0, R9, R11, R0
4711DA:  LDR             R5, [SP,#0x2B8+var_84]
4711DC:  STRB            R5, [R0,R6]
4711DE:  LDR             R0, [SP,#0x2B8+var_168]
4711E0:  MLA.W           R0, R9, R11, R0
4711E4:  LDR             R5, [SP,#0x2B8+var_88]
4711E6:  STRB            R5, [R0,R6]
4711E8:  LDR             R0, [SP,#0x2B8+var_16C]
4711EA:  MLA.W           R0, R9, R11, R0
4711EE:  LDR             R5, [SP,#0x2B8+var_8C]
4711F0:  STRB            R5, [R0,R6]
4711F2:  LDR             R0, [SP,#0x2B8+var_170]
4711F4:  MLA.W           R0, R9, R11, R0
4711F8:  LDR             R5, [SP,#0x2B8+var_90]
4711FA:  STRB            R5, [R0,R6]
4711FC:  LDR             R0, [SP,#0x2B8+var_174]
4711FE:  MLA.W           R0, R9, R11, R0
471202:  LDR             R5, [SP,#0x2B8+var_A0]
471204:  STRB            R5, [R0,R6]
471206:  LDR             R0, [SP,#0x2B8+var_178]
471208:  MLA.W           R0, R9, R11, R0
47120C:  LDR             R5, [SP,#0x2B8+var_A4]
47120E:  STRB            R5, [R0,R6]
471210:  LDR             R0, [SP,#0x2B8+var_17C]
471212:  MLA.W           R0, R9, R11, R0
471216:  LDR             R5, [SP,#0x2B8+var_A8]
471218:  STRB            R5, [R0,R6]
47121A:  LDR             R0, [SP,#0x2B8+var_180]
47121C:  MLA.W           R0, R9, R11, R0
471220:  LDR             R5, [SP,#0x2B8+var_AC]
471222:  STRB            R5, [R0,R6]
471224:  LDR             R0, [SP,#0x2B8+var_184]
471226:  MLA.W           R0, R9, R11, R0
47122A:  LDR             R5, [SP,#0x2B8+var_B0]
47122C:  STRB            R5, [R0,R6]
47122E:  LDR             R0, [SP,#0x2B8+var_188]
471230:  MLA.W           R0, R9, R11, R0
471234:  LDR             R5, [SP,#0x2B8+var_B4]
471236:  STRB            R5, [R0,R6]
471238:  LDR             R0, [SP,#0x2B8+var_18C]
47123A:  VCVT.S32.F32    S0, S0
47123E:  MLA.W           R0, R9, R11, R0
471242:  VMOV            R5, S0
471246:  VLDR            S0, [SP,#0x2B8+var_BC]
47124A:  VMUL.F32        S0, S0, S16
47124E:  VADD.F32        S0, S0, S18
471252:  STRB            R5, [R0,R6]
471254:  LDR             R0, [SP,#0x2B8+var_190]
471256:  VCVT.S32.F32    S0, S0
47125A:  MLA.W           R0, R9, R11, R0
47125E:  VMOV            R5, S0
471262:  VLDR            S0, [SP,#0x2B8+var_C0]
471266:  VMUL.F32        S0, S0, S16
47126A:  VADD.F32        S0, S0, S18
47126E:  STRB            R5, [R0,R6]
471270:  LDR             R0, [SP,#0x2B8+var_194]
471272:  VCVT.S32.F32    S0, S0
471276:  MLA.W           R0, R9, R11, R0
47127A:  VMOV            R5, S0
47127E:  VLDR            S0, [SP,#0x2B8+var_C4]
471282:  STRB            R5, [R0,R6]
471284:  LDR             R0, [SP,#0x2B8+var_198]
471286:  MLA.W           R0, R9, R11, R0
47128A:  LDR             R5, [SP,#0x2B8+var_D0]
47128C:  STRB            R5, [R0,R6]
47128E:  LDR             R0, [SP,#0x2B8+var_19C]
471290:  MLA.W           R0, R9, R11, R0
471294:  LDR             R5, [SP,#0x2B8+var_D4]
471296:  STRB            R5, [R0,R6]
471298:  MOVS            R5, #0x2E ; '.'
47129A:  LDR             R0, [SP,#0x2B8+var_D8]
47129C:  STRB            R0, [R3,R6]
47129E:  LDR             R0, [SP,#0x2B8+var_1A0]
4712A0:  VCVT.S32.F32    S0, S0
4712A4:  MLA.W           R0, R9, R5, R0
4712A8:  VMOV            R3, S0
4712AC:  VLDR            S0, [SP,#0x2B8+var_C8]
4712B0:  STRH.W          R3, [R0,R6,LSL#1]
4712B4:  LDR             R0, [SP,#0x2B8+var_1A4]
4712B6:  LDR             R3, [SP,#0x2B8+var_1A8]
4712B8:  VCVT.S32.F32    S0, S0
4712BC:  MLA.W           R3, R9, R5, R3
4712C0:  MLA.W           R0, R9, R11, R0
4712C4:  VMOV            R5, S0
4712C8:  VLDR            S0, [SP,#0x2B8+var_CC]
4712CC:  VMUL.F32        S0, S0, S16
4712D0:  VADD.F32        S0, S0, S18
4712D4:  STRH.W          R5, [R3,R6,LSL#1]
4712D8:  LDR             R3, [SP,#0x2B8+var_1AC]
4712DA:  VCVT.U32.F32    S0, S0
4712DE:  MLA.W           R3, R9, R11, R3
4712E2:  VMOV            R5, S0
4712E6:  VLDR            S0, [SP,#0x2B8+var_FC]
4712EA:  STRB            R5, [R3,R6]
4712EC:  LDR             R3, [SP,#0x2B8+var_1B0]
4712EE:  MLA.W           R3, R9, R11, R3
4712F2:  LDR             R5, [SP,#0x2B8+var_DC]
4712F4:  STRB            R5, [R3,R6]
4712F6:  LDR             R3, [SP,#0x2B8+var_1B4]
4712F8:  MLA.W           R3, R9, R11, R3
4712FC:  LDR             R5, [SP,#0x2B8+var_E0]
4712FE:  STRB            R5, [R3,R6]
471300:  LDR             R3, [SP,#0x2B8+var_E4]
471302:  STRB            R3, [R0,R6]
471304:  LDR             R0, [SP,#0x2B8+var_E8]
471306:  STRB            R0, [R2,R6]
471308:  LDR             R0, [SP,#0x2B8+var_EC]
47130A:  STRB            R0, [R1,R6]
47130C:  LDR             R0, [SP,#0x2B8+var_F0]
47130E:  LDR             R1, [SP,#0x2B8+var_1B8]
471310:  STRB.W          R0, [R12,R6]
471314:  VCVT.U32.F32    S0, S0
471318:  MLA.W           R1, R9, R11, R1
47131C:  LDR             R0, [SP,#0x2B8+var_1BC]
47131E:  MLA.W           R0, R9, R11, R0
471322:  VMOV            R2, S0
471326:  VLDR            S0, [SP,#0x2B8+var_100]
47132A:  STRB            R2, [R1,R6]
47132C:  VCVT.U32.F32    S0, S0
471330:  LDR             R1, [SP,#0x2B8+var_1C0]
471332:  MLA.W           R1, R9, R11, R1
471336:  VMOV            R2, S0
47133A:  VLDR            S0, [SP,#0x2B8+var_104]
47133E:  STRB            R2, [R0,R6]
471340:  VCVT.U32.F32    S0, S0
471344:  LDR             R0, [SP,#0x2B8+var_1C4]
471346:  MLA.W           R0, R9, R11, R0
47134A:  VMOV            R2, S0
47134E:  VLDR            S0, [SP,#0x2B8+var_108]
471352:  STRB            R2, [R1,R6]
471354:  VCVT.U32.F32    S0, S0
471358:  LDR             R1, [SP,#0x2B8+var_1C8]
47135A:  MLA.W           R1, R9, R11, R1
47135E:  VMOV            R2, S0
471362:  VLDR            S0, [SP,#0x2B8+var_10C]
471366:  STRB            R2, [R0,R6]
471368:  VCVT.U32.F32    S0, S0
47136C:  LDR             R0, [SP,#0x2B8+var_1CC]
47136E:  MLA.W           R0, R9, R11, R0
471372:  VMOV            R2, S0
471376:  VLDR            S0, [SP,#0x2B8+var_110]
47137A:  STRB            R2, [R1,R6]
47137C:  VCVT.U32.F32    S0, S0
471380:  LDR             R1, [SP,#0x2B8+var_1D0]
471382:  MLA.W           R1, R9, R11, R1
471386:  VMOV            R2, S0
47138A:  VLDR            S0, [SP,#0x2B8+var_114]
47138E:  STRB            R2, [R0,R6]
471390:  VCVT.U32.F32    S0, S0
471394:  LDR             R0, [SP,#0x2B8+var_1D4]
471396:  MLA.W           R0, R9, R11, R0
47139A:  VMOV            R2, S0
47139E:  VLDR            S0, [SP,#0x2B8+var_11C]
4713A2:  STRB            R2, [R1,R6]
4713A4:  VCVT.U32.F32    S0, S0
4713A8:  LDR             R1, [SP,#0x2B8+var_1D8]
4713AA:  MLA.W           R1, R9, R11, R1
4713AE:  VMOV            R2, S0
4713B2:  VLDR            S0, [SP,#0x2B8+var_120]
4713B6:  STRB            R2, [R0,R6]
4713B8:  VCVT.U32.F32    S0, S0
4713BC:  LDR             R0, [SP,#0x2B8+var_1DC]
4713BE:  MLA.W           R0, R9, R11, R0
4713C2:  VMOV            R2, S0
4713C6:  VLDR            S0, [SP,#0x2B8+var_124]
4713CA:  STRB            R2, [R1,R6]
4713CC:  VCVT.U32.F32    S0, S0
4713D0:  LDR             R1, [SP,#0x2B8+var_1E0]
4713D2:  MLA.W           R1, R9, R11, R1
4713D6:  VMOV            R2, S0
4713DA:  VLDR            S0, [SP,#0x2B8+var_118]
4713DE:  STRB            R2, [R0,R6]
4713E0:  VCVT.U32.F32    S0, S0
4713E4:  LDR             R0, [SP,#0x2B8+var_1E8]
4713E6:  MLA.W           R0, R9, R11, R0
4713EA:  VMOV            R2, S0
4713EE:  VLDR            S0, [SP,#0x2B8+var_128]
4713F2:  STRB            R2, [R1,R6]
4713F4:  LDR             R1, [SP,#0x2B8+var_1E4]
4713F6:  VCVT.U32.F32    S0, S0
4713FA:  LDR             R2, [SP,#0x2B8+var_1EC]
4713FC:  MLA.W           R1, R9, R11, R1
471400:  MLA.W           R2, R9, R11, R2
471404:  VMOV            R3, S0
471408:  VLDR            S0, [SP,#0x2B8+var_12C]
47140C:  STRB            R3, [R0,R6]
47140E:  VCVT.U32.F32    S0, S0
471412:  MLA.W           R0, R9, R11, R8
471416:  VMOV            R3, S0
47141A:  VLDR            S0, [SP,#0x2B8+var_130]
47141E:  VMUL.F32        S0, S0, S20
471422:  STRB            R3, [R1,R6]
471424:  LDR             R1, [SP,#0x2B8+var_F4]
471426:  STRB            R1, [R2,R6]
471428:  LDR             R1, [SP,#0x2B8+var_F8]
47142A:  STRB            R1, [R0,R6]
47142C:  VCVT.U32.F32    S0, S0
471430:  MLA.W           R0, R9, R11, R10
471434:  ADD.W           R9, R9, #1
471438:  CMP.W           R9, #8
47143C:  VMOV            R1, S0; unsigned int
471440:  STRB            R1, [R0,R6]
471442:  BNE.W           loc_47106E
471446:  ADDS            R6, #1
471448:  CMP             R6, #0x17
47144A:  BNE.W           loc_47106A
47144E:  MOV             R0, R4; this
471450:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
471454:  ADR             R0, aDataColorcycle; "data/colorcycle.dat"
471456:  ADR             R1, aRb_14; "rb"
471458:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
47145C:  LDR             R1, =(_ZN10CTimeCycle13m_vGreenGradeE_ptr - 0x47146A)
47145E:  ADR.W           R9, aFFFFFFFFFFFF; "%f %f %f %f %f %f %f %f %f %f %f %f"
471462:  LDR             R2, =(_ZN10CTimeCycle11m_vRedGradeE_ptr - 0x47146E)
471464:  MOV             R11, R0
471466:  ADD             R1, PC; _ZN10CTimeCycle13m_vGreenGradeE_ptr
471468:  LDR             R3, =(_ZN10CTimeCycle12m_vBlueGradeE_ptr - 0x471476)
47146A:  ADD             R2, PC; _ZN10CTimeCycle11m_vRedGradeE_ptr
47146C:  VLDR            S16, =-1.7
471470:  LDR             R1, [R1]; CTimeCycle::m_vGreenGrade ...
471472:  ADD             R3, PC; _ZN10CTimeCycle12m_vBlueGradeE_ptr
471474:  STR             R1, [SP,#0x2B8+var_14C]
471476:  MOVS            R6, #0
471478:  LDR             R1, [R2]; CTimeCycle::m_vRedGrade ...
47147A:  STR             R1, [SP,#0x2B8+var_150]
47147C:  ADR             R1, dword_471620
47147E:  VLD1.64         {D12-D13}, [R1@128]
471482:  MOVS            R1, #0
471484:  VLDR            S18, =0.13
471488:  VLDR            S20, =1.7
47148C:  VLDR            S22, =0.0
471490:  LDR             R3, [R3]; CTimeCycle::m_vBlueGrade ...
471492:  STR             R3, [SP,#0x2B8+var_148]
471494:  STR             R1, [SP,#0x2B8+var_144]
471496:  MOV.W           R8, #0
47149A:  LDR             R1, [SP,#0x2B8+var_148]
47149C:  STR             R6, [SP,#0x2B8+var_140]
47149E:  ADD             R1, R6
4714A0:  STR             R1, [SP,#0x2B8+var_134]
4714A2:  LDR             R1, [SP,#0x2B8+var_14C]
4714A4:  ADD             R1, R6
4714A6:  STR             R1, [SP,#0x2B8+var_138]
4714A8:  LDR             R1, [SP,#0x2B8+var_150]
4714AA:  ADD             R1, R6
4714AC:  STR             R1, [SP,#0x2B8+var_13C]
4714AE:  LDR             R1, [SP,#0x2B8+var_134]; unsigned int
4714B0:  MOV             R0, R11; this
4714B2:  ADD.W           R5, R1, R8
4714B6:  ADD.W           R4, R5, #0xC
4714BA:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
4714BE:  ADD.W           R1, R5, #8
4714C2:  STRD.W          R1, R4, [SP,#0x2B8+var_298]
4714C6:  LDR             R1, [SP,#0x2B8+var_138]
4714C8:  ADD.W           R12, R5, #4
4714CC:  LDR             R2, [SP,#0x2B8+var_13C]
4714CE:  ADD.W           R4, R1, R8
4714D2:  ADD.W           R6, R2, R8
4714D6:  ADD.W           LR, R4, #0xC
4714DA:  ADDS            R1, R4, #4
4714DC:  ADD.W           R2, R6, #0xC
4714E0:  ADD.W           R3, R4, #8
4714E4:  ADD.W           R10, R6, #8
4714E8:  STRD.W          R10, R2, [SP,#0x2B8+var_2B8]
4714EC:  MOV             R2, R6
4714EE:  STRD.W          R4, R1, [SP,#0x2B8+var_2B0]
4714F2:  MOV             R1, R9; format
4714F4:  STRD.W          R3, LR, [SP,#0x2B8+var_2A8]
4714F8:  ADDS            R3, R6, #4
4714FA:  STRD.W          R5, R12, [SP,#0x2B8+var_2A0]
4714FE:  BLX             sscanf
471502:  VLDR            S1, [R5,#4]
471506:  ADD.W           R8, R8, #0x170
47150A:  VLDM            R4, {S4-S5}
47150E:  VLDM            R6, {S8-S9}
471512:  VADD.F32        S14, S4, S5
471516:  VADD.F32        S12, S8, S9
47151A:  VLDR            S10, [R6,#8]
47151E:  VLDR            S6, [R4,#8]
471522:  VLDR            S0, [R5]
471526:  VADD.F32        S13, S0, S1
47152A:  VLDR            S2, [R5,#8]
47152E:  VADD.F32        S14, S14, S6
471532:  VADD.F32        S12, S12, S10
471536:  VADD.F32        S13, S13, S2
47153A:  VADD.F32        S28, S14, S16
47153E:  VCMPE.F32       S12, S20
471542:  VMRS            APSR_nzcv, FPSCR
471546:  VADD.F32        S15, S12, S16
47154A:  VCMPE.F32       S14, S20
47154E:  VMOV.F32        S12, S22
471552:  VMOV.F32        S14, S22
471556:  VADD.F32        S30, S13, S16
47155A:  VMUL.F32        S15, S15, S18
47155E:  IT GT
471560:  VMOVGT.F32      S12, S15
471564:  VMRS            APSR_nzcv, FPSCR
471568:  VMUL.F32        S15, S28, S18
47156C:  VCMPE.F32       S13, S20
471570:  VMOV.F32        S13, S22
471574:  IT GT
471576:  VMOVGT.F32      S14, S15
47157A:  VMRS            APSR_nzcv, FPSCR
47157E:  VMUL.F32        S15, S30, S18
471582:  VLDR            S28, [R6,#0xC]
471586:  VSUB.F32        S11, S28, S12
47158A:  VMUL.F32        Q8, Q2, Q6
47158E:  IT GT
471590:  VMOVGT.F32      S13, S15
471594:  VLDR            S12, [R4,#0xC]
471598:  VLDR            S15, [R5,#0xC]
47159C:  CMP.W           R8, #0xB80
4715A0:  VSUB.F32        S7, S12, S14
4715A4:  VST1.32         {D16-D17}, [R6]
4715A8:  VSUB.F32        S3, S15, S13
4715AC:  VMUL.F32        Q9, Q1, Q6
4715B0:  VMUL.F32        Q10, Q0, Q6
4715B4:  VST1.32         {D18-D19}, [R4]
4715B8:  VST1.32         {D20-D21}, [R5]
4715BC:  BNE.W           loc_4714AE
4715C0:  LDR             R6, [SP,#0x2B8+var_140]
4715C2:  LDR             R1, [SP,#0x2B8+var_144]
4715C4:  ADDS            R6, #0x10
4715C6:  ADDS            R1, #1; unsigned int
4715C8:  CMP             R1, #0x17
4715CA:  BNE.W           loc_471494
4715CE:  MOV             R0, R11; this
4715D0:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
4715D4:  LDR             R0, =(_ZN10CTimeCycle19m_vecDirnLightToSunE_ptr - 0x4715E6)
4715D6:  MOVW            R2, #0x4F3
4715DA:  MOV             R1, #0xBEFFFFFF
4715DE:  MOVT            R2, #0x3F35
4715E2:  ADD             R0, PC; _ZN10CTimeCycle19m_vecDirnLightToSunE_ptr
4715E4:  LDR             R0, [R0]; this
4715E6:  STRD.W          R1, R1, [R0]; CTimeCycle::m_vecDirnLightToSun
4715EA:  STR             R2, [R0,#(dword_96B4B8 - 0x96B4B0)]
4715EC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4715F0:  LDR             R0, =(_ZN10CTimeCycle16m_bExtraColourOnE_ptr - 0x4715FA)
4715F2:  MOVS            R2, #0
4715F4:  LDR             R1, =(_ZN10CTimeCycle14m_FogReductionE_ptr - 0x4715FC)
4715F6:  ADD             R0, PC; _ZN10CTimeCycle16m_bExtraColourOnE_ptr
4715F8:  ADD             R1, PC; _ZN10CTimeCycle14m_FogReductionE_ptr
4715FA:  LDR             R0, [R0]; CTimeCycle::m_bExtraColourOn ...
4715FC:  LDR             R1, [R1]; CTimeCycle::m_FogReduction ...
4715FE:  STR             R2, [R0]; CTimeCycle::m_bExtraColourOn
471600:  STR             R2, [R1]; CTimeCycle::m_FogReduction
471602:  ADD.W           SP, SP, #0x258
471606:  VPOP            {D8-D15}
47160A:  ADD             SP, SP, #4
47160C:  POP.W           {R8-R11}
471610:  POP             {R4-R7,PC}
