; =========================================================
; Game Engine Function: _ZN20CEventHandlerHistory18RecordCurrentEventEP4CPedRK6CEvent
; Address            : 0x37B2F0 - 0x37B3FA
; =========================================================

37B2F0:  PUSH            {R4,R5,R7,LR}
37B2F2:  ADD             R7, SP, #8
37B2F4:  MOV             R5, R2
37B2F6:  MOV             R4, R0
37B2F8:  LDR             R0, [R5]
37B2FA:  LDR             R1, [R0,#8]
37B2FC:  MOV             R0, R5
37B2FE:  BLX             R1
37B300:  CMP             R0, #0x20 ; ' '
37B302:  IT EQ
37B304:  POPEQ           {R4,R5,R7,PC}
37B306:  LDR             R0, [R5]
37B308:  LDR             R1, [R0,#8]
37B30A:  MOV             R0, R5
37B30C:  BLX             R1
37B30E:  SUBS            R0, #1; switch 93 cases
37B310:  CMP             R0, #0x5C ; '\'
37B312:  BHI.W           def_37B316; jumptable 0037B316 default case, cases 7-11,14-32,34-43,45,47-55,57,58,61-66,68-73,75-92
37B316:  TBB.W           [PC,R0]; switch jump
37B31A:  DCB 0x2F; jump table for switch statement
37B31B:  DCB 0x2F
37B31C:  DCB 0x2F
37B31D:  DCB 0x2F
37B31E:  DCB 0x2F
37B31F:  DCB 0x2F
37B320:  DCB 0x51
37B321:  DCB 0x51
37B322:  DCB 0x51
37B323:  DCB 0x51
37B324:  DCB 0x51
37B325:  DCB 0x2F
37B326:  DCB 0x2F
37B327:  DCB 0x51
37B328:  DCB 0x51
37B329:  DCB 0x51
37B32A:  DCB 0x51
37B32B:  DCB 0x51
37B32C:  DCB 0x51
37B32D:  DCB 0x51
37B32E:  DCB 0x51
37B32F:  DCB 0x51
37B330:  DCB 0x51
37B331:  DCB 0x51
37B332:  DCB 0x51
37B333:  DCB 0x51
37B334:  DCB 0x51
37B335:  DCB 0x51
37B336:  DCB 0x51
37B337:  DCB 0x51
37B338:  DCB 0x51
37B339:  DCB 0x51
37B33A:  DCB 0x2F
37B33B:  DCB 0x51
37B33C:  DCB 0x51
37B33D:  DCB 0x51
37B33E:  DCB 0x51
37B33F:  DCB 0x51
37B340:  DCB 0x51
37B341:  DCB 0x51
37B342:  DCB 0x51
37B343:  DCB 0x51
37B344:  DCB 0x51
37B345:  DCB 0x2F
37B346:  DCB 0x51
37B347:  DCB 0x2F
37B348:  DCB 0x51
37B349:  DCB 0x51
37B34A:  DCB 0x51
37B34B:  DCB 0x51
37B34C:  DCB 0x51
37B34D:  DCB 0x51
37B34E:  DCB 0x51
37B34F:  DCB 0x51
37B350:  DCB 0x51
37B351:  DCB 0x2F
37B352:  DCB 0x51
37B353:  DCB 0x51
37B354:  DCB 0x2F
37B355:  DCB 0x2F
37B356:  DCB 0x51
37B357:  DCB 0x51
37B358:  DCB 0x51
37B359:  DCB 0x51
37B35A:  DCB 0x51
37B35B:  DCB 0x51
37B35C:  DCB 0x2F
37B35D:  DCB 0x51
37B35E:  DCB 0x51
37B35F:  DCB 0x51
37B360:  DCB 0x51
37B361:  DCB 0x51
37B362:  DCB 0x51
37B363:  DCB 0x2F
37B364:  DCB 0x51
37B365:  DCB 0x51
37B366:  DCB 0x51
37B367:  DCB 0x51
37B368:  DCB 0x51
37B369:  DCB 0x51
37B36A:  DCB 0x51
37B36B:  DCB 0x51
37B36C:  DCB 0x51
37B36D:  DCB 0x51
37B36E:  DCB 0x51
37B36F:  DCB 0x51
37B370:  DCB 0x51
37B371:  DCB 0x51
37B372:  DCB 0x51
37B373:  DCB 0x51
37B374:  DCB 0x51
37B375:  DCB 0x51
37B376:  DCB 0x2F
37B377:  ALIGN 2
37B378:  LDR             R1, [R4,#4]; jumptable 0037B316 cases 1-6,12,13,33,44,46,56,59,60,67,74,93
37B37A:  CBZ             R1, loc_37B3A2
37B37C:  LDR             R0, [R4,#0xC]
37B37E:  CBZ             R0, loc_37B388
37B380:  LDR             R1, [R0]
37B382:  LDR             R1, [R1,#4]
37B384:  BLX             R1
37B386:  LDR             R1, [R4,#4]
37B388:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x37B392)
37B38A:  STR             R1, [R4,#0xC]
37B38C:  MOVS            R1, #1
37B38E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
37B390:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
37B392:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
37B394:  STRB            R1, [R4,#0x18]
37B396:  MOV.W           R1, #0x7D0
37B39A:  STRD.W          R0, R1, [R4,#0x10]
37B39E:  MOVS            R0, #0
37B3A0:  STR             R0, [R4,#4]
37B3A2:  LDR.W           R0, [R4,#8]!
37B3A6:  CMP             R0, #0
37B3A8:  ITTT NE
37B3AA:  LDRNE           R1, [R0]
37B3AC:  LDRNE           R1, [R1,#4]
37B3AE:  BLXNE           R1
37B3B0:  LDR             R0, [R5]
37B3B2:  LDR             R1, [R0,#0x14]
37B3B4:  MOV             R0, R5
37B3B6:  BLX             R1
37B3B8:  STR             R0, [R4]
37B3BA:  POP             {R4,R5,R7,PC}
37B3BC:  LDR             R0, [R4,#4]; jumptable 0037B316 default case, cases 7-11,14-32,34-43,45,47-55,57,58,61-66,68-73,75-92
37B3BE:  CMP             R0, #0
37B3C0:  ITTT NE
37B3C2:  LDRNE           R1, [R0]
37B3C4:  LDRNE           R1, [R1,#4]
37B3C6:  BLXNE           R1
37B3C8:  LDR             R0, [R5]
37B3CA:  LDR             R1, [R0,#0x14]
37B3CC:  MOV             R0, R5
37B3CE:  BLX             R1
37B3D0:  MOV             R1, R0
37B3D2:  LDR             R0, [R4,#0xC]
37B3D4:  STR             R1, [R4,#4]
37B3D6:  CMP             R0, #0
37B3D8:  ITTT NE
37B3DA:  LDRNE           R1, [R0]
37B3DC:  LDRNE           R1, [R1,#4]
37B3DE:  BLXNE           R1
37B3E0:  LDR.W           R1, [R4,#8]!
37B3E4:  MOVS            R0, #0
37B3E6:  CMP             R1, #0
37B3E8:  STR             R0, [R4,#4]
37B3EA:  BEQ             loc_37B3B8
37B3EC:  LDR             R0, [R1]
37B3EE:  LDR             R2, [R0,#4]
37B3F0:  MOV             R0, R1
37B3F2:  BLX             R2
37B3F4:  MOVS            R0, #0
37B3F6:  STR             R0, [R4]
37B3F8:  POP             {R4,R5,R7,PC}
