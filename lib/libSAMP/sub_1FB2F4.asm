; =========================================================
; Game Engine Function: sub_1FB2F4
; Address            : 0x1FB2F4 - 0x1FB4D8
; =========================================================

1FB2F4:  PUSH            {R4-R7,LR}
1FB2F6:  ADD             R7, SP, #0xC
1FB2F8:  PUSH.W          {R8-R11}
1FB2FC:  SUB             SP, SP, #0x8C
1FB2FE:  STR             R1, [SP,#0xA8+var_88]
1FB300:  MOVS            R1, #0xC
1FB302:  STR             R0, [SP,#0xA8+var_A0]
1FB304:  MOV             R4, R3
1FB306:  LDR             R0, =(__stack_chk_guard_ptr - 0x1FB30E)
1FB308:  MOV             R11, R2
1FB30A:  ADD             R0, PC; __stack_chk_guard_ptr
1FB30C:  LDR             R0, [R0]; __stack_chk_guard
1FB30E:  LDR             R0, [R0]
1FB310:  STR             R0, [SP,#0xA8+var_20]
1FB312:  LDR             R0, =(free_ptr - 0x1FB318)
1FB314:  ADD             R0, PC; free_ptr
1FB316:  LDR             R0, [R0]; __imp_free
1FB318:  STR             R0, [SP,#0xA8+var_8C]
1FB31A:  MOVS            R0, #0
1FB31C:  STR             R0, [SP,#0xA8+var_90]
1FB31E:  SUBS            R0, R3, R2
1FB320:  BLX             sub_220A40
1FB324:  MOV             R5, R0
1FB326:  CMP             R0, #0x65 ; 'e'
1FB328:  BCC             loc_1FB342
1FB32A:  MOV             R0, R5; size
1FB32C:  BLX             malloc
1FB330:  CMP             R0, #0
1FB332:  BEQ.W           loc_1FB4D4
1FB336:  MOV             R10, R0
1FB338:  ADD             R0, SP, #0xA8+var_90
1FB33A:  MOV             R1, R10
1FB33C:  BL              sub_20E6D6
1FB340:  B               loc_1FB346
1FB342:  ADD.W           R10, SP, #0xA8+var_84
1FB346:  MOVS            R0, #0
1FB348:  MOV.W           R8, #2
1FB34C:  MOV.W           R9, #1
1FB350:  MOV             R6, R11
1FB352:  STR             R0, [SP,#0xA8+var_98]
1FB354:  STR.W           R10, [SP,#0xA8+var_9C]
1FB358:  CMP             R6, R4
1FB35A:  BEQ             loc_1FB37E
1FB35C:  MOV             R0, R6
1FB35E:  BL              sub_1F2390
1FB362:  CBZ             R0, loc_1FB372
1FB364:  LDR             R0, [SP,#0xA8+var_98]
1FB366:  SUBS            R5, #1
1FB368:  STRB.W          R8, [R10]
1FB36C:  ADDS            R0, #1
1FB36E:  STR             R0, [SP,#0xA8+var_98]
1FB370:  B               loc_1FB376
1FB372:  STRB.W          R9, [R10]
1FB376:  ADD.W           R10, R10, #1
1FB37A:  ADDS            R6, #0xC
1FB37C:  B               loc_1FB358
1FB37E:  LDRD.W          R9, R8, [SP,#0xA8+var_A0]
1FB382:  MOVS            R6, #0
1FB384:  MOV             R10, R11
1FB386:  STR.W           R11, [SP,#0xA8+var_A4]
1FB38A:  ADD             R1, SP, #0xA8+var_88
1FB38C:  MOV             R0, R9
1FB38E:  BL              sub_1F531C
1FB392:  CMP             R5, #0
1FB394:  MOV             R1, R5
1FB396:  IT NE
1FB398:  MOVNE           R1, #1
1FB39A:  TST             R0, R1
1FB39C:  BEQ             loc_1FB47A
1FB39E:  MOV             R0, R9
1FB3A0:  BL              sub_1FC808
1FB3A4:  MOV             R11, R0
1FB3A6:  LDR             R0, [R7,#arg_8]
1FB3A8:  CBNZ            R0, loc_1FB3B6
1FB3AA:  LDR             R0, [R7,#arg_0]
1FB3AC:  LDR             R1, [R0]
1FB3AE:  LDR             R2, [R1,#0xC]
1FB3B0:  MOV             R1, R11
1FB3B2:  BLX             R2
1FB3B4:  MOV             R11, R0
1FB3B6:  MOV.W           R9, #0
1FB3BA:  ADDS            R0, R6, #1
1FB3BC:  STR             R0, [SP,#0xA8+var_94]
1FB3BE:  CMP             R10, R4
1FB3C0:  BEQ             loc_1FB428
1FB3C2:  LDRB.W          R0, [R8]
1FB3C6:  CMP             R0, #1
1FB3C8:  BNE             loc_1FB41E
1FB3CA:  LDRB.W          R1, [R10]
1FB3CE:  LDR.W           R0, [R10,#8]
1FB3D2:  LSLS            R1, R1, #0x1F
1FB3D4:  IT EQ
1FB3D6:  ADDEQ.W         R0, R10, #1
1FB3DA:  LDRB            R1, [R0,R6]
1FB3DC:  LDR             R0, [R7,#arg_8]
1FB3DE:  CBNZ            R0, loc_1FB3EA
1FB3E0:  LDR             R0, [R7,#arg_0]
1FB3E2:  LDR             R2, [R0]
1FB3E4:  LDR             R2, [R2,#0xC]
1FB3E6:  BLX             R2
1FB3E8:  MOV             R1, R0
1FB3EA:  CMP             R11, R1
1FB3EC:  BNE             loc_1FB416
1FB3EE:  LDRB.W          R1, [R10]
1FB3F2:  LDR.W           R0, [R10,#4]
1FB3F6:  LSLS            R2, R1, #0x1F
1FB3F8:  IT EQ
1FB3FA:  LSREQ           R0, R1, #1
1FB3FC:  LDR             R1, [SP,#0xA8+var_94]
1FB3FE:  CMP             R0, R1
1FB400:  BNE             loc_1FB410
1FB402:  MOVS            R0, #2
1FB404:  SUBS            R5, #1
1FB406:  STRB.W          R0, [R8]
1FB40A:  LDR             R0, [SP,#0xA8+var_98]
1FB40C:  ADDS            R0, #1
1FB40E:  STR             R0, [SP,#0xA8+var_98]
1FB410:  MOV.W           R9, #1
1FB414:  B               loc_1FB41E
1FB416:  SUBS            R5, #1
1FB418:  MOVS            R0, #0
1FB41A:  STRB.W          R0, [R8]
1FB41E:  ADD.W           R8, R8, #1
1FB422:  ADD.W           R10, R10, #0xC
1FB426:  B               loc_1FB3BE
1FB428:  MOVS.W          R0, R9,LSL#31
1FB42C:  LDR             R6, [SP,#0xA8+var_94]
1FB42E:  LDR.W           R8, [SP,#0xA8+var_9C]
1FB432:  LDRD.W          R10, R9, [SP,#0xA8+var_A4]
1FB436:  BEQ             loc_1FB38A
1FB438:  MOV             R0, R9
1FB43A:  BL              sub_1FC816
1FB43E:  LDR             R0, [SP,#0xA8+var_98]
1FB440:  LDR             R6, [SP,#0xA8+var_94]
1FB442:  ADD             R0, R5
1FB444:  CMP             R0, #2
1FB446:  BCC             loc_1FB38A
1FB448:  MOV             R0, R8
1FB44A:  MOV             R1, R10
1FB44C:  CMP             R1, R4
1FB44E:  BEQ             loc_1FB476
1FB450:  LDRB            R2, [R0]
1FB452:  CMP             R2, #2
1FB454:  BNE             loc_1FB470
1FB456:  LDRB            R3, [R1]
1FB458:  LDR             R2, [R1,#4]
1FB45A:  LSLS            R6, R3, #0x1F
1FB45C:  IT EQ
1FB45E:  LSREQ           R2, R3, #1
1FB460:  LDR             R3, [SP,#0xA8+var_94]
1FB462:  CMP             R2, R3
1FB464:  BEQ             loc_1FB470
1FB466:  MOVS            R2, #0
1FB468:  STRB            R2, [R0]
1FB46A:  LDR             R2, [SP,#0xA8+var_98]
1FB46C:  SUBS            R2, #1
1FB46E:  STR             R2, [SP,#0xA8+var_98]
1FB470:  ADDS            R0, #1
1FB472:  ADDS            R1, #0xC
1FB474:  B               loc_1FB44C
1FB476:  LDR             R6, [SP,#0xA8+var_94]
1FB478:  B               loc_1FB38A
1FB47A:  ADD             R1, SP, #0xA8+var_88
1FB47C:  MOV             R0, R9
1FB47E:  BL              sub_1FB030
1FB482:  CBZ             R0, loc_1FB4A0
1FB484:  LDR             R1, [R7,#arg_4]
1FB486:  LDR             R0, [R1]
1FB488:  ORR.W           R0, R0, #2
1FB48C:  STR             R0, [R1]
1FB48E:  B               loc_1FB4A0
1FB490:  LDRB.W          R0, [R8]
1FB494:  CMP             R0, #2
1FB496:  BEQ             loc_1FB4B0
1FB498:  ADD.W           R8, R8, #1
1FB49C:  ADD.W           R10, R10, #0xC
1FB4A0:  CMP             R10, R4
1FB4A2:  BNE             loc_1FB490
1FB4A4:  LDR             R1, [R7,#arg_4]
1FB4A6:  LDR             R0, [R1]
1FB4A8:  ORR.W           R0, R0, #4
1FB4AC:  STR             R0, [R1]
1FB4AE:  B               loc_1FB4B2
1FB4B0:  MOV             R4, R10
1FB4B2:  ADD             R0, SP, #0xA8+var_90
1FB4B4:  BL              sub_20E6EC
1FB4B8:  LDR             R0, [SP,#0xA8+var_20]
1FB4BA:  LDR             R1, =(__stack_chk_guard_ptr - 0x1FB4C0)
1FB4BC:  ADD             R1, PC; __stack_chk_guard_ptr
1FB4BE:  LDR             R1, [R1]; __stack_chk_guard
1FB4C0:  LDR             R1, [R1]
1FB4C2:  CMP             R1, R0
1FB4C4:  ITTTT EQ
1FB4C6:  MOVEQ           R0, R4
1FB4C8:  ADDEQ           SP, SP, #0x8C
1FB4CA:  POPEQ.W         {R8-R11}
1FB4CE:  POPEQ           {R4-R7,PC}
1FB4D0:  BLX             __stack_chk_fail
1FB4D4:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
