; =========================================================
; Game Engine Function: _ZN17CAEMP3TrackLoader13GetDataStreamEj
; Address            : 0x27F2EC - 0x27F54E
; =========================================================

27F2EC:  PUSH            {R4-R7,LR}
27F2EE:  ADD             R7, SP, #0xC
27F2F0:  PUSH.W          {R8-R11}
27F2F4:  SUB.W           SP, SP, #0x1F80
27F2F8:  SUB             SP, SP, #0x1C
27F2FA:  MOV             R9, R0
27F2FC:  LDR             R0, =(__stack_chk_guard_ptr - 0x27F304)
27F2FE:  MOV             R8, R1
27F300:  ADD             R0, PC; __stack_chk_guard_ptr
27F302:  LDR             R0, [R0]; __stack_chk_guard
27F304:  LDR             R0, [R0]
27F306:  STR.W           R0, [R7,#var_24]
27F30A:  LDR.W           R0, [R9,#4]
27F30E:  CMP             R0, R8
27F310:  BLS.W           loc_27F4A4
27F314:  ADD.W           R2, R8, R8,LSL#1
27F318:  LDRD.W          R3, R1, [R9,#8]
27F31C:  MOVS            R5, #0
27F31E:  LDRB.W          R0, [R1,R2,LSL#2]
27F322:  CMP             R3, R0
27F324:  BCC.W           loc_27F4A6
27F328:  LDR.W           R4, [R9,#0x10]
27F32C:  ADD.W           R10, R1, R2,LSL#2
27F330:  ADD.W           R0, R4, R0,LSL#4; char *
27F334:  BLX             strlen
27F338:  ADDS            R0, #0x19; unsigned int
27F33A:  BLX             _Znaj; operator new[](uint)
27F33E:  MOV             R11, R0
27F340:  LDR             R0, =(aAudioStreams - 0x27F346); "AUDIO\\STREAMS\\"
27F342:  ADD             R0, PC; "AUDIO\\STREAMS\\"
27F344:  ADDS            R1, R0, #7
27F346:  VLDR            D17, [R0]
27F34A:  ADD.W           R0, R11, #7
27F34E:  VLD1.8          {D16}, [R1]
27F352:  VST1.8          {D16}, [R0]
27F356:  VST1.8          {D17}, [R11]
27F35A:  LDRB.W          R0, [R10]
27F35E:  ADD.W           R1, R4, R0,LSL#4; src
27F362:  MOV             R0, R11; dest
27F364:  BLX             strcat
27F368:  MOV             R0, R11; char *
27F36A:  BLX             strlen
27F36E:  MOV             R1, #0x77736F2E
27F376:  STR.W           R1, [R11,R0]
27F37A:  ADD             R0, R11
27F37C:  STRB            R5, [R0,#4]
27F37E:  LDRB.W          R0, [R10]
27F382:  LDR.W           R1, [R9,#0x20]
27F386:  LDR.W           R1, [R1,R0,LSL#2]
27F38A:  CBNZ            R1, loc_27F3AA
27F38C:  MOV             R0, R11; char *
27F38E:  BLX             j__Z14ZIP_FileCreatePKc; ZIP_FileCreate(char const*)
27F392:  LDR.W           R1, [R9,#0x20]
27F396:  LDRB.W          R2, [R10]
27F39A:  STR.W           R0, [R1,R2,LSL#2]
27F39E:  LDRB.W          R0, [R10]
27F3A2:  LDR.W           R1, [R9,#0x20]
27F3A6:  LDR.W           R1, [R1,R0,LSL#2]
27F3AA:  STR             R1, [SP,#0x1FB8+var_1FAC]
27F3AC:  LDR.W           R1, [R9,#4]
27F3B0:  CBZ             R1, loc_27F3DE
27F3B2:  LDR.W           R3, [R9,#0xC]
27F3B6:  ADD.W           R12, R10, #4
27F3BA:  MOVS            R6, #0
27F3BC:  ADDS            R4, R3, #4
27F3BE:  MOVS            R3, #0
27F3C0:  LDRB.W          R5, [R4,#-4]
27F3C4:  CMP             R5, R0
27F3C6:  BNE             loc_27F3D4
27F3C8:  LDR.W           R5, [R12]
27F3CC:  LDR             R2, [R4]
27F3CE:  CMP             R2, R5
27F3D0:  IT LS
27F3D2:  ADDLS           R3, #1
27F3D4:  ADDS            R6, #1
27F3D6:  ADDS            R4, #0xC
27F3D8:  CMP             R6, R1
27F3DA:  BCC             loc_27F3C0
27F3DC:  B               loc_27F3E0
27F3DE:  MOVS            R3, #0
27F3E0:  SUB.W           R4, R7, #-var_64
27F3E4:  ADR             R2, aTrack03dMp3; "Track_%03d.mp3"
27F3E6:  MOVS            R1, #0x40 ; '@'
27F3E8:  MOV             R0, R4
27F3EA:  BL              sub_5E6B74
27F3EE:  LDR             R5, [SP,#0x1FB8+var_1FAC]
27F3F0:  MOV             R1, R4
27F3F2:  LDR             R0, [R5]
27F3F4:  LDR             R2, [R0]
27F3F6:  MOV             R0, R5
27F3F8:  BLX             R2
27F3FA:  ADDS            R1, R0, #1
27F3FC:  MOV.W           R10, #0
27F400:  BEQ             loc_27F4A4
27F402:  LDR             R1, [R5,#0xC]
27F404:  ADD.W           R0, R0, R0,LSL#1
27F408:  LDR.W           R4, [R1,R0,LSL#2]
27F40C:  ADD.W           R0, R1, R0,LSL#2
27F410:  LDR             R6, [R0,#4]
27F412:  MOVS            R0, #0x28 ; '('; unsigned int
27F414:  BLX             _Znwj; operator new(uint)
27F418:  MOV             R1, R8; int
27F41A:  MOV             R2, R11; char *
27F41C:  MOV             R3, R4; int
27F41E:  MOV             R5, R0
27F420:  STRD.W          R6, R10, [SP,#0x1FB8+var_1FB8]; int
27F424:  BLX             j__ZN13CAEDataStreamC2EiPciib; CAEDataStream::CAEDataStream(int,char *,int,int,bool)
27F428:  LDR             R0, =(byte_61CD7E - 0x27F42E)
27F42A:  ADD             R0, PC; byte_61CD7E ; this
27F42C:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
27F430:  MOV             R0, R5; this
27F432:  BLX             j__ZN13CAEDataStream10InitialiseEv; CAEDataStream::Initialise(void)
27F436:  CBZ             R0, loc_27F49A
27F438:  MOVW            R0, #0x1F84; unsigned int
27F43C:  MOVW            R6, #0x1F84
27F440:  BLX             _Znwj; operator new(uint)
27F444:  MUL.W           R1, R8, R6; unsigned int
27F448:  MOV             R10, R0
27F44A:  LDR.W           R0, [R9,#0x14]; this
27F44E:  MOVS            R2, #0; int
27F450:  BLX             j__ZN8CFileMgr4SeekEjii; CFileMgr::Seek(uint,int,int)
27F454:  LDR.W           R0, [R9,#0x14]; this
27F458:  MOV             R1, R10; ptr
27F45A:  MOVW            R2, #0x1F84; n
27F45E:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
27F462:  LDR.W           R0, [R10,#4]
27F466:  CMP             R0, #0
27F468:  BEQ             loc_27F53E
27F46A:  ADD             R0, SP, #0x1FB8+var_1FA8
27F46C:  MOVS            R2, #0
27F46E:  MOV             R3, R10
27F470:  MOVS            R1, #0
27F472:  LDR             R6, [R3,#4]
27F474:  CMP             R6, #0x21 ; '!'
27F476:  BEQ             loc_27F4CA
27F478:  LSLS            R6, R2, #0x1F
27F47A:  BNE             loc_27F48C
27F47C:  LDRD.W          R6, R4, [R3]
27F480:  STR.W           R6, [R0,R1,LSL#3]
27F484:  ADD.W           R6, R0, R1,LSL#3
27F488:  ADDS            R1, #1
27F48A:  STR             R4, [R6,#4]
27F48C:  ADDS            R2, #1
27F48E:  ADDS            R3, #8
27F490:  CMP.W           R2, #0x3E8
27F494:  BCC             loc_27F472
27F496:  MOVS            R6, #0
27F498:  B               loc_27F4E0
27F49A:  MOV             R0, R5; this
27F49C:  BLX             j__ZN13CAEDataStreamD2Ev; CAEDataStream::~CAEDataStream()
27F4A0:  BLX             _ZdlPv; operator delete(void *)
27F4A4:  MOVS            R5, #0
27F4A6:  LDR             R0, =(__stack_chk_guard_ptr - 0x27F4B0)
27F4A8:  LDR.W           R1, [R7,#var_24]
27F4AC:  ADD             R0, PC; __stack_chk_guard_ptr
27F4AE:  LDR             R0, [R0]; __stack_chk_guard
27F4B0:  LDR             R0, [R0]
27F4B2:  SUBS            R0, R0, R1
27F4B4:  ITTTT EQ
27F4B6:  MOVEQ           R0, R5
27F4B8:  ADDEQ.W         SP, SP, #0x1F80
27F4BC:  ADDEQ           SP, SP, #0x1C
27F4BE:  POPEQ.W         {R8-R11}
27F4C2:  IT EQ
27F4C4:  POPEQ           {R4-R7,PC}
27F4C6:  BLX             __stack_chk_fail
27F4CA:  LDRD.W          R2, R3, [R3]
27F4CE:  ADDS            R6, R1, #1
27F4D0:  STR.W           R2, [R0,R1,LSL#3]
27F4D4:  ADD.W           R2, R0, R1,LSL#3
27F4D8:  CMP.W           R6, #0x3E8
27F4DC:  STR             R3, [R2,#4]
27F4DE:  BCS             loc_27F532
27F4E0:  RSB.W           R2, R6, #0x3E8
27F4E4:  CMP             R2, #4
27F4E6:  BCC             loc_27F518
27F4E8:  BIC.W           R12, R2, #3
27F4EC:  CMP.W           R12, #0
27F4F0:  BEQ             loc_27F518
27F4F2:  VMOV.I64        Q8, #0xFFFFFFFF
27F4F6:  ADD.W           R1, R6, R12
27F4FA:  ADD.W           R6, R0, R6,LSL#3
27F4FE:  MOV             R3, R12
27F500:  ADD.W           R4, R6, #0x20 ; ' '
27F504:  VST1.32         {D16-D17}, [R6]!
27F508:  SUBS            R3, #4
27F50A:  VST1.32         {D16-D17}, [R6]
27F50E:  MOV             R6, R4
27F510:  BNE             loc_27F500
27F512:  CMP             R2, R12
27F514:  BNE             loc_27F51A
27F516:  B               loc_27F532
27F518:  MOV             R1, R6
27F51A:  MOV.W           R2, #0xFFFFFFFF
27F51E:  MOVS            R3, #0
27F520:  STR.W           R2, [R0,R1,LSL#3]
27F524:  ADD.W           R6, R0, R1,LSL#3
27F528:  ADDS            R1, #1
27F52A:  CMP.W           R1, #0x3E8
27F52E:  STR             R3, [R6,#4]
27F530:  BNE             loc_27F520
27F532:  ADD             R1, SP, #0x1FB8+var_1FA8; void *
27F534:  MOV             R0, R10; void *
27F536:  MOV.W           R2, #0x1F40; size_t
27F53A:  BLX             memcpy_0
27F53E:  MOV             R0, R5; this
27F540:  MOVS            R1, #0; int
27F542:  MOVS            R2, #0; int
27F544:  STR.W           R10, [R5]
27F548:  BLX             j__ZN13CAEDataStream4SeekEli; CAEDataStream::Seek(long,int)
27F54C:  B               loc_27F4A6
