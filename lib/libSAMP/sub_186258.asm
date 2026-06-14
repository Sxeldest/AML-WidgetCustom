; =========================================================
; Game Engine Function: sub_186258
; Address            : 0x186258 - 0x186522
; =========================================================

186258:  PUSH            {R4-R7,LR}
18625A:  ADD             R7, SP, #0xC
18625C:  PUSH.W          {R8-R11}
186260:  SUB             SP, SP, #0xDC
186262:  ADD.W           R10, SP, #0xF8+var_3C
186266:  MOV             R9, R1
186268:  MOV             R5, R0
18626A:  VMOV.I32        Q8, #0
18626E:  ADD.W           R0, R10, #4
186272:  MOVS            R1, #0xC
186274:  VST1.32         {D16-D17}, [R0],R1
186278:  ADD             R6, SP, #0xF8+var_A0
18627A:  VST1.32         {D16-D17}, [R0]
18627E:  MOVS            R0, #1
186280:  MOV             R1, R6
186282:  STR             R0, [SP,#0xF8+var_3C]
186284:  MOV             R0, R5
186286:  BL              sub_18553A
18628A:  ADD             R4, SP, #0xF8+var_C0
18628C:  ADD             R2, SP, #0xF8+var_E0; int
18628E:  MOV             R0, R5; int
186290:  MOV             R1, R6; int
186292:  MOV             R3, R4
186294:  BL              sub_185988
186298:  LDR             R0, [SP,#0xF8+var_C0]
18629A:  CBNZ            R0, loc_1862B6
18629C:  ADDS            R0, R4, #4
18629E:  MOVS            R2, #0
1862A0:  MOV             R1, R2
1862A2:  CMP             R2, #7
1862A4:  BEQ             loc_1862B0
1862A6:  LDR.W           R3, [R0,R1,LSL#2]
1862AA:  ADDS            R2, R1, #1
1862AC:  CMP             R3, #0
1862AE:  BEQ             loc_1862A0
1862B0:  CMP             R1, #6
1862B2:  BHI.W           loc_186504
1862B6:  ADD.W           R11, SP, #0xF8+var_60
1862BA:  STR             R5, [SP,#0xF8+var_E4]
1862BC:  VLD1.32         {D16-D17}, [R5]!
1862C0:  ADD.W           R8, SP, #0xF8+var_E0
1862C4:  MOV             R0, R11
1862C6:  VLD1.32         {D18-D19}, [R5]
1862CA:  MOV             R1, R8
1862CC:  VST1.64         {D16-D17}, [R0]!
1862D0:  VST1.64         {D18-D19}, [R0]
1862D4:  MOV             R0, R11
1862D6:  BL              sub_185174
1862DA:  ADD             R5, SP, #0xF8+var_A0
1862DC:  ADD             R4, SP, #0xF8+var_C0
1862DE:  MOV             R2, R8; int
1862E0:  MOV             R0, R5; int
1862E2:  MOV             R1, R4; int
1862E4:  MOV             R3, R5
1862E6:  BL              sub_185988
1862EA:  LDR             R0, [SP,#0xF8+var_A0]
1862EC:  CBNZ            R0, loc_186308
1862EE:  ADDS            R0, R5, #4
1862F0:  MOVS            R2, #0
1862F2:  MOV             R1, R2
1862F4:  CMP             R2, #7
1862F6:  BEQ             loc_186302
1862F8:  LDR.W           R3, [R0,R1,LSL#2]
1862FC:  ADDS            R2, R1, #1
1862FE:  CMP             R3, #0
186300:  BEQ             loc_1862F2
186302:  CMP             R1, #6
186304:  BHI.W           loc_186508
186308:  LDR.W           R8, [SP,#0xF8+var_E4]
18630C:  MOV             R6, R10
18630E:  STR.W           R9, [SP,#0xF8+var_F0]
186312:  ADD.W           R10, SP, #0xF8+var_80
186316:  ADD.W           R9, SP, #0xF8+var_E0
18631A:  ADDS            R0, R5, #4
18631C:  STR             R0, [SP,#0xF8+var_EC]
18631E:  ADDS            R0, R4, #4
186320:  STR             R0, [SP,#0xF8+var_E8]
186322:  MOV             R0, R9
186324:  MOV             R1, R11
186326:  MOV             R2, R6
186328:  MOV             R3, R8
18632A:  STR.W           R10, [SP,#0xF8+var_F8]
18632E:  BL              sub_185B6C
186332:  MOV             R0, R4; int
186334:  MOV             R1, R5; int
186336:  MOV             R2, R9; int
186338:  MOV             R3, R4
18633A:  BL              sub_185988
18633E:  LDR             R0, [SP,#0xF8+var_C0]
186340:  CBNZ            R0, loc_186372
186342:  LDR             R3, [SP,#0xF8+var_E8]
186344:  MOVS            R1, #0
186346:  MOV             R0, R1
186348:  CMP             R1, #7
18634A:  BEQ             loc_186356
18634C:  LDR.W           R2, [R3,R0,LSL#2]
186350:  ADDS            R1, R0, #1
186352:  CMP             R2, #0
186354:  BEQ             loc_186346
186356:  LDR.W           R8, [SP,#0xF8+var_E4]
18635A:  ADD             R6, SP, #0xF8+var_3C
18635C:  ADD.W           R11, SP, #0xF8+var_60
186360:  ADD             R4, SP, #0xF8+var_C0
186362:  ADD             R5, SP, #0xF8+var_A0
186364:  ADD.W           R9, SP, #0xF8+var_E0
186368:  ADD.W           R10, SP, #0xF8+var_80
18636C:  CMP             R0, #6
18636E:  BHI.W           loc_1864F8
186372:  MOV             R0, R9
186374:  MOV             R1, R10
186376:  MOV             R2, R11
186378:  MOV             R3, R8
18637A:  STR             R6, [SP,#0xF8+var_F8]
18637C:  BL              sub_185B6C
186380:  MOV             R0, R5; int
186382:  MOV             R1, R4; int
186384:  MOV             R2, R9; int
186386:  MOV             R3, R5
186388:  BL              sub_185988
18638C:  LDR             R0, [SP,#0xF8+var_A0]
18638E:  CBNZ            R0, loc_1863C0
186390:  LDR             R3, [SP,#0xF8+var_EC]
186392:  MOVS            R1, #0
186394:  MOV             R0, R1
186396:  CMP             R1, #7
186398:  BEQ             loc_1863A4
18639A:  LDR.W           R2, [R3,R0,LSL#2]
18639E:  ADDS            R1, R0, #1
1863A0:  CMP             R2, #0
1863A2:  BEQ             loc_186394
1863A4:  LDR.W           R8, [SP,#0xF8+var_E4]
1863A8:  ADD             R6, SP, #0xF8+var_3C
1863AA:  ADD.W           R11, SP, #0xF8+var_60
1863AE:  ADD             R4, SP, #0xF8+var_C0
1863B0:  ADD             R5, SP, #0xF8+var_A0
1863B2:  ADD.W           R9, SP, #0xF8+var_E0
1863B6:  ADD.W           R10, SP, #0xF8+var_80
1863BA:  CMP             R0, #6
1863BC:  BHI.W           loc_1864FC
1863C0:  MOV             R0, R9
1863C2:  MOV             R1, R6
1863C4:  MOV             R2, R10
1863C6:  MOV             R3, R8
1863C8:  STR.W           R11, [SP,#0xF8+var_F8]
1863CC:  BL              sub_185B6C
1863D0:  MOV             R0, R4; int
1863D2:  MOV             R1, R5; int
1863D4:  MOV             R2, R9; int
1863D6:  MOV             R3, R4
1863D8:  BL              sub_185988
1863DC:  LDR             R0, [SP,#0xF8+var_C0]
1863DE:  CBNZ            R0, loc_18640E
1863E0:  LDR             R3, [SP,#0xF8+var_E8]
1863E2:  MOVS            R1, #0
1863E4:  MOV             R0, R1
1863E6:  CMP             R1, #7
1863E8:  BEQ             loc_1863F4
1863EA:  LDR.W           R2, [R3,R0,LSL#2]
1863EE:  ADDS            R1, R0, #1
1863F0:  CMP             R2, #0
1863F2:  BEQ             loc_1863E4
1863F4:  LDR.W           R8, [SP,#0xF8+var_E4]
1863F8:  ADD             R6, SP, #0xF8+var_3C
1863FA:  ADD.W           R11, SP, #0xF8+var_60
1863FE:  ADD             R4, SP, #0xF8+var_C0
186400:  ADD             R5, SP, #0xF8+var_A0
186402:  ADD.W           R9, SP, #0xF8+var_E0
186406:  ADD.W           R10, SP, #0xF8+var_80
18640A:  CMP             R0, #6
18640C:  BHI             loc_1864F4
18640E:  MOV             R0, R9
186410:  MOV             R1, R11
186412:  MOV             R2, R6
186414:  MOV             R3, R8
186416:  STR.W           R10, [SP,#0xF8+var_F8]
18641A:  BL              sub_185B6C
18641E:  MOV             R0, R5; int
186420:  MOV             R1, R4; int
186422:  MOV             R2, R9; int
186424:  MOV             R3, R5
186426:  BL              sub_185988
18642A:  LDR             R0, [SP,#0xF8+var_A0]
18642C:  CBNZ            R0, loc_18645C
18642E:  LDR             R3, [SP,#0xF8+var_EC]
186430:  MOVS            R1, #0
186432:  MOV             R0, R1
186434:  CMP             R1, #7
186436:  BEQ             loc_186442
186438:  LDR.W           R2, [R3,R0,LSL#2]
18643C:  ADDS            R1, R0, #1
18643E:  CMP             R2, #0
186440:  BEQ             loc_186432
186442:  LDR.W           R8, [SP,#0xF8+var_E4]
186446:  ADD             R6, SP, #0xF8+var_3C
186448:  ADD.W           R11, SP, #0xF8+var_60
18644C:  ADD             R4, SP, #0xF8+var_C0
18644E:  ADD             R5, SP, #0xF8+var_A0
186450:  ADD.W           R9, SP, #0xF8+var_E0
186454:  ADD.W           R10, SP, #0xF8+var_80
186458:  CMP             R0, #6
18645A:  BHI             loc_1864F8
18645C:  MOV             R0, R9
18645E:  MOV             R1, R10
186460:  MOV             R2, R11
186462:  MOV             R3, R8
186464:  STR             R6, [SP,#0xF8+var_F8]
186466:  BL              sub_185B6C
18646A:  MOV             R0, R4; int
18646C:  MOV             R1, R5; int
18646E:  MOV             R2, R9; int
186470:  MOV             R3, R4
186472:  BL              sub_185988
186476:  LDR             R0, [SP,#0xF8+var_C0]
186478:  CBNZ            R0, loc_1864A8
18647A:  LDR             R3, [SP,#0xF8+var_E8]
18647C:  MOVS            R1, #0
18647E:  MOV             R0, R1
186480:  CMP             R1, #7
186482:  BEQ             loc_18648E
186484:  LDR.W           R2, [R3,R0,LSL#2]
186488:  ADDS            R1, R0, #1
18648A:  CMP             R2, #0
18648C:  BEQ             loc_18647E
18648E:  LDR.W           R8, [SP,#0xF8+var_E4]
186492:  ADD             R6, SP, #0xF8+var_3C
186494:  ADD.W           R11, SP, #0xF8+var_60
186498:  ADD             R4, SP, #0xF8+var_C0
18649A:  ADD             R5, SP, #0xF8+var_A0
18649C:  ADD.W           R9, SP, #0xF8+var_E0
1864A0:  ADD.W           R10, SP, #0xF8+var_80
1864A4:  CMP             R0, #6
1864A6:  BHI             loc_1864FC
1864A8:  MOV             R0, R9
1864AA:  MOV             R1, R6
1864AC:  MOV             R2, R10
1864AE:  MOV             R3, R8
1864B0:  STR.W           R11, [SP,#0xF8+var_F8]
1864B4:  BL              sub_185B6C
1864B8:  MOV             R0, R5; int
1864BA:  MOV             R1, R4; int
1864BC:  MOV             R2, R9; int
1864BE:  MOV             R3, R5
1864C0:  BL              sub_185988
1864C4:  LDR             R0, [SP,#0xF8+var_A0]
1864C6:  CMP             R0, #0
1864C8:  BNE.W           loc_186322
1864CC:  LDR             R3, [SP,#0xF8+var_EC]
1864CE:  MOVS            R1, #0
1864D0:  MOV             R0, R1
1864D2:  CMP             R1, #7
1864D4:  BEQ             loc_1864E0
1864D6:  LDR.W           R2, [R3,R0,LSL#2]
1864DA:  ADDS            R1, R0, #1
1864DC:  CMP             R2, #0
1864DE:  BEQ             loc_1864D0
1864E0:  LDR.W           R8, [SP,#0xF8+var_E4]
1864E4:  ADD             R6, SP, #0xF8+var_3C
1864E6:  ADD.W           R11, SP, #0xF8+var_60
1864EA:  ADD             R4, SP, #0xF8+var_C0
1864EC:  ADD             R5, SP, #0xF8+var_A0
1864EE:  CMP             R0, #7
1864F0:  BCC.W           loc_186322
1864F4:  ADD             R0, SP, #0xF8+var_60
1864F6:  B               loc_1864FE
1864F8:  ADD             R0, SP, #0xF8+var_80
1864FA:  B               loc_1864FE
1864FC:  ADD             R0, SP, #0xF8+var_3C
1864FE:  LDR.W           R9, [SP,#0xF8+var_F0]
186502:  B               loc_18650A
186504:  ADD             R0, SP, #0xF8+var_3C
186506:  B               loc_18650A
186508:  ADD             R0, SP, #0xF8+var_60
18650A:  VLD1.32         {D16-D17}, [R0]!
18650E:  VLD1.32         {D18-D19}, [R0]
186512:  VST1.32         {D16-D17}, [R9]!
186516:  VST1.32         {D18-D19}, [R9]
18651A:  ADD             SP, SP, #0xDC
18651C:  POP.W           {R8-R11}
186520:  POP             {R4-R7,PC}
