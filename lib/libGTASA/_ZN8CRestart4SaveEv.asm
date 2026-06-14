; =========================================================
; Game Engine Function: _ZN8CRestart4SaveEv
; Address            : 0x48D1AC - 0x48D454
; =========================================================

48D1AC:  PUSH            {R4-R7,LR}
48D1AE:  ADD             R7, SP, #0xC
48D1B0:  PUSH.W          {R8-R11}
48D1B4:  SUB             SP, SP, #4
48D1B6:  MOVS            R0, #2; byte_count
48D1B8:  BLX             malloc
48D1BC:  MOV             R4, R0
48D1BE:  LDR             R0, =(_ZN8CRestart24NumberOfHospitalRestartsE_ptr - 0x48D1C6)
48D1C0:  MOVS            R1, #(stderr+2); void *
48D1C2:  ADD             R0, PC; _ZN8CRestart24NumberOfHospitalRestartsE_ptr
48D1C4:  LDR             R5, [R0]; CRestart::NumberOfHospitalRestarts ...
48D1C6:  LDRH            R0, [R5]; CRestart::NumberOfHospitalRestarts
48D1C8:  STRH            R0, [R4]
48D1CA:  MOV             R0, R4; this
48D1CC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D1D0:  MOV             R0, R4; p
48D1D2:  BLX             free
48D1D6:  LDRH            R0, [R5]; CRestart::NumberOfHospitalRestarts
48D1D8:  CMP             R0, #0
48D1DA:  BEQ             loc_48D272
48D1DC:  LDR             R0, =(_ZN8CRestart21HospitalRestartPointsE_ptr - 0x48D1E6)
48D1DE:  MOVS            R5, #0
48D1E0:  MOVS            R6, #0
48D1E2:  ADD             R0, PC; _ZN8CRestart21HospitalRestartPointsE_ptr
48D1E4:  LDR             R0, [R0]; CRestart::HospitalRestartPoints ...
48D1E6:  STR             R0, [SP,#0x20+var_20]
48D1E8:  LDR             R0, =(_ZN8CRestart23HospitalRestartHeadingsE_ptr - 0x48D1EE)
48D1EA:  ADD             R0, PC; _ZN8CRestart23HospitalRestartHeadingsE_ptr
48D1EC:  LDR.W           R9, [R0]; CRestart::HospitalRestartHeadings ...
48D1F0:  LDR             R0, =(_ZN8CRestart24HospitalRestartWhenToUseE_ptr - 0x48D1F6)
48D1F2:  ADD             R0, PC; _ZN8CRestart24HospitalRestartWhenToUseE_ptr
48D1F4:  LDR.W           R10, [R0]; CRestart::HospitalRestartWhenToUse ...
48D1F8:  LDR             R0, =(_ZN8CRestart24NumberOfHospitalRestartsE_ptr - 0x48D1FE)
48D1FA:  ADD             R0, PC; _ZN8CRestart24NumberOfHospitalRestartsE_ptr
48D1FC:  LDR.W           R11, [R0]; CRestart::NumberOfHospitalRestarts ...
48D200:  ADD.W           R0, R5, R5,LSL#1
48D204:  LDR             R1, [SP,#0x20+var_20]
48D206:  ADD.W           R8, R1, R0,LSL#2
48D20A:  MOVS            R0, #0xC; byte_count
48D20C:  BLX             malloc
48D210:  MOV             R4, R0
48D212:  LDR.W           R0, [R8,#8]
48D216:  VLD1.8          {D16}, [R8]
48D21A:  MOVS            R1, #(byte_9+3); void *
48D21C:  STR             R0, [R4,#8]
48D21E:  MOV             R0, R4; this
48D220:  VST1.8          {D16}, [R4]
48D224:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D228:  MOV             R0, R4; p
48D22A:  BLX             free
48D22E:  MOVS            R0, #4; byte_count
48D230:  BLX             malloc
48D234:  MOV             R4, R0
48D236:  LDR.W           R0, [R9,R5,LSL#2]
48D23A:  STR             R0, [R4]
48D23C:  MOV             R0, R4; this
48D23E:  MOVS            R1, #byte_4; void *
48D240:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D244:  MOV             R0, R4; p
48D246:  BLX             free
48D24A:  MOVS            R0, #4; byte_count
48D24C:  BLX             malloc
48D250:  MOV             R4, R0
48D252:  LDR.W           R0, [R10,R5,LSL#2]
48D256:  STR             R0, [R4]
48D258:  MOV             R0, R4; this
48D25A:  MOVS            R1, #byte_4; void *
48D25C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D260:  MOV             R0, R4; p
48D262:  BLX             free
48D266:  ADDS            R6, #1
48D268:  LDRH.W          R0, [R11]; CRestart::NumberOfHospitalRestarts
48D26C:  UXTH            R5, R6
48D26E:  CMP             R5, R0
48D270:  BCC             loc_48D200
48D272:  MOVS            R0, #2; byte_count
48D274:  BLX             malloc
48D278:  MOV             R4, R0
48D27A:  LDR             R0, =(_ZN8CRestart22NumberOfPoliceRestartsE_ptr - 0x48D282)
48D27C:  MOVS            R1, #(stderr+2); void *
48D27E:  ADD             R0, PC; _ZN8CRestart22NumberOfPoliceRestartsE_ptr
48D280:  LDR             R5, [R0]; CRestart::NumberOfPoliceRestarts ...
48D282:  LDRH            R0, [R5]; CRestart::NumberOfPoliceRestarts
48D284:  STRH            R0, [R4]
48D286:  MOV             R0, R4; this
48D288:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D28C:  MOV             R0, R4; p
48D28E:  BLX             free
48D292:  LDRH            R0, [R5]; CRestart::NumberOfPoliceRestarts
48D294:  CMP             R0, #0
48D296:  BEQ             loc_48D32E
48D298:  LDR             R0, =(_ZN8CRestart19PoliceRestartPointsE_ptr - 0x48D2A2)
48D29A:  MOVS            R5, #0
48D29C:  MOVS            R6, #0
48D29E:  ADD             R0, PC; _ZN8CRestart19PoliceRestartPointsE_ptr
48D2A0:  LDR             R0, [R0]; CRestart::PoliceRestartPoints ...
48D2A2:  STR             R0, [SP,#0x20+var_20]
48D2A4:  LDR             R0, =(_ZN8CRestart21PoliceRestartHeadingsE_ptr - 0x48D2AA)
48D2A6:  ADD             R0, PC; _ZN8CRestart21PoliceRestartHeadingsE_ptr
48D2A8:  LDR.W           R9, [R0]; CRestart::PoliceRestartHeadings ...
48D2AC:  LDR             R0, =(_ZN8CRestart22PoliceRestartWhenToUseE_ptr - 0x48D2B2)
48D2AE:  ADD             R0, PC; _ZN8CRestart22PoliceRestartWhenToUseE_ptr
48D2B0:  LDR.W           R10, [R0]; CRestart::PoliceRestartWhenToUse ...
48D2B4:  LDR             R0, =(_ZN8CRestart22NumberOfPoliceRestartsE_ptr - 0x48D2BA)
48D2B6:  ADD             R0, PC; _ZN8CRestart22NumberOfPoliceRestartsE_ptr
48D2B8:  LDR.W           R11, [R0]; CRestart::NumberOfPoliceRestarts ...
48D2BC:  ADD.W           R0, R5, R5,LSL#1
48D2C0:  LDR             R1, [SP,#0x20+var_20]
48D2C2:  ADD.W           R8, R1, R0,LSL#2
48D2C6:  MOVS            R0, #0xC; byte_count
48D2C8:  BLX             malloc
48D2CC:  MOV             R4, R0
48D2CE:  LDR.W           R0, [R8,#8]
48D2D2:  VLD1.8          {D16}, [R8]
48D2D6:  MOVS            R1, #(byte_9+3); void *
48D2D8:  STR             R0, [R4,#8]
48D2DA:  MOV             R0, R4; this
48D2DC:  VST1.8          {D16}, [R4]
48D2E0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D2E4:  MOV             R0, R4; p
48D2E6:  BLX             free
48D2EA:  MOVS            R0, #4; byte_count
48D2EC:  BLX             malloc
48D2F0:  MOV             R4, R0
48D2F2:  LDR.W           R0, [R9,R5,LSL#2]
48D2F6:  STR             R0, [R4]
48D2F8:  MOV             R0, R4; this
48D2FA:  MOVS            R1, #byte_4; void *
48D2FC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D300:  MOV             R0, R4; p
48D302:  BLX             free
48D306:  MOVS            R0, #4; byte_count
48D308:  BLX             malloc
48D30C:  MOV             R4, R0
48D30E:  LDR.W           R0, [R10,R5,LSL#2]
48D312:  STR             R0, [R4]
48D314:  MOV             R0, R4; this
48D316:  MOVS            R1, #byte_4; void *
48D318:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D31C:  MOV             R0, R4; p
48D31E:  BLX             free
48D322:  ADDS            R6, #1
48D324:  LDRH.W          R0, [R11]; CRestart::NumberOfPoliceRestarts
48D328:  UXTH            R5, R6
48D32A:  CMP             R5, R0
48D32C:  BCC             loc_48D2BC
48D32E:  LDR             R0, =(_ZN8CRestart16bOverrideRestartE_ptr - 0x48D336)
48D330:  MOVS            R1, #(stderr+1); void *
48D332:  ADD             R0, PC; _ZN8CRestart16bOverrideRestartE_ptr
48D334:  LDR             R0, [R0]; this
48D336:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D33A:  MOVS            R0, #0xC; byte_count
48D33C:  BLX             malloc
48D340:  MOV             R4, R0
48D342:  LDR             R0, =(_ZN8CRestart16OverridePositionE_ptr - 0x48D34A)
48D344:  MOVS            R1, #(byte_9+3); void *
48D346:  ADD             R0, PC; _ZN8CRestart16OverridePositionE_ptr
48D348:  LDR             R0, [R0]; CRestart::OverridePosition ...
48D34A:  VLDR            D16, [R0]
48D34E:  LDR             R0, [R0,#(dword_7B6F08 - 0x7B6F00)]
48D350:  STR             R0, [R4,#8]
48D352:  MOV             R0, R4; this
48D354:  VST1.8          {D16}, [R4]
48D358:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D35C:  MOV             R0, R4; p
48D35E:  BLX             free
48D362:  LDR             R0, =(_ZN8CRestart21bFadeInAfterNextDeathE_ptr - 0x48D36A)
48D364:  MOVS            R1, #(stderr+1); void *
48D366:  ADD             R0, PC; _ZN8CRestart21bFadeInAfterNextDeathE_ptr
48D368:  LDR             R0, [R0]; this
48D36A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D36E:  LDR             R0, =(_ZN8CRestart22bFadeInAfterNextArrestE_ptr - 0x48D376)
48D370:  MOVS            R1, #(stderr+1); void *
48D372:  ADD             R0, PC; _ZN8CRestart22bFadeInAfterNextArrestE_ptr
48D374:  LDR             R0, [R0]; this
48D376:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D37A:  MOVS            R0, #0xC; byte_count
48D37C:  BLX             malloc
48D380:  MOV             R4, R0
48D382:  LDR             R0, =(_ZN8CRestart25ExtraHospitalRestartCoorsE_ptr - 0x48D38A)
48D384:  MOVS            R1, #(byte_9+3); void *
48D386:  ADD             R0, PC; _ZN8CRestart25ExtraHospitalRestartCoorsE_ptr
48D388:  LDR             R0, [R0]; CRestart::ExtraHospitalRestartCoors ...
48D38A:  VLDR            D16, [R0]
48D38E:  LDR             R0, [R0,#(dword_7B6F1C - 0x7B6F14)]
48D390:  STR             R0, [R4,#8]
48D392:  MOV             R0, R4; this
48D394:  VST1.8          {D16}, [R4]
48D398:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D39C:  MOV             R0, R4; p
48D39E:  BLX             free
48D3A2:  MOVS            R0, #4; byte_count
48D3A4:  BLX             malloc
48D3A8:  MOV             R4, R0
48D3AA:  LDR             R0, =(_ZN8CRestart26ExtraHospitalRestartRadiusE_ptr - 0x48D3B2)
48D3AC:  MOVS            R1, #byte_4; void *
48D3AE:  ADD             R0, PC; _ZN8CRestart26ExtraHospitalRestartRadiusE_ptr
48D3B0:  LDR             R0, [R0]; CRestart::ExtraHospitalRestartRadius ...
48D3B2:  LDR             R0, [R0]; CRestart::ExtraHospitalRestartRadius
48D3B4:  STR             R0, [R4]
48D3B6:  MOV             R0, R4; this
48D3B8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D3BC:  MOV             R0, R4; p
48D3BE:  BLX             free
48D3C2:  MOVS            R0, #4; byte_count
48D3C4:  BLX             malloc
48D3C8:  MOV             R4, R0
48D3CA:  LDR             R0, =(_ZN8CRestart27ExtraHospitalRestartHeadingE_ptr - 0x48D3D2)
48D3CC:  MOVS            R1, #byte_4; void *
48D3CE:  ADD             R0, PC; _ZN8CRestart27ExtraHospitalRestartHeadingE_ptr
48D3D0:  LDR             R0, [R0]; CRestart::ExtraHospitalRestartHeading ...
48D3D2:  LDR             R0, [R0]; CRestart::ExtraHospitalRestartHeading
48D3D4:  STR             R0, [R4]
48D3D6:  MOV             R0, R4; this
48D3D8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D3DC:  MOV             R0, R4; p
48D3DE:  BLX             free
48D3E2:  MOVS            R0, #0xC; byte_count
48D3E4:  BLX             malloc
48D3E8:  MOV             R4, R0
48D3EA:  LDR             R0, =(_ZN8CRestart30ExtraPoliceStationRestartCoorsE_ptr - 0x48D3F2)
48D3EC:  MOVS            R1, #(byte_9+3); void *
48D3EE:  ADD             R0, PC; _ZN8CRestart30ExtraPoliceStationRestartCoorsE_ptr
48D3F0:  LDR             R0, [R0]; CRestart::ExtraPoliceStationRestartCoors ...
48D3F2:  VLDR            D16, [R0]
48D3F6:  LDR             R0, [R0,#(dword_7B6F30 - 0x7B6F28)]
48D3F8:  STR             R0, [R4,#8]
48D3FA:  MOV             R0, R4; this
48D3FC:  VST1.8          {D16}, [R4]
48D400:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D404:  MOV             R0, R4; p
48D406:  BLX             free
48D40A:  MOVS            R0, #4; byte_count
48D40C:  BLX             malloc
48D410:  MOV             R4, R0
48D412:  LDR             R0, =(_ZN8CRestart31ExtraPoliceStationRestartRadiusE_ptr - 0x48D41A)
48D414:  MOVS            R1, #byte_4; void *
48D416:  ADD             R0, PC; _ZN8CRestart31ExtraPoliceStationRestartRadiusE_ptr
48D418:  LDR             R0, [R0]; CRestart::ExtraPoliceStationRestartRadius ...
48D41A:  LDR             R0, [R0]; CRestart::ExtraPoliceStationRestartRadius
48D41C:  STR             R0, [R4]
48D41E:  MOV             R0, R4; this
48D420:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D424:  MOV             R0, R4; p
48D426:  BLX             free
48D42A:  MOVS            R0, #4; byte_count
48D42C:  BLX             malloc
48D430:  MOV             R4, R0
48D432:  LDR             R0, =(_ZN8CRestart32ExtraPoliceStationRestartHeadingE_ptr - 0x48D43A)
48D434:  MOVS            R1, #byte_4; void *
48D436:  ADD             R0, PC; _ZN8CRestart32ExtraPoliceStationRestartHeadingE_ptr
48D438:  LDR             R0, [R0]; CRestart::ExtraPoliceStationRestartHeading ...
48D43A:  LDR             R0, [R0]; CRestart::ExtraPoliceStationRestartHeading
48D43C:  STR             R0, [R4]
48D43E:  MOV             R0, R4; this
48D440:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D444:  MOV             R0, R4; p
48D446:  BLX             free
48D44A:  MOVS            R0, #1
48D44C:  ADD             SP, SP, #4
48D44E:  POP.W           {R8-R11}
48D452:  POP             {R4-R7,PC}
