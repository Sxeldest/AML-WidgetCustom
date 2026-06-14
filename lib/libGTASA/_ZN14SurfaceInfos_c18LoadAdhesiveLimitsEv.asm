; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c18LoadAdhesiveLimitsEv
; Address            : 0x41C3B8 - 0x41C4CA
; =========================================================

41C3B8:  PUSH            {R4-R7,LR}
41C3BA:  ADD             R7, SP, #0xC
41C3BC:  PUSH.W          {R8-R11}
41C3C0:  SUB             SP, SP, #0x10C
41C3C2:  MOV             R4, R0
41C3C4:  LDR             R0, =(__stack_chk_guard_ptr - 0x41C3CA)
41C3C6:  ADD             R0, PC; __stack_chk_guard_ptr
41C3C8:  LDR             R0, [R0]; __stack_chk_guard
41C3CA:  LDR             R1, [R0]; char *
41C3CC:  LDR             R0, =(byte_61CD7E - 0x41C3D4)
41C3CE:  STR             R1, [SP,#0x128+var_20]
41C3D0:  ADD             R0, PC; byte_61CD7E ; this
41C3D2:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
41C3D6:  ADR             R0, aDataSurfaceDat; "data\\surface.dat"
41C3D8:  ADR             R1, aRb_10; "rb"
41C3DA:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
41C3DE:  MOV             R5, R0
41C3E0:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
41C3E4:  MOV             R6, R0
41C3E6:  CMP             R6, #0
41C3E8:  BEQ             loc_41C4AA
41C3EA:  ADR.W           R8, aS_0; "%s"
41C3EE:  ADD.W           R11, SP, #0x128+var_120
41C3F2:  MOV.W           R9, #1
41C3F6:  MOV.W           R10, #0
41C3FA:  LDRB            R0, [R6]
41C3FC:  CMP             R0, #0x3B ; ';'
41C3FE:  IT NE
41C400:  CMPNE           R0, #0
41C402:  BNE             loc_41C412
41C404:  MOV             R0, R5; this
41C406:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
41C40A:  MOV             R6, R0
41C40C:  CMP             R6, #0
41C40E:  BNE             loc_41C3FA
41C410:  B               loc_41C4AA
41C412:  MOV             R0, R6; s
41C414:  MOV             R1, R8; format
41C416:  MOV             R2, R11
41C418:  BLX             sscanf
41C41C:  B               loc_41C420
41C41E:  ADDS            R6, #1
41C420:  LDRB            R0, [R6]
41C422:  CMP             R0, #0x20 ; ' '
41C424:  IT NE
41C426:  CMPNE           R0, #9
41C428:  BNE             loc_41C41E
41C42A:  ADD.W           R0, R10, R10,LSL#1
41C42E:  MOV.W           R8, #0
41C432:  MOV.W           R11, R0,LSL#1
41C436:  B               loc_41C43A
41C438:  ADDS            R6, #1
41C43A:  LDRB            R0, [R6]
41C43C:  CMP             R0, #0x20 ; ' '
41C43E:  IT NE
41C440:  CMPNE           R0, #9
41C442:  BEQ             loc_41C438
41C444:  MOVS            R0, #0
41C446:  STR             R0, [SP,#0x128+var_124]
41C448:  LDRB            R0, [R6]
41C44A:  CMP             R0, #0x2D ; '-'
41C44C:  BNE             loc_41C452
41C44E:  MOVS            R0, #0x2D ; '-'
41C450:  B               loc_41C45E
41C452:  ADR             R1, aF; "%f"
41C454:  ADD             R2, SP, #0x128+var_124
41C456:  MOV             R0, R6; s
41C458:  BLX             sscanf
41C45C:  LDRB            R0, [R6]
41C45E:  UXTB            R0, R0
41C460:  CBZ             R0, loc_41C46A
41C462:  CMP             R0, #9
41C464:  IT NE
41C466:  CMPNE           R0, #0x20 ; ' '
41C468:  BNE             loc_41C48A
41C46A:  ADD.W           R1, R8, R11
41C46E:  LDR             R0, [SP,#0x128+var_124]
41C470:  STR.W           R0, [R4,R1,LSL#2]
41C474:  ADD.W           R1, R8, R8,LSL#1
41C478:  ADD.W           R8, R8, #1
41C47C:  ADD.W           R1, R10, R1,LSL#1; unsigned int
41C480:  CMP             R8, R9
41C482:  STR.W           R0, [R4,R1,LSL#2]
41C486:  BNE             loc_41C43A
41C488:  B               loc_41C48E
41C48A:  ADDS            R6, #1
41C48C:  B               loc_41C45C
41C48E:  MOV             R0, R5; this
41C490:  ADD.W           R10, R10, #1
41C494:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
41C498:  ADD.W           R9, R9, #1
41C49C:  ADR.W           R8, aS_0; "%s"
41C4A0:  ADD.W           R11, SP, #0x128+var_120
41C4A4:  MOV             R6, R0
41C4A6:  CMP             R6, #0
41C4A8:  BNE             loc_41C3FA
41C4AA:  MOV             R0, R5; this
41C4AC:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
41C4B0:  LDR             R0, =(__stack_chk_guard_ptr - 0x41C4B8)
41C4B2:  LDR             R1, [SP,#0x128+var_20]
41C4B4:  ADD             R0, PC; __stack_chk_guard_ptr
41C4B6:  LDR             R0, [R0]; __stack_chk_guard
41C4B8:  LDR             R0, [R0]
41C4BA:  SUBS            R0, R0, R1
41C4BC:  ITTT EQ
41C4BE:  ADDEQ           SP, SP, #0x10C
41C4C0:  POPEQ.W         {R8-R11}
41C4C4:  POPEQ           {R4-R7,PC}
41C4C6:  BLX             __stack_chk_fail
