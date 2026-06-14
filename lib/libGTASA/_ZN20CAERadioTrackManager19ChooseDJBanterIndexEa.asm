; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager19ChooseDJBanterIndexEa
; Address            : 0x3A3AB8 - 0x3A3D86
; =========================================================

3A3AB8:  PUSH            {R4,R5,R7,LR}
3A3ABA:  ADD             R7, SP, #8
3A3ABC:  LDR             R0, =(_ZN20CAERadioTrackManager25m_nSpecialDJBanterPendingE_ptr - 0x3A3AC4)
3A3ABE:  MOV             R4, R1
3A3AC0:  ADD             R0, PC; _ZN20CAERadioTrackManager25m_nSpecialDJBanterPendingE_ptr
3A3AC2:  LDR             R0, [R0]; CAERadioTrackManager::m_nSpecialDJBanterPending ...
3A3AC4:  LDRSB.W         R0, [R0]; CAERadioTrackManager::m_nSpecialDJBanterPending
3A3AC8:  CMP             R0, #2
3A3ACA:  BEQ             loc_3A3ADE
3A3ACC:  CMP             R0, #1
3A3ACE:  BEQ             loc_3A3AF6
3A3AD0:  CBNZ            R0, loc_3A3B2A
3A3AD2:  LDR             R0, =(gRadioDJBanterBC_ptr - 0x3A3AD8)
3A3AD4:  ADD             R0, PC; gRadioDJBanterBC_ptr
3A3AD6:  LDR             R0, [R0]; gRadioDJBanterBC
3A3AD8:  LDR.W           R0, [R0,R4,LSL#3]
3A3ADC:  B               loc_3A3B2E
3A3ADE:  LDR             R1, =(gnRadioStationSpecificNewsLookup_ptr - 0x3A3AE8)
3A3AE0:  MOVS            R2, #0x58 ; 'X'
3A3AE2:  LDR             R0, =(_ZN20CAERadioTrackManager23m_nSpecialDJBanterIndexE_ptr - 0x3A3AEA)
3A3AE4:  ADD             R1, PC; gnRadioStationSpecificNewsLookup_ptr
3A3AE6:  ADD             R0, PC; _ZN20CAERadioTrackManager23m_nSpecialDJBanterIndexE_ptr
3A3AE8:  LDR             R1, [R1]; gnRadioStationSpecificNewsLookup
3A3AEA:  LDR             R0, [R0]; CAERadioTrackManager::m_nSpecialDJBanterIndex ...
3A3AEC:  SMLABB.W        R1, R4, R2, R1
3A3AF0:  LDRSB.W         R0, [R0]; CAERadioTrackManager::m_nSpecialDJBanterIndex
3A3AF4:  B               loc_3A3B10
3A3AF6:  LDR             R0, =(_ZN20CAERadioTrackManager23m_nSpecialDJBanterIndexE_ptr - 0x3A3AFC)
3A3AF8:  ADD             R0, PC; _ZN20CAERadioTrackManager23m_nSpecialDJBanterIndexE_ptr
3A3AFA:  LDR             R0, [R0]; CAERadioTrackManager::m_nSpecialDJBanterIndex ...
3A3AFC:  LDRB            R0, [R0]; CAERadioTrackManager::m_nSpecialDJBanterIndex
3A3AFE:  CMP             R0, #1
3A3B00:  BEQ             loc_3A3B16
3A3B02:  CBNZ            R0, loc_3A3B2A
3A3B04:  LDR             R1, =(gRadioDJBanterBO_ptr - 0x3A3B0C)
3A3B06:  SXTB            R0, R0
3A3B08:  ADD             R1, PC; gRadioDJBanterBO_ptr
3A3B0A:  LDR             R1, [R1]; gRadioDJBanterBO
3A3B0C:  ADD.W           R1, R1, R4,LSL#3
3A3B10:  LDR.W           R0, [R1,R0,LSL#2]
3A3B14:  B               loc_3A3B2E
3A3B16:  LDR             R1, =(gRadioDJBanterBO_ptr - 0x3A3B1C)
3A3B18:  ADD             R1, PC; gRadioDJBanterBO_ptr
3A3B1A:  LDR             R1, [R1]; gRadioDJBanterBO
3A3B1C:  LDR.W           R2, [R1,R4,LSL#3]
3A3B20:  ADD.W           R1, R1, R4,LSL#3
3A3B24:  LDR             R1, [R1,#4]
3A3B26:  CMP             R2, R1
3A3B28:  BNE             loc_3A3B04
3A3B2A:  MOV.W           R0, #0xFFFFFFFF
3A3B2E:  MOVW            R1, #0x782
3A3B32:  CMP             R0, R1
3A3B34:  IT EQ
3A3B36:  MOVEQ.W         R0, #0xFFFFFFFF; this
3A3B3A:  CMP             R0, #0
3A3B3C:  BLT             loc_3A3C36
3A3B3E:  LDR             R1, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3B48)
3A3B40:  RSB.W           R2, R4, R4,LSL#4
3A3B44:  ADD             R1, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3B46:  LDR             R1, [R1]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3B48:  LDR.W           R1, [R1,R2,LSL#2]
3A3B4C:  CMP             R0, R1
3A3B4E:  BEQ             loc_3A3C3C
3A3B50:  LDR             R1, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3B56)
3A3B52:  ADD             R1, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3B54:  LDR             R2, [R1]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3B56:  RSB.W           R1, R4, R4,LSL#4
3A3B5A:  ADD.W           R2, R2, R1,LSL#2
3A3B5E:  LDR             R2, [R2,#4]
3A3B60:  CMP             R0, R2
3A3B62:  BEQ             loc_3A3C3C
3A3B64:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3B6A)
3A3B66:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3B68:  LDR             R2, [R2]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3B6A:  ADD.W           R2, R2, R1,LSL#2
3A3B6E:  LDR             R2, [R2,#8]
3A3B70:  CMP             R0, R2
3A3B72:  BEQ             loc_3A3C3C
3A3B74:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3B7A)
3A3B76:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3B78:  LDR             R2, [R2]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3B7A:  ADD.W           R2, R2, R1,LSL#2
3A3B7E:  LDR             R2, [R2,#0xC]
3A3B80:  CMP             R0, R2
3A3B82:  BEQ             loc_3A3C3C
3A3B84:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3B8A)
3A3B86:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3B88:  LDR             R2, [R2]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3B8A:  ADD.W           R2, R2, R1,LSL#2
3A3B8E:  LDR             R2, [R2,#0x10]
3A3B90:  CMP             R0, R2
3A3B92:  BEQ             loc_3A3C3C
3A3B94:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3B9A)
3A3B96:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3B98:  LDR             R2, [R2]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3B9A:  ADD.W           R2, R2, R1,LSL#2
3A3B9E:  LDR             R2, [R2,#0x14]
3A3BA0:  CMP             R0, R2
3A3BA2:  BEQ             loc_3A3C3C
3A3BA4:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3BAA)
3A3BA6:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3BA8:  LDR             R2, [R2]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3BAA:  ADD.W           R2, R2, R1,LSL#2
3A3BAE:  LDR             R2, [R2,#0x18]
3A3BB0:  CMP             R0, R2
3A3BB2:  BEQ             loc_3A3C3C
3A3BB4:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3BBA)
3A3BB6:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3BB8:  LDR             R2, [R2]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3BBA:  ADD.W           R2, R2, R1,LSL#2
3A3BBE:  LDR             R2, [R2,#0x1C]
3A3BC0:  CMP             R0, R2
3A3BC2:  BEQ             loc_3A3C3C
3A3BC4:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3BCA)
3A3BC6:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3BC8:  LDR             R2, [R2]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3BCA:  ADD.W           R2, R2, R1,LSL#2
3A3BCE:  LDR             R2, [R2,#0x20]
3A3BD0:  CMP             R0, R2
3A3BD2:  BEQ             loc_3A3C3C
3A3BD4:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3BDA)
3A3BD6:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3BD8:  LDR             R2, [R2]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3BDA:  ADD.W           R2, R2, R1,LSL#2
3A3BDE:  LDR             R2, [R2,#0x24]
3A3BE0:  CMP             R0, R2
3A3BE2:  BEQ             loc_3A3C3C
3A3BE4:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3BEA)
3A3BE6:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3BE8:  LDR             R2, [R2]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3BEA:  ADD.W           R2, R2, R1,LSL#2
3A3BEE:  LDR             R2, [R2,#0x28]
3A3BF0:  CMP             R0, R2
3A3BF2:  BEQ             loc_3A3C3C
3A3BF4:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3BFA)
3A3BF6:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3BF8:  LDR             R2, [R2]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3BFA:  ADD.W           R2, R2, R1,LSL#2
3A3BFE:  LDR             R2, [R2,#0x2C]
3A3C00:  CMP             R0, R2
3A3C02:  BEQ             loc_3A3C3C
3A3C04:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3C0A)
3A3C06:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3C08:  LDR             R2, [R2]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3C0A:  ADD.W           R2, R2, R1,LSL#2
3A3C0E:  LDR             R2, [R2,#0x30]
3A3C10:  CMP             R0, R2
3A3C12:  BEQ             loc_3A3C3C
3A3C14:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3C1A)
3A3C16:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3C18:  LDR             R2, [R2]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3C1A:  ADD.W           R2, R2, R1,LSL#2
3A3C1E:  LDR             R2, [R2,#0x34]
3A3C20:  CMP             R0, R2
3A3C22:  BEQ             loc_3A3C3C
3A3C24:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A3C2A)
3A3C26:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A3C28:  LDR             R2, [R2]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A3C2A:  ADD.W           R1, R2, R1,LSL#2
3A3C2E:  LDR             R1, [R1,#0x38]
3A3C30:  CMP             R0, R1
3A3C32:  BEQ             loc_3A3C3C
3A3C34:  B               locret_3A3D76
3A3C36:  ADDS            R1, R0, #1; float
3A3C38:  BNE.W           locret_3A3D76
3A3C3C:  CBZ             R4, loc_3A3CBC
3A3C3E:  MOV             R0, #0x3F19999A; this
3A3C46:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3A3C4A:  MOV             R1, R0
3A3C4C:  MOV.W           R0, #0xFFFFFFFF
3A3C50:  CMP             R1, #0
3A3C52:  BEQ.W           locret_3A3D76
3A3C56:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x3A3C5C)
3A3C58:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
3A3C5A:  LDR             R1, [R1]; CGame::currArea ...
3A3C5C:  LDR             R1, [R1]; CGame::currArea
3A3C5E:  CMP             R1, #0
3A3C60:  BNE.W           locret_3A3D76
3A3C64:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x3A3C6C)
3A3C66:  MOVS            R1, #3; int
3A3C68:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
3A3C6A:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
3A3C6C:  LDRB            R5, [R0]; CClock::ms_nGameClockHours
3A3C6E:  MOVS            R0, #word_10; this
3A3C70:  BLX             j__ZN8CWeather15ForecastWeatherEii; CWeather::ForecastWeather(int,int)
3A3C74:  CBNZ            R0, loc_3A3C82
3A3C76:  MOVS            R0, #byte_8; this
3A3C78:  MOVS            R1, #3; int
3A3C7A:  BLX             j__ZN8CWeather15ForecastWeatherEii; CWeather::ForecastWeather(int,int)
3A3C7E:  CMP             R0, #1
3A3C80:  BNE             loc_3A3CF8
3A3C82:  MOV.W           R0, #0x3F000000; this
3A3C86:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3A3C8A:  CBZ             R0, loc_3A3C9E
3A3C8C:  LDR             R0, =(gRadioDJBanterWR_ptr - 0x3A3C92)
3A3C8E:  ADD             R0, PC; gRadioDJBanterWR_ptr ; this
3A3C90:  LDR             R2, [R0]; int (*)[2]
3A3C92:  MOV             R1, R4; signed __int8
3A3C94:  BLX             j__ZN20CAERadioTrackManager27ChooseDJBanterIndexFromListEaPA2_i; CAERadioTrackManager::ChooseDJBanterIndexFromList(signed char,int (*)[2])
3A3C98:  ADDS            R1, R0, #1; float
3A3C9A:  IT NE
3A3C9C:  POPNE           {R4,R5,R7,PC}
3A3C9E:  SUBS            R0, R5, #6
3A3CA0:  UXTB            R0, R0
3A3CA2:  CMP             R0, #2
3A3CA4:  BHI             loc_3A3CD8
3A3CA6:  MOV             R0, #0x3E99999A; this
3A3CAE:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3A3CB2:  CMP             R0, #0
3A3CB4:  BEQ             loc_3A3D78
3A3CB6:  LDR             R0, =(gRadioDJBanterTM_ptr - 0x3A3CBC)
3A3CB8:  ADD             R0, PC; gRadioDJBanterTM_ptr
3A3CBA:  B               loc_3A3D6A
3A3CBC:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
3A3CC0:  CMP             R0, #1
3A3CC2:  BNE             loc_3A3CCA
3A3CC4:  LDR             R0, =(gRadioDJBanterTN_ptr - 0x3A3CCA)
3A3CC6:  ADD             R0, PC; gRadioDJBanterTN_ptr
3A3CC8:  B               loc_3A3CCE
3A3CCA:  LDR             R0, =(gRadioDJBanterGN_ptr - 0x3A3CD0)
3A3CCC:  ADD             R0, PC; gRadioDJBanterGN_ptr ; this
3A3CCE:  LDR             R2, [R0]; int (*)[2]
3A3CD0:  MOVS            R1, #0; signed __int8
3A3CD2:  POP.W           {R4,R5,R7,LR}
3A3CD6:  B               _ZN20CAERadioTrackManager27ChooseDJBanterIndexFromListEaPA2_i; CAERadioTrackManager::ChooseDJBanterIndexFromList(signed char,int (*)[2])
3A3CD8:  SUB.W           R0, R5, #0x12
3A3CDC:  UXTB            R0, R0
3A3CDE:  CMP             R0, #2
3A3CE0:  BHI             loc_3A3D50
3A3CE2:  MOV             R0, #0x3E99999A; this
3A3CEA:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3A3CEE:  CMP             R0, #0
3A3CF0:  BEQ             loc_3A3D78
3A3CF2:  LDR             R0, =(gRadioDJBanterTE_ptr - 0x3A3CF8)
3A3CF4:  ADD             R0, PC; gRadioDJBanterTE_ptr
3A3CF6:  B               loc_3A3D6A
3A3CF8:  MOVS            R0, #0; this
3A3CFA:  MOVS            R1, #3; int
3A3CFC:  BLX             j__ZN8CWeather15ForecastWeatherEii; CWeather::ForecastWeather(int,int)
3A3D00:  CBNZ            R0, loc_3A3D32
3A3D02:  MOVS            R0, #(stderr+2); this
3A3D04:  MOVS            R1, #3; int
3A3D06:  BLX             j__ZN8CWeather15ForecastWeatherEii; CWeather::ForecastWeather(int,int)
3A3D0A:  CBNZ            R0, loc_3A3D32
3A3D0C:  MOVS            R0, #(byte_9+4); this
3A3D0E:  MOVS            R1, #3; int
3A3D10:  BLX             j__ZN8CWeather15ForecastWeatherEii; CWeather::ForecastWeather(int,int)
3A3D14:  CBNZ            R0, loc_3A3D32
3A3D16:  MOVS            R0, #byte_6; this
3A3D18:  MOVS            R1, #3; int
3A3D1A:  BLX             j__ZN8CWeather15ForecastWeatherEii; CWeather::ForecastWeather(int,int)
3A3D1E:  CBNZ            R0, loc_3A3D32
3A3D20:  MOVS            R0, #(byte_9+2); this
3A3D22:  MOVS            R1, #3; int
3A3D24:  BLX             j__ZN8CWeather15ForecastWeatherEii; CWeather::ForecastWeather(int,int)
3A3D28:  CBNZ            R0, loc_3A3D32
3A3D2A:  MOVS            R0, #(word_10+1); this
3A3D2C:  MOVS            R1, #3; int
3A3D2E:  BLX             j__ZN8CWeather15ForecastWeatherEii; CWeather::ForecastWeather(int,int)
3A3D32:  MOVS            R0, #byte_9; this
3A3D34:  MOVS            R1, #3; int
3A3D36:  BLX             j__ZN8CWeather15ForecastWeatherEii; CWeather::ForecastWeather(int,int)
3A3D3A:  CMP             R0, #1
3A3D3C:  BNE             loc_3A3C9E
3A3D3E:  MOV.W           R0, #0x3F000000; this
3A3D42:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3A3D46:  CMP             R0, #0
3A3D48:  BEQ             loc_3A3C9E
3A3D4A:  LDR             R0, =(gRadioDJBanterWF_ptr - 0x3A3D50)
3A3D4C:  ADD             R0, PC; gRadioDJBanterWF_ptr
3A3D4E:  B               loc_3A3C90
3A3D50:  SUBS            R0, R5, #3
3A3D52:  UXTB            R0, R0
3A3D54:  CMP             R0, #0x13
3A3D56:  BCC             loc_3A3D78
3A3D58:  MOV             R0, #0x3E99999A; this
3A3D60:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3A3D64:  CBZ             R0, loc_3A3D78
3A3D66:  LDR             R0, =(gRadioDJBanterTN_ptr - 0x3A3D6C)
3A3D68:  ADD             R0, PC; gRadioDJBanterTN_ptr ; this
3A3D6A:  LDR             R2, [R0]; int (*)[2]
3A3D6C:  MOV             R1, R4; signed __int8
3A3D6E:  BLX             j__ZN20CAERadioTrackManager27ChooseDJBanterIndexFromListEaPA2_i; CAERadioTrackManager::ChooseDJBanterIndexFromList(signed char,int (*)[2])
3A3D72:  ADDS            R1, R0, #1
3A3D74:  BEQ             loc_3A3D78
3A3D76:  POP             {R4,R5,R7,PC}
3A3D78:  LDR             R0, =(gRadioDJBanterGN_ptr - 0x3A3D80)
3A3D7A:  MOV             R1, R4; signed __int8
3A3D7C:  ADD             R0, PC; gRadioDJBanterGN_ptr ; this
3A3D7E:  LDR             R2, [R0]; gRadioDJBanterGN ; int (*)[2]
3A3D80:  POP.W           {R4,R5,R7,LR}
3A3D84:  B               _ZN20CAERadioTrackManager27ChooseDJBanterIndexFromListEaPA2_i; CAERadioTrackManager::ChooseDJBanterIndexFromList(signed char,int (*)[2])
