; =========================================================
; Game Engine Function: silk_NLSF2A
; Address            : 0x19125C - 0x1915A4
; =========================================================

19125C:  PUSH            {R4-R7,LR}
19125E:  ADD             R7, SP, #0xC
191260:  PUSH.W          {R8-R11}
191264:  SUB             SP, SP, #0x13C
191266:  MOV             R11, R0
191268:  LDR             R0, =(__stack_chk_guard_ptr - 0x191272)
19126A:  MOV             R8, R2
19126C:  ADR             R2, byte_1915A8
19126E:  ADD             R0, PC; __stack_chk_guard_ptr
191270:  CMP.W           R8, #0x10
191274:  LDR             R0, [R0]; __stack_chk_guard
191276:  LDR             R0, [R0]
191278:  STR             R0, [SP,#0x158+var_20]
19127A:  ADR             R0, dword_1915B4
19127C:  IT NE
19127E:  MOVNE           R0, R2
191280:  CMP.W           R8, #1
191284:  BLT             loc_1912D8
191286:  LDR             R2, =(silk_LSFCosTab_FIX_Q12_ptr - 0x191296)
191288:  ADD.W           LR, SP, #0x158+var_80
19128C:  MOV.W           R12, #1
191290:  MOV             R5, R8
191292:  ADD             R2, PC; silk_LSFCosTab_FIX_Q12_ptr
191294:  LDR.W           R9, [R2]; silk_LSFCosTab_FIX_Q12
191298:  LDRSH.W         R4, [R1],#2
19129C:  SUBS            R5, #1
19129E:  BIC.W           R2, R4, #0xFF
1912A2:  MOV.W           R3, R4,ASR#8
1912A6:  SUB.W           R2, R4, R2
1912AA:  LDRSH.W         R6, [R9,R3,LSL#1]
1912AE:  ADD.W           R3, R9, R3,LSL#1
1912B2:  LDRSH.W         R3, [R3,#2]
1912B6:  SUB.W           R3, R3, R6
1912BA:  MUL.W           R2, R3, R2
1912BE:  LDRB.W          R3, [R0],#1
1912C2:  ADD.W           R2, R2, R6,LSL#8
1912C6:  ADD.W           R2, R12, R2,ASR#3
1912CA:  MOV.W           R2, R2,ASR#1
1912CE:  STR.W           R2, [LR,R3,LSL#2]
1912D2:  BNE             loc_191298
1912D4:  LDR             R0, [SP,#0x158+var_80]
1912D6:  B               loc_1912D8
1912D8:  RSB.W           R9, R0, #0
1912DC:  MOV.W           R10, R8,ASR#1
1912E0:  CMP.W           R10, #2
1912E4:  MOV.W           R0, #0x10000
1912E8:  STR.W           R9, [SP,#0x158+var_B0]
1912EC:  STR             R0, [SP,#0x158+var_B4]
1912EE:  BLT             loc_1913C4
1912F0:  ADD             R2, SP, #0x158+var_B4
1912F2:  MOVS            R0, #2
1912F4:  MOVS            R1, #1
1912F6:  MOV.W           R5, #0x10000
1912FA:  STR             R0, [SP,#0x158+var_14C]
1912FC:  STR             R2, [SP,#0x158+var_150]
1912FE:  B               loc_191318
191300:  LDR             R0, [SP,#0x158+var_150]
191302:  ADD             R2, SP, #0x158+var_B4
191304:  ADDS            R0, #4
191306:  STR             R0, [SP,#0x158+var_150]
191308:  LDR             R0, [SP,#0x158+var_14C]
19130A:  LDR.W           R5, [R2,R1,LSL#2]
19130E:  MOV             R1, R3
191310:  ADDS            R0, #1
191312:  LDR.W           R9, [R2,R3,LSL#2]
191316:  STR             R0, [SP,#0x158+var_14C]
191318:  ADD             R0, SP, #0x158+var_80
19131A:  LDR.W           R6, [R0,R1,LSL#3]
19131E:  SMULL.W         R3, R4, R6, R9
191322:  LSRS            R3, R3, #0xF
191324:  ORR.W           R3, R3, R4,LSL#17
191328:  LSRS            R4, R4, #0xF
19132A:  ADDS            R3, #1
19132C:  ADC.W           R4, R4, #0
191330:  MOVS.W          R4, R4,LSR#1
191334:  MOV.W           R3, R3,RRX
191338:  CMP             R1, #2
19133A:  RSB.W           R4, R3, R5,LSL#1
19133E:  ADD.W           R3, R1, #1
191342:  STR.W           R4, [R2,R3,LSL#2]
191346:  BLT             loc_1913B8
191348:  SMULL.W         R4, R2, R5, R6
19134C:  ADD             R0, SP, #0x158+var_B4
19134E:  ADD.W           R5, R0, R1,LSL#2
191352:  LDR.W           R5, [R5,#-8]
191356:  LSRS            R4, R4, #0xF
191358:  ORR.W           R4, R4, R2,LSL#17
19135C:  LSRS            R2, R2, #0xF
19135E:  ADDS            R4, #1
191360:  ADC.W           R2, R2, #0
191364:  MOVS.W          R2, R2,LSR#1
191368:  MOV.W           R2, R4,RRX
19136C:  ADD.W           R4, R5, R9
191370:  CMP             R1, #2
191372:  SUB.W           R2, R4, R2
191376:  STR.W           R2, [R0,R1,LSL#2]
19137A:  BEQ             loc_1913B8
19137C:  LDRD.W          R2, R9, [SP,#0x158+var_150]
191380:  SMULL.W         R4, LR, R5, R6
191384:  LDR.W           R12, [R2]
191388:  LDR.W           R5, [R2,#-8]
19138C:  SUB.W           R9, R9, #1
191390:  LSRS            R4, R4, #0xF
191392:  MOV.W           R0, LR,LSR#15
191396:  ORR.W           R4, R4, LR,LSL#17
19139A:  ADDS            R4, #1
19139C:  ADC.W           R0, R0, #0
1913A0:  MOVS.W          R0, R0,LSR#1
1913A4:  MOV.W           R0, R4,RRX
1913A8:  ADD.W           R4, R5, R12
1913AC:  SUBS            R0, R4, R0
1913AE:  STR.W           R0, [R2],#-4
1913B2:  CMP.W           R9, #3
1913B6:  BGT             loc_191380
1913B8:  LDR             R0, [SP,#0x158+var_B0]
1913BA:  CMP             R3, R10
1913BC:  SUB.W           R0, R0, R6
1913C0:  STR             R0, [SP,#0x158+var_B0]
1913C2:  BNE             loc_191300
1913C4:  LDR             R0, [SP,#0x158+var_7C]
1913C6:  MOV.W           R1, #0x10000
1913CA:  CMP.W           R10, #2
1913CE:  STR             R1, [SP,#0x158+var_E8]
1913D0:  RSB.W           R2, R0, #0
1913D4:  STR             R2, [SP,#0x158+var_E4]
1913D6:  BLT             loc_1914B4
1913D8:  ADD             R0, SP, #0x158+var_80
1913DA:  ADD             R1, SP, #0x158+var_E8
1913DC:  ADD.W           R12, R0, #4
1913E0:  MOVS            R0, #2
1913E2:  MOV.W           LR, #1
1913E6:  MOV.W           R5, #0x10000
1913EA:  STR             R0, [SP,#0x158+var_14C]
1913EC:  STR             R1, [SP,#0x158+var_150]
1913EE:  B               loc_191408
1913F0:  LDR             R0, [SP,#0x158+var_150]
1913F2:  ADD             R1, SP, #0x158+var_E8
1913F4:  ADDS            R0, #4
1913F6:  STR             R0, [SP,#0x158+var_150]
1913F8:  LDR             R0, [SP,#0x158+var_14C]
1913FA:  LDR.W           R5, [R1,LR,LSL#2]
1913FE:  MOV             LR, R9
191400:  ADDS            R0, #1
191402:  LDR.W           R2, [R1,R9,LSL#2]
191406:  STR             R0, [SP,#0x158+var_14C]
191408:  LDR.W           R6, [R12,LR,LSL#3]
19140C:  ADD.W           R9, LR, #1
191410:  SMULL.W         R3, R4, R6, R2
191414:  LSRS            R3, R3, #0xF
191416:  ORR.W           R3, R3, R4,LSL#17
19141A:  LSRS            R4, R4, #0xF
19141C:  ADDS            R3, #1
19141E:  ADC.W           R4, R4, #0
191422:  MOVS.W          R4, R4,LSR#1
191426:  MOV.W           R3, R3,RRX
19142A:  CMP.W           LR, #2
19142E:  RSB.W           R4, R3, R5,LSL#1
191432:  STR.W           R4, [R1,R9,LSL#2]
191436:  BLT             loc_1914A8
191438:  MOV             R1, R12
19143A:  SMULL.W         R4, R12, R5, R6
19143E:  ADD             R0, SP, #0x158+var_E8
191440:  MOV             R3, R0
191442:  ADD.W           R5, R3, LR,LSL#2
191446:  LDR.W           R5, [R5,#-8]
19144A:  LSRS            R4, R4, #0xF
19144C:  MOV.W           R0, R12,LSR#15
191450:  ORR.W           R4, R4, R12,LSL#17
191454:  MOV             R12, R1
191456:  ADDS            R4, #1
191458:  ADD             R2, R5
19145A:  ADC.W           R0, R0, #0
19145E:  MOVS.W          R0, R0,LSR#1
191462:  MOV.W           R0, R4,RRX
191466:  CMP.W           LR, #2
19146A:  SUB.W           R0, R2, R0
19146E:  STR.W           R0, [R3,LR,LSL#2]
191472:  BEQ             loc_1914A8
191474:  LDRD.W          R2, R4, [SP,#0x158+var_150]
191478:  SMULL.W         R0, R3, R5, R6
19147C:  LDR             R1, [R2]
19147E:  LDR.W           R5, [R2,#-8]
191482:  SUBS            R4, #1
191484:  ADD             R1, R5
191486:  LSRS            R0, R0, #0xF
191488:  ORR.W           R0, R0, R3,LSL#17
19148C:  LSRS            R3, R3, #0xF
19148E:  ADDS            R0, #1
191490:  ADC.W           R3, R3, #0
191494:  MOVS.W          R3, R3,LSR#1
191498:  MOV.W           R0, R0,RRX
19149C:  CMP             R4, #3
19149E:  SUB.W           R0, R1, R0
1914A2:  STR.W           R0, [R2],#-4
1914A6:  BGT             loc_191478
1914A8:  LDR             R0, [SP,#0x158+var_E4]
1914AA:  CMP             R9, R10
1914AC:  SUB.W           R0, R0, R6
1914B0:  STR             R0, [SP,#0x158+var_E4]
1914B2:  BNE             loc_1913F0
1914B4:  CMP.W           R10, #1
1914B8:  BLT             loc_1914FC
1914BA:  ADD             R1, SP, #0x158+var_148
1914BC:  LDR.W           R12, [SP,#0x158+var_E8]
1914C0:  ADD.W           R0, R1, R8,LSL#2
1914C4:  LDR             R4, [SP,#0x158+var_B4]
1914C6:  SUBS            R2, R0, #4
1914C8:  ADD             R0, SP, #0x158+var_B4
1914CA:  ADDS            R3, R0, #4
1914CC:  ADD             R0, SP, #0x158+var_E8
1914CE:  ADDS            R6, R0, #4
1914D0:  LDR.W           LR, [R3],#4
1914D4:  SUBS.W          R10, R10, #1
1914D8:  LDR.W           R9, [R6],#4
1914DC:  ADD             R4, LR
1914DE:  SUB.W           R0, R9, R12
1914E2:  ADD.W           R5, R0, R4
1914E6:  SUB.W           R0, R0, R4
1914EA:  RSB.W           R5, R5, #0
1914EE:  STR.W           R5, [R1],#4
1914F2:  STR.W           R0, [R2],#-4
1914F6:  MOV             R12, R9
1914F8:  MOV             R4, LR
1914FA:  BNE             loc_1914D0
1914FC:  ADD             R6, SP, #0x158+var_148
1914FE:  MOV             R0, R11
191500:  MOVS            R2, #0xC
191502:  MOVS            R3, #0x11
191504:  MOV             R1, R6
191506:  STR.W           R8, [SP,#0x158+var_158]
19150A:  BLX             j_silk_LPC_fit
19150E:  MOV             R0, R11
191510:  MOV             R1, R8
191512:  BLX             j_silk_LPC_inverse_pred_gain_c
191516:  CBZ             R0, loc_191532
191518:  LDR             R0, =(__stack_chk_guard_ptr - 0x191520)
19151A:  LDR             R1, [SP,#0x158+var_20]
19151C:  ADD             R0, PC; __stack_chk_guard_ptr
19151E:  LDR             R0, [R0]; __stack_chk_guard
191520:  LDR             R0, [R0]
191522:  SUBS            R0, R0, R1
191524:  ITTT EQ
191526:  ADDEQ           SP, SP, #0x13C
191528:  POPEQ.W         {R8-R11}
19152C:  POPEQ           {R4-R7,PC}
19152E:  BLX             __stack_chk_fail
191532:  CMP.W           R8, #0
191536:  BLE             loc_19157A
191538:  MOVS            R5, #0
19153A:  MOV.W           R9, #2
19153E:  MOVS            R4, #1
191540:  LSL.W           R0, R9, R5
191544:  RSB.W           R2, R0, #0x10000
191548:  MOV             R0, R6
19154A:  MOV             R1, R8
19154C:  BLX             j_silk_bwexpander_32
191550:  MOVS            R0, #0
191552:  LDR.W           R1, [R6,R0,LSL#2]
191556:  ADD.W           R1, R4, R1,LSR#4
19155A:  LSRS            R1, R1, #1
19155C:  STRH.W          R1, [R11,R0,LSL#1]
191560:  ADDS            R0, #1
191562:  CMP             R8, R0
191564:  BNE             loc_191552
191566:  MOV             R0, R11
191568:  MOV             R1, R8
19156A:  BLX             j_silk_LPC_inverse_pred_gain_c
19156E:  CMP             R5, #0xE
191570:  BGT             loc_191518
191572:  ADDS            R5, #1
191574:  CMP             R0, #0
191576:  BEQ             loc_191540
191578:  B               loc_191518
19157A:  ADD             R6, SP, #0x158+var_148
19157C:  MOVS            R4, #0
19157E:  MOVS            R5, #2
191580:  LSL.W           R0, R5, R4
191584:  RSB.W           R2, R0, #0x10000
191588:  MOV             R0, R6
19158A:  MOV             R1, R8
19158C:  BLX             j_silk_bwexpander_32
191590:  MOV             R0, R11
191592:  MOV             R1, R8
191594:  BLX             j_silk_LPC_inverse_pred_gain_c
191598:  CMP             R4, #0xE
19159A:  BGT             loc_191518
19159C:  ADDS            R4, #1
19159E:  CMP             R0, #0
1915A0:  BEQ             loc_191580
1915A2:  B               loc_191518
