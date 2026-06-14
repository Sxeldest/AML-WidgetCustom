; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager15ResetStatisticsEv
; Address            : 0x3A20E4 - 0x3A21CE
; =========================================================

3A20E4:  PUSH            {R4-R7,LR}
3A20E6:  ADD             R7, SP, #0xC
3A20E8:  PUSH.W          {R11}
3A20EC:  LDR             R0, =(_ZN20CAERadioTrackManager28m_nStatsLastHitGameClockDaysE_ptr - 0x3A20F6)
3A20EE:  LDR             R2, =(_ZN20CAERadioTrackManager23m_nStatsStartedBadlandsE_ptr - 0x3A20FA)
3A20F0:  LDR             R3, =(_ZN20CAERadioTrackManager19m_nStatsStartedCat2E_ptr - 0x3A20FE)
3A20F2:  ADD             R0, PC; _ZN20CAERadioTrackManager28m_nStatsLastHitGameClockDaysE_ptr
3A20F4:  LDR             R4, =(_ZN20CAERadioTrackManager21m_nStatsStartedCrash1E_ptr - 0x3A2100)
3A20F6:  ADD             R2, PC; _ZN20CAERadioTrackManager23m_nStatsStartedBadlandsE_ptr
3A20F8:  LDR             R5, =(_ZN20CAERadioTrackManager20m_nStatsCitiesPassedE_ptr - 0x3A2104)
3A20FA:  ADD             R3, PC; _ZN20CAERadioTrackManager19m_nStatsStartedCat2E_ptr
3A20FC:  ADD             R4, PC; _ZN20CAERadioTrackManager21m_nStatsStartedCrash1E_ptr
3A20FE:  LDR             R1, =(_ZN20CAERadioTrackManager21m_nStatsPassedVCrash2E_ptr - 0x3A210A)
3A2100:  ADD             R5, PC; _ZN20CAERadioTrackManager20m_nStatsCitiesPassedE_ptr
3A2102:  LDR             R6, =(_ZN20CAERadioTrackManager20m_nStatsPassedTruth2E_ptr - 0x3A2110)
3A2104:  LDR             R0, [R0]; CAERadioTrackManager::m_nStatsLastHitGameClockDays ...
3A2106:  ADD             R1, PC; _ZN20CAERadioTrackManager21m_nStatsPassedVCrash2E_ptr
3A2108:  LDR.W           LR, [R2]; CAERadioTrackManager::m_nStatsStartedBadlands ...
3A210C:  ADD             R6, PC; _ZN20CAERadioTrackManager20m_nStatsPassedTruth2E_ptr
3A210E:  LDR             R2, [R3]; CAERadioTrackManager::m_nStatsStartedCat2 ...
3A2110:  LDR             R3, [R4]; CAERadioTrackManager::m_nStatsStartedCrash1 ...
3A2112:  LDR             R4, [R5]; CAERadioTrackManager::m_nStatsCitiesPassed ...
3A2114:  MOVS            R5, #0xFF
3A2116:  STRB            R5, [R0]; CAERadioTrackManager::m_nStatsLastHitGameClockDays
3A2118:  MOVS            R0, #0
3A211A:  LDR.W           R12, [R1]; CAERadioTrackManager::m_nStatsPassedVCrash2 ...
3A211E:  LDR             R1, [R6]; CAERadioTrackManager::m_nStatsPassedTruth2 ...
3A2120:  LDR             R6, =(_ZN20CAERadioTrackManager27m_nStatsLastHitTimeOutHoursE_ptr - 0x3A212A)
3A2122:  STRB            R0, [R4]; CAERadioTrackManager::m_nStatsCitiesPassed
3A2124:  LDR             R4, =(_ZN20CAERadioTrackManager29m_nStatsLastHitGameClockHoursE_ptr - 0x3A212E)
3A2126:  ADD             R6, PC; _ZN20CAERadioTrackManager27m_nStatsLastHitTimeOutHoursE_ptr
3A2128:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedTruth2
3A212A:  ADD             R4, PC; _ZN20CAERadioTrackManager29m_nStatsLastHitGameClockHoursE_ptr
3A212C:  LDR             R6, [R6]; CAERadioTrackManager::m_nStatsLastHitTimeOutHours ...
3A212E:  STRB.W          R0, [R12]; CAERadioTrackManager::m_nStatsPassedVCrash2
3A2132:  LDR             R4, [R4]; CAERadioTrackManager::m_nStatsLastHitGameClockHours ...
3A2134:  STRB            R5, [R6]; CAERadioTrackManager::m_nStatsLastHitTimeOutHours
3A2136:  STRB.W          R0, [LR]; CAERadioTrackManager::m_nStatsStartedBadlands
3A213A:  STRB            R5, [R4]; CAERadioTrackManager::m_nStatsLastHitGameClockHours
3A213C:  LDR             R5, =(_ZN20CAERadioTrackManager21m_nStatsPassedCasino3E_ptr - 0x3A2144)
3A213E:  LDR             R4, =(_ZN20CAERadioTrackManager20m_nStatsPassedStrap4E_ptr - 0x3A2148)
3A2140:  ADD             R5, PC; _ZN20CAERadioTrackManager21m_nStatsPassedCasino3E_ptr
3A2142:  STRB            R0, [R2]; CAERadioTrackManager::m_nStatsStartedCat2
3A2144:  ADD             R4, PC; _ZN20CAERadioTrackManager20m_nStatsPassedStrap4E_ptr
3A2146:  STRB            R0, [R3]; CAERadioTrackManager::m_nStatsStartedCrash1
3A2148:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedCasino3 ...
3A214A:  LDR             R4, [R4]; CAERadioTrackManager::m_nStatsPassedStrap4 ...
3A214C:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedCasino3
3A214E:  LDR             R5, =(_ZN20CAERadioTrackManager21m_nStatsPassedCasino6E_ptr - 0x3A2156)
3A2150:  STRB            R0, [R4]; CAERadioTrackManager::m_nStatsPassedStrap4
3A2152:  ADD             R5, PC; _ZN20CAERadioTrackManager21m_nStatsPassedCasino6E_ptr
3A2154:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedCasino6 ...
3A2156:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedCasino6
3A2158:  LDR             R5, =(_ZN20CAERadioTrackManager22m_nStatsPassedCasino10E_ptr - 0x3A215E)
3A215A:  ADD             R5, PC; _ZN20CAERadioTrackManager22m_nStatsPassedCasino10E_ptr
3A215C:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedCasino10 ...
3A215E:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedCasino10
3A2160:  LDR             R5, =(_ZN20CAERadioTrackManager18m_nStatsPassedCat1E_ptr - 0x3A2166)
3A2162:  ADD             R5, PC; _ZN20CAERadioTrackManager18m_nStatsPassedCat1E_ptr
3A2164:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedCat1 ...
3A2166:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedCat1
3A2168:  LDR             R5, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert1E_ptr - 0x3A216E)
3A216A:  ADD             R5, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert1E_ptr
3A216C:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedDesert1 ...
3A216E:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedDesert1
3A2170:  LDR             R5, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert3E_ptr - 0x3A2176)
3A2172:  ADD             R5, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert3E_ptr
3A2174:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedDesert3 ...
3A2176:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedDesert3
3A2178:  LDR             R5, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert5E_ptr - 0x3A217E)
3A217A:  ADD             R5, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert5E_ptr
3A217C:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedDesert5 ...
3A217E:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedDesert5
3A2180:  LDR             R5, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert8E_ptr - 0x3A2186)
3A2182:  ADD             R5, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert8E_ptr
3A2184:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedDesert8 ...
3A2186:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedDesert8
3A2188:  LDR             R5, =(_ZN20CAERadioTrackManager22m_nStatsPassedDesert10E_ptr - 0x3A218E)
3A218A:  ADD             R5, PC; _ZN20CAERadioTrackManager22m_nStatsPassedDesert10E_ptr
3A218C:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedDesert10 ...
3A218E:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedDesert10
3A2190:  LDR             R5, =(_ZN20CAERadioTrackManager21m_nStatsPassedFarlie3E_ptr - 0x3A2196)
3A2192:  ADD             R5, PC; _ZN20CAERadioTrackManager21m_nStatsPassedFarlie3E_ptr
3A2194:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedFarlie3 ...
3A2196:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedFarlie3
3A2198:  LDR             R5, =(_ZN20CAERadioTrackManager20m_nStatsPassedLAFin2E_ptr - 0x3A219E)
3A219A:  ADD             R5, PC; _ZN20CAERadioTrackManager20m_nStatsPassedLAFin2E_ptr
3A219C:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedLAFin2 ...
3A219E:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedLAFin2
3A21A0:  LDR             R5, =(_ZN20CAERadioTrackManager22m_nStatsPassedMansion2E_ptr - 0x3A21A6)
3A21A2:  ADD             R5, PC; _ZN20CAERadioTrackManager22m_nStatsPassedMansion2E_ptr
3A21A4:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedMansion2 ...
3A21A6:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedMansion2
3A21A8:  LDR             R5, =(_ZN20CAERadioTrackManager20m_nStatsPassedRyder2E_ptr - 0x3A21AE)
3A21AA:  ADD             R5, PC; _ZN20CAERadioTrackManager20m_nStatsPassedRyder2E_ptr
3A21AC:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedRyder2 ...
3A21AE:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedRyder2
3A21B0:  LDR             R5, =(_ZN20CAERadioTrackManager19m_nStatsPassedRiot1E_ptr - 0x3A21B6)
3A21B2:  ADD             R5, PC; _ZN20CAERadioTrackManager19m_nStatsPassedRiot1E_ptr
3A21B4:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedRiot1 ...
3A21B6:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedRiot1
3A21B8:  LDR             R5, =(_ZN20CAERadioTrackManager21m_nStatsPassedSCrash1E_ptr - 0x3A21BE)
3A21BA:  ADD             R5, PC; _ZN20CAERadioTrackManager21m_nStatsPassedSCrash1E_ptr
3A21BC:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedSCrash1 ...
3A21BE:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedSCrash1
3A21C0:  LDR             R5, =(_ZN20CAERadioTrackManager20m_nStatsPassedSweet2E_ptr - 0x3A21C6)
3A21C2:  ADD             R5, PC; _ZN20CAERadioTrackManager20m_nStatsPassedSweet2E_ptr
3A21C4:  LDR             R5, [R5]; CAERadioTrackManager::m_nStatsPassedSweet2 ...
3A21C6:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedSweet2
3A21C8:  POP.W           {R11}
3A21CC:  POP             {R4-R7,PC}
