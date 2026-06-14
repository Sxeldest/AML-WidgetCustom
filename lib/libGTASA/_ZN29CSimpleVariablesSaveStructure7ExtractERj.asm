; =========================================================
; Game Engine Function: _ZN29CSimpleVariablesSaveStructure7ExtractERj
; Address            : 0x484198 - 0x484480
; =========================================================

484198:  PUSH            {R4-R7,LR}
48419A:  ADD             R7, SP, #0xC
48419C:  PUSH.W          {R11}
4841A0:  MOV             R4, R0
4841A2:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x4841AC)
4841A4:  LDR.W           R12, =(TheCamera_ptr - 0x4841B2)
4841A8:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
4841AA:  LDR             R2, =(_ZN5CGame9currLevelE_ptr - 0x4841B6)
4841AC:  LDR             R3, [R4]
4841AE:  ADD             R12, PC; TheCamera_ptr
4841B0:  LDR             R0, [R0]; CGame::bMissionPackGame ...
4841B2:  ADD             R2, PC; _ZN5CGame9currLevelE_ptr
4841B4:  STR             R3, [R1]
4841B6:  LDRB.W          R1, [R4,#0xCC]
4841BA:  STRB            R1, [R0]; CGame::bMissionPackGame
4841BC:  LDR.W           R0, [R12]; TheCamera
4841C0:  LDR.W           LR, [R2]; CGame::currLevel ...
4841C4:  LDRD.W          R5, R1, [R4,#0xD0]; float
4841C8:  ADDW            R0, R0, #0x8FC; this
4841CC:  LDRD.W          R2, R3, [R4,#0xD8]; float
4841D0:  STR.W           R5, [LR]; CGame::currLevel
4841D4:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
4841D8:  LDR             R0, =(_ZN6CClock29ms_nMillisecondsPerGameMinuteE_ptr - 0x4841E0)
4841DA:  LDR             R1, =(_ZN6CClock17ms_nLastClockTickE_ptr - 0x4841E4)
4841DC:  ADD             R0, PC; _ZN6CClock29ms_nMillisecondsPerGameMinuteE_ptr
4841DE:  LDR             R2, =(_ZN6CClock19ms_nGameClockMonthsE_ptr - 0x4841EC)
4841E0:  ADD             R1, PC; _ZN6CClock17ms_nLastClockTickE_ptr
4841E2:  LDR.W           R12, =(_ZN6CClock17ms_nGameClockDaysE_ptr - 0x4841F0)
4841E6:  LDR             R0, [R0]; CClock::ms_nMillisecondsPerGameMinute ...
4841E8:  ADD             R2, PC; _ZN6CClock19ms_nGameClockMonthsE_ptr
4841EA:  LDR             R1, [R1]; CClock::ms_nLastClockTick ...
4841EC:  ADD             R12, PC; _ZN6CClock17ms_nGameClockDaysE_ptr
4841EE:  LDRD.W          R3, R5, [R4,#0xE0]
4841F2:  STR             R3, [R0]; CClock::ms_nMillisecondsPerGameMinute
4841F4:  LDR             R0, [R2]; CClock::ms_nGameClockMonths ...
4841F6:  LDR             R2, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x484202)
4841F8:  STR             R5, [R1]; CClock::ms_nLastClockTick
4841FA:  LDRB.W          R1, [R4,#0xE8]
4841FE:  ADD             R2, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
484200:  LDR             R5, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x48420C)
484202:  LDR.W           R3, [R12]; CClock::ms_nGameClockDays ...
484206:  STRB            R1, [R0]; CClock::ms_nGameClockMonths
484208:  ADD             R5, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
48420A:  LDRB.W          R0, [R4,#0xE9]
48420E:  LDR             R1, [R2]; CClock::ms_nGameClockHours ...
484210:  LDR             R2, =(_ZN6CClock10CurrentDayE_ptr - 0x48421C)
484212:  STRB            R0, [R3]; CClock::ms_nGameClockDays
484214:  LDRB.W          R0, [R4,#0xEA]
484218:  ADD             R2, PC; _ZN6CClock10CurrentDayE_ptr
48421A:  LDR             R3, [R5]; CClock::ms_nGameClockMinutes ...
48421C:  LDR             R5, =(_ZN6CClock26ms_Stored_nGameClockMonthsE_ptr - 0x484228)
48421E:  STRB            R0, [R1]; CClock::ms_nGameClockHours
484220:  LDRB.W          R0, [R4,#0xEB]
484224:  ADD             R5, PC; _ZN6CClock26ms_Stored_nGameClockMonthsE_ptr
484226:  LDR             R1, [R2]; CClock::CurrentDay ...
484228:  LDR             R2, =(_ZN6CClock24ms_Stored_nGameClockDaysE_ptr - 0x484234)
48422A:  STRB            R0, [R3]; CClock::ms_nGameClockMinutes
48422C:  LDRB.W          R0, [R4,#0xEC]
484230:  ADD             R2, PC; _ZN6CClock24ms_Stored_nGameClockDaysE_ptr
484232:  LDR             R3, [R5]; CClock::ms_Stored_nGameClockMonths ...
484234:  LDR             R5, =(_ZN6CClock25ms_Stored_nGameClockHoursE_ptr - 0x484240)
484236:  STRB            R0, [R1]; CClock::CurrentDay
484238:  LDRB.W          R0, [R4,#0xED]
48423C:  ADD             R5, PC; _ZN6CClock25ms_Stored_nGameClockHoursE_ptr
48423E:  LDR             R1, [R2]; CClock::ms_Stored_nGameClockDays ...
484240:  LDR             R2, =(_ZN6CClock27ms_Stored_nGameClockMinutesE_ptr - 0x48424C)
484242:  STRB            R0, [R3]; CClock::ms_Stored_nGameClockMonths
484244:  LDRB.W          R0, [R4,#0xEE]
484248:  ADD             R2, PC; _ZN6CClock27ms_Stored_nGameClockMinutesE_ptr
48424A:  LDR             R3, [R5]; CClock::ms_Stored_nGameClockHours ...
48424C:  STRB            R0, [R1]; CClock::ms_Stored_nGameClockDays
48424E:  LDRB.W          R0, [R4,#0xEF]
484252:  LDR             R1, [R2]; CClock::ms_Stored_nGameClockMinutes ...
484254:  LDR.W           R12, =(_ZN6CClock19bClockHasBeenStoredE_ptr - 0x484262)
484258:  STRB            R0, [R3]; CClock::ms_Stored_nGameClockHours
48425A:  LDRB.W          R0, [R4,#0xF0]
48425E:  ADD             R12, PC; _ZN6CClock19bClockHasBeenStoredE_ptr
484260:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x48426A)
484262:  LDR             R5, =(_ZN6CCheat19m_bHasPlayerCheatedE_ptr - 0x484270)
484264:  STRB            R0, [R1]; CClock::ms_Stored_nGameClockMinutes
484266:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
484268:  LDRB.W          R0, [R4,#0xF1]
48426C:  ADD             R5, PC; _ZN6CCheat19m_bHasPlayerCheatedE_ptr
48426E:  LDR.W           R3, [R12]; CClock::bClockHasBeenStored ...
484272:  CMP             R0, #0
484274:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds ...
484276:  IT NE
484278:  MOVNE           R0, #1
48427A:  LDR             R2, [R5]; CCheat::m_bHasPlayerCheated ...
48427C:  STRB            R0, [R3]; CClock::bClockHasBeenStored
48427E:  LDRB.W          R0, [R4,#0xF4]
484282:  STRB            R0, [R2]; CCheat::m_bHasPlayerCheated
484284:  LDR.W           R0, [R4,#0xF8]
484288:  STR             R0, [R1]; CTimer::m_snTimeInMilliseconds
48428A:  MOV             R1, #0xF6C36301
484292:  CMP             R0, R1
484294:  BCC             loc_4842A8
484296:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4842A0)
484298:  MOVS            R2, #1
48429A:  LDR             R1, =(_ZN6CClock17ms_nLastClockTickE_ptr - 0x4842A2)
48429C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
48429E:  ADD             R1, PC; _ZN6CClock17ms_nLastClockTickE_ptr
4842A0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4842A2:  LDR             R1, [R1]; CClock::ms_nLastClockTick ...
4842A4:  STR             R2, [R0]; CTimer::m_snTimeInMilliseconds
4842A6:  STR             R2, [R1]; CClock::ms_nLastClockTick
4842A8:  LDR             R0, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x4842B2)
4842AA:  LDR.W           LR, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4842B8)
4842AE:  ADD             R0, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
4842B0:  LDR.W           R12, =(_ZN6CTimer22ms_fTimeStepNonClippedE_ptr - 0x4842C0)
4842B4:  ADD             LR, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4842B6:  LDRD.W          R3, R5, [R4,#0xFC]
4842BA:  LDR             R0, [R0]; CTimer::ms_fTimeScale ...
4842BC:  ADD             R12, PC; _ZN6CTimer22ms_fTimeStepNonClippedE_ptr
4842BE:  LDR.W           R1, [LR]; CTimer::ms_fTimeStep ...
4842C2:  LDR.W           LR, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x4842D0)
4842C6:  LDRD.W          R2, R6, [R4,#0x104]
4842CA:  STR             R3, [R0]; CTimer::ms_fTimeScale
4842CC:  ADD             LR, PC; _ZN6CTimer14m_FrameCounterE_ptr
4842CE:  LDR             R3, =(_ZN8CWeather14OldWeatherTypeE_ptr - 0x4842DA)
4842D0:  LDR.W           R0, [R12]; CTimer::ms_fTimeStepNonClipped ...
4842D4:  STR             R5, [R1]; CTimer::ms_fTimeStep
4842D6:  ADD             R3, PC; _ZN8CWeather14OldWeatherTypeE_ptr
4842D8:  LDR             R5, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x4842E4)
4842DA:  LDR.W           R1, [LR]; CTimer::m_FrameCounter ...
4842DE:  STR             R2, [R0]; CTimer::ms_fTimeStepNonClipped
4842E0:  ADD             R5, PC; _ZN8CWeather14NewWeatherTypeE_ptr
4842E2:  LDR             R2, =(_ZN8CWeather17ForcedWeatherTypeE_ptr - 0x4842EC)
4842E4:  LDR             R0, [R3]; CWeather::OldWeatherType ...
4842E6:  STR             R6, [R1]; CTimer::m_FrameCounter
4842E8:  ADD             R2, PC; _ZN8CWeather17ForcedWeatherTypeE_ptr
4842EA:  LDRH.W          R1, [R4,#0x10C]
4842EE:  LDR             R6, =(_ZN8CWeather18InterpolationValueE_ptr - 0x4842FC)
4842F0:  LDR             R3, [R5]; CWeather::NewWeatherType ...
4842F2:  ADD.W           R5, R4, #0x138
4842F6:  STRH            R1, [R0]; CWeather::OldWeatherType
4842F8:  ADD             R6, PC; _ZN8CWeather18InterpolationValueE_ptr
4842FA:  LDRH.W          R0, [R4,#0x10E]
4842FE:  LDR             R1, [R2]; CWeather::ForcedWeatherType ...
484300:  LDR             R2, =(_ZN8CWeather17WeatherTypeInListE_ptr - 0x48430C)
484302:  STRH            R0, [R3]; CWeather::NewWeatherType
484304:  LDRH.W          R0, [R4,#0x110]
484308:  ADD             R2, PC; _ZN8CWeather17WeatherTypeInListE_ptr
48430A:  LDR             R3, [R6]; CWeather::InterpolationValue ...
48430C:  LDR             R6, =(_ZN8CWeather4RainE_ptr - 0x484318)
48430E:  STRH            R0, [R1]; CWeather::ForcedWeatherType
484310:  LDR.W           R0, [R4,#0x114]
484314:  ADD             R6, PC; _ZN8CWeather4RainE_ptr
484316:  LDR             R1, [R2]; CWeather::WeatherTypeInList ...
484318:  LDR             R2, =(TheCamera_ptr - 0x484324)
48431A:  STR             R0, [R3]; CWeather::InterpolationValue
48431C:  LDR.W           R0, [R4,#0x118]
484320:  ADD             R2, PC; TheCamera_ptr
484322:  LDR             R3, [R6]; CWeather::Rain ...
484324:  STR             R0, [R1]; CWeather::WeatherTypeInList
484326:  LDR.W           R0, [R4,#0x11C]
48432A:  LDR             R1, [R2]; TheCamera
48432C:  LDR             R2, =(gbCineyCamMessageDisplayed_ptr - 0x484334)
48432E:  STR             R0, [R3]; CWeather::Rain
484330:  ADD             R2, PC; gbCineyCamMessageDisplayed_ptr
484332:  LDR.W           R0, [R4,#0x120]
484336:  LDR             R3, =(_ZN5CGame8currAreaE_ptr - 0x484344)
484338:  STR.W           R0, [R1,#(dword_952058 - 0x951FA8)]
48433C:  LDR.W           R0, [R4,#0x124]
484340:  ADD             R3, PC; _ZN5CGame8currAreaE_ptr
484342:  LDR             R6, =(_ZN10CTimeCycle13m_ExtraColourE_ptr - 0x48434E)
484344:  LDR             R2, [R2]; gbCineyCamMessageDisplayed
484346:  STR.W           R0, [R1,#(dword_95206C - 0x951FA8)]
48434A:  ADD             R6, PC; _ZN10CTimeCycle13m_ExtraColourE_ptr
48434C:  LDRB.W          R0, [R4,#0x180]
484350:  LDR             R1, [R3]; CGame::currArea ...
484352:  LDR             R3, =(_ZN10CTimeCycle16m_bExtraColourOnE_ptr - 0x48435E)
484354:  STRB            R0, [R2]
484356:  LDR.W           R0, [R4,#0x128]
48435A:  ADD             R3, PC; _ZN10CTimeCycle16m_bExtraColourOnE_ptr
48435C:  LDR             R2, [R6]; CTimeCycle::m_ExtraColour ...
48435E:  LDR             R6, =(_ZN10CTimeCycle18m_ExtraColourInterE_ptr - 0x48436A)
484360:  STR             R0, [R1]; CGame::currArea
484362:  LDR.W           R0, [R4,#0x130]
484366:  ADD             R6, PC; _ZN10CTimeCycle18m_ExtraColourInterE_ptr
484368:  LDR             R1, [R3]; CTimeCycle::m_bExtraColourOn ...
48436A:  LDR             R3, =(_ZN10CTimeCycle24m_ExtraColourWeatherTypeE_ptr - 0x484376)
48436C:  STR             R0, [R2]; CTimeCycle::m_ExtraColour
48436E:  LDR.W           R12, =(_ZN11CWaterLevel21m_nWaterConfigurationE_ptr - 0x48437E)
484372:  ADD             R3, PC; _ZN10CTimeCycle24m_ExtraColourWeatherTypeE_ptr
484374:  LDRB.W          R0, [R4,#0x134]
484378:  LDR             R2, [R6]; CTimeCycle::m_ExtraColourInter ...
48437A:  ADD             R12, PC; _ZN11CWaterLevel21m_nWaterConfigurationE_ptr
48437C:  STR             R0, [R1]; CTimeCycle::m_bExtraColourOn
48437E:  LDR             R6, =(gbLARiots_ptr - 0x484386)
484380:  LDM             R5, {R0,R1,R5}
484382:  ADD             R6, PC; gbLARiots_ptr
484384:  LDR             R3, [R3]; CTimeCycle::m_ExtraColourWeatherType ...
484386:  STR             R0, [R2]; CTimeCycle::m_ExtraColourInter
484388:  LDR.W           R0, [R12]; CWaterLevel::m_nWaterConfiguration ...
48438C:  LDR             R2, =(gbLARiots_NoPoliceCars_ptr - 0x484394)
48438E:  STR             R1, [R3]; CTimeCycle::m_ExtraColourWeatherType
484390:  ADD             R2, PC; gbLARiots_NoPoliceCars_ptr
484392:  LDR             R3, =(_ZN7CWanted18MaximumWantedLevelE_ptr - 0x48439C)
484394:  LDR             R1, [R6]; gbLARiots
484396:  STR             R5, [R0]; CWaterLevel::m_nWaterConfiguration
484398:  ADD             R3, PC; _ZN7CWanted18MaximumWantedLevelE_ptr
48439A:  LDR             R6, =(_ZN7CWanted19nMaximumWantedLevelE_ptr - 0x4843A6)
48439C:  LDRB.W          R0, [R4,#0x144]
4843A0:  LDR             R2, [R2]; gbLARiots_NoPoliceCars
4843A2:  ADD             R6, PC; _ZN7CWanted19nMaximumWantedLevelE_ptr
4843A4:  STRB            R0, [R1]
4843A6:  LDR.W           R12, =(_ZN13CLocalisation10germanGameE_ptr - 0x4843B4)
4843AA:  LDRB.W          R0, [R4,#0x145]
4843AE:  LDR             R1, [R3]; CWanted::MaximumWantedLevel ...
4843B0:  ADD             R12, PC; _ZN13CLocalisation10germanGameE_ptr
4843B2:  STRB            R0, [R2]
4843B4:  LDR             R5, =(_ZN13CLocalisation10frenchGameE_ptr - 0x4843C0)
4843B6:  LDR             R6, [R6]; CWanted::nMaximumWantedLevel ...
4843B8:  LDRD.W          R0, R2, [R4,#0x148]
4843BC:  ADD             R5, PC; _ZN13CLocalisation10frenchGameE_ptr
4843BE:  LDR             R3, =(_ZN13CLocalisation9nastyGameE_ptr - 0x4843C8)
4843C0:  STR             R0, [R1]; CWanted::MaximumWantedLevel
4843C2:  LDR             R1, =(ForceGermanBuild_ptr - 0x4843D0)
4843C4:  ADD             R3, PC; _ZN13CLocalisation9nastyGameE_ptr
4843C6:  LDR.W           R0, [R12]; CLocalisation::germanGame ...
4843CA:  STR             R2, [R6]; CWanted::nMaximumWantedLevel
4843CC:  ADD             R1, PC; ForceGermanBuild_ptr
4843CE:  LDRB.W          R2, [R4,#0x151]
4843D2:  LDR             R6, [R5]; CLocalisation::frenchGame ...
4843D4:  STRB            R2, [R0]; CLocalisation::germanGame
4843D6:  LDRB.W          R0, [R4,#0x150]
4843DA:  LDR             R3, [R3]; CLocalisation::nastyGame ...
4843DC:  LDR             R1, [R1]; ForceGermanBuild
4843DE:  STRB            R0, [R6]; CLocalisation::frenchGame
4843E0:  LDRB.W          R0, [R4,#0x152]
4843E4:  STRB            R0, [R3]; CLocalisation::nastyGame
4843E6:  LDRB            R0, [R1]
4843E8:  CBZ             R0, loc_4843FE
4843EA:  LDR             R0, =(_ZN13CLocalisation9nastyGameE_ptr - 0x4843F4)
4843EC:  MOVS            R2, #1
4843EE:  LDR             R1, =(_ZN13CLocalisation10germanGameE_ptr - 0x4843F6)
4843F0:  ADD             R0, PC; _ZN13CLocalisation9nastyGameE_ptr
4843F2:  ADD             R1, PC; _ZN13CLocalisation10germanGameE_ptr
4843F4:  LDR             R0, [R0]; CLocalisation::nastyGame ...
4843F6:  LDR             R1, [R1]; CLocalisation::germanGame ...
4843F8:  STRB            R2, [R0]; CLocalisation::nastyGame
4843FA:  MOVS            R0, #0
4843FC:  STRB            R0, [R1]; CLocalisation::germanGame
4843FE:  LDR             R0, =(gMobileMenu_ptr - 0x484406)
484400:  LDR             R1, =(_ZN10CPlayerPed39bHasDisplayedPlayerQuitEnterCarHelpTextE_ptr - 0x48440C)
484402:  ADD             R0, PC; gMobileMenu_ptr
484404:  LDR.W           R2, [R4,#0x1A0]
484408:  ADD             R1, PC; _ZN10CPlayerPed39bHasDisplayedPlayerQuitEnterCarHelpTextE_ptr
48440A:  LDR             R0, [R0]; gMobileMenu
48440C:  LDR             R1, [R1]; CPlayerPed::bHasDisplayedPlayerQuitEnterCarHelpText ...
48440E:  STR             R2, [R0,#(dword_6E00B4 - 0x6E006C)]
484410:  LDRB.W          R0, [R4,#0x1A4]
484414:  STRB            R0, [R1]; CPlayerPed::bHasDisplayedPlayerQuitEnterCarHelpText
484416:  LDRB.W          R0, [R4,#0x1A5]
48441A:  CBZ             R0, loc_484442
48441C:  LDR             R0, =(_ZN6CCheat17m_aCheatFunctionsE_ptr - 0x484422)
48441E:  ADD             R0, PC; _ZN6CCheat17m_aCheatFunctionsE_ptr
484420:  LDR             R0, [R0]; CCheat::m_aCheatFunctions ...
484422:  LDR.W           R0, [R0,#(off_686310 - 0x686184)]
484426:  CBZ             R0, loc_48442C
484428:  BLX             R0
48442A:  B               loc_484442
48442C:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x484434)
48442E:  MOVS            R2, #0
484430:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
484432:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
484434:  LDRB.W          R1, [R0,#(byte_796857 - 0x7967F4)]
484438:  CMP             R1, #0
48443A:  IT EQ
48443C:  MOVEQ           R2, #1
48443E:  STRB.W          R2, [R0,#(byte_796857 - 0x7967F4)]
484442:  LDRB.W          R0, [R4,#0x1A6]
484446:  CBZ             R0, loc_48446E
484448:  LDR             R0, =(_ZN6CCheat17m_aCheatFunctionsE_ptr - 0x48444E)
48444A:  ADD             R0, PC; _ZN6CCheat17m_aCheatFunctionsE_ptr
48444C:  LDR             R0, [R0]; CCheat::m_aCheatFunctions ...
48444E:  LDR.W           R0, [R0,#(off_68630C - 0x686184)]
484452:  CBZ             R0, loc_484458
484454:  BLX             R0
484456:  B               loc_48446E
484458:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x484460)
48445A:  MOVS            R2, #0
48445C:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
48445E:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
484460:  LDRB.W          R1, [R0,#(byte_796856 - 0x7967F4)]
484464:  CMP             R1, #0
484466:  IT EQ
484468:  MOVEQ           R2, #1
48446A:  STRB.W          R2, [R0,#(byte_796856 - 0x7967F4)]
48446E:  LDR             R0, =(CPIndex_ptr - 0x484478)
484470:  LDR.W           R1, [R4,#0x1A8]
484474:  ADD             R0, PC; CPIndex_ptr
484476:  LDR             R0, [R0]; CPIndex
484478:  STR             R1, [R0]
48447A:  POP.W           {R11}
48447E:  POP             {R4-R7,PC}
