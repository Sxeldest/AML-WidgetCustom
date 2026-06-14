; =========================================================
; Game Engine Function: _Z13LoadTelemetryv
; Address            : 0x2AD380 - 0x2AD4D0
; =========================================================

2AD380:  PUSH            {R4,R5,R7,LR}
2AD382:  ADD             R7, SP, #8
2AD384:  SUB             SP, SP, #0x30
2AD386:  LDR             R0, =(__stack_chk_guard_ptr - 0x2AD390)
2AD388:  MOVS            R3, #0
2AD38A:  LDR             R1, =(telemFileName_ptr - 0x2AD392)
2AD38C:  ADD             R0, PC; __stack_chk_guard_ptr
2AD38E:  ADD             R1, PC; telemFileName_ptr
2AD390:  LDR             R0, [R0]; __stack_chk_guard
2AD392:  LDR             R1, [R1]; telemFileName
2AD394:  LDR             R0, [R0]
2AD396:  STR             R0, [SP,#0x38+var_C]
2AD398:  MOVS            R0, #1
2AD39A:  LDR             R2, [R1]; "gtasatelem.set" ...
2AD39C:  ADD             R1, SP, #0x38+var_34
2AD39E:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
2AD3A2:  CMP             R0, #0
2AD3A4:  BNE.W           loc_2AD4BA
2AD3A8:  ADD             R4, SP, #0x38+ptr
2AD3AA:  LDR             R0, [SP,#0x38+var_34]; this
2AD3AC:  MOVS            R2, #0xA; n
2AD3AE:  MOV             R1, R4; ptr
2AD3B0:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
2AD3B4:  ADR             R1, aTelemetry; "telemetry"
2AD3B6:  MOV             R0, R4; char *
2AD3B8:  BLX             strcmp
2AD3BC:  CMP             R0, #0
2AD3BE:  BEQ             loc_2AD496
2AD3C0:  ADD             R0, SP, #0x38+ptr; char *
2AD3C2:  ADR             R1, aTelemv; "telemv"
2AD3C4:  MOVS            R2, #6; size_t
2AD3C6:  BLX             strncmp
2AD3CA:  CMP             R0, #0
2AD3CC:  BNE             loc_2AD4BA
2AD3CE:  LDR             R1, =(lastUpdateTime_ptr - 0x2AD3D8)
2AD3D0:  MOVS            R2, #4; n
2AD3D2:  LDR             R0, [SP,#0x38+var_34]; this
2AD3D4:  ADD             R1, PC; lastUpdateTime_ptr
2AD3D6:  LDR             R1, [R1]; lastUpdateTime ; ptr
2AD3D8:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
2AD3DC:  LDR             R0, =(MenuCounts_ptr - 0x2AD3EA)
2AD3DE:  VMOV.I32        Q8, #0
2AD3E2:  LDR             R5, [SP,#0x38+var_34]
2AD3E4:  ADD             R1, SP, #0x38+var_18; ptr
2AD3E6:  ADD             R0, PC; MenuCounts_ptr
2AD3E8:  MOVS            R2, #4; n
2AD3EA:  LDR             R4, [R0]; MenuCounts
2AD3EC:  ADD.W           R0, R4, #0x5C ; '\'
2AD3F0:  VST1.32         {D16-D17}, [R0]
2AD3F4:  ADD.W           R0, R4, #0x50 ; 'P'
2AD3F8:  VST1.32         {D16-D17}, [R0]
2AD3FC:  ADD.W           R0, R4, #0x40 ; '@'
2AD400:  VST1.32         {D16-D17}, [R0]
2AD404:  ADD.W           R0, R4, #0x30 ; '0'
2AD408:  VST1.32         {D16-D17}, [R0]
2AD40C:  ADD.W           R0, R4, #0x20 ; ' '
2AD410:  VST1.32         {D16-D17}, [R0]
2AD414:  MOV             R0, R4
2AD416:  VST1.32         {D16-D17}, [R0]!
2AD41A:  VST1.32         {D16-D17}, [R0]
2AD41E:  MOVS            R0, #0x1B
2AD420:  STR             R0, [SP,#0x38+var_18]
2AD422:  MOV             R0, R5; this
2AD424:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
2AD428:  LDR             R0, [SP,#0x38+var_18]
2AD42A:  MOV             R1, R4; ptr
2AD42C:  LSLS            R2, R0, #2; n
2AD42E:  MOV             R0, R5; this
2AD430:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
2AD434:  LDR             R4, [SP,#0x38+var_34]
2AD436:  ADD             R1, SP, #0x38+var_18; unsigned int
2AD438:  MOVS            R2, #byte_6; char *
2AD43A:  MOV             R0, R4; this
2AD43C:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
2AD440:  ADD             R0, SP, #0x38+tv; tv
2AD442:  MOVS            R1, #0; tz
2AD444:  BLX             gettimeofday
2AD448:  LDR             R0, [SP,#0x38+tv]
2AD44A:  MOV.W           R1, #0x3E8
2AD44E:  MOVS            R2, #8; n
2AD450:  MULS            R0, R1
2AD452:  ADD             R1, SP, #0x38+tv; ptr
2AD454:  STR             R0, [SP,#0x38+tv]
2AD456:  ASRS            R0, R0, #0x1F
2AD458:  STR             R0, [SP,#0x38+tv.tv_usec]
2AD45A:  MOV             R0, R4; this
2AD45C:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
2AD460:  LDR             R0, =(firstStartTime_ptr - 0x2AD468)
2AD462:  MOVS            R2, #8; n
2AD464:  ADD             R0, PC; firstStartTime_ptr
2AD466:  LDR             R1, [R0]; firstStartTime ; ptr
2AD468:  MOV             R0, R4; this
2AD46A:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
2AD46E:  LDR             R0, =(currentDayindex_ptr - 0x2AD476)
2AD470:  MOVS            R2, #4; n
2AD472:  ADD             R0, PC; currentDayindex_ptr
2AD474:  LDR             R1, [R0]; currentDayindex ; ptr
2AD476:  MOV             R0, R4; this
2AD478:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
2AD47C:  LDR             R0, =(DailyUse_ptr - 0x2AD484)
2AD47E:  MOVS            R2, #0x1C; n
2AD480:  ADD             R0, PC; DailyUse_ptr
2AD482:  LDR             R1, [R0]; DailyUse ; ptr
2AD484:  MOV             R0, R4; this
2AD486:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
2AD48A:  LDR             R0, =(TimeInBackground_ptr - 0x2AD492)
2AD48C:  MOVS            R2, #0x1C
2AD48E:  ADD             R0, PC; TimeInBackground_ptr
2AD490:  LDR             R1, [R0]; TimeInBackground
2AD492:  MOV             R0, R4
2AD494:  B               loc_2AD4B0
2AD496:  MOVS            R0, #0x1B
2AD498:  ADD             R1, SP, #0x38+var_18; ptr
2AD49A:  STR             R0, [SP,#0x38+var_18]
2AD49C:  MOVS            R2, #4; n
2AD49E:  LDR             R0, [SP,#0x38+var_34]; this
2AD4A0:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
2AD4A4:  LDR             R1, =(MenuCounts_ptr - 0x2AD4AC)
2AD4A6:  LDR             R2, [SP,#0x38+var_18]
2AD4A8:  ADD             R1, PC; MenuCounts_ptr
2AD4AA:  LDR             R0, [SP,#0x38+var_34]; this
2AD4AC:  LDR             R1, [R1]; MenuCounts ; ptr
2AD4AE:  LSLS            R2, R2, #2; n
2AD4B0:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
2AD4B4:  LDR             R0, [SP,#0x38+var_34]; this
2AD4B6:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
2AD4BA:  LDR             R0, =(__stack_chk_guard_ptr - 0x2AD4C2)
2AD4BC:  LDR             R1, [SP,#0x38+var_C]
2AD4BE:  ADD             R0, PC; __stack_chk_guard_ptr
2AD4C0:  LDR             R0, [R0]; __stack_chk_guard
2AD4C2:  LDR             R0, [R0]
2AD4C4:  SUBS            R0, R0, R1
2AD4C6:  ITT EQ
2AD4C8:  ADDEQ           SP, SP, #0x30 ; '0'
2AD4CA:  POPEQ           {R4,R5,R7,PC}
2AD4CC:  BLX             __stack_chk_fail
