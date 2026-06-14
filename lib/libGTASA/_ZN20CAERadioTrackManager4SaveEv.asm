; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager4SaveEv
; Address            : 0x48ED78 - 0x48F102
; =========================================================

48ED78:  PUSH            {R4-R7,LR}
48ED7A:  ADD             R7, SP, #0xC
48ED7C:  PUSH.W          {R8-R11}
48ED80:  SUB             SP, SP, #4
48ED82:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nAdvertIndexHistoryE_ptr - 0x48ED8E)
48ED84:  MOV.W           R8, #0
48ED88:  LDR             R1, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x48ED90)
48ED8A:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nAdvertIndexHistoryE_ptr
48ED8C:  ADD             R1, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
48ED8E:  LDR.W           R9, [R0]; CAERadioTrackManager::m_nAdvertIndexHistory ...
48ED92:  LDR             R0, =(_ZN20CAERadioTrackManager25m_nMusicTrackIndexHistoryE_ptr - 0x48ED9A)
48ED94:  LDR             R6, [R1]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
48ED96:  ADD             R0, PC; _ZN20CAERadioTrackManager25m_nMusicTrackIndexHistoryE_ptr
48ED98:  LDR             R0, [R0]; CAERadioTrackManager::m_nMusicTrackIndexHistory ...
48ED9A:  STR             R0, [SP,#0x20+var_20]
48ED9C:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nIdentIndexHistoryE_ptr - 0x48EDA2)
48ED9E:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nIdentIndexHistoryE_ptr
48EDA0:  LDR.W           R10, [R0]; CAERadioTrackManager::m_nIdentIndexHistory ...
48EDA4:  ADD.W           R0, R8, R8,LSL#2
48EDA8:  LDR             R1, [SP,#0x20+var_20]
48EDAA:  ADD.W           R4, R1, R0,LSL#2
48EDAE:  MOVS            R1, #(stderr+1); void *
48EDB0:  MOV             R0, R4; this
48EDB2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EDB6:  ADDS            R0, R4, #1; this
48EDB8:  MOVS            R1, #(stderr+1); void *
48EDBA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EDBE:  ADDS            R0, R4, #2; this
48EDC0:  MOVS            R1, #(stderr+1); void *
48EDC2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EDC6:  ADDS            R0, R4, #3; this
48EDC8:  MOVS            R1, #(stderr+1); void *
48EDCA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EDCE:  ADDS            R0, R4, #4; this
48EDD0:  MOVS            R1, #(stderr+1); void *
48EDD2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EDD6:  ADDS            R0, R4, #5; this
48EDD8:  MOVS            R1, #(stderr+1); void *
48EDDA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EDDE:  ADDS            R0, R4, #6; this
48EDE0:  MOVS            R1, #(stderr+1); void *
48EDE2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EDE6:  ADDS            R0, R4, #7; this
48EDE8:  MOVS            R1, #(stderr+1); void *
48EDEA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EDEE:  ADD.W           R0, R4, #8; this
48EDF2:  MOVS            R1, #(stderr+1); void *
48EDF4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EDF8:  ADD.W           R0, R4, #9; this
48EDFC:  MOVS            R1, #(stderr+1); void *
48EDFE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EE02:  ADD.W           R0, R4, #0xA; this
48EE06:  MOVS            R1, #(stderr+1); void *
48EE08:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EE0C:  ADD.W           R0, R4, #0xB; this
48EE10:  MOVS            R1, #(stderr+1); void *
48EE12:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EE16:  ADD.W           R0, R4, #0xC; this
48EE1A:  MOVS            R1, #(stderr+1); void *
48EE1C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EE20:  ADD.W           R0, R4, #0xD; this
48EE24:  MOVS            R1, #(stderr+1); void *
48EE26:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EE2A:  ADD.W           R0, R4, #0xE; this
48EE2E:  MOVS            R1, #(stderr+1); void *
48EE30:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EE34:  ADD.W           R0, R4, #0xF; this
48EE38:  MOVS            R1, #(stderr+1); void *
48EE3A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EE3E:  ADD.W           R0, R4, #0x10; this
48EE42:  MOVS            R1, #(stderr+1); void *
48EE44:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EE48:  ADD.W           R0, R4, #0x11; this
48EE4C:  MOVS            R1, #(stderr+1); void *
48EE4E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EE52:  ADD.W           R0, R4, #0x12; this
48EE56:  MOVS            R1, #(stderr+1); void *
48EE58:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EE5C:  ADD.W           R0, R4, #0x13; this
48EE60:  MOVS            R1, #(stderr+1); void *
48EE62:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EE66:  MOVS            R0, #4; byte_count
48EE68:  MOV.W           R5, R8,LSL#5
48EE6C:  BLX             malloc
48EE70:  MOV             R4, R0
48EE72:  LDR.W           R0, [R10,R5]
48EE76:  STR             R0, [R4]
48EE78:  MOV             R0, R4; this
48EE7A:  MOVS            R1, #byte_4; void *
48EE7C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EE80:  MOV             R0, R4; p
48EE82:  BLX             free
48EE86:  MOVS            R0, #4; byte_count
48EE88:  ADD.W           R11, R10, R8,LSL#5
48EE8C:  BLX             malloc
48EE90:  MOV             R4, R0
48EE92:  LDR.W           R0, [R11,#4]
48EE96:  STR             R0, [R4]
48EE98:  MOV             R0, R4; this
48EE9A:  MOVS            R1, #byte_4; void *
48EE9C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EEA0:  MOV             R0, R4; p
48EEA2:  BLX             free
48EEA6:  MOVS            R0, #4; byte_count
48EEA8:  BLX             malloc
48EEAC:  MOV             R4, R0
48EEAE:  LDR.W           R0, [R11,#8]
48EEB2:  STR             R0, [R4]
48EEB4:  MOV             R0, R4; this
48EEB6:  MOVS            R1, #byte_4; void *
48EEB8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EEBC:  MOV             R0, R4; p
48EEBE:  BLX             free
48EEC2:  MOVS            R0, #4; byte_count
48EEC4:  BLX             malloc
48EEC8:  MOV             R4, R0
48EECA:  LDR.W           R0, [R11,#0xC]
48EECE:  STR             R0, [R4]
48EED0:  MOV             R0, R4; this
48EED2:  MOVS            R1, #byte_4; void *
48EED4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EED8:  MOV             R0, R4; p
48EEDA:  BLX             free
48EEDE:  MOVS            R0, #4; byte_count
48EEE0:  BLX             malloc
48EEE4:  MOV             R4, R0
48EEE6:  LDR.W           R0, [R11,#0x10]
48EEEA:  STR             R0, [R4]
48EEEC:  MOV             R0, R4; this
48EEEE:  MOVS            R1, #byte_4; void *
48EEF0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EEF4:  MOV             R0, R4; p
48EEF6:  BLX             free
48EEFA:  MOVS            R0, #4; byte_count
48EEFC:  BLX             malloc
48EF00:  MOV             R4, R0
48EF02:  LDR.W           R0, [R11,#0x14]
48EF06:  STR             R0, [R4]
48EF08:  MOV             R0, R4; this
48EF0A:  MOVS            R1, #byte_4; void *
48EF0C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EF10:  MOV             R0, R4; p
48EF12:  BLX             free
48EF16:  MOVS            R0, #4; byte_count
48EF18:  BLX             malloc
48EF1C:  MOV             R4, R0
48EF1E:  LDR.W           R0, [R11,#0x18]
48EF22:  STR             R0, [R4]
48EF24:  MOV             R0, R4; this
48EF26:  MOVS            R1, #byte_4; void *
48EF28:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EF2C:  MOV             R0, R4; p
48EF2E:  BLX             free
48EF32:  MOVS            R0, #4; byte_count
48EF34:  BLX             malloc
48EF38:  MOV             R4, R0
48EF3A:  LDR.W           R0, [R11,#0x1C]
48EF3E:  STR             R0, [R4]
48EF40:  MOV             R0, R4; this
48EF42:  MOVS            R1, #byte_4; void *
48EF44:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EF48:  MOV             R0, R4; p
48EF4A:  BLX             free
48EF4E:  MOVS            R5, #0
48EF50:  MOVS            R0, #4; byte_count
48EF52:  BLX             malloc
48EF56:  MOV             R4, R0
48EF58:  LDR.W           R0, [R9,R5,LSL#2]
48EF5C:  STR             R0, [R4]
48EF5E:  MOV             R0, R4; this
48EF60:  MOVS            R1, #byte_4; void *
48EF62:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EF66:  MOV             R0, R4; p
48EF68:  BLX             free
48EF6C:  ADDS            R5, #1
48EF6E:  CMP             R5, #0x28 ; '('
48EF70:  BNE             loc_48EF50
48EF72:  MOVS            R5, #0
48EF74:  MOVS            R0, #4; byte_count
48EF76:  BLX             malloc
48EF7A:  MOV             R4, R0
48EF7C:  LDR.W           R0, [R6,R5,LSL#2]
48EF80:  STR             R0, [R4]
48EF82:  MOV             R0, R4; this
48EF84:  MOVS            R1, #byte_4; void *
48EF86:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EF8A:  MOV             R0, R4; p
48EF8C:  BLX             free
48EF90:  ADDS            R5, #1
48EF92:  CMP             R5, #0xF
48EF94:  BNE             loc_48EF74
48EF96:  ADD.W           R8, R8, #1
48EF9A:  ADDS            R6, #0x3C ; '<'
48EF9C:  ADD.W           R9, R9, #0xA0
48EFA0:  CMP.W           R8, #0xE
48EFA4:  BNE.W           loc_48EDA4
48EFA8:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nStatsCitiesPassedE_ptr - 0x48EFB0)
48EFAA:  MOVS            R1, #(stderr+1); void *
48EFAC:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nStatsCitiesPassedE_ptr
48EFAE:  LDR             R0, [R0]; this
48EFB0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EFB4:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedCasino3E_ptr - 0x48EFBC)
48EFB6:  MOVS            R1, #(stderr+1); void *
48EFB8:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedCasino3E_ptr
48EFBA:  LDR             R0, [R0]; this
48EFBC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EFC0:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedCasino6E_ptr - 0x48EFC8)
48EFC2:  MOVS            R1, #(stderr+1); void *
48EFC4:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedCasino6E_ptr
48EFC6:  LDR             R0, [R0]; this
48EFC8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EFCC:  LDR             R0, =(_ZN20CAERadioTrackManager22m_nStatsPassedCasino10E_ptr - 0x48EFD4)
48EFCE:  MOVS            R1, #(stderr+1); void *
48EFD0:  ADD             R0, PC; _ZN20CAERadioTrackManager22m_nStatsPassedCasino10E_ptr
48EFD2:  LDR             R0, [R0]; this
48EFD4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EFD8:  LDR             R0, =(_ZN20CAERadioTrackManager18m_nStatsPassedCat1E_ptr - 0x48EFE0)
48EFDA:  MOVS            R1, #(stderr+1); void *
48EFDC:  ADD             R0, PC; _ZN20CAERadioTrackManager18m_nStatsPassedCat1E_ptr
48EFDE:  LDR             R0, [R0]; this
48EFE0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EFE4:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert1E_ptr - 0x48EFEC)
48EFE6:  MOVS            R1, #(stderr+1); void *
48EFE8:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert1E_ptr
48EFEA:  LDR             R0, [R0]; this
48EFEC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EFF0:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert3E_ptr - 0x48EFF8)
48EFF2:  MOVS            R1, #(stderr+1); void *
48EFF4:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert3E_ptr
48EFF6:  LDR             R0, [R0]; this
48EFF8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EFFC:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert5E_ptr - 0x48F004)
48EFFE:  MOVS            R1, #(stderr+1); void *
48F000:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert5E_ptr
48F002:  LDR             R0, [R0]; this
48F004:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F008:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert8E_ptr - 0x48F010)
48F00A:  MOVS            R1, #(stderr+1); void *
48F00C:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert8E_ptr
48F00E:  LDR             R0, [R0]; this
48F010:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F014:  LDR             R0, =(_ZN20CAERadioTrackManager22m_nStatsPassedDesert10E_ptr - 0x48F01C)
48F016:  MOVS            R1, #(stderr+1); void *
48F018:  ADD             R0, PC; _ZN20CAERadioTrackManager22m_nStatsPassedDesert10E_ptr
48F01A:  LDR             R0, [R0]; this
48F01C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F020:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedFarlie3E_ptr - 0x48F028)
48F022:  MOVS            R1, #(stderr+1); void *
48F024:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedFarlie3E_ptr
48F026:  LDR             R0, [R0]; this
48F028:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F02C:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nStatsPassedLAFin2E_ptr - 0x48F034)
48F02E:  MOVS            R1, #(stderr+1); void *
48F030:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nStatsPassedLAFin2E_ptr
48F032:  LDR             R0, [R0]; this
48F034:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F038:  LDR             R0, =(_ZN20CAERadioTrackManager22m_nStatsPassedMansion2E_ptr - 0x48F040)
48F03A:  MOVS            R1, #(stderr+1); void *
48F03C:  ADD             R0, PC; _ZN20CAERadioTrackManager22m_nStatsPassedMansion2E_ptr
48F03E:  LDR             R0, [R0]; this
48F040:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F044:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nStatsPassedRyder2E_ptr - 0x48F04C)
48F046:  MOVS            R1, #(stderr+1); void *
48F048:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nStatsPassedRyder2E_ptr
48F04A:  LDR             R0, [R0]; this
48F04C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F050:  LDR             R0, =(_ZN20CAERadioTrackManager19m_nStatsPassedRiot1E_ptr - 0x48F058)
48F052:  MOVS            R1, #(stderr+1); void *
48F054:  ADD             R0, PC; _ZN20CAERadioTrackManager19m_nStatsPassedRiot1E_ptr
48F056:  LDR             R0, [R0]; this
48F058:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F05C:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedSCrash1E_ptr - 0x48F064)
48F05E:  MOVS            R1, #(stderr+1); void *
48F060:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedSCrash1E_ptr
48F062:  LDR             R0, [R0]; this
48F064:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F068:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nStatsPassedStrap4E_ptr - 0x48F070)
48F06A:  MOVS            R1, #(stderr+1); void *
48F06C:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nStatsPassedStrap4E_ptr
48F06E:  LDR             R0, [R0]; this
48F070:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F074:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nStatsPassedSweet2E_ptr - 0x48F07C)
48F076:  MOVS            R1, #(stderr+1); void *
48F078:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nStatsPassedSweet2E_ptr
48F07A:  LDR             R0, [R0]; this
48F07C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F080:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nStatsPassedTruth2E_ptr - 0x48F088)
48F082:  MOVS            R1, #(stderr+1); void *
48F084:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nStatsPassedTruth2E_ptr
48F086:  LDR             R0, [R0]; this
48F088:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F08C:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedVCrash2E_ptr - 0x48F094)
48F08E:  MOVS            R1, #(stderr+1); void *
48F090:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedVCrash2E_ptr
48F092:  LDR             R0, [R0]; this
48F094:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F098:  LDR             R0, =(_ZN20CAERadioTrackManager23m_nStatsStartedBadlandsE_ptr - 0x48F0A0)
48F09A:  MOVS            R1, #(stderr+1); void *
48F09C:  ADD             R0, PC; _ZN20CAERadioTrackManager23m_nStatsStartedBadlandsE_ptr
48F09E:  LDR             R0, [R0]; this
48F0A0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F0A4:  LDR             R0, =(_ZN20CAERadioTrackManager19m_nStatsStartedCat2E_ptr - 0x48F0AC)
48F0A6:  MOVS            R1, #(stderr+1); void *
48F0A8:  ADD             R0, PC; _ZN20CAERadioTrackManager19m_nStatsStartedCat2E_ptr
48F0AA:  LDR             R0, [R0]; this
48F0AC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F0B0:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsStartedCrash1E_ptr - 0x48F0B8)
48F0B2:  MOVS            R1, #(stderr+1); void *
48F0B4:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsStartedCrash1E_ptr
48F0B6:  LDR             R0, [R0]; this
48F0B8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F0BC:  LDR             R0, =(_ZN20CAERadioTrackManager28m_nStatsLastHitGameClockDaysE_ptr - 0x48F0C4)
48F0BE:  MOVS            R1, #(stderr+1); void *
48F0C0:  ADD             R0, PC; _ZN20CAERadioTrackManager28m_nStatsLastHitGameClockDaysE_ptr
48F0C2:  LDR             R0, [R0]; this
48F0C4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F0C8:  LDR             R0, =(_ZN20CAERadioTrackManager29m_nStatsLastHitGameClockHoursE_ptr - 0x48F0D0)
48F0CA:  MOVS            R1, #(stderr+1); void *
48F0CC:  ADD             R0, PC; _ZN20CAERadioTrackManager29m_nStatsLastHitGameClockHoursE_ptr
48F0CE:  LDR             R0, [R0]; this
48F0D0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F0D4:  LDR             R0, =(_ZN20CAERadioTrackManager27m_nStatsLastHitTimeOutHoursE_ptr - 0x48F0DC)
48F0D6:  MOVS            R1, #(stderr+1); void *
48F0D8:  ADD             R0, PC; _ZN20CAERadioTrackManager27m_nStatsLastHitTimeOutHoursE_ptr
48F0DA:  LDR             R0, [R0]; this
48F0DC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F0E0:  LDR             R0, =(_ZN20CAERadioTrackManager25m_nSpecialDJBanterPendingE_ptr - 0x48F0E8)
48F0E2:  MOVS            R1, #(stderr+1); void *
48F0E4:  ADD             R0, PC; _ZN20CAERadioTrackManager25m_nSpecialDJBanterPendingE_ptr
48F0E6:  LDR             R0, [R0]; this
48F0E8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F0EC:  LDR             R0, =(_ZN20CAERadioTrackManager23m_nSpecialDJBanterIndexE_ptr - 0x48F0F4)
48F0EE:  MOVS            R1, #(stderr+1); void *
48F0F0:  ADD             R0, PC; _ZN20CAERadioTrackManager23m_nSpecialDJBanterIndexE_ptr
48F0F2:  LDR             R0, [R0]; this
48F0F4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F0F8:  MOVS            R0, #1
48F0FA:  ADD             SP, SP, #4
48F0FC:  POP.W           {R8-R11}
48F100:  POP             {R4-R7,PC}
