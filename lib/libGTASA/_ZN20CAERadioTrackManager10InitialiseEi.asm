; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager10InitialiseEi
; Address            : 0x46CF10 - 0x46D1F2
; =========================================================

46CF10:  PUSH            {R4-R7,LR}
46CF12:  ADD             R7, SP, #0xC
46CF14:  PUSH.W          {R8-R11}
46CF18:  SUB             SP, SP, #4
46CF1A:  VPUSH           {D8-D11}
46CF1E:  SUB             SP, SP, #8
46CF20:  MOV             R6, R0
46CF22:  LDR             R0, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x46CF2E)
46CF24:  LDR             R2, =(_ZN20CAERadioTrackManager20m_nIdentIndexHistoryE_ptr - 0x46CF32)
46CF26:  MOVS            R5, #7
46CF28:  LDR             R3, =(_ZN20CAERadioTrackManager25m_nMusicTrackIndexHistoryE_ptr - 0x46CF34)
46CF2A:  ADD             R0, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
46CF2C:  LDR             R4, =(_ZN20CAERadioTrackManager21m_nAdvertIndexHistoryE_ptr - 0x46CF3A)
46CF2E:  ADD             R2, PC; _ZN20CAERadioTrackManager20m_nIdentIndexHistoryE_ptr
46CF30:  ADD             R3, PC; _ZN20CAERadioTrackManager25m_nMusicTrackIndexHistoryE_ptr
46CF32:  LDR.W           R10, [R0]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
46CF36:  ADD             R4, PC; _ZN20CAERadioTrackManager21m_nAdvertIndexHistoryE_ptr
46CF38:  MOVS            R0, #0; this
46CF3A:  STRD.W          R1, R5, [R6,#0x64]
46CF3E:  LDR.W           R11, [R4]; CAERadioTrackManager::m_nAdvertIndexHistory ...
46CF42:  STRH            R0, [R6]
46CF44:  LDR             R4, [R2]; CAERadioTrackManager::m_nIdentIndexHistory ...
46CF46:  LDR             R5, [R3]; CAERadioTrackManager::m_nMusicTrackIndexHistory ...
46CF48:  BLX             j__ZN6CStats31GetFullFavoriteRadioStationListEv; CStats::GetFullFavoriteRadioStationList(void)
46CF4C:  MOV             R1, R0
46CF4E:  VLDR            D20, [R0,#0x30]
46CF52:  ADDS            R0, #0x20 ; ' '
46CF54:  VLD1.32         {D16-D17}, [R1]!
46CF58:  VMOV.I8         Q4, #0xFF
46CF5C:  MOV.W           R8, #0xFFFFFFFF
46CF60:  VLD1.32         {D22-D23}, [R0]
46CF64:  ADD.W           R0, R6, #0x18
46CF68:  MOV.W           R9, #0
46CF6C:  VLD1.32         {D18-D19}, [R1]
46CF70:  VST1.32         {D16-D17}, [R0]
46CF74:  ADD.W           R0, R6, #0x38 ; '8'
46CF78:  VSTR            D20, [R6,#0x48]
46CF7C:  VST1.32         {D22-D23}, [R0]
46CF80:  ADD.W           R0, R6, #0x28 ; '('
46CF84:  STR             R6, [SP,#0x48+var_44]
46CF86:  MOVS            R6, #8
46CF88:  VST1.32         {D18-D19}, [R0]
46CF8C:  ADR             R0, dword_46D200
46CF8E:  VLD1.64         {D10-D11}, [R0@128]
46CF92:  MOV             R0, R11
46CF94:  MOVS            R1, #0xA0
46CF96:  MOVS            R2, #0xFF
46CF98:  STR.W           R8, [R5,#0x10]
46CF9C:  STR.W           R8, [R5,#0xC]
46CFA0:  STR.W           R8, [R5,#8]
46CFA4:  STR.W           R8, [R5,#4]
46CFA8:  STR.W           R8, [R5]; CAERadioTrackManager::m_nMusicTrackIndexHistory
46CFAC:  STRD.W          R8, R8, [R4]; CAERadioTrackManager::m_nIdentIndexHistory
46CFB0:  STRD.W          R8, R8, [R4,#8]
46CFB4:  STRD.W          R8, R8, [R4,#0x10]
46CFB8:  STRD.W          R8, R8, [R4,#0x18]
46CFBC:  BLX             j___aeabi_memset8_0
46CFC0:  MOV             R0, R10
46CFC2:  MOVS            R1, #0x3C ; '<'
46CFC4:  MOVS            R2, #0xFF
46CFC6:  BLX             j___aeabi_memset8_0
46CFCA:  LDR             R2, [SP,#0x48+var_44]; int
46CFCC:  ADDS            R5, #0x14
46CFCE:  ADDS            R4, #0x20 ; ' '
46CFD0:  ADD.W           R11, R11, #0xA0
46CFD4:  ADD.W           R0, R2, R9
46CFD8:  ADD.W           R9, R9, #0x2C ; ','
46CFDC:  ADD.W           R1, R0, #0x110
46CFE0:  ADD.W           R10, R10, #0x3C ; '<'
46CFE4:  CMP.W           R9, #0x268
46CFE8:  VST1.32         {D8-D9}, [R1]
46CFEC:  ADD.W           R1, R0, #0x100
46CFF0:  VST1.32         {D10-D11}, [R1]
46CFF4:  MOV.W           R1, #0xFF
46CFF8:  STRB.W          R1, [R0,#0x128]
46CFFC:  MOV             R1, #0xFF060606
46D004:  STR.W           R8, [R0,#0x120]
46D008:  STR.W           R1, [R0,#0x124]
46D00C:  MOV.W           R0, #0
46D010:  STRB            R0, [R2,R6]
46D012:  ADD.W           R6, R6, #1
46D016:  BNE             loc_46CF92
46D018:  MOVS            R0, #(stderr+1); this
46D01A:  MOVS            R1, #0xD; int
46D01C:  MOV.W           R8, #1
46D020:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
46D024:  LDR             R4, [SP,#0x48+var_44]
46D026:  VMOV.I8         Q8, #0xFF
46D02A:  LDR             R1, =(_ZN20CAERadioTrackManager21m_nStatsStartedCrash1E_ptr - 0x46D03E)
46D02C:  MOVS            R2, #2
46D02E:  ADD.W           R5, R4, #0x88
46D032:  MOVS            R6, #0xFF
46D034:  STRB.W          R0, [R4,#0xAD]
46D038:  MOVS            R0, #0
46D03A:  ADD             R1, PC; _ZN20CAERadioTrackManager21m_nStatsStartedCrash1E_ptr
46D03C:  STRB.W          R0, [R4,#0xAE]
46D040:  STRB.W          R2, [R4,#0xAC]
46D044:  MOVS            R2, #6
46D046:  MOV             R3, R4
46D048:  STRB.W          R6, [R4,#0xBB]
46D04C:  STRB.W          R6, [R4,#0xBC]
46D050:  STRB.W          R2, [R4,#0xB5]
46D054:  STRB.W          R6, [R4,#0xBD]
46D058:  STRB.W          R2, [R4,#0xB6]
46D05C:  STRB.W          R6, [R4,#0xBE]
46D060:  STRB.W          R2, [R4,#0xB7]
46D064:  STRB.W          R6, [R4,#0xBF]
46D068:  STRB.W          R2, [R4,#0xB8]
46D06C:  VST1.32         {D16-D17}, [R5]
46D070:  STRB.W          R2, [R3,#0xB4]!
46D074:  MOVW            R2, #0x606
46D078:  STR.W           R0, [R4,#0xA8]!
46D07C:  LDR.W           R12, [R1]; CAERadioTrackManager::m_nStatsStartedCrash1 ...
46D080:  ADR             R1, dword_46D210
46D082:  STRH.W          R2, [R4,#0x11]
46D086:  MOVW            R2, #0xFFFF
46D08A:  VLD1.64         {D16-D17}, [R1@128]
46D08E:  SUB.W           R1, R4, #0x10
46D092:  STRH            R2, [R4,#0x18]
46D094:  VLD1.32         {D18-D19}, [R4]
46D098:  VLD1.32         {D20-D21}, [R3]
46D09C:  VST1.32         {D16-D17}, [R1]
46D0A0:  VLD1.32         {D16-D17}, [R1]
46D0A4:  ADD.W           R1, R4, #0x3C ; '<'
46D0A8:  VST1.32         {D18-D19}, [R1]
46D0AC:  LDR             R1, =(_ZN20CAERadioTrackManager23m_nStatsStartedBadlandsE_ptr - 0x46D0B8)
46D0AE:  VLD1.32         {D18-D19}, [R5]
46D0B2:  MOVS            R5, #3
46D0B4:  ADD             R1, PC; _ZN20CAERadioTrackManager23m_nStatsStartedBadlandsE_ptr
46D0B6:  LDR             R2, =(_ZN20CAERadioTrackManager19m_nStatsStartedCat2E_ptr - 0x46D0C2)
46D0B8:  LDR             R3, [R1]; CAERadioTrackManager::m_nStatsStartedBadlands ...
46D0BA:  ADD.W           R1, R4, #0x48 ; 'H'
46D0BE:  ADD             R2, PC; _ZN20CAERadioTrackManager19m_nStatsStartedCat2E_ptr
46D0C0:  VST1.32         {D20-D21}, [R1]
46D0C4:  ADD.W           R1, R4, #0x2C ; ','
46D0C8:  VST1.32         {D16-D17}, [R1]
46D0CC:  ADD.W           R1, R4, #0x1C
46D0D0:  VST1.32         {D18-D19}, [R1]
46D0D4:  MOV.W           R1, #0xFFFFFFFF
46D0D8:  STRD.W          R1, R1, [R4,#-0x34]
46D0DC:  STR.W           R1, [R4,#-0x2C]
46D0E0:  LDR             R1, =(_ZN20CAERadioTrackManager23m_nSpecialDJBanterIndexE_ptr - 0x46D0EA)
46D0E2:  STRD.W          R0, R0, [R4,#-0x3C]
46D0E6:  ADD             R1, PC; _ZN20CAERadioTrackManager23m_nSpecialDJBanterIndexE_ptr
46D0E8:  STRB.W          R6, [R4,#-0x92]
46D0EC:  STRB.W          R6, [R4,#-0x91]
46D0F0:  LDR             R1, [R1]; CAERadioTrackManager::m_nSpecialDJBanterIndex ...
46D0F2:  STRD.W          R0, R0, [R4,#-0x58]
46D0F6:  STRD.W          R0, R0, [R4,#-0x50]
46D0FA:  STR.W           R0, [R4,#-0x48]
46D0FE:  STRH.W          R0, [R4,#-0xA6]
46D102:  STRB.W          R8, [R4,#-0xA1]
46D106:  STRB.W          R8, [R4,#-0xA4]
46D10A:  STRB            R6, [R1]; CAERadioTrackManager::m_nSpecialDJBanterIndex
46D10C:  LDR             R1, =(_ZN20CAERadioTrackManager25m_nSpecialDJBanterPendingE_ptr - 0x46D114)
46D10E:  LDR             R2, [R2]; CAERadioTrackManager::m_nStatsStartedCat2 ...
46D110:  ADD             R1, PC; _ZN20CAERadioTrackManager25m_nSpecialDJBanterPendingE_ptr
46D112:  LDR             R1, [R1]; CAERadioTrackManager::m_nSpecialDJBanterPending ...
46D114:  STRB            R5, [R1]; CAERadioTrackManager::m_nSpecialDJBanterPending
46D116:  LDR             R1, =(_ZN20CAERadioTrackManager29m_nStatsLastHitGameClockHoursE_ptr - 0x46D120)
46D118:  STRD.W          R0, R0, [R4,#-0x28]
46D11C:  ADD             R1, PC; _ZN20CAERadioTrackManager29m_nStatsLastHitGameClockHoursE_ptr
46D11E:  STRH.W          R0, [R4,#-0xA3]
46D122:  STRB            R0, [R3]; CAERadioTrackManager::m_nStatsStartedBadlands
46D124:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsLastHitGameClockHours ...
46D126:  STRB            R0, [R2]; CAERadioTrackManager::m_nStatsStartedCat2
46D128:  STRB.W          R0, [R12]; CAERadioTrackManager::m_nStatsStartedCrash1
46D12C:  STRB            R6, [R1]; CAERadioTrackManager::m_nStatsLastHitGameClockHours
46D12E:  LDR             R1, =(_ZN20CAERadioTrackManager28m_nStatsLastHitGameClockDaysE_ptr - 0x46D134)
46D130:  ADD             R1, PC; _ZN20CAERadioTrackManager28m_nStatsLastHitGameClockDaysE_ptr
46D132:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsLastHitGameClockDays ...
46D134:  STRB            R6, [R1]; CAERadioTrackManager::m_nStatsLastHitGameClockDays
46D136:  LDR             R1, =(_ZN20CAERadioTrackManager20m_nStatsCitiesPassedE_ptr - 0x46D13C)
46D138:  ADD             R1, PC; _ZN20CAERadioTrackManager20m_nStatsCitiesPassedE_ptr
46D13A:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsCitiesPassed ...
46D13C:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsCitiesPassed
46D13E:  LDR             R1, =(_ZN20CAERadioTrackManager21m_nStatsPassedVCrash2E_ptr - 0x46D144)
46D140:  ADD             R1, PC; _ZN20CAERadioTrackManager21m_nStatsPassedVCrash2E_ptr
46D142:  LDR             R5, [R1]; CAERadioTrackManager::m_nStatsPassedVCrash2 ...
46D144:  LDR             R1, =(_ZN20CAERadioTrackManager27m_nStatsLastHitTimeOutHoursE_ptr - 0x46D14A)
46D146:  ADD             R1, PC; _ZN20CAERadioTrackManager27m_nStatsLastHitTimeOutHoursE_ptr
46D148:  STRB            R0, [R5]; CAERadioTrackManager::m_nStatsPassedVCrash2
46D14A:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsLastHitTimeOutHours ...
46D14C:  STRB            R6, [R1]; CAERadioTrackManager::m_nStatsLastHitTimeOutHours
46D14E:  LDR             R1, =(_ZN20CAERadioTrackManager21m_nStatsPassedCasino3E_ptr - 0x46D154)
46D150:  ADD             R1, PC; _ZN20CAERadioTrackManager21m_nStatsPassedCasino3E_ptr
46D152:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedCasino3 ...
46D154:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedCasino3
46D156:  LDR             R1, =(_ZN20CAERadioTrackManager21m_nStatsPassedCasino6E_ptr - 0x46D15C)
46D158:  ADD             R1, PC; _ZN20CAERadioTrackManager21m_nStatsPassedCasino6E_ptr
46D15A:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedCasino6 ...
46D15C:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedCasino6
46D15E:  LDR             R1, =(_ZN20CAERadioTrackManager22m_nStatsPassedCasino10E_ptr - 0x46D164)
46D160:  ADD             R1, PC; _ZN20CAERadioTrackManager22m_nStatsPassedCasino10E_ptr
46D162:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedCasino10 ...
46D164:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedCasino10
46D166:  LDR             R1, =(_ZN20CAERadioTrackManager18m_nStatsPassedCat1E_ptr - 0x46D16C)
46D168:  ADD             R1, PC; _ZN20CAERadioTrackManager18m_nStatsPassedCat1E_ptr
46D16A:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedCat1 ...
46D16C:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedCat1
46D16E:  LDR             R1, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert1E_ptr - 0x46D174)
46D170:  ADD             R1, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert1E_ptr
46D172:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedDesert1 ...
46D174:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedDesert1
46D176:  LDR             R1, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert3E_ptr - 0x46D17C)
46D178:  ADD             R1, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert3E_ptr
46D17A:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedDesert3 ...
46D17C:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedDesert3
46D17E:  LDR             R1, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert5E_ptr - 0x46D184)
46D180:  ADD             R1, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert5E_ptr
46D182:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedDesert5 ...
46D184:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedDesert5
46D186:  LDR             R1, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert8E_ptr - 0x46D18C)
46D188:  ADD             R1, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert8E_ptr
46D18A:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedDesert8 ...
46D18C:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedDesert8
46D18E:  LDR             R1, =(_ZN20CAERadioTrackManager22m_nStatsPassedDesert10E_ptr - 0x46D194)
46D190:  ADD             R1, PC; _ZN20CAERadioTrackManager22m_nStatsPassedDesert10E_ptr
46D192:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedDesert10 ...
46D194:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedDesert10
46D196:  LDR             R1, =(_ZN20CAERadioTrackManager21m_nStatsPassedFarlie3E_ptr - 0x46D19C)
46D198:  ADD             R1, PC; _ZN20CAERadioTrackManager21m_nStatsPassedFarlie3E_ptr
46D19A:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedFarlie3 ...
46D19C:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedFarlie3
46D19E:  LDR             R1, =(_ZN20CAERadioTrackManager20m_nStatsPassedLAFin2E_ptr - 0x46D1A4)
46D1A0:  ADD             R1, PC; _ZN20CAERadioTrackManager20m_nStatsPassedLAFin2E_ptr
46D1A2:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedLAFin2 ...
46D1A4:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedLAFin2
46D1A6:  LDR             R1, =(_ZN20CAERadioTrackManager22m_nStatsPassedMansion2E_ptr - 0x46D1AC)
46D1A8:  ADD             R1, PC; _ZN20CAERadioTrackManager22m_nStatsPassedMansion2E_ptr
46D1AA:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedMansion2 ...
46D1AC:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedMansion2
46D1AE:  LDR             R1, =(_ZN20CAERadioTrackManager20m_nStatsPassedRyder2E_ptr - 0x46D1B4)
46D1B0:  ADD             R1, PC; _ZN20CAERadioTrackManager20m_nStatsPassedRyder2E_ptr
46D1B2:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedRyder2 ...
46D1B4:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedRyder2
46D1B6:  LDR             R1, =(_ZN20CAERadioTrackManager19m_nStatsPassedRiot1E_ptr - 0x46D1BC)
46D1B8:  ADD             R1, PC; _ZN20CAERadioTrackManager19m_nStatsPassedRiot1E_ptr
46D1BA:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedRiot1 ...
46D1BC:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedRiot1
46D1BE:  LDR             R1, =(_ZN20CAERadioTrackManager21m_nStatsPassedSCrash1E_ptr - 0x46D1C4)
46D1C0:  ADD             R1, PC; _ZN20CAERadioTrackManager21m_nStatsPassedSCrash1E_ptr
46D1C2:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedSCrash1 ...
46D1C4:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedSCrash1
46D1C6:  LDR             R1, =(_ZN20CAERadioTrackManager20m_nStatsPassedSweet2E_ptr - 0x46D1CC)
46D1C8:  ADD             R1, PC; _ZN20CAERadioTrackManager20m_nStatsPassedSweet2E_ptr
46D1CA:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedSweet2 ...
46D1CC:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedSweet2
46D1CE:  LDR             R1, =(_ZN20CAERadioTrackManager20m_nStatsPassedStrap4E_ptr - 0x46D1D4)
46D1D0:  ADD             R1, PC; _ZN20CAERadioTrackManager20m_nStatsPassedStrap4E_ptr
46D1D2:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedStrap4 ...
46D1D4:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedStrap4
46D1D6:  LDR             R1, =(_ZN20CAERadioTrackManager20m_nStatsPassedTruth2E_ptr - 0x46D1DC)
46D1D8:  ADD             R1, PC; _ZN20CAERadioTrackManager20m_nStatsPassedTruth2E_ptr
46D1DA:  LDR             R1, [R1]; CAERadioTrackManager::m_nStatsPassedTruth2 ...
46D1DC:  STRB            R0, [R1]; CAERadioTrackManager::m_nStatsPassedTruth2
46D1DE:  STR.W           R0, [R4,#0x2C0]
46D1E2:  MOVS            R0, #1
46D1E4:  ADD             SP, SP, #8
46D1E6:  VPOP            {D8-D11}
46D1EA:  ADD             SP, SP, #4
46D1EC:  POP.W           {R8-R11}
46D1F0:  POP             {R4-R7,PC}
