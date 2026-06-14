; =========================================================
; Game Engine Function: sub_DD260
; Address            : 0xDD260 - 0xDD6E4
; =========================================================

DD260:  PUSH            {R4-R7,LR}
DD262:  ADD             R7, SP, #0xC
DD264:  PUSH.W          {R8-R11}
DD268:  SUB             SP, SP, #0x3C
DD26A:  LDRB.W          R9, [R3,#8]
DD26E:  STR             R0, [SP,#0x58+var_4C]
DD270:  CMP.W           R9, #0xF; switch 16 cases
DD274:  BHI.W           def_DD280; jumptable 000DD280 default case, cases 7-14
DD278:  MOV             R4, R0
DD27A:  MOV             R10, R3
DD27C:  MOV             R8, R2
DD27E:  MOV             R5, R1
DD280:  TBH.W           [PC,R9,LSL#1]; switch jump
DD284:  DCW 0x10; jump table for switch statement
DD286:  DCW 0x10
DD288:  DCW 0x7A
DD28A:  DCW 0x4E
DD28C:  DCW 0x4E
DD28E:  DCW 0x23
DD290:  DCW 0x23
DD292:  DCW 0x22C
DD294:  DCW 0x22C
DD296:  DCW 0x22C
DD298:  DCW 0x22C
DD29A:  DCW 0x22C
DD29C:  DCW 0x22C
DD29E:  DCW 0x22C
DD2A0:  DCW 0x22C
DD2A2:  DCW 0xAF
DD2A4:  LDRH.W          R0, [R10,#9]; jumptable 000DD280 cases 0,1
DD2A8:  LSLS            R0, R0, #0x17
DD2AA:  BPL.W           loc_DD534
DD2AE:  LDR             R0, [R7,#arg_0]
DD2B0:  MOV             R2, R5
DD2B2:  STR             R0, [SP,#0x58+var_50]
DD2B4:  ADD             R0, SP, #0x58+var_4C
DD2B6:  MOVS            R3, #0
DD2B8:  STRD.W          R8, R10, [SP,#0x58+var_58]
DD2BC:  BL              sub_DD6FC
DD2C0:  CMP             R0, #0
DD2C2:  BEQ.W           loc_DD532
DD2C6:  LDR             R4, [SP,#0x58+var_4C]
DD2C8:  B               loc_DD6D2
DD2CA:  LDRH.W          R0, [R10,#9]; jumptable 000DD280 cases 5,6
DD2CE:  LSLS            R1, R0, #0x18
DD2D0:  BPL             loc_DD2F0
DD2D2:  MOVW            R1, #0x6230
DD2D6:  CMP.W           R9, #6
DD2DA:  IT EQ
DD2DC:  MOVWEQ          R1, #0x4230
DD2E0:  CMP.W           R8, #0
DD2E4:  IT NE
DD2E6:  LSLNE           R1, R1, #8
DD2E8:  ORR.W           R1, R1, R8
DD2EC:  ADD.W           R8, R1, #0x2000000
DD2F0:  LDRD.W          R1, R3, [R10]
DD2F4:  ADDS            R2, R3, #1
DD2F6:  ORRS            R2, R1
DD2F8:  ORR.W           R2, R5, #1
DD2FC:  CLZ.W           R9, R2
DD300:  RSB.W           R11, R9, #0x20 ; ' '
DD304:  BEQ             loc_DD3FE
DD306:  AND.W           R0, R0, #0xF
DD30A:  ADD.W           R2, R11, R8,LSR#24
DD30E:  CMP             R0, #4
DD310:  BNE.W           loc_DD4C6
DD314:  SUBS            R0, R1, R2
DD316:  IT CC
DD318:  MOVCC           R0, #0
DD31A:  IT HI
DD31C:  MOVHI           R2, R1
DD31E:  B               loc_DD638
DD320:  LDRH.W          R0, [R10,#9]; jumptable 000DD280 cases 3,4
DD324:  LSLS            R1, R0, #0x18
DD326:  BPL             loc_DD346
DD328:  MOVW            R1, #0x7830
DD32C:  CMP.W           R9, #4
DD330:  IT EQ
DD332:  MOVWEQ          R1, #0x5830
DD336:  CMP.W           R8, #0
DD33A:  IT NE
DD33C:  LSLNE           R1, R1, #8
DD33E:  ORR.W           R1, R1, R8
DD342:  ADD.W           R8, R1, #0x2000000
DD346:  ORR.W           R2, R5, #1
DD34A:  LDRD.W          R1, R3, [R10]
DD34E:  CLZ.W           R11, R2
DD352:  MOVS            R2, #8
DD354:  SUB.W           R6, R2, R11,LSR#2
DD358:  ADDS            R2, R3, #1
DD35A:  ORRS            R2, R1
DD35C:  BEQ             loc_DD45A
DD35E:  AND.W           R0, R0, #0xF
DD362:  ADD.W           R2, R6, R8,LSR#24
DD366:  CMP             R0, #4
DD368:  BNE.W           loc_DD4D8
DD36C:  SUBS            R0, R1, R2
DD36E:  IT CC
DD370:  MOVCC           R0, #0
DD372:  IT HI
DD374:  MOVHI           R2, R1
DD376:  B               loc_DD654
DD378:  ORR.W           R0, R5, #1; jumptable 000DD280 case 2
DD37C:  MOVW            R1, #0xAAAB
DD380:  CLZ.W           R0, R0
DD384:  MOVT            R1, #0xAAAA
DD388:  EOR.W           R0, R0, #0x1F
DD38C:  MOVS            R2, #1
DD38E:  UMULL.W         R0, R9, R0, R1
DD392:  LDRH.W          R1, [R10,#9]
DD396:  LDR.W           R0, [R10,#4]
DD39A:  ADD.W           R11, R2, R9,LSR#1
DD39E:  LSLS            R2, R1, #0x18
DD3A0:  BPL             loc_DD3BC
DD3A2:  CMP             R0, R11
DD3A4:  BGT             loc_DD3BC
DD3A6:  CBZ             R5, loc_DD3BC
DD3A8:  MOV.W           R2, #0x3000
DD3AC:  CMP.W           R8, #0
DD3B0:  IT EQ
DD3B2:  MOVEQ           R2, #0x30 ; '0'
DD3B4:  ORR.W           R2, R2, R8
DD3B8:  ADD.W           R8, R2, #0x1000000
DD3BC:  LDR.W           R3, [R10]
DD3C0:  ADDS            R2, R0, #1
DD3C2:  ORRS            R2, R3
DD3C4:  BEQ.W           loc_DD5CC
DD3C8:  AND.W           R1, R1, #0xF
DD3CC:  ADD.W           R2, R11, R8,LSR#24
DD3D0:  CMP             R1, #4
DD3D2:  BNE.W           loc_DD626
DD3D6:  SUBS            R1, R3, R2
DD3D8:  IT CC
DD3DA:  MOVCC           R1, #0
DD3DC:  IT HI
DD3DE:  MOVHI           R2, R3
DD3E0:  B               loc_DD6B8
DD3E2:  MOVS            R0, #0; jumptable 000DD280 case 15
DD3E4:  MOV             R1, R10
DD3E6:  STRB.W          R0, [SP,#0x58+var_48]
DD3EA:  ADD             R0, SP, #0x58+var_48
DD3EC:  STR             R0, [SP,#0x58+var_58]
DD3EE:  MOV             R0, R4
DD3F0:  MOVS            R2, #1
DD3F2:  MOVS            R3, #1
DD3F4:  STRB.W          R5, [SP,#0x58+var_48+1]
DD3F8:  BL              sub_DDF34
DD3FC:  B               loc_DD6D0
DD3FE:  CMP.W           R8, #0
DD402:  ITT NE
DD404:  BICNE.W         R6, R8, #0xFF000000
DD408:  CMPNE           R6, #0
DD40A:  BEQ             loc_DD42C
DD40C:  LDRD.W          R0, R2, [R4,#8]
DD410:  ADDS            R1, R0, #1
DD412:  CMP             R2, R1
DD414:  BCS             loc_DD422
DD416:  LDR             R0, [R4]
DD418:  LDR             R2, [R0]
DD41A:  MOV             R0, R4
DD41C:  BLX             R2
DD41E:  LDR             R0, [R4,#8]
DD420:  ADDS            R1, R0, #1
DD422:  LDR             R2, [R4,#4]
DD424:  STR             R1, [R4,#8]
DD426:  STRB            R6, [R2,R0]
DD428:  LSRS            R6, R6, #8
DD42A:  BNE             loc_DD40C
DD42C:  LDRD.W          R0, R2, [R4,#8]
DD430:  ADD.W           R1, R0, R11
DD434:  CMP             R2, R1
DD436:  BCC             loc_DD4E8
DD438:  LDR             R2, [R4,#4]
DD43A:  STR             R1, [R4,#8]
DD43C:  CMP             R2, #0
DD43E:  BEQ             loc_DD4E8
DD440:  SUB.W           R0, R0, R9
DD444:  MOVS            R1, #0x18
DD446:  ADD             R0, R2
DD448:  ADDS            R0, #0x1F
DD44A:  LSRS            R2, R5, #1
DD44C:  BFI.W           R5, R1, #1, #0x1F
DD450:  STRB.W          R5, [R0],#-1
DD454:  MOV             R5, R2
DD456:  BNE             loc_DD44A
DD458:  B               loc_DD6D2
DD45A:  MOV             R10, R6
DD45C:  CMP.W           R8, #0
DD460:  ITT NE
DD462:  BICNE.W         R6, R8, #0xFF000000
DD466:  CMPNE           R6, #0
DD468:  BEQ             loc_DD48A
DD46A:  LDRD.W          R0, R2, [R4,#8]
DD46E:  ADDS            R1, R0, #1
DD470:  CMP             R2, R1
DD472:  BCS             loc_DD480
DD474:  LDR             R0, [R4]
DD476:  LDR             R2, [R0]
DD478:  MOV             R0, R4
DD47A:  BLX             R2
DD47C:  LDR             R0, [R4,#8]
DD47E:  ADDS            R1, R0, #1
DD480:  LDR             R2, [R4,#4]
DD482:  STR             R1, [R4,#8]
DD484:  STRB            R6, [R2,R0]
DD486:  LSRS            R6, R6, #8
DD488:  BNE             loc_DD46A
DD48A:  LDRD.W          R2, R3, [R4,#8]
DD48E:  MOV.W           R0, R11,LSR#2
DD492:  ADD.W           R1, R2, R10
DD496:  CMP             R3, R1
DD498:  BCC             loc_DD506
DD49A:  LDR             R3, [R4,#4]
DD49C:  STR             R1, [R4,#8]
DD49E:  CBZ             R3, loc_DD506
DD4A0:  SUBS            R0, R2, R0
DD4A2:  LDR             R6, =(a0123456789abcd - 0xDD4AE); "0123456789abcdef" ...
DD4A4:  LDR             R1, =(a0123456789abcd_0 - 0xDD4B0); "0123456789ABCDEF" ...
DD4A6:  ADD             R0, R3
DD4A8:  ADDS            R0, #7
DD4AA:  ADD             R6, PC; "0123456789abcdef"
DD4AC:  ADD             R1, PC; "0123456789ABCDEF"
DD4AE:  CMP.W           R9, #4
DD4B2:  IT NE
DD4B4:  MOVNE           R1, R6
DD4B6:  AND.W           R2, R5, #0xF
DD4BA:  LSRS            R5, R5, #4
DD4BC:  LDRB            R2, [R1,R2]
DD4BE:  STRB.W          R2, [R0],#-1
DD4C2:  BNE             loc_DD4B6
DD4C4:  B               loc_DD6D2
DD4C6:  CMP             R3, R11
DD4C8:  BLE.W           loc_DD636
DD4CC:  MOV.W           R1, R8,LSR#24
DD4D0:  SUB.W           R0, R3, R11
DD4D4:  ADDS            R2, R3, R1
DD4D6:  B               loc_DD638
DD4D8:  CMP             R3, R6
DD4DA:  BLE.W           loc_DD652
DD4DE:  MOV.W           R1, R8,LSR#24
DD4E2:  SUBS            R0, R3, R6
DD4E4:  ADDS            R2, R3, R1
DD4E6:  B               loc_DD654
DD4E8:  ADD             R0, SP, #0x58+var_48
DD4EA:  MOVS            R2, #0x18
DD4EC:  ADD.W           R1, R0, R11
DD4F0:  SUB.W           R0, R0, R9
DD4F4:  ADDS            R0, #0x1F
DD4F6:  LSRS            R3, R5, #1
DD4F8:  BFI.W           R5, R2, #1, #0x1F
DD4FC:  STRB.W          R5, [R0],#-1
DD500:  MOV             R5, R3
DD502:  BNE             loc_DD4F6
DD504:  B               loc_DD690
DD506:  LDR             R1, =(a0123456789abcd - 0xDD512); "0123456789abcdef" ...
DD508:  ADD             R3, SP, #0x58+var_48
DD50A:  LDR             R2, =(a0123456789abcd_0 - 0xDD518); "0123456789ABCDEF" ...
DD50C:  SUBS            R0, R3, R0
DD50E:  ADD             R1, PC; "0123456789abcdef"
DD510:  CMP.W           R9, #4
DD514:  ADD             R2, PC; "0123456789ABCDEF"
DD516:  ADD.W           R0, R0, #7
DD51A:  IT NE
DD51C:  MOVNE           R2, R1
DD51E:  ADD.W           R1, R3, R10
DD522:  AND.W           R3, R5, #0xF
DD526:  LSRS            R5, R5, #4
DD528:  LDRB            R3, [R2,R3]
DD52A:  STRB.W          R3, [R0],#-1
DD52E:  BNE             loc_DD522
DD530:  B               loc_DD690
DD532:  LDR             R4, [SP,#0x58+var_4C]
DD534:  LDR             R2, =(unk_91AF8 - 0xDD546)
DD536:  ORR.W           R3, R5, #1
DD53A:  CLZ.W           R3, R3
DD53E:  LDRD.W          R0, R1, [R10]
DD542:  ADD             R2, PC; unk_91AF8
DD544:  EOR.W           R3, R3, #0x1F
DD548:  LDR.W           R6, [R2,R3,LSL#3]
DD54C:  ADD.W           R2, R2, R3,LSL#3
DD550:  LDR             R2, [R2,#4]
DD552:  ADDS            R3, R6, R5
DD554:  ADC.W           R9, R2, #0
DD558:  ADDS            R2, R1, #1
DD55A:  ORRS            R2, R0
DD55C:  BEQ             loc_DD57A
DD55E:  LDRH.W          R3, [R10,#9]
DD562:  ADD.W           R2, R9, R8,LSR#24
DD566:  AND.W           R3, R3, #0xF
DD56A:  CMP             R3, #4
DD56C:  BNE             loc_DD5BC
DD56E:  SUBS            R3, R0, R2
DD570:  IT CC
DD572:  MOVCC           R3, #0
DD574:  IT HI
DD576:  MOVHI           R2, R0
DD578:  B               loc_DD69C
DD57A:  CMP.W           R8, #0
DD57E:  ITT NE
DD580:  BICNE.W         R6, R8, #0xFF000000
DD584:  CMPNE           R6, #0
DD586:  BEQ             loc_DD5A8
DD588:  LDRD.W          R0, R2, [R4,#8]
DD58C:  ADDS            R1, R0, #1
DD58E:  CMP             R2, R1
DD590:  BCS             loc_DD59E
DD592:  LDR             R0, [R4]
DD594:  LDR             R2, [R0]
DD596:  MOV             R0, R4
DD598:  BLX             R2
DD59A:  LDR             R0, [R4,#8]
DD59C:  ADDS            R1, R0, #1
DD59E:  LDR             R2, [R4,#4]
DD5A0:  STR             R1, [R4,#8]
DD5A2:  STRB            R6, [R2,R0]
DD5A4:  LSRS            R6, R6, #8
DD5A6:  BNE             loc_DD588
DD5A8:  ADD             R6, SP, #0x58+var_48
DD5AA:  ADD             R0, SP, #0x58+var_24
DD5AC:  MOV             R2, R5
DD5AE:  MOV             R3, R9
DD5B0:  MOV             R1, R6
DD5B2:  BL              sub_DCEB4
DD5B6:  LDR             R1, [SP,#0x58+var_20]
DD5B8:  MOV             R0, R6
DD5BA:  B               loc_DD692
DD5BC:  CMP             R1, R9
DD5BE:  BLE             loc_DD69A
DD5C0:  MOV.W           R0, R8,LSR#24
DD5C4:  SUB.W           R3, R1, R9
DD5C8:  ADDS            R2, R1, R0
DD5CA:  B               loc_DD69C
DD5CC:  CMP.W           R8, #0
DD5D0:  ITT NE
DD5D2:  BICNE.W         R6, R8, #0xFF000000
DD5D6:  CMPNE           R6, #0
DD5D8:  BEQ             loc_DD5FA
DD5DA:  LDRD.W          R0, R2, [R4,#8]
DD5DE:  ADDS            R1, R0, #1
DD5E0:  CMP             R2, R1
DD5E2:  BCS             loc_DD5F0
DD5E4:  LDR             R0, [R4]
DD5E6:  LDR             R2, [R0]
DD5E8:  MOV             R0, R4
DD5EA:  BLX             R2
DD5EC:  LDR             R0, [R4,#8]
DD5EE:  ADDS            R1, R0, #1
DD5F0:  LDR             R2, [R4,#4]
DD5F2:  STR             R1, [R4,#8]
DD5F4:  STRB            R6, [R2,R0]
DD5F6:  LSRS            R6, R6, #8
DD5F8:  BNE             loc_DD5DA
DD5FA:  LDRD.W          R1, R3, [R4,#8]
DD5FE:  MOV.W           R0, R9,LSR#1
DD602:  ADD.W           R2, R1, R11
DD606:  CMP             R3, R2
DD608:  BCC             loc_DD67A
DD60A:  LDR             R3, [R4,#4]
DD60C:  STR             R2, [R4,#8]
DD60E:  CBZ             R3, loc_DD67A
DD610:  ADD             R0, R1
DD612:  MOVS            R1, #6
DD614:  ADD             R0, R3
DD616:  LSRS            R2, R5, #3
DD618:  BFI.W           R5, R1, #3, #0x1D
DD61C:  STRB.W          R5, [R0],#-1
DD620:  MOV             R5, R2
DD622:  BNE             loc_DD616
DD624:  B               loc_DD6D2
DD626:  CMP             R0, R11
DD628:  BLE             loc_DD6B6
DD62A:  MOV.W           R2, R8,LSR#24
DD62E:  SUB.W           R1, R0, R11
DD632:  ADD             R2, R0
DD634:  B               loc_DD6B8
DD636:  MOVS            R0, #0
DD638:  ADD             R1, SP, #0x58+var_40
DD63A:  MOV             R3, R2
DD63C:  STM.W           R1, {R0,R5,R11}
DD640:  ADD             R0, SP, #0x58+var_48
DD642:  MOV             R1, R10
DD644:  STR             R0, [SP,#0x58+var_58]
DD646:  MOV             R0, R4
DD648:  STRD.W          R8, R2, [SP,#0x58+var_48]
DD64C:  BL              sub_DDD64
DD650:  B               loc_DD6D0
DD652:  MOVS            R0, #0
DD654:  ADD             R1, SP, #0x58+var_40
DD656:  MOV             R3, R2
DD658:  STM             R1!, {R0,R5,R6}
DD65A:  SUB.W           R0, R9, #4
DD65E:  CLZ.W           R0, R0
DD662:  MOV             R1, R10
DD664:  STRD.W          R8, R2, [SP,#0x58+var_48]
DD668:  LSRS            R0, R0, #5
DD66A:  STRB.W          R0, [SP,#0x58+var_34]
DD66E:  ADD             R0, SP, #0x58+var_48
DD670:  STR             R0, [SP,#0x58+var_58]
DD672:  MOV             R0, R4
DD674:  BL              sub_DDC48
DD678:  B               loc_DD6D0
DD67A:  ADD             R1, SP, #0x58+var_48
DD67C:  MOVS            R2, #6
DD67E:  ADD             R0, R1
DD680:  ADD             R1, R11
DD682:  LSRS            R3, R5, #3
DD684:  BFI.W           R5, R2, #3, #0x1D
DD688:  STRB.W          R5, [R0],#-1
DD68C:  MOV             R5, R3
DD68E:  BNE             loc_DD682
DD690:  ADD             R0, SP, #0x58+var_48
DD692:  MOV             R2, R4
DD694:  BL              sub_DCF1C
DD698:  B               loc_DD6D0
DD69A:  MOVS            R3, #0
DD69C:  ADD             R0, SP, #0x58+var_40
DD69E:  MOV             R1, R10
DD6A0:  STM.W           R0, {R3,R5,R9}
DD6A4:  ADD             R0, SP, #0x58+var_48
DD6A6:  MOV             R3, R2
DD6A8:  STR             R0, [SP,#0x58+var_58]
DD6AA:  MOV             R0, R4
DD6AC:  STRD.W          R8, R2, [SP,#0x58+var_48]
DD6B0:  BL              sub_DDB98
DD6B4:  B               loc_DD6D0
DD6B6:  MOVS            R1, #0
DD6B8:  ADD             R0, SP, #0x58+var_40
DD6BA:  MOV             R3, R2
DD6BC:  STM.W           R0, {R1,R5,R11}
DD6C0:  ADD             R0, SP, #0x58+var_48
DD6C2:  MOV             R1, R10
DD6C4:  STR             R0, [SP,#0x58+var_58]
DD6C6:  MOV             R0, R4
DD6C8:  STRD.W          R8, R2, [SP,#0x58+var_48]
DD6CC:  BL              sub_DDE4C
DD6D0:  MOV             R4, R0
DD6D2:  MOV             R0, R4
DD6D4:  ADD             SP, SP, #0x3C ; '<'
DD6D6:  POP.W           {R8-R11}
DD6DA:  POP             {R4-R7,PC}
DD6DC:  LDR             R0, =(aInvalidTypeSpe - 0xDD6E2); jumptable 000DD280 default case, cases 7-14
DD6DE:  ADD             R0, PC; "invalid type specifier"
DD6E0:  BLX             j__ZN3fmt2v86detail18throw_format_errorEPKc; fmt::v8::detail::throw_format_error(char const*)
