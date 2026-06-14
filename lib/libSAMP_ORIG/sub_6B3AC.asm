; =========================================================
; Game Engine Function: sub_6B3AC
; Address            : 0x6B3AC - 0x6B4A6
; =========================================================

6B3AC:  PUSH            {R4,R5,R7,LR}
6B3AE:  ADD             R7, SP, #8
6B3B0:  SUB             SP, SP, #0x118
6B3B2:  LDR             R1, =(aSampOrig - 0x6B3BE); "SAMP_ORIG" ...
6B3B4:  MOV             R4, R0
6B3B6:  LDR             R2, =(aInitgameHook - 0x6B3C0); "InitGame_hook()" ...
6B3B8:  LDR             R0, =(__stack_chk_guard_ptr - 0x6B3C2)
6B3BA:  ADD             R1, PC; "SAMP_ORIG"
6B3BC:  ADD             R2, PC; "InitGame_hook()"
6B3BE:  ADD             R0, PC; __stack_chk_guard_ptr
6B3C0:  LDR             R0, [R0]; __stack_chk_guard
6B3C2:  LDR             R0, [R0]
6B3C4:  STR             R0, [SP,#0x120+var_C]
6B3C6:  MOVS            R0, #4; prio
6B3C8:  BLX             __android_log_print
6B3CC:  LDR             R0, =(off_1A4418 - 0x6B3D2)
6B3CE:  ADD             R0, PC; off_1A4418
6B3D0:  LDR             R1, [R0]
6B3D2:  MOV             R0, R4
6B3D4:  BLX             R1
6B3D6:  LDRD.W          R1, R0, [R4]; src
6B3DA:  MOVS            R2, #1
6B3DC:  ADD.W           R2, R2, R0,LSR#3; size
6B3E0:  MOV             R0, SP; int
6B3E2:  MOVS            R3, #0
6B3E4:  MOVS            R4, #0
6B3E6:  BL              sub_86BA8
6B3EA:  LDR             R0, [SP,#0x120+var_120]
6B3EC:  LDR             R2, [SP,#0x120+var_118]
6B3EE:  CMP             R2, R0
6B3F0:  BGE             loc_6B40E
6B3F2:  LDR             R1, [SP,#0x120+var_114]
6B3F4:  ASRS            R3, R2, #3
6B3F6:  LDRB            R3, [R1,R3]
6B3F8:  ADDS            R1, R2, #1
6B3FA:  AND.W           R2, R2, #7
6B3FE:  STR             R1, [SP,#0x120+var_118]
6B400:  LSL.W           R2, R3, R2
6B404:  UXTB            R2, R2
6B406:  LSRS            R4, R2, #7
6B408:  CMP             R1, R0
6B40A:  BGE             loc_6B428
6B40C:  B               loc_6B414
6B40E:  MOV             R1, R2
6B410:  CMP             R1, R0
6B412:  BGE             loc_6B428
6B414:  LDR             R0, [SP,#0x120+var_114]
6B416:  ASRS            R2, R1, #3
6B418:  LDRB            R0, [R0,R2]
6B41A:  ADDS            R2, R1, #1
6B41C:  AND.W           R1, R1, #7
6B420:  STR             R2, [SP,#0x120+var_118]
6B422:  LSLS            R0, R1
6B424:  UXTB            R0, R0
6B426:  LSRS            R5, R0, #7
6B428:  LDR             R1, =(aSampOrig - 0x6B430); "SAMP_ORIG" ...
6B42A:  LDR             R2, =(aBzonenamesD - 0x6B432); "bZoneNames: %d" ...
6B42C:  ADD             R1, PC; "SAMP_ORIG"
6B42E:  ADD             R2, PC; "bZoneNames: %d"
6B430:  MOVS            R0, #4; prio
6B432:  MOV             R3, R4
6B434:  BLX             __android_log_print
6B438:  LDR             R1, =(aSampOrig - 0x6B440); "SAMP_ORIG" ...
6B43A:  LDR             R2, =(aBusecjwalkD - 0x6B442); "bUseCJWalk: %d" ...
6B43C:  ADD             R1, PC; "SAMP_ORIG"
6B43E:  ADD             R2, PC; "bUseCJWalk: %d"
6B440:  UXTB            R3, R5
6B442:  MOVS            R0, #4; prio
6B444:  BLX             __android_log_print
6B448:  LDR             R0, =(off_114AA8 - 0x6B456)
6B44A:  MOV             R1, #0x4C5EFA
6B452:  ADD             R0, PC; off_114AA8
6B454:  LDR             R0, [R0]; dword_1A4404
6B456:  LDR             R0, [R0]
6B458:  ADDS            R4, R0, R1
6B45A:  LSLS            R0, R5, #0x18
6B45C:  BEQ             loc_6B46E
6B45E:  LDR             R1, =(unk_4A895 - 0x6B464)
6B460:  ADD             R1, PC; unk_4A895
6B462:  MOV             R0, R4
6B464:  MOVS            R2, #4
6B466:  MOVS            R3, #1
6B468:  BL              sub_AFA08
6B46C:  B               loc_6B48A
6B46E:  LDR             R1, =(unk_50E89 - 0x6B474)
6B470:  ADD             R1, PC; unk_50E89
6B472:  MOV             R0, R4
6B474:  MOVS            R2, #2
6B476:  MOVS            R3, #1
6B478:  BL              sub_AFA08
6B47C:  LDR             R1, =(unk_50E89 - 0x6B484)
6B47E:  ADDS            R0, R4, #2
6B480:  ADD             R1, PC; unk_50E89
6B482:  MOVS            R2, #2
6B484:  MOVS            R3, #1
6B486:  BL              sub_AFA08
6B48A:  MOV             R0, SP
6B48C:  BL              sub_86BF8
6B490:  LDR             R0, [SP,#0x120+var_C]
6B492:  LDR             R1, =(__stack_chk_guard_ptr - 0x6B498)
6B494:  ADD             R1, PC; __stack_chk_guard_ptr
6B496:  LDR             R1, [R1]; __stack_chk_guard
6B498:  LDR             R1, [R1]
6B49A:  CMP             R1, R0
6B49C:  ITT EQ
6B49E:  ADDEQ           SP, SP, #0x118
6B4A0:  POPEQ           {R4,R5,R7,PC}
6B4A2:  BLX             __stack_chk_fail
