; =========================================================
; Game Engine Function: _ZN29CSimpleVariablesSaveStructure9ConstructEv
; Address            : 0x483D70 - 0x4840C6
; =========================================================

483D70:  PUSH            {R4-R7,LR}
483D72:  ADD             R7, SP, #0xC
483D74:  PUSH.W          {R8,R9,R11}
483D78:  SUB             SP, SP, #0x28
483D7A:  MOV             R4, R0
483D7C:  LDR             R0, =(_ZN6CStats21LastMissionPassedNameE_ptr - 0x483D82)
483D7E:  ADD             R0, PC; _ZN6CStats21LastMissionPassedNameE_ptr
483D80:  LDR             R0, [R0]; CStats::LastMissionPassedName ...
483D82:  LDRB            R0, [R0]; CStats::LastMissionPassedName
483D84:  CBZ             R0, loc_483D8E
483D86:  LDR             R0, =(_ZN6CStats21LastMissionPassedNameE_ptr - 0x483D8C)
483D88:  ADD             R0, PC; _ZN6CStats21LastMissionPassedNameE_ptr
483D8A:  LDR             R0, [R0]; CStats::LastMissionPassedName ...
483D8C:  B               loc_483D90
483D8E:  ADR             R0, aItbeg_0; "ITBEG"
483D90:  ADD             R1, SP, #0x40+var_28; unsigned __int16 *
483D92:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
483D96:  MOVW            R0, #0x2E2E
483D9A:  MOV.W           R8, #0
483D9E:  MOVT            R0, #0x272E
483DA2:  STRB.W          R8, [SP,#0x40+var_2C]
483DA6:  STR             R0, [SP,#0x40+var_30]
483DA8:  ADD             R0, SP, #0x40+var_30; char *
483DAA:  ADD             R1, SP, #0x40+var_3C; unsigned __int16 *
483DAC:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
483DB0:  ADDS            R5, R4, #4
483DB2:  ADD             R1, SP, #0x40+var_28; unsigned __int16 *
483DB4:  STRH.W          R8, [SP,#0x40+var_36]
483DB8:  MOV             R0, R5; unsigned __int16 *
483DBA:  BLX             j__Z8TextCopyPtPKt; TextCopy(ushort *,ushort const*)
483DBE:  MOV             R0, R5; unsigned __int16 *
483DC0:  BLX             j__Z13GxtCharStrlenPKt; GxtCharStrlen(ushort const*)
483DC4:  CMP             R0, #0x17
483DC6:  STRH.W          R8, [R5,R0,LSL#1]
483DCA:  BLT             loc_483DD6
483DCC:  ADD.W           R0, R4, #0x28 ; '('; unsigned __int16 *
483DD0:  ADD             R1, SP, #0x40+var_3C; unsigned __int16 *
483DD2:  BLX             j__Z8TextCopyPtPKt; TextCopy(ushort *,ushort const*)
483DD6:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x483DE2)
483DD8:  LDR             R1, =(_ZN5CGame9currLevelE_ptr - 0x483DE4)
483DDA:  LDR.W           R9, =(TheCamera_ptr - 0x483DEA)
483DDE:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr ; this
483DE0:  ADD             R1, PC; _ZN5CGame9currLevelE_ptr
483DE2:  STRH.W          R8, [R4,#0x32]
483DE6:  ADD             R9, PC; TheCamera_ptr
483DE8:  LDR             R6, [R0]; CGame::bMissionPackGame ...
483DEA:  LDR             R5, [R1]; CGame::currLevel ...
483DEC:  BLX             j__ZN19CGenericGameStorage23GetCurrentVersionNumberEv; CGenericGameStorage::GetCurrentVersionNumber(void)
483DF0:  STR             R0, [R4]
483DF2:  LDRB            R1, [R6]; CGame::bMissionPackGame
483DF4:  LDR             R2, =(_ZN6CClock29ms_nMillisecondsPerGameMinuteE_ptr - 0x483E02)
483DF6:  STRB.W          R1, [R4,#0xCC]
483DFA:  LDR.W           R0, [R9]; TheCamera
483DFE:  ADD             R2, PC; _ZN6CClock29ms_nMillisecondsPerGameMinuteE_ptr
483E00:  LDR             R1, [R5]; CGame::currLevel
483E02:  LDR             R3, =(_ZN6CClock17ms_nLastClockTickE_ptr - 0x483E10)
483E04:  STR.W           R1, [R4,#0xD0]
483E08:  ADDW            R1, R0, #0x92C
483E0C:  ADD             R3, PC; _ZN6CClock17ms_nLastClockTickE_ptr
483E0E:  LDR             R6, =(_ZN6CClock19ms_nGameClockMonthsE_ptr - 0x483E1A)
483E10:  VLDR            D16, [R1]
483E14:  LDR             R2, [R2]; CClock::ms_nMillisecondsPerGameMinute ...
483E16:  ADD             R6, PC; _ZN6CClock19ms_nGameClockMonthsE_ptr
483E18:  LDR.W           R1, [R0,#(dword_9528DC - 0x951FA8)]
483E1C:  LDR             R5, =(_ZN6CClock17ms_nGameClockDaysE_ptr - 0x483E2A)
483E1E:  STR.W           R1, [R4,#0xDC]
483E22:  VSTR            D16, [R4,#0xD4]
483E26:  ADD             R5, PC; _ZN6CClock17ms_nGameClockDaysE_ptr
483E28:  LDR             R3, [R3]; CClock::ms_nLastClockTick ...
483E2A:  LDR             R1, [R2]; CClock::ms_nMillisecondsPerGameMinute
483E2C:  STR.W           R1, [R4,#0xE0]
483E30:  LDR             R2, [R6]; CClock::ms_nGameClockMonths ...
483E32:  LDR             R6, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x483E3E)
483E34:  LDR             R1, [R3]; CClock::ms_nLastClockTick
483E36:  STR.W           R1, [R4,#0xE4]
483E3A:  ADD             R6, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
483E3C:  LDR             R3, [R5]; CClock::ms_nGameClockDays ...
483E3E:  LDR             R5, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x483E4A)
483E40:  LDRB            R1, [R2]; CClock::ms_nGameClockMonths
483E42:  STRB.W          R1, [R4,#0xE8]
483E46:  ADD             R5, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
483E48:  LDR             R2, [R6]; CClock::ms_nGameClockHours ...
483E4A:  LDR             R6, =(_ZN6CClock10CurrentDayE_ptr - 0x483E56)
483E4C:  LDRB            R1, [R3]; CClock::ms_nGameClockDays
483E4E:  STRB.W          R1, [R4,#0xE9]
483E52:  ADD             R6, PC; _ZN6CClock10CurrentDayE_ptr
483E54:  LDR             R3, [R5]; CClock::ms_nGameClockMinutes ...
483E56:  LDR             R5, =(_ZN6CClock26ms_Stored_nGameClockMonthsE_ptr - 0x483E62)
483E58:  LDRB            R1, [R2]; CClock::ms_nGameClockHours
483E5A:  STRB.W          R1, [R4,#0xEA]
483E5E:  ADD             R5, PC; _ZN6CClock26ms_Stored_nGameClockMonthsE_ptr
483E60:  LDR             R2, [R6]; CClock::CurrentDay ...
483E62:  LDR             R6, =(_ZN6CClock24ms_Stored_nGameClockDaysE_ptr - 0x483E6E)
483E64:  LDRB            R1, [R3]; CClock::ms_nGameClockMinutes
483E66:  STRB.W          R1, [R4,#0xEB]
483E6A:  ADD             R6, PC; _ZN6CClock24ms_Stored_nGameClockDaysE_ptr
483E6C:  LDR             R3, [R5]; CClock::ms_Stored_nGameClockMonths ...
483E6E:  LDR             R5, =(_ZN6CClock25ms_Stored_nGameClockHoursE_ptr - 0x483E7A)
483E70:  LDRB            R1, [R2]; CClock::CurrentDay
483E72:  STRB.W          R1, [R4,#0xEC]
483E76:  ADD             R5, PC; _ZN6CClock25ms_Stored_nGameClockHoursE_ptr
483E78:  LDR             R2, [R6]; CClock::ms_Stored_nGameClockDays ...
483E7A:  LDR             R6, =(_ZN6CClock27ms_Stored_nGameClockMinutesE_ptr - 0x483E86)
483E7C:  LDRB            R1, [R3]; CClock::ms_Stored_nGameClockMonths
483E7E:  STRB.W          R1, [R4,#0xED]
483E82:  ADD             R6, PC; _ZN6CClock27ms_Stored_nGameClockMinutesE_ptr
483E84:  LDR             R3, [R5]; CClock::ms_Stored_nGameClockHours ...
483E86:  LDR             R5, =(_ZN6CClock19bClockHasBeenStoredE_ptr - 0x483E92)
483E88:  LDRB            R1, [R2]; CClock::ms_Stored_nGameClockDays
483E8A:  STRB.W          R1, [R4,#0xEE]
483E8E:  ADD             R5, PC; _ZN6CClock19bClockHasBeenStoredE_ptr
483E90:  LDR             R2, [R6]; CClock::ms_Stored_nGameClockMinutes ...
483E92:  LDR             R6, =(_ZN6CCheat19m_bHasPlayerCheatedE_ptr - 0x483E9E)
483E94:  LDRB            R1, [R3]; CClock::ms_Stored_nGameClockHours
483E96:  STRB.W          R1, [R4,#0xEF]
483E9A:  ADD             R6, PC; _ZN6CCheat19m_bHasPlayerCheatedE_ptr
483E9C:  LDR             R3, [R5]; CClock::bClockHasBeenStored ...
483E9E:  LDRB            R1, [R2]; CClock::ms_Stored_nGameClockMinutes
483EA0:  STRB.W          R1, [R4,#0xF0]
483EA4:  LDR             R2, [R6]; CCheat::m_bHasPlayerCheated ...
483EA6:  LDR             R5, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x483EB2)
483EA8:  LDRB            R1, [R3]; CClock::bClockHasBeenStored
483EAA:  STRH.W          R8, [R4,#0xF2]
483EAE:  ADD             R5, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
483EB0:  STRB.W          R1, [R4,#0xF1]
483EB4:  LDR             R3, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x483EBC)
483EB6:  LDRB            R1, [R2]; CCheat::m_bHasPlayerCheated
483EB8:  ADD             R3, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
483EBA:  LDR             R6, [R5]; CTimer::m_snTimeInMilliseconds ...
483EBC:  LDR             R5, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x483ECE)
483EBE:  CMP             R1, #0
483EC0:  IT NE
483EC2:  MOVNE           R1, #1
483EC4:  LDR             R2, =(_ZN6CTimer22ms_fTimeStepNonClippedE_ptr - 0x483ED2)
483EC6:  STRB.W          R1, [R4,#0xF4]
483ECA:  ADD             R5, PC; _ZN6CTimer12ms_fTimeStepE_ptr
483ECC:  LDR             R3, [R3]; CTimer::ms_fTimeScale ...
483ECE:  ADD             R2, PC; _ZN6CTimer22ms_fTimeStepNonClippedE_ptr
483ED0:  LDR             R1, [R6]; CTimer::m_snTimeInMilliseconds
483ED2:  STR.W           R1, [R4,#0xF8]
483ED6:  LDR             R6, [R5]; CTimer::ms_fTimeStep ...
483ED8:  LDR             R5, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x483EE0)
483EDA:  LDR             R1, [R3]; CTimer::ms_fTimeScale
483EDC:  ADD             R5, PC; _ZN6CTimer14m_FrameCounterE_ptr
483EDE:  LDR             R3, =(_ZN8CWeather14OldWeatherTypeE_ptr - 0x483EEA)
483EE0:  STR.W           R1, [R4,#0xFC]
483EE4:  LDR             R2, [R2]; CTimer::ms_fTimeStepNonClipped ...
483EE6:  ADD             R3, PC; _ZN8CWeather14OldWeatherTypeE_ptr
483EE8:  LDR             R1, [R6]; CTimer::ms_fTimeStep
483EEA:  LDR             R6, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x483EF6)
483EEC:  STR.W           R1, [R4,#0x100]
483EF0:  LDR             R5, [R5]; CTimer::m_FrameCounter ...
483EF2:  ADD             R6, PC; _ZN8CWeather14NewWeatherTypeE_ptr
483EF4:  LDR             R1, [R2]; CTimer::ms_fTimeStepNonClipped
483EF6:  STR.W           R1, [R4,#0x104]
483EFA:  LDR             R2, [R3]; CWeather::OldWeatherType ...
483EFC:  LDR             R3, =(_ZN8CWeather17ForcedWeatherTypeE_ptr - 0x483F04)
483EFE:  LDR             R1, [R5]; CTimer::m_FrameCounter
483F00:  ADD             R3, PC; _ZN8CWeather17ForcedWeatherTypeE_ptr
483F02:  LDR             R5, =(_ZN8CWeather18InterpolationValueE_ptr - 0x483F0E)
483F04:  STR.W           R1, [R4,#0x108]
483F08:  LDR             R6, [R6]; CWeather::NewWeatherType ...
483F0A:  ADD             R5, PC; _ZN8CWeather18InterpolationValueE_ptr
483F0C:  LDRH            R1, [R2]; CWeather::OldWeatherType
483F0E:  LDR             R2, =(_ZN8CWeather17WeatherTypeInListE_ptr - 0x483F1A)
483F10:  STRH.W          R1, [R4,#0x10C]
483F14:  LDR             R3, [R3]; CWeather::ForcedWeatherType ...
483F16:  ADD             R2, PC; _ZN8CWeather17WeatherTypeInListE_ptr
483F18:  LDRH            R1, [R6]; CWeather::NewWeatherType
483F1A:  LDR             R6, =(_ZN8CWeather4RainE_ptr - 0x483F26)
483F1C:  STRH.W          R1, [R4,#0x10E]
483F20:  LDR             R5, [R5]; CWeather::InterpolationValue ...
483F22:  ADD             R6, PC; _ZN8CWeather4RainE_ptr
483F24:  LDRH            R1, [R3]; CWeather::ForcedWeatherType
483F26:  STRH.W          R1, [R4,#0x110]
483F2A:  LDR             R2, [R2]; CWeather::WeatherTypeInList ...
483F2C:  LDR             R1, [R5]; CWeather::InterpolationValue
483F2E:  STR.W           R1, [R4,#0x114]
483F32:  LDR             R3, [R6]; CWeather::Rain ...
483F34:  LDR             R1, [R2]; CWeather::WeatherTypeInList
483F36:  LDR             R2, =(gbCineyCamMessageDisplayed_ptr - 0x483F42)
483F38:  STR.W           R1, [R4,#0x118]
483F3C:  LDR             R1, [R3]; CWeather::Rain
483F3E:  ADD             R2, PC; gbCineyCamMessageDisplayed_ptr
483F40:  LDR             R3, =(_ZN5CGame8currAreaE_ptr - 0x483F4E)
483F42:  STR.W           R1, [R4,#0x11C]
483F46:  LDR.W           R1, [R0,#(dword_952058 - 0x951FA8)]
483F4A:  ADD             R3, PC; _ZN5CGame8currAreaE_ptr
483F4C:  LDR             R6, =(_ZN14MobileSettings8settingsE_ptr - 0x483F58)
483F4E:  STR.W           R1, [R4,#0x120]
483F52:  LDR             R2, [R2]; gbCineyCamMessageDisplayed
483F54:  ADD             R6, PC; _ZN14MobileSettings8settingsE_ptr
483F56:  LDR.W           R0, [R0,#(dword_95206C - 0x951FA8)]
483F5A:  STR.W           R0, [R4,#0x124]
483F5E:  LDR             R1, [R3]; CGame::currArea ...
483F60:  LDRB            R0, [R2]
483F62:  STRB.W          R0, [R4,#0x180]
483F66:  LDR             R2, [R6]; MobileSettings::settings ...
483F68:  LDR             R0, [R1]; CGame::currArea
483F6A:  LDR             R3, =(_ZN10CTimeCycle13m_ExtraColourE_ptr - 0x483F74)
483F6C:  STR.W           R0, [R4,#0x128]
483F70:  ADD             R3, PC; _ZN10CTimeCycle13m_ExtraColourE_ptr
483F72:  LDR             R1, =(_ZN10CTimeCycle16m_bExtraColourOnE_ptr - 0x483F7C)
483F74:  LDR.W           R0, [R2,#(dword_6E05DC - 0x6E03F4)]
483F78:  ADD             R1, PC; _ZN10CTimeCycle16m_bExtraColourOnE_ptr
483F7A:  LDR             R3, [R3]; CTimeCycle::m_ExtraColour ...
483F7C:  CMP             R0, #0
483F7E:  LDR             R2, =(_ZN10CTimeCycle18m_ExtraColourInterE_ptr - 0x483F8E)
483F80:  IT NE
483F82:  MOVNE           R0, #1
483F84:  LDR             R1, [R1]; CTimeCycle::m_bExtraColourOn ...
483F86:  STRB.W          R0, [R4,#0x12C]
483F8A:  ADD             R2, PC; _ZN10CTimeCycle18m_ExtraColourInterE_ptr
483F8C:  LDR             R0, [R3]; CTimeCycle::m_ExtraColour
483F8E:  STR.W           R0, [R4,#0x130]
483F92:  LDR             R6, =(_ZN10CTimeCycle24m_ExtraColourWeatherTypeE_ptr - 0x483F9A)
483F94:  LDR             R0, [R1]; CTimeCycle::m_bExtraColourOn
483F96:  ADD             R6, PC; _ZN10CTimeCycle24m_ExtraColourWeatherTypeE_ptr
483F98:  LDR             R3, =(_ZN11CWaterLevel21m_nWaterConfigurationE_ptr - 0x483FAC)
483F9A:  CMP             R0, #0
483F9C:  LDR             R2, [R2]; CTimeCycle::m_ExtraColourInter ...
483F9E:  IT NE
483FA0:  MOVNE           R0, #1
483FA2:  LDR             R1, =(gbLARiots_ptr - 0x483FB0)
483FA4:  STRB.W          R0, [R4,#0x134]
483FA8:  ADD             R3, PC; _ZN11CWaterLevel21m_nWaterConfigurationE_ptr
483FAA:  LDR             R6, [R6]; CTimeCycle::m_ExtraColourWeatherType ...
483FAC:  ADD             R1, PC; gbLARiots_ptr
483FAE:  LDR             R0, [R2]; CTimeCycle::m_ExtraColourInter
483FB0:  STR.W           R0, [R4,#0x138]
483FB4:  LDR             R2, [R3]; CWaterLevel::m_nWaterConfiguration ...
483FB6:  LDR             R3, =(gbLARiots_NoPoliceCars_ptr - 0x483FBE)
483FB8:  LDR             R0, [R6]; CTimeCycle::m_ExtraColourWeatherType
483FBA:  ADD             R3, PC; gbLARiots_NoPoliceCars_ptr
483FBC:  LDR             R6, =(_ZN7CWanted18MaximumWantedLevelE_ptr - 0x483FC8)
483FBE:  STR.W           R0, [R4,#0x13C]
483FC2:  LDR             R1, [R1]; gbLARiots
483FC4:  ADD             R6, PC; _ZN7CWanted18MaximumWantedLevelE_ptr
483FC6:  LDR             R0, [R2]; CWaterLevel::m_nWaterConfiguration
483FC8:  LDR             R2, =(_ZN7CWanted19nMaximumWantedLevelE_ptr - 0x483FD4)
483FCA:  STR.W           R0, [R4,#0x140]
483FCE:  LDR             R3, [R3]; gbLARiots_NoPoliceCars
483FD0:  ADD             R2, PC; _ZN7CWanted19nMaximumWantedLevelE_ptr
483FD2:  LDRB            R0, [R1]
483FD4:  LDR             R1, =(_ZN13CLocalisation10germanGameE_ptr - 0x483FE0)
483FD6:  STRB.W          R0, [R4,#0x144]
483FDA:  LDR             R6, [R6]; CWanted::MaximumWantedLevel ...
483FDC:  ADD             R1, PC; _ZN13CLocalisation10germanGameE_ptr
483FDE:  LDRB            R0, [R3]
483FE0:  LDR             R3, =(_ZN13CLocalisation10frenchGameE_ptr - 0x483FEC)
483FE2:  STRB.W          R0, [R4,#0x145]
483FE6:  LDR             R2, [R2]; CWanted::nMaximumWantedLevel ...
483FE8:  ADD             R3, PC; _ZN13CLocalisation10frenchGameE_ptr
483FEA:  LDR             R0, [R6]; CWanted::MaximumWantedLevel
483FEC:  LDR             R6, =(_ZN13CLocalisation9nastyGameE_ptr - 0x483FF8)
483FEE:  STR.W           R0, [R4,#0x148]
483FF2:  LDR             R1, [R1]; CLocalisation::germanGame ...
483FF4:  ADD             R6, PC; _ZN13CLocalisation9nastyGameE_ptr
483FF6:  LDR             R0, [R2]; CWanted::nMaximumWantedLevel
483FF8:  LDR             R2, =(_ZN6CMBlur6BlurOnE_ptr - 0x484004)
483FFA:  STR.W           R0, [R4,#0x14C]
483FFE:  LDR             R3, [R3]; CLocalisation::frenchGame ...
484000:  ADD             R2, PC; _ZN6CMBlur6BlurOnE_ptr
484002:  LDRB            R0, [R1]; CLocalisation::germanGame
484004:  LDR             R1, =(FrontEndMenuManager_ptr - 0x484010)
484006:  STRB.W          R0, [R4,#0x151]
48400A:  LDR             R6, [R6]; CLocalisation::nastyGame ...
48400C:  ADD             R1, PC; FrontEndMenuManager_ptr
48400E:  LDRB            R0, [R3]; CLocalisation::frenchGame
484010:  STRB.W          R0, [R4,#0x150]
484014:  LDR             R2, [R2]; CMBlur::BlurOn ...
484016:  LDRB            R0, [R6]; CLocalisation::nastyGame
484018:  STRB.W          R0, [R4,#0x152]
48401C:  LDR             R1, [R1]; FrontEndMenuManager
48401E:  LDRB            R0, [R2]; CMBlur::BlurOn
484020:  STRB.W          R0, [R4,#0x181]
484024:  LDRB.W          R0, [R1,#(byte_98F12B - 0x98F0F8)]
484028:  STRB.W          R0, [R4,#0x182]
48402C:  LDRB.W          R0, [R1,#(byte_98F12A - 0x98F0F8)]
484030:  STRB.W          R0, [R4,#0x183]
484034:  LDRB            R0, [R1,#(byte_98F110 - 0x98F0F8)]
484036:  STRB.W          R0, [R4,#0x184]
48403A:  LDRB.W          R0, [R1,#(byte_98F12D - 0x98F0F8)]
48403E:  STRB.W          R0, [R4,#0x185]
484042:  LDRB.W          R0, [R1,#(byte_98F124 - 0x98F0F8)]
484046:  STRB.W          R0, [R4,#0x186]
48404A:  LDRB.W          R0, [R1,#(byte_98F140 - 0x98F0F8)]
48404E:  STRB.W          R0, [R4,#0x187]
484052:  LDRB.W          R0, [R1,#(byte_98F126 - 0x98F0F8)]
484056:  STRB.W          R0, [R4,#0x188]
48405A:  LDRB            R0, [R1,#(byte_98F111 - 0x98F0F8)]
48405C:  LDR             R2, =(gMobileMenu_ptr - 0x48406A)
48405E:  STRB.W          R0, [R4,#0x194]
484062:  LDRB.W          R0, [R1,#(byte_98F12C - 0x98F0F8)]
484066:  ADD             R2, PC; gMobileMenu_ptr
484068:  LDR             R3, =(_ZN10CPlayerPed39bHasDisplayedPlayerQuitEnterCarHelpTextE_ptr - 0x484076)
48406A:  STRB.W          R0, [R4,#0x19C]
48406E:  LDRB.W          R0, [R1,#(byte_98F128 - 0x98F0F8)]
484072:  ADD             R3, PC; _ZN10CPlayerPed39bHasDisplayedPlayerQuitEnterCarHelpTextE_ptr
484074:  LDR             R6, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x484080)
484076:  STRB.W          R0, [R4,#0x19D]
48407A:  LDR             R2, [R2]; gMobileMenu
48407C:  ADD             R6, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
48407E:  LDRB.W          R0, [R1,#(byte_98F129 - 0x98F0F8)]
484082:  STRB.W          R0, [R4,#0x19E]
484086:  LDR             R1, [R3]; CPlayerPed::bHasDisplayedPlayerQuitEnterCarHelpText ...
484088:  LDR             R0, [R2,#(dword_6E00B4 - 0x6E006C)]
48408A:  STR.W           R0, [R4,#0x1A0]
48408E:  LDR             R3, [R6]; CCheat::m_aCheatsActive ...
484090:  LDRB            R0, [R1]; CPlayerPed::bHasDisplayedPlayerQuitEnterCarHelpText
484092:  STRB.W          R0, [R4,#0x1A4]
484096:  LDRB.W          R0, [R3,#(byte_796857 - 0x7967F4)]
48409A:  LDR             R2, =(CPIndex_ptr - 0x4840A6)
48409C:  CMP             R0, #0
48409E:  IT NE
4840A0:  MOVNE           R0, #1
4840A2:  ADD             R2, PC; CPIndex_ptr
4840A4:  STRB.W          R0, [R4,#0x1A5]
4840A8:  LDRB.W          R0, [R3,#(byte_796856 - 0x7967F4)]
4840AC:  LDR             R1, [R2]; CPIndex
4840AE:  CMP             R0, #0
4840B0:  IT NE
4840B2:  MOVNE           R0, #1
4840B4:  STRB.W          R0, [R4,#0x1A6]
4840B8:  LDR             R0, [R1]
4840BA:  STR.W           R0, [R4,#0x1A8]
4840BE:  ADD             SP, SP, #0x28 ; '('
4840C0:  POP.W           {R8,R9,R11}
4840C4:  POP             {R4-R7,PC}
