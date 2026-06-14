; =========================================================
; Game Engine Function: _Z22SCCloudSaveStateUpdatev
; Address            : 0x2872BC - 0x28755A
; =========================================================

2872BC:  PUSH            {R4-R7,LR}
2872BE:  ADD             R7, SP, #0xC
2872C0:  PUSH.W          {R11}
2872C4:  SUB             SP, SP, #0x88
2872C6:  LDR             R0, =(NextCheckTime_ptr - 0x2872CE)
2872C8:  LDR             R1, =(__stack_chk_guard_ptr - 0x2872D0)
2872CA:  ADD             R0, PC; NextCheckTime_ptr
2872CC:  ADD             R1, PC; __stack_chk_guard_ptr
2872CE:  LDR             R0, [R0]; NextCheckTime
2872D0:  LDR             R1, [R1]; __stack_chk_guard
2872D2:  LDR             R0, [R0]
2872D4:  LDR             R1, [R1]
2872D6:  STR             R1, [SP,#0x98+var_14]
2872D8:  MOVW            R1, #0x1388
2872DC:  ADDS            R4, R0, R1
2872DE:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
2872E2:  CMP             R4, R0
2872E4:  BCS             loc_2872FE
2872E6:  LDR             R0, =(TempSignIn_ptr - 0x2872EE)
2872E8:  LDR             R1, =(NextCheckTime_ptr - 0x2872F0)
2872EA:  ADD             R0, PC; TempSignIn_ptr
2872EC:  ADD             R1, PC; NextCheckTime_ptr
2872EE:  LDR             R4, [R0]; TempSignIn
2872F0:  LDR             R5, [R1]; NextCheckTime
2872F2:  BLX             _Z12IsSCSignedInv; IsSCSignedIn(void)
2872F6:  STRB            R0, [R4]
2872F8:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
2872FC:  STR             R0, [R5]
2872FE:  LDR             R0, =(TempSignIn_ptr - 0x287304)
287300:  ADD             R0, PC; TempSignIn_ptr
287302:  LDR             R0, [R0]; TempSignIn
287304:  LDRB            R0, [R0]
287306:  CMP             R0, #0
287308:  BEQ.W           def_28731E; jumptable 0028731E default case
28730C:  BLX             scmainUpdate
287310:  LDR             R0, =(CloudSaveState_ptr - 0x287316)
287312:  ADD             R0, PC; CloudSaveState_ptr
287314:  LDR             R0, [R0]; CloudSaveState
287316:  LDR             R0, [R0]
287318:  CMP             R0, #8; switch 9 cases
28731A:  BHI.W           def_28731E; jumptable 0028731E default case
28731E:  TBB.W           [PC,R0]; switch jump
287322:  DCB 5; jump table for switch statement
287323:  DCB 0xA
287324:  DCB 0x18
287325:  DCB 0x4C
287326:  DCB 0x5C
287327:  DCB 0x8C
287328:  DCB 0x99
287329:  DCB 0xCB
28732A:  DCB 0xDA
28732B:  ALIGN 2
28732C:  LDR             R0, =(CloudSaveState_ptr - 0x287334); jumptable 0028731E case 0
28732E:  MOVS            R1, #1
287330:  ADD             R0, PC; CloudSaveState_ptr
287332:  LDR             R0, [R0]; CloudSaveState
287334:  B               loc_28753E
287336:  LDR             R0, =(cloudFilename_ptr - 0x28733C); jumptable 0028731E case 1
287338:  ADD             R0, PC; cloudFilename_ptr
28733A:  LDR             R0, [R0]; cloudFilename
28733C:  LDR             R0, [R0]; "SaveGame0.save" ...
28733E:  BLX             cloudStartDownload
287342:  CMP             R0, #1
287344:  BNE.W           def_28731E; jumptable 0028731E default case
287348:  LDR             R0, =(CloudSaveState_ptr - 0x287350)
28734A:  MOVS            R1, #2
28734C:  ADD             R0, PC; CloudSaveState_ptr
28734E:  LDR             R0, [R0]; CloudSaveState
287350:  B               loc_28753E
287352:  BLX             cloudIsBusy; jumptable 0028731E case 2
287356:  CMP             R0, #0
287358:  BNE.W           def_28731E; jumptable 0028731E default case
28735C:  BLX             cloudGetBufferPtr
287360:  CMP             R0, #0
287362:  BEQ.W           loc_287530
287366:  BLX             cloudGetBufferPtr
28736A:  MOV             R4, R0
28736C:  BLX             cloudGetBufferLen
287370:  MOV             R5, R0
287372:  CMP             R5, #1
287374:  BLT             loc_2873A4
287376:  LDR             R0, =(PcSaveHelper_ptr - 0x287380)
287378:  ADD             R6, SP, #0x98+var_94
28737A:  MOVS            R1, #6; int
28737C:  ADD             R0, PC; PcSaveHelper_ptr
28737E:  MOV             R2, R6; char *
287380:  LDR             R0, [R0]; PcSaveHelper ; this
287382:  BLX             j__ZN8C_PcSave20GenerateGameFilenameEiPc; C_PcSave::GenerateGameFilename(int,char *)
287386:  MOV             R1, SP
287388:  MOVS            R0, #1
28738A:  MOV             R2, R6
28738C:  MOVS            R3, #1
28738E:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
287392:  CBNZ            R0, loc_2873A4
287394:  LDR             R0, [SP,#0x98+var_98]; void *
287396:  MOV             R1, R4; ptr
287398:  MOV             R2, R5; int
28739A:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
28739E:  LDR             R0, [SP,#0x98+var_98]; this
2873A0:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
2873A4:  BLX             cloudGetFree
2873A8:  LDR             R0, =(cloudFilename_ptr - 0x2873AE)
2873AA:  ADD             R0, PC; cloudFilename_ptr
2873AC:  LDR             R0, [R0]; cloudFilename
2873AE:  LDR             R0, [R0]; "SaveGame0.save" ...
2873B0:  BLX             cloudStartCheckMod
2873B4:  LDR             R0, =(CloudSaveState_ptr - 0x2873BA)
2873B6:  ADD             R0, PC; CloudSaveState_ptr
2873B8:  B               loc_2873D4
2873BA:  BLX             cloudIsBusy; jumptable 0028731E case 3
2873BE:  CMP             R0, #0
2873C0:  BNE.W           def_28731E; jumptable 0028731E default case
2873C4:  LDR             R0, =(cloudFilename_ptr - 0x2873CA)
2873C6:  ADD             R0, PC; cloudFilename_ptr
2873C8:  LDR             R0, [R0]; cloudFilename
2873CA:  LDR             R0, [R0]; "SaveGame0.save" ...
2873CC:  BLX             cloudStartCheckMod
2873D0:  LDR             R0, =(CloudSaveState_ptr - 0x2873D6)
2873D2:  ADD             R0, PC; CloudSaveState_ptr
2873D4:  LDR             R0, [R0]; CloudSaveState
2873D6:  MOVS            R1, #4
2873D8:  B               loc_28753E
2873DA:  BLX             cloudIsBusy; jumptable 0028731E case 4
2873DE:  CMP             R0, #0
2873E0:  BNE.W           def_28731E; jumptable 0028731E default case
2873E4:  LDR             R0, =(cloudFilename_ptr - 0x2873EA)
2873E6:  ADD             R0, PC; cloudFilename_ptr
2873E8:  LDR             R0, [R0]; cloudFilename
2873EA:  LDR             R0, [R0]; "SaveGame0.save" ...
2873EC:  BLX             cloudModFind
2873F0:  MOV             R1, R0; void *
2873F2:  CBZ             R1, loc_287430
2873F4:  LDR             R0, =(myCloudSaves_ptr - 0x2873FC)
2873F6:  MOVS            R2, #0xC1; size_t
2873F8:  ADD             R0, PC; myCloudSaves_ptr
2873FA:  LDR             R0, [R0]; myCloudSaves ; void *
2873FC:  BLX             memcpy_1
287400:  LDR             R2, =(aGtacloudsaveSe - 0x28740C); "gtacloudsave.set"
287402:  ADD             R1, SP, #0x98+var_94
287404:  MOVS            R0, #1
287406:  MOVS            R3, #1
287408:  ADD             R2, PC; "gtacloudsave.set"
28740A:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
28740E:  CBNZ            R0, loc_287426
287410:  LDR             R1, =(myCloudSaves_ptr - 0x28741C)
287412:  MOV.W           R2, #0x182; int
287416:  LDR             R0, [SP,#0x98+var_94]; void *
287418:  ADD             R1, PC; myCloudSaves_ptr
28741A:  LDR             R1, [R1]; myCloudSaves ; ptr
28741C:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
287420:  LDR             R0, [SP,#0x98+var_94]; this
287422:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
287426:  LDR             R0, =(PcSaveHelper_ptr - 0x28742C)
287428:  ADD             R0, PC; PcSaveHelper_ptr
28742A:  LDR             R0, [R0]; PcSaveHelper ; this
28742C:  BLX             j__ZN8C_PcSave16PopulateSlotInfoEv; C_PcSave::PopulateSlotInfo(void)
287430:  LDR             R0, =(CloudSaveState_ptr - 0x287438)
287432:  MOVS            R1, #5
287434:  ADD             R0, PC; CloudSaveState_ptr
287436:  LDR             R0, [R0]; CloudSaveState
287438:  B               loc_28753E
28743A:  LDR             R0, =(cloudFilename_ptr - 0x287440); jumptable 0028731E case 5
28743C:  ADD             R0, PC; cloudFilename_ptr
28743E:  LDR             R0, [R0]; cloudFilename
287440:  LDR             R0, [R0,#(off_68570C - 0x685708)]; "SaveGame1.save" ...
287442:  BLX             cloudStartDownload
287446:  CMP             R0, #1
287448:  BNE             def_28731E; jumptable 0028731E default case
28744A:  LDR             R0, =(CloudSaveState_ptr - 0x287452)
28744C:  MOVS            R1, #6
28744E:  ADD             R0, PC; CloudSaveState_ptr
287450:  LDR             R0, [R0]; CloudSaveState
287452:  B               loc_28753E
287454:  BLX             cloudIsBusy; jumptable 0028731E case 6
287458:  CMP             R0, #0
28745A:  BNE             def_28731E; jumptable 0028731E default case
28745C:  BLX             cloudGetBufferPtr
287460:  CMP             R0, #0
287462:  BEQ             loc_287536
287464:  BLX             cloudGetBufferPtr
287468:  MOV             R4, R0
28746A:  BLX             cloudGetBufferLen
28746E:  MOV             R5, R0
287470:  CMP             R5, #1
287472:  BLT             loc_2874A2
287474:  LDR             R0, =(PcSaveHelper_ptr - 0x28747E)
287476:  ADD             R6, SP, #0x98+var_94
287478:  MOVS            R1, #7; int
28747A:  ADD             R0, PC; PcSaveHelper_ptr
28747C:  MOV             R2, R6; char *
28747E:  LDR             R0, [R0]; PcSaveHelper ; this
287480:  BLX             j__ZN8C_PcSave20GenerateGameFilenameEiPc; C_PcSave::GenerateGameFilename(int,char *)
287484:  MOV             R1, SP
287486:  MOVS            R0, #1
287488:  MOV             R2, R6
28748A:  MOVS            R3, #1
28748C:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
287490:  CBNZ            R0, loc_2874A2
287492:  LDR             R0, [SP,#0x98+var_98]; void *
287494:  MOV             R1, R4; ptr
287496:  MOV             R2, R5; int
287498:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
28749C:  LDR             R0, [SP,#0x98+var_98]; this
28749E:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
2874A2:  BLX             cloudGetFree
2874A6:  LDR             R0, =(cloudFilename_ptr - 0x2874AC)
2874A8:  ADD             R0, PC; cloudFilename_ptr
2874AA:  LDR             R0, [R0]; cloudFilename
2874AC:  LDR             R0, [R0,#(off_68570C - 0x685708)]; "SaveGame1.save" ...
2874AE:  BLX             cloudStartCheckMod
2874B2:  LDR             R0, =(CloudSaveState_ptr - 0x2874B8)
2874B4:  ADD             R0, PC; CloudSaveState_ptr
2874B6:  B               loc_2874D0
2874B8:  BLX             cloudIsBusy; jumptable 0028731E case 7
2874BC:  CMP             R0, #0
2874BE:  BNE             def_28731E; jumptable 0028731E default case
2874C0:  LDR             R0, =(cloudFilename_ptr - 0x2874C6)
2874C2:  ADD             R0, PC; cloudFilename_ptr
2874C4:  LDR             R0, [R0]; cloudFilename
2874C6:  LDR             R0, [R0,#(off_68570C - 0x685708)]; "SaveGame1.save" ...
2874C8:  BLX             cloudStartCheckMod
2874CC:  LDR             R0, =(CloudSaveState_ptr - 0x2874D2)
2874CE:  ADD             R0, PC; CloudSaveState_ptr
2874D0:  LDR             R0, [R0]; CloudSaveState
2874D2:  MOVS            R1, #8
2874D4:  B               loc_28753E
2874D6:  BLX             cloudIsBusy; jumptable 0028731E case 8
2874DA:  CBNZ            R0, def_28731E; jumptable 0028731E default case
2874DC:  LDR             R0, =(cloudFilename_ptr - 0x2874E2)
2874DE:  ADD             R0, PC; cloudFilename_ptr
2874E0:  LDR             R0, [R0]; cloudFilename
2874E2:  LDR             R0, [R0,#(off_68570C - 0x685708)]; "SaveGame1.save" ...
2874E4:  BLX             cloudModFind
2874E8:  MOV             R1, R0; void *
2874EA:  CBZ             R1, loc_28752A
2874EC:  LDR             R0, =(myCloudSaves_ptr - 0x2874F4)
2874EE:  MOVS            R2, #0xC1; size_t
2874F0:  ADD             R0, PC; myCloudSaves_ptr
2874F2:  LDR             R0, [R0]; myCloudSaves
2874F4:  ADDS            R0, #0xC1; void *
2874F6:  BLX             memcpy_1
2874FA:  LDR             R2, =(aGtacloudsaveSe - 0x287506); "gtacloudsave.set"
2874FC:  ADD             R1, SP, #0x98+var_94
2874FE:  MOVS            R0, #1
287500:  MOVS            R3, #1
287502:  ADD             R2, PC; "gtacloudsave.set"
287504:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
287508:  CBNZ            R0, loc_287520
28750A:  LDR             R1, =(myCloudSaves_ptr - 0x287516)
28750C:  MOV.W           R2, #0x182; int
287510:  LDR             R0, [SP,#0x98+var_94]; void *
287512:  ADD             R1, PC; myCloudSaves_ptr
287514:  LDR             R1, [R1]; myCloudSaves ; ptr
287516:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
28751A:  LDR             R0, [SP,#0x98+var_94]; this
28751C:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
287520:  LDR             R0, =(PcSaveHelper_ptr - 0x287526)
287522:  ADD             R0, PC; PcSaveHelper_ptr
287524:  LDR             R0, [R0]; PcSaveHelper ; this
287526:  BLX             j__ZN8C_PcSave16PopulateSlotInfoEv; C_PcSave::PopulateSlotInfo(void)
28752A:  LDR             R0, =(CloudSaveState_ptr - 0x287530)
28752C:  ADD             R0, PC; CloudSaveState_ptr
28752E:  B               loc_28753A
287530:  LDR             R0, =(CloudSaveState_ptr - 0x287536)
287532:  ADD             R0, PC; CloudSaveState_ptr
287534:  B               loc_28753A
287536:  LDR             R0, =(CloudSaveState_ptr - 0x28753C)
287538:  ADD             R0, PC; CloudSaveState_ptr
28753A:  LDR             R0, [R0]; CloudSaveState
28753C:  MOVS            R1, #9
28753E:  STR             R1, [R0]
287540:  LDR             R0, =(__stack_chk_guard_ptr - 0x287548); jumptable 0028731E default case
287542:  LDR             R1, [SP,#0x98+var_14]
287544:  ADD             R0, PC; __stack_chk_guard_ptr
287546:  LDR             R0, [R0]; __stack_chk_guard
287548:  LDR             R0, [R0]
28754A:  SUBS            R0, R0, R1
28754C:  ITTT EQ
28754E:  ADDEQ           SP, SP, #0x88
287550:  POPEQ.W         {R11}
287554:  POPEQ           {R4-R7,PC}
287556:  BLX             __stack_chk_fail
