; =========================================================
; Game Engine Function: sub_210144
; Address            : 0x210144 - 0x210760
; =========================================================

210144:  PUSH            {R4-R7,LR}
210146:  ADD             R7, SP, #0xC
210148:  PUSH.W          {R8-R11}
21014C:  SUB             SP, SP, #0x3C
21014E:  LDR.W           R9, [R1]
210152:  MOVW            R3, #0x144C
210156:  STR             R1, [SP,#0x58+var_50]
210158:  MOVW            R2, #0x23D
21015C:  LDR             R1, [R1,#8]
21015E:  MOV.W           LR, #0
210162:  LDR             R6, [R1,#0xC]
210164:  LDR             R5, [R1]
210166:  MOVW            R1, #0x1448
21016A:  ADD.W           R10, R0, R1
21016E:  CMP             R6, #1
210170:  STR             R2, [R0,R3]
210172:  STR.W           LR, [R0,R1]
210176:  STR             R6, [SP,#0x58+var_44]
210178:  BLT             loc_2101C0
21017A:  MOVW            R1, #0x1450
21017E:  MOV.W           R4, #0xFFFFFFFF
210182:  ADD             R1, R0
210184:  MOVS            R3, #0
210186:  LDRH.W          R2, [R9,R3,LSL#2]
21018A:  CBZ             R2, loc_2101A6
21018C:  LDR.W           R2, [R10]
210190:  MOV             R4, R3
210192:  ADDS            R2, #1
210194:  STR.W           R2, [R10]
210198:  ADD.W           R2, R0, R2,LSL#2
21019C:  STR.W           R3, [R2,#0xB54]
2101A0:  STRB.W          LR, [R1,R3]
2101A4:  B               loc_2101AE
2101A6:  ADD.W           R2, R9, R3,LSL#2
2101AA:  STRH.W          LR, [R2,#2]
2101AE:  ADDS            R3, #1
2101B0:  CMP             R6, R3
2101B2:  BNE             loc_210186
2101B4:  STR             R4, [SP,#0x58+var_48]
2101B6:  LDR.W           R1, [R10]
2101BA:  CMP             R1, #1
2101BC:  BLE             loc_2101C8
2101BE:  B               loc_210234
2101C0:  MOV.W           R1, #0xFFFFFFFF
2101C4:  STR             R1, [SP,#0x58+var_48]
2101C6:  MOVS            R1, #0
2101C8:  MOVW            R2, #0x16A4
2101CC:  ADDS            R3, R0, R2
2101CE:  ADD.W           R6, R0, #0x16A0
2101D2:  MOV.W           R8, #1
2101D6:  MOVW            R11, #0x1450
2101DA:  ADDS            R2, R1, #1
2101DC:  STR.W           R2, [R10]
2101E0:  LDR.W           R12, [SP,#0x58+var_48]
2101E4:  MOVS            R1, #0
2101E6:  ADD.W           R2, R0, R2,LSL#2
2101EA:  ADD.W           R4, R12, #1
2101EE:  CMP.W           R12, #2
2101F2:  IT LT
2101F4:  MOVLT           R1, R4
2101F6:  CMP.W           R12, #2
2101FA:  STR.W           R1, [R2,#0xB54]
2101FE:  ADD.W           R2, R0, R1
210202:  STRH.W          R8, [R9,R1,LSL#2]
210206:  STRB.W          LR, [R2,R11]
21020A:  LDR             R2, [R6]
21020C:  SUB.W           R2, R2, #1
210210:  STR             R2, [R6]
210212:  IT LT
210214:  MOVLT           R12, R4
210216:  CMP             R5, #0
210218:  STR.W           R12, [SP,#0x58+var_48]
21021C:  ITTTT NE
21021E:  LDRNE           R2, [R3]
210220:  ADDNE.W         R1, R5, R1,LSL#2
210224:  LDRHNE          R1, [R1,#2]
210226:  SUBNE           R1, R2, R1
210228:  IT NE
21022A:  STRNE           R1, [R3]
21022C:  LDR.W           R1, [R10]
210230:  CMP             R1, #2
210232:  BLT             loc_2101DA
210234:  MOVW            R1, #0x144C
210238:  LDR             R2, [SP,#0x58+var_50]
21023A:  ADD             R1, R0
21023C:  STR             R1, [SP,#0x58+var_4C]
21023E:  LDR             R1, [SP,#0x58+var_48]
210240:  STR             R1, [R2,#4]
210242:  LDR.W           R3, [R10]
210246:  CMP             R3, #2
210248:  BLT             loc_210302
21024A:  MOV.W           R12, R3,LSR#1
21024E:  B               loc_210268
210250:  MOV             R5, R8
210252:  ADD.W           R1, R0, R5,LSL#2
210256:  CMP.W           R12, #2
21025A:  STR.W           R6, [R1,#0xB54]
21025E:  BLT             loc_2102FE
210260:  LDR.W           R3, [R10]
210264:  SUB.W           R12, R12, #1
210268:  ADD.W           R1, R0, R12,LSL#2
21026C:  MOV.W           R4, R12,LSL#1
210270:  CMP             R4, R3
210272:  MOV             R5, R12
210274:  LDR.W           R6, [R1,#0xB54]
210278:  BGT             loc_210252
21027A:  ADDS            R1, R0, R6
21027C:  MOVW            R2, #0x1450
210280:  ADD.W           R11, R1, R2
210284:  MOV             R8, R12
210286:  CMP             R4, R3
210288:  BGE             loc_2102C0
21028A:  ADDW            R5, R0, #0xB54
21028E:  ORR.W           R1, R4, #1
210292:  LDR.W           R3, [R5,R4,LSL#2]
210296:  LDR.W           R5, [R5,R1,LSL#2]
21029A:  LDRH.W          R2, [R9,R3,LSL#2]
21029E:  LDRH.W          LR, [R9,R5,LSL#2]
2102A2:  CMP             LR, R2
2102A4:  BCS             loc_2102AA
2102A6:  MOV             R5, R1
2102A8:  B               loc_2102C2
2102AA:  BNE             loc_2102C0
2102AC:  MOVW            R2, #0x1450
2102B0:  ADD             R2, R0
2102B2:  LDRB            R3, [R2,R3]
2102B4:  LDRB            R2, [R2,R5]
2102B6:  MOV             R5, R4
2102B8:  CMP             R2, R3
2102BA:  IT LS
2102BC:  MOVLS           R5, R1
2102BE:  B               loc_2102C2
2102C0:  MOV             R5, R4
2102C2:  ADD.W           R1, R0, R5,LSL#2
2102C6:  LDRH.W          R2, [R9,R6,LSL#2]
2102CA:  LDR.W           R1, [R1,#0xB54]
2102CE:  LDRH.W          R3, [R9,R1,LSL#2]
2102D2:  CMP             R2, R3
2102D4:  BCC             loc_210250
2102D6:  BNE             loc_2102E8
2102D8:  ADDS            R2, R0, R1
2102DA:  MOVW            R4, #0x1450
2102DE:  LDRB.W          R3, [R11]
2102E2:  LDRB            R2, [R2,R4]
2102E4:  CMP             R3, R2
2102E6:  BLS             loc_210250
2102E8:  ADD.W           R2, R0, R8,LSL#2
2102EC:  LSLS            R4, R5, #1
2102EE:  MOV             R8, R5
2102F0:  STR.W           R1, [R2,#0xB54]
2102F4:  LDR.W           R3, [R10]
2102F8:  CMP             R4, R3
2102FA:  BLE             loc_210286
2102FC:  B               loc_210252
2102FE:  LDR.W           R3, [R10]
210302:  ADD.W           R1, R0, R3,LSL#2
210306:  LDR.W           LR, [SP,#0x58+var_44]
21030A:  SUBS            R6, R3, #1
21030C:  LDR.W           R8, [R0,#0xB58]
210310:  STR.W           R6, [R10]
210314:  CMP             R3, #3
210316:  LDR.W           R12, [R1,#0xB54]
21031A:  STR.W           R12, [R0,#0xB58]
21031E:  BGE             loc_210324
210320:  MOVS            R3, #1
210322:  B               loc_2103AE
210324:  ADD.W           R1, R0, R12
210328:  MOVW            R2, #0x1450
21032C:  ADD             R1, R2
21032E:  STR             R1, [SP,#0x58+var_40]
210330:  MOVS            R5, #1
210332:  MOVS            R1, #2
210334:  CMP             R1, R6
210336:  BGE             loc_21036E
210338:  ADDW            R2, R0, #0xB54
21033C:  ORR.W           R6, R1, #1
210340:  LDR.W           R3, [R2,R1,LSL#2]
210344:  LDR.W           R2, [R2,R6,LSL#2]
210348:  LDRH.W          R4, [R9,R3,LSL#2]
21034C:  LDRH.W          R11, [R9,R2,LSL#2]
210350:  CMP             R11, R4
210352:  BCS             loc_210358
210354:  MOV             R3, R6
210356:  B               loc_210370
210358:  BNE             loc_21036E
21035A:  MOVW            R4, #0x1450
21035E:  ADD             R4, R0
210360:  LDRB            R3, [R4,R3]
210362:  LDRB            R2, [R4,R2]
210364:  CMP             R2, R3
210366:  MOV             R3, R1
210368:  IT LS
21036A:  MOVLS           R3, R6
21036C:  B               loc_210370
21036E:  MOV             R3, R1
210370:  ADD.W           R1, R0, R3,LSL#2
210374:  LDRH.W          R2, [R9,R12,LSL#2]
210378:  LDR.W           R1, [R1,#0xB54]
21037C:  LDRH.W          R4, [R9,R1,LSL#2]
210380:  CMP             R2, R4
210382:  BCC             loc_2103AC
210384:  BNE             loc_210396
210386:  LDR             R4, [SP,#0x58+var_40]
210388:  ADDS            R2, R0, R1
21038A:  MOVW            R6, #0x1450
21038E:  LDRB            R2, [R2,R6]
210390:  LDRB            R4, [R4]
210392:  CMP             R4, R2
210394:  BLS             loc_2103AC
210396:  ADD.W           R2, R0, R5,LSL#2
21039A:  MOV             R5, R3
21039C:  STR.W           R1, [R2,#0xB54]
2103A0:  LSLS            R1, R3, #1
2103A2:  LDR.W           R6, [R10]
2103A6:  CMP             R1, R6
2103A8:  BLE             loc_210334
2103AA:  B               loc_2103AE
2103AC:  MOV             R3, R5
2103AE:  ADDW            R5, R0, #0xB54
2103B2:  STR.W           R12, [R5,R3,LSL#2]
2103B6:  LDR             R1, [SP,#0x58+var_4C]
2103B8:  LDR.W           R2, [R0,#0xB58]
2103BC:  MOV             R3, R1
2103BE:  LDR             R1, [R3]
2103C0:  SUBS            R1, #1
2103C2:  STR             R1, [R3]
2103C4:  STR.W           R8, [R5,R1,LSL#2]
2103C8:  LDR             R1, [R3]
2103CA:  SUBS            R1, #1
2103CC:  STR             R1, [R3]
2103CE:  STR.W           R2, [R5,R1,LSL#2]
2103D2:  LDRH.W          R1, [R9,R8,LSL#2]
2103D6:  LDRH.W          R3, [R9,R2,LSL#2]
2103DA:  ADD             R1, R3
2103DC:  STRH.W          R1, [R9,LR,LSL#2]
2103E0:  MOVW            R1, #0x1450
2103E4:  ADD.W           R11, R0, R1
2103E8:  LDRB.W          R1, [R11,R2]
2103EC:  LDRB.W          R3, [R11,R8]
2103F0:  CMP             R3, R1
2103F2:  ADD.W           R1, R9, R2,LSL#2
2103F6:  IT CS
2103F8:  MOVCS           R2, R8
2103FA:  LDRB.W          R2, [R11,R2]
2103FE:  ADDS            R2, #1
210400:  STRB.W          R2, [R11,LR]
210404:  STRH.W          LR, [R1,#2]
210408:  ADD.W           R1, R9, R8,LSL#2
21040C:  STRH.W          LR, [R1,#2]
210410:  ADD.W           R1, LR, #1
210414:  STR.W           LR, [R0,#0xB58]
210418:  STR             R1, [SP,#0x58+var_44]
21041A:  LDR.W           R6, [R10]
21041E:  CMP             R6, #2
210420:  BGE             loc_210426
210422:  MOVS            R1, #1
210424:  B               loc_2104A6
210426:  MOV.W           R12, #1
21042A:  MOVS            R3, #2
21042C:  ADD.W           R1, R11, LR
210430:  STR             R1, [SP,#0x58+var_40]
210432:  CMP             R3, R6
210434:  BGE             loc_210466
210436:  ORR.W           R6, R3, #1
21043A:  LDR.W           R1, [R5,R3,LSL#2]
21043E:  LDR.W           R2, [R5,R6,LSL#2]
210442:  LDRH.W          R4, [R9,R1,LSL#2]
210446:  LDRH.W          R8, [R9,R2,LSL#2]
21044A:  CMP             R8, R4
21044C:  BCS             loc_210452
21044E:  MOV             R1, R6
210450:  B               loc_210468
210452:  BNE             loc_210466
210454:  LDRB.W          R1, [R11,R1]
210458:  LDRB.W          R2, [R11,R2]
21045C:  CMP             R2, R1
21045E:  MOV             R1, R3
210460:  IT LS
210462:  MOVLS           R1, R6
210464:  B               loc_210468
210466:  MOV             R1, R3
210468:  ADD.W           R2, R0, R1,LSL#2
21046C:  LDR.W           R3, [R2,#0xB54]
210470:  LDRH.W          R2, [R9,LR,LSL#2]
210474:  LDRH.W          R4, [R9,R3,LSL#2]
210478:  CMP             R2, R4
21047A:  BCC             loc_2104A4
21047C:  BNE             loc_21048E
21047E:  LDR             R4, [SP,#0x58+var_40]
210480:  ADDS            R2, R0, R3
210482:  MOVW            R6, #0x1450
210486:  LDRB            R2, [R2,R6]
210488:  LDRB            R4, [R4]
21048A:  CMP             R4, R2
21048C:  BLS             loc_2104A4
21048E:  ADD.W           R2, R0, R12,LSL#2
210492:  MOV             R12, R1
210494:  STR.W           R3, [R2,#0xB54]
210498:  LSLS            R3, R1, #1
21049A:  LDR.W           R6, [R10]
21049E:  CMP             R3, R6
2104A0:  BLE             loc_210432
2104A2:  B               loc_2104A6
2104A4:  MOV             R1, R12
2104A6:  ADD.W           R1, R0, R1,LSL#2
2104AA:  STR.W           LR, [R1,#0xB54]
2104AE:  LDR.W           R3, [R10]
2104B2:  CMP             R3, #1
2104B4:  BGT.W           loc_210302
2104B8:  LDR             R1, [SP,#0x58+var_4C]
2104BA:  VMOV.I32        Q8, #0
2104BE:  LDR.W           R2, [R0,#0xB58]
2104C2:  MOV             R3, R1
2104C4:  LDR             R1, [R3]
2104C6:  SUBS            R1, #1
2104C8:  STR             R1, [R3]
2104CA:  STR.W           R2, [R5,R1,LSL#2]
2104CE:  LDR             R1, [SP,#0x58+var_50]
2104D0:  LDRD.W          R12, R4, [R1]
2104D4:  LDR             R1, [R1,#8]
2104D6:  LDR             R2, [R1]
2104D8:  STR             R2, [SP,#0x58+var_44]
2104DA:  LDR             R2, [R1,#4]
2104DC:  STR             R2, [SP,#0x58+var_58]
2104DE:  LDR.W           R8, [R1,#8]
2104E2:  LDR.W           R11, [R1,#0x10]
2104E6:  ADDW            R1, R0, #0xB44
2104EA:  VST1.16         {D16-D17}, [R1]
2104EE:  ADDW            R1, R0, #0xB34
2104F2:  VST1.16         {D16-D17}, [R1]
2104F6:  LDR             R1, [R3]
2104F8:  LDR.W           R1, [R5,R1,LSL#2]
2104FC:  MOVS            R5, #0
2104FE:  ADD.W           R1, R12, R1,LSL#2
210502:  STRH            R5, [R1,#2]
210504:  LDR.W           R10, [R3]
210508:  CMP.W           R10, #0x23C
21050C:  BGE.W           loc_210648
210510:  MOVW            R1, #0x16A4
210514:  ADD             R1, R0
210516:  STR             R1, [SP,#0x58+var_54]
210518:  ADDW            R1, R0, #0xB58
21051C:  STR             R1, [SP,#0x58+var_40]
21051E:  ADD.W           R1, R0, #0x16A0
210522:  STRD.W          R8, R1, [SP,#0x58+var_50]
210526:  LDR             R1, [SP,#0x58+var_40]
210528:  LDR.W           R3, [R1,R10,LSL#2]
21052C:  ADD.W           R10, R10, #1
210530:  ADD.W           R2, R12, R3,LSL#2
210534:  LDRH            R1, [R2,#2]
210536:  ADD.W           R1, R12, R1,LSL#2
21053A:  LDRH            R6, [R1,#2]
21053C:  MOV             R1, R11
21053E:  CMP             R11, R6
210540:  IT GT
210542:  ADDGT           R1, R6, #1
210544:  STRH            R1, [R2,#2]
210546:  MOV.W           R2, #0
21054A:  IT LE
21054C:  MOVLE           R2, #1
21054E:  CMP             R3, R4
210550:  ADD             R5, R2
210552:  BGT             loc_2105AC
210554:  ADD.W           R2, R0, R1,LSL#1
210558:  CMP             R3, R8
21055A:  LDRH.W          R6, [R2,#0xB34]
21055E:  ADD.W           R6, R6, #1
210562:  STRH.W          R6, [R2,#0xB34]
210566:  BGE             loc_21056E
210568:  MOV.W           LR, #0
21056C:  B               loc_210578
21056E:  LDR             R6, [SP,#0x58+var_58]
210570:  SUB.W           R2, R3, R8
210574:  LDR.W           LR, [R6,R2,LSL#2]
210578:  LDR.W           R8, [SP,#0x58+var_4C]
21057C:  ADD             R1, LR
21057E:  LDRH.W          R2, [R12,R3,LSL#2]
210582:  LDR.W           R6, [R8]
210586:  MLA.W           R1, R1, R2, R6
21058A:  STR.W           R1, [R8]
21058E:  LDR             R1, [SP,#0x58+var_44]
210590:  LDR.W           R8, [SP,#0x58+var_50]
210594:  CBZ             R1, loc_2105AC
210596:  LDR             R1, [SP,#0x58+var_44]
210598:  ADD.W           R1, R1, R3,LSL#2
21059C:  LDR             R3, [SP,#0x58+var_54]
21059E:  LDRH            R1, [R1,#2]
2105A0:  MOV             R6, R3
2105A2:  ADD             R1, LR
2105A4:  LDR             R3, [R6]
2105A6:  MLA.W           R1, R1, R2, R3
2105AA:  STR             R1, [R6]
2105AC:  SUB.W           R1, R10, #1
2105B0:  MOVW            R2, #0x23B
2105B4:  CMP             R1, R2
2105B6:  BLT             loc_210526
2105B8:  CMP             R5, #0
2105BA:  BEQ             loc_210648
2105BC:  ADD.W           R1, R0, R11,LSL#1
2105C0:  ADDW            LR, R1, #0xB36
2105C4:  ADDW            R6, R1, #0xB34
2105C8:  MOV             R1, LR
2105CA:  LDRH.W          R2, [R1,#-4]
2105CE:  SUBS            R1, #2
2105D0:  CMP             R2, #0
2105D2:  BEQ             loc_2105CA
2105D4:  LDRH            R3, [R1]
2105D6:  SUBS            R2, #1
2105D8:  STRH.W          R2, [R1,#-2]
2105DC:  SUBS            R5, #2
2105DE:  ADD.W           R2, R3, #2
2105E2:  STRH            R2, [R1]
2105E4:  LDRH            R1, [R6]
2105E6:  SUB.W           R1, R1, #1
2105EA:  STRH            R1, [R6]
2105EC:  BGT             loc_2105C8
2105EE:  CMP.W           R11, #0
2105F2:  BEQ             loc_210648
2105F4:  MOVW            R6, #0x23D
2105F8:  B               loc_210602
2105FA:  ADD.W           R1, R0, R11,LSL#1
2105FE:  LDRH.W          R1, [R1,#0xB34]
210602:  UXTH            R3, R1
210604:  MOV             R5, R6
210606:  B               loc_21060C
210608:  SUBS            R3, #1
21060A:  MOV             R6, R5
21060C:  CBZ             R3, loc_210642
21060E:  ADD.W           R1, R0, R5,LSL#2
210612:  SUBS            R5, #1
210614:  LDR.W           R1, [R1,#0xB50]
210618:  CMP             R1, R4
21061A:  BGT             loc_21060C
21061C:  ADD.W           R6, R12, R1,LSL#2
210620:  LDRH.W          R2, [R6,#2]!
210624:  CMP             R11, R2
210626:  BEQ             loc_210608
210628:  LDRH.W          LR, [R12,R1,LSL#2]
21062C:  SUB.W           R8, R11, R2
210630:  LDR             R1, [SP,#0x58+var_4C]
210632:  MOV             R2, R1
210634:  LDR             R1, [R2]
210636:  MLA.W           R1, R8, LR, R1
21063A:  STR             R1, [R2]
21063C:  STRH.W          R11, [R6]
210640:  B               loc_210608
210642:  SUBS.W          R11, R11, #1
210646:  BNE             loc_2105FA
210648:  LDRH.W          R1, [R0,#0xB34]
21064C:  LSLS            R1, R1, #1
21064E:  STRH.W          R1, [SP,#0x58+var_3A]
210652:  LDRH.W          R2, [R0,#0xB36]
210656:  UXTAH.W         R1, R2, R1
21065A:  LSLS            R1, R1, #1
21065C:  STRH.W          R1, [SP,#0x58+var_38]
210660:  LDRH.W          R2, [R0,#0xB38]
210664:  UXTAH.W         R1, R2, R1
210668:  LSLS            R1, R1, #1
21066A:  STRH.W          R1, [SP,#0x58+var_36]
21066E:  LDRH.W          R2, [R0,#0xB3A]
210672:  UXTAH.W         R1, R2, R1
210676:  LSLS            R1, R1, #1
210678:  STRH.W          R1, [SP,#0x58+var_34]
21067C:  LDRH.W          R2, [R0,#0xB3C]
210680:  UXTAH.W         R1, R2, R1
210684:  LSLS            R1, R1, #1
210686:  STRH.W          R1, [SP,#0x58+var_32]
21068A:  LDRH.W          R2, [R0,#0xB3E]
21068E:  UXTAH.W         R1, R2, R1
210692:  LSLS            R1, R1, #1
210694:  STRH.W          R1, [SP,#0x58+var_30]
210698:  LDRH.W          R2, [R0,#0xB40]
21069C:  UXTAH.W         R1, R2, R1
2106A0:  LSLS            R1, R1, #1
2106A2:  STRH.W          R1, [SP,#0x58+var_2E]
2106A6:  LDRH.W          R2, [R0,#0xB42]
2106AA:  UXTAH.W         R1, R2, R1
2106AE:  LSLS            R1, R1, #1
2106B0:  STRH.W          R1, [SP,#0x58+var_2C]
2106B4:  LDRH.W          R2, [R0,#0xB44]
2106B8:  UXTAH.W         R1, R2, R1
2106BC:  LSLS            R1, R1, #1
2106BE:  STRH.W          R1, [SP,#0x58+var_2A]
2106C2:  LDRH.W          R2, [R0,#0xB46]
2106C6:  UXTAH.W         R1, R2, R1
2106CA:  LSLS            R1, R1, #1
2106CC:  STRH.W          R1, [SP,#0x58+var_28]
2106D0:  LDRH.W          R2, [R0,#0xB48]
2106D4:  UXTAH.W         R1, R2, R1
2106D8:  LSLS            R1, R1, #1
2106DA:  STRH.W          R1, [SP,#0x58+var_26]
2106DE:  LDRH.W          R2, [R0,#0xB4A]
2106E2:  UXTAH.W         R1, R2, R1
2106E6:  LSLS            R1, R1, #1
2106E8:  STRH.W          R1, [SP,#0x58+var_24]
2106EC:  LDRH.W          R2, [R0,#0xB4C]
2106F0:  UXTAH.W         R1, R2, R1
2106F4:  LSLS            R1, R1, #1
2106F6:  STRH.W          R1, [SP,#0x58+var_22]
2106FA:  LDRH.W          R2, [R0,#0xB4E]
2106FE:  UXTAH.W         R1, R2, R1
210702:  LSLS            R2, R1, #1
210704:  STRH.W          R2, [SP,#0x58+var_20]
210708:  LDRH.W          R0, [R0,#0xB50]
21070C:  ADD.W           R0, R0, R1,LSL#1
210710:  LDR             R1, [SP,#0x58+var_48]
210712:  LSLS            R0, R0, #1
210714:  CMP             R1, #0
210716:  STRH.W          R0, [SP,#0x58+var_1E]
21071A:  BLT             loc_210758
21071C:  ADD.W           R12, SP, #0x58+var_3C
210720:  MOVS            R0, #0
210722:  ADD.W           R2, R9, R0,LSL#2
210726:  LDRH            R2, [R2,#2]
210728:  CBZ             R2, loc_210750
21072A:  LDRH.W          R3, [R12,R2,LSL#1]
21072E:  MOVS            R5, #0
210730:  ADDS            R6, R3, #1
210732:  STRH.W          R6, [R12,R2,LSL#1]
210736:  ADDS            R6, R2, #1
210738:  AND.W           R2, R3, #1
21073C:  SUBS            R6, #1
21073E:  ORR.W           R4, R5, R2
210742:  LSRS            R3, R3, #1
210744:  CMP             R6, #1
210746:  MOV.W           R5, R4,LSL#1
21074A:  BGT             loc_210738
21074C:  STRH.W          R4, [R9,R0,LSL#2]
210750:  ADDS            R2, R0, #1
210752:  CMP             R0, R1
210754:  MOV             R0, R2
210756:  BNE             loc_210722
210758:  ADD             SP, SP, #0x3C ; '<'
21075A:  POP.W           {R8-R11}
21075E:  POP             {R4-R7,PC}
