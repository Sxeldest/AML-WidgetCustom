; =========================================================
; Game Engine Function: _ZN10CColourSetC2Eii
; Address            : 0x41E190 - 0x41E652
; =========================================================

41E190:  PUSH            {R4-R7,LR}
41E192:  ADD             R7, SP, #0xC
41E194:  PUSH.W          {R8-R11}
41E198:  SUB             SP, SP, #0x20
41E19A:  LDR.W           R3, =(_ZN10CTimeCycle17m_nAmbientRed_ObjE_ptr - 0x41E1AC)
41E19E:  MOVS            R4, #0x17
41E1A0:  LDR.W           R6, =(_ZN10CTimeCycle19m_nAmbientGreen_ObjE_ptr - 0x41E1B2)
41E1A4:  LDR.W           R12, =(_ZN10CTimeCycle18m_nAmbientBlue_ObjE_ptr - 0x41E1B8)
41E1A8:  ADD             R3, PC; _ZN10CTimeCycle17m_nAmbientRed_ObjE_ptr
41E1AA:  LDR.W           LR, =(_ZN10CTimeCycle12m_nSkyTopRedE_ptr - 0x41E1BC)
41E1AE:  ADD             R6, PC; _ZN10CTimeCycle19m_nAmbientGreen_ObjE_ptr
41E1B0:  LDR.W           R8, =(_ZN10CTimeCycle14m_nAmbientBlueE_ptr - 0x41E1CC)
41E1B4:  ADD             R12, PC; _ZN10CTimeCycle18m_nAmbientBlue_ObjE_ptr
41E1B6:  LDR             R3, [R3]; CTimeCycle::m_nAmbientRed_Obj ...
41E1B8:  ADD             LR, PC; _ZN10CTimeCycle12m_nSkyTopRedE_ptr
41E1BA:  LDR             R5, [R6]; CTimeCycle::m_nAmbientGreen_Obj ...
41E1BC:  MLA.W           R11, R1, R4, R3
41E1C0:  LDR.W           R3, =(_ZN10CTimeCycle13m_nAmbientRedE_ptr - 0x41E1D6)
41E1C4:  LDR.W           R6, [R12]; CTimeCycle::m_nAmbientBlue_Obj ...
41E1C8:  ADD             R8, PC; _ZN10CTimeCycle14m_nAmbientBlueE_ptr
41E1CA:  MLA.W           R9, R1, R4, R6
41E1CE:  LDR.W           R6, [LR]; CTimeCycle::m_nSkyTopRed ...
41E1D2:  ADD             R3, PC; _ZN10CTimeCycle13m_nAmbientRedE_ptr
41E1D4:  MLA.W           R12, R1, R4, R6
41E1D8:  LDR.W           R6, [R8]; CTimeCycle::m_nAmbientBlue ...
41E1DC:  LDR             R3, [R3]; CTimeCycle::m_nAmbientRed ...
41E1DE:  MLA.W           LR, R1, R4, R6
41E1E2:  ADR.W           R6, dword_41E660
41E1E6:  VLD1.64         {D16-D17}, [R6@128]
41E1EA:  ADD.W           R6, R0, #0xBC
41E1EE:  MLA.W           R3, R1, R4, R3
41E1F2:  STR             R6, [SP,#0x3C+var_20]
41E1F4:  VST1.32         {D16-D17}, [R6]
41E1F8:  ADD.W           R6, R0, #0xAC
41E1FC:  MLA.W           R10, R1, R4, R5
41E200:  STR             R6, [SP,#0x3C+var_28]
41E202:  VST1.32         {D16-D17}, [R6]
41E206:  ADD.W           R6, R0, #0xCC
41E20A:  STR             R6, [SP,#0x3C+var_24]
41E20C:  VST1.32         {D16-D17}, [R6]
41E210:  LDRB            R3, [R3,R2]
41E212:  LDR.W           R5, =(_ZN10CTimeCycle15m_nAmbientGreenE_ptr - 0x41E222)
41E216:  LDR.W           R6, =(_ZN10CTimeCycle19m_fSpriteBrightnessE_ptr - 0x41E224)
41E21A:  VMOV            S0, R3
41E21E:  ADD             R5, PC; _ZN10CTimeCycle15m_nAmbientGreenE_ptr
41E220:  ADD             R6, PC; _ZN10CTimeCycle19m_fSpriteBrightnessE_ptr
41E222:  VLDR            S2, =100.0
41E226:  VCVT.F32.U32    S0, S0
41E22A:  LDR             R5, [R5]; CTimeCycle::m_nAmbientGreen ...
41E22C:  MLA.W           R5, R1, R4, R5
41E230:  LDR             R6, [R6]; CTimeCycle::m_fSpriteBrightness ...
41E232:  MLA.W           R6, R1, R4, R6
41E236:  VSTR            S0, [R0]
41E23A:  LDRB            R3, [R5,R2]
41E23C:  LDR.W           R5, =(_ZN10CTimeCycle13m_fSpriteSizeE_ptr - 0x41E248)
41E240:  VMOV            S0, R3
41E244:  ADD             R5, PC; _ZN10CTimeCycle13m_fSpriteSizeE_ptr
41E246:  VCVT.F32.U32    S0, S0
41E24A:  LDR             R5, [R5]; CTimeCycle::m_fSpriteSize ...
41E24C:  MLA.W           R5, R1, R4, R5
41E250:  VSTR            S0, [R0,#4]
41E254:  LDRB.W          R3, [LR,R2]
41E258:  VMOV            S0, R3
41E25C:  VCVT.F32.U32    S0, S0
41E260:  VSTR            S0, [R0,#8]
41E264:  LDRB.W          R3, [R11,R2]
41E268:  VMOV            S0, R3
41E26C:  VCVT.F32.U32    S0, S0
41E270:  VSTR            S0, [R0,#0xC]
41E274:  LDRB.W          R3, [R10,R2]
41E278:  LDR.W           R10, =(_ZN10CTimeCycle13m_fWaterAlphaE_ptr - 0x41E284)
41E27C:  VMOV            S0, R3
41E280:  ADD             R10, PC; _ZN10CTimeCycle13m_fWaterAlphaE_ptr
41E282:  VCVT.F32.U32    S0, S0
41E286:  VSTR            S0, [R0,#0x10]
41E28A:  LDRB.W          R3, [R9,R2]
41E28E:  VMOV            S0, R3
41E292:  VCVT.F32.U32    S0, S0
41E296:  VSTR            S0, [R0,#0x14]
41E29A:  LDRB.W          R3, [R12,R2]
41E29E:  STRH            R3, [R0,#0x24]
41E2A0:  LDR.W           R3, =(_ZN10CTimeCycle14m_nSkyTopGreenE_ptr - 0x41E2A8)
41E2A4:  ADD             R3, PC; _ZN10CTimeCycle14m_nSkyTopGreenE_ptr
41E2A6:  LDR             R3, [R3]; CTimeCycle::m_nSkyTopGreen ...
41E2A8:  MLA.W           R3, R1, R4, R3
41E2AC:  LDRB            R3, [R3,R2]
41E2AE:  STRH            R3, [R0,#0x26]
41E2B0:  LDR.W           R3, =(_ZN10CTimeCycle13m_nSkyTopBlueE_ptr - 0x41E2B8)
41E2B4:  ADD             R3, PC; _ZN10CTimeCycle13m_nSkyTopBlueE_ptr
41E2B6:  LDR             R3, [R3]; CTimeCycle::m_nSkyTopBlue ...
41E2B8:  MLA.W           R3, R1, R4, R3
41E2BC:  LDRB            R3, [R3,R2]
41E2BE:  STRH            R3, [R0,#0x28]
41E2C0:  LDR.W           R3, =(_ZN10CTimeCycle15m_nSkyBottomRedE_ptr - 0x41E2C8)
41E2C4:  ADD             R3, PC; _ZN10CTimeCycle15m_nSkyBottomRedE_ptr
41E2C6:  LDR             R3, [R3]; CTimeCycle::m_nSkyBottomRed ...
41E2C8:  MLA.W           R3, R1, R4, R3
41E2CC:  LDRB            R3, [R3,R2]
41E2CE:  STRH            R3, [R0,#0x2A]
41E2D0:  LDR.W           R3, =(_ZN10CTimeCycle17m_nSkyBottomGreenE_ptr - 0x41E2D8)
41E2D4:  ADD             R3, PC; _ZN10CTimeCycle17m_nSkyBottomGreenE_ptr
41E2D6:  LDR             R3, [R3]; CTimeCycle::m_nSkyBottomGreen ...
41E2D8:  MLA.W           R3, R1, R4, R3
41E2DC:  LDRB            R3, [R3,R2]
41E2DE:  STRH            R3, [R0,#0x2C]
41E2E0:  LDR.W           R3, =(_ZN10CTimeCycle16m_nSkyBottomBlueE_ptr - 0x41E2E8)
41E2E4:  ADD             R3, PC; _ZN10CTimeCycle16m_nSkyBottomBlueE_ptr
41E2E6:  LDR             R3, [R3]; CTimeCycle::m_nSkyBottomBlue ...
41E2E8:  MLA.W           R3, R1, R4, R3
41E2EC:  LDRB            R3, [R3,R2]
41E2EE:  STRH            R3, [R0,#0x2E]
41E2F0:  LDR             R3, =(_ZN10CTimeCycle13m_nSunCoreRedE_ptr - 0x41E2F6)
41E2F2:  ADD             R3, PC; _ZN10CTimeCycle13m_nSunCoreRedE_ptr
41E2F4:  LDR             R3, [R3]; CTimeCycle::m_nSunCoreRed ...
41E2F6:  MLA.W           R3, R1, R4, R3
41E2FA:  LDRB            R3, [R3,R2]
41E2FC:  STRH            R3, [R0,#0x30]
41E2FE:  LDR             R3, =(_ZN10CTimeCycle15m_nSunCoreGreenE_ptr - 0x41E304)
41E300:  ADD             R3, PC; _ZN10CTimeCycle15m_nSunCoreGreenE_ptr
41E302:  LDR             R3, [R3]; CTimeCycle::m_nSunCoreGreen ...
41E304:  MLA.W           R3, R1, R4, R3
41E308:  LDRB            R3, [R3,R2]
41E30A:  STRH            R3, [R0,#0x32]
41E30C:  LDR             R3, =(_ZN10CTimeCycle14m_nSunCoreBlueE_ptr - 0x41E312)
41E30E:  ADD             R3, PC; _ZN10CTimeCycle14m_nSunCoreBlueE_ptr
41E310:  LDR             R3, [R3]; CTimeCycle::m_nSunCoreBlue ...
41E312:  MLA.W           R3, R1, R4, R3
41E316:  LDRB            R3, [R3,R2]
41E318:  STRH            R3, [R0,#0x34]
41E31A:  LDR             R3, =(_ZN10CTimeCycle15m_nSunCoronaRedE_ptr - 0x41E320)
41E31C:  ADD             R3, PC; _ZN10CTimeCycle15m_nSunCoronaRedE_ptr
41E31E:  LDR             R3, [R3]; CTimeCycle::m_nSunCoronaRed ...
41E320:  MLA.W           R3, R1, R4, R3
41E324:  LDRB            R3, [R3,R2]
41E326:  STRH            R3, [R0,#0x36]
41E328:  LDR             R3, =(_ZN10CTimeCycle17m_nSunCoronaGreenE_ptr - 0x41E32E)
41E32A:  ADD             R3, PC; _ZN10CTimeCycle17m_nSunCoronaGreenE_ptr
41E32C:  LDR             R3, [R3]; CTimeCycle::m_nSunCoronaGreen ...
41E32E:  MLA.W           R3, R1, R4, R3
41E332:  LDRB            R3, [R3,R2]
41E334:  STRH            R3, [R0,#0x38]
41E336:  LDR             R3, =(_ZN10CTimeCycle16m_nSunCoronaBlueE_ptr - 0x41E33C)
41E338:  ADD             R3, PC; _ZN10CTimeCycle16m_nSunCoronaBlueE_ptr
41E33A:  LDR             R3, [R3]; CTimeCycle::m_nSunCoronaBlue ...
41E33C:  MLA.W           R3, R1, R4, R3
41E340:  LDRB            R3, [R3,R2]
41E342:  STRH            R3, [R0,#0x3A]
41E344:  LDR             R3, =(_ZN10CTimeCycle17m_nShadowStrengthE_ptr - 0x41E34A)
41E346:  ADD             R3, PC; _ZN10CTimeCycle17m_nShadowStrengthE_ptr
41E348:  LDR             R3, [R3]; CTimeCycle::m_nShadowStrength ...
41E34A:  MLA.W           R12, R1, R4, R3
41E34E:  LDR             R3, =(_ZN10CTimeCycle10m_fSunSizeE_ptr - 0x41E354)
41E350:  ADD             R3, PC; _ZN10CTimeCycle10m_fSunSizeE_ptr
41E352:  LDR             R3, [R3]; CTimeCycle::m_fSunSize ...
41E354:  MLA.W           R3, R1, R4, R3
41E358:  LDRSB           R3, [R3,R2]
41E35A:  VMOV            S0, R3
41E35E:  VCVT.F32.S32    S0, S0
41E362:  VSTR            S0, [R0,#0x3C]
41E366:  LDRSB           R3, [R5,R2]
41E368:  LDR             R5, =(_ZN10CTimeCycle11m_fFogStartE_ptr - 0x41E36E)
41E36A:  ADD             R5, PC; _ZN10CTimeCycle11m_fFogStartE_ptr
41E36C:  VMOV            S0, R3
41E370:  LDR             R5, [R5]; CTimeCycle::m_fFogStart ...
41E372:  VCVT.F32.S32    S0, S0
41E376:  VSTR            S0, [R0,#0x40]
41E37A:  LDRSB           R3, [R6,R2]
41E37C:  LDR             R6, =(_ZN10CTimeCycle27m_fLightsOnGroundBrightnessE_ptr - 0x41E382)
41E37E:  ADD             R6, PC; _ZN10CTimeCycle27m_fLightsOnGroundBrightnessE_ptr
41E380:  VMOV            S0, R3
41E384:  LDR             R6, [R6]; CTimeCycle::m_fLightsOnGroundBrightness ...
41E386:  MLA.W           LR, R1, R4, R6
41E38A:  VCVT.F32.S32    S0, S0
41E38E:  LDR             R6, =(_ZN10CTimeCycle10m_fFarClipE_ptr - 0x41E394)
41E390:  ADD             R6, PC; _ZN10CTimeCycle10m_fFarClipE_ptr
41E392:  LDR             R6, [R6]; CTimeCycle::m_fFarClip ...
41E394:  VSTR            S0, [R0,#0x44]
41E398:  LDRB.W          R3, [R12,R2]
41E39C:  STRH.W          R3, [R0,#0x48]
41E3A0:  LDR             R3, =(_ZN10CTimeCycle22m_nLightShadowStrengthE_ptr - 0x41E3A6)
41E3A2:  ADD             R3, PC; _ZN10CTimeCycle22m_nLightShadowStrengthE_ptr
41E3A4:  LDR             R3, [R3]; CTimeCycle::m_nLightShadowStrength ...
41E3A6:  MLA.W           R3, R1, R4, R3
41E3AA:  LDRB            R3, [R3,R2]
41E3AC:  STRH.W          R3, [R0,#0x4A]
41E3B0:  LDR             R3, =(_ZN10CTimeCycle21m_nPoleShadowStrengthE_ptr - 0x41E3B6)
41E3B2:  ADD             R3, PC; _ZN10CTimeCycle21m_nPoleShadowStrengthE_ptr
41E3B4:  LDR             R3, [R3]; CTimeCycle::m_nPoleShadowStrength ...
41E3B6:  MLA.W           R3, R1, R4, R3
41E3BA:  LDRB            R3, [R3,R2]
41E3BC:  STRH.W          R3, [R0,#0x4C]
41E3C0:  LDR             R3, =(_ZN10CTimeCycle15m_nLowCloudsRedE_ptr - 0x41E3C6)
41E3C2:  ADD             R3, PC; _ZN10CTimeCycle15m_nLowCloudsRedE_ptr
41E3C4:  LDR             R3, [R3]; CTimeCycle::m_nLowCloudsRed ...
41E3C6:  MLA.W           R12, R1, R4, R3
41E3CA:  MOVS            R3, #0x2E ; '.'
41E3CC:  MLA.W           R5, R1, R3, R5
41E3D0:  MLA.W           R3, R1, R3, R6
41E3D4:  LDR.W           R6, [R10]; CTimeCycle::m_fWaterAlpha ...
41E3D8:  MLA.W           R10, R1, R4, R6
41E3DC:  LDR             R6, =(_ZN10CTimeCycle11m_fWaterRedE_ptr - 0x41E3E2)
41E3DE:  ADD             R6, PC; _ZN10CTimeCycle11m_fWaterRedE_ptr
41E3E0:  LDRSH.W         R3, [R3,R2,LSL#1]
41E3E4:  LDR             R6, [R6]; CTimeCycle::m_fWaterRed ...
41E3E6:  MLA.W           R6, R1, R4, R6
41E3EA:  VMOV            S0, R3
41E3EE:  VCVT.F32.S32    S0, S0
41E3F2:  VSTR            S0, [R0,#0x50]
41E3F6:  LDRSH.W         R3, [R5,R2,LSL#1]
41E3FA:  LDR             R5, =(_ZN10CTimeCycle12m_fWaterBlueE_ptr - 0x41E400)
41E3FC:  ADD             R5, PC; _ZN10CTimeCycle12m_fWaterBlueE_ptr
41E3FE:  VMOV            S0, R3
41E402:  LDR             R5, [R5]; CTimeCycle::m_fWaterBlue ...
41E404:  VCVT.F32.S32    S0, S0
41E408:  MLA.W           R5, R1, R4, R5
41E40C:  VSTR            S0, [R0,#0x54]
41E410:  LDRB.W          R3, [LR,R2]
41E414:  VMOV            S0, R3
41E418:  VCVT.F32.U32    S0, S0
41E41C:  VSTR            S0, [R0,#0x58]
41E420:  LDRB.W          R3, [R12,R2]
41E424:  STRH.W          R3, [R0,#0x5C]
41E428:  LDR             R3, =(_ZN10CTimeCycle17m_nLowCloudsGreenE_ptr - 0x41E42E)
41E42A:  ADD             R3, PC; _ZN10CTimeCycle17m_nLowCloudsGreenE_ptr
41E42C:  LDR             R3, [R3]; CTimeCycle::m_nLowCloudsGreen ...
41E42E:  MLA.W           R3, R1, R4, R3
41E432:  LDRB            R3, [R3,R2]
41E434:  STRH.W          R3, [R0,#0x5E]
41E438:  LDR             R3, =(_ZN10CTimeCycle16m_nLowCloudsBlueE_ptr - 0x41E43E)
41E43A:  ADD             R3, PC; _ZN10CTimeCycle16m_nLowCloudsBlueE_ptr
41E43C:  LDR             R3, [R3]; CTimeCycle::m_nLowCloudsBlue ...
41E43E:  MLA.W           R3, R1, R4, R3
41E442:  LDRB            R3, [R3,R2]
41E444:  STRH.W          R3, [R0,#0x60]
41E448:  LDR             R3, =(_ZN10CTimeCycle24m_nFluffyCloudsBottomRedE_ptr - 0x41E44E)
41E44A:  ADD             R3, PC; _ZN10CTimeCycle24m_nFluffyCloudsBottomRedE_ptr
41E44C:  LDR             R3, [R3]; CTimeCycle::m_nFluffyCloudsBottomRed ...
41E44E:  MLA.W           R3, R1, R4, R3
41E452:  LDRB            R3, [R3,R2]
41E454:  STRH.W          R3, [R0,#0x62]
41E458:  LDR             R3, =(_ZN10CTimeCycle26m_nFluffyCloudsBottomGreenE_ptr - 0x41E45E)
41E45A:  ADD             R3, PC; _ZN10CTimeCycle26m_nFluffyCloudsBottomGreenE_ptr
41E45C:  LDR             R3, [R3]; CTimeCycle::m_nFluffyCloudsBottomGreen ...
41E45E:  MLA.W           R3, R1, R4, R3
41E462:  LDRB            R3, [R3,R2]
41E464:  STRH.W          R3, [R0,#0x64]
41E468:  LDR             R3, =(_ZN10CTimeCycle25m_nFluffyCloudsBottomBlueE_ptr - 0x41E46E)
41E46A:  ADD             R3, PC; _ZN10CTimeCycle25m_nFluffyCloudsBottomBlueE_ptr
41E46C:  LDR             R3, [R3]; CTimeCycle::m_nFluffyCloudsBottomBlue ...
41E46E:  MLA.W           R3, R1, R4, R3
41E472:  LDRB            R3, [R3,R2]
41E474:  STRH.W          R3, [R0,#0x66]
41E478:  LDR             R3, =(_ZN10CTimeCycle24m_nHighLightMinIntensityE_ptr - 0x41E480)
41E47A:  LDRB            R6, [R6,R2]
41E47C:  ADD             R3, PC; _ZN10CTimeCycle24m_nHighLightMinIntensityE_ptr
41E47E:  LDR             R3, [R3]; CTimeCycle::m_nHighLightMinIntensity ...
41E480:  VMOV            S0, R6
41E484:  MLA.W           R3, R1, R4, R3
41E488:  LDR             R6, =(_ZN10CTimeCycle16m_nWaterFogAlphaE_ptr - 0x41E48E)
41E48A:  ADD             R6, PC; _ZN10CTimeCycle16m_nWaterFogAlphaE_ptr
41E48C:  STR             R3, [SP,#0x3C+var_2C]
41E48E:  LDR             R3, =(_ZN10CTimeCycle13m_fCloudAlphaE_ptr - 0x41E496)
41E490:  LDR             R6, [R6]; CTimeCycle::m_nWaterFogAlpha ...
41E492:  ADD             R3, PC; _ZN10CTimeCycle13m_fCloudAlphaE_ptr
41E494:  MLA.W           R6, R1, R4, R6
41E498:  LDR             R3, [R3]; CTimeCycle::m_fCloudAlpha ...
41E49A:  MLA.W           R3, R1, R4, R3
41E49E:  STR             R3, [SP,#0x3C+var_30]
41E4A0:  LDR             R3, =(_ZN10CTimeCycle15m_fPostFx2AlphaE_ptr - 0x41E4A6)
41E4A2:  ADD             R3, PC; _ZN10CTimeCycle15m_fPostFx2AlphaE_ptr
41E4A4:  LDR             R3, [R3]; CTimeCycle::m_fPostFx2Alpha ...
41E4A6:  MLA.W           R3, R1, R4, R3
41E4AA:  STR             R3, [SP,#0x3C+var_34]
41E4AC:  LDR             R3, =(_ZN10CTimeCycle14m_fPostFx2BlueE_ptr - 0x41E4B2)
41E4AE:  ADD             R3, PC; _ZN10CTimeCycle14m_fPostFx2BlueE_ptr
41E4B0:  LDR             R3, [R3]; CTimeCycle::m_fPostFx2Blue ...
41E4B2:  MLA.W           R3, R1, R4, R3
41E4B6:  STR             R3, [SP,#0x3C+var_38]
41E4B8:  LDR             R3, =(_ZN10CTimeCycle15m_fPostFx2GreenE_ptr - 0x41E4BE)
41E4BA:  ADD             R3, PC; _ZN10CTimeCycle15m_fPostFx2GreenE_ptr
41E4BC:  LDR             R3, [R3]; CTimeCycle::m_fPostFx2Green ...
41E4BE:  MLA.W           R3, R1, R4, R3
41E4C2:  STR             R3, [SP,#0x3C+var_3C]
41E4C4:  VCVT.F32.U32    S0, S0
41E4C8:  LDR             R3, =(_ZN10CTimeCycle13m_fPostFx2RedE_ptr - 0x41E4CE)
41E4CA:  ADD             R3, PC; _ZN10CTimeCycle13m_fPostFx2RedE_ptr
41E4CC:  LDR             R3, [R3]; CTimeCycle::m_fPostFx2Red ...
41E4CE:  MLA.W           R11, R1, R4, R3
41E4D2:  LDR             R3, =(_ZN10CTimeCycle15m_fPostFx1AlphaE_ptr - 0x41E4DC)
41E4D4:  VSTR            S0, [R0,#0x68]
41E4D8:  ADD             R3, PC; _ZN10CTimeCycle15m_fPostFx1AlphaE_ptr
41E4DA:  LDR             R3, [R3]; CTimeCycle::m_fPostFx1Alpha ...
41E4DC:  MLA.W           R9, R1, R4, R3
41E4E0:  LDR             R3, =(_ZN10CTimeCycle14m_fPostFx1BlueE_ptr - 0x41E4E6)
41E4E2:  ADD             R3, PC; _ZN10CTimeCycle14m_fPostFx1BlueE_ptr
41E4E4:  LDR             R3, [R3]; CTimeCycle::m_fPostFx1Blue ...
41E4E6:  MLA.W           R8, R1, R4, R3
41E4EA:  LDR             R3, =(_ZN10CTimeCycle15m_fPostFx1GreenE_ptr - 0x41E4F0)
41E4EC:  ADD             R3, PC; _ZN10CTimeCycle15m_fPostFx1GreenE_ptr
41E4EE:  LDR             R3, [R3]; CTimeCycle::m_fPostFx1Green ...
41E4F0:  MLA.W           LR, R1, R4, R3
41E4F4:  LDR             R3, =(_ZN10CTimeCycle13m_fPostFx1RedE_ptr - 0x41E4FA)
41E4F6:  ADD             R3, PC; _ZN10CTimeCycle13m_fPostFx1RedE_ptr
41E4F8:  LDR             R3, [R3]; CTimeCycle::m_fPostFx1Red ...
41E4FA:  MLA.W           R12, R1, R4, R3
41E4FE:  LDR             R3, =(_ZN10CTimeCycle13m_fWaterGreenE_ptr - 0x41E504)
41E500:  ADD             R3, PC; _ZN10CTimeCycle13m_fWaterGreenE_ptr
41E502:  LDR             R3, [R3]; CTimeCycle::m_fWaterGreen ...
41E504:  MLA.W           R3, R1, R4, R3
41E508:  LDRB            R3, [R3,R2]
41E50A:  VMOV            S0, R3
41E50E:  VCVT.F32.U32    S0, S0
41E512:  VSTR            S0, [R0,#0x6C]
41E516:  LDRB            R3, [R5,R2]
41E518:  MOV.W           R5, #0x170
41E51C:  VMOV            S0, R3
41E520:  VCVT.F32.U32    S0, S0
41E524:  VSTR            S0, [R0,#0x70]
41E528:  LDRB.W          R3, [R10,R2]
41E52C:  VMOV            S0, R3
41E530:  VCVT.F32.U32    S0, S0
41E534:  VSTR            S0, [R0,#0x74]
41E538:  LDRB.W          R3, [R12,R2]
41E53C:  VMOV            S0, R3
41E540:  VCVT.F32.U32    S0, S0
41E544:  VSTR            S0, [R0,#0x78]
41E548:  LDRB.W          R3, [LR,R2]
41E54C:  VMOV            S0, R3
41E550:  VCVT.F32.U32    S0, S0
41E554:  VSTR            S0, [R0,#0x7C]
41E558:  LDRB.W          R3, [R8,R2]
41E55C:  VMOV            S0, R3
41E560:  VCVT.F32.U32    S0, S0
41E564:  VSTR            S0, [R0,#0x80]
41E568:  LDRB.W          R3, [R9,R2]
41E56C:  VMOV            S0, R3
41E570:  VCVT.F32.U32    S0, S0
41E574:  VSTR            S0, [R0,#0x84]
41E578:  LDRB.W          R3, [R11,R2]
41E57C:  VMOV            S0, R3
41E580:  VCVT.F32.U32    S0, S0
41E584:  VSTR            S0, [R0,#0x88]
41E588:  LDR             R3, [SP,#0x3C+var_3C]
41E58A:  LDRB            R3, [R3,R2]
41E58C:  VMOV            S0, R3
41E590:  VCVT.F32.U32    S0, S0
41E594:  VSTR            S0, [R0,#0x8C]
41E598:  LDR             R3, [SP,#0x3C+var_38]
41E59A:  LDRB            R3, [R3,R2]
41E59C:  VMOV            S0, R3
41E5A0:  VCVT.F32.U32    S0, S0
41E5A4:  VSTR            S0, [R0,#0x90]
41E5A8:  LDR             R3, [SP,#0x3C+var_34]
41E5AA:  LDRB            R3, [R3,R2]
41E5AC:  VMOV            S0, R3
41E5B0:  VCVT.F32.U32    S0, S0
41E5B4:  VSTR            S0, [R0,#0x94]
41E5B8:  LDR             R3, [SP,#0x3C+var_30]
41E5BA:  LDRB            R3, [R3,R2]
41E5BC:  VMOV            S0, R3
41E5C0:  VCVT.F32.U32    S0, S0
41E5C4:  B.W             loc_41E5CC
41E5C8:  DCFS 100.0
41E5CC:  VSTR            S0, [R0,#0x98]
41E5D0:  LDR             R3, [SP,#0x3C+var_2C]
41E5D2:  LDRB            R3, [R3,R2]
41E5D4:  STR.W           R3, [R0,#0x9C]
41E5D8:  LDR             R3, =(_ZN10CTimeCycle18m_nDirectionalMultE_ptr - 0x41E5E0)
41E5DA:  LDRB            R6, [R6,R2]
41E5DC:  ADD             R3, PC; _ZN10CTimeCycle18m_nDirectionalMultE_ptr
41E5DE:  STRH.W          R6, [R0,#0xA0]
41E5E2:  MOV.W           R6, #0x3F800000
41E5E6:  LDR             R3, [R3]; CTimeCycle::m_nDirectionalMult ...
41E5E8:  MLA.W           R3, R1, R4, R3
41E5EC:  LDR             R4, =(_ZN10CTimeCycle11m_vRedGradeE_ptr - 0x41E5F2)
41E5EE:  ADD             R4, PC; _ZN10CTimeCycle11m_vRedGradeE_ptr
41E5F0:  LDR             R4, [R4]; CTimeCycle::m_vRedGrade ...
41E5F2:  MLA.W           R4, R1, R5, R4
41E5F6:  LDRB            R3, [R3,R2]
41E5F8:  STR.W           R6, [R0,#0xA8]
41E5FC:  LDR             R6, =(_ZN10CTimeCycle12m_vBlueGradeE_ptr - 0x41E608)
41E5FE:  VMOV            S0, R3
41E602:  LDR             R3, =(_ZN10CTimeCycle13m_vGreenGradeE_ptr - 0x41E612)
41E604:  ADD             R6, PC; _ZN10CTimeCycle12m_vBlueGradeE_ptr
41E606:  ADD.W           R4, R4, R2,LSL#4
41E60A:  VCVT.F32.U32    S0, S0
41E60E:  ADD             R3, PC; _ZN10CTimeCycle13m_vGreenGradeE_ptr
41E610:  LDR             R6, [R6]; CTimeCycle::m_vBlueGrade ...
41E612:  MLA.W           R6, R1, R5, R6
41E616:  LDR             R3, [R3]; CTimeCycle::m_vGreenGrade ...
41E618:  MLA.W           R1, R1, R5, R3
41E61C:  VDIV.F32        S0, S0, S2
41E620:  ADD.W           R1, R1, R2,LSL#4
41E624:  VSTR            S0, [R0,#0xA4]
41E628:  LDR             R3, [SP,#0x3C+var_28]
41E62A:  VLD1.32         {D16-D17}, [R4]
41E62E:  VST1.32         {D16-D17}, [R3]
41E632:  ADD.W           R3, R6, R2,LSL#4
41E636:  VLD1.32         {D16-D17}, [R3]
41E63A:  LDR             R3, [SP,#0x3C+var_24]
41E63C:  VST1.32         {D16-D17}, [R3]
41E640:  VLD1.32         {D16-D17}, [R1]
41E644:  LDR             R1, [SP,#0x3C+var_20]
41E646:  VST1.32         {D16-D17}, [R1]
41E64A:  ADD             SP, SP, #0x20 ; ' '
41E64C:  POP.W           {R8-R11}
41E650:  POP             {R4-R7,PC}
