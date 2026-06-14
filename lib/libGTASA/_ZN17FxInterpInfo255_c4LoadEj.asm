; =========================================================
; Game Engine Function: _ZN17FxInterpInfo255_c4LoadEj
; Address            : 0x46F2D4 - 0x46F4AE
; =========================================================

46F2D4:  PUSH            {R4-R7,LR}
46F2D6:  ADD             R7, SP, #0xC
46F2D8:  PUSH.W          {R8-R11}
46F2DC:  SUB             SP, SP, #4
46F2DE:  VPUSH           {D8-D9}
46F2E2:  SUB             SP, SP, #0x1A0
46F2E4:  MOV             R11, R0
46F2E6:  LDR             R0, =(__stack_chk_guard_ptr - 0x46F2EE)
46F2E8:  MOV             R4, R1
46F2EA:  ADD             R0, PC; __stack_chk_guard_ptr
46F2EC:  LDR             R0, [R0]; __stack_chk_guard
46F2EE:  LDR             R0, [R0]
46F2F0:  STR             R0, [SP,#0x1D0+var_34]
46F2F2:  LDRSB.W         R0, [R11,#6]
46F2F6:  CMP             R0, #1
46F2F8:  BLT.W           loc_46F48C
46F2FC:  LDR             R0, =(g_fxMan_ptr - 0x46F30C)
46F2FE:  ADD             R5, SP, #0x1D0+var_134
46F300:  ADR.W           R10, dword_46F4B4
46F304:  ADD.W           R9, SP, #0x1D0+var_1B4
46F308:  ADD             R0, PC; g_fxMan_ptr
46F30A:  VLDR            S16, =256.0
46F30E:  VLDR            S18, =128.0
46F312:  MOV.W           R8, #0
46F316:  LDR             R0, [R0]; g_fxMan
46F318:  STR             R4, [SP,#0x1D0+var_1C8]
46F31A:  ADDS            R0, #0xAC
46F31C:  STR             R0, [SP,#0x1D0+var_1CC]
46F31E:  LDR             R0, =(g_fxMan_ptr - 0x46F328)
46F320:  STR.W           R11, [SP,#0x1D0+var_1C0]
46F324:  ADD             R0, PC; g_fxMan_ptr
46F326:  LDR             R0, [R0]; g_fxMan
46F328:  ADDS            R0, #0xAC
46F32A:  STR             R0, [SP,#0x1D0+var_1C4]
46F32C:  MOV             R0, R4; unsigned int
46F32E:  MOV             R1, R5; char *
46F330:  MOV.W           R2, #0x100; int
46F334:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F338:  MOV             R0, R5; s
46F33A:  MOV             R1, R10; format
46F33C:  MOV             R2, R9
46F33E:  BLX             sscanf
46F342:  MOV             R0, R4; unsigned int
46F344:  MOV             R1, R5; char *
46F346:  MOV.W           R2, #0x100; int
46F34A:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F34E:  MOV             R0, R5; s
46F350:  MOV             R1, R10; format
46F352:  MOV             R2, R9
46F354:  BLX             sscanf
46F358:  MOV             R0, R4; unsigned int
46F35A:  MOV             R1, R5; char *
46F35C:  MOV.W           R2, #0x100; int
46F360:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F364:  LDR.W           R10, =(aDFFFDFFFFFFFDD+0x2A - 0x46F374); "%s %d"
46F368:  MOV             R6, R11
46F36A:  ADD.W           R11, SP, #0x1D0+var_1B8
46F36E:  MOV             R0, R5; s
46F370:  ADD             R10, PC; "%s %d"
46F372:  MOV             R2, R9
46F374:  MOV             R3, R11
46F376:  MOV             R1, R10; format
46F378:  BLX             sscanf
46F37C:  LDR             R0, [SP,#0x1D0+var_1B8]
46F37E:  MOV             R1, R5; char *
46F380:  STRB            R0, [R6,#4]
46F382:  MOV             R0, R4; unsigned int
46F384:  MOV.W           R2, #0x100; int
46F388:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F38C:  MOV             R0, R5; s
46F38E:  MOV             R1, R10; format
46F390:  MOV             R2, R9
46F392:  MOV             R3, R11
46F394:  BLX             sscanf
46F398:  LDR             R1, [SP,#0x1D0+var_1B8]
46F39A:  CMP.W           R8, #0
46F39E:  STRB            R1, [R6,#5]
46F3A0:  BNE             loc_46F3B2
46F3A2:  LSLS            R0, R1, #0x18
46F3A4:  MOVS            R2, #2; int
46F3A6:  ASRS            R1, R0, #0x17; int
46F3A8:  LDR             R0, [SP,#0x1D0+var_1CC]; this
46F3AA:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
46F3AE:  LDRB            R1, [R6,#5]
46F3B0:  STR             R0, [R6,#8]
46F3B2:  SXTB            R0, R1
46F3B4:  MOVS            R2, #2; int
46F3B6:  LSLS            R1, R0, #1; int
46F3B8:  LDR             R0, [SP,#0x1D0+var_1C4]; this
46F3BA:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
46F3BE:  LDR             R1, [R6,#0xC]
46F3C0:  MOV             R9, R8
46F3C2:  ADD             R5, SP, #0x1D0+var_1B4
46F3C4:  ADD             R4, SP, #0x1D0+var_1BC
46F3C6:  MOV             R2, R6
46F3C8:  STR.W           R0, [R1,R8,LSL#2]
46F3CC:  ADD.W           R8, SP, #0x1D0+var_134
46F3D0:  LDRSB.W         R0, [R6,#5]
46F3D4:  CMP             R0, #1
46F3D6:  LDR             R0, [SP,#0x1D0+var_1C8]; unsigned int
46F3D8:  BLT             loc_46F46E
46F3DA:  MOV.W           R11, #0
46F3DE:  MOV             R1, R8; char *
46F3E0:  MOV.W           R2, #0x100; int
46F3E4:  MOV             R6, R0
46F3E6:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F3EA:  ADR             R1, dword_46F4B4; format
46F3EC:  MOV             R0, R8; s
46F3EE:  MOV             R2, R5
46F3F0:  BLX             sscanf
46F3F4:  MOV             R0, R6; unsigned int
46F3F6:  MOV             R1, R8; char *
46F3F8:  MOV.W           R2, #0x100; int
46F3FC:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F400:  LDR.W           R10, =(aSF_0 - 0x46F40E); "%s %f"
46F404:  MOV             R0, R8; s
46F406:  MOV             R2, R5
46F408:  MOV             R3, R4
46F40A:  ADD             R10, PC; "%s %f"
46F40C:  MOV             R1, R10; format
46F40E:  BLX             sscanf
46F412:  VLDR            S0, [SP,#0x1D0+var_1BC]
46F416:  MOV.W           R2, #0x100; int
46F41A:  LDR             R0, [SP,#0x1D0+var_1C0]
46F41C:  VMUL.F32        S0, S0, S16
46F420:  LDR             R0, [R0,#8]
46F422:  VCVT.U32.F32    S0, S0
46F426:  VMOV            R1, S0
46F42A:  STRH.W          R1, [R0,R11,LSL#1]
46F42E:  MOV             R0, R6; unsigned int
46F430:  MOV             R1, R8; char *
46F432:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F436:  MOV             R0, R8; s
46F438:  MOV             R1, R10; format
46F43A:  MOV             R2, R5
46F43C:  MOV             R3, R4
46F43E:  BLX             sscanf
46F442:  VLDR            S0, [SP,#0x1D0+var_1BC]
46F446:  LDR             R0, [SP,#0x1D0+var_1C0]
46F448:  VMUL.F32        S0, S0, S18
46F44C:  LDR             R0, [R0,#0xC]
46F44E:  LDR.W           R0, [R0,R9,LSL#2]
46F452:  VCVT.S32.F32    S0, S0
46F456:  VMOV            R1, S0
46F45A:  STRH.W          R1, [R0,R11,LSL#1]
46F45E:  ADD.W           R11, R11, #1
46F462:  MOV             R0, R6
46F464:  LDR             R2, [SP,#0x1D0+var_1C0]
46F466:  LDRSB.W         R1, [R2,#5]
46F46A:  CMP             R11, R1
46F46C:  BLT             loc_46F3DE
46F46E:  LDRSB.W         R1, [R2,#6]
46F472:  ADD.W           R9, R9, #1
46F476:  ADR.W           R10, dword_46F4B4
46F47A:  MOV             R4, R0
46F47C:  CMP             R9, R1
46F47E:  MOV             R1, R9
46F480:  MOV             R9, R5
46F482:  MOV             R5, R8
46F484:  MOV             R11, R2
46F486:  MOV             R8, R1
46F488:  BLT.W           loc_46F32C
46F48C:  LDR             R0, =(__stack_chk_guard_ptr - 0x46F494)
46F48E:  LDR             R1, [SP,#0x1D0+var_34]
46F490:  ADD             R0, PC; __stack_chk_guard_ptr
46F492:  LDR             R0, [R0]; __stack_chk_guard
46F494:  LDR             R0, [R0]
46F496:  SUBS            R0, R0, R1
46F498:  ITTTT EQ
46F49A:  ADDEQ           SP, SP, #0x1A0
46F49C:  VPOPEQ          {D8-D9}
46F4A0:  ADDEQ           SP, SP, #4
46F4A2:  POPEQ.W         {R8-R11}
46F4A6:  IT EQ
46F4A8:  POPEQ           {R4-R7,PC}
46F4AA:  BLX             __stack_chk_fail
