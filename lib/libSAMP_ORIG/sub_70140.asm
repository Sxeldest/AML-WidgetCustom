; =========================================================
; Game Engine Function: sub_70140
; Address            : 0x70140 - 0x70EA2
; =========================================================

70140:  PUSH            {R4-R7,LR}
70142:  ADD             R7, SP, #0xC
70144:  PUSH.W          {R8-R11}
70148:  SUB             SP, SP, #4
7014A:  VPUSH           {D8-D10}
7014E:  SUB             SP, SP, #0x30
70150:  STR             R0, [SP,#0x68+var_68]
70152:  MOV             R0, R1
70154:  LDR.W           R6, [R0,#0x10]!
70158:  MOV             R9, R1
7015A:  STR             R0, [SP,#0x68+var_3C]
7015C:  LDR.W           R10, [R0,#8]
70160:  LDRB.W          R8, [R6]
70164:  LDR.W           R5, [R0,#-0xC]
70168:  CMP.W           R8, #0x2D ; '-'
7016C:  BNE.W           loc_70B92
70170:  LDR.W           R0, [R9,#0xC]
70174:  CMP             R6, R0
70176:  BCS             loc_70184
70178:  LDR             R0, [SP,#0x68+var_3C]
7017A:  ADD.W           R11, R6, #1
7017E:  STR.W           R11, [R0]
70182:  B               loc_701D6
70184:  LDRB.W          R0, [R9,#0x1C]
70188:  MOV             R11, R6
7018A:  CBNZ            R0, loc_701D6
7018C:  LDR.W           R0, [R9,#0x14]
70190:  MOV             R4, R2
70192:  LDR.W           R3, [R9]; stream
70196:  MOVS            R1, #1; size
70198:  LDR.W           R2, [R9,#8]; n
7019C:  ADD             R0, R10
7019E:  STR.W           R0, [R9,#0x18]
701A2:  MOV             R0, R5; ptr
701A4:  BLX             fread
701A8:  LDRD.W          R11, R2, [R9,#4]
701AC:  CMP             R0, R2
701AE:  MOV             R2, R4
701B0:  STR.W           R0, [R9,#0x14]
701B4:  ADD.W           R1, R11, R0
701B8:  SUB.W           R3, R1, #1
701BC:  STRD.W          R3, R11, [R9,#0xC]
701C0:  BCS             loc_701D6
701C2:  MOVS            R0, #0
701C4:  STRB            R0, [R1]
701C6:  MOVS            R1, #1
701C8:  LDRD.W          R0, R11, [R9,#0xC]
701CC:  STRB.W          R1, [R9,#0x1C]
701D0:  ADDS            R0, #1
701D2:  STR.W           R0, [R9,#0xC]
701D6:  LDRB.W          R4, [R11]
701DA:  CMP             R4, #0x30 ; '0'
701DC:  STR             R2, [SP,#0x68+var_64]
701DE:  STRD.W          R6, R8, [SP,#0x68+var_54]
701E2:  STRD.W          R5, R10, [SP,#0x68+var_5C]
701E6:  BEQ.W           loc_70B9A
701EA:  SUB.W           R0, R4, #0x31 ; '1'
701EE:  CMP             R0, #8
701F0:  BHI.W           loc_70B50
701F4:  LDR.W           R12, [R9,#0xC]
701F8:  CMP             R11, R12
701FA:  BCS             loc_70206
701FC:  LDR             R1, [SP,#0x68+var_3C]
701FE:  ADD.W           R0, R11, #1
70202:  STR             R0, [R1]
70204:  B               loc_70252
70206:  LDRB.W          R0, [R9,#0x1C]
7020A:  CBNZ            R0, loc_70252
7020C:  LDRD.W          R1, R5, [R9,#0x14]
70210:  LDRD.W          R3, R0, [R9]; stream
70214:  LDR.W           R2, [R9,#8]; n
70218:  ADD             R1, R5
7021A:  STR.W           R1, [R9,#0x18]
7021E:  MOVS            R1, #1; size
70220:  MOVS            R5, #1
70222:  BLX             fread
70226:  LDRD.W          R2, R3, [R9,#4]
7022A:  CMP             R0, R3
7022C:  STR.W           R0, [R9,#0x14]
70230:  ADD.W           R1, R2, R0
70234:  SUB.W           R12, R1, #1
70238:  STRD.W          R12, R2, [R9,#0xC]
7023C:  BCS             loc_70252
7023E:  MOVS            R0, #0
70240:  STRB            R0, [R1]
70242:  LDR.W           R0, [R9,#0xC]
70246:  STRB.W          R5, [R9,#0x1C]
7024A:  ADD.W           R12, R0, #1
7024E:  STR.W           R12, [R9,#0xC]
70252:  LDR.W           R11, [R9,#0x10]
70256:  VMOV.I32        D8, #0
7025A:  SUB.W           R10, R4, #0x30 ; '0'
7025E:  MOVS            R3, #0
70260:  CMP.W           R8, #0x2D ; '-'
70264:  LDRB.W          R5, [R11]
70268:  SUB.W           R0, R5, #0x30 ; '0'
7026C:  BNE             loc_70314
7026E:  CMP             R0, #9
70270:  BHI.W           loc_70B6A
70274:  LDR             R6, [SP,#0x68+var_3C]
70276:  MOV             R4, #0xCCCCCCC
7027E:  MOV.W           R8, #0
70282:  B               loc_702AA
70284:  ADD.W           R11, R11, #1
70288:  STR.W           R11, [R6]
7028C:  ADD.W           R0, R10, R10,LSL#2
70290:  ADD.W           R8, R8, #1
70294:  LSLS            R0, R0, #1
70296:  ADD             R0, R5
70298:  LDRB.W          R5, [R11]
7029C:  SUB.W           R10, R0, #0x30 ; '0'
702A0:  SUB.W           R0, R5, #0x30 ; '0'
702A4:  CMP             R0, #0xA
702A6:  BCS.W           loc_70482
702AA:  SUBS            R0, R4, #1
702AC:  CMP             R10, R0
702AE:  BHI             loc_70306
702B0:  CMP             R11, R12
702B2:  BCC             loc_70284
702B4:  LDRB.W          R0, [R9,#0x1C]
702B8:  CMP             R0, #0
702BA:  BNE             loc_7028C
702BC:  LDRD.W          R1, R6, [R9,#0x14]
702C0:  LDRD.W          R3, R0, [R9]; stream
702C4:  LDR.W           R2, [R9,#8]; n
702C8:  ADD             R1, R6
702CA:  STR.W           R1, [R9,#0x18]
702CE:  MOVS            R1, #1; size
702D0:  LDR             R6, [SP,#0x68+var_3C]
702D2:  BLX             fread
702D6:  LDRD.W          R11, R2, [R9,#4]
702DA:  MOVS            R3, #0
702DC:  CMP             R0, R2
702DE:  STR.W           R0, [R9,#0x14]
702E2:  ADD.W           R1, R11, R0
702E6:  SUB.W           R12, R1, #1
702EA:  STRD.W          R12, R11, [R9,#0xC]
702EE:  BCS             loc_7028C
702F0:  STRB            R3, [R1]
702F2:  MOVS            R1, #1
702F4:  LDRD.W          R0, R11, [R9,#0xC]
702F8:  STRB.W          R1, [R9,#0x1C]
702FC:  ADD.W           R12, R0, #1
70300:  STR.W           R12, [R9,#0xC]
70304:  B               loc_7028C
70306:  CMP             R10, R4
70308:  BNE.W           loc_70B4A
7030C:  CMP             R5, #0x38 ; '8'
7030E:  BLS             loc_702B0
70310:  MOVS            R5, #0x39 ; '9'
70312:  B               loc_703B6
70314:  CMP             R0, #9
70316:  BHI.W           loc_70B6A
7031A:  LDR             R6, [SP,#0x68+var_3C]
7031C:  MOV             R4, #0x19999999
70324:  MOV.W           R8, #0
70328:  B               loc_70350
7032A:  ADD.W           R11, R11, #1
7032E:  STR.W           R11, [R6]
70332:  ADD.W           R0, R10, R10,LSL#2
70336:  ADD.W           R8, R8, #1
7033A:  LSLS            R0, R0, #1
7033C:  ADD             R0, R5
7033E:  LDRB.W          R5, [R11]
70342:  SUB.W           R10, R0, #0x30 ; '0'
70346:  SUB.W           R0, R5, #0x30 ; '0'
7034A:  CMP             R0, #0xA
7034C:  BCS.W           loc_70482
70350:  SUBS            R0, R4, #1
70352:  CMP             R10, R0
70354:  BHI             loc_703AC
70356:  CMP             R11, R12
70358:  BCC             loc_7032A
7035A:  LDRB.W          R0, [R9,#0x1C]
7035E:  CMP             R0, #0
70360:  BNE             loc_70332
70362:  LDRD.W          R1, R6, [R9,#0x14]
70366:  LDRD.W          R3, R0, [R9]; stream
7036A:  LDR.W           R2, [R9,#8]; n
7036E:  ADD             R1, R6
70370:  STR.W           R1, [R9,#0x18]
70374:  MOVS            R1, #1; size
70376:  LDR             R6, [SP,#0x68+var_3C]
70378:  BLX             fread
7037C:  LDRD.W          R11, R2, [R9,#4]
70380:  MOVS            R3, #0
70382:  CMP             R0, R2
70384:  STR.W           R0, [R9,#0x14]
70388:  ADD.W           R1, R11, R0
7038C:  SUB.W           R12, R1, #1
70390:  STRD.W          R12, R11, [R9,#0xC]
70394:  BCS             loc_70332
70396:  STRB            R3, [R1]
70398:  MOVS            R1, #1
7039A:  LDRD.W          R0, R11, [R9,#0xC]
7039E:  STRB.W          R1, [R9,#0x1C]
703A2:  ADD.W           R12, R0, #1
703A6:  STR.W           R12, [R9,#0xC]
703AA:  B               loc_70332
703AC:  CMP             R10, R4
703AE:  BNE.W           loc_70B4A
703B2:  CMP             R5, #0x35 ; '5'
703B4:  BLS             loc_70356
703B6:  LDR             R0, [SP,#0x68+var_50]
703B8:  MOV.W           R10, #0
703BC:  STR             R4, [SP,#0x68+var_48]
703BE:  CMP             R0, #0x2D ; '-'
703C0:  BNE             loc_70490
703C2:  MOVW            LR, #0xCCCC
703C6:  MOV             R3, R4
703C8:  MOVT            LR, #0xCCC
703CC:  MOVS            R2, #0
703CE:  B               loc_70402
703D0:  ADD.W           R11, R11, #1
703D4:  STR.W           R11, [R6]
703D8:  MOVS            R0, #0xA
703DA:  ADD.W           R2, R2, R2,LSL#2
703DE:  UMULL.W         R0, R1, R3, R0
703E2:  LDRB.W          R5, [R11]
703E6:  ADD.W           R8, R8, #1
703EA:  ADD.W           R1, R1, R2,LSL#1
703EE:  SUB.W           R2, R4, #0x30 ; '0'
703F2:  ADDS            R3, R0, R2
703F4:  SUB.W           R0, R5, #0x30 ; '0'
703F8:  ADC.W           R2, R1, #0
703FC:  CMP             R0, #0xA
703FE:  BCS.W           loc_705EE
70402:  SUBS.W          R0, R3, #0xCCCCCCCC
70406:  MOV             R4, R5
70408:  SBCS.W          R0, R2, LR
7040C:  BCS             loc_70470
7040E:  CMP             R11, R12
70410:  BCC             loc_703D0
70412:  LDRB.W          R0, [R9,#0x1C]
70416:  CMP             R0, #0
70418:  BNE             loc_703D8
7041A:  LDRD.W          R1, R6, [R9,#0x14]
7041E:  MOV             R11, R3
70420:  STR             R2, [SP,#0x68+var_40]
70422:  MOV             R5, LR
70424:  LDRD.W          R3, R0, [R9]; stream
70428:  ADD             R1, R6
7042A:  LDR.W           R2, [R9,#8]; n
7042E:  STR.W           R1, [R9,#0x18]
70432:  MOVS            R1, #1; size
70434:  LDR             R6, [SP,#0x68+var_3C]
70436:  BLX             fread
7043A:  MOV             R3, R11
7043C:  LDRD.W          R11, R2, [R9,#4]
70440:  CMP             R0, R2
70442:  LDR             R2, [SP,#0x68+var_40]
70444:  ADD.W           R1, R11, R0
70448:  MOV             LR, R5
7044A:  SUB.W           R12, R1, #1
7044E:  STRD.W          R12, R11, [R9,#0xC]
70452:  STR.W           R0, [R9,#0x14]
70456:  BCS             loc_703D8
70458:  STRB.W          R10, [R1]
7045C:  MOVS            R1, #1
7045E:  LDRD.W          R0, R11, [R9,#0xC]
70462:  STRB.W          R1, [R9,#0x1C]
70466:  ADD.W           R12, R0, #1
7046A:  STR.W           R12, [R9,#0xC]
7046E:  B               loc_703D8
70470:  EOR.W           R0, R2, LR
70474:  EOR.W           R1, R3, #0xCCCCCCCC
70478:  ORRS            R0, R1
7047A:  BNE             loc_7054E
7047C:  CMP             R4, #0x38 ; '8'
7047E:  BHI             loc_7054E
70480:  B               loc_7040E
70482:  MOVS            R0, #0
70484:  MOVS            R3, #0
70486:  MOVS            R2, #0
70488:  STR             R0, [SP,#0x68+var_44]
7048A:  MOV.W           LR, #0
7048E:  B               loc_7060E
70490:  MOVW            LR, #0x9999
70494:  MOV             R3, R4
70496:  MOVT            LR, #0x1999
7049A:  MOVS            R2, #0
7049C:  B               loc_704D0
7049E:  ADD.W           R11, R11, #1
704A2:  STR.W           R11, [R6]
704A6:  MOVS            R0, #0xA
704A8:  ADD.W           R2, R2, R2,LSL#2
704AC:  UMULL.W         R0, R1, R3, R0
704B0:  LDRB.W          R5, [R11]
704B4:  ADD.W           R8, R8, #1
704B8:  ADD.W           R1, R1, R2,LSL#1
704BC:  SUB.W           R2, R4, #0x30 ; '0'
704C0:  ADDS            R3, R0, R2
704C2:  SUB.W           R0, R5, #0x30 ; '0'
704C6:  ADC.W           R2, R1, #0
704CA:  CMP             R0, #0xA
704CC:  BCS.W           loc_705EE
704D0:  SUBS.W          R0, R3, #0x99999999
704D4:  MOV             R4, R5
704D6:  SBCS.W          R0, R2, LR
704DA:  BCS             loc_7053E
704DC:  CMP             R11, R12
704DE:  BCC             loc_7049E
704E0:  LDRB.W          R0, [R9,#0x1C]
704E4:  CMP             R0, #0
704E6:  BNE             loc_704A6
704E8:  LDRD.W          R1, R6, [R9,#0x14]
704EC:  MOV             R11, R3
704EE:  STR             R2, [SP,#0x68+var_40]
704F0:  MOV             R5, LR
704F2:  LDRD.W          R3, R0, [R9]; stream
704F6:  ADD             R1, R6
704F8:  LDR.W           R2, [R9,#8]; n
704FC:  STR.W           R1, [R9,#0x18]
70500:  MOVS            R1, #1; size
70502:  LDR             R6, [SP,#0x68+var_3C]
70504:  BLX             fread
70508:  MOV             R3, R11
7050A:  LDRD.W          R11, R2, [R9,#4]
7050E:  CMP             R0, R2
70510:  LDR             R2, [SP,#0x68+var_40]
70512:  ADD.W           R1, R11, R0
70516:  MOV             LR, R5
70518:  SUB.W           R12, R1, #1
7051C:  STRD.W          R12, R11, [R9,#0xC]
70520:  STR.W           R0, [R9,#0x14]
70524:  BCS             loc_704A6
70526:  STRB.W          R10, [R1]
7052A:  MOVS            R1, #1
7052C:  LDRD.W          R0, R11, [R9,#0xC]
70530:  STRB.W          R1, [R9,#0x1C]
70534:  ADD.W           R12, R0, #1
70538:  STR.W           R12, [R9,#0xC]
7053C:  B               loc_704A6
7053E:  EOR.W           R0, R2, LR
70542:  EOR.W           R1, R3, #0x99999999
70546:  ORRS            R0, R1
70548:  BNE             loc_7054E
7054A:  CMP             R4, #0x35 ; '5'
7054C:  BLS             loc_704DC
7054E:  MOV             R0, R3
70550:  MOV             R1, R2
70552:  MOV             R5, R6
70554:  MOV             R6, R12
70556:  STR             R3, [SP,#0x68+var_4C]
70558:  STR             R2, [SP,#0x68+var_40]
7055A:  BLX             sub_108CB0
7055E:  VMOV.F64        D9, #10.0
70562:  MOV             R12, R6
70564:  MOV             R6, R5
70566:  MOV.W           R10, #0
7056A:  MOVS            R5, #1
7056C:  VMOV            D8, R0, R1
70570:  B               loc_70596
70572:  ADD.W           R11, R11, #1
70576:  STR.W           R11, [R6]
7057A:  SUB.W           R0, R4, #0x30 ; '0'
7057E:  LDRB.W          R4, [R11]
70582:  VMOV            S0, R0
70586:  SUB.W           R0, R4, #0x30 ; '0'
7058A:  CMP             R0, #0xA
7058C:  VCVT.F64.S32    D8, S0
70590:  VMLA.F64        D8, D10, D9
70594:  BCS             loc_70600
70596:  VMOV            D10, D8
7059A:  CMP             R11, R12
7059C:  BCC             loc_70572
7059E:  LDRB.W          R0, [R9,#0x1C]
705A2:  CMP             R0, #0
705A4:  BNE             loc_7057A
705A6:  LDRD.W          R1, R6, [R9,#0x14]
705AA:  LDRD.W          R3, R0, [R9]; stream
705AE:  LDR.W           R2, [R9,#8]; n
705B2:  ADD             R1, R6
705B4:  STR.W           R1, [R9,#0x18]
705B8:  MOVS            R1, #1; size
705BA:  LDR             R6, [SP,#0x68+var_3C]
705BC:  BLX             fread
705C0:  LDRD.W          R11, R2, [R9,#4]
705C4:  CMP             R0, R2
705C6:  STR.W           R0, [R9,#0x14]
705CA:  ADD.W           R1, R11, R0
705CE:  SUB.W           R12, R1, #1
705D2:  STRD.W          R12, R11, [R9,#0xC]
705D6:  BCS             loc_7057A
705D8:  STRB.W          R10, [R1]
705DC:  LDRD.W          R0, R11, [R9,#0xC]
705E0:  STRB.W          R5, [R9,#0x1C]
705E4:  ADD.W           R12, R0, #1
705E8:  STR.W           R12, [R9,#0xC]
705EC:  B               loc_7057A
705EE:  MOVS            R0, #0
705F0:  VMOV.I32        D8, #0
705F4:  MOV.W           LR, #1
705F8:  STR             R0, [SP,#0x68+var_44]
705FA:  LDR.W           R10, [SP,#0x68+var_48]
705FE:  B               loc_7060E
70600:  LDRD.W          R3, R10, [SP,#0x68+var_4C]
70604:  MOVS            R0, #1
70606:  LDR             R2, [SP,#0x68+var_40]
70608:  MOV.W           LR, #1
7060C:  STR             R0, [SP,#0x68+var_44]
7060E:  LDRB.W          R5, [R11]
70612:  CMP             R5, #0x2E ; '.'
70614:  BNE.W           loc_70BC6
70618:  CMP             R11, R12
7061A:  STR             R2, [SP,#0x68+var_40]
7061C:  BCS             loc_70628
7061E:  ADD.W           R11, R11, #1
70622:  STR.W           R11, [R6]
70626:  B               loc_70680
70628:  LDRB.W          R0, [R9,#0x1C]
7062C:  CBNZ            R0, loc_70680
7062E:  LDRD.W          R1, R6, [R9,#0x14]
70632:  MOV             R5, R3
70634:  LDRD.W          R3, R0, [R9]; stream
70638:  MOV             R4, LR
7063A:  LDR.W           R2, [R9,#8]; n
7063E:  ADD             R1, R6
70640:  STR.W           R1, [R9,#0x18]
70644:  MOVS            R1, #1; size
70646:  LDR             R6, [SP,#0x68+var_3C]
70648:  BLX             fread
7064C:  LDRD.W          R11, R2, [R9,#4]
70650:  CMP             R0, R2
70652:  LDR             R2, [SP,#0x68+var_40]
70654:  MOV             LR, R4
70656:  ADD.W           R1, R11, R0
7065A:  MOV             R3, R5
7065C:  SUB.W           R12, R1, #1
70660:  STRD.W          R12, R11, [R9,#0xC]
70664:  STR.W           R0, [R9,#0x14]
70668:  BCS             loc_70680
7066A:  MOVS            R0, #0
7066C:  STRB            R0, [R1]
7066E:  MOVS            R1, #1
70670:  LDRD.W          R0, R11, [R9,#0xC]
70674:  STRB.W          R1, [R9,#0x1C]
70678:  ADD.W           R12, R0, #1
7067C:  STR.W           R12, [R9,#0xC]
70680:  LDRB.W          R5, [R11]
70684:  SUB.W           R0, R5, #0x30 ; '0'
70688:  CMP             R0, #0xA
7068A:  BCS.W           loc_70B54
7068E:  MOV             R0, R10
70690:  MOV             R1, LR
70692:  CMP.W           LR, #0
70696:  STR             R3, [SP,#0x68+var_4C]
70698:  IT NE
7069A:  MOVNE           R0, R3
7069C:  STR.W           LR, [SP,#0x68+var_60]
706A0:  IT NE
706A2:  MOVNE           R1, R2
706A4:  MOV             R4, R12
706A6:  BLX             sub_108CB0
706AA:  VMOV            D9, R0, R1
706AE:  LDR             R0, [SP,#0x68+var_44]
706B0:  MOV             R12, R4
706B2:  MOVS            R2, #0
706B4:  CMP             R0, #0
706B6:  IT NE
706B8:  VMOVNE.F64      D9, D8
706BC:  VMOV.F64        D8, #10.0
706C0:  B               loc_706D8
706C2:  ADD.W           R0, R11, #1
706C6:  STR             R0, [R6]
706C8:  LDR.W           R11, [R6]
706CC:  LDRB.W          R5, [R11]
706D0:  SUB.W           R0, R5, #0x30 ; '0'
706D4:  CMP             R0, #0xA
706D6:  BCS             loc_707BC
706D8:  CMP.W           R8, #0x10
706DC:  BGT             loc_706EA
706DE:  CMP             R11, R12
706E0:  BCS             loc_70744
706E2:  ADD.W           R0, R11, #1
706E6:  STR             R0, [R6]
706E8:  B               loc_70796
706EA:  CMP             R11, R12
706EC:  BCC             loc_706C2
706EE:  LDRB.W          R0, [R9,#0x1C]
706F2:  CMP             R0, #0
706F4:  BNE             loc_706C8
706F6:  LDRD.W          R1, R6, [R9,#0x14]
706FA:  MOV             R5, R2
706FC:  LDRD.W          R3, R0, [R9]; stream
70700:  LDR.W           R2, [R9,#8]; n
70704:  ADD             R1, R6
70706:  STR.W           R1, [R9,#0x18]
7070A:  MOVS            R1, #1; size
7070C:  BLX             fread
70710:  LDRD.W          R2, R3, [R9,#4]
70714:  CMP             R0, R3
70716:  STR.W           R0, [R9,#0x14]
7071A:  ADD.W           R1, R2, R0
7071E:  SUB.W           R12, R1, #1
70722:  STRD.W          R12, R2, [R9,#0xC]
70726:  BCS             loc_7073E
70728:  MOVS            R0, #0
7072A:  STRB            R0, [R1]
7072C:  MOVS            R1, #1
7072E:  LDR.W           R0, [R9,#0xC]
70732:  STRB.W          R1, [R9,#0x1C]
70736:  ADD.W           R12, R0, #1
7073A:  STR.W           R12, [R9,#0xC]
7073E:  LDR             R6, [SP,#0x68+var_3C]
70740:  MOV             R2, R5
70742:  B               loc_706C8
70744:  LDRB.W          R0, [R9,#0x1C]
70748:  CBNZ            R0, loc_70796
7074A:  LDRD.W          R1, R6, [R9,#0x14]
7074E:  MOV             R4, R2
70750:  LDRD.W          R3, R0, [R9]; stream
70754:  LDR.W           R2, [R9,#8]; n
70758:  ADD             R1, R6
7075A:  STR.W           R1, [R9,#0x18]
7075E:  MOVS            R1, #1; size
70760:  LDR             R6, [SP,#0x68+var_3C]
70762:  BLX             fread
70766:  LDRD.W          R2, R3, [R9,#4]
7076A:  CMP             R0, R3
7076C:  STR.W           R0, [R9,#0x14]
70770:  ADD.W           R1, R2, R0
70774:  SUB.W           R12, R1, #1
70778:  STRD.W          R12, R2, [R9,#0xC]
7077C:  MOV             R2, R4
7077E:  BCS             loc_70796
70780:  MOVS            R0, #0
70782:  STRB            R0, [R1]
70784:  MOVS            R1, #1
70786:  LDR.W           R0, [R9,#0xC]
7078A:  STRB.W          R1, [R9,#0x1C]
7078E:  ADD.W           R12, R0, #1
70792:  STR.W           R12, [R9,#0xC]
70796:  SUB.W           R0, R5, #0x30 ; '0'
7079A:  SUBS            R2, #1
7079C:  VMOV            S0, R0
707A0:  VCVT.F64.S32    D16, S0
707A4:  VMLA.F64        D16, D9, D8
707A8:  VCMP.F64        D16, #0.0
707AC:  VMRS            APSR_nzcv, FPSCR
707B0:  IT GT
707B2:  ADDGT.W         R8, R8, #1
707B6:  VMOV.F64        D9, D16
707BA:  B               loc_706C8
707BC:  VMOV.F64        D8, D9
707C0:  STR             R2, [SP,#0x68+var_48]
707C2:  LDR             R3, [SP,#0x68+var_4C]
707C4:  MOVS            R0, #1
707C6:  LDR             R2, [SP,#0x68+var_40]
707C8:  LDR.W           LR, [SP,#0x68+var_60]
707CC:  STR             R0, [SP,#0x68+var_44]
707CE:  LDRD.W          R1, R0, [SP,#0x68+var_58]
707D2:  CMP             R5, #0x65 ; 'e'
707D4:  ADD             R0, R1
707D6:  LDR             R1, [SP,#0x68+var_5C]
707D8:  SUB.W           R0, R0, R1
707DC:  STR             R0, [SP,#0x68+var_4C]
707DE:  IT NE
707E0:  CMPNE           R5, #0x45 ; 'E'
707E2:  BNE.W           loc_70D10
707E6:  CMP             R11, R12
707E8:  BCS             loc_707F4
707EA:  ADD.W           R0, R11, #1
707EE:  STR             R0, [R6]
707F0:  MOV             R4, R6
707F2:  B               loc_70860
707F4:  LDRB.W          R0, [R9,#0x1C]
707F8:  MOV             R4, R6
707FA:  CBNZ            R0, loc_70860
707FC:  LDR.W           R1, [R9,#0x14]
70800:  MOV             R11, R3
70802:  LDR.W           R6, [R9,#0x18]
70806:  MOV             R5, R2
70808:  LDR.W           R3, [R9]; stream
7080C:  MOV.W           R8, #1
70810:  LDR.W           R0, [R9,#4]; ptr
70814:  ADD             R1, R6
70816:  LDR.W           R2, [R9,#8]; n
7081A:  MOV             R6, LR
7081C:  STR.W           R1, [R9,#0x18]
70820:  MOVS            R1, #1; size
70822:  LDR             R4, [SP,#0x68+var_3C]
70824:  BLX             fread
70828:  LDR.W           R2, [R9,#4]
7082C:  MOV             LR, R6
7082E:  LDR.W           R3, [R9,#8]
70832:  ADDS            R1, R2, R0
70834:  STR.W           R2, [R9,#0x10]
70838:  SUB.W           R12, R1, #1
7083C:  CMP             R0, R3
7083E:  MOV             R2, R5
70840:  MOV             R3, R11
70842:  STR.W           R12, [R9,#0xC]
70846:  STR.W           R0, [R9,#0x14]
7084A:  BCS             loc_70860
7084C:  MOVS            R0, #0
7084E:  STRB            R0, [R1]
70850:  LDR.W           R0, [R9,#0xC]
70854:  STRB.W          R8, [R9,#0x1C]
70858:  ADD.W           R12, R0, #1
7085C:  STR.W           R12, [R9,#0xC]
70860:  CMP.W           LR, #0
70864:  ITE NE
70866:  MOVNE           R10, R3
70868:  MOVEQ           R2, LR
7086A:  MOV             R0, R10
7086C:  MOV             R1, R2
7086E:  MOV             R6, R12
70870:  BLX             sub_108CB0
70874:  LDR             R2, [R4]
70876:  VMOV            D9, R0, R1
7087A:  LDR             R1, [SP,#0x68+var_44]
7087C:  LDRB            R0, [R2]
7087E:  CMP             R1, #0
70880:  IT NE
70882:  VMOVNE.F64      D9, D8
70886:  CMP             R0, #0x2B ; '+'
70888:  BNE.W           loc_70BCC
7088C:  CMP             R2, R6
7088E:  BCS             loc_7089A
70890:  ADDS            R0, R2, #1
70892:  STR             R0, [R4]
70894:  MOV.W           R10, #0
70898:  B               loc_708F0
7089A:  LDRB.W          R0, [R9,#0x1C]
7089E:  CBZ             R0, loc_708A6
708A0:  MOV.W           R10, #0
708A4:  B               loc_708F0
708A6:  LDRD.W          R1, R6, [R9,#0x14]
708AA:  MOVS            R4, #1
708AC:  LDRD.W          R3, R0, [R9]; stream
708B0:  LDR.W           R2, [R9,#8]; n
708B4:  ADD             R1, R6
708B6:  STR.W           R1, [R9,#0x18]
708BA:  MOVS            R1, #1; size
708BC:  BLX             fread
708C0:  LDRD.W          R2, R3, [R9,#4]
708C4:  MOV.W           R10, #0
708C8:  CMP             R0, R3
708CA:  STR.W           R0, [R9,#0x14]
708CE:  ADD.W           R1, R2, R0
708D2:  SUB.W           R6, R1, #1
708D6:  STRD.W          R6, R2, [R9,#0xC]
708DA:  BCS             loc_708EE
708DC:  STRB.W          R10, [R1]
708E0:  LDR.W           R0, [R9,#0xC]
708E4:  STRB.W          R4, [R9,#0x1C]
708E8:  ADDS            R6, R0, #1
708EA:  STR.W           R6, [R9,#0xC]
708EE:  LDR             R4, [SP,#0x68+var_3C]
708F0:  LDR             R0, [R4]
708F2:  LDR             R2, [SP,#0x68+var_48]
708F4:  LDRB            R1, [R0]
708F6:  SUB.W           R5, R1, #0x30 ; '0'
708FA:  CMP             R5, #9
708FC:  BHI.W           loc_70B7C
70900:  CMP             R0, R6
70902:  BCS             loc_7090A
70904:  ADDS            R0, #1
70906:  STR             R0, [R4]
70908:  B               loc_7095A
7090A:  LDRB.W          R0, [R9,#0x1C]
7090E:  CBNZ            R0, loc_7095A
70910:  LDRD.W          R1, R6, [R9,#0x14]
70914:  MOV.W           R8, #1
70918:  LDRD.W          R3, R0, [R9]; stream
7091C:  LDR.W           R2, [R9,#8]; n
70920:  ADD             R1, R6
70922:  STR.W           R1, [R9,#0x18]
70926:  MOVS            R1, #1; size
70928:  LDR             R4, [SP,#0x68+var_3C]
7092A:  BLX             fread
7092E:  LDRD.W          R2, R3, [R9,#4]
70932:  CMP             R0, R3
70934:  STR.W           R0, [R9,#0x14]
70938:  ADD.W           R1, R2, R0
7093C:  SUB.W           R6, R1, #1
70940:  STRD.W          R6, R2, [R9,#0xC]
70944:  LDR             R2, [SP,#0x68+var_48]
70946:  BCS             loc_7095A
70948:  MOVS            R0, #0
7094A:  STRB            R0, [R1]
7094C:  LDR.W           R0, [R9,#0xC]
70950:  STRB.W          R8, [R9,#0x1C]
70954:  ADDS            R6, R0, #1
70956:  STR.W           R6, [R9,#0xC]
7095A:  CMP.W           R10, #0
7095E:  STR.W           R10, [SP,#0x68+var_40]
70962:  BEQ             loc_70A08
70964:  LDR.W           R1, [R9,#0x10]
70968:  LDRB.W          R11, [R1]
7096C:  SUB.W           R0, R11, #0x30 ; '0'
70970:  CMP             R0, #9
70972:  BHI.W           loc_70A8E
70976:  SUB.W           R0, R2, #0x80000000
7097A:  MOVW            R2, #0x6667
7097E:  SUBS            R0, #9
70980:  MOVT            R2, #0x6666
70984:  MOV.W           R8, #0
70988:  SMMUL.W         R0, R0, R2
7098C:  ASRS            R2, R0, #2
7098E:  ADD.W           R10, R2, R0,LSR#31
70992:  CMP             R1, R6
70994:  BCS             loc_7099C
70996:  ADDS            R0, R1, #1
70998:  STR             R0, [R4]
7099A:  B               loc_709E8
7099C:  LDRB.W          R0, [R9,#0x1C]
709A0:  CBNZ            R0, loc_709E8
709A2:  LDRD.W          R1, R6, [R9,#0x14]
709A6:  LDRD.W          R3, R0, [R9]; stream
709AA:  LDR.W           R2, [R9,#8]; n
709AE:  ADD             R1, R6
709B0:  STR.W           R1, [R9,#0x18]
709B4:  MOVS            R1, #1; size
709B6:  LDR             R4, [SP,#0x68+var_3C]
709B8:  BLX             fread
709BC:  LDRD.W          R2, R3, [R9,#4]
709C0:  CMP             R0, R3
709C2:  STR.W           R0, [R9,#0x14]
709C6:  ADD.W           R1, R2, R0
709CA:  SUB.W           R6, R1, #1
709CE:  STRD.W          R6, R2, [R9,#0xC]
709D2:  BCS             loc_709E8
709D4:  STRB.W          R8, [R1]
709D8:  MOVS            R1, #1
709DA:  LDR.W           R0, [R9,#0xC]
709DE:  STRB.W          R1, [R9,#0x1C]
709E2:  ADDS            R6, R0, #1
709E4:  STR.W           R6, [R9,#0xC]
709E8:  LDR             R1, [R4]
709EA:  ADD.W           R0, R5, R5,LSL#2
709EE:  LSLS            R2, R0, #1
709F0:  LDRB            R0, [R1]
709F2:  ADD             R2, R11
709F4:  SUB.W           R5, R2, #0x30 ; '0'
709F8:  SUB.W           R2, R0, #0x30 ; '0'
709FC:  CMP             R5, R10
709FE:  BGT             loc_70A88
70A00:  CMP             R2, #0xA
70A02:  MOV             R11, R0
70A04:  BCC             loc_70992
70A06:  B               loc_70A8E
70A08:  RSB.W           R10, R2, #0x134
70A0C:  MOV.W           R11, #0
70A10:  B               loc_70A26
70A12:  ADDS            R0, #1
70A14:  STR             R0, [R4]
70A16:  ADD.W           R0, R5, R5,LSL#2
70A1A:  LSLS            R0, R0, #1
70A1C:  ADD             R0, R8
70A1E:  SUB.W           R5, R0, #0x30 ; '0'
70A22:  CMP             R5, R10
70A24:  BGT             loc_70B04
70A26:  LDR             R0, [R4]
70A28:  LDRB.W          R8, [R0]
70A2C:  SUB.W           R1, R8, #0x30 ; '0'
70A30:  CMP             R1, #9
70A32:  BHI             loc_70A8E
70A34:  CMP             R0, R6
70A36:  BCC             loc_70A12
70A38:  LDRB.W          R0, [R9,#0x1C]
70A3C:  CMP             R0, #0
70A3E:  BNE             loc_70A16
70A40:  LDRD.W          R1, R6, [R9,#0x14]
70A44:  LDRD.W          R3, R0, [R9]; stream
70A48:  LDR.W           R2, [R9,#8]; n
70A4C:  ADD             R1, R6
70A4E:  STR.W           R1, [R9,#0x18]
70A52:  MOVS            R1, #1; size
70A54:  LDR             R4, [SP,#0x68+var_3C]
70A56:  BLX             fread
70A5A:  LDRD.W          R2, R3, [R9,#4]
70A5E:  CMP             R0, R3
70A60:  STR.W           R0, [R9,#0x14]
70A64:  ADD.W           R1, R2, R0
70A68:  SUB.W           R6, R1, #1
70A6C:  STRD.W          R6, R2, [R9,#0xC]
70A70:  BCS             loc_70A16
70A72:  STRB.W          R11, [R1]
70A76:  MOVS            R1, #1
70A78:  LDR.W           R0, [R9,#0xC]
70A7C:  STRB.W          R1, [R9,#0x1C]
70A80:  ADDS            R6, R0, #1
70A82:  STR.W           R6, [R9,#0xC]
70A86:  B               loc_70A16
70A88:  CMP             R2, #9
70A8A:  BLS.W           loc_70CA4
70A8E:  LDR             R0, [SP,#0x68+var_40]
70A90:  CMP             R0, #0
70A92:  IT NE
70A94:  NEGNE           R5, R5
70A96:  LDR             R0, [SP,#0x68+var_48]
70A98:  LDR             R3, [SP,#0x68+var_50]
70A9A:  ADD             R0, R5
70A9C:  CMN.W           R0, #0x134
70AA0:  BGE             loc_70AD2
70AA2:  VMOV.I32        D8, #0
70AA6:  LDR             R4, [SP,#0x68+var_64]
70AA8:  CMN.W           R0, #0x268
70AAC:  BCC             loc_70B10
70AAE:  VLDR            D16, =1.0e308
70AB2:  MOVW            R2, #0xFECC
70AB6:  LDR             R1, =(unk_50F90 - 0x70AC6)
70AB8:  MOVT            R2, #0xFFFF
70ABC:  VDIV.F64        D16, D9, D16
70AC0:  SUBS            R0, R2, R0
70AC2:  ADD             R1, PC; unk_50F90
70AC4:  ADD.W           R0, R1, R0,LSL#3
70AC8:  VLDR            D17, [R0]
70ACC:  VDIV.F64        D8, D16, D17
70AD0:  B               loc_70AF6
70AD2:  LDR             R4, [SP,#0x68+var_64]
70AD4:  CMP             R0, #0
70AD6:  LDR             R1, =(unk_50F90 - 0x70ADC)
70AD8:  ADD             R1, PC; unk_50F90
70ADA:  BMI             loc_70AEA
70ADC:  ADD.W           R0, R1, R0,LSL#3
70AE0:  VLDR            D16, [R0]
70AE4:  VMUL.F64        D8, D9, D16
70AE8:  B               loc_70AF6
70AEA:  SUB.W           R0, R1, R0,LSL#3
70AEE:  VLDR            D16, [R0]
70AF2:  VDIV.F64        D8, D9, D16
70AF6:  VLDR            D16, =1.79769313e308
70AFA:  VCMP.F64        D8, D16
70AFE:  VMRS            APSR_nzcv, FPSCR
70B02:  BLE             loc_70B10
70B04:  LDR             R1, [SP,#0x68+var_68]
70B06:  MOVS            R0, #0xD
70B08:  STR             R0, [R1,#0x18]
70B0A:  LDR             R0, [SP,#0x68+var_4C]
70B0C:  STR             R0, [R1,#0x1C]
70B0E:  B               loc_70B3C
70B10:  LDRD.W          R0, R1, [R4,#0x24]
70B14:  CMP             R3, #0x2D ; '-'
70B16:  VNEG.F64        D16, D8
70B1A:  IT EQ
70B1C:  VMOVEQ.F64      D8, D16
70B20:  SUBS            R1, R1, R0
70B22:  CMP             R1, #0xF
70B24:  BLE             loc_70BE0
70B26:  MOVS            R1, #0
70B28:  ADD.W           R2, R0, #0x10
70B2C:  STR             R2, [R4,#0x24]
70B2E:  MOVT            R1, #0x216
70B32:  MOVS            R2, #0
70B34:  VSTR            D8, [R0]
70B38:  STRD.W          R2, R1, [R0,#8]
70B3C:  ADD             SP, SP, #0x30 ; '0'
70B3E:  VPOP            {D8-D10}
70B42:  ADD             SP, SP, #4
70B44:  POP.W           {R8-R11}
70B48:  POP             {R4-R7,PC}
70B4A:  MOV             R4, R10
70B4C:  B.W             loc_703B6
70B50:  MOVS            R0, #3
70B52:  B               loc_70B56
70B54:  MOVS            R0, #0xE
70B56:  LDR.W           R2, [R9,#0x18]
70B5A:  LDR.W           R1, [R9,#4]
70B5E:  ADD             R2, R11
70B60:  SUBS            R1, R2, R1
70B62:  LDR             R2, [SP,#0x68+var_68]
70B64:  STR             R0, [R2,#0x18]
70B66:  STR             R1, [R2,#0x1C]
70B68:  B               loc_70B3C
70B6A:  MOVS            R0, #0
70B6C:  MOVS            R2, #0
70B6E:  MOV.W           R8, #0
70B72:  STR             R0, [SP,#0x68+var_44]
70B74:  MOV.W           LR, #0
70B78:  LDR             R6, [SP,#0x68+var_3C]
70B7A:  B               loc_7060E
70B7C:  LDR.W           R3, [R9,#0x18]
70B80:  MOVS            R1, #0xF
70B82:  LDR.W           R2, [R9,#4]
70B86:  ADD             R0, R3
70B88:  SUBS            R0, R0, R2
70B8A:  LDR             R2, [SP,#0x68+var_68]
70B8C:  STRD.W          R1, R0, [R2,#0x18]
70B90:  B               loc_70B3C
70B92:  MOV             R4, R8
70B94:  MOV             R11, R6
70B96:  B.W             loc_701DA
70B9A:  LDR.W           R12, [R9,#0xC]
70B9E:  VMOV.I32        D8, #0
70BA2:  CMP             R11, R12
70BA4:  BCS             loc_70BEE
70BA6:  LDR             R6, [SP,#0x68+var_3C]
70BA8:  MOVS            R0, #0
70BAA:  ADD.W           R11, R11, #1
70BAE:  MOVS            R3, #0
70BB0:  MOVS            R2, #0
70BB2:  MOV.W           R8, #0
70BB6:  STR.W           R11, [R6]
70BBA:  MOV.W           LR, #0
70BBE:  STR             R0, [SP,#0x68+var_44]
70BC0:  MOV.W           R10, #0
70BC4:  B               loc_7060E
70BC6:  MOVS            R0, #0
70BC8:  STR             R0, [SP,#0x68+var_48]
70BCA:  B               loc_707CE
70BCC:  CMP             R0, #0x2D ; '-'
70BCE:  BNE.W           loc_708A0
70BD2:  CMP             R2, R6
70BD4:  BCS             loc_70BF8
70BD6:  ADDS            R0, R2, #1
70BD8:  STR             R0, [R4]
70BDA:  MOV.W           R10, #1
70BDE:  B               loc_708F0
70BE0:  ADD.W           R0, R4, #0x18
70BE4:  MOVS            R1, #1
70BE6:  BL              sub_70EA2
70BEA:  LDR             R0, [R4,#0x24]
70BEC:  B               loc_70B26
70BEE:  LDRB.W          R0, [R9,#0x1C]
70BF2:  CBZ             R0, loc_70C04
70BF4:  MOVS            R3, #0
70BF6:  B               loc_70C4A
70BF8:  LDRB.W          R0, [R9,#0x1C]
70BFC:  CBZ             R0, loc_70C60
70BFE:  MOV.W           R10, #1
70C02:  B               loc_708F0
70C04:  LDRD.W          R1, R5, [R9,#0x14]
70C08:  MOVS            R4, #1
70C0A:  LDRD.W          R3, R0, [R9]; stream
70C0E:  LDR.W           R2, [R9,#8]; n
70C12:  ADD             R1, R5
70C14:  STR.W           R1, [R9,#0x18]
70C18:  MOVS            R1, #1; size
70C1A:  BLX             fread
70C1E:  LDRD.W          R11, R2, [R9,#4]
70C22:  MOVS            R3, #0
70C24:  CMP             R0, R2
70C26:  STR.W           R0, [R9,#0x14]
70C2A:  ADD.W           R1, R11, R0
70C2E:  SUB.W           R12, R1, #1
70C32:  STRD.W          R12, R11, [R9,#0xC]
70C36:  BCS             loc_70C4A
70C38:  STRB            R3, [R1]
70C3A:  LDRD.W          R0, R11, [R9,#0xC]
70C3E:  STRB.W          R4, [R9,#0x1C]
70C42:  ADD.W           R12, R0, #1
70C46:  STR.W           R12, [R9,#0xC]
70C4A:  MOVS            R0, #0
70C4C:  MOVS            R2, #0
70C4E:  MOV.W           R8, #0
70C52:  STR             R0, [SP,#0x68+var_44]
70C54:  MOV.W           LR, #0
70C58:  MOV.W           R10, #0
70C5C:  LDR             R6, [SP,#0x68+var_3C]
70C5E:  B               loc_7060E
70C60:  LDRD.W          R1, R6, [R9,#0x14]
70C64:  MOV.W           R10, #1
70C68:  LDRD.W          R3, R0, [R9]; stream
70C6C:  LDR.W           R2, [R9,#8]; n
70C70:  ADD             R1, R6
70C72:  STR.W           R1, [R9,#0x18]
70C76:  MOVS            R1, #1; size
70C78:  BLX             fread
70C7C:  LDRD.W          R2, R3, [R9,#4]
70C80:  CMP             R0, R3
70C82:  STR.W           R0, [R9,#0x14]
70C86:  ADD.W           R1, R2, R0
70C8A:  SUB.W           R6, R1, #1
70C8E:  STRD.W          R6, R2, [R9,#0xC]
70C92:  BCS.W           loc_708EE
70C96:  MOVS            R0, #0
70C98:  STRB            R0, [R1]
70C9A:  LDR.W           R0, [R9,#0xC]
70C9E:  STRB.W          R10, [R9,#0x1C]
70CA2:  B               loc_708E8
70CA4:  MOV.W           R8, #1
70CA8:  MOV.W           R10, #0
70CAC:  CMP             R1, R6
70CAE:  BCS             loc_70CB8
70CB0:  LDR             R0, [SP,#0x68+var_3C]
70CB2:  ADDS            R1, #1
70CB4:  STR             R1, [R0]
70CB6:  B               loc_70D04
70CB8:  LDRB.W          R0, [R9,#0x1C]
70CBC:  CBNZ            R0, loc_70D04
70CBE:  LDRD.W          R1, R6, [R9,#0x14]
70CC2:  LDRD.W          R3, R0, [R9]; stream
70CC6:  LDR.W           R2, [R9,#8]; n
70CCA:  ADD             R1, R6
70CCC:  STR.W           R1, [R9,#0x18]
70CD0:  MOVS            R1, #1; size
70CD2:  BLX             fread
70CD6:  LDRD.W          R1, R3, [R9,#4]
70CDA:  CMP             R0, R3
70CDC:  STR.W           R0, [R9,#0x14]
70CE0:  ADD.W           R2, R1, R0
70CE4:  SUB.W           R4, R2, #1
70CE8:  STRD.W          R4, R1, [R9,#0xC]
70CEC:  MOV             R6, R4
70CEE:  BCS             loc_70D04
70CF0:  STRB.W          R10, [R2]
70CF4:  LDRD.W          R0, R1, [R9,#0xC]
70CF8:  STRB.W          R8, [R9,#0x1C]
70CFC:  ADDS            R0, #1
70CFE:  STR.W           R0, [R9,#0xC]
70D02:  MOV             R6, R0
70D04:  LDRB            R0, [R1]
70D06:  SUBS            R0, #0x30 ; '0'
70D08:  CMP             R0, #0xA
70D0A:  BCS.W           loc_70A8E
70D0E:  B               loc_70CAC
70D10:  LDR             R0, [SP,#0x68+var_44]
70D12:  CBZ             R0, loc_70D1C
70D14:  MOVS            R5, #0
70D16:  VMOV            D9, D8
70D1A:  B               loc_70A96
70D1C:  CMP.W           LR, #0
70D20:  BEQ             loc_70D82
70D22:  LDR             R0, [SP,#0x68+var_50]
70D24:  MOV             R6, R2
70D26:  MOV             R5, R3
70D28:  CMP             R0, #0x2D ; '-'
70D2A:  BNE             loc_70DB4
70D2C:  LDR             R1, [SP,#0x68+var_64]
70D2E:  NEGS            R5, R5
70D30:  MOV.W           R8, #0
70D34:  SBC.W           R4, R8, R6
70D38:  LDR             R0, [R1,#0x24]
70D3A:  MOV             R10, R1
70D3C:  LDR             R1, [R1,#0x28]
70D3E:  SUBS            R1, R1, R0
70D40:  CMP             R1, #0xF
70D42:  BLE.W           loc_70E60
70D46:  ADD.W           R1, R0, #0x10
70D4A:  STR.W           R1, [R10,#0x24]
70D4E:  MOV.W           R1, #0x960000
70D52:  CMP             R4, #0
70D54:  STRD.W          R5, R4, [R0]
70D58:  STRD.W          R8, R1, [R0,#8]
70D5C:  BMI             loc_70E36
70D5E:  MOV.W           R2, R5,LSR#31
70D62:  MOV.W           R1, #0x196
70D66:  ORR.W           R2, R2, R4,LSL#1
70D6A:  IT EQ
70D6C:  MOVEQ.W         R1, #0x1D6
70D70:  ORR.W           R2, R2, R4,LSR#31
70D74:  STRH            R1, [R0,#0xE]
70D76:  CMP             R2, #0
70D78:  ITT EQ
70D7A:  ORREQ.W         R1, R1, #0x20 ; ' '
70D7E:  STRHEQ          R1, [R0,#0xE]
70D80:  B               loc_70B3C
70D82:  LDR             R0, [SP,#0x68+var_50]
70D84:  CMP             R0, #0x2D ; '-'
70D86:  BNE             loc_70E06
70D88:  LDR             R1, [SP,#0x68+var_64]
70D8A:  RSB.W           R4, R10, #0
70D8E:  LDR             R0, [R1,#0x24]
70D90:  MOV             R5, R1
70D92:  LDR             R1, [R1,#0x28]
70D94:  SUBS            R1, R1, R0
70D96:  CMP             R1, #0xF
70D98:  BLE             loc_70E72
70D9A:  ADD.W           R1, R0, #0x10
70D9E:  STR             R1, [R5,#0x24]
70DA0:  MOVS            R1, #0
70DA2:  ASRS            R2, R4, #0x1F
70DA4:  STRD.W          R1, R1, [R0,#8]
70DA8:  MOVS            R1, #0xB6
70DAA:  STRD.W          R4, R2, [R0]
70DAE:  CMP.W           R4, #0xFFFFFFFF
70DB2:  B               loc_70E2C
70DB4:  LDR             R1, [SP,#0x68+var_64]
70DB6:  LDR             R0, [R1,#0x24]
70DB8:  MOV             R4, R1
70DBA:  LDR             R1, [R1,#0x28]
70DBC:  SUBS            R1, R1, R0
70DBE:  CMP             R1, #0xF
70DC0:  BLE             loc_70E82
70DC2:  ADD.W           R1, R0, #0x10
70DC6:  STR             R1, [R4,#0x24]
70DC8:  MOVS            R1, #0
70DCA:  CMP.W           R6, #0xFFFFFFFF
70DCE:  STRD.W          R6, R1, [R0,#4]
70DD2:  MOV             R2, R6
70DD4:  STR             R1, [R0,#0xC]
70DD6:  MOV.W           R1, #0x116
70DDA:  STR             R5, [R0]
70DDC:  IT GT
70DDE:  MOVGT.W         R1, #0x196
70DE2:  CMP             R6, #0
70DE4:  STRH            R1, [R0,#0xE]
70DE6:  BNE.W           loc_70B3C
70DEA:  ORR.W           R2, R1, #0x40 ; '@'
70DEE:  STRH            R2, [R0,#0xE]
70DF0:  LSRS            R2, R5, #0x1F
70DF2:  ORR.W           R2, R2, R6,LSL#1
70DF6:  ORR.W           R2, R2, R6,LSR#31
70DFA:  CMP             R2, #0
70DFC:  ITT EQ
70DFE:  ORREQ.W         R1, R1, #0x60 ; '`'
70E02:  STRHEQ          R1, [R0,#0xE]
70E04:  B               loc_70B3C
70E06:  LDR             R1, [SP,#0x68+var_64]
70E08:  LDR             R0, [R1,#0x24]
70E0A:  MOV             R5, R1
70E0C:  LDR             R1, [R1,#0x28]
70E0E:  SUBS            R1, R1, R0
70E10:  CMP             R1, #0xF
70E12:  BLE             loc_70E92
70E14:  ADD.W           R1, R0, #0x10
70E18:  STR             R1, [R5,#0x24]
70E1A:  MOVS            R1, #0
70E1C:  CMP.W           R10, #0xFFFFFFFF
70E20:  STRD.W          R10, R1, [R0]
70E24:  STRD.W          R1, R1, [R0,#8]
70E28:  MOV.W           R1, #0x1D6
70E2C:  IT GT
70E2E:  MOVGT.W         R1, #0x1F6
70E32:  STRH            R1, [R0,#0xE]
70E34:  B               loc_70B3C
70E36:  SUBS.W          R1, R5, #0x80000000
70E3A:  SBCS.W          R1, R4, #0xFFFFFFFF
70E3E:  ITT CS
70E40:  MOVCS           R1, #0xB6
70E42:  STRHCS          R1, [R0,#0xE]
70E44:  B               loc_70B3C
70E46:  ALIGN 4
70E48:  DCFD 1.0e308
70E50:  DCD unk_50F90 - 0x70AC6
70E54:  DCD unk_50F90 - 0x70ADC
70E58:  DCFD 1.79769313e308
70E60:  ADD.W           R0, R10, #0x18
70E64:  MOVS            R1, #1
70E66:  MOV             R9, R10
70E68:  BL              sub_70EA2
70E6C:  LDR.W           R0, [R10,#0x24]
70E70:  B               loc_70D46
70E72:  ADD.W           R0, R5, #0x18
70E76:  MOVS            R1, #1
70E78:  MOV             R6, R5
70E7A:  BL              sub_70EA2
70E7E:  LDR             R0, [R5,#0x24]
70E80:  B               loc_70D9A
70E82:  ADD.W           R0, R4, #0x18
70E86:  MOVS            R1, #1
70E88:  MOV             R8, R4
70E8A:  BL              sub_70EA2
70E8E:  LDR             R0, [R4,#0x24]
70E90:  B               loc_70DC2
70E92:  ADD.W           R0, R5, #0x18
70E96:  MOVS            R1, #1
70E98:  MOV             R6, R5
70E9A:  BL              sub_70EA2
70E9E:  LDR             R0, [R5,#0x24]
70EA0:  B               loc_70E14
