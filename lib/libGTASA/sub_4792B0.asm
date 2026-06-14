; =========================================================
; Game Engine Function: sub_4792B0
; Address            : 0x4792B0 - 0x479490
; =========================================================

4792B0:  PUSH            {R4-R7,LR}
4792B2:  ADD             R7, SP, #0xC
4792B4:  PUSH.W          {R8-R11}
4792B8:  SUB             SP, SP, #4
4792BA:  MOV             R8, R1
4792BC:  MOV             R9, R0
4792BE:  ADD.W           R0, R9, R8,LSL#2
4792C2:  LDR.W           R11, [R0,#0x48]
4792C6:  CMP.W           R11, #0
4792CA:  BNE             loc_4792E6
4792CC:  LDR.W           R0, [R9]
4792D0:  MOVS            R1, #0x34 ; '4'
4792D2:  STR             R1, [R0,#0x14]
4792D4:  LDR.W           R0, [R9]
4792D8:  STR.W           R8, [R0,#0x18]
4792DC:  LDR.W           R0, [R9]
4792E0:  LDR             R1, [R0]
4792E2:  MOV             R0, R9
4792E4:  BLX             R1
4792E6:  MOVS            R5, #0
4792E8:  MOVS            R0, #0
4792EA:  LDRH.W          R1, [R11,R0,LSL#1]
4792EE:  ADDS            R0, #1
4792F0:  CMP             R1, #0xFF
4792F2:  IT HI
4792F4:  MOVHI           R5, #1
4792F6:  CMP             R0, #0x40 ; '@'
4792F8:  BNE             loc_4792EA
4792FA:  LDRB.W          R0, [R11,#0x80]
4792FE:  CMP             R0, #0
479300:  BNE.W           loc_479486
479304:  LDR.W           R0, [R9,#0x18]
479308:  LDR             R1, [R0]
47930A:  ADDS            R2, R1, #1
47930C:  STR             R2, [R0]
47930E:  MOVS            R2, #0xFF
479310:  STRB            R2, [R1]
479312:  LDR             R1, [R0,#4]
479314:  SUBS            R1, #1
479316:  STR             R1, [R0,#4]
479318:  BNE             loc_479334
47931A:  LDR             R1, [R0,#0xC]
47931C:  MOV             R0, R9
47931E:  BLX             R1
479320:  CBNZ            R0, loc_479334
479322:  LDR.W           R0, [R9]
479326:  MOVS            R1, #0x18
479328:  STR             R1, [R0,#0x14]
47932A:  LDR.W           R0, [R9]
47932E:  LDR             R1, [R0]
479330:  MOV             R0, R9
479332:  BLX             R1
479334:  LDR.W           R0, [R9,#0x18]
479338:  LDR             R1, [R0]
47933A:  ADDS            R2, R1, #1
47933C:  STR             R2, [R0]
47933E:  MOVS            R2, #0xDB
479340:  STRB            R2, [R1]
479342:  LDR             R1, [R0,#4]
479344:  SUBS            R1, #1
479346:  STR             R1, [R0,#4]
479348:  BNE             loc_479364
47934A:  LDR             R1, [R0,#0xC]
47934C:  MOV             R0, R9
47934E:  BLX             R1
479350:  CBNZ            R0, loc_479364
479352:  LDR.W           R0, [R9]
479356:  MOVS            R1, #0x18
479358:  STR             R1, [R0,#0x14]
47935A:  LDR.W           R0, [R9]
47935E:  LDR             R1, [R0]
479360:  MOV             R0, R9
479362:  BLX             R1
479364:  LDR.W           R0, [R9,#0x18]
479368:  LDR             R1, [R0]
47936A:  ADDS            R2, R1, #1
47936C:  STR             R2, [R0]
47936E:  MOVS            R2, #0
479370:  STRB            R2, [R1]
479372:  LDR             R1, [R0,#4]
479374:  SUBS            R1, #1
479376:  STR             R1, [R0,#4]
479378:  BNE             loc_479394
47937A:  LDR             R1, [R0,#0xC]
47937C:  MOV             R0, R9
47937E:  BLX             R1
479380:  CBNZ            R0, loc_479394
479382:  LDR.W           R0, [R9]
479386:  MOVS            R1, #0x18
479388:  STR             R1, [R0,#0x14]
47938A:  LDR.W           R0, [R9]
47938E:  LDR             R1, [R0]
479390:  MOV             R0, R9
479392:  BLX             R1
479394:  LDR.W           R0, [R9,#0x18]
479398:  CMP             R5, #0
47939A:  LDR             R1, [R0]
47939C:  ADD.W           R2, R1, #1
4793A0:  STR             R2, [R0]
4793A2:  MOV.W           R2, #0x43 ; 'C'
4793A6:  IT NE
4793A8:  MOVNE           R2, #0xFFFFFF83
4793AC:  STRB            R2, [R1]
4793AE:  LDR             R1, [R0,#4]
4793B0:  SUBS            R1, #1
4793B2:  STR             R1, [R0,#4]
4793B4:  BNE             loc_4793D0
4793B6:  LDR             R1, [R0,#0xC]
4793B8:  MOV             R0, R9
4793BA:  BLX             R1
4793BC:  CBNZ            R0, loc_4793D0
4793BE:  LDR.W           R0, [R9]
4793C2:  MOVS            R1, #0x18
4793C4:  STR             R1, [R0,#0x14]
4793C6:  LDR.W           R0, [R9]
4793CA:  LDR             R1, [R0]
4793CC:  MOV             R0, R9
4793CE:  BLX             R1
4793D0:  LDR.W           R0, [R9,#0x18]
4793D4:  LDR             R1, [R0]
4793D6:  ADDS            R2, R1, #1
4793D8:  STR             R2, [R0]
4793DA:  ADD.W           R2, R8, R5,LSL#4
4793DE:  STRB            R2, [R1]
4793E0:  LDR             R1, [R0,#4]
4793E2:  SUBS            R1, #1
4793E4:  STR             R1, [R0,#4]
4793E6:  BNE             loc_479402
4793E8:  LDR             R1, [R0,#0xC]
4793EA:  MOV             R0, R9
4793EC:  BLX             R1
4793EE:  CBNZ            R0, loc_479402
4793F0:  LDR.W           R0, [R9]
4793F4:  MOVS            R1, #0x18
4793F6:  STR             R1, [R0,#0x14]
4793F8:  LDR.W           R0, [R9]
4793FC:  LDR             R1, [R0]
4793FE:  MOV             R0, R9
479400:  BLX             R1
479402:  LDR             R0, =(jpeg_natural_order_ptr - 0x47940E)
479404:  MOVS            R4, #0
479406:  MOV.W           R10, #0x18
47940A:  ADD             R0, PC; jpeg_natural_order_ptr
47940C:  LDR.W           R8, [R0]; jpeg_natural_order
479410:  LDR.W           R0, [R8,R4,LSL#2]
479414:  CMP             R5, #0
479416:  LDRH.W          R6, [R11,R0,LSL#1]
47941A:  BEQ             loc_47944C
47941C:  LDR.W           R0, [R9,#0x18]
479420:  LDR             R1, [R0]
479422:  ADDS            R2, R1, #1
479424:  STR             R2, [R0]
479426:  LSRS            R2, R6, #8
479428:  STRB            R2, [R1]
47942A:  LDR             R1, [R0,#4]
47942C:  SUBS            R1, #1
47942E:  STR             R1, [R0,#4]
479430:  BNE             loc_47944C
479432:  LDR             R1, [R0,#0xC]
479434:  MOV             R0, R9
479436:  BLX             R1
479438:  CBNZ            R0, loc_47944C
47943A:  LDR.W           R0, [R9]
47943E:  STR.W           R10, [R0,#0x14]
479442:  LDR.W           R0, [R9]
479446:  LDR             R1, [R0]
479448:  MOV             R0, R9
47944A:  BLX             R1
47944C:  LDR.W           R0, [R9,#0x18]
479450:  LDR             R1, [R0]
479452:  ADDS            R2, R1, #1
479454:  STR             R2, [R0]
479456:  STRB            R6, [R1]
479458:  LDR             R1, [R0,#4]
47945A:  SUBS            R1, #1
47945C:  STR             R1, [R0,#4]
47945E:  BNE             loc_47947A
479460:  LDR             R1, [R0,#0xC]
479462:  MOV             R0, R9
479464:  BLX             R1
479466:  CBNZ            R0, loc_47947A
479468:  LDR.W           R0, [R9]
47946C:  STR.W           R10, [R0,#0x14]
479470:  LDR.W           R0, [R9]
479474:  LDR             R1, [R0]
479476:  MOV             R0, R9
479478:  BLX             R1
47947A:  ADDS            R4, #1
47947C:  CMP             R4, #0x40 ; '@'
47947E:  BNE             loc_479410
479480:  MOVS            R0, #1
479482:  STRB.W          R0, [R11,#0x80]
479486:  MOV             R0, R5
479488:  ADD             SP, SP, #4
47948A:  POP.W           {R8-R11}
47948E:  POP             {R4-R7,PC}
