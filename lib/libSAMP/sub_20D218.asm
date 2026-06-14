; =========================================================
; Game Engine Function: sub_20D218
; Address            : 0x20D218 - 0x20D43A
; =========================================================

20D218:  PUSH            {R4-R7,LR}
20D21A:  ADD             R7, SP, #0xC
20D21C:  PUSH.W          {R7-R11}
20D220:  MOV             R8, R1
20D222:  MOV             R10, R0
20D224:  CBZ             R2, loc_20D240
20D226:  LDRB.W          R1, [R8]
20D22A:  LDR.W           R0, [R8,#4]
20D22E:  LSLS            R2, R1, #0x1F
20D230:  IT EQ
20D232:  LSREQ           R0, R1, #1
20D234:  SUBS            R0, #4
20D236:  CLZ.W           R0, R0
20D23A:  MOV.W           R9, R0,LSR#5
20D23E:  B               loc_20D244
20D240:  MOV.W           R9, #0
20D244:  LDRD.W          R5, R4, [R7,#arg_0]
20D248:  CMP             R3, #1
20D24A:  BEQ             loc_20D290
20D24C:  CMP             R3, #0
20D24E:  BNE.W           def_20D282; jumptable 0020D282 default case
20D252:  CMP.W           R9, #0
20D256:  BEQ             loc_20D27C
20D258:  LDRB.W          R0, [R8]
20D25C:  LDR.W           R6, [R8,#8]
20D260:  LSLS            R0, R0, #0x1F
20D262:  IT EQ
20D264:  ADDEQ.W         R6, R8, #1
20D268:  MOV             R0, R8
20D26A:  ADD.W           R11, R6, #3
20D26E:  BL              sub_1FE530
20D272:  MOV             R2, R0
20D274:  MOV             R0, R6
20D276:  MOV             R1, R11
20D278:  BL              sub_20E744
20D27C:  CMP             R4, #4; switch 5 cases
20D27E:  BHI.W           def_20D282; jumptable 0020D282 default case
20D282:  TBB.W           [PC,R4]; switch jump
20D286:  DCB 3; jump table for switch statement
20D287:  DCB 0x27
20D288:  DCB 0x35
20D289:  DCB 0x41
20D28A:  DCB 0x1A
20D28B:  ALIGN 2
20D28C:  LDR             R0, =0x2000403; jumptable 0020D282 case 0
20D28E:  B               loc_20D326
20D290:  CMP             R4, #4; switch 5 cases
20D292:  BHI             def_20D282; jumptable 0020D282 default case
20D294:  TBB.W           [PC,R4]; switch jump
20D298:  DCB 0x46; jump table for switch statement
20D299:  DCB 3
20D29A:  DCB 0x4F
20D29B:  DCB 3
20D29C:  DCB 0x5D
20D29D:  ALIGN 2
20D29E:  MOVS            R0, #4; jumptable 0020D294 cases 1,3
20D2A0:  STRB.W          R0, [R10,#3]
20D2A4:  MOVS            R0, #3
20D2A6:  CMP             R5, #2
20D2A8:  STRB.W          R0, [R10]
20D2AC:  BEQ             loc_20D37C
20D2AE:  CMP             R5, #1
20D2B0:  BEQ             loc_20D378
20D2B2:  CMP             R5, #0
20D2B4:  BNE             def_20D282; jumptable 0020D282 default case
20D2B6:  MOVS            R0, #2
20D2B8:  B               loc_20D39E
20D2BA:  MOVS            R0, #3; jumptable 0020D282 case 4
20D2BC:  STRB.W          R0, [R10,#3]
20D2C0:  MOVS            R0, #4
20D2C2:  CMP             R5, #2
20D2C4:  STRB.W          R0, [R10]
20D2C8:  BEQ             loc_20D382
20D2CA:  CMP             R5, #1
20D2CC:  BNE             loc_20D304
20D2CE:  MOV.W           R0, #0x200
20D2D2:  B               loc_20D3BC
20D2D4:  MOVS            R0, #2; jumptable 0020D282 case 1
20D2D6:  STRB.W          R0, [R10,#3]
20D2DA:  MOVS            R0, #3
20D2DC:  CMP             R5, #2
20D2DE:  STRB.W          R0, [R10]
20D2E2:  BEQ             loc_20D3B0
20D2E4:  CMP             R5, #1
20D2E6:  BEQ             loc_20D3B6
20D2E8:  CMP             R5, #0
20D2EA:  BNE             def_20D282; jumptable 0020D282 default case
20D2EC:  MOVS            R0, #4
20D2EE:  B               loc_20D39E
20D2F0:  MOVS            R0, #3; jumptable 0020D282 case 2
20D2F2:  STRB.W          R0, [R10,#3]
20D2F6:  MOVS            R0, #4
20D2F8:  CMP             R5, #2
20D2FA:  STRB.W          R0, [R10]
20D2FE:  BEQ             loc_20D382
20D300:  CMP             R5, #1
20D302:  BEQ             loc_20D388
20D304:  CBNZ            R5, def_20D282; jumptable 0020D282 default case
20D306:  B               loc_20D39A
20D308:  MOVS            R0, #2; jumptable 0020D282 case 3
20D30A:  STRB.W          R0, [R10,#3]
20D30E:  MOVS            R0, #4
20D310:  CMP             R5, #2
20D312:  STRB.W          R0, [R10]
20D316:  BEQ             loc_20D3BA
20D318:  CMP             R5, #1
20D31A:  BEQ             loc_20D3D4
20D31C:  CBNZ            R5, def_20D282; jumptable 0020D282 default case
20D31E:  MOV.W           R0, #0x300
20D322:  B               loc_20D39E
20D324:  LDR             R0, =0x4000203; jumptable 0020D294 case 0
20D326:  STR.W           R0, [R10]
20D32A:  CBZ             R5, loc_20D372
20D32C:  CMP             R5, #2
20D32E:  BEQ             loc_20D372
20D330:  CMP             R5, #1
20D332:  BNE             def_20D282; jumptable 0020D282 default case
20D334:  B               loc_20D3C0
20D336:  MOVS            R0, #3; jumptable 0020D294 case 2
20D338:  STRB.W          R0, [R10,#3]
20D33C:  MOVS            R0, #2
20D33E:  CMP             R5, #2
20D340:  STRB.W          R0, [R10]
20D344:  BEQ             loc_20D400
20D346:  CMP             R5, #1
20D348:  BEQ             loc_20D41C
20D34A:  CBNZ            R5, def_20D282; jumptable 0020D282 default case
20D34C:  MOV.W           R0, #0x400
20D350:  B               loc_20D39E
20D352:  MOVS            R0, #4; jumptable 0020D294 case 4
20D354:  STRB.W          R0, [R10,#3]
20D358:  MOVS            R0, #2
20D35A:  CMP             R5, #2
20D35C:  STRB.W          R0, [R10]
20D360:  BEQ             loc_20D3A4
20D362:  CMP             R5, #1
20D364:  BEQ             loc_20D3AA
20D366:  CBNZ            R5, def_20D282; jumptable 0020D282 default case
20D368:  MOVS            R0, #3
20D36A:  B               loc_20D39E
20D36C:  LDR             R0, =0x4000302; jumptable 0020D282 default case
20D36E:  STR.W           R0, [R10]
20D372:  POP.W           {R3,R8-R11}
20D376:  POP             {R4-R7,PC}
20D378:  MOVS            R0, #2
20D37A:  B               loc_20D420
20D37C:  MOVW            R0, #0x201
20D380:  B               loc_20D404
20D382:  MOV.W           R0, #0x102
20D386:  B               loc_20D3D8
20D388:  CMP.W           R9, #0
20D38C:  BNE             loc_20D39A
20D38E:  MOV             R0, R8
20D390:  MOVS            R1, #0
20D392:  MOVS            R2, #1
20D394:  MOVS            R3, #0x20 ; ' '
20D396:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjjc; std::string::insert(uint,uint,char)
20D39A:  MOV.W           R0, #0x200
20D39E:  STRH.W          R0, [R10,#1]
20D3A2:  B               loc_20D372
20D3A4:  MOV.W           R0, #0x300
20D3A8:  B               loc_20D420
20D3AA:  MOVW            R0, #0x103
20D3AE:  B               loc_20D404
20D3B0:  MOVW            R0, #0x401
20D3B4:  B               loc_20D3D8
20D3B6:  MOVS            R0, #4
20D3B8:  B               loc_20D3BC
20D3BA:  MOVS            R0, #3
20D3BC:  STRH.W          R0, [R10,#1]
20D3C0:  CMP.W           R9, #0
20D3C4:  BNE             loc_20D372
20D3C6:  MOV             R0, R8
20D3C8:  MOVS            R1, #0
20D3CA:  MOVS            R2, #1
20D3CC:  MOVS            R3, #0x20 ; ' '
20D3CE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjjc; std::string::insert(uint,uint,char)
20D3D2:  B               loc_20D372
20D3D4:  MOVW            R0, #0x301
20D3D8:  CMP.W           R9, #0
20D3DC:  STRH.W          R0, [R10,#1]
20D3E0:  BEQ             loc_20D372
20D3E2:  LDRB.W          R0, [R8]
20D3E6:  LDR.W           R1, [R8,#8]
20D3EA:  LSLS            R0, R0, #0x1F
20D3EC:  IT EQ
20D3EE:  ADDEQ.W         R1, R8, #1
20D3F2:  MOV             R0, R8
20D3F4:  POP.W           {R3,R8-R11}
20D3F8:  POP.W           {R4-R7,LR}
20D3FC:  B.W             sub_20E762
20D400:  MOV.W           R0, #0x104
20D404:  CMP.W           R9, #0
20D408:  STRH.W          R0, [R10,#1]
20D40C:  BEQ             loc_20D372
20D40E:  MOV             R0, R8
20D410:  POP.W           {R3,R8-R11}
20D414:  POP.W           {R4-R7,LR}
20D418:  B.W             sub_20E77E
20D41C:  MOV.W           R0, #0x400
20D420:  CMP.W           R9, #0
20D424:  STRH.W          R0, [R10,#1]
20D428:  BNE             loc_20D372
20D42A:  MOV             R0, R8
20D42C:  MOVS            R1, #0x20 ; ' '
20D42E:  POP.W           {R3,R8-R11}
20D432:  POP.W           {R4-R7,LR}
20D436:  B.W             sub_22482C
