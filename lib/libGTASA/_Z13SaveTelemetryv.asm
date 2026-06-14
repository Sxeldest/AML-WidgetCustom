; =========================================================
; Game Engine Function: _Z13SaveTelemetryv
; Address            : 0x2AD24C - 0x2AD356
; =========================================================

2AD24C:  PUSH            {R4,R5,R7,LR}
2AD24E:  ADD             R7, SP, #8
2AD250:  SUB             SP, SP, #0x10
2AD252:  LDR             R0, =(telemFileName_ptr - 0x2AD25C)
2AD254:  ADD             R1, SP, #0x18+var_14
2AD256:  MOVS            R3, #1
2AD258:  ADD             R0, PC; telemFileName_ptr
2AD25A:  LDR             R0, [R0]; telemFileName
2AD25C:  LDR             R2, [R0]; "gtasatelem.set" ...
2AD25E:  MOVS            R0, #1
2AD260:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
2AD264:  CBZ             R0, loc_2AD26A
2AD266:  ADD             SP, SP, #0x10
2AD268:  POP             {R4,R5,R7,PC}
2AD26A:  LDR             R1, =(teleheader_ptr - 0x2AD274)
2AD26C:  MOVS            R2, #0xA; int
2AD26E:  LDR             R0, [SP,#0x18+var_14]; void *
2AD270:  ADD             R1, PC; teleheader_ptr
2AD272:  LDR             R1, [R1]; "telemv001" ...
2AD274:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
2AD278:  LDR             R1, =(lastUpdateTime_ptr - 0x2AD282)
2AD27A:  MOVS            R2, #4; int
2AD27C:  LDR             R0, [SP,#0x18+var_14]; void *
2AD27E:  ADD             R1, PC; lastUpdateTime_ptr
2AD280:  LDR             R1, [R1]; lastUpdateTime ; ptr
2AD282:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
2AD286:  LDR             R0, =(MenuCounts_ptr - 0x2AD294)
2AD288:  VMOV.I32        Q8, #0
2AD28C:  LDR             R5, [SP,#0x18+var_14]
2AD28E:  ADD             R1, SP, #0x18+tv; ptr
2AD290:  ADD             R0, PC; MenuCounts_ptr
2AD292:  MOVS            R2, #4; int
2AD294:  LDR             R4, [R0]; MenuCounts
2AD296:  ADD.W           R0, R4, #0x5C ; '\'
2AD29A:  VST1.32         {D16-D17}, [R0]
2AD29E:  ADD.W           R0, R4, #0x50 ; 'P'
2AD2A2:  VST1.32         {D16-D17}, [R0]
2AD2A6:  ADD.W           R0, R4, #0x40 ; '@'
2AD2AA:  VST1.32         {D16-D17}, [R0]
2AD2AE:  ADD.W           R0, R4, #0x30 ; '0'
2AD2B2:  VST1.32         {D16-D17}, [R0]
2AD2B6:  ADD.W           R0, R4, #0x20 ; ' '
2AD2BA:  VST1.32         {D16-D17}, [R0]
2AD2BE:  MOV             R0, R4
2AD2C0:  VST1.32         {D16-D17}, [R0]!
2AD2C4:  VST1.32         {D16-D17}, [R0]
2AD2C8:  MOVS            R0, #0x1B
2AD2CA:  STR             R0, [SP,#0x18+tv]
2AD2CC:  MOV             R0, R5; void *
2AD2CE:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
2AD2D2:  MOV             R0, R5; void *
2AD2D4:  MOV             R1, R4; ptr
2AD2D6:  MOVS            R2, #0x6C ; 'l'; int
2AD2D8:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
2AD2DC:  LDR             R1, =(aUsage_0 - 0x2AD2E6); "Usage"
2AD2DE:  MOVS            R2, #6; int
2AD2E0:  LDR             R4, [SP,#0x18+var_14]
2AD2E2:  ADD             R1, PC; "Usage"
2AD2E4:  MOV             R0, R4; void *
2AD2E6:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
2AD2EA:  ADD             R0, SP, #0x18+tv; tv
2AD2EC:  MOVS            R1, #0; tz
2AD2EE:  MOVS            R5, #0
2AD2F0:  BLX             gettimeofday
2AD2F4:  LDR             R0, [SP,#0x18+tv]
2AD2F6:  MOV.W           R1, #0x3E8
2AD2FA:  MOVS            R2, #8; int
2AD2FC:  MULS            R0, R1
2AD2FE:  ADD             R1, SP, #0x18+tv; ptr
2AD300:  STR             R0, [SP,#0x18+tv]
2AD302:  ASRS            R0, R0, #0x1F
2AD304:  STR             R0, [SP,#0x18+tv.tv_usec]
2AD306:  MOV             R0, R4; void *
2AD308:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
2AD30C:  LDR             R0, =(firstStartTime_ptr - 0x2AD314)
2AD30E:  MOVS            R2, #8; int
2AD310:  ADD             R0, PC; firstStartTime_ptr
2AD312:  LDR             R1, [R0]; firstStartTime ; ptr
2AD314:  MOV             R0, R4; void *
2AD316:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
2AD31A:  LDR             R0, =(currentDayindex_ptr - 0x2AD322)
2AD31C:  MOVS            R2, #4; int
2AD31E:  ADD             R0, PC; currentDayindex_ptr
2AD320:  LDR             R1, [R0]; currentDayindex ; ptr
2AD322:  MOV             R0, R4; void *
2AD324:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
2AD328:  LDR             R0, =(DailyUse_ptr - 0x2AD330)
2AD32A:  MOVS            R2, #0x78 ; 'x'; int
2AD32C:  ADD             R0, PC; DailyUse_ptr
2AD32E:  LDR             R1, [R0]; DailyUse ; ptr
2AD330:  MOV             R0, R4; void *
2AD332:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
2AD336:  LDR             R0, =(TimeInBackground_ptr - 0x2AD33E)
2AD338:  MOVS            R2, #0x78 ; 'x'; int
2AD33A:  ADD             R0, PC; TimeInBackground_ptr
2AD33C:  LDR             R1, [R0]; TimeInBackground ; ptr
2AD33E:  MOV             R0, R4; void *
2AD340:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
2AD344:  LDR             R0, [SP,#0x18+var_14]; this
2AD346:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
2AD34A:  LDR             R0, =(isDirty_ptr - 0x2AD350)
2AD34C:  ADD             R0, PC; isDirty_ptr
2AD34E:  LDR             R0, [R0]; isDirty
2AD350:  STRB            R5, [R0]
2AD352:  ADD             SP, SP, #0x10
2AD354:  POP             {R4,R5,R7,PC}
