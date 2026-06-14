; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager4LoadEv
; Address            : 0x48F184 - 0x48F4C8
; =========================================================

48F184:  PUSH            {R4-R7,LR}
48F186:  ADD             R7, SP, #0xC
48F188:  PUSH.W          {R8-R10}
48F18C:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nAdvertIndexHistoryE_ptr - 0x48F194)
48F18E:  MOVS            R6, #0
48F190:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nAdvertIndexHistoryE_ptr
48F192:  LDR             R5, [R0]; CAERadioTrackManager::m_nAdvertIndexHistory ...
48F194:  LDR             R0, =(_ZN20CAERadioTrackManager25m_nMusicTrackIndexHistoryE_ptr - 0x48F19A)
48F196:  ADD             R0, PC; _ZN20CAERadioTrackManager25m_nMusicTrackIndexHistoryE_ptr
48F198:  LDR.W           R8, [R0]; CAERadioTrackManager::m_nMusicTrackIndexHistory ...
48F19C:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nIdentIndexHistoryE_ptr - 0x48F1A2)
48F19E:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nIdentIndexHistoryE_ptr
48F1A0:  LDR.W           R9, [R0]; CAERadioTrackManager::m_nIdentIndexHistory ...
48F1A4:  LDR             R0, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x48F1AA)
48F1A6:  ADD             R0, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
48F1A8:  LDR.W           R10, [R0]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
48F1AC:  ADD.W           R0, R6, R6,LSL#2
48F1B0:  MOVS            R1, #(stderr+1); void *
48F1B2:  ADD.W           R4, R8, R0,LSL#2
48F1B6:  MOV             R0, R4; this
48F1B8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F1BC:  ADDS            R0, R4, #1; this
48F1BE:  MOVS            R1, #(stderr+1); void *
48F1C0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F1C4:  ADDS            R0, R4, #2; this
48F1C6:  MOVS            R1, #(stderr+1); void *
48F1C8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F1CC:  ADDS            R0, R4, #3; this
48F1CE:  MOVS            R1, #(stderr+1); void *
48F1D0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F1D4:  ADDS            R0, R4, #4; this
48F1D6:  MOVS            R1, #(stderr+1); void *
48F1D8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F1DC:  ADDS            R0, R4, #5; this
48F1DE:  MOVS            R1, #(stderr+1); void *
48F1E0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F1E4:  ADDS            R0, R4, #6; this
48F1E6:  MOVS            R1, #(stderr+1); void *
48F1E8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F1EC:  ADDS            R0, R4, #7; this
48F1EE:  MOVS            R1, #(stderr+1); void *
48F1F0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F1F4:  ADD.W           R0, R4, #8; this
48F1F8:  MOVS            R1, #(stderr+1); void *
48F1FA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F1FE:  ADD.W           R0, R4, #9; this
48F202:  MOVS            R1, #(stderr+1); void *
48F204:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F208:  ADD.W           R0, R4, #0xA; this
48F20C:  MOVS            R1, #(stderr+1); void *
48F20E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F212:  ADD.W           R0, R4, #0xB; this
48F216:  MOVS            R1, #(stderr+1); void *
48F218:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F21C:  ADD.W           R0, R4, #0xC; this
48F220:  MOVS            R1, #(stderr+1); void *
48F222:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F226:  ADD.W           R0, R4, #0xD; this
48F22A:  MOVS            R1, #(stderr+1); void *
48F22C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F230:  ADD.W           R0, R4, #0xE; this
48F234:  MOVS            R1, #(stderr+1); void *
48F236:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F23A:  ADD.W           R0, R4, #0xF; this
48F23E:  MOVS            R1, #(stderr+1); void *
48F240:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F244:  ADD.W           R0, R4, #0x10; this
48F248:  MOVS            R1, #(stderr+1); void *
48F24A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F24E:  ADD.W           R0, R4, #0x11; this
48F252:  MOVS            R1, #(stderr+1); void *
48F254:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F258:  ADD.W           R0, R4, #0x12; this
48F25C:  MOVS            R1, #(stderr+1); void *
48F25E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F262:  ADD.W           R0, R4, #0x13; this
48F266:  MOVS            R1, #(stderr+1); void *
48F268:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F26C:  ADD.W           R4, R9, R6,LSL#5
48F270:  MOVS            R1, #byte_4; void *
48F272:  MOV             R0, R4; this
48F274:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F278:  ADDS            R0, R4, #4; this
48F27A:  MOVS            R1, #byte_4; void *
48F27C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F280:  ADD.W           R0, R4, #8; this
48F284:  MOVS            R1, #byte_4; void *
48F286:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F28A:  ADD.W           R0, R4, #0xC; this
48F28E:  MOVS            R1, #byte_4; void *
48F290:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F294:  ADD.W           R0, R4, #0x10; this
48F298:  MOVS            R1, #byte_4; void *
48F29A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F29E:  ADD.W           R0, R4, #0x14; this
48F2A2:  MOVS            R1, #byte_4; void *
48F2A4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F2A8:  ADD.W           R0, R4, #0x18; this
48F2AC:  MOVS            R1, #byte_4; void *
48F2AE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F2B2:  ADD.W           R0, R4, #0x1C; this
48F2B6:  MOVS            R1, #byte_4; void *
48F2B8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F2BC:  MOVS            R4, #0
48F2BE:  ADDS            R0, R5, R4; this
48F2C0:  MOVS            R1, #byte_4; void *
48F2C2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F2C6:  ADDS            R4, #4
48F2C8:  CMP             R4, #0xA0
48F2CA:  BNE             loc_48F2BE
48F2CC:  RSB.W           R0, R6, R6,LSL#4
48F2D0:  MOVS            R1, #byte_4; void *
48F2D2:  ADD.W           R4, R10, R0,LSL#2
48F2D6:  MOV             R0, R4; this
48F2D8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F2DC:  ADDS            R0, R4, #4; this
48F2DE:  MOVS            R1, #byte_4; void *
48F2E0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F2E4:  ADD.W           R0, R4, #8; this
48F2E8:  MOVS            R1, #byte_4; void *
48F2EA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F2EE:  ADD.W           R0, R4, #0xC; this
48F2F2:  MOVS            R1, #byte_4; void *
48F2F4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F2F8:  ADD.W           R0, R4, #0x10; this
48F2FC:  MOVS            R1, #byte_4; void *
48F2FE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F302:  ADD.W           R0, R4, #0x14; this
48F306:  MOVS            R1, #byte_4; void *
48F308:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F30C:  ADD.W           R0, R4, #0x18; this
48F310:  MOVS            R1, #byte_4; void *
48F312:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F316:  ADD.W           R0, R4, #0x1C; this
48F31A:  MOVS            R1, #byte_4; void *
48F31C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F320:  ADD.W           R0, R4, #0x20 ; ' '; this
48F324:  MOVS            R1, #byte_4; void *
48F326:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F32A:  ADD.W           R0, R4, #0x24 ; '$'; this
48F32E:  MOVS            R1, #byte_4; void *
48F330:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F334:  ADD.W           R0, R4, #0x28 ; '('; this
48F338:  MOVS            R1, #byte_4; void *
48F33A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F33E:  ADD.W           R0, R4, #0x2C ; ','; this
48F342:  MOVS            R1, #byte_4; void *
48F344:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F348:  ADD.W           R0, R4, #0x30 ; '0'; this
48F34C:  MOVS            R1, #byte_4; void *
48F34E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F352:  ADD.W           R0, R4, #0x34 ; '4'; this
48F356:  MOVS            R1, #byte_4; void *
48F358:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F35C:  ADD.W           R0, R4, #0x38 ; '8'; this
48F360:  MOVS            R1, #byte_4; void *
48F362:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F366:  ADDS            R6, #1
48F368:  ADDS            R5, #0xA0
48F36A:  CMP             R6, #0xE
48F36C:  BNE.W           loc_48F1AC
48F370:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nStatsCitiesPassedE_ptr - 0x48F378)
48F372:  MOVS            R1, #(stderr+1); void *
48F374:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nStatsCitiesPassedE_ptr
48F376:  LDR             R0, [R0]; this
48F378:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F37C:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedCasino3E_ptr - 0x48F384)
48F37E:  MOVS            R1, #(stderr+1); void *
48F380:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedCasino3E_ptr
48F382:  LDR             R0, [R0]; this
48F384:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F388:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedCasino6E_ptr - 0x48F390)
48F38A:  MOVS            R1, #(stderr+1); void *
48F38C:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedCasino6E_ptr
48F38E:  LDR             R0, [R0]; this
48F390:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F394:  LDR             R0, =(_ZN20CAERadioTrackManager22m_nStatsPassedCasino10E_ptr - 0x48F39C)
48F396:  MOVS            R1, #(stderr+1); void *
48F398:  ADD             R0, PC; _ZN20CAERadioTrackManager22m_nStatsPassedCasino10E_ptr
48F39A:  LDR             R0, [R0]; this
48F39C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F3A0:  LDR             R0, =(_ZN20CAERadioTrackManager18m_nStatsPassedCat1E_ptr - 0x48F3A8)
48F3A2:  MOVS            R1, #(stderr+1); void *
48F3A4:  ADD             R0, PC; _ZN20CAERadioTrackManager18m_nStatsPassedCat1E_ptr
48F3A6:  LDR             R0, [R0]; this
48F3A8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F3AC:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert1E_ptr - 0x48F3B4)
48F3AE:  MOVS            R1, #(stderr+1); void *
48F3B0:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert1E_ptr
48F3B2:  LDR             R0, [R0]; this
48F3B4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F3B8:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert3E_ptr - 0x48F3C0)
48F3BA:  MOVS            R1, #(stderr+1); void *
48F3BC:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert3E_ptr
48F3BE:  LDR             R0, [R0]; this
48F3C0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F3C4:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert5E_ptr - 0x48F3CC)
48F3C6:  MOVS            R1, #(stderr+1); void *
48F3C8:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert5E_ptr
48F3CA:  LDR             R0, [R0]; this
48F3CC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F3D0:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedDesert8E_ptr - 0x48F3D8)
48F3D2:  MOVS            R1, #(stderr+1); void *
48F3D4:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedDesert8E_ptr
48F3D6:  LDR             R0, [R0]; this
48F3D8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F3DC:  LDR             R0, =(_ZN20CAERadioTrackManager22m_nStatsPassedDesert10E_ptr - 0x48F3E4)
48F3DE:  MOVS            R1, #(stderr+1); void *
48F3E0:  ADD             R0, PC; _ZN20CAERadioTrackManager22m_nStatsPassedDesert10E_ptr
48F3E2:  LDR             R0, [R0]; this
48F3E4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F3E8:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedFarlie3E_ptr - 0x48F3F0)
48F3EA:  MOVS            R1, #(stderr+1); void *
48F3EC:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedFarlie3E_ptr
48F3EE:  LDR             R0, [R0]; this
48F3F0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F3F4:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nStatsPassedLAFin2E_ptr - 0x48F3FC)
48F3F6:  MOVS            R1, #(stderr+1); void *
48F3F8:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nStatsPassedLAFin2E_ptr
48F3FA:  LDR             R0, [R0]; this
48F3FC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F400:  LDR             R0, =(_ZN20CAERadioTrackManager22m_nStatsPassedMansion2E_ptr - 0x48F408)
48F402:  MOVS            R1, #(stderr+1); void *
48F404:  ADD             R0, PC; _ZN20CAERadioTrackManager22m_nStatsPassedMansion2E_ptr
48F406:  LDR             R0, [R0]; this
48F408:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F40C:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nStatsPassedRyder2E_ptr - 0x48F414)
48F40E:  MOVS            R1, #(stderr+1); void *
48F410:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nStatsPassedRyder2E_ptr
48F412:  LDR             R0, [R0]; this
48F414:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F418:  LDR             R0, =(_ZN20CAERadioTrackManager19m_nStatsPassedRiot1E_ptr - 0x48F420)
48F41A:  MOVS            R1, #(stderr+1); void *
48F41C:  ADD             R0, PC; _ZN20CAERadioTrackManager19m_nStatsPassedRiot1E_ptr
48F41E:  LDR             R0, [R0]; this
48F420:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F424:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedSCrash1E_ptr - 0x48F42C)
48F426:  MOVS            R1, #(stderr+1); void *
48F428:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedSCrash1E_ptr
48F42A:  LDR             R0, [R0]; this
48F42C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F430:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nStatsPassedStrap4E_ptr - 0x48F438)
48F432:  MOVS            R1, #(stderr+1); void *
48F434:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nStatsPassedStrap4E_ptr
48F436:  LDR             R0, [R0]; this
48F438:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F43C:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nStatsPassedSweet2E_ptr - 0x48F444)
48F43E:  MOVS            R1, #(stderr+1); void *
48F440:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nStatsPassedSweet2E_ptr
48F442:  LDR             R0, [R0]; this
48F444:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F448:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nStatsPassedTruth2E_ptr - 0x48F450)
48F44A:  MOVS            R1, #(stderr+1); void *
48F44C:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nStatsPassedTruth2E_ptr
48F44E:  LDR             R0, [R0]; this
48F450:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F454:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsPassedVCrash2E_ptr - 0x48F45C)
48F456:  MOVS            R1, #(stderr+1); void *
48F458:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsPassedVCrash2E_ptr
48F45A:  LDR             R0, [R0]; this
48F45C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F460:  LDR             R0, =(_ZN20CAERadioTrackManager23m_nStatsStartedBadlandsE_ptr - 0x48F468)
48F462:  MOVS            R1, #(stderr+1); void *
48F464:  ADD             R0, PC; _ZN20CAERadioTrackManager23m_nStatsStartedBadlandsE_ptr
48F466:  LDR             R0, [R0]; this
48F468:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F46C:  LDR             R0, =(_ZN20CAERadioTrackManager19m_nStatsStartedCat2E_ptr - 0x48F474)
48F46E:  MOVS            R1, #(stderr+1); void *
48F470:  ADD             R0, PC; _ZN20CAERadioTrackManager19m_nStatsStartedCat2E_ptr
48F472:  LDR             R0, [R0]; this
48F474:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F478:  LDR             R0, =(_ZN20CAERadioTrackManager21m_nStatsStartedCrash1E_ptr - 0x48F480)
48F47A:  MOVS            R1, #(stderr+1); void *
48F47C:  ADD             R0, PC; _ZN20CAERadioTrackManager21m_nStatsStartedCrash1E_ptr
48F47E:  LDR             R0, [R0]; this
48F480:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F484:  LDR             R0, =(_ZN20CAERadioTrackManager28m_nStatsLastHitGameClockDaysE_ptr - 0x48F48C)
48F486:  MOVS            R1, #(stderr+1); void *
48F488:  ADD             R0, PC; _ZN20CAERadioTrackManager28m_nStatsLastHitGameClockDaysE_ptr
48F48A:  LDR             R0, [R0]; this
48F48C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F490:  LDR             R0, =(_ZN20CAERadioTrackManager29m_nStatsLastHitGameClockHoursE_ptr - 0x48F498)
48F492:  MOVS            R1, #(stderr+1); void *
48F494:  ADD             R0, PC; _ZN20CAERadioTrackManager29m_nStatsLastHitGameClockHoursE_ptr
48F496:  LDR             R0, [R0]; this
48F498:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F49C:  LDR             R0, =(_ZN20CAERadioTrackManager27m_nStatsLastHitTimeOutHoursE_ptr - 0x48F4A4)
48F49E:  MOVS            R1, #(stderr+1); void *
48F4A0:  ADD             R0, PC; _ZN20CAERadioTrackManager27m_nStatsLastHitTimeOutHoursE_ptr
48F4A2:  LDR             R0, [R0]; this
48F4A4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F4A8:  LDR             R0, =(_ZN20CAERadioTrackManager25m_nSpecialDJBanterPendingE_ptr - 0x48F4B0)
48F4AA:  MOVS            R1, #(stderr+1); void *
48F4AC:  ADD             R0, PC; _ZN20CAERadioTrackManager25m_nSpecialDJBanterPendingE_ptr
48F4AE:  LDR             R0, [R0]; this
48F4B0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F4B4:  LDR             R0, =(_ZN20CAERadioTrackManager23m_nSpecialDJBanterIndexE_ptr - 0x48F4BC)
48F4B6:  MOVS            R1, #(stderr+1); void *
48F4B8:  ADD             R0, PC; _ZN20CAERadioTrackManager23m_nSpecialDJBanterIndexE_ptr
48F4BA:  LDR             R0, [R0]; this
48F4BC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F4C0:  MOVS            R0, #1
48F4C2:  POP.W           {R8-R10}
48F4C6:  POP             {R4-R7,PC}
