; =========================================================
; Game Engine Function: INT123_do_layer2
; Address            : 0x229128 - 0x229D58
; =========================================================

229128:  PUSH            {R4-R7,LR}
22912A:  ADD             R7, SP, #0xC
22912C:  PUSH.W          {R8-R11}
229130:  SUB             SP, SP, #4
229132:  VPUSH           {D8-D9}
229136:  SUB.W           SP, SP, #0x590
22913A:  MOV             R6, R0
22913C:  MOVW            R0, #0xB544
229140:  LDR             R0, [R6,R0]
229142:  MOVW            R1, #0x92B4
229146:  STR             R0, [SP,#0x5C0+var_594]
229148:  MOVW            R0, #0x92E8
22914C:  LDR.W           R9, [R6,R1]
229150:  ADD             R1, R6
229152:  LDR             R0, [R6,R0]
229154:  STR             R1, [SP,#0x5C0+var_57C]
229156:  MOVW            R1, #0x92BC
22915A:  CMP             R0, #2
22915C:  LDR.W           R8, [R6,R1]
229160:  BLE             loc_229166
229162:  MOVS            R1, #4
229164:  B               loc_229182
229166:  LDR.W           R1, =(unk_5F15E8 - 0x229174)
22916A:  MOVW            R2, #0x92E4
22916E:  LDR             R2, [R6,R2]
229170:  ADD             R1, PC; unk_5F15E8
229172:  ADD.W           R0, R1, R0,LSL#7
229176:  RSB.W           R1, R9, #2
22917A:  ADD.W           R0, R0, R1,LSL#6
22917E:  LDR.W           R1, [R0,R2,LSL#2]
229182:  LDR.W           R2, =(off_660D18 - 0x229194)
229186:  MOVW            R0, #0x92F4
22918A:  LDR             R3, [R6,R0]
22918C:  ADR.W           R0, dword_229D60
229190:  ADD             R2, PC; off_660D18
229192:  LDR.W           R4, [R0,R1,LSL#2]
229196:  MOVW            R0, #0x92C0
22919A:  LDR.W           R5, [R2,R1,LSL#2]
22919E:  STR             R4, [R6,R0]
2291A0:  MOVW            R1, #0x92A0
2291A4:  CMP             R3, #1
2291A6:  ADD             R0, R6
2291A8:  STR             R5, [R6,R1]
2291AA:  STR             R0, [SP,#0x5C0+var_580]
2291AC:  ADD.W           R0, R6, R1
2291B0:  STR             R0, [SP,#0x5C0+var_584]
2291B2:  BNE             loc_2291D6
2291B4:  MOVW            R1, #0x92F8
2291B8:  MOVS            R3, #4
2291BA:  LDR             R1, [R6,R1]
2291BC:  ADD.W           R2, R3, R1,LSL#2
2291C0:  MOVW            R1, #0x92B8
2291C4:  CMP             R2, R4
2291C6:  STR             R2, [R6,R1]
2291C8:  ADD.W           R0, R6, R1
2291CC:  STR             R0, [SP,#0x5C0+var_588]
2291CE:  BGT.W           loc_229D30
2291D2:  MOV             R1, R9
2291D4:  B               loc_2291E4
2291D6:  MOVW            R1, #0x92B8
2291DA:  ADDS            R0, R6, R1
2291DC:  STR             R4, [R6,R1]
2291DE:  MOV             R2, R4
2291E0:  MOV             R1, R9
2291E2:  STR             R0, [SP,#0x5C0+var_588]
2291E4:  CMP.W           R8, #3
2291E8:  IT EQ
2291EA:  MOVEQ.W         R8, #0
2291EE:  CMP.W           R9, #1
2291F2:  IT EQ
2291F4:  MOVEQ.W         R8, #0
2291F8:  SUBS            R1, #1
2291FA:  STR.W           R8, [SP,#0x5C0+var_578]
2291FE:  LSL.W           R9, R4, R1
229202:  STR             R6, [SP,#0x5C0+var_544]
229204:  BEQ             loc_2292D4
229206:  CMP             R2, #0
229208:  STR.W           R9, [SP,#0x5C0+var_53C]
22920C:  BEQ.W           loc_2293A8
229210:  MOVW            R1, #0x9330
229214:  ADDS            R0, R6, R1
229216:  STR             R4, [SP,#0x5C0+var_540]
229218:  MOVW            R1, #0x9334
22921C:  STR             R0, [SP,#0x5C0+var_534]
22921E:  ADDS            R0, R6, R1
229220:  STR             R0, [SP,#0x5C0+var_538]
229222:  ADD             R3, SP, #0x5C0+var_230
229224:  STR             R2, [SP,#0x5C0+var_548]
229226:  MOV             R8, R2
229228:  LDRD.W          R11, R10, [SP,#0x5C0+var_538]
22922C:  LDR.W           R6, [R11]
229230:  SUBS.W          R8, R8, #1
229234:  LDRSH.W         R1, [R5]
229238:  LDR.W           R0, [R10]
22923C:  LDRB            R2, [R6]
22923E:  ADD.W           R12, R0, R1
229242:  LDRB.W          R9, [R6,#1]
229246:  AND.W           R4, R12, #7
22924A:  ADD.W           LR, R6, R12,ASR#3
22924E:  LDRB            R6, [R6,#2]
229250:  STR.W           LR, [R11]
229254:  STR.W           R4, [R10]
229258:  ORR.W           R4, R9, R2,LSL#8
22925C:  ORR.W           R6, R6, R4,LSL#8
229260:  LSL.W           R0, R6, R0
229264:  RSB.W           R6, R1, #0x18
229268:  BIC.W           R0, R0, #0xFF000000
22926C:  LSR.W           R0, R0, R6
229270:  UXTB            R0, R0
229272:  STR             R0, [R3]
229274:  LDR.W           R4, [R11]
229278:  LDR.W           R0, [R10]
22927C:  ADD.W           R2, R0, R1
229280:  LDRB.W          LR, [R4]
229284:  LDRB.W          R9, [R4,#1]
229288:  ADD.W           R12, R4, R2,ASR#3
22928C:  AND.W           R2, R2, #7
229290:  LDRB            R4, [R4,#2]
229292:  STR.W           R12, [R11]
229296:  STR.W           R2, [R10]
22929A:  ORR.W           R2, R9, LR,LSL#8
22929E:  ORR.W           R2, R4, R2,LSL#8
2292A2:  LSL.W           R0, R2, R0
2292A6:  BIC.W           R0, R0, #0xFF000000
2292AA:  LSR.W           R0, R0, R6
2292AE:  UXTB            R0, R0
2292B0:  STR             R0, [R3,#4]
2292B2:  MOV.W           R0, #1
2292B6:  LSL.W           R0, R0, R1
2292BA:  ADD.W           R3, R3, #8
2292BE:  ADD.W           R5, R5, R0,LSL#2
2292C2:  BNE             loc_22922C
2292C4:  LDR             R2, [SP,#0x5C0+var_548]
2292C6:  ADD             R0, SP, #0x5C0+var_230
2292C8:  LDR             R4, [SP,#0x5C0+var_540]
2292CA:  ADD.W           R6, R0, R2,LSL#3
2292CE:  SUBS            R0, R4, R2
2292D0:  BNE             loc_2293AE
2292D2:  B               loc_22941E
2292D4:  CMP             R4, #0
2292D6:  BEQ.W           loc_229490
2292DA:  LDR             R0, [SP,#0x5C0+var_544]
2292DC:  MOVW            R1, #0x9330
2292E0:  ADD             R6, SP, #0x5C0+var_230
2292E2:  MOV.W           R12, #1
2292E6:  ADD.W           LR, R0, R1
2292EA:  MOVW            R1, #0x9334
2292EE:  ADD.W           R8, R0, R1
2292F2:  MOV             R1, R4
2292F4:  STR.W           R9, [SP,#0x5C0+var_53C]
2292F8:  STR             R4, [SP,#0x5C0+var_540]
2292FA:  LDR.W           R4, [R8]
2292FE:  SUBS            R1, #1
229300:  LDRSH.W         R0, [R5]
229304:  LDR.W           R2, [LR]
229308:  LDRB.W          R9, [R4]
22930C:  ADD.W           R3, R2, R0
229310:  LDRB.W          R10, [R4,#1]
229314:  ADD.W           R11, R4, R3,ASR#3
229318:  AND.W           R3, R3, #7
22931C:  LDRB            R4, [R4,#2]
22931E:  STR.W           R11, [R8]
229322:  STR.W           R3, [LR]
229326:  LSL.W           R3, R12, R0
22932A:  ADD.W           R5, R5, R3,LSL#2
22932E:  ORR.W           R3, R10, R9,LSL#8
229332:  RSB.W           R0, R0, #0x18
229336:  ORR.W           R3, R4, R3,LSL#8
22933A:  LSL.W           R2, R3, R2
22933E:  BIC.W           R2, R2, #0xFF000000
229342:  LSR.W           R0, R2, R0
229346:  UXTB            R0, R0
229348:  STR.W           R0, [R6],#4
22934C:  BNE             loc_2292FA
22934E:  LDR             R1, [SP,#0x5C0+var_544]
229350:  MOVW            R0, #0x9338
229354:  LDRD.W          R2, R9, [SP,#0x5C0+var_540]
229358:  ADD.W           R5, SP, #0x5C0+var_130
22935C:  ADD.W           R12, R1, R0
229360:  ADD             R4, SP, #0x5C0+var_230
229362:  LDR.W           R0, [R4],#4
229366:  CBZ             R0, loc_2293A2
229368:  LDR.W           R0, [R8]
22936C:  LDR.W           R1, [LR]
229370:  LDRB            R3, [R0]
229372:  LSLS            R3, R1
229374:  UXTB            R3, R3
229376:  STR.W           R3, [R12]
22937A:  LDRB            R6, [R0,#1]
22937C:  LSLS            R6, R1
22937E:  ADDS            R1, #2
229380:  ORR.W           R3, R3, R6,LSR#8
229384:  ADD.W           R0, R0, R1,ASR#3
229388:  LSRS            R6, R3, #6
22938A:  STR.W           R6, [R12]
22938E:  STR.W           R0, [R8]
229392:  AND.W           R0, R1, #7
229396:  STR.W           R0, [LR]
22939A:  UBFX.W          R0, R3, #6, #8
22939E:  STR.W           R0, [R5],#4
2293A2:  SUBS            R2, #1
2293A4:  BNE             loc_229362
2293A6:  B               loc_229490
2293A8:  ADD             R6, SP, #0x5C0+var_230
2293AA:  SUBS            R0, R4, R2
2293AC:  BEQ             loc_22941E
2293AE:  SUBS            R1, R2, R4
2293B0:  LDR             R2, [SP,#0x5C0+var_544]
2293B2:  MOVW            R0, #0x9330
2293B6:  MOV.W           R12, #1
2293BA:  ADD.W           LR, R2, R0
2293BE:  MOVW            R0, #0x9334
2293C2:  ADD.W           R8, R2, R0
2293C6:  LDR.W           R0, [R8]
2293CA:  ADDS            R1, #1
2293CC:  LDRSH.W         R2, [R5]
2293D0:  LDR.W           R4, [LR]
2293D4:  LDRB.W          R9, [R0]
2293D8:  ADD.W           R3, R4, R2
2293DC:  LDRB.W          R10, [R0,#1]
2293E0:  ADD.W           R11, R0, R3,ASR#3
2293E4:  AND.W           R3, R3, #7
2293E8:  LDRB            R0, [R0,#2]
2293EA:  STR.W           R11, [R8]
2293EE:  STR.W           R3, [LR]
2293F2:  ORR.W           R3, R10, R9,LSL#8
2293F6:  ORR.W           R0, R0, R3,LSL#8
2293FA:  RSB.W           R3, R2, #0x18
2293FE:  LSL.W           R0, R0, R4
229402:  BIC.W           R0, R0, #0xFF000000
229406:  LSR.W           R0, R0, R3
22940A:  UXTB            R0, R0
22940C:  STRD.W          R0, R0, [R6]
229410:  LSL.W           R0, R12, R2
229414:  ADD.W           R5, R5, R0,LSL#2
229418:  ADD.W           R6, R6, #8
22941C:  BNE             loc_2293C6
22941E:  LDR.W           R9, [SP,#0x5C0+var_53C]
229422:  CMP.W           R9, #0
229426:  BEQ.W           loc_229616
22942A:  LDR             R1, [SP,#0x5C0+var_544]
22942C:  MOVW            R0, #0x9338
229430:  ADD.W           R6, SP, #0x5C0+var_130
229434:  ADD             R5, SP, #0x5C0+var_230
229436:  ADD.W           R12, R1, R0
22943A:  MOVW            R0, #0x9330
22943E:  ADD.W           LR, R1, R0
229442:  MOVW            R0, #0x9334
229446:  ADD.W           R8, R1, R0
22944A:  MOV             R0, R9
22944C:  LDR.W           R4, [R5],#4
229450:  CBZ             R4, loc_22948C
229452:  LDR.W           R4, [R8]
229456:  LDR.W           R1, [LR]
22945A:  LDRB            R2, [R4]
22945C:  LSLS            R2, R1
22945E:  UXTB            R2, R2
229460:  STR.W           R2, [R12]
229464:  LDRB            R3, [R4,#1]
229466:  LSLS            R3, R1
229468:  ADDS            R1, #2
22946A:  ORR.W           R2, R2, R3,LSR#8
22946E:  LSRS            R3, R2, #6
229470:  STR.W           R3, [R12]
229474:  ADD.W           R3, R4, R1,ASR#3
229478:  AND.W           R1, R1, #7
22947C:  STR.W           R3, [R8]
229480:  STR.W           R1, [LR]
229484:  UBFX.W          R1, R2, #6, #8
229488:  STR.W           R1, [R6],#4
22948C:  SUBS            R0, #1
22948E:  BNE             loc_22944C
229490:  CMP.W           R9, #0
229494:  BEQ.W           loc_229616
229498:  LDR             R1, [SP,#0x5C0+var_544]
22949A:  MOVW            R0, #0x9338
22949E:  ADD.W           R12, SP, #0x5C0+var_130
2294A2:  ADD.W           LR, SP, #0x5C0+var_230
2294A6:  ADD.W           R8, R1, R0
2294AA:  MOVW            R0, #0x9330
2294AE:  ADDS            R2, R1, R0
2294B0:  MOVW            R0, #0x9334
2294B4:  ADDS            R3, R1, R0
2294B6:  ADD             R6, SP, #0x5C0+var_530
2294B8:  LDR.W           R0, [LR],#4
2294BC:  CMP             R0, #0
2294BE:  BEQ.W           loc_22960E
2294C2:  LDR.W           R0, [R12],#4
2294C6:  CMP             R0, #2
2294C8:  BEQ             loc_22952A
2294CA:  CMP             R0, #1
2294CC:  BEQ             loc_229558
2294CE:  CMP             R0, #0
2294D0:  BNE             loc_2295B2
2294D2:  LDR             R0, [R3]
2294D4:  LDR             R4, [R2]
2294D6:  LDRB            R5, [R0]
2294D8:  LSLS            R5, R4
2294DA:  UXTB            R5, R5
2294DC:  STR.W           R5, [R8]
2294E0:  LDRB            R1, [R0,#1]
2294E2:  LSLS            R1, R4
2294E4:  ADDS            R4, #6
2294E6:  ORR.W           R1, R5, R1,LSR#8
2294EA:  ADD.W           R0, R0, R4,ASR#3
2294EE:  LSRS            R1, R1, #2
2294F0:  STR.W           R1, [R8]
2294F4:  STR             R0, [R3]
2294F6:  AND.W           R0, R4, #7
2294FA:  STR             R0, [R2]
2294FC:  STR             R1, [R6]
2294FE:  LDR             R0, [R3]
229500:  LDR             R1, [R2]
229502:  LDRB            R4, [R0]
229504:  LSLS            R4, R1
229506:  UXTB            R4, R4
229508:  STR.W           R4, [R8]
22950C:  LDRB            R5, [R0,#1]
22950E:  LSLS            R5, R1
229510:  ADDS            R1, #6
229512:  ORR.W           R4, R4, R5,LSR#8
229516:  ADD.W           R0, R0, R1,ASR#3
22951A:  LSRS            R4, R4, #2
22951C:  STR.W           R4, [R8]
229520:  STR             R0, [R3]
229522:  AND.W           R0, R1, #7
229526:  STR             R0, [R2]
229528:  B               loc_229584
22952A:  LDR             R0, [R3]
22952C:  LDR             R1, [R2]
22952E:  LDRB            R4, [R0]
229530:  LSLS            R4, R1
229532:  UXTB            R4, R4
229534:  STR.W           R4, [R8]
229538:  LDRB            R5, [R0,#1]
22953A:  LSLS            R5, R1
22953C:  ADDS            R1, #6
22953E:  ORR.W           R4, R4, R5,LSR#8
229542:  ADD.W           R0, R0, R1,ASR#3
229546:  LSRS            R4, R4, #2
229548:  STR.W           R4, [R8]
22954C:  STR             R0, [R3]
22954E:  AND.W           R0, R1, #7
229552:  STR             R0, [R2]
229554:  STR             R4, [R6]
229556:  B               loc_229608
229558:  LDR             R0, [R3]
22955A:  LDR             R1, [R2]
22955C:  LDRB            R4, [R0]
22955E:  LSLS            R4, R1
229560:  UXTB            R4, R4
229562:  STR.W           R4, [R8]
229566:  LDRB            R5, [R0,#1]
229568:  LSLS            R5, R1
22956A:  ADDS            R1, #6
22956C:  ORR.W           R4, R4, R5,LSR#8
229570:  ADD.W           R0, R0, R1,ASR#3
229574:  LSRS            R4, R4, #2
229576:  STR.W           R4, [R8]
22957A:  STR             R0, [R3]
22957C:  AND.W           R0, R1, #7
229580:  STR             R0, [R2]
229582:  STR             R4, [R6]
229584:  STR             R4, [R6,#4]
229586:  LDR             R0, [R3]
229588:  LDR             R1, [R2]
22958A:  LDRB            R4, [R0]
22958C:  LSLS            R4, R1
22958E:  UXTB            R4, R4
229590:  STR.W           R4, [R8]
229594:  LDRB            R5, [R0,#1]
229596:  LSLS            R5, R1
229598:  ADDS            R1, #6
22959A:  ORR.W           R4, R4, R5,LSR#8
22959E:  ADD.W           R0, R0, R1,ASR#3
2295A2:  LSRS            R4, R4, #2
2295A4:  STR.W           R4, [R8]
2295A8:  STR             R0, [R3]
2295AA:  AND.W           R0, R1, #7
2295AE:  STR             R0, [R2]
2295B0:  B               loc_22960A
2295B2:  LDR             R0, [R3]
2295B4:  LDR             R1, [R2]
2295B6:  LDRB            R4, [R0]
2295B8:  LSLS            R4, R1
2295BA:  UXTB            R4, R4
2295BC:  STR.W           R4, [R8]
2295C0:  LDRB            R5, [R0,#1]
2295C2:  LSLS            R5, R1
2295C4:  ADDS            R1, #6
2295C6:  ORR.W           R4, R4, R5,LSR#8
2295CA:  ADD.W           R0, R0, R1,ASR#3
2295CE:  LSRS            R4, R4, #2
2295D0:  STR.W           R4, [R8]
2295D4:  STR             R0, [R3]
2295D6:  AND.W           R0, R1, #7
2295DA:  STR             R0, [R2]
2295DC:  STR             R4, [R6]
2295DE:  LDR             R0, [R3]
2295E0:  LDR             R1, [R2]
2295E2:  LDRB            R4, [R0]
2295E4:  LSLS            R4, R1
2295E6:  UXTB            R4, R4
2295E8:  STR.W           R4, [R8]
2295EC:  LDRB            R5, [R0,#1]
2295EE:  LSLS            R5, R1
2295F0:  ADDS            R1, #6
2295F2:  ORR.W           R4, R4, R5,LSR#8
2295F6:  ADD.W           R0, R0, R1,ASR#3
2295FA:  LSRS            R4, R4, #2
2295FC:  STR.W           R4, [R8]
229600:  STR             R0, [R3]
229602:  AND.W           R0, R1, #7
229606:  STR             R0, [R2]
229608:  STR             R4, [R6,#4]
22960A:  STR             R4, [R6,#8]
22960C:  ADDS            R6, #0xC
22960E:  SUBS.W          R9, R9, #1
229612:  BNE.W           loc_2294B8
229616:  LDR             R1, [SP,#0x5C0+var_544]
229618:  MOVW            R0, #0x92AC
22961C:  VMOV.I32        Q4, #0
229620:  MOV.W           R10, #0
229624:  ADD             R0, R1
229626:  STR             R0, [SP,#0x5C0+var_598]
229628:  MOVW            R0, #0x92A8
22962C:  MOV             R5, #0xFFFFFF00
229630:  ADD             R0, R1
229632:  STR             R0, [SP,#0x5C0+var_5AC]
229634:  MOVW            R0, #0x92C4
229638:  ADD             R0, R1
22963A:  STR             R0, [SP,#0x5C0+var_58C]
22963C:  MOVW            R0, #0x9330
229640:  ADD             R0, R1
229642:  STR             R0, [SP,#0x5C0+var_548]
229644:  MOVW            R0, #0x9334
229648:  ADD             R0, R1
22964A:  STR             R0, [SP,#0x5C0+var_54C]
22964C:  LDR             R0, [SP,#0x5C0+var_594]
22964E:  LDR             R1, [SP,#0x5C0+var_578]
229650:  ADD.W           R2, R0, #0xF8
229654:  STR             R2, [SP,#0x5C0+var_5A8]
229656:  ADD.W           R2, R0, #0x600
22965A:  STR             R2, [SP,#0x5C0+var_5B0]
22965C:  ADD.W           R2, R0, #0x200
229660:  STR             R2, [SP,#0x5C0+var_5B4]
229662:  ADD.W           R2, R0, #0x500
229666:  STR             R2, [SP,#0x5C0+var_5B8]
229668:  ADD.W           R2, R0, #0x100
22966C:  ADD.W           R1, R0, R1,LSL#10
229670:  ADD.W           R0, R0, #0x400
229674:  STR             R0, [SP,#0x5C0+var_5BC]
229676:  ADD.W           R0, R1, #0x200
22967A:  STR             R2, [SP,#0x5C0+var_590]
22967C:  STRD.W          R0, R1, [SP,#0x5C0+var_5A0]
229680:  ADD.W           R0, R1, #0x100
229684:  STR             R0, [SP,#0x5C0+var_5A4]
229686:  MOVS            R0, #0
229688:  STR             R0, [SP,#0x5C0+var_574]
22968A:  MOVS            R0, #0
22968C:  STR             R0, [SP,#0x5C0+var_570]
22968E:  LDR             R0, [SP,#0x5C0+var_584]
229690:  LDR             R2, [R0]
229692:  LDR             R0, [SP,#0x5C0+var_588]
229694:  LDR             R1, [R0]
229696:  LDR             R0, [SP,#0x5C0+var_580]
229698:  CMP             R1, #1
22969A:  LDR             R0, [R0]
22969C:  STR             R0, [SP,#0x5C0+var_56C]
22969E:  LDR             R0, [SP,#0x5C0+var_57C]
2296A0:  LDR.W           R8, [R0]
2296A4:  LDR             R0, [SP,#0x5C0+var_570]
2296A6:  STR.W           R8, [SP,#0x5C0+var_564]
2296AA:  MOV.W           R0, R0,ASR#2
2296AE:  STR             R0, [SP,#0x5C0+var_540]
2296B0:  BLT.W           loc_22992A
2296B4:  LDR             R4, [SP,#0x5C0+var_590]
2296B6:  ADD.W           R11, SP, #0x5C0+var_530
2296BA:  MOVS            R3, #0
2296BC:  ADD             R0, SP, #0x5C0+var_230
2296BE:  STR             R0, [SP,#0x5C0+var_554]
2296C0:  STR             R1, [SP,#0x5C0+var_568]
2296C2:  LDRSH.W         R6, [R2]
2296C6:  CMP.W           R8, #1
2296CA:  BLT.W           loc_229916
2296CE:  LDR             R0, [SP,#0x5C0+var_554]
2296D0:  MOV             LR, R8
2296D2:  STR             R6, [SP,#0x5C0+var_560]
2296D4:  STR             R3, [SP,#0x5C0+var_558]
2296D6:  MOV             R8, R0
2296D8:  STR             R4, [SP,#0x5C0+var_55C]
2296DA:  STR             R2, [SP,#0x5C0+var_53C]
2296DC:  LDR.W           R3, [R8],#4
2296E0:  CMP             R3, #0
2296E2:  BEQ             loc_2297D4
2296E4:  LDRSH.W         R12, [R2,R3,LSL#2]
2296E8:  ADD.W           R3, R2, R3,LSL#2
2296EC:  LDRSH.W         R9, [R3,#2]
2296F0:  CMP.W           R9, #0xFFFFFFFF
2296F4:  BLE             loc_2297EA
2296F6:  ADD.W           R0, SP, #0x5C0+var_130
2296FA:  LDR             R2, [SP,#0x5C0+var_54C]
2296FC:  LDR             R6, [SP,#0x5C0+var_540]
2296FE:  MOV             R1, R0
229700:  ADD.W           R0, R1, #0x10
229704:  MOV             R5, R2
229706:  VST1.64         {D8-D9}, [R0]
22970A:  LDR.W           R0, =(dword_6BDEE0 - 0x229716)
22970E:  STR.W           R10, [SP,#0x5C0+var_110]
229712:  ADD             R0, PC; dword_6BDEE0
229714:  STR.W           R0, [SP,#0x5C0+var_10C]
229718:  MOV.W           R0, R9,LSL#2
22971C:  LDR.W           R10, [R11,R6,LSL#2]
229720:  VST1.64         {D8-D9}, [R1],R0
229724:  LDR.W           R0, =(dword_6BD760 - 0x22972C)
229728:  ADD             R0, PC; dword_6BD760
22972A:  STR.W           R0, [SP,#0x5C0+var_124]
22972E:  LDR.W           R0, =(dword_6BD8E0 - 0x229736)
229732:  ADD             R0, PC; dword_6BD8E0
229734:  STR.W           R0, [SP,#0x5C0+var_11C]
229738:  LDR             R0, [SP,#0x5C0+var_548]
22973A:  LDR             R2, [R5]
22973C:  MOV             R3, R0
22973E:  LDR.W           R9, [R3]
229742:  STR.W           R12, [SP,#0x5C0+var_534]
229746:  LDRB            R0, [R2]
229748:  ADD.W           R6, R9, R12
22974C:  STR             R0, [SP,#0x5C0+var_538]
22974E:  MOV             R12, R8
229750:  MOV             R8, R11
229752:  ADD.W           R11, R2, R6,ASR#3
229756:  LDRB            R0, [R2,#1]
229758:  LDRB            R2, [R2,#2]
22975A:  STR.W           R11, [R5]
22975E:  AND.W           R5, R6, #7
229762:  STR             R5, [R3]
229764:  MOV             R11, R8
229766:  LDR             R3, [SP,#0x5C0+var_538]
229768:  MOV             R8, R12
22976A:  LDR             R1, [R1]
22976C:  ORR.W           R6, R0, R3,LSL#8
229770:  LDR             R3, [SP,#0x5C0+var_544]
229772:  ORR.W           R2, R2, R6,LSL#8
229776:  MOVW            R6, #0x5B88
22977A:  ADD             R6, R3
22977C:  LSL.W           R0, R2, R9
229780:  LDR             R2, [SP,#0x5C0+var_534]
229782:  BIC.W           R0, R0, #0xFF000000
229786:  RSB.W           R2, R2, #0x18
22978A:  LSRS            R0, R2
22978C:  ADD.W           R1, R1, R0,LSL#2
229790:  ADD.W           R1, R1, R0,LSL#2
229794:  LDR.W           R2, [R1,R0,LSL#2]
229798:  ADD.W           R0, R1, R0,LSL#2
22979C:  ADD.W           R2, R6, R2,LSL#9
2297A0:  ADD.W           R2, R2, R10,LSL#3
2297A4:  VLDR            D16, [R2]
2297A8:  LDR             R2, [SP,#0x5C0+var_53C]
2297AA:  VSTR            D16, [R4,#-0x100]
2297AE:  LDR             R1, [R0,#4]
2297B0:  ADD.W           R1, R6, R1,LSL#9
2297B4:  ADD.W           R1, R1, R10,LSL#3
2297B8:  VLDR            D16, [R1]
2297BC:  VSTR            D16, [R4]
2297C0:  LDR             R0, [R0,#8]
2297C2:  ADD.W           R0, R6, R0,LSL#9
2297C6:  ADD.W           R0, R0, R10,LSL#3
2297CA:  MOV.W           R10, #0
2297CE:  VLDR            D16, [R0]
2297D2:  B               loc_2298EA
2297D4:  MOV             R0, #0xFFFFFF00
2297D8:  STR.W           R10, [R4,R0]
2297DC:  STRD.W          R10, R10, [R4,#0x100]
2297E0:  STR.W           R10, [R4,#-0xFC]
2297E4:  STRD.W          R10, R10, [R4]
2297E8:  B               loc_2298F2
2297EA:  STR.W           R11, [SP,#0x5C0+var_534]
2297EE:  MOV             R3, R12
2297F0:  LDR.W           R11, [SP,#0x5C0+var_54C]
2297F4:  LDR             R0, [SP,#0x5C0+var_540]
2297F6:  LDR             R2, [SP,#0x5C0+var_534]
2297F8:  LDR.W           R12, [R11]
2297FC:  LDR             R5, [SP,#0x5C0+var_548]
2297FE:  LDR.W           R0, [R2,R0,LSL#2]
229802:  LDRB.W          R10, [R12]
229806:  LDRB.W          R1, [R12,#1]
22980A:  LDRB.W          R6, [R12,#2]
22980E:  ORR.W           R1, R1, R10,LSL#8
229812:  STR             R0, [SP,#0x5C0+var_550]
229814:  LDR             R2, [R5]
229816:  RSB.W           R0, R3, #0x18
22981A:  ORR.W           R1, R6, R1,LSL#8
22981E:  STR             R0, [SP,#0x5C0+var_538]
229820:  MOV.W           R10, #0
229824:  LSLS            R1, R2
229826:  BIC.W           R1, R1, #0xFF000000
22982A:  LSRS            R1, R0
22982C:  ADD             R1, R9
22982E:  VMOV            S0, R1
229832:  VCVT.F64.S32    D16, S0
229836:  LDR             R0, [SP,#0x5C0+var_544]
229838:  ADD.W           R1, R0, R3,LSL#9
22983C:  LDR             R0, [SP,#0x5C0+var_550]
22983E:  ADD.W           R1, R1, R0,LSL#3
229842:  MOVW            R0, #0x5B88
229846:  ADD             R1, R0
229848:  VLDR            D17, [R1]
22984C:  ADDS            R1, R2, R3
22984E:  VMUL.F64        D16, D17, D16
229852:  ADD.W           R2, R12, R1,ASR#3
229856:  STR.W           R2, [R11]
22985A:  AND.W           R1, R1, #7
22985E:  STR             R1, [R5]
229860:  VSTR            D16, [R4,#-0x100]
229864:  LDR.W           R1, [R11]
229868:  LDR.W           R12, [SP,#0x5C0+var_538]
22986C:  LDRB            R2, [R1]
22986E:  LDRB            R6, [R1,#1]
229870:  LDRB            R0, [R1,#2]
229872:  ORR.W           R2, R6, R2,LSL#8
229876:  ORR.W           R0, R0, R2,LSL#8
22987A:  LDR             R2, [R5]
22987C:  LSLS            R0, R2
22987E:  BIC.W           R0, R0, #0xFF000000
229882:  LSR.W           R0, R0, R12
229886:  ADD             R0, R9
229888:  VMOV            S0, R0
22988C:  ADDS            R0, R2, R3
22988E:  VCVT.F64.S32    D16, S0
229892:  ADD.W           R1, R1, R0,ASR#3
229896:  STR.W           R1, [R11]
22989A:  AND.W           R0, R0, #7
22989E:  STR             R0, [R5]
2298A0:  VMUL.F64        D16, D17, D16
2298A4:  VSTR            D16, [R4]
2298A8:  LDR.W           R0, [R11]
2298AC:  LDRB            R1, [R0]
2298AE:  LDRB            R2, [R0,#1]
2298B0:  LDRB            R6, [R0,#2]
2298B2:  ORR.W           R1, R2, R1,LSL#8
2298B6:  LDR             R2, [R5]
2298B8:  ORR.W           R1, R6, R1,LSL#8
2298BC:  LSLS            R1, R2
2298BE:  BIC.W           R1, R1, #0xFF000000
2298C2:  LSR.W           R1, R1, R12
2298C6:  ADD             R1, R9
2298C8:  VMOV            S0, R1
2298CC:  ADDS            R1, R2, R3
2298CE:  VCVT.F64.S32    D16, S0
2298D2:  LDR             R2, [SP,#0x5C0+var_53C]
2298D4:  ADD.W           R0, R0, R1,ASR#3
2298D8:  STR.W           R0, [R11]
2298DC:  LDR.W           R11, [SP,#0x5C0+var_534]
2298E0:  AND.W           R0, R1, #7
2298E4:  STR             R0, [R5]
2298E6:  VMUL.F64        D16, D17, D16
2298EA:  VSTR            D16, [R4,#0x100]
2298EE:  ADD.W           R11, R11, #0xC
2298F2:  SUBS.W          LR, LR, #1
2298F6:  ADD.W           R4, R4, #0x400
2298FA:  BNE.W           loc_2296DC
2298FE:  LDR.W           R8, [SP,#0x5C0+var_564]
229902:  MOV             R5, #0xFFFFFF00
229906:  LDR             R0, [SP,#0x5C0+var_554]
229908:  LDR             R1, [SP,#0x5C0+var_568]
22990A:  ADD.W           R0, R0, R8,LSL#2
22990E:  STR             R0, [SP,#0x5C0+var_554]
229910:  LDR             R3, [SP,#0x5C0+var_558]
229912:  LDRD.W          R6, R4, [SP,#0x5C0+var_560]
229916:  MOVS            R0, #1
229918:  ADDS            R3, #1
22991A:  LSLS            R0, R6
22991C:  ADDS            R4, #8
22991E:  ADD.W           R2, R2, R0,LSL#2
229922:  CMP             R3, R1
229924:  BNE.W           loc_2296C2
229928:  B               loc_229932
22992A:  ADD.W           R11, SP, #0x5C0+var_530
22992E:  ADD             R0, SP, #0x5C0+var_230
229930:  STR             R0, [SP,#0x5C0+var_554]
229932:  LDR             R0, [SP,#0x5C0+var_56C]
229934:  CMP             R1, R0
229936:  BGE.W           loc_229C70
22993A:  LDR             R0, [SP,#0x5C0+var_56C]
22993C:  MOV.W           R12, #0
229940:  SUBS            R3, R0, R1
229942:  LDR             R0, [SP,#0x5C0+var_594]
229944:  ADD.W           R0, R0, R1,LSL#3
229948:  STR             R0, [SP,#0x5C0+var_558]
22994A:  LDR             R0, [SP,#0x5C0+var_554]
22994C:  MOV             R1, R3
22994E:  ADDS            R0, #4
229950:  STR             R0, [SP,#0x5C0+var_550]
229952:  LDR             R0, [SP,#0x5C0+var_540]
229954:  ADDS            R0, #3
229956:  STR             R0, [SP,#0x5C0+var_55C]
229958:  LDR             R0, [SP,#0x5C0+var_550]
22995A:  LDRSH.W         LR, [R2]
22995E:  LDR.W           R3, [R0,R12]
229962:  CMP             R3, #0
229964:  BEQ.W           loc_229ABE
229968:  ADD.W           R0, R2, R3,LSL#2
22996C:  LDRSH.W         R8, [R2,R3,LSL#2]
229970:  LDRSH.W         R9, [R0,#2]
229974:  STRD.W          R2, LR, [SP,#0x5C0+var_53C]
229978:  CMP.W           R9, #0xFFFFFFFF
22997C:  BLE.W           loc_229AEC
229980:  ADD.W           R0, SP, #0x5C0+var_130
229984:  LDR             R5, [SP,#0x5C0+var_540]
229986:  MOV             LR, R8
229988:  MOV             R2, R0
22998A:  ADD.W           R0, R2, #0x10
22998E:  VST1.64         {D8-D9}, [R0]
229992:  LDR.W           R0, =(dword_6BDEE0 - 0x22999E)
229996:  STR.W           R10, [SP,#0x5C0+var_110]
22999A:  ADD             R0, PC; dword_6BDEE0
22999C:  STR.W           R0, [SP,#0x5C0+var_10C]
2299A0:  MOV.W           R0, R9,LSL#2
2299A4:  LDR.W           R9, [SP,#0x5C0+var_54C]
2299A8:  VST1.64         {D8-D9}, [R2],R0
2299AC:  LDR.W           R0, =(dword_6BD760 - 0x2299B4)
2299B0:  ADD             R0, PC; dword_6BD760
2299B2:  STR.W           R0, [SP,#0x5C0+var_124]
2299B6:  LDR.W           R0, =(dword_6BD8E0 - 0x2299BE)
2299BA:  ADD             R0, PC; dword_6BD8E0
2299BC:  STR.W           R0, [SP,#0x5C0+var_11C]
2299C0:  LDR             R0, [SP,#0x5C0+var_55C]
2299C2:  LDR.W           R0, [R11,R0,LSL#2]
2299C6:  STR             R0, [SP,#0x5C0+var_554]
2299C8:  LDR             R0, [SP,#0x5C0+var_548]
2299CA:  LDR.W           R6, [R9]
2299CE:  MOV             R3, R0
2299D0:  LDR             R0, [R3]
2299D2:  STR             R1, [SP,#0x5C0+var_534]
2299D4:  LDR.W           R1, [R11,R5,LSL#2]
2299D8:  ADD.W           R5, R0, R8
2299DC:  LDRB.W          R10, [R6]
2299E0:  MOV             R8, R11
2299E2:  LDRB.W          R11, [R6,#1]
2299E6:  ADD.W           R4, R6, R5,ASR#3
2299EA:  LDRB            R6, [R6,#2]
2299EC:  STR.W           R4, [R9]
2299F0:  AND.W           R4, R5, #7
2299F4:  STR             R4, [R3]
2299F6:  ORR.W           R3, R11, R10,LSL#8
2299FA:  LDR             R2, [R2]
2299FC:  MOVW            R5, #0x5B88
229A00:  ORR.W           R3, R6, R3,LSL#8
229A04:  LDR             R4, [SP,#0x5C0+var_544]
229A06:  MOV             R11, R8
229A08:  MOV.W           R10, #0
229A0C:  LSL.W           R0, R3, R0
229A10:  RSB.W           R3, LR, #0x18
229A14:  BIC.W           R0, R0, #0xFF000000
229A18:  ADD             R4, R5
229A1A:  ADD.W           R11, R11, #0x18
229A1E:  LSRS            R0, R3
229A20:  ADD.W           R2, R2, R0,LSL#2
229A24:  ADD.W           R2, R2, R0,LSL#2
229A28:  LDR.W           R3, [R2,R0,LSL#2]
229A2C:  ADD.W           R3, R4, R3,LSL#9
229A30:  ADD.W           R3, R3, R1,LSL#3
229A34:  VLDR            D16, [R3]
229A38:  LDR             R3, [SP,#0x5C0+var_558]
229A3A:  ADD             R3, R12
229A3C:  VSTR            D16, [R3]
229A40:  LDR.W           R5, [R2,R0,LSL#2]
229A44:  ADD.W           R0, R2, R0,LSL#2
229A48:  LDR             R6, [SP,#0x5C0+var_554]
229A4A:  ADD.W           R5, R4, R5,LSL#9
229A4E:  ADD.W           R5, R5, R6,LSL#3
229A52:  VLDR            D16, [R5]
229A56:  ADD.W           R5, R3, #0x400
229A5A:  VSTR            D16, [R5]
229A5E:  MOV             R5, #0xFFFFFF00
229A62:  LDR             R2, [R0,#4]
229A64:  ADD.W           R2, R4, R2,LSL#9
229A68:  ADD.W           R2, R2, R1,LSL#3
229A6C:  VLDR            D16, [R2]
229A70:  VSTR            D16, [R3,#0x100]
229A74:  LDR             R2, [R0,#4]
229A76:  ADD.W           R2, R4, R2,LSL#9
229A7A:  ADD.W           R2, R2, R6,LSL#3
229A7E:  VLDR            D16, [R2]
229A82:  ADD.W           R2, R3, #0x500
229A86:  VSTR            D16, [R2]
229A8A:  LDR             R2, [R0,#8]
229A8C:  ADD.W           R2, R4, R2,LSL#9
229A90:  ADD.W           R2, R2, R1,LSL#3
229A94:  LDRD.W          LR, R1, [SP,#0x5C0+var_538]
229A98:  LDR.W           R8, [SP,#0x5C0+var_564]
229A9C:  VLDR            D16, [R2]
229AA0:  LDR             R2, [SP,#0x5C0+var_53C]
229AA2:  VSTR            D16, [R3,#0x200]
229AA6:  LDR             R0, [R0,#8]
229AA8:  ADD.W           R0, R4, R0,LSL#9
229AAC:  ADD.W           R0, R0, R6,LSL#3
229AB0:  VLDR            D16, [R0]
229AB4:  ADD.W           R0, R3, #0x600
229AB8:  VSTR            D16, [R0]
229ABC:  B               loc_229C5C
229ABE:  LDR             R0, [SP,#0x5C0+var_558]
229AC0:  STR.W           R10, [R0,R12]
229AC4:  ADD             R0, R12
229AC6:  STR.W           R10, [R0,#0x600]
229ACA:  STR.W           R10, [R0,#0x604]
229ACE:  STR.W           R10, [R0,#4]
229AD2:  STRD.W          R10, R10, [R0,#0x100]
229AD6:  STRD.W          R10, R10, [R0,#0x200]
229ADA:  STR.W           R10, [R0,#0x400]
229ADE:  STR.W           R10, [R0,#0x404]
229AE2:  STR.W           R10, [R0,#0x500]
229AE6:  STR.W           R10, [R0,#0x504]
229AEA:  B               loc_229C5C
229AEC:  LDR.W           LR, [SP,#0x5C0+var_54C]
229AF0:  MOVW            R2, #0x5B88
229AF4:  LDR             R3, [SP,#0x5C0+var_55C]
229AF6:  LDR             R4, [SP,#0x5C0+var_544]
229AF8:  LDR.W           R0, [LR]
229AFC:  LDR.W           R10, [R11,R3,LSL#2]
229B00:  ADD.W           R4, R4, R8,LSL#9
229B04:  ADD             R2, R4
229B06:  LDRB            R3, [R0]
229B08:  LDRB            R6, [R0,#1]
229B0A:  LDRB            R5, [R0,#2]
229B0C:  STR.W           R11, [SP,#0x5C0+var_534]
229B10:  ORR.W           R3, R6, R3,LSL#8
229B14:  LDR.W           R11, [SP,#0x5C0+var_548]
229B18:  STR             R2, [SP,#0x5C0+var_560]
229B1A:  ORR.W           R3, R5, R3,LSL#8
229B1E:  RSB.W           R5, R8, #0x18
229B22:  ADD.W           R2, R2, R10,LSL#3
229B26:  LDR.W           R6, [R11]
229B2A:  STR             R5, [SP,#0x5C0+var_554]
229B2C:  ADD.W           R4, R6, R8
229B30:  LSLS            R3, R6
229B32:  BIC.W           R3, R3, #0xFF000000
229B36:  ADD.W           R0, R0, R4,ASR#3
229B3A:  LSRS            R3, R5
229B3C:  ADD             R3, R9
229B3E:  VMOV            S0, R3
229B42:  VCVT.F64.S32    D16, S0
229B46:  VLDR            D17, [R2]
229B4A:  STR.W           R0, [LR]
229B4E:  AND.W           R0, R4, #7
229B52:  STR.W           R0, [R11]
229B56:  LDR             R0, [SP,#0x5C0+var_558]
229B58:  ADD.W           R4, R0, R12
229B5C:  VSTR            D16, [R4]
229B60:  LDR.W           R2, [LR]
229B64:  LDR.W           R0, [R11]
229B68:  ADD.W           R3, R0, R8
229B6C:  LDRB.W          R10, [R2]
229B70:  LDRB            R6, [R2,#1]
229B72:  ADD.W           R5, R2, R3,ASR#3
229B76:  LDRB            R2, [R2,#2]
229B78:  STR.W           R5, [LR]
229B7C:  ORR.W           R5, R6, R10,LSL#8
229B80:  AND.W           R3, R3, #7
229B84:  MOV.W           R10, #0
229B88:  ORR.W           R2, R2, R5,LSL#8
229B8C:  LSL.W           R0, R2, R0
229B90:  LDR             R2, [SP,#0x5C0+var_554]
229B92:  BIC.W           R0, R0, #0xFF000000
229B96:  LSRS            R0, R2
229B98:  ADD             R0, R9
229B9A:  VMOV            S0, R0
229B9E:  VCVT.F64.S32    D16, S0
229BA2:  STR.W           R3, [R11]
229BA6:  VSTR            D16, [R4,#0x100]
229BAA:  LDR.W           R3, [LR]
229BAE:  LDR.W           R0, [R11]
229BB2:  LDRB            R6, [R3]
229BB4:  ADD.W           R2, R0, R8
229BB8:  STR             R6, [SP,#0x5C0+var_568]
229BBA:  ADD.W           R5, R3, R2,ASR#3
229BBE:  LDRB            R6, [R3,#1]
229BC0:  LDRB            R3, [R3,#2]
229BC2:  AND.W           R2, R2, #7
229BC6:  STR.W           R5, [LR]
229BCA:  MOV             R5, #0xFFFFFF00
229BCE:  LDR.W           LR, [SP,#0x5C0+var_538]
229BD2:  LDR.W           R8, [SP,#0x5C0+var_564]
229BD6:  STR.W           R2, [R11]
229BDA:  LDR             R2, [SP,#0x5C0+var_568]
229BDC:  VLDR            D16, [R4]
229BE0:  VLDR            D18, [R4,#0x100]
229BE4:  ORR.W           R2, R6, R2,LSL#8
229BE8:  LDR.W           R11, [SP,#0x5C0+var_534]
229BEC:  VMUL.F64        D20, D17, D18
229BF0:  ORR.W           R2, R3, R2,LSL#8
229BF4:  LDR             R3, [SP,#0x5C0+var_554]
229BF6:  LSL.W           R0, R2, R0
229BFA:  LDR             R2, [SP,#0x5C0+var_53C]
229BFC:  BIC.W           R0, R0, #0xFF000000
229C00:  LSRS            R0, R3
229C02:  ADD             R0, R9
229C04:  VMOV            S0, R0
229C08:  ADD.W           R0, R4, #0x500
229C0C:  VMUL.F64        D21, D17, D16
229C10:  VCVT.F64.S32    D19, S0
229C14:  VMUL.F64        D17, D17, D19
229C18:  VSTR            D20, [R0]
229C1C:  ADD.W           R0, R4, #0x400
229C20:  VSTR            D21, [R0]
229C24:  ADD.W           R0, R4, #0x600
229C28:  VSTR            D19, [R4,#0x200]
229C2C:  VSTR            D17, [R0]
229C30:  LDR             R0, [SP,#0x5C0+var_540]
229C32:  LDR             R3, [SP,#0x5C0+var_560]
229C34:  LDR.W           R0, [R11,R0,LSL#2]
229C38:  ADD.W           R11, R11, #0x18
229C3C:  ADD.W           R0, R3, R0,LSL#3
229C40:  VLDR            D17, [R0]
229C44:  VMUL.F64        D18, D18, D17
229C48:  VMUL.F64        D16, D16, D17
229C4C:  VMUL.F64        D17, D17, D19
229C50:  VSTR            D18, [R4,#0x100]
229C54:  VSTR            D16, [R4]
229C58:  VSTR            D17, [R4,#0x200]
229C5C:  MOVS            R0, #1
229C5E:  SUBS            R1, #1
229C60:  LSL.W           R0, R0, LR
229C64:  ADD.W           R12, R12, #8
229C68:  ADD.W           R2, R2, R0,LSL#2
229C6C:  BNE.W           loc_229958
229C70:  LDR             R0, [SP,#0x5C0+var_58C]
229C72:  LDR             R1, [SP,#0x5C0+var_56C]
229C74:  LDR             R0, [R0]
229C76:  CMP             R1, R0
229C78:  IT GT
229C7A:  MOVGT           R1, R0
229C7C:  MOV             R3, R1
229C7E:  CMP             R1, #0x1F
229C80:  BGT             loc_229CB6
229C82:  LDR             R0, [SP,#0x5C0+var_5A8]
229C84:  ADD.W           R0, R0, R3,LSL#3
229C88:  ADDS            R0, #8
229C8A:  CMP.W           R8, #1
229C8E:  BLT             loc_229CAC
229C90:  MOV             R1, R0
229C92:  MOV             R2, R8
229C94:  STR.W           R10, [R1,R5]
229C98:  SUBS            R2, #1
229C9A:  STRD.W          R10, R10, [R1,#0x100]
229C9E:  STR.W           R10, [R1,#-0xFC]
229CA2:  STRD.W          R10, R10, [R1]
229CA6:  ADD.W           R1, R1, #0x400
229CAA:  BNE             loc_229C94
229CAC:  ADDS            R1, R3, #1
229CAE:  ADDS            R0, #8
229CB0:  CMP             R3, #0x1F
229CB2:  MOV             R3, R1
229CB4:  BLT             loc_229C8A
229CB6:  LDR             R0, [SP,#0x5C0+var_578]
229CB8:  ADDS            R0, #1
229CBA:  BEQ             loc_229CE2
229CBC:  LDR             R0, [SP,#0x5C0+var_598]
229CBE:  LDR             R5, [SP,#0x5C0+var_544]
229CC0:  MOV             R6, R0
229CC2:  LDR             R0, [SP,#0x5C0+var_59C]
229CC4:  LDR             R2, [R6]
229CC6:  MOV             R1, R5
229CC8:  BLX             R2
229CCA:  LDR             R1, [SP,#0x5C0+var_574]
229CCC:  LDR             R2, [R6]
229CCE:  ADDS            R4, R0, R1
229CD0:  LDR             R0, [SP,#0x5C0+var_5A4]
229CD2:  MOV             R1, R5
229CD4:  BLX             R2
229CD6:  ADD             R4, R0
229CD8:  LDR             R2, [R6]
229CDA:  LDR             R0, [SP,#0x5C0+var_5A0]
229CDC:  MOV             R1, R5
229CDE:  BLX             R2
229CE0:  B               loc_229D0C
229CE2:  LDR             R0, [SP,#0x5C0+var_5AC]
229CE4:  LDR             R5, [SP,#0x5C0+var_544]
229CE6:  LDR             R1, [SP,#0x5C0+var_5BC]
229CE8:  MOV             R6, R0
229CEA:  LDR             R0, [SP,#0x5C0+var_594]
229CEC:  LDR             R3, [R6]
229CEE:  MOV             R2, R5
229CF0:  BLX             R3
229CF2:  LDR             R1, [SP,#0x5C0+var_574]
229CF4:  MOV             R2, R5
229CF6:  LDR             R3, [R6]
229CF8:  ADDS            R4, R0, R1
229CFA:  LDR             R0, [SP,#0x5C0+var_590]
229CFC:  LDR             R1, [SP,#0x5C0+var_5B8]
229CFE:  BLX             R3
229D00:  LDR             R3, [R6]
229D02:  ADD             R4, R0
229D04:  LDRD.W          R0, R1, [SP,#0x5C0+var_5B4]
229D08:  MOV             R2, R5
229D0A:  BLX             R3
229D0C:  ADD             R0, R4
229D0E:  STR             R0, [SP,#0x5C0+var_574]
229D10:  LDR             R0, [SP,#0x5C0+var_570]
229D12:  MOV             R5, #0xFFFFFF00
229D16:  ADDS            R0, #1
229D18:  CMP             R0, #0xC
229D1A:  BNE.W           loc_22968C
229D1E:  LDR             R0, [SP,#0x5C0+var_574]
229D20:  ADD.W           SP, SP, #0x590
229D24:  VPOP            {D8-D9}
229D28:  ADD             SP, SP, #4
229D2A:  POP.W           {R8-R11}
229D2E:  POP             {R4-R7,PC}
229D30:  LDR             R0, =(off_677664 - 0x229D3A)
229D32:  MOVS            R1, #0x2E ; '.'; size
229D34:  MOVS            R2, #1; n
229D36:  ADD             R0, PC; off_677664
229D38:  LDR             R0, [R0]
229D3A:  LDR             R3, [R0]; s
229D3C:  ADR             R0, aTruncatingSter; "Truncating stereo boundary to sideband "...
229D3E:  BLX             fwrite
229D42:  LDR             R0, [SP,#0x5C0+var_580]
229D44:  LDR             R2, [R0]
229D46:  LDR             R0, [SP,#0x5C0+var_588]
229D48:  MOV             R4, R2
229D4A:  STR             R2, [R0]
229D4C:  LDR             R0, [SP,#0x5C0+var_584]
229D4E:  LDR             R5, [R0]
229D50:  LDR             R0, [SP,#0x5C0+var_57C]
229D52:  LDR             R1, [R0]
229D54:  B.W             loc_2291E4
