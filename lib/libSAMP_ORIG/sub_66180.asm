; =========================================================
; Game Engine Function: sub_66180
; Address            : 0x66180 - 0x66B76
; =========================================================

66180:  PUSH            {R4-R7,LR}
66182:  ADD             R7, SP, #0xC
66184:  PUSH.W          {R8-R11}
66188:  SUB             SP, SP, #4
6618A:  VPUSH           {D8-D9}
6618E:  SUB             SP, SP, #0x30
66190:  LDR             R0, =(byte_1A4068 - 0x6619A)
66192:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x6619C)
66196:  ADD             R0, PC; byte_1A4068
66198:  ADD             R1, PC; __stack_chk_guard_ptr
6619A:  LDR             R1, [R1]; __stack_chk_guard
6619C:  LDR             R1, [R1]
6619E:  STR             R1, [SP,#0x60+var_34]
661A0:  LDRB            R0, [R0]
661A2:  DMB.W           ISH
661A6:  LSLS            R0, R0, #0x1F
661A8:  BEQ.W           loc_66B30
661AC:  B               loc_661B4
661AE:  ALIGN 0x10
661B0:  DCD byte_1A4068 - 0x6619A
661B4:  LDR             R4, =(unk_1A4050 - 0x661BA)
661B6:  ADD             R4, PC; unk_1A4050
661B8:  MOV             R0, R4
661BA:  BL              sub_61DFE
661BE:  LDR             R1, =(aSampOrig - 0x661C8); "SAMP_ORIG" ...
661C0:  MOVS            R0, #4; prio
661C2:  MOV             R2, R4; fmt
661C4:  ADD             R1, PC; "SAMP_ORIG"
661C6:  BLX             __android_log_print
661CA:  LDR             R0, =(off_114AB0 - 0x661D8)
661CC:  ADD.W           R10, SP, #0x60+var_48
661D0:  VMOV.I32        Q4, #0
661D4:  ADD             R0, PC; off_114AB0
661D6:  MOV             R1, R10
661D8:  LDR.W           R11, [R0]; dword_1A4408
661DC:  VST1.64         {D8-D9}, [R10]
661E0:  LDR.W           R0, [R11]
661E4:  ADD.W           R0, R0, #0xE2000
661E8:  ADD.W           R6, R0, #0x1FE0
661EC:  MOV             R0, R6
661EE:  BLX             dladdr
661F2:  LDR             R4, =(aUnknownSymbol - 0x661FA); "unknown symbol" ...
661F4:  LDR             R5, =(aUnknownFile - 0x661FE); "unknown file" ...
661F6:  ADD             R4, PC; "unknown symbol"
661F8:  STR             R4, [SP,#0x60+var_4C]
661FA:  ADD             R5, PC; "unknown file"
661FC:  CBZ             R0, loc_66248
661FE:  B               loc_66214
66200:  DCD unk_1A4050 - 0x661BA
66204:  DCD aSampOrig - 0x661C8
66208:  DCD off_114AB0 - 0x661D8
6620C:  DCD aUnknownSymbol - 0x661FA
66210:  DCD aUnknownFile - 0x661FE
66214:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66218:  LDRD.W          R3, R4, [SP,#0x60+var_40]
6621C:  LDR             R1, =(aMemory - 0x6622A); "Memory" ...
6621E:  CMP             R0, #0
66220:  LDR             R2, =(aHookingS0xXFro - 0x66230); "Hooking %s (0x%X) from %s (0x%X)" ...
66222:  IT EQ
66224:  MOVEQ           R0, R5
66226:  ADD             R1, PC; "Memory"
66228:  STRD.W          R0, R12, [SP,#0x60+var_5C]
6622C:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
6622E:  MOVS            R0, #4; prio
66230:  STR             R4, [SP,#0x60+var_60]
66232:  CMP             R3, #0
66234:  LDR             R4, [SP,#0x60+var_4C]
66236:  IT EQ
66238:  MOVEQ           R3, R4
6623A:  BLX             __android_log_print
6623E:  B               loc_66248
66240:  DCD aMemory - 0x6622A
66244:  DCD aHookingS0xXFro - 0x66230
66248:  STR             R5, [SP,#0x60+var_50]
6624A:  ADDS            R0, R6, #1
6624C:  LDR             R1, =(sub_61E60+1 - 0x66254)
6624E:  LDR             R2, =(off_1A39F0 - 0x66256)
66250:  ADD             R1, PC; sub_61E60
66252:  ADD             R2, PC; off_1A39F0
66254:  BLX             DobbyHook
66258:  LDR.W           R0, [R11]
6625C:  MOV             R8, #0xF0B60
66264:  MOV             R1, R10
66266:  ADD.W           R6, R0, R8
6626A:  VST1.64         {D8-D9}, [R10]
6626E:  ADD.W           R0, R6, #0x60 ; '`'
66272:  BLX             dladdr
66276:  CBZ             R0, loc_662BC
66278:  B               loc_66284
6627A:  ALIGN 4
6627C:  DCD sub_61E60+1 - 0x66254
66280:  DCD off_1A39F0 - 0x66256
66284:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66288:  LDRD.W          R3, R4, [SP,#0x60+var_40]
6628C:  LDR             R1, =(aMemory - 0x6629C); "Memory" ...
6628E:  CMP             R0, #0
66290:  LDR             R2, =(aHookingS0xXFro - 0x6629E); "Hooking %s (0x%X) from %s (0x%X)" ...
66292:  LDR             R5, [SP,#0x60+var_50]
66294:  IT EQ
66296:  MOVEQ           R0, R5
66298:  ADD             R1, PC; "Memory"
6629A:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
6629C:  STRD.W          R0, R12, [SP,#0x60+var_5C]
662A0:  MOVS            R0, #4; prio
662A2:  STR             R4, [SP,#0x60+var_60]
662A4:  CMP             R3, #0
662A6:  LDR             R4, [SP,#0x60+var_4C]
662A8:  IT EQ
662AA:  MOVEQ           R3, R4
662AC:  BLX             __android_log_print
662B0:  B               loc_662BC
662B2:  ALIGN 4
662B4:  DCD aMemory - 0x6629C
662B8:  DCD aHookingS0xXFro - 0x6629E
662BC:  LDR             R1, =(sub_6209C+1 - 0x662C8)
662BE:  ADD.W           R0, R6, #0x61 ; 'a'
662C2:  LDR             R2, =(off_1A39F4 - 0x662CA)
662C4:  ADD             R1, PC; sub_6209C
662C6:  ADD             R2, PC; off_1A39F4
662C8:  BLX             DobbyHook
662CC:  LDR.W           R0, [R11]
662D0:  VMOV.I32        Q4, #0
662D4:  MOV             R1, R10
662D6:  ADD.W           R6, R0, R8
662DA:  VST1.64         {D8-D9}, [R10]
662DE:  MOV             R0, R6
662E0:  BLX             dladdr
662E4:  CBZ             R0, loc_66328
662E6:  B               loc_662F0
662E8:  DCD sub_6209C+1 - 0x662C8
662EC:  DCD off_1A39F4 - 0x662CA
662F0:  LDRD.W          R0, R12, [SP,#0x60+var_48]
662F4:  LDRD.W          R3, R4, [SP,#0x60+var_40]
662F8:  LDR             R1, =(aMemory - 0x66308); "Memory" ...
662FA:  CMP             R0, #0
662FC:  LDR             R2, =(aHookingS0xXFro - 0x6630A); "Hooking %s (0x%X) from %s (0x%X)" ...
662FE:  LDR             R5, [SP,#0x60+var_50]
66300:  IT EQ
66302:  MOVEQ           R0, R5
66304:  ADD             R1, PC; "Memory"
66306:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
66308:  STRD.W          R0, R12, [SP,#0x60+var_5C]
6630C:  MOVS            R0, #4; prio
6630E:  STR             R4, [SP,#0x60+var_60]
66310:  CMP             R3, #0
66312:  LDR             R4, [SP,#0x60+var_4C]
66314:  IT EQ
66316:  MOVEQ           R3, R4
66318:  BLX             __android_log_print
6631C:  B               loc_66328
6631E:  ALIGN 0x10
66320:  DCD aMemory - 0x66308
66324:  DCD aHookingS0xXFro - 0x6630A
66328:  LDR             R1, =(sub_621C8+1 - 0x66332)
6632A:  ADDS            R0, R6, #1
6632C:  LDR             R2, =(off_1A39FC - 0x66334)
6632E:  ADD             R1, PC; sub_621C8
66330:  ADD             R2, PC; off_1A39FC
66332:  BLX             DobbyHook
66336:  LDR.W           R0, [R11]
6633A:  MOV             R1, R10
6633C:  VST1.64         {D8-D9}, [R10]
66340:  ADD.W           R0, R0, #0xFC000
66344:  ADD.W           R6, R0, #0x1040
66348:  MOV             R0, R6
6634A:  BLX             dladdr
6634E:  CBZ             R0, loc_66394
66350:  B               loc_6635C
66352:  ALIGN 4
66354:  DCD sub_621C8+1 - 0x66332
66358:  DCD off_1A39FC - 0x66334
6635C:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66360:  LDRD.W          R3, R4, [SP,#0x60+var_40]
66364:  LDR             R1, =(aMemory - 0x66374); "Memory" ...
66366:  CMP             R0, #0
66368:  LDR             R2, =(aHookingS0xXFro - 0x66376); "Hooking %s (0x%X) from %s (0x%X)" ...
6636A:  LDR             R5, [SP,#0x60+var_50]
6636C:  IT EQ
6636E:  MOVEQ           R0, R5
66370:  ADD             R1, PC; "Memory"
66372:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
66374:  STRD.W          R0, R12, [SP,#0x60+var_5C]
66378:  MOVS            R0, #4; prio
6637A:  STR             R4, [SP,#0x60+var_60]
6637C:  CMP             R3, #0
6637E:  LDR             R4, [SP,#0x60+var_4C]
66380:  IT EQ
66382:  MOVEQ           R3, R4
66384:  BLX             __android_log_print
66388:  B               loc_66394
6638A:  ALIGN 4
6638C:  DCD aMemory - 0x66374
66390:  DCD aHookingS0xXFro - 0x66376
66394:  LDR             R1, =(sub_621E0+1 - 0x6639E)
66396:  ADDS            R0, R6, #1
66398:  LDR             R2, =(off_1A3A34 - 0x663A0)
6639A:  ADD             R1, PC; sub_621E0
6639C:  ADD             R2, PC; off_1A3A34
6639E:  BLX             DobbyHook
663A2:  LDR.W           R6, [R11]
663A6:  MOVW            R9, #:lower16:unk_12CE78
663AA:  VMOV.I32        Q4, #0
663AE:  MOVT            R9, #:upper16:unk_12CE78
663B2:  ADD.W           R0, R6, R9
663B6:  MOV             R1, R10
663B8:  ADD.W           R0, R0, #0x3E0
663BC:  VST1.64         {D8-D9}, [R10]
663C0:  BLX             dladdr
663C4:  CBZ             R0, loc_66408
663C6:  B               loc_663D0
663C8:  DCD sub_621E0+1 - 0x6639E
663CC:  DCD off_1A3A34 - 0x663A0
663D0:  LDRD.W          R0, R12, [SP,#0x60+var_48]
663D4:  LDRD.W          R3, R4, [SP,#0x60+var_40]
663D8:  LDR             R1, =(aMemory - 0x663E8); "Memory" ...
663DA:  CMP             R0, #0
663DC:  LDR             R2, =(aHookingS0xXFro - 0x663EA); "Hooking %s (0x%X) from %s (0x%X)" ...
663DE:  LDR             R5, [SP,#0x60+var_50]
663E0:  IT EQ
663E2:  MOVEQ           R0, R5
663E4:  ADD             R1, PC; "Memory"
663E6:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
663E8:  STRD.W          R0, R12, [SP,#0x60+var_5C]
663EC:  MOVS            R0, #4; prio
663EE:  STR             R4, [SP,#0x60+var_60]
663F0:  CMP             R3, #0
663F2:  LDR             R4, [SP,#0x60+var_4C]
663F4:  IT EQ
663F6:  MOVEQ           R3, R4
663F8:  BLX             __android_log_print
663FC:  B               loc_66408
663FE:  ALIGN 0x10
66400:  DCD aMemory - 0x663E8
66404:  DCD aHookingS0xXFro - 0x663EA
66408:  LDR             R1, =(sub_623D4+1 - 0x66418)
6640A:  MOVW            R0, #:lower16:unk_12D259
6640E:  LDR             R2, =(unk_1A3A38 - 0x6641C)
66410:  MOVT            R0, #:upper16:unk_12D259
66414:  ADD             R1, PC; sub_623D4
66416:  ADD             R0, R6
66418:  ADD             R2, PC; unk_1A3A38
6641A:  BLX             DobbyHook
6641E:  LDR.W           R0, [R11]
66422:  MOV             R1, #0xFEA2C
6642A:  VST1.64         {D8-D9}, [R10]
6642E:  ADDS            R6, R0, R1
66430:  MOV             R1, R10
66432:  MOV             R0, R6
66434:  BLX             dladdr
66438:  CBZ             R0, loc_6647C
6643A:  B               loc_66444
6643C:  DCD sub_623D4+1 - 0x66418
66440:  DCD unk_1A3A38 - 0x6641C
66444:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66448:  LDRD.W          R3, R4, [SP,#0x60+var_40]
6644C:  LDR             R1, =(aMemory - 0x6645C); "Memory" ...
6644E:  CMP             R0, #0
66450:  LDR             R2, =(aHookingS0xXFro - 0x6645E); "Hooking %s (0x%X) from %s (0x%X)" ...
66452:  LDR             R5, [SP,#0x60+var_50]
66454:  IT EQ
66456:  MOVEQ           R0, R5
66458:  ADD             R1, PC; "Memory"
6645A:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
6645C:  STRD.W          R0, R12, [SP,#0x60+var_5C]
66460:  MOVS            R0, #4; prio
66462:  STR             R4, [SP,#0x60+var_60]
66464:  CMP             R3, #0
66466:  LDR             R4, [SP,#0x60+var_4C]
66468:  IT EQ
6646A:  MOVEQ           R3, R4
6646C:  BLX             __android_log_print
66470:  B               loc_6647C
66472:  ALIGN 4
66474:  DCD aMemory - 0x6645C
66478:  DCD aHookingS0xXFro - 0x6645E
6647C:  LDR             R1, =(sub_62758+1 - 0x66486)
6647E:  ADDS            R0, R6, #1
66480:  LDR             R2, =(dword_1A3A3C - 0x66488)
66482:  ADD             R1, PC; sub_62758
66484:  ADD             R2, PC; dword_1A3A3C
66486:  BLX             DobbyHook
6648A:  LDR.W           R0, [R11]
6648E:  MOVW            R1, #:lower16:loc_109470
66492:  VMOV.I32        Q4, #0
66496:  MOVT            R1, #:upper16:loc_109470
6649A:  ADDS            R6, R0, R1
6649C:  MOV             R1, R10
6649E:  MOV             R0, R6
664A0:  VST1.64         {D8-D9}, [R10]
664A4:  BLX             dladdr
664A8:  CBZ             R0, loc_664EC
664AA:  B               loc_664B4
664AC:  DCD sub_62758+1 - 0x66486
664B0:  DCD dword_1A3A3C - 0x66488
664B4:  LDRD.W          R0, R12, [SP,#0x60+var_48]
664B8:  LDRD.W          R3, R4, [SP,#0x60+var_40]
664BC:  LDR             R1, =(aMemory - 0x664CC); "Memory" ...
664BE:  CMP             R0, #0
664C0:  LDR             R2, =(aHookingS0xXFro - 0x664CE); "Hooking %s (0x%X) from %s (0x%X)" ...
664C2:  LDR             R5, [SP,#0x60+var_50]
664C4:  IT EQ
664C6:  MOVEQ           R0, R5
664C8:  ADD             R1, PC; "Memory"
664CA:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
664CC:  STRD.W          R0, R12, [SP,#0x60+var_5C]
664D0:  MOVS            R0, #4; prio
664D2:  STR             R4, [SP,#0x60+var_60]
664D4:  CMP             R3, #0
664D6:  LDR             R4, [SP,#0x60+var_4C]
664D8:  IT EQ
664DA:  MOVEQ           R3, R4
664DC:  BLX             __android_log_print
664E0:  B               loc_664EC
664E2:  ALIGN 4
664E4:  DCD aMemory - 0x664CC
664E8:  DCD aHookingS0xXFro - 0x664CE
664EC:  LDR             R1, =(sub_6280C+1 - 0x664F6)
664EE:  ADDS            R0, R6, #1
664F0:  LDR             R2, =(off_1A3A40 - 0x664F8)
664F2:  ADD             R1, PC; sub_6280C
664F4:  ADD             R2, PC; off_1A3A40
664F6:  BLX             DobbyHook
664FA:  LDR.W           R0, [R11]
664FE:  MOV             R1, R10
66500:  VST1.64         {D8-D9}, [R10]
66504:  ADD.W           R0, R0, #0x150000
66508:  ADD.W           R6, R0, #0x224
6650C:  MOV             R0, R6
6650E:  BLX             dladdr
66512:  CBZ             R0, loc_66558
66514:  B               loc_66520
66516:  ALIGN 4
66518:  DCD sub_6280C+1 - 0x664F6
6651C:  DCD off_1A3A40 - 0x664F8
66520:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66524:  LDRD.W          R3, R4, [SP,#0x60+var_40]
66528:  LDR             R1, =(aMemory - 0x66538); "Memory" ...
6652A:  CMP             R0, #0
6652C:  LDR             R2, =(aHookingS0xXFro - 0x6653A); "Hooking %s (0x%X) from %s (0x%X)" ...
6652E:  LDR             R5, [SP,#0x60+var_50]
66530:  IT EQ
66532:  MOVEQ           R0, R5
66534:  ADD             R1, PC; "Memory"
66536:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
66538:  STRD.W          R0, R12, [SP,#0x60+var_5C]
6653C:  MOVS            R0, #4; prio
6653E:  STR             R4, [SP,#0x60+var_60]
66540:  CMP             R3, #0
66542:  LDR             R4, [SP,#0x60+var_4C]
66544:  IT EQ
66546:  MOVEQ           R3, R4
66548:  BLX             __android_log_print
6654C:  B               loc_66558
6654E:  ALIGN 0x10
66550:  DCD aMemory - 0x66538
66554:  DCD aHookingS0xXFro - 0x6653A
66558:  LDR             R1, =(sub_628D0+1 - 0x66562)
6655A:  ADDS            R0, R6, #1
6655C:  LDR             R2, =(off_1A3A44 - 0x66564)
6655E:  ADD             R1, PC; sub_628D0
66560:  ADD             R2, PC; off_1A3A44
66562:  BLX             DobbyHook
66566:  LDR.W           R0, [R11]
6656A:  VMOV.I32        Q4, #0
6656E:  MOV             R1, R10
66570:  ADD.W           R0, R0, #0x142000
66574:  ADD.W           R6, R0, #0x3A0
66578:  VST1.64         {D8-D9}, [R10]
6657C:  MOV             R0, R6
6657E:  BLX             dladdr
66582:  CBZ             R0, loc_665C8
66584:  B               loc_66590
66586:  ALIGN 4
66588:  DCD sub_628D0+1 - 0x66562
6658C:  DCD off_1A3A44 - 0x66564
66590:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66594:  LDRD.W          R3, R4, [SP,#0x60+var_40]
66598:  LDR             R1, =(aMemory - 0x665A8); "Memory" ...
6659A:  CMP             R0, #0
6659C:  LDR             R2, =(aHookingS0xXFro - 0x665AA); "Hooking %s (0x%X) from %s (0x%X)" ...
6659E:  LDR             R5, [SP,#0x60+var_50]
665A0:  IT EQ
665A2:  MOVEQ           R0, R5
665A4:  ADD             R1, PC; "Memory"
665A6:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
665A8:  STRD.W          R0, R12, [SP,#0x60+var_5C]
665AC:  MOVS            R0, #4; prio
665AE:  STR             R4, [SP,#0x60+var_60]
665B0:  CMP             R3, #0
665B2:  LDR             R4, [SP,#0x60+var_4C]
665B4:  IT EQ
665B6:  MOVEQ           R3, R4
665B8:  BLX             __android_log_print
665BC:  B               loc_665C8
665BE:  ALIGN 0x10
665C0:  DCD aMemory - 0x665A8
665C4:  DCD aHookingS0xXFro - 0x665AA
665C8:  LDR             R1, =(sub_62C74+1 - 0x665D2)
665CA:  ADDS            R0, R6, #1
665CC:  LDR             R2, =(unk_1A3A48 - 0x665D4)
665CE:  ADD             R1, PC; sub_62C74
665D0:  ADD             R2, PC; unk_1A3A48
665D2:  BLX             DobbyHook
665D6:  LDR.W           R0, [R11]
665DA:  MOV             R8, #unk_141DFC
665E2:  MOV             R1, R10
665E4:  ADD.W           R6, R0, R8
665E8:  VST1.64         {D8-D9}, [R10]
665EC:  MOV             R0, R6
665EE:  BLX             dladdr
665F2:  CBZ             R0, loc_66638
665F4:  B               loc_66600
665F6:  ALIGN 4
665F8:  DCD sub_62C74+1 - 0x665D2
665FC:  DCD unk_1A3A48 - 0x665D4
66600:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66604:  LDRD.W          R3, R4, [SP,#0x60+var_40]
66608:  LDR             R1, =(aMemory - 0x66618); "Memory" ...
6660A:  CMP             R0, #0
6660C:  LDR             R2, =(aHookingS0xXFro - 0x6661A); "Hooking %s (0x%X) from %s (0x%X)" ...
6660E:  LDR             R5, [SP,#0x60+var_50]
66610:  IT EQ
66612:  MOVEQ           R0, R5
66614:  ADD             R1, PC; "Memory"
66616:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
66618:  STRD.W          R0, R12, [SP,#0x60+var_5C]
6661C:  MOVS            R0, #4; prio
6661E:  STR             R4, [SP,#0x60+var_60]
66620:  CMP             R3, #0
66622:  LDR             R4, [SP,#0x60+var_4C]
66624:  IT EQ
66626:  MOVEQ           R3, R4
66628:  BLX             __android_log_print
6662C:  B               loc_66638
6662E:  ALIGN 0x10
66630:  DCD aMemory - 0x66618
66634:  DCD aHookingS0xXFro - 0x6661A
66638:  LDR             R1, =(sub_63278+1 - 0x66642)
6663A:  ADDS            R0, R6, #1
6663C:  LDR             R2, =(unk_1A3A4C - 0x66644)
6663E:  ADD             R1, PC; sub_63278
66640:  ADD             R2, PC; unk_1A3A4C
66642:  BLX             DobbyHook
66646:  LDR.W           R0, [R11]
6664A:  VMOV.I32        Q4, #0
6664E:  MOV             R1, R10
66650:  ADD.W           R6, R0, R9
66654:  VST1.64         {D8-D9}, [R10]
66658:  MOV             R0, R6
6665A:  BLX             dladdr
6665E:  CBZ             R0, loc_666A4
66660:  B               loc_6666C
66662:  ALIGN 4
66664:  DCD sub_63278+1 - 0x66642
66668:  DCD unk_1A3A4C - 0x66644
6666C:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66670:  LDRD.W          R3, R4, [SP,#0x60+var_40]
66674:  LDR             R1, =(aMemory - 0x66684); "Memory" ...
66676:  CMP             R0, #0
66678:  LDR             R2, =(aHookingS0xXFro - 0x66686); "Hooking %s (0x%X) from %s (0x%X)" ...
6667A:  LDR             R5, [SP,#0x60+var_50]
6667C:  IT EQ
6667E:  MOVEQ           R0, R5
66680:  ADD             R1, PC; "Memory"
66682:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
66684:  STRD.W          R0, R12, [SP,#0x60+var_5C]
66688:  MOVS            R0, #4; prio
6668A:  STR             R4, [SP,#0x60+var_60]
6668C:  CMP             R3, #0
6668E:  LDR             R4, [SP,#0x60+var_4C]
66690:  IT EQ
66692:  MOVEQ           R3, R4
66694:  BLX             __android_log_print
66698:  B               loc_666A4
6669A:  ALIGN 4
6669C:  DCD aMemory - 0x66684
666A0:  DCD aHookingS0xXFro - 0x66686
666A4:  LDR             R1, =(sub_63478+1 - 0x666AE)
666A6:  ADDS            R0, R6, #1
666A8:  LDR             R2, =(unk_1A3A50 - 0x666B0)
666AA:  ADD             R1, PC; sub_63478
666AC:  ADD             R2, PC; unk_1A3A50
666AE:  BLX             DobbyHook
666B2:  LDR.W           R6, [R11]
666B6:  MOV             R9, #unk_12C78C
666BE:  MOV             R1, R10
666C0:  ADD.W           R0, R6, R9
666C4:  VST1.64         {D8-D9}, [R10]
666C8:  ADD.W           R0, R0, #0x254
666CC:  BLX             dladdr
666D0:  CBZ             R0, loc_66714
666D2:  B               loc_666DC
666D4:  DCD sub_63478+1 - 0x666AE
666D8:  DCD unk_1A3A50 - 0x666B0
666DC:  LDRD.W          R0, R12, [SP,#0x60+var_48]
666E0:  LDRD.W          R3, R4, [SP,#0x60+var_40]
666E4:  LDR             R1, =(aMemory - 0x666F4); "Memory" ...
666E6:  CMP             R0, #0
666E8:  LDR             R2, =(aHookingS0xXFro - 0x666F6); "Hooking %s (0x%X) from %s (0x%X)" ...
666EA:  LDR             R5, [SP,#0x60+var_50]
666EC:  IT EQ
666EE:  MOVEQ           R0, R5
666F0:  ADD             R1, PC; "Memory"
666F2:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
666F4:  STRD.W          R0, R12, [SP,#0x60+var_5C]
666F8:  MOVS            R0, #4; prio
666FA:  STR             R4, [SP,#0x60+var_60]
666FC:  CMP             R3, #0
666FE:  LDR             R4, [SP,#0x60+var_4C]
66700:  IT EQ
66702:  MOVEQ           R3, R4
66704:  BLX             __android_log_print
66708:  B               loc_66714
6670A:  ALIGN 4
6670C:  DCD aMemory - 0x666F4
66710:  DCD aHookingS0xXFro - 0x666F6
66714:  LDR             R1, =(sub_634C0+1 - 0x66724)
66716:  MOVW            R0, #:lower16:unk_12C9E1
6671A:  LDR             R2, =(unk_1A3A54 - 0x66728)
6671C:  MOVT            R0, #:upper16:unk_12C9E1
66720:  ADD             R1, PC; sub_634C0
66722:  ADD             R0, R6
66724:  ADD             R2, PC; unk_1A3A54
66726:  BLX             DobbyHook
6672A:  LDR.W           R0, [R11]
6672E:  VMOV.I32        Q4, #0
66732:  MOV             R1, R10
66734:  ADD.W           R6, R0, R9
66738:  VST1.64         {D8-D9}, [R10]
6673C:  MOV             R0, R6
6673E:  BLX             dladdr
66742:  CBZ             R0, loc_6677C
66744:  B               loc_66750
66746:  ALIGN 4
66748:  DCD sub_634C0+1 - 0x66724
6674C:  DCD unk_1A3A54 - 0x66728
66750:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66754:  LDRD.W          R3, R4, [SP,#0x60+var_40]
66758:  LDR             R1, =(aMemory - 0x66768); "Memory" ...
6675A:  CMP             R0, #0
6675C:  LDR             R2, =(aHookingS0xXFro - 0x6676A); "Hooking %s (0x%X) from %s (0x%X)" ...
6675E:  LDR             R5, [SP,#0x60+var_50]
66760:  IT EQ
66762:  MOVEQ           R0, R5
66764:  ADD             R1, PC; "Memory"
66766:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
66768:  STRD.W          R0, R12, [SP,#0x60+var_5C]
6676C:  MOVS            R0, #4; prio
6676E:  STR             R4, [SP,#0x60+var_60]
66770:  CMP             R3, #0
66772:  LDR             R4, [SP,#0x60+var_4C]
66774:  IT EQ
66776:  MOVEQ           R3, R4
66778:  BLX             __android_log_print
6677C:  LDR             R1, =(sub_6351C+1 - 0x66786)
6677E:  ADDS            R0, R6, #1
66780:  LDR             R2, =(unk_1A3A58 - 0x66788)
66782:  ADD             R1, PC; sub_6351C
66784:  ADD             R2, PC; unk_1A3A58
66786:  BLX             DobbyHook
6678A:  LDR.W           R0, [R11]
6678E:  MOV             R1, R10
66790:  VST1.64         {D8-D9}, [R10]
66794:  ADD.W           R0, R0, #0x140000
66798:  ADD.W           R6, R0, #0x610
6679C:  MOV             R0, R6
6679E:  BLX             dladdr
667A2:  CBZ             R0, loc_667D0
667A4:  LDRD.W          R0, R12, [SP,#0x60+var_48]
667A8:  LDRD.W          R3, R4, [SP,#0x60+var_40]
667AC:  LDR             R1, =(aMemory - 0x667BC); "Memory" ...
667AE:  CMP             R0, #0
667B0:  LDR             R2, =(aHookingS0xXFro - 0x667BE); "Hooking %s (0x%X) from %s (0x%X)" ...
667B2:  LDR             R5, [SP,#0x60+var_50]
667B4:  IT EQ
667B6:  MOVEQ           R0, R5
667B8:  ADD             R1, PC; "Memory"
667BA:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
667BC:  STRD.W          R0, R12, [SP,#0x60+var_5C]
667C0:  MOVS            R0, #4; prio
667C2:  STR             R4, [SP,#0x60+var_60]
667C4:  CMP             R3, #0
667C6:  LDR             R4, [SP,#0x60+var_4C]
667C8:  IT EQ
667CA:  MOVEQ           R3, R4
667CC:  BLX             __android_log_print
667D0:  LDR             R1, =(sub_63588+1 - 0x667DA)
667D2:  ADDS            R0, R6, #1
667D4:  LDR             R2, =(off_1A3A5C - 0x667DC)
667D6:  ADD             R1, PC; sub_63588
667D8:  ADD             R2, PC; off_1A3A5C
667DA:  BLX             DobbyHook
667DE:  LDR.W           R0, [R11]
667E2:  MOVW            R1, #:lower16:unk_13E9BC
667E6:  VMOV.I32        Q4, #0
667EA:  MOVT            R1, #:upper16:unk_13E9BC
667EE:  ADDS            R6, R0, R1
667F0:  MOV             R1, R10
667F2:  MOV             R0, R6
667F4:  VST1.64         {D8-D9}, [R10]
667F8:  BLX             dladdr
667FC:  CBZ             R0, loc_6682A
667FE:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66802:  LDRD.W          R3, R4, [SP,#0x60+var_40]
66806:  LDR             R1, =(aMemory - 0x66816); "Memory" ...
66808:  CMP             R0, #0
6680A:  LDR             R2, =(aHookingS0xXFro - 0x66818); "Hooking %s (0x%X) from %s (0x%X)" ...
6680C:  LDR             R5, [SP,#0x60+var_50]
6680E:  IT EQ
66810:  MOVEQ           R0, R5
66812:  ADD             R1, PC; "Memory"
66814:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
66816:  STRD.W          R0, R12, [SP,#0x60+var_5C]
6681A:  MOVS            R0, #4; prio
6681C:  STR             R4, [SP,#0x60+var_60]
6681E:  CMP             R3, #0
66820:  LDR             R4, [SP,#0x60+var_4C]
66822:  IT EQ
66824:  MOVEQ           R3, R4
66826:  BLX             __android_log_print
6682A:  LDR             R1, =(sub_635DC+1 - 0x66834)
6682C:  ADDS            R0, R6, #1
6682E:  LDR             R2, =(off_1A3A64 - 0x66836)
66830:  ADD             R1, PC; sub_635DC
66832:  ADD             R2, PC; off_1A3A64
66834:  BLX             DobbyHook
66838:  LDR.W           R0, [R11]
6683C:  MOV             R1, #0xF57EC
66844:  VST1.64         {D8-D9}, [R10]
66848:  ADDS            R6, R0, R1
6684A:  MOV             R1, R10
6684C:  MOV             R0, R6
6684E:  BLX             dladdr
66852:  CBZ             R0, loc_66880
66854:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66858:  LDRD.W          R3, R4, [SP,#0x60+var_40]
6685C:  LDR             R1, =(aMemory - 0x6686C); "Memory" ...
6685E:  CMP             R0, #0
66860:  LDR             R2, =(aHookingS0xXFro - 0x6686E); "Hooking %s (0x%X) from %s (0x%X)" ...
66862:  LDR             R5, [SP,#0x60+var_50]
66864:  IT EQ
66866:  MOVEQ           R0, R5
66868:  ADD             R1, PC; "Memory"
6686A:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
6686C:  STRD.W          R0, R12, [SP,#0x60+var_5C]
66870:  MOVS            R0, #4; prio
66872:  STR             R4, [SP,#0x60+var_60]
66874:  CMP             R3, #0
66876:  LDR             R4, [SP,#0x60+var_4C]
66878:  IT EQ
6687A:  MOVEQ           R3, R4
6687C:  BLX             __android_log_print
66880:  LDR             R1, =(sub_63820+1 - 0x6688A)
66882:  ADDS            R0, R6, #1
66884:  LDR             R2, =(off_1A3A74 - 0x6688C)
66886:  ADD             R1, PC; sub_63820
66888:  ADD             R2, PC; off_1A3A74
6688A:  BLX             DobbyHook
6688E:  LDR.W           R0, [R11]
66892:  MOVW            R1, #:lower16:unk_143388
66896:  VMOV.I32        Q4, #0
6689A:  MOVT            R1, #:upper16:unk_143388
6689E:  ADDS            R6, R0, R1
668A0:  MOV             R1, R10
668A2:  MOV             R0, R6
668A4:  VST1.64         {D8-D9}, [R10]
668A8:  BLX             dladdr
668AC:  CBZ             R0, loc_668DA
668AE:  LDRD.W          R0, R12, [SP,#0x60+var_48]
668B2:  LDRD.W          R3, R4, [SP,#0x60+var_40]
668B6:  LDR             R1, =(aMemory - 0x668C6); "Memory" ...
668B8:  CMP             R0, #0
668BA:  LDR             R2, =(aHookingS0xXFro - 0x668C8); "Hooking %s (0x%X) from %s (0x%X)" ...
668BC:  LDR             R5, [SP,#0x60+var_50]
668BE:  IT EQ
668C0:  MOVEQ           R0, R5
668C2:  ADD             R1, PC; "Memory"
668C4:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
668C6:  STRD.W          R0, R12, [SP,#0x60+var_5C]
668CA:  MOVS            R0, #4; prio
668CC:  STR             R4, [SP,#0x60+var_60]
668CE:  CMP             R3, #0
668D0:  LDR             R4, [SP,#0x60+var_4C]
668D2:  IT EQ
668D4:  MOVEQ           R3, R4
668D6:  BLX             __android_log_print
668DA:  LDR             R1, =(sub_63914+1 - 0x668E4)
668DC:  ADDS            R0, R6, #1
668DE:  LDR             R2, =(off_1A3A78 - 0x668E6)
668E0:  ADD             R1, PC; sub_63914
668E2:  ADD             R2, PC; off_1A3A78
668E4:  BLX             DobbyHook
668E8:  LDR.W           R6, [R11]
668EC:  MOV             R1, R10
668EE:  VST1.64         {D8-D9}, [R10]
668F2:  ADD.W           R0, R8, R6
668F6:  ADD.W           R0, R0, #0x234
668FA:  BLX             dladdr
668FE:  CBZ             R0, loc_6692C
66900:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66904:  LDRD.W          R3, R4, [SP,#0x60+var_40]
66908:  LDR             R1, =(aMemory - 0x66918); "Memory" ...
6690A:  CMP             R0, #0
6690C:  LDR             R2, =(aHookingS0xXFro - 0x6691A); "Hooking %s (0x%X) from %s (0x%X)" ...
6690E:  LDR             R5, [SP,#0x60+var_50]
66910:  IT EQ
66912:  MOVEQ           R0, R5
66914:  ADD             R1, PC; "Memory"
66916:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
66918:  STRD.W          R0, R12, [SP,#0x60+var_5C]
6691C:  MOVS            R0, #4; prio
6691E:  STR             R4, [SP,#0x60+var_60]
66920:  CMP             R3, #0
66922:  LDR             R4, [SP,#0x60+var_4C]
66924:  IT EQ
66926:  MOVEQ           R3, R4
66928:  BLX             __android_log_print
6692C:  LDR             R1, =(sub_63948+1 - 0x6693A)
6692E:  ADD.W           R0, R6, #0x142000
66932:  LDR             R2, =(off_1A3A7C - 0x6693C)
66934:  ADDS            R0, #0x31 ; '1'
66936:  ADD             R1, PC; sub_63948
66938:  ADD             R2, PC; off_1A3A7C
6693A:  BLX             DobbyHook
6693E:  LDR.W           R0, [R11]
66942:  VMOV.I32        Q4, #0
66946:  MOV             R1, R10
66948:  ADD.W           R0, R0, #0xC0000
6694C:  ADD.W           R6, R0, #0x3F400
66950:  VST1.64         {D8-D9}, [R10]
66954:  MOV             R0, R6
66956:  BLX             dladdr
6695A:  CBZ             R0, loc_66988
6695C:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66960:  LDRD.W          R3, R4, [SP,#0x60+var_40]
66964:  LDR             R1, =(aMemory - 0x66974); "Memory" ...
66966:  CMP             R0, #0
66968:  LDR             R2, =(aHookingS0xXFro - 0x66976); "Hooking %s (0x%X) from %s (0x%X)" ...
6696A:  LDR             R5, [SP,#0x60+var_50]
6696C:  IT EQ
6696E:  MOVEQ           R0, R5
66970:  ADD             R1, PC; "Memory"
66972:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
66974:  STRD.W          R0, R12, [SP,#0x60+var_5C]
66978:  MOVS            R0, #4; prio
6697A:  STR             R4, [SP,#0x60+var_60]
6697C:  CMP             R3, #0
6697E:  LDR             R4, [SP,#0x60+var_4C]
66980:  IT EQ
66982:  MOVEQ           R3, R4
66984:  BLX             __android_log_print
66988:  LDR             R1, =(sub_639B0+1 - 0x66992)
6698A:  ADDS            R0, R6, #1
6698C:  LDR             R2, =(unk_1A3A80 - 0x66994)
6698E:  ADD             R1, PC; sub_639B0
66990:  ADD             R2, PC; unk_1A3A80
66992:  BLX             DobbyHook
66996:  LDR.W           R0, [R11]
6699A:  MOV             R1, R10
6699C:  VST1.64         {D8-D9}, [R10]
669A0:  ADD.W           R0, R0, #0x144000
669A4:  ADD.W           R6, R0, #0x460
669A8:  MOV             R0, R6
669AA:  BLX             dladdr
669AE:  CBZ             R0, loc_669DC
669B0:  LDRD.W          R0, R12, [SP,#0x60+var_48]
669B4:  LDRD.W          R3, R4, [SP,#0x60+var_40]
669B8:  LDR             R1, =(aMemory - 0x669C8); "Memory" ...
669BA:  CMP             R0, #0
669BC:  LDR             R2, =(aHookingS0xXFro - 0x669CA); "Hooking %s (0x%X) from %s (0x%X)" ...
669BE:  LDR             R5, [SP,#0x60+var_50]
669C0:  IT EQ
669C2:  MOVEQ           R0, R5
669C4:  ADD             R1, PC; "Memory"
669C6:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
669C8:  STRD.W          R0, R12, [SP,#0x60+var_5C]
669CC:  MOVS            R0, #4; prio
669CE:  STR             R4, [SP,#0x60+var_60]
669D0:  CMP             R3, #0
669D2:  LDR             R4, [SP,#0x60+var_4C]
669D4:  IT EQ
669D6:  MOVEQ           R3, R4
669D8:  BLX             __android_log_print
669DC:  LDR             R1, =(sub_63B30+1 - 0x669E6)
669DE:  ADDS            R0, R6, #1
669E0:  LDR             R2, =(unk_1A3A98 - 0x669E8)
669E2:  ADD             R1, PC; sub_63B30
669E4:  ADD             R2, PC; unk_1A3A98
669E6:  BLX             DobbyHook
669EA:  LDR.W           R0, [R11]
669EE:  MOVW            R1, #:lower16:unk_149074
669F2:  VMOV.I32        Q4, #0
669F6:  MOVT            R1, #:upper16:unk_149074
669FA:  ADDS            R6, R0, R1
669FC:  MOV             R1, R10
669FE:  MOV             R0, R6
66A00:  VST1.64         {D8-D9}, [R10]
66A04:  BLX             dladdr
66A08:  CBZ             R0, loc_66A36
66A0A:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66A0E:  LDRD.W          R3, R4, [SP,#0x60+var_40]
66A12:  LDR             R1, =(aMemory - 0x66A22); "Memory" ...
66A14:  CMP             R0, #0
66A16:  LDR             R2, =(aHookingS0xXFro - 0x66A24); "Hooking %s (0x%X) from %s (0x%X)" ...
66A18:  LDR             R5, [SP,#0x60+var_50]
66A1A:  IT EQ
66A1C:  MOVEQ           R0, R5
66A1E:  ADD             R1, PC; "Memory"
66A20:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
66A22:  STRD.W          R0, R12, [SP,#0x60+var_5C]
66A26:  MOVS            R0, #4; prio
66A28:  STR             R4, [SP,#0x60+var_60]
66A2A:  CMP             R3, #0
66A2C:  LDR             R4, [SP,#0x60+var_4C]
66A2E:  IT EQ
66A30:  MOVEQ           R3, R4
66A32:  BLX             __android_log_print
66A36:  LDR             R1, =(sub_65E7C+1 - 0x66A40)
66A38:  ADDS            R0, R6, #1
66A3A:  LDR             R2, =(off_1A3AA0 - 0x66A42)
66A3C:  ADD             R1, PC; sub_65E7C
66A3E:  ADD             R2, PC; off_1A3AA0
66A40:  BLX             DobbyHook
66A44:  LDR.W           R0, [R11]
66A48:  MOV             R1, #0xF9E64
66A50:  VST1.64         {D8-D9}, [R10]
66A54:  ADDS            R6, R0, R1
66A56:  MOV             R1, R10
66A58:  MOV             R0, R6
66A5A:  BLX             dladdr
66A5E:  CBZ             R0, loc_66A8C
66A60:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66A64:  LDRD.W          R3, R4, [SP,#0x60+var_40]
66A68:  LDR             R1, =(aMemory - 0x66A78); "Memory" ...
66A6A:  CMP             R0, #0
66A6C:  LDR             R2, =(aHookingS0xXFro - 0x66A7A); "Hooking %s (0x%X) from %s (0x%X)" ...
66A6E:  LDR             R5, [SP,#0x60+var_50]
66A70:  IT EQ
66A72:  MOVEQ           R0, R5
66A74:  ADD             R1, PC; "Memory"
66A76:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
66A78:  STRD.W          R0, R12, [SP,#0x60+var_5C]
66A7C:  MOVS            R0, #4; prio
66A7E:  STR             R4, [SP,#0x60+var_60]
66A80:  CMP             R3, #0
66A82:  LDR             R4, [SP,#0x60+var_4C]
66A84:  IT EQ
66A86:  MOVEQ           R3, R4
66A88:  BLX             __android_log_print
66A8C:  LDR             R1, =(sub_65EFC+1 - 0x66A96)
66A8E:  ADDS            R0, R6, #1
66A90:  LDR             R2, =(off_1A3AA4 - 0x66A98)
66A92:  ADD             R1, PC; sub_65EFC
66A94:  ADD             R2, PC; off_1A3AA4
66A96:  BLX             DobbyHook
66A9A:  LDR.W           R0, [R11]
66A9E:  VMOV.I32        Q8, #0
66AA2:  MOV             R1, R10
66AA4:  ADD.W           R0, R0, #0x14E000
66AA8:  ADD.W           R6, R0, #0x220
66AAC:  VST1.64         {D16-D17}, [R10]
66AB0:  MOV             R0, R6
66AB2:  BLX             dladdr
66AB6:  CBZ             R0, loc_66AE8
66AB8:  LDRD.W          R0, R12, [SP,#0x60+var_48]
66ABC:  MOV             R3, R4
66ABE:  LDR             R5, [SP,#0x60+var_40]
66AC0:  LDR.W           LR, [SP,#0x60+var_3C]
66AC4:  CMP             R0, #0
66AC6:  LDR             R1, =(aMemory - 0x66AD0); "Memory" ...
66AC8:  LDR             R2, =(aHookingS0xXFro - 0x66AD2); "Hooking %s (0x%X) from %s (0x%X)" ...
66ACA:  LDR             R4, [SP,#0x60+var_50]
66ACC:  ADD             R1, PC; "Memory"
66ACE:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
66AD0:  IT NE
66AD2:  MOVNE           R4, R0
66AD4:  MOVS            R0, #4; prio
66AD6:  STRD.W          LR, R4, [SP,#0x60+var_60]
66ADA:  STR.W           R12, [SP,#0x60+var_58]
66ADE:  CMP             R5, #0
66AE0:  IT NE
66AE2:  MOVNE           R3, R5
66AE4:  BLX             __android_log_print
66AE8:  LDR             R1, =(sub_65968+1 - 0x66AF2)
66AEA:  ADDS            R0, R6, #1
66AEC:  LDR             R2, =(unk_1A3A9C - 0x66AF4)
66AEE:  ADD             R1, PC; sub_65968
66AF0:  ADD             R2, PC; unk_1A3A9C
66AF2:  BLX             DobbyHook
66AF6:  BL              sub_6BE64
66AFA:  BL              sub_79388
66AFE:  LDR             R0, [SP,#0x60+var_34]
66B00:  LDR             R1, =(__stack_chk_guard_ptr - 0x66B06)
66B02:  ADD             R1, PC; __stack_chk_guard_ptr
66B04:  LDR             R1, [R1]; __stack_chk_guard
66B06:  LDR             R1, [R1]
66B08:  CMP             R1, R0
66B0A:  ITTTT EQ
66B0C:  ADDEQ           SP, SP, #0x30 ; '0'
66B0E:  VPOPEQ          {D8-D9}
66B12:  ADDEQ           SP, SP, #4
66B14:  POPEQ.W         {R8-R11}
66B18:  IT EQ
66B1A:  POPEQ           {R4-R7,PC}
66B1C:  BLX             __stack_chk_fail
66B20:  DCD aMemory - 0x66768
66B24:  DCD aHookingS0xXFro - 0x6676A
66B28:  DCD sub_6351C+1 - 0x66786
66B2C:  DCD unk_1A3A58 - 0x66788
66B30:  LDR             R0, =(byte_1A4068 - 0x66B36)
66B32:  ADD             R0, PC; byte_1A4068 ; __guard *
66B34:  BLX             j___cxa_guard_acquire
66B38:  CMP             R0, #0
66B3A:  BEQ.W           loc_661B4
66B3E:  LDR             R1, =(unk_1A4050 - 0x66B4E)
66B40:  ADR             R0, dword_66B90
66B42:  VLD1.64         {D16-D17}, [R0@128]
66B46:  MOVW            R3, #0x5A73
66B4A:  ADD             R1, PC; unk_1A4050 ; obj
66B4C:  MOVW            R6, #0x3135
66B50:  LDR             R0, =(loc_61DE8+1 - 0x66B64)
66B52:  MOVT            R6, #0x7229
66B56:  LDR             R2, =(off_110560 - 0x66B66)
66B58:  STRH            R3, [R1,#(word_1A4064 - 0x1A4050)]
66B5A:  MOV             R3, R1
66B5C:  VST1.8          {D16-D17}, [R3@128]!
66B60:  ADD             R0, PC; loc_61DE8 ; lpfunc
66B62:  ADD             R2, PC; off_110560 ; lpdso_handle
66B64:  STR             R6, [R3]
66B66:  BLX             __cxa_atexit
66B6A:  LDR             R0, =(byte_1A4068 - 0x66B70)
66B6C:  ADD             R0, PC; byte_1A4068 ; __guard *
66B6E:  BLX             j___cxa_guard_release
66B72:  B.W             loc_661B4
