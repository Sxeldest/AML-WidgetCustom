; =========================================================
; Game Engine Function: _ZN6CStats4InitEv
; Address            : 0x415194 - 0x4152E6
; =========================================================

415194:  PUSH            {R4,R5,R7,LR}
415196:  ADD             R7, SP, #8
415198:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4151A2)
41519A:  MOVS            R5, #0
41519C:  LDR             R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x4151A4)
41519E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4151A0:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
4151A2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4151A4:  LDR             R4, [R1]; CStats::StatTypesFloat ...
4151A6:  MOV.W           R1, #0x148
4151AA:  STR             R5, [R0]; CTimer::m_snTimeInMilliseconds
4151AC:  MOV             R0, R4
4151AE:  BLX             j___aeabi_memclr8_0
4151B2:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x4151BC)
4151B4:  MOV.W           R1, #0x37C
4151B8:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
4151BA:  LDR             R0, [R0]; CStats::StatTypesInt ...
4151BC:  BLX             j___aeabi_memclr8_0
4151C0:  MOVS            R0, #(stderr+1); this
4151C2:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
4151C6:  MOV             R0, #0x440E4000
4151CE:  STR             R0, [R4,#(dword_964844 - 0x9647E4)]
4151D0:  MOVS            R0, #0; this
4151D2:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
4151D6:  MOVS            R0, #0x42C80000
4151DC:  STR             R0, [R4,#(dword_96483C - 0x9647E4)]
4151DE:  MOVS            R0, #0; this
4151E0:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
4151E4:  LDR             R0, =(_ZN6CStats20PedsKilledOfThisTypeE_ptr - 0x4151F0)
4151E6:  VMOV.I32        Q8, #0
4151EA:  LDR             R1, =(_ZN6CStats21TimesMissionAttemptedE_ptr - 0x4151F2)
4151EC:  ADD             R0, PC; _ZN6CStats20PedsKilledOfThisTypeE_ptr
4151EE:  ADD             R1, PC; _ZN6CStats21TimesMissionAttemptedE_ptr
4151F0:  LDR             R2, [R0]; CStats::PedsKilledOfThisType ...
4151F2:  LDR             R0, [R1]; CStats::TimesMissionAttempted ...
4151F4:  ADD.W           R1, R2, #0x70 ; 'p'
4151F8:  VST1.32         {D16-D17}, [R1]
4151FC:  ADD.W           R1, R2, #0x60 ; '`'
415200:  VST1.32         {D16-D17}, [R1]
415204:  ADD.W           R1, R2, #0x50 ; 'P'
415208:  VST1.32         {D16-D17}, [R1]
41520C:  ADD.W           R1, R2, #0x40 ; '@'
415210:  VST1.32         {D16-D17}, [R1]
415214:  ADD.W           R1, R2, #0x30 ; '0'
415218:  VST1.32         {D16-D17}, [R1]
41521C:  ADD.W           R1, R2, #0x20 ; ' '
415220:  VST1.32         {D16-D17}, [R1]
415224:  MOV.W           R1, #0x190
415228:  VST1.32         {D16-D17}, [R2]!
41522C:  VST1.32         {D16-D17}, [R2]
415230:  BLX             j___aeabi_memclr8_0
415234:  LDR             R0, =(_ZN6CStats21LastMissionPassedNameE_ptr - 0x41523C)
415236:  LDR             R1, =(AudioEngine_ptr - 0x41523E)
415238:  ADD             R0, PC; _ZN6CStats21LastMissionPassedNameE_ptr
41523A:  ADD             R1, PC; AudioEngine_ptr
41523C:  LDR             R2, [R0]; CStats::LastMissionPassedName ...
41523E:  LDR             R0, [R1]; AudioEngine ; this
415240:  STR             R5, [R2,#(dword_96529B - 0x965297)]
415242:  STR             R5, [R2]; CStats::LastMissionPassedName
415244:  BLX             j__ZN12CAudioEngine26GetRadioStationListenTimesEv; CAudioEngine::GetRadioStationListenTimes(void)
415248:  LDR             R1, =(_ZN6CStats24FavoriteRadioStationListE_ptr - 0x415254)
41524A:  MOV             R2, R0
41524C:  VLD1.32         {D16-D17}, [R2]!
415250:  ADD             R1, PC; _ZN6CStats24FavoriteRadioStationListE_ptr
415252:  LDR             R1, [R1]; CStats::FavoriteRadioStationList ...
415254:  MOV             R3, R1
415256:  VST1.32         {D16-D17}, [R3]!
41525A:  VLD1.32         {D16-D17}, [R2]
41525E:  ADD.W           R2, R0, #0x20 ; ' '
415262:  VST1.32         {D16-D17}, [R3]
415266:  VLD1.32         {D16-D17}, [R2]
41526A:  ADD.W           R2, R1, #0x20 ; ' '
41526E:  VST1.32         {D16-D17}, [R2]
415272:  LDR             R2, [R0,#0x30]
415274:  STR             R2, [R1,#(dword_964E48 - 0x964E18)]
415276:  LDR             R0, [R0,#0x34]; this
415278:  STR             R0, [R1,#(dword_964E4C - 0x964E18)]
41527A:  BLX             j__ZN6CStats23LoadActionReactionStatsEv; CStats::LoadActionReactionStats(void)
41527E:  BLX             j__ZN6CStats24LoadStatUpdateConditionsEv; CStats::LoadStatUpdateConditions(void)
415282:  LDR             R0, =(_ZN6CStats16m_DrivingCounterE_ptr - 0x41528A)
415284:  LDR             R1, =(_ZN6CStats15m_FlyingCounterE_ptr - 0x415290)
415286:  ADD             R0, PC; _ZN6CStats16m_DrivingCounterE_ptr
415288:  LDR             R2, =(_ZN6CStats13m_BoatCounterE_ptr - 0x415296)
41528A:  LDR             R3, =(_ZN6CStats13m_BikeCounterE_ptr - 0x41529A)
41528C:  ADD             R1, PC; _ZN6CStats15m_FlyingCounterE_ptr
41528E:  LDR.W           LR, [R0]; CStats::m_DrivingCounter ...
415292:  ADD             R2, PC; _ZN6CStats13m_BoatCounterE_ptr
415294:  LDR             R0, =(_ZN6CStats17usingRespectCheatE_ptr - 0x41529E)
415296:  ADD             R3, PC; _ZN6CStats13m_BikeCounterE_ptr
415298:  LDR             R4, =(_ZN6CStats12m_FatCounterE_ptr - 0x4152A4)
41529A:  ADD             R0, PC; _ZN6CStats17usingRespectCheatE_ptr
41529C:  LDR.W           R12, =(_ZN6CStats16m_RunningCounterE_ptr - 0x4152AA)
4152A0:  ADD             R4, PC; _ZN6CStats12m_FatCounterE_ptr
4152A2:  LDR             R1, [R1]; CStats::m_FlyingCounter ...
4152A4:  LDR             R0, [R0]; CStats::usingRespectCheat ...
4152A6:  ADD             R12, PC; _ZN6CStats16m_RunningCounterE_ptr
4152A8:  LDR             R2, [R2]; CStats::m_BoatCounter ...
4152AA:  LDR             R3, [R3]; CStats::m_BikeCounter ...
4152AC:  STRB            R5, [R0]; CStats::usingRespectCheat
4152AE:  LDR             R0, =(_ZN6CStats13usingSexCheatE_ptr - 0x4152B6)
4152B0:  LDR             R4, [R4]; CStats::m_FatCounter ...
4152B2:  ADD             R0, PC; _ZN6CStats13usingSexCheatE_ptr
4152B4:  LDR.W           R12, [R12]; CStats::m_RunningCounter ...
4152B8:  STR.W           R5, [LR]; CStats::m_DrivingCounter
4152BC:  LDR             R0, [R0]; CStats::usingSexCheat ...
4152BE:  STR             R5, [R1]; CStats::m_FlyingCounter
4152C0:  STR             R5, [R2]; CStats::m_BoatCounter
4152C2:  STRB            R5, [R0]; CStats::usingSexCheat
4152C4:  LDR             R0, =(_ZN6CStats22m_SprintStaminaCounterE_ptr - 0x4152CC)
4152C6:  STR             R5, [R3]; CStats::m_BikeCounter
4152C8:  ADD             R0, PC; _ZN6CStats22m_SprintStaminaCounterE_ptr
4152CA:  STR             R5, [R4]; CStats::m_FatCounter
4152CC:  STR.W           R5, [R12]; CStats::m_RunningCounter
4152D0:  LDR             R0, [R0]; CStats::m_SprintStaminaCounter ...
4152D2:  STR             R5, [R0]; CStats::m_SprintStaminaCounter
4152D4:  LDR             R0, =(_ZN6CStats21m_CycleStaminaCounterE_ptr - 0x4152DA)
4152D6:  ADD             R0, PC; _ZN6CStats21m_CycleStaminaCounterE_ptr
4152D8:  LDR             R0, [R0]; CStats::m_CycleStaminaCounter ...
4152DA:  STR             R5, [R0]; CStats::m_CycleStaminaCounter
4152DC:  LDR             R0, =(_ZN6CStats20m_SwimStaminaCounterE_ptr - 0x4152E2)
4152DE:  ADD             R0, PC; _ZN6CStats20m_SwimStaminaCounterE_ptr
4152E0:  LDR             R0, [R0]; CStats::m_SwimStaminaCounter ...
4152E2:  STR             R5, [R0]; CStats::m_SwimStaminaCounter
4152E4:  POP             {R4,R5,R7,PC}
