; =========================================================
; Game Engine Function: sub_126248
; Address            : 0x126248 - 0x126540
; =========================================================

126248:  PUSH            {R4-R7,LR}
12624A:  ADD             R7, SP, #0xC
12624C:  PUSH.W          {R8-R11}
126250:  SUB             SP, SP, #0x4C
126252:  MOV             R10, R2
126254:  LDRD.W          R2, R12, [R7,#arg_14]
126258:  LDR             R4, =(byte_263DC8 - 0x126268)
12625A:  MOV             R9, R3
12625C:  MOV             R8, R0
12625E:  LDR             R0, [R7,#arg_1C]
126260:  LDRD.W          R6, R3, [R7,#arg_C]
126264:  ADD             R4, PC; byte_263DC8
126266:  STR             R0, [SP,#0x68+var_24]
126268:  LDR             R0, [R7,#arg_0]
12626A:  STRD.W          R3, R2, [SP,#0x68+var_30]
12626E:  ADD             R2, SP, #0x68+var_40
126270:  LDRD.W          R1, R5, [R7,#arg_4]
126274:  STR.W           R12, [SP,#0x68+var_28]
126278:  STM             R2!, {R0,R1,R5,R6}
12627A:  LDRB            R0, [R4]
12627C:  DMB.W           ISH
126280:  LSLS            R0, R0, #0x1F
126282:  LDR             R0, =(off_263DC4 - 0x126288)
126284:  ADD             R0, PC; off_263DC4
126286:  MOV             R11, R0
126288:  BEQ.W           loc_126392
12628C:  LDR             R0, =(byte_263DD0 - 0x126292)
12628E:  ADD             R0, PC; byte_263DD0
126290:  LDRB            R0, [R0]
126292:  DMB.W           ISH
126296:  LSLS            R0, R0, #0x1F
126298:  BEQ.W           loc_1263C0
12629C:  LDR             R0, =(byte_263DD8 - 0x1262A2)
12629E:  ADD             R0, PC; byte_263DD8
1262A0:  LDRB            R0, [R0]
1262A2:  DMB.W           ISH
1262A6:  LSLS            R0, R0, #0x1F
1262A8:  BEQ.W           loc_1263EE
1262AC:  LDR             R0, =(byte_263DE0 - 0x1262B2)
1262AE:  ADD             R0, PC; byte_263DE0
1262B0:  LDRB            R0, [R0]
1262B2:  DMB.W           ISH
1262B6:  LSLS            R0, R0, #0x1F
1262B8:  BEQ.W           loc_126428
1262BC:  LDR             R0, =(byte_263DE8 - 0x1262C2)
1262BE:  ADD             R0, PC; byte_263DE8
1262C0:  LDRB            R0, [R0]
1262C2:  DMB.W           ISH
1262C6:  LSLS            R0, R0, #0x1F
1262C8:  BEQ.W           loc_126462
1262CC:  LDR             R0, =(byte_263DF0 - 0x1262D2)
1262CE:  ADD             R0, PC; byte_263DF0
1262D0:  LDRB            R0, [R0]
1262D2:  DMB.W           ISH
1262D6:  LSLS            R0, R0, #0x1F
1262D8:  BEQ.W           loc_12649C
1262DC:  LDR             R0, =(byte_263DF8 - 0x1262E2)
1262DE:  ADD             R0, PC; byte_263DF8
1262E0:  LDRB            R0, [R0]
1262E2:  DMB.W           ISH
1262E6:  LDR             R6, =(dword_263DF4 - 0x1262EC)
1262E8:  ADD             R6, PC; dword_263DF4
1262EA:  LSLS            R0, R0, #0x1F
1262EC:  BEQ.W           loc_1264D4
1262F0:  LDR             R0, =(byte_263E00 - 0x1262F6)
1262F2:  ADD             R0, PC; byte_263E00
1262F4:  LDRB            R0, [R0]
1262F6:  DMB.W           ISH
1262FA:  LSLS            R0, R0, #0x1F
1262FC:  BEQ.W           loc_126508
126300:  LDR             R1, [R6]
126302:  MOVS            R0, #4
126304:  MOVS            R2, #1
126306:  STR             R0, [SP,#0x68+var_68]
126308:  CMP             R1, R10
12630A:  BEQ             loc_126318
12630C:  CMP.W           R10, #1
126310:  IT NE
126312:  CMPNE.W         R10, #6
126316:  BNE             loc_12636A
126318:  ORR.W           R0, R2, R9,LSL#8
12631C:  STR             R0, [SP,#0x68+var_64]
12631E:  ADD             R0, SP, #0x68+var_40
126320:  MOV             R8, SP
126322:  VLD2.32         {D16-D19}, [R0]
126326:  VCVT.F32.S32    Q11, Q9
12632A:  ADD.W           R0, R8, #8
12632E:  MOVS            R2, #0x6C ; 'l'; n
126330:  VCVT.F32.S32    Q10, Q8
126334:  LDR             R4, =(unk_263D28 - 0x12633A)
126336:  ADD             R4, PC; unk_263D28
126338:  ADD.W           R1, R4, #0x24 ; '$'; src
12633C:  VST2.32         {D20-D23}, [R0]
126340:  MOV             R0, R4; dest
126342:  BLX             j_memcpy
126346:  ADD.W           R0, R8, #4
12634A:  ADD.W           R1, R4, #0x6C ; 'l'
12634E:  LDM             R0!, {R2-R4,R6}
126350:  STM             R1!, {R2-R4,R6}
126352:  LDM.W           R0, {R2-R6}
126356:  MOV             R0, R8
126358:  STM             R1!, {R2-R6}
12635A:  LDR.W           R1, [R11]
12635E:  BLX             R1
126360:  MOVS            R0, #1
126362:  ADD             SP, SP, #0x4C ; 'L'
126364:  POP.W           {R8-R11}
126368:  POP             {R4-R7,PC}
12636A:  LDR             R0, =(dword_263DEC - 0x126372)
12636C:  MOVS            R2, #2
12636E:  ADD             R0, PC; dword_263DEC
126370:  LDR             R0, [R0]
126372:  CMP             R0, R10
126374:  BEQ             loc_126318
126376:  CMP.W           R10, #0
12637A:  IT NE
12637C:  CMPNE.W         R10, #5
126380:  BEQ             loc_126318
126382:  LDR             R0, =(dword_263DFC - 0x12638A)
126384:  MOVS            R2, #3
126386:  ADD             R0, PC; dword_263DFC
126388:  LDR             R0, [R0]
12638A:  CMP             R0, R10
12638C:  IT EQ
12638E:  MOVEQ           R2, #4
126390:  B               loc_126318
126392:  LDR             R0, =(byte_263DC8 - 0x126398)
126394:  ADD             R0, PC; byte_263DC8 ; __guard *
126396:  BLX             j___cxa_guard_acquire
12639A:  CMP             R0, #0
12639C:  BEQ.W           loc_12628C
1263A0:  LDR             R0, =(off_23494C - 0x1263AE)
1263A2:  MOV             R2, #0x27C4F1
1263AA:  ADD             R0, PC; off_23494C
1263AC:  LDR             R1, [R0]; dword_23DF24
1263AE:  LDR             R0, =(byte_263DC8 - 0x1263B6)
1263B0:  LDR             R1, [R1]
1263B2:  ADD             R0, PC; byte_263DC8 ; __guard *
1263B4:  ADD             R1, R2
1263B6:  STR.W           R1, [R11]
1263BA:  BLX             j___cxa_guard_release
1263BE:  B               loc_12628C
1263C0:  LDR             R0, =(byte_263DD0 - 0x1263C6)
1263C2:  ADD             R0, PC; byte_263DD0 ; __guard *
1263C4:  BLX             j___cxa_guard_acquire
1263C8:  CMP             R0, #0
1263CA:  BEQ.W           loc_12629C
1263CE:  LDR.W           R0, [R8]
1263D2:  LDR             R2, [R0,#0x18]
1263D4:  LDR             R1, =(aAndroidViewMot - 0x1263DA); "android/view/MotionEvent" ...
1263D6:  ADD             R1, PC; "android/view/MotionEvent"
1263D8:  MOV             R0, R8
1263DA:  BLX             R2
1263DC:  LDR             R2, =(dword_263DCC - 0x1263E4)
1263DE:  LDR             R1, =(byte_263DD0 - 0x1263E6)
1263E0:  ADD             R2, PC; dword_263DCC
1263E2:  ADD             R1, PC; byte_263DD0
1263E4:  STR             R0, [R2]
1263E6:  MOV             R0, R1; __guard *
1263E8:  BLX             j___cxa_guard_release
1263EC:  B               loc_12629C
1263EE:  LDR             R0, =(byte_263DD8 - 0x1263F4)
1263F0:  ADD             R0, PC; byte_263DD8 ; __guard *
1263F2:  BLX             j___cxa_guard_acquire
1263F6:  CMP             R0, #0
1263F8:  BEQ.W           loc_1262AC
1263FC:  LDR             R0, =(dword_263DCC - 0x126406)
1263FE:  LDR.W           R1, [R8]
126402:  ADD             R0, PC; dword_263DCC
126404:  LDR.W           R6, [R1,#0x240]
126408:  LDR             R1, [R0]
12640A:  LDR             R2, =(aActionDown - 0x126412); "ACTION_DOWN" ...
12640C:  LDR             R3, =(aI - 0x126414); "I" ...
12640E:  ADD             R2, PC; "ACTION_DOWN"
126410:  ADD             R3, PC; "I"
126412:  MOV             R0, R8
126414:  BLX             R6
126416:  LDR             R2, =(dword_263DD4 - 0x12641E)
126418:  LDR             R1, =(byte_263DD8 - 0x126420)
12641A:  ADD             R2, PC; dword_263DD4
12641C:  ADD             R1, PC; byte_263DD8
12641E:  STR             R0, [R2]
126420:  MOV             R0, R1; __guard *
126422:  BLX             j___cxa_guard_release
126426:  B               loc_1262AC
126428:  LDR             R0, =(byte_263DE0 - 0x12642E)
12642A:  ADD             R0, PC; byte_263DE0 ; __guard *
12642C:  BLX             j___cxa_guard_acquire
126430:  CMP             R0, #0
126432:  BEQ.W           loc_1262BC
126436:  LDR             R0, =(dword_263DCC - 0x126440)
126438:  LDR.W           R1, [R8]
12643C:  ADD             R0, PC; dword_263DCC
12643E:  LDR.W           R6, [R1,#0x240]
126442:  LDR             R1, [R0]
126444:  LDR             R2, =(aActionUp - 0x12644C); "ACTION_UP" ...
126446:  LDR             R3, =(aI - 0x12644E); "I" ...
126448:  ADD             R2, PC; "ACTION_UP"
12644A:  ADD             R3, PC; "I"
12644C:  MOV             R0, R8
12644E:  BLX             R6
126450:  LDR             R2, =(dword_263DDC - 0x126458)
126452:  LDR             R1, =(byte_263DE0 - 0x12645A)
126454:  ADD             R2, PC; dword_263DDC
126456:  ADD             R1, PC; byte_263DE0
126458:  STR             R0, [R2]
12645A:  MOV             R0, R1; __guard *
12645C:  BLX             j___cxa_guard_release
126460:  B               loc_1262BC
126462:  LDR             R0, =(byte_263DE8 - 0x126468)
126464:  ADD             R0, PC; byte_263DE8 ; __guard *
126466:  BLX             j___cxa_guard_acquire
12646A:  CMP             R0, #0
12646C:  BEQ.W           loc_1262CC
126470:  LDR             R0, =(dword_263DCC - 0x12647A)
126472:  LDR.W           R1, [R8]
126476:  ADD             R0, PC; dword_263DCC
126478:  LDR.W           R6, [R1,#0x240]
12647C:  LDR             R1, [R0]
12647E:  LDR             R2, =(aActionCancel - 0x126486); "ACTION_CANCEL" ...
126480:  LDR             R3, =(aI - 0x126488); "I" ...
126482:  ADD             R2, PC; "ACTION_CANCEL"
126484:  ADD             R3, PC; "I"
126486:  MOV             R0, R8
126488:  BLX             R6
12648A:  LDR             R2, =(dword_263DE4 - 0x126492)
12648C:  LDR             R1, =(byte_263DE8 - 0x126494)
12648E:  ADD             R2, PC; dword_263DE4
126490:  ADD             R1, PC; byte_263DE8
126492:  STR             R0, [R2]
126494:  MOV             R0, R1; __guard *
126496:  BLX             j___cxa_guard_release
12649A:  B               loc_1262CC
12649C:  LDR             R0, =(byte_263DF0 - 0x1264A2)
12649E:  ADD             R0, PC; byte_263DF0 ; __guard *
1264A0:  BLX             j___cxa_guard_acquire
1264A4:  CMP             R0, #0
1264A6:  BEQ.W           loc_1262DC
1264AA:  LDR             R0, =(dword_263DD4 - 0x1264B6)
1264AC:  LDR.W           R1, [R8]
1264B0:  LDR             R3, =(dword_263DCC - 0x1264B8)
1264B2:  ADD             R0, PC; dword_263DD4
1264B4:  ADD             R3, PC; dword_263DCC
1264B6:  LDR.W           R6, [R1,#0x258]
1264BA:  LDR             R2, [R0]
1264BC:  LDR             R1, [R3]
1264BE:  MOV             R0, R8
1264C0:  BLX             R6
1264C2:  LDR             R2, =(dword_263DEC - 0x1264CA)
1264C4:  LDR             R1, =(byte_263DF0 - 0x1264CC)
1264C6:  ADD             R2, PC; dword_263DEC
1264C8:  ADD             R1, PC; byte_263DF0
1264CA:  STR             R0, [R2]
1264CC:  MOV             R0, R1; __guard *
1264CE:  BLX             j___cxa_guard_release
1264D2:  B               loc_1262DC
1264D4:  LDR             R0, =(byte_263DF8 - 0x1264DA)
1264D6:  ADD             R0, PC; byte_263DF8 ; __guard *
1264D8:  BLX             j___cxa_guard_acquire
1264DC:  CMP             R0, #0
1264DE:  BEQ.W           loc_1262F0
1264E2:  LDR             R0, =(dword_263DDC - 0x1264EE)
1264E4:  LDR.W           R1, [R8]
1264E8:  LDR             R3, =(dword_263DCC - 0x1264F0)
1264EA:  ADD             R0, PC; dword_263DDC
1264EC:  ADD             R3, PC; dword_263DCC
1264EE:  LDR.W           R5, [R1,#0x258]
1264F2:  LDR             R2, [R0]
1264F4:  LDR             R1, [R3]
1264F6:  MOV             R0, R8
1264F8:  BLX             R5
1264FA:  LDR             R1, =(byte_263DF8 - 0x126502)
1264FC:  STR             R0, [R6]
1264FE:  ADD             R1, PC; byte_263DF8
126500:  MOV             R0, R1; __guard *
126502:  BLX             j___cxa_guard_release
126506:  B               loc_1262F0
126508:  LDR             R0, =(byte_263E00 - 0x12650E)
12650A:  ADD             R0, PC; byte_263E00 ; __guard *
12650C:  BLX             j___cxa_guard_acquire
126510:  CMP             R0, #0
126512:  BEQ.W           loc_126300
126516:  LDR             R0, =(dword_263DE4 - 0x126522)
126518:  LDR.W           R1, [R8]
12651C:  LDR             R3, =(dword_263DCC - 0x126524)
12651E:  ADD             R0, PC; dword_263DE4
126520:  ADD             R3, PC; dword_263DCC
126522:  LDR.W           R5, [R1,#0x258]
126526:  LDR             R2, [R0]
126528:  LDR             R1, [R3]
12652A:  MOV             R0, R8
12652C:  BLX             R5
12652E:  LDR             R2, =(dword_263DFC - 0x126536)
126530:  LDR             R1, =(byte_263E00 - 0x126538)
126532:  ADD             R2, PC; dword_263DFC
126534:  ADD             R1, PC; byte_263E00
126536:  STR             R0, [R2]
126538:  MOV             R0, R1; __guard *
12653A:  BLX             j___cxa_guard_release
12653E:  B               loc_126300
