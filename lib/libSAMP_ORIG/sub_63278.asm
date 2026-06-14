; =========================================================
; Game Engine Function: sub_63278
; Address            : 0x63278 - 0x6343C
; =========================================================

63278:  PUSH            {R4-R7,LR}
6327A:  ADD             R7, SP, #0xC
6327C:  PUSH.W          {R8-R11}
63280:  SUB             SP, SP, #4
63282:  MOV             R4, R0
63284:  LDR.W           R0, [R0,#0x210]
63288:  LDR             R1, [R0]
6328A:  LDR             R1, [R1,#0x24]
6328C:  BLX             R1
6328E:  CMP             R0, #0
63290:  BEQ.W           loc_63434
63294:  MOVW            R6, #:lower16:unk_1420BD
63298:  MOVW            R8, #:lower16:unk_142781
6329C:  MOVW            R9, #:lower16:unk_142BA5
632A0:  MOVW            R10, #:lower16:unk_142E8B
632A4:  MOVW            R11, #:lower16:unk_1430C9
632A8:  MOV             R5, R0
632AA:  MOVT            R6, #:upper16:unk_1420BD
632AE:  MOVT            R8, #:upper16:unk_142781
632B2:  MOVT            R9, #:upper16:unk_142BA5
632B6:  MOVT            R10, #:upper16:unk_142E8B
632BA:  MOVT            R11, #:upper16:unk_1430C9
632BE:  B               loc_632E4
632C0:  MOV             R0, R4
632C2:  MOV             R1, R5
632C4:  BLX             R2
632C6:  LDR.W           R0, [R4,#0x210]; jumptable 00063338 default case
632CA:  LDR             R1, [R0]
632CC:  LDR             R2, [R1,#0x28]
632CE:  MOV             R1, R5
632D0:  BLX             R2
632D2:  LDR.W           R0, [R4,#0x210]
632D6:  LDR             R1, [R0]
632D8:  LDR             R1, [R1,#0x24]
632DA:  BLX             R1
632DC:  MOV             R5, R0
632DE:  CMP             R0, #0
632E0:  BEQ.W           loc_63434
632E4:  LDR             R1, [R5,#0x14]
632E6:  LDRB            R0, [R1]
632E8:  CMP             R0, #0x28 ; '('
632EA:  IT EQ
632EC:  LDRBEQ          R0, [R1,#5]
632EE:  SUB.W           R1, R0, #0xC; switch 26 cases
632F2:  CMP             R1, #0x19
632F4:  BHI             def_632F6; jumptable 000632F6 default case
632F6:  TBB.W           [PC,R1]; switch jump
632FA:  DCB 0xE; jump table for switch statement
632FB:  DCB 0xD
632FC:  DCB 0xD
632FD:  DCB 0xD
632FE:  DCB 0xD
632FF:  DCB 0xD
63300:  DCB 0xD
63301:  DCB 0xD
63302:  DCB 0xD
63303:  DCB 0xD
63304:  DCB 0xD
63305:  DCB 0xD
63306:  DCB 0xD
63307:  DCB 0xD
63308:  DCB 0xD
63309:  DCB 0xD
6330A:  DCB 0xD
6330B:  DCB 0x14
6330C:  DCB 0xD
6330D:  DCB 0x36
6330E:  DCB 0x3E
6330F:  DCB 0x46
63310:  DCB 0x4E
63311:  DCB 0x53
63312:  DCB 0x5A
63313:  DCB 0x62
63314:  B               def_63338; jumptable 000632F6 cases 13-28,30
63316:  LDR             R0, =(off_114AB0 - 0x6331C); jumptable 000632F6 case 12
63318:  ADD             R0, PC; off_114AB0
6331A:  LDR             R0, [R0]; dword_1A4408
6331C:  LDR             R0, [R0]
6331E:  ADDS            R2, R0, R6
63320:  B               loc_632C0
63322:  LDR             R0, =(off_114AB0 - 0x63328); jumptable 000632F6 case 29
63324:  ADD             R0, PC; off_114AB0
63326:  LDR             R0, [R0]; dword_1A4408
63328:  LDR             R0, [R0]
6332A:  ADD             R0, R6
6332C:  ADD.W           R1, R0, #0xDC
63330:  B               loc_633CC
63332:  SUBS            R0, #0xC8; jumptable 000632F6 default case
63334:  CMP             R0, #0x16
63336:  BHI             def_63338; jumptable 00063338 default case
63338:  TBB.W           [PC,R0]; switch jump
6333C:  DCB 0xD; jump table for switch statement
6333D:  DCB 0xC
6333E:  DCB 0xC
6333F:  DCB 0x4B
63340:  DCB 0xC
63341:  DCB 0xC
63342:  DCB 0x53
63343:  DCB 0x5A
63344:  DCB 0x62
63345:  DCB 0xC
63346:  DCB 0x69
63347:  DCB 0x71
63348:  DCB 0xC
63349:  DCB 0xC
6334A:  DCB 0xC
6334B:  DCB 0xC
6334C:  DCB 0xC
6334D:  DCB 0xC
6334E:  DCB 0xC
6334F:  DCB 0xC
63350:  DCB 0xC
63351:  DCB 0xC
63352:  DCB 0x78
63353:  ALIGN 2
63354:  B               def_63338; jumptable 00063338 cases 201,202,204,205,209,212-221
63356:  LDR             R0, =(off_114AB0 - 0x6335C); jumptable 00063338 case 200
63358:  ADD             R0, PC; off_114AB0
6335A:  LDR             R0, [R0]; dword_1A4408
6335C:  LDR             R0, [R0]
6335E:  ADD             R0, R8
63360:  ADD.W           R2, R0, #0x11C
63364:  B               loc_632C0
63366:  LDR             R0, =(off_114AB0 - 0x6336C); jumptable 000632F6 case 31
63368:  ADD             R0, PC; off_114AB0
6336A:  LDR             R0, [R0]; dword_1A4408
6336C:  LDR             R0, [R0]
6336E:  ADD             R0, R6
63370:  ADD.W           R1, R0, #0x118
63374:  B               loc_633CC
63376:  LDR             R0, =(off_114AB0 - 0x6337C); jumptable 000632F6 case 32
63378:  ADD             R0, PC; off_114AB0
6337A:  LDR             R0, [R0]; dword_1A4408
6337C:  LDR             R0, [R0]
6337E:  ADD             R0, R6
63380:  ADD.W           R1, R0, #0x154
63384:  B               loc_633CC
63386:  LDR             R0, =(off_114AB0 - 0x6338C); jumptable 000632F6 case 33
63388:  ADD             R0, PC; off_114AB0
6338A:  LDR             R0, [R0]; dword_1A4408
6338C:  LDR             R0, [R0]
6338E:  ADD             R0, R6
63390:  ADD.W           R1, R0, #0x1E0
63394:  B               loc_633CC
63396:  MOV             R0, R4; jumptable 000632F6 case 34
63398:  MOV             R1, R5
6339A:  BL              sub_62C74
6339E:  B               def_63338; jumptable 00063338 default case
633A0:  LDR             R0, =(off_114AB0 - 0x633A6); jumptable 000632F6 case 35
633A2:  ADD             R0, PC; off_114AB0
633A4:  LDR             R0, [R0]; dword_1A4408
633A6:  LDR             R0, [R0]
633A8:  ADD             R0, R8
633AA:  BLX             R0
633AC:  B               def_63338; jumptable 00063338 default case
633AE:  LDR             R0, =(off_114AB0 - 0x633B4); jumptable 000632F6 case 36
633B0:  ADD             R0, PC; off_114AB0
633B2:  LDR             R0, [R0]; dword_1A4408
633B4:  LDR             R0, [R0]
633B6:  ADD             R0, R8
633B8:  ADD.W           R1, R0, #0x34 ; '4'
633BC:  B               loc_633CC
633BE:  LDR             R0, =(off_114AB0 - 0x633C4); jumptable 000632F6 case 37
633C0:  ADD             R0, PC; off_114AB0
633C2:  LDR             R0, [R0]; dword_1A4408
633C4:  LDR             R0, [R0]
633C6:  ADD             R0, R8
633C8:  ADD.W           R1, R0, #0x80
633CC:  MOV             R0, R4
633CE:  BLX             R1
633D0:  B               def_63338; jumptable 00063338 default case
633D2:  LDR             R0, =(off_114AB0 - 0x633D8); jumptable 00063338 case 203
633D4:  ADD             R0, PC; off_114AB0
633D6:  LDR             R0, [R0]; dword_1A4408
633D8:  LDR             R0, [R0]
633DA:  ADD             R0, R8
633DC:  ADD.W           R2, R0, #0x3A4
633E0:  B               loc_632C0
633E2:  LDR             R0, =(off_114AB0 - 0x633E8); jumptable 00063338 case 206
633E4:  ADD             R0, PC; off_114AB0
633E6:  LDR             R0, [R0]; dword_1A4408
633E8:  LDR             R0, [R0]
633EA:  ADD.W           R2, R0, R9
633EE:  B               loc_632C0
633F0:  LDR             R0, =(off_114AB0 - 0x633F6); jumptable 00063338 case 207
633F2:  ADD             R0, PC; off_114AB0
633F4:  LDR             R0, [R0]; dword_1A4408
633F6:  LDR             R0, [R0]
633F8:  ADD             R0, R9
633FA:  ADD.W           R2, R0, #0x8A
633FE:  B               loc_632C0
63400:  LDR             R0, =(off_114AB0 - 0x63406); jumptable 00063338 case 208
63402:  ADD             R0, PC; off_114AB0
63404:  LDR             R0, [R0]; dword_1A4408
63406:  LDR             R0, [R0]
63408:  ADD.W           R2, R0, R10
6340C:  B               loc_632C0
6340E:  LDR             R0, =(off_114AB0 - 0x63414); jumptable 00063338 case 210
63410:  ADD             R0, PC; off_114AB0
63412:  LDR             R0, [R0]; dword_1A4408
63414:  LDR             R0, [R0]
63416:  ADD             R0, R10
63418:  ADD.W           R2, R0, #0x19E
6341C:  B               loc_632C0
6341E:  LDR             R0, =(off_114AB0 - 0x63424); jumptable 00063338 case 211
63420:  ADD             R0, PC; off_114AB0
63422:  LDR             R0, [R0]; dword_1A4408
63424:  LDR             R0, [R0]
63426:  ADD.W           R2, R0, R11
6342A:  B               loc_632C0
6342C:  MOV             R0, R5; jumptable 00063338 case 222
6342E:  BL              sub_7F0CC
63432:  B               def_63338; jumptable 00063338 default case
63434:  ADD             SP, SP, #4
63436:  POP.W           {R8-R11}
6343A:  POP             {R4-R7,PC}
