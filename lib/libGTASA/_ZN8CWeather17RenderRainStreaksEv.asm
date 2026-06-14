; =========================================================
; Game Engine Function: _ZN8CWeather17RenderRainStreaksEv
; Address            : 0x5CE294 - 0x5CE972
; =========================================================

5CE294:  PUSH            {R4-R7,LR}
5CE296:  ADD             R7, SP, #0xC
5CE298:  PUSH.W          {R8-R11}
5CE29C:  SUB             SP, SP, #4
5CE29E:  VPUSH           {D8-D15}
5CE2A2:  SUB             SP, SP, #0x40
5CE2A4:  LDR.W           R0, =(_ZN6CTimer11m_CodePauseE_ptr - 0x5CE2AC)
5CE2A8:  ADD             R0, PC; _ZN6CTimer11m_CodePauseE_ptr
5CE2AA:  LDR             R0, [R0]; CTimer::m_CodePause ...
5CE2AC:  LDRB            R0, [R0]; CTimer::m_CodePause
5CE2AE:  CBZ             R0, loc_5CE2BE
5CE2B0:  ADD             SP, SP, #0x40 ; '@'
5CE2B2:  VPOP            {D8-D15}
5CE2B6:  ADD             SP, SP, #4
5CE2B8:  POP.W           {R8-R11}
5CE2BC:  POP             {R4-R7,PC}
5CE2BE:  LDR.W           R0, =(_ZN10CTimeCycle14m_FogReductionE_ptr - 0x5CE2CA)
5CE2C2:  LDR.W           R1, =(_ZN8CWeather4RainE_ptr - 0x5CE2D0)
5CE2C6:  ADD             R0, PC; _ZN10CTimeCycle14m_FogReductionE_ptr
5CE2C8:  VLDR            S2, =110.0
5CE2CC:  ADD             R1, PC; _ZN8CWeather4RainE_ptr
5CE2CE:  VLDR            S6, =64.0
5CE2D2:  LDR             R0, [R0]; CTimeCycle::m_FogReduction ...
5CE2D4:  VLDR            S0, [R0]
5CE2D8:  LDR             R0, [R1]; CWeather::Rain ...
5CE2DA:  VCVT.F32.S32    S0, S0
5CE2DE:  VLDR            S4, [R0]
5CE2E2:  LDR.W           R0, =(_ZN8CWeather27CurrentRainParticleStrengthE_ptr - 0x5CE2F2)
5CE2E6:  VMUL.F32        S2, S4, S2
5CE2EA:  VLDR            S4, =0.015625
5CE2EE:  ADD             R0, PC; _ZN8CWeather27CurrentRainParticleStrengthE_ptr
5CE2F0:  VSUB.F32        S0, S6, S0
5CE2F4:  LDR             R0, [R0]; CWeather::CurrentRainParticleStrength ...
5CE2F6:  VCVT.S32.F32    S2, S2
5CE2FA:  VMUL.F32        S0, S0, S4
5CE2FE:  VCVT.F32.S32    S2, S2
5CE302:  LDR             R0, [R0]; CWeather::CurrentRainParticleStrength
5CE304:  VMUL.F32        S0, S0, S2
5CE308:  VCVT.S32.F32    S0, S0
5CE30C:  VMOV            R1, S0
5CE310:  CMP             R0, R1
5CE312:  BGE             loc_5CE320
5CE314:  LDR.W           R2, =(_ZN8CWeather27CurrentRainParticleStrengthE_ptr - 0x5CE31E)
5CE318:  ADDS            R0, #1
5CE31A:  ADD             R2, PC; _ZN8CWeather27CurrentRainParticleStrengthE_ptr
5CE31C:  LDR             R2, [R2]; CWeather::CurrentRainParticleStrength ...
5CE31E:  STR             R0, [R2]; CWeather::CurrentRainParticleStrength
5CE320:  CMP             R0, R1
5CE322:  BLE             loc_5CE330
5CE324:  LDR.W           R1, =(_ZN8CWeather27CurrentRainParticleStrengthE_ptr - 0x5CE32E)
5CE328:  SUBS            R0, #1; this
5CE32A:  ADD             R1, PC; _ZN8CWeather27CurrentRainParticleStrengthE_ptr
5CE32C:  LDR             R1, [R1]; CWeather::CurrentRainParticleStrength ...
5CE32E:  STR             R0, [R1]; CWeather::CurrentRainParticleStrength
5CE330:  LDR.W           R1, =(_ZN8CWeather27CurrentRainParticleStrengthE_ptr - 0x5CE33C)
5CE334:  CMP             R0, #0
5CE336:  MOV             R2, R0
5CE338:  ADD             R1, PC; _ZN8CWeather27CurrentRainParticleStrengthE_ptr
5CE33A:  IT LE
5CE33C:  MOVLE           R2, #0
5CE33E:  CMP             R0, #1
5CE340:  LDR             R1, [R1]; CWeather::CurrentRainParticleStrength ...
5CE342:  STR             R2, [R1]; CWeather::CurrentRainParticleStrength
5CE344:  BLT             loc_5CE2B0
5CE346:  BLX.W           j__ZN10CCullZones9CamNoRainEv; CCullZones::CamNoRain(void)
5CE34A:  CMP             R0, #0
5CE34C:  BNE             loc_5CE2B0
5CE34E:  BLX.W           j__ZN10CCullZones12PlayerNoRainEv; CCullZones::PlayerNoRain(void)
5CE352:  CMP             R0, #0
5CE354:  BNE             loc_5CE2B0
5CE356:  LDR.W           R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x5CE35E)
5CE35A:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr
5CE35C:  LDR             R0, [R0]; CWeather::UnderWaterness ...
5CE35E:  VLDR            S0, [R0]
5CE362:  VCMPE.F32       S0, #0.0
5CE366:  VMRS            APSR_nzcv, FPSCR
5CE36A:  BGT             loc_5CE2B0
5CE36C:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x5CE374)
5CE370:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
5CE372:  LDR             R0, [R0]; CGame::currArea ...
5CE374:  LDR             R0, [R0]; CGame::currArea
5CE376:  CMP             R0, #0
5CE378:  BNE             loc_5CE2B0
5CE37A:  LDR.W           R0, =(TheCamera_ptr - 0x5CE386)
5CE37E:  VLDR            S0, =900.0
5CE382:  ADD             R0, PC; TheCamera_ptr
5CE384:  LDR             R0, [R0]; TheCamera
5CE386:  LDR             R4, [R0,#(dword_951FBC - 0x951FA8)]
5CE388:  ADD.W           R1, R4, #0x30 ; '0'
5CE38C:  CMP             R4, #0
5CE38E:  IT EQ
5CE390:  ADDEQ           R1, R0, #4
5CE392:  VLDR            S2, [R1,#8]
5CE396:  VCMPE.F32       S2, S0
5CE39A:  VMRS            APSR_nzcv, FPSCR
5CE39E:  BGT.W           loc_5CE2B0
5CE3A2:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5CE3B4)
5CE3A6:  MOVS            R3, #0
5CE3A8:  LDR.W           R1, =(TempBufferIndicesStored_ptr - 0x5CE3B6)
5CE3AC:  LDR.W           R2, =(byte_A7D208 - 0x5CE3B8)
5CE3B0:  ADD             R0, PC; TempBufferVerticesStored_ptr
5CE3B2:  ADD             R1, PC; TempBufferIndicesStored_ptr
5CE3B4:  ADD             R2, PC; byte_A7D208
5CE3B6:  LDR             R0, [R0]; TempBufferVerticesStored
5CE3B8:  LDR             R1, [R1]; TempBufferIndicesStored
5CE3BA:  LDRB            R2, [R2]
5CE3BC:  STR             R3, [R0]
5CE3BE:  CMP             R2, #0
5CE3C0:  STR             R3, [R1]
5CE3C2:  BNE             loc_5CE424
5CE3C4:  LDR.W           R0, =(_ZN8CWeather27CurrentRainParticleStrengthE_ptr - 0x5CE3D2)
5CE3C8:  MOVS            R2, #1
5CE3CA:  LDR.W           R1, =(byte_A7D208 - 0x5CE3D4)
5CE3CE:  ADD             R0, PC; _ZN8CWeather27CurrentRainParticleStrengthE_ptr
5CE3D0:  ADD             R1, PC; byte_A7D208
5CE3D2:  LDR             R0, [R0]; CWeather::CurrentRainParticleStrength ...
5CE3D4:  VLDR            S0, [R0]
5CE3D8:  LDR.W           R0, =(unk_6B2560 - 0x5CE3E6)
5CE3DC:  VCVT.F32.S32    S16, S0
5CE3E0:  STRB            R2, [R1]
5CE3E2:  ADD             R0, PC; unk_6B2560
5CE3E4:  MOV.W           R1, #0x200
5CE3E8:  BLX.W           j___aeabi_memclr8
5CE3EC:  LDR.W           R0, =(unk_6B2760 - 0x5CE3F8)
5CE3F0:  MOV.W           R1, #0x200
5CE3F4:  ADD             R0, PC; unk_6B2760
5CE3F6:  BLX.W           j___aeabi_memclr8
5CE3FA:  LDR.W           R0, =(unk_6B2960 - 0x5CE406)
5CE3FE:  MOV.W           R1, #0x200
5CE402:  ADD             R0, PC; unk_6B2960
5CE404:  BLX.W           j___aeabi_memclr8
5CE408:  VLDR            S0, =0.6
5CE40C:  MOVS            R1, #0x80
5CE40E:  LDR.W           R0, =(unk_6B2B60 - 0x5CE41A)
5CE412:  VMUL.F32        S0, S16, S0
5CE416:  ADD             R0, PC; unk_6B2B60
5CE418:  VCVT.U32.F32    S0, S0
5CE41C:  VMOV            R2, S0
5CE420:  BLX.W           j___aeabi_memset8_1
5CE424:  LDR.W           R0, =(TheCamera_ptr - 0x5CE438)
5CE428:  VMOV.F32        S16, #6.0
5CE42C:  LDR.W           R1, =(TempBufferRenderIndexList_ptr - 0x5CE442)
5CE430:  VMOV.F32        S20, #5.0
5CE434:  ADD             R0, PC; TheCamera_ptr
5CE436:  LDR.W           R2, =(TempBufferIndicesStored_ptr - 0x5CE446)
5CE43A:  LDR.W           R3, =(TempBufferVerticesStored_ptr - 0x5CE44A)
5CE43E:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5CE440:  LDR             R0, [R0]; TheCamera
5CE442:  ADD             R2, PC; TempBufferIndicesStored_ptr
5CE444:  STR             R0, [SP,#0xA0+var_6C]
5CE446:  ADD             R3, PC; TempBufferVerticesStored_ptr
5CE448:  LDR.W           R0, =(TheCamera_ptr - 0x5CE45C)
5CE44C:  VMOV.F32        S22, #-2.5
5CE450:  VMOV.F32        S27, #3.0
5CE454:  VLDR            S18, =4.6566e-10
5CE458:  ADD             R0, PC; TheCamera_ptr
5CE45A:  VLDR            S30, =0.1
5CE45E:  VLDR            S28, =0.4
5CE462:  MOV.W           R11, #0
5CE466:  LDR             R0, [R0]; TheCamera
5CE468:  STR             R0, [SP,#0xA0+var_8C]
5CE46A:  LDR.W           R0, =(_ZN8CWeather27CurrentRainParticleStrengthE_ptr - 0x5CE476)
5CE46E:  VLDR            S17, =-0.2
5CE472:  ADD             R0, PC; _ZN8CWeather27CurrentRainParticleStrengthE_ptr
5CE474:  VLDR            S25, =0.000015259
5CE478:  LDR             R0, [R0]; CWeather::CurrentRainParticleStrength ...
5CE47A:  STR             R0, [SP,#0xA0+var_90]
5CE47C:  LDR.W           R0, =(_ZN8CWeather4RainE_ptr - 0x5CE484)
5CE480:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
5CE482:  LDR             R0, [R0]; CWeather::Rain ...
5CE484:  STR             R0, [SP,#0xA0+var_94]
5CE486:  LDR.W           R0, =(_ZN8CWeather4WindE_ptr - 0x5CE48E)
5CE48A:  ADD             R0, PC; _ZN8CWeather4WindE_ptr
5CE48C:  LDR             R0, [R0]; CWeather::Wind ...
5CE48E:  STR             R0, [SP,#0xA0+var_98]
5CE490:  LDR.W           R0, =(_ZN8CWeather7WindDirE_ptr - 0x5CE498)
5CE494:  ADD             R0, PC; _ZN8CWeather7WindDirE_ptr
5CE496:  LDR             R0, [R0]; CWeather::WindDir ...
5CE498:  STR             R0, [SP,#0xA0+var_70]
5CE49A:  LDR             R0, [R1]; TempBufferRenderIndexList
5CE49C:  STR             R0, [SP,#0xA0+var_74]
5CE49E:  LDR             R0, [R2]; TempBufferIndicesStored
5CE4A0:  STR             R0, [SP,#0xA0+var_78]
5CE4A2:  LDR             R0, [R3]; TempBufferVerticesStored
5CE4A4:  STR             R0, [SP,#0xA0+var_7C]
5CE4A6:  LDR.W           R0, =(TempVertexBuffer_ptr - 0x5CE4AE)
5CE4AA:  ADD             R0, PC; TempVertexBuffer_ptr
5CE4AC:  LDR             R0, [R0]; TempVertexBuffer
5CE4AE:  STR             R0, [SP,#0xA0+var_80]
5CE4B0:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5CE4B8)
5CE4B4:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5CE4B6:  LDR             R0, [R0]; MobileSettings::settings ...
5CE4B8:  STR             R0, [SP,#0xA0+var_84]
5CE4BA:  LDR.W           R0, =(TheCamera_ptr - 0x5CE4C2)
5CE4BE:  ADD             R0, PC; TheCamera_ptr
5CE4C0:  LDR             R0, [R0]; TheCamera
5CE4C2:  STR             R0, [SP,#0xA0+var_88]
5CE4C4:  LDR.W           R0, =(_ZN8CWeather4WindE_ptr - 0x5CE4CC)
5CE4C8:  ADD             R0, PC; _ZN8CWeather4WindE_ptr
5CE4CA:  LDR             R0, [R0]; CWeather::Wind ...
5CE4CC:  STR             R0, [SP,#0xA0+var_9C]
5CE4CE:  LDRD.W          R9, R8, [SP,#0xA0+var_7C]
5CE4D2:  B               loc_5CE4D8
5CE4D4:  LDR             R0, [SP,#0xA0+var_88]
5CE4D6:  LDR             R4, [R0,#0x14]
5CE4D8:  LDR.W           R1, =(unk_6B2960 - 0x5CE4E6)
5CE4DC:  CMP             R4, #0
5CE4DE:  LDR.W           R0, =(unk_6B2760 - 0x5CE4E8)
5CE4E2:  ADD             R1, PC; unk_6B2960
5CE4E4:  ADD             R0, PC; unk_6B2760
5CE4E6:  LDR.W           R10, [R1,R11,LSL#2]
5CE4EA:  LDR.W           R1, =(unk_6B2560 - 0x5CE4F6)
5CE4EE:  LDR.W           R0, [R0,R11,LSL#2]
5CE4F2:  ADD             R1, PC; unk_6B2560
5CE4F4:  ADD.W           R1, R1, R11,LSL#2
5CE4F8:  VMOV            S0, R10
5CE4FC:  VMOV            S2, R0
5CE500:  VLDR            S4, [R1]
5CE504:  VCVT.F32.S32    S0, S0
5CE508:  VCVT.F32.S32    S2, S2
5CE50C:  ADD.W           R1, R4, #0x30 ; '0'
5CE510:  VCVT.F32.S32    S4, S4
5CE514:  LDR             R2, [SP,#0xA0+var_6C]
5CE516:  IT EQ
5CE518:  ADDEQ           R1, R2, #4
5CE51A:  CMP.W           R10, #1
5CE51E:  VLDR            S24, [R1]
5CE522:  BLT             loc_5CE56C
5CE524:  LDR.W           R2, =(unk_6B2B60 - 0x5CE52C)
5CE528:  ADD             R2, PC; unk_6B2B60
5CE52A:  LDRB.W          R2, [R2,R11]
5CE52E:  CBZ             R2, loc_5CE56C
5CE530:  VLDR            S6, [R1,#4]
5CE534:  VSUB.F32        S2, S2, S24
5CE538:  VLDR            S8, [R1,#8]
5CE53C:  VSUB.F32        S4, S4, S6
5CE540:  VSUB.F32        S0, S0, S8
5CE544:  VMUL.F32        S2, S2, S2
5CE548:  VMUL.F32        S4, S4, S4
5CE54C:  VMUL.F32        S0, S0, S0
5CE550:  VADD.F32        S2, S2, S4
5CE554:  VADD.F32        S0, S2, S0
5CE558:  VMOV.F32        S2, #8.0
5CE55C:  VSQRT.F32       S0, S0
5CE560:  VCMPE.F32       S0, S2
5CE564:  VMRS            APSR_nzcv, FPSCR
5CE568:  BLE.W           loc_5CE670
5CE56C:  LDR             R5, [SP,#0xA0+var_8C]
5CE56E:  ADDW            R0, R5, #0x90C
5CE572:  VLDR            S26, [R0]
5CE576:  BLX.W           rand
5CE57A:  VMOV            S0, R0
5CE57E:  LDR.W           R6, =(unk_6B2760 - 0x5CE592)
5CE582:  VMUL.F32        S2, S26, S16
5CE586:  ADD.W           R1, R5, #0x910
5CE58A:  VCVT.F32.S32    S0, S0
5CE58E:  ADD             R6, PC; unk_6B2760
5CE590:  ADDS            R4, R5, #4
5CE592:  VADD.F32        S2, S24, S2
5CE596:  VMUL.F32        S0, S0, S18
5CE59A:  VMUL.F32        S0, S0, S20
5CE59E:  VADD.F32        S0, S0, S22
5CE5A2:  VADD.F32        S0, S2, S0
5CE5A6:  VCVT.S32.F32    S0, S0
5CE5AA:  VLDR            S24, [R1]
5CE5AE:  MOV             R1, R4
5CE5B0:  VMOV            R0, S0
5CE5B4:  STR.W           R0, [R6,R11,LSL#2]
5CE5B8:  LDR             R0, [R5,#0x14]
5CE5BA:  CMP             R0, #0
5CE5BC:  IT NE
5CE5BE:  ADDNE.W         R1, R0, #0x30 ; '0'
5CE5C2:  VLDR            S26, [R1,#4]
5CE5C6:  BLX.W           rand
5CE5CA:  VMOV            S0, R0
5CE5CE:  LDR.W           R1, =(unk_6B2560 - 0x5CE5DE)
5CE5D2:  VMUL.F32        S2, S24, S16
5CE5D6:  VCVT.F32.S32    S0, S0
5CE5DA:  ADD             R1, PC; unk_6B2560
5CE5DC:  VADD.F32        S2, S26, S2
5CE5E0:  VMUL.F32        S0, S0, S18
5CE5E4:  VMUL.F32        S0, S0, S20
5CE5E8:  VADD.F32        S0, S0, S22
5CE5EC:  VADD.F32        S0, S2, S0
5CE5F0:  VCVT.S32.F32    S0, S0
5CE5F4:  VMOV            R0, S0
5CE5F8:  STR.W           R0, [R1,R11,LSL#2]
5CE5FC:  ADDW            R1, R5, #0x914
5CE600:  LDR             R0, [R5,#0x14]
5CE602:  VLDR            S24, [R1]
5CE606:  CMP             R0, #0
5CE608:  IT NE
5CE60A:  ADDNE.W         R4, R0, #0x30 ; '0'
5CE60E:  VLDR            S26, [R4,#8]
5CE612:  BLX.W           rand
5CE616:  VMOV            S0, R0
5CE61A:  LDR.W           R0, =(unk_6B2960 - 0x5CE62E)
5CE61E:  VMUL.F32        S2, S24, S16
5CE622:  LDR.W           R1, =(unk_6B2B60 - 0x5CE630)
5CE626:  VCVT.F32.S32    S0, S0
5CE62A:  ADD             R0, PC; unk_6B2960
5CE62C:  ADD             R1, PC; unk_6B2B60
5CE62E:  VADD.F32        S2, S26, S2
5CE632:  VMUL.F32        S0, S0, S18
5CE636:  VMUL.F32        S0, S0, S20
5CE63A:  VADD.F32        S0, S0, S22
5CE63E:  VADD.F32        S0, S2, S0
5CE642:  VLDR            S2, =0.6
5CE646:  VCVT.S32.F32    S0, S0
5CE64A:  VMOV            R10, S0
5CE64E:  STR.W           R10, [R0,R11,LSL#2]
5CE652:  LDR             R0, [SP,#0xA0+var_90]
5CE654:  VLDR            S0, [R0]
5CE658:  VCVT.F32.S32    S0, S0
5CE65C:  VMUL.F32        S0, S0, S2
5CE660:  VCVT.U32.F32    S0, S0
5CE664:  VMOV            R0, S0
5CE668:  STRB.W          R0, [R1,R11]
5CE66C:  LDR.W           R0, [R6,R11,LSL#2]
5CE670:  VMOV            S0, R0
5CE674:  MOVS.W          R0, R11,LSL#31
5CE678:  VCVT.F32.S32    S31, S0
5CE67C:  BNE             loc_5CE6B8
5CE67E:  LDR             R0, [SP,#0xA0+var_94]
5CE680:  VLDR            S0, [R0]
5CE684:  LDR             R0, [SP,#0xA0+var_98]
5CE686:  VMUL.F32        S24, S0, S30
5CE68A:  VLDR            S26, [R0]
5CE68E:  B               loc_5CE6C2
5CE690:  DCFS 110.0
5CE694:  DCFS 64.0
5CE698:  DCFS 0.015625
5CE69C:  DCFS 900.0
5CE6A0:  DCFS 0.6
5CE6A4:  DCFS 4.6566e-10
5CE6A8:  DCFS 0.1
5CE6AC:  DCFS 0.4
5CE6B0:  DCFS -0.2
5CE6B4:  DCFS 0.000015259
5CE6B8:  LDR             R0, [SP,#0xA0+var_9C]
5CE6BA:  VMOV.F32        S26, S30
5CE6BE:  VLDR            S24, [R0]
5CE6C2:  LDR             R0, =(unk_6B2560 - 0x5CE6C8)
5CE6C4:  ADD             R0, PC; unk_6B2560
5CE6C6:  ADD.W           R4, R0, R11,LSL#2
5CE6CA:  LDR             R0, [SP,#0xA0+var_70]
5CE6CC:  VLDR            S0, [R4]
5CE6D0:  VLDR            S19, [R0]
5CE6D4:  VLDR            S21, [R0,#4]
5CE6D8:  VLDR            S23, [R0,#8]
5CE6DC:  VCVT.F32.S32    S29, S0
5CE6E0:  BLX.W           rand
5CE6E4:  STR             R0, [SP,#0xA0+var_64]
5CE6E6:  LDR.W           R0, [R8]
5CE6EA:  LDR             R2, [SP,#0xA0+var_74]
5CE6EC:  LDR.W           R1, [R9]
5CE6F0:  STRH.W          R1, [R2,R0,LSL#1]
5CE6F4:  ADD.W           R0, R2, R0,LSL#1
5CE6F8:  ADDS            R1, #1
5CE6FA:  STRH            R1, [R0,#2]
5CE6FC:  BLX.W           rand
5CE700:  STR             R0, [SP,#0xA0+var_68]
5CE702:  BLX.W           rand
5CE706:  MOV             R6, R0
5CE708:  BLX.W           rand
5CE70C:  LDR.W           R12, [R9]
5CE710:  VMOV            S8, R0
5CE714:  LDR             R1, [SP,#0xA0+var_80]
5CE716:  VMUL.F32        S1, S26, S24
5CE71A:  VLDR            S2, [R4]
5CE71E:  VMOV            S10, R6
5CE722:  ADD.W           R2, R12, R12,LSL#3
5CE726:  VMOV            S6, R10
5CE72A:  ADD.W           R2, R1, R2,LSL#2
5CE72E:  LDR             R1, =(unk_6B2B60 - 0x5CE734)
5CE730:  ADD             R1, PC; unk_6B2B60
5CE732:  VMUL.F32        S3, S1, S23
5CE736:  LDRB.W          R3, [R1,R11]
5CE73A:  MOV             R1, #0xE6D2D2
5CE742:  MOV             R5, R1
5CE744:  VMUL.F32        S5, S1, S21
5CE748:  ORR.W           R1, R5, R3,LSL#24
5CE74C:  STR             R1, [R2,#0x18]
5CE74E:  MOV.W           R1, #0x7F000000
5CE752:  VMUL.F32        S1, S1, S19
5CE756:  AND.W           R1, R1, R3,LSL#23
5CE75A:  LDR             R3, =(unk_6B2760 - 0x5CE764)
5CE75C:  ORRS            R1, R5
5CE75E:  LDR             R5, =(unk_6B2960 - 0x5CE766)
5CE760:  ADD             R3, PC; unk_6B2760
5CE762:  ADD             R5, PC; unk_6B2960
5CE764:  ADD.W           R3, R3, R11,LSL#2
5CE768:  ADD.W           R4, R5, R11,LSL#2
5CE76C:  VLDR            S0, [R3]
5CE770:  VLDR            S4, [R4]
5CE774:  VSUB.F32        S1, S31, S1
5CE778:  VCVT.F32.S32    S4, S4
5CE77C:  VCVT.F32.S32    S2, S2
5CE780:  VCVT.F32.S32    S0, S0
5CE784:  LDR             R0, [SP,#0xA0+var_68]
5CE786:  STR             R1, [R2,#0x3C]
5CE788:  VMOV            S12, R0
5CE78C:  LDR             R0, [SP,#0xA0+var_64]
5CE78E:  VMOV            S14, R0
5CE792:  ADD.W           R0, R12, #2
5CE796:  VCVT.F32.S32    S14, S14
5CE79A:  VCVT.F32.S32    S12, S12
5CE79E:  VCVT.F32.S32    S10, S10
5CE7A2:  VCVT.F32.S32    S8, S8
5CE7A6:  VCVT.F32.S32    S6, S6
5CE7AA:  LDR.W           R1, [R8]
5CE7AE:  STR.W           R0, [R9]
5CE7B2:  ADDS            R0, R1, #2
5CE7B4:  STR.W           R0, [R8]
5CE7B8:  VMUL.F32        S14, S14, S18
5CE7BC:  VMUL.F32        S12, S12, S18
5CE7C0:  VMUL.F32        S10, S10, S18
5CE7C4:  VMUL.F32        S8, S8, S18
5CE7C8:  VSUB.F32        S6, S6, S3
5CE7CC:  VLDR            S3, =0.2
5CE7D0:  VMUL.F32        S14, S14, S28
5CE7D4:  VMUL.F32        S12, S12, S28
5CE7D8:  VMUL.F32        S10, S10, S28
5CE7DC:  VMUL.F32        S8, S8, S3
5CE7E0:  VSUB.F32        S3, S29, S5
5CE7E4:  VLDR            S5, =-0.1
5CE7E8:  VADD.F32        S14, S14, S30
5CE7EC:  VADD.F32        S12, S12, S17
5CE7F0:  VADD.F32        S10, S10, S17
5CE7F4:  VADD.F32        S8, S8, S5
5CE7F8:  VADD.F32        S6, S6, S14
5CE7FC:  VADD.F32        S0, S12, S0
5CE800:  VADD.F32        S2, S10, S2
5CE804:  VADD.F32        S12, S1, S12
5CE808:  VADD.F32        S10, S3, S10
5CE80C:  VADD.F32        S4, S8, S4
5CE810:  VADD.F32        S6, S6, S8
5CE814:  VSTR            S0, [R2]
5CE818:  VSTR            S2, [R2,#4]
5CE81C:  VSTR            S4, [R2,#8]
5CE820:  VSTR            S12, [R2,#0x24]
5CE824:  VSTR            S10, [R2,#0x28]
5CE828:  VSTR            S6, [R2,#0x2C]
5CE82C:  BLX.W           rand
5CE830:  VMOV            S0, R0
5CE834:  VLDR            S2, =0.09
5CE838:  VLDR            S4, =0.01
5CE83C:  VCVT.F32.S32    S0, S0
5CE840:  VMUL.F32        S0, S0, S18
5CE844:  VMUL.F32        S0, S0, S2
5CE848:  VLDR            S2, [R4]
5CE84C:  VCVT.F32.S32    S2, S2
5CE850:  VADD.F32        S0, S0, S4
5CE854:  VSUB.F32        S0, S2, S0
5CE858:  VCVT.S32.F32    S0, S0
5CE85C:  VMOV            R0, S0
5CE860:  STR.W           R0, [R5,R11,LSL#2]
5CE864:  BLX.W           rand
5CE868:  UXTH            R0, R0
5CE86A:  LDR             R2, =(unk_6B2B60 - 0x5CE874)
5CE86C:  VMOV            S0, R0
5CE870:  ADD             R2, PC; unk_6B2B60
5CE872:  VCVT.F32.S32    S0, S0
5CE876:  LDRB.W          R0, [R2,R11]
5CE87A:  VMUL.F32        S0, S0, S25
5CE87E:  VMUL.F32        S0, S0, S27
5CE882:  VCVT.S32.F32    S0, S0
5CE886:  VMOV            R1, S0
5CE88A:  ADDS            R1, #2
5CE88C:  SUBS            R0, R0, R1
5CE88E:  MOV.W           R1, #0
5CE892:  IT LE
5CE894:  MOVLE           R0, R1
5CE896:  STRB.W          R0, [R2,R11]
5CE89A:  LDR             R0, [SP,#0xA0+var_84]
5CE89C:  LDR             R0, [R0,#8]
5CE89E:  CMP             R0, #0
5CE8A0:  IT EQ
5CE8A2:  ADDEQ.W         R11, R11, #1
5CE8A6:  ADD.W           R11, R11, #1
5CE8AA:  CMP.W           R11, #0x7F
5CE8AE:  BLE.W           loc_5CE4D4
5CE8B2:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5CE8B8)
5CE8B4:  ADD             R0, PC; TempBufferIndicesStored_ptr
5CE8B6:  LDR             R0, [R0]; TempBufferIndicesStored
5CE8B8:  LDR             R0, [R0]
5CE8BA:  CMP             R0, #0
5CE8BC:  BEQ             loc_5CE95E
5CE8BE:  MOVS            R0, #8
5CE8C0:  MOVS            R1, #0
5CE8C2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE8C6:  MOVS            R0, #6
5CE8C8:  MOVS            R1, #1
5CE8CA:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE8CE:  MOVS            R0, #0xE
5CE8D0:  MOVS            R1, #0
5CE8D2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE8D6:  MOVS            R0, #0x10
5CE8D8:  MOVS            R1, #1
5CE8DA:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE8DE:  MOVS            R0, #0xA
5CE8E0:  MOVS            R1, #5
5CE8E2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE8E6:  MOVS            R0, #0xB
5CE8E8:  MOVS            R1, #6
5CE8EA:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE8EE:  MOVS            R0, #0xC
5CE8F0:  MOVS            R1, #1
5CE8F2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE8F6:  MOVS            R0, #1
5CE8F8:  MOVS            R1, #0
5CE8FA:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE8FE:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5CE908)
5CE900:  MOVS            R3, #8
5CE902:  LDR             R2, =(TempVertexBuffer_ptr - 0x5CE90A)
5CE904:  ADD             R0, PC; TempBufferVerticesStored_ptr
5CE906:  ADD             R2, PC; TempVertexBuffer_ptr
5CE908:  LDR             R0, [R0]; TempBufferVerticesStored
5CE90A:  LDR             R1, [R0]
5CE90C:  LDR             R0, [R2]; TempVertexBuffer
5CE90E:  MOVS            R2, #0
5CE910:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5CE914:  CBZ             R0, loc_5CE92E
5CE916:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5CE91E)
5CE918:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5CE920)
5CE91A:  ADD             R0, PC; TempBufferIndicesStored_ptr
5CE91C:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5CE91E:  LDR             R0, [R0]; TempBufferIndicesStored
5CE920:  LDR             R1, [R1]; TempBufferRenderIndexList
5CE922:  LDR             R2, [R0]
5CE924:  MOVS            R0, #1
5CE926:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5CE92A:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5CE92E:  MOVS            R0, #8
5CE930:  MOVS            R1, #1
5CE932:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE936:  MOVS            R0, #6
5CE938:  MOVS            R1, #1
5CE93A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE93E:  MOVS            R0, #0xA
5CE940:  MOVS            R1, #5
5CE942:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE946:  MOVS            R0, #0xB
5CE948:  MOVS            R1, #6
5CE94A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE94E:  MOVS            R0, #0xE
5CE950:  MOVS            R1, #0
5CE952:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE956:  MOVS            R0, #0xC
5CE958:  MOVS            R1, #0
5CE95A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CE95E:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5CE968)
5CE960:  MOVS            R2, #0
5CE962:  LDR             R1, =(TempBufferIndicesStored_ptr - 0x5CE96A)
5CE964:  ADD             R0, PC; TempBufferVerticesStored_ptr
5CE966:  ADD             R1, PC; TempBufferIndicesStored_ptr
5CE968:  LDR             R0, [R0]; TempBufferVerticesStored
5CE96A:  LDR             R1, [R1]; TempBufferIndicesStored
5CE96C:  STR             R2, [R0]
5CE96E:  STR             R2, [R1]
5CE970:  B               loc_5CE2B0
