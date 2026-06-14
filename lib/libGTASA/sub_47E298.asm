; =========================================================
; Game Engine Function: sub_47E298
; Address            : 0x47E298 - 0x47EEB2
; =========================================================

47E298:  PUSH            {R4-R7,LR}
47E29A:  ADD             R7, SP, #0xC
47E29C:  PUSH.W          {R8-R11}
47E2A0:  SUB             SP, SP, #0x14C
47E2A2:  MOV             R9, R0
47E2A4:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x47E2B2)
47E2A8:  ADD             R1, SP, #0x168+var_38
47E2AA:  MOV.W           R11, #0x35 ; '5'
47E2AE:  ADD             R0, PC; __stack_chk_guard_ptr
47E2B0:  LDR             R0, [R0]; __stack_chk_guard
47E2B2:  LDR             R0, [R0]
47E2B4:  STR             R0, [SP,#0x168+var_20]
47E2B6:  ORR.W           R0, R1, #1
47E2BA:  STR             R0, [SP,#0x168+var_154]
47E2BC:  ADD.W           R0, R1, #0xD
47E2C0:  STR             R0, [SP,#0x168+var_158]
47E2C2:  ADD.W           R0, R1, #9
47E2C6:  STR             R0, [SP,#0x168+var_15C]
47E2C8:  ORR.W           R1, R1, #5
47E2CC:  LDR.W           R0, [R9,#0x17C]
47E2D0:  STR             R1, [SP,#0x168+var_160]
47E2D2:  LDR.W           R1, =(jpeg_natural_order_ptr - 0x47E2DA)
47E2D6:  ADD             R1, PC; jpeg_natural_order_ptr
47E2D8:  LDR             R1, [R1]; jpeg_natural_order
47E2DA:  STR             R1, [SP,#0x168+var_14C]
47E2DC:  CMP             R0, #0
47E2DE:  BNE.W           loc_47E75A
47E2E2:  LDR.W           R0, [R9,#0x194]
47E2E6:  LDRB            R0, [R0,#0xC]
47E2E8:  CBZ             R0, loc_47E2F6
47E2EA:  MOV             R0, R9
47E2EC:  BL              sub_47E110
47E2F0:  CBNZ            R0, loc_47E360
47E2F2:  B.W             loc_47EE94
47E2F6:  LDR.W           R4, [R9,#0x18]
47E2FA:  LDR             R0, [R4,#4]
47E2FC:  CBNZ            R0, loc_47E30C
47E2FE:  LDR             R1, [R4,#0xC]
47E300:  MOV             R0, R9
47E302:  BLX             R1
47E304:  CMP             R0, #0
47E306:  BEQ.W           loc_47EE94
47E30A:  LDR             R0, [R4,#4]
47E30C:  LDR             R5, [R4]
47E30E:  SUBS            R0, #1
47E310:  LDRB.W          R8, [R5],#1
47E314:  BNE             loc_47E326
47E316:  LDR             R1, [R4,#0xC]
47E318:  MOV             R0, R9
47E31A:  BLX             R1
47E31C:  CMP             R0, #0
47E31E:  BEQ.W           loc_47EE94
47E322:  LDRD.W          R5, R0, [R4]
47E326:  LDRB.W          R6, [R5],#1
47E32A:  CMP.W           R8, #0xFF
47E32E:  SUB.W           R10, R0, #1
47E332:  IT EQ
47E334:  CMPEQ           R6, #0xD8
47E336:  BEQ             loc_47E358
47E338:  LDR.W           R0, [R9]
47E33C:  STR.W           R11, [R0,#0x14]
47E340:  LDR.W           R0, [R9]
47E344:  STR.W           R8, [R0,#0x18]
47E348:  LDR.W           R0, [R9]
47E34C:  STR             R6, [R0,#0x1C]
47E34E:  LDR.W           R0, [R9]
47E352:  LDR             R1, [R0]
47E354:  MOV             R0, R9
47E356:  BLX             R1
47E358:  STR.W           R6, [R9,#0x17C]
47E35C:  STRD.W          R5, R10, [R4]
47E360:  LDR.W           R0, [R9,#0x17C]
47E364:  B               loc_47E75A
47E366:  CBZ             R4, loc_47E37A
47E368:  LDR.W           R0, [R9]
47E36C:  MOVS            R1, #0xB
47E36E:  STR             R1, [R0,#0x14]
47E370:  LDR.W           R0, [R9]
47E374:  LDR             R1, [R0]
47E376:  MOV             R0, R9
47E378:  BLX             R1
47E37A:  STRD.W          R5, R6, [R8]
47E37E:  B               loc_47E74E
47E380:  BL              sub_47F33A
47E384:  CMP             R0, #0
47E386:  BNE.W           loc_47E74E
47E38A:  B.W             loc_47EE96
47E38E:  LDR.W           R0, [R9]
47E392:  MOVS            R1, #0x66 ; 'f'
47E394:  STR             R1, [R0,#0x14]
47E396:  MOVS            R1, #1
47E398:  LDR.W           R0, [R9]
47E39C:  LDR             R2, [R0,#4]
47E39E:  MOV             R0, R9
47E3A0:  BLX             R2
47E3A2:  LDR.W           R0, [R9,#0x194]
47E3A6:  LDRB            R1, [R0,#0xC]
47E3A8:  CBZ             R1, loc_47E3C0
47E3AA:  LDR.W           R0, [R9]
47E3AE:  MOVS            R1, #0x3D ; '='
47E3B0:  STR             R1, [R0,#0x14]
47E3B2:  LDR.W           R0, [R9]
47E3B6:  LDR             R1, [R0]
47E3B8:  MOV             R0, R9
47E3BA:  BLX             R1
47E3BC:  LDR.W           R0, [R9,#0x194]
47E3C0:  MOVS            R2, #0
47E3C2:  MOV.W           R1, #0x1010101
47E3C6:  MOV.W           R3, #0x5050505
47E3CA:  MOVW            R6, #0x101
47E3CE:  MOVW            R5, #0x505
47E3D2:  STR.W           R2, [R9,#0xCA]
47E3D6:  STR.W           R1, [R9,#0xDA]
47E3DA:  STR.W           R3, [R9,#0xEA]
47E3DE:  STR.W           R2, [R9,#0xCE]
47E3E2:  STR.W           R1, [R9,#0xDE]
47E3E6:  STR.W           R3, [R9,#0xEE]
47E3EA:  STRH.W          R6, [R9,#0xE2]
47E3EE:  STRH.W          R5, [R9,#0xF2]
47E3F2:  STR.W           R2, [R9,#0xD2]
47E3F6:  STRH.W          R5, [R9,#0xF4]
47E3FA:  STR.W           R1, [R9,#0xE4]
47E3FE:  MOVS            R1, #1
47E400:  STR.W           R2, [R9,#0xD6]
47E404:  STRH.W          R6, [R9,#0xE8]
47E408:  STR.W           R3, [R9,#0xF6]
47E40C:  STR.W           R2, [R9,#0xFC]
47E410:  STR.W           R2, [R9,#0x28]
47E414:  STRB.W          R2, [R9,#0x10A]
47E418:  STRB.W          R1, [R9,#0x101]
47E41C:  STRB.W          R2, [R9,#0x100]
47E420:  STRB.W          R1, [R9,#0x102]
47E424:  STRB.W          R2, [R9,#0x103]
47E428:  STRH.W          R1, [R9,#0x104]
47E42C:  STRH.W          R1, [R9,#0x106]
47E430:  STRB.W          R2, [R9,#0x108]
47E434:  STRB.W          R2, [R9,#0x109]
47E438:  STRB            R1, [R0,#0xC]
47E43A:  B               loc_47E74E
47E43C:  LDR.W           R8, [R9,#0x18]
47E440:  LDR.W           R0, [R8,#4]
47E444:  CBNZ            R0, loc_47E458
47E446:  LDR.W           R1, [R8,#0xC]
47E44A:  MOV             R0, R9
47E44C:  BLX             R1
47E44E:  CMP             R0, #0
47E450:  BEQ.W           loc_47EE94
47E454:  LDR.W           R0, [R8,#4]
47E458:  LDR.W           R11, [R8]
47E45C:  SUBS            R0, #1
47E45E:  LDRB.W          R4, [R11],#1
47E462:  BNE             loc_47E476
47E464:  LDR.W           R1, [R8,#0xC]
47E468:  MOV             R0, R9
47E46A:  BLX             R1
47E46C:  CMP             R0, #0
47E46E:  BEQ.W           loc_47EE94
47E472:  LDRD.W          R11, R0, [R8]
47E476:  LDRB.W          R2, [R11],#1
47E47A:  LSLS            R1, R4, #8
47E47C:  SUB.W           R10, R0, #1
47E480:  ORRS            R1, R2
47E482:  SUBS            R4, R1, #2
47E484:  CMP             R1, #3
47E486:  BCC.W           loc_47E5F4
47E48A:  CMP.W           R10, #0
47E48E:  BNE             loc_47E4A2
47E490:  LDR.W           R1, [R8,#0xC]
47E494:  MOV             R0, R9
47E496:  BLX             R1
47E498:  CMP             R0, #0
47E49A:  BEQ.W           loc_47EE94
47E49E:  LDRD.W          R11, R10, [R8]
47E4A2:  STR             R4, [SP,#0x168+var_164]
47E4A4:  MOVS            R2, #0x51 ; 'Q'
47E4A6:  LDR.W           R0, [R9]
47E4AA:  LDRB.W          R1, [R11]
47E4AE:  STR             R2, [R0,#0x14]
47E4B0:  AND.W           R4, R1, #0xF
47E4B4:  LDR.W           R0, [R9]
47E4B8:  LSRS            R1, R1, #4
47E4BA:  STR             R4, [R0,#0x18]
47E4BC:  LDR.W           R0, [R9]
47E4C0:  STR             R1, [SP,#0x168+var_150]
47E4C2:  STR             R1, [R0,#0x1C]
47E4C4:  MOVS            R1, #1
47E4C6:  LDR.W           R0, [R9]
47E4CA:  LDR             R2, [R0,#4]
47E4CC:  MOV             R0, R9
47E4CE:  BLX             R2
47E4D0:  CMP             R4, #4
47E4D2:  BCC             loc_47E4EC
47E4D4:  LDR.W           R0, [R9]
47E4D8:  MOVS            R1, #0x1F
47E4DA:  STR             R1, [R0,#0x14]
47E4DC:  LDR.W           R0, [R9]
47E4E0:  STR             R4, [R0,#0x18]
47E4E2:  LDR.W           R0, [R9]
47E4E6:  LDR             R1, [R0]
47E4E8:  MOV             R0, R9
47E4EA:  BLX             R1
47E4EC:  ADD.W           R4, R9, R4,LSL#2
47E4F0:  LDR.W           R6, [R4,#0x90]!
47E4F4:  CBNZ            R6, loc_47E500
47E4F6:  MOV             R0, R9
47E4F8:  BLX             j__Z22jpeg_alloc_quant_tableP18jpeg_common_struct; jpeg_alloc_quant_table(jpeg_common_struct *)
47E4FC:  MOV             R6, R0
47E4FE:  STR             R6, [R4]
47E500:  ADD.W           R11, R11, #1
47E504:  SUB.W           R10, R10, #1
47E508:  MOVS            R4, #0
47E50A:  LDR             R0, [SP,#0x168+var_150]
47E50C:  CBZ             R0, loc_47E54C
47E50E:  CMP.W           R10, #0
47E512:  BNE             loc_47E526
47E514:  LDR.W           R1, [R8,#0xC]
47E518:  MOV             R0, R9
47E51A:  BLX             R1
47E51C:  CMP             R0, #0
47E51E:  BEQ.W           loc_47EE94
47E522:  LDRD.W          R11, R10, [R8]
47E526:  LDRB.W          R5, [R11],#1
47E52A:  SUBS.W          R10, R10, #1
47E52E:  BNE             loc_47E542
47E530:  LDR.W           R1, [R8,#0xC]
47E534:  MOV             R0, R9
47E536:  BLX             R1
47E538:  CMP             R0, #0
47E53A:  BEQ.W           loc_47EE94
47E53E:  LDRD.W          R11, R10, [R8]
47E542:  LDRB.W          R1, [R11]
47E546:  LSLS            R0, R5, #8
47E548:  ORRS            R0, R1
47E54A:  B               loc_47E568
47E54C:  CMP.W           R10, #0
47E550:  BNE             loc_47E564
47E552:  LDR.W           R1, [R8,#0xC]
47E556:  MOV             R0, R9
47E558:  BLX             R1
47E55A:  CMP             R0, #0
47E55C:  BEQ.W           loc_47EE94
47E560:  LDRD.W          R11, R10, [R8]
47E564:  LDRB.W          R0, [R11]
47E568:  LDR             R1, [SP,#0x168+var_14C]
47E56A:  ADD.W           R11, R11, #1
47E56E:  SUB.W           R10, R10, #1
47E572:  CMP             R4, #0x3F ; '?'
47E574:  LDR.W           R1, [R1,R4,LSL#2]
47E578:  STRH.W          R0, [R6,R1,LSL#1]
47E57C:  ADD.W           R0, R4, #1
47E580:  MOV             R4, R0
47E582:  BLT             loc_47E50A
47E584:  LDR.W           R0, [R9]
47E588:  LDR             R1, [R0,#0x68]
47E58A:  CMP             R1, #2
47E58C:  BLT             loc_47E5DC
47E58E:  ADD.W           R4, R6, #0xE
47E592:  MOVS            R5, #0
47E594:  B               loc_47E59E
47E596:  ADDS            R4, #0x10
47E598:  LDR.W           R0, [R9]
47E59C:  ADDS            R5, #8
47E59E:  LDRH.W          R1, [R4,#-0xE]
47E5A2:  STR             R1, [R0,#0x18]
47E5A4:  ADD.W           R1, R6, R5,LSL#1
47E5A8:  LDRH            R2, [R1,#2]
47E5AA:  STR             R2, [R0,#0x1C]
47E5AC:  LDRH            R2, [R1,#4]
47E5AE:  STR             R2, [R0,#0x20]
47E5B0:  LDRH            R2, [R1,#6]
47E5B2:  STR             R2, [R0,#0x24]
47E5B4:  LDRH            R2, [R1,#8]
47E5B6:  STR             R2, [R0,#0x28]
47E5B8:  LDRH            R2, [R1,#0xA]
47E5BA:  STR             R2, [R0,#0x2C]
47E5BC:  LDRH            R1, [R1,#0xC]
47E5BE:  STR             R1, [R0,#0x30]
47E5C0:  LDRH            R1, [R4]
47E5C2:  STR             R1, [R0,#0x34]
47E5C4:  MOVS            R1, #0x5D ; ']'
47E5C6:  LDR.W           R0, [R9]
47E5CA:  STR             R1, [R0,#0x14]
47E5CC:  MOVS            R1, #2
47E5CE:  LDR.W           R0, [R9]
47E5D2:  LDR             R2, [R0,#4]
47E5D4:  MOV             R0, R9
47E5D6:  BLX             R2
47E5D8:  CMP             R5, #0x37 ; '7'
47E5DA:  BLE             loc_47E596
47E5DC:  LDR             R0, [SP,#0x168+var_150]
47E5DE:  CMP             R0, #0
47E5E0:  MOV             R0, #0xFFFFFF7F
47E5E4:  IT EQ
47E5E6:  MOVEQ           R0, #0xFFFFFFBF
47E5EA:  LDR             R4, [SP,#0x168+var_164]
47E5EC:  ADD             R4, R0
47E5EE:  CMP             R4, #0
47E5F0:  BGT.W           loc_47E48A
47E5F4:  CBZ             R4, loc_47E608
47E5F6:  LDR.W           R0, [R9]
47E5FA:  MOVS            R1, #0xB
47E5FC:  STR             R1, [R0,#0x14]
47E5FE:  LDR.W           R0, [R9]
47E602:  LDR             R1, [R0]
47E604:  MOV             R0, R9
47E606:  BLX             R1
47E608:  STRD.W          R11, R10, [R8]
47E60C:  MOV.W           R11, #0x35 ; '5'
47E610:  B               loc_47E74E
47E612:  LDR.W           R4, [R9,#0x18]
47E616:  LDR             R0, [R4,#4]
47E618:  CBNZ            R0, loc_47E628
47E61A:  LDR             R1, [R4,#0xC]
47E61C:  MOV             R0, R9
47E61E:  BLX             R1
47E620:  CMP             R0, #0
47E622:  BEQ.W           loc_47EE94
47E626:  LDR             R0, [R4,#4]
47E628:  LDR             R5, [R4]
47E62A:  SUBS.W          R8, R0, #1
47E62E:  LDRB.W          R6, [R5],#1
47E632:  BNE             loc_47E646
47E634:  LDR             R1, [R4,#0xC]
47E636:  MOV             R0, R9
47E638:  BLX             R1
47E63A:  CMP             R0, #0
47E63C:  BEQ.W           loc_47EE94
47E640:  LDR             R5, [R4]
47E642:  LDR.W           R8, [R4,#4]
47E646:  LDR.W           R1, [R9]
47E64A:  MOVS            R3, #0x5B ; '['
47E64C:  LDRB.W          R2, [R5],#1
47E650:  LSLS            R0, R6, #8
47E652:  STR             R3, [R1,#0x14]
47E654:  ORR.W           R6, R0, R2
47E658:  LDR.W           R1, [R9]
47E65C:  SUB.W           R10, R6, #2
47E660:  LDR.W           R3, [R9,#0x17C]
47E664:  STR             R3, [R1,#0x18]
47E666:  LDR.W           R1, [R9]
47E66A:  STR.W           R10, [R1,#0x1C]
47E66E:  MOVS            R1, #1
47E670:  LDR.W           R0, [R9]
47E674:  LDR             R2, [R0,#4]
47E676:  MOV             R0, R9
47E678:  BLX             R2
47E67A:  CMP             R6, #3
47E67C:  SUB.W           R0, R8, #1
47E680:  STR             R5, [R4]
47E682:  STR             R0, [R4,#4]
47E684:  BCC             loc_47E74E
47E686:  LDR.W           R0, [R9,#0x18]
47E68A:  MOV             R1, R10
47E68C:  LDR             R2, [R0,#0x10]
47E68E:  MOV             R0, R9
47E690:  BLX             R2
47E692:  B               loc_47E74E
47E694:  LDR.W           R4, [R9,#0x18]
47E698:  LDR             R0, [R4,#4]
47E69A:  CBNZ            R0, loc_47E6AA
47E69C:  LDR             R1, [R4,#0xC]
47E69E:  MOV             R0, R9
47E6A0:  BLX             R1
47E6A2:  CMP             R0, #0
47E6A4:  BEQ.W           loc_47EE94
47E6A8:  LDR             R0, [R4,#4]
47E6AA:  LDR             R5, [R4]
47E6AC:  SUBS            R0, #1
47E6AE:  LDRB.W          R6, [R5],#1
47E6B2:  BNE             loc_47E6C4
47E6B4:  LDR             R1, [R4,#0xC]
47E6B6:  MOV             R0, R9
47E6B8:  BLX             R1
47E6BA:  CMP             R0, #0
47E6BC:  BEQ.W           loc_47EE94
47E6C0:  LDRD.W          R5, R0, [R4]
47E6C4:  LDRB.W          R2, [R5],#1
47E6C8:  LSLS            R1, R6, #8
47E6CA:  SUBS            R6, R0, #1
47E6CC:  ORRS            R1, R2
47E6CE:  CMP             R1, #4
47E6D0:  BEQ             loc_47E6E4
47E6D2:  LDR.W           R0, [R9]
47E6D6:  MOVS            R1, #0xB
47E6D8:  STR             R1, [R0,#0x14]
47E6DA:  LDR.W           R0, [R9]
47E6DE:  LDR             R1, [R0]
47E6E0:  MOV             R0, R9
47E6E2:  BLX             R1
47E6E4:  CBNZ            R6, loc_47E6F6
47E6E6:  LDR             R1, [R4,#0xC]
47E6E8:  MOV             R0, R9
47E6EA:  BLX             R1
47E6EC:  CMP             R0, #0
47E6EE:  BEQ.W           loc_47EE94
47E6F2:  LDRD.W          R5, R6, [R4]
47E6F6:  LDRB.W          R8, [R5],#1
47E6FA:  SUBS.W          R10, R6, #1
47E6FE:  BNE             loc_47E710
47E700:  LDR             R1, [R4,#0xC]
47E702:  MOV             R0, R9
47E704:  BLX             R1
47E706:  CMP             R0, #0
47E708:  BEQ.W           loc_47EE94
47E70C:  LDRD.W          R5, R10, [R4]
47E710:  LDR.W           R1, [R9]
47E714:  MOVS            R3, #0x52 ; 'R'
47E716:  LDRB.W          R2, [R5],#1
47E71A:  MOV.W           R0, R8,LSL#8
47E71E:  STR             R3, [R1,#0x14]
47E720:  ORR.W           R6, R0, R2
47E724:  LDR.W           R1, [R9]
47E728:  STR             R6, [R1,#0x18]
47E72A:  MOVS            R1, #1
47E72C:  LDR.W           R0, [R9]
47E730:  LDR             R2, [R0,#4]
47E732:  MOV             R0, R9
47E734:  BLX             R2
47E736:  SUB.W           R0, R10, #1
47E73A:  STR.W           R6, [R9,#0xFC]
47E73E:  STRD.W          R5, R0, [R4]
47E742:  B               loc_47E74E
47E744:  MOV             R0, R9
47E746:  BLX             R1
47E748:  CMP             R0, #0
47E74A:  BEQ.W           loc_47EE94
47E74E:  MOVS            R0, #0
47E750:  STR.W           R0, [R9,#0x17C]
47E754:  CMP             R0, #0
47E756:  BEQ.W           loc_47E2E2
47E75A:  SUBS            R1, R0, #1; switch 254 cases
47E75C:  CMP             R1, #0xFD
47E75E:  BHI.W           def_47E762; jumptable 0047E762 default case, cases 2-191,222,223,240-253
47E762:  TBH.W           [PC,R1,LSL#1]; switch jump
47E766:  DCW 0x117; jump table for switch statement
47E768:  DCW 0x138
47E76A:  DCW 0x138
47E76C:  DCW 0x138
47E76E:  DCW 0x138
47E770:  DCW 0x138
47E772:  DCW 0x138
47E774:  DCW 0x138
47E776:  DCW 0x138
47E778:  DCW 0x138
47E77A:  DCW 0x138
47E77C:  DCW 0x138
47E77E:  DCW 0x138
47E780:  DCW 0x138
47E782:  DCW 0x138
47E784:  DCW 0x138
47E786:  DCW 0x138
47E788:  DCW 0x138
47E78A:  DCW 0x138
47E78C:  DCW 0x138
47E78E:  DCW 0x138
47E790:  DCW 0x138
47E792:  DCW 0x138
47E794:  DCW 0x138
47E796:  DCW 0x138
47E798:  DCW 0x138
47E79A:  DCW 0x138
47E79C:  DCW 0x138
47E79E:  DCW 0x138
47E7A0:  DCW 0x138
47E7A2:  DCW 0x138
47E7A4:  DCW 0x138
47E7A6:  DCW 0x138
47E7A8:  DCW 0x138
47E7AA:  DCW 0x138
47E7AC:  DCW 0x138
47E7AE:  DCW 0x138
47E7B0:  DCW 0x138
47E7B2:  DCW 0x138
47E7B4:  DCW 0x138
47E7B6:  DCW 0x138
47E7B8:  DCW 0x138
47E7BA:  DCW 0x138
47E7BC:  DCW 0x138
47E7BE:  DCW 0x138
47E7C0:  DCW 0x138
47E7C2:  DCW 0x138
47E7C4:  DCW 0x138
47E7C6:  DCW 0x138
47E7C8:  DCW 0x138
47E7CA:  DCW 0x138
47E7CC:  DCW 0x138
47E7CE:  DCW 0x138
47E7D0:  DCW 0x138
47E7D2:  DCW 0x138
47E7D4:  DCW 0x138
47E7D6:  DCW 0x138
47E7D8:  DCW 0x138
47E7DA:  DCW 0x138
47E7DC:  DCW 0x138
47E7DE:  DCW 0x138
47E7E0:  DCW 0x138
47E7E2:  DCW 0x138
47E7E4:  DCW 0x138
47E7E6:  DCW 0x138
47E7E8:  DCW 0x138
47E7EA:  DCW 0x138
47E7EC:  DCW 0x138
47E7EE:  DCW 0x138
47E7F0:  DCW 0x138
47E7F2:  DCW 0x138
47E7F4:  DCW 0x138
47E7F6:  DCW 0x138
47E7F8:  DCW 0x138
47E7FA:  DCW 0x138
47E7FC:  DCW 0x138
47E7FE:  DCW 0x138
47E800:  DCW 0x138
47E802:  DCW 0x138
47E804:  DCW 0x138
47E806:  DCW 0x138
47E808:  DCW 0x138
47E80A:  DCW 0x138
47E80C:  DCW 0x138
47E80E:  DCW 0x138
47E810:  DCW 0x138
47E812:  DCW 0x138
47E814:  DCW 0x138
47E816:  DCW 0x138
47E818:  DCW 0x138
47E81A:  DCW 0x138
47E81C:  DCW 0x138
47E81E:  DCW 0x138
47E820:  DCW 0x138
47E822:  DCW 0x138
47E824:  DCW 0x138
47E826:  DCW 0x138
47E828:  DCW 0x138
47E82A:  DCW 0x138
47E82C:  DCW 0x138
47E82E:  DCW 0x138
47E830:  DCW 0x138
47E832:  DCW 0x138
47E834:  DCW 0x138
47E836:  DCW 0x138
47E838:  DCW 0x138
47E83A:  DCW 0x138
47E83C:  DCW 0x138
47E83E:  DCW 0x138
47E840:  DCW 0x138
47E842:  DCW 0x138
47E844:  DCW 0x138
47E846:  DCW 0x138
47E848:  DCW 0x138
47E84A:  DCW 0x138
47E84C:  DCW 0x138
47E84E:  DCW 0x138
47E850:  DCW 0x138
47E852:  DCW 0x138
47E854:  DCW 0x138
47E856:  DCW 0x138
47E858:  DCW 0x138
47E85A:  DCW 0x138
47E85C:  DCW 0x138
47E85E:  DCW 0x138
47E860:  DCW 0x138
47E862:  DCW 0x138
47E864:  DCW 0x138
47E866:  DCW 0x138
47E868:  DCW 0x138
47E86A:  DCW 0x138
47E86C:  DCW 0x138
47E86E:  DCW 0x138
47E870:  DCW 0x138
47E872:  DCW 0x138
47E874:  DCW 0x138
47E876:  DCW 0x138
47E878:  DCW 0x138
47E87A:  DCW 0x138
47E87C:  DCW 0x138
47E87E:  DCW 0x138
47E880:  DCW 0x138
47E882:  DCW 0x138
47E884:  DCW 0x138
47E886:  DCW 0x138
47E888:  DCW 0x138
47E88A:  DCW 0x138
47E88C:  DCW 0x138
47E88E:  DCW 0x138
47E890:  DCW 0x138
47E892:  DCW 0x138
47E894:  DCW 0x138
47E896:  DCW 0x138
47E898:  DCW 0x138
47E89A:  DCW 0x138
47E89C:  DCW 0x138
47E89E:  DCW 0x138
47E8A0:  DCW 0x138
47E8A2:  DCW 0x138
47E8A4:  DCW 0x138
47E8A6:  DCW 0x138
47E8A8:  DCW 0x138
47E8AA:  DCW 0x138
47E8AC:  DCW 0x138
47E8AE:  DCW 0x138
47E8B0:  DCW 0x138
47E8B2:  DCW 0x138
47E8B4:  DCW 0x138
47E8B6:  DCW 0x138
47E8B8:  DCW 0x138
47E8BA:  DCW 0x138
47E8BC:  DCW 0x138
47E8BE:  DCW 0x138
47E8C0:  DCW 0x138
47E8C2:  DCW 0x138
47E8C4:  DCW 0x138
47E8C6:  DCW 0x138
47E8C8:  DCW 0x138
47E8CA:  DCW 0x138
47E8CC:  DCW 0x138
47E8CE:  DCW 0x138
47E8D0:  DCW 0x138
47E8D2:  DCW 0x138
47E8D4:  DCW 0x138
47E8D6:  DCW 0x138
47E8D8:  DCW 0x138
47E8DA:  DCW 0x138
47E8DC:  DCW 0x138
47E8DE:  DCW 0x138
47E8E0:  DCW 0x138
47E8E2:  DCW 0x138
47E8E4:  DCW 0x134
47E8E6:  DCW 0x134
47E8E8:  DCW 0x13C
47E8EA:  DCW 0x125
47E8EC:  DCW 0x142
47E8EE:  DCW 0x125
47E8F0:  DCW 0x125
47E8F2:  DCW 0x125
47E8F4:  DCW 0x125
47E8F6:  DCW 0x107
47E8F8:  DCW 0x25E
47E8FA:  DCW 0x125
47E8FC:  DCW 0x106
47E8FE:  DCW 0x125
47E900:  DCW 0x125
47E902:  DCW 0x125
47E904:  DCW 0x117
47E906:  DCW 0x117
47E908:  DCW 0x117
47E90A:  DCW 0x117
47E90C:  DCW 0x117
47E90E:  DCW 0x117
47E910:  DCW 0x117
47E912:  DCW 0x117
47E914:  DCW 0x104
47E916:  DCW 0x267
47E918:  DCW 0x276
47E91A:  DCW 0x103
47E91C:  DCW 0x106
47E91E:  DCW 0x102
47E920:  DCW 0x138
47E922:  DCW 0x138
47E924:  DCW 0x10D
47E926:  DCW 0x10D
47E928:  DCW 0x10D
47E92A:  DCW 0x10D
47E92C:  DCW 0x10D
47E92E:  DCW 0x10D
47E930:  DCW 0x10D
47E932:  DCW 0x10D
47E934:  DCW 0x10D
47E936:  DCW 0x10D
47E938:  DCW 0x10D
47E93A:  DCW 0x10D
47E93C:  DCW 0x10D
47E93E:  DCW 0x10D
47E940:  DCW 0x10D
47E942:  DCW 0x10D
47E944:  DCW 0x138
47E946:  DCW 0x138
47E948:  DCW 0x138
47E94A:  DCW 0x138
47E94C:  DCW 0x138
47E94E:  DCW 0x138
47E950:  DCW 0x138
47E952:  DCW 0x138
47E954:  DCW 0x138
47E956:  DCW 0x138
47E958:  DCW 0x138
47E95A:  DCW 0x138
47E95C:  DCW 0x138
47E95E:  DCW 0x138
47E960:  DCW 0xFE
47E962:  LDR.W           R0, [R9,#0x194]; jumptable 0047E762 case 254
47E966:  LDR             R1, [R0,#0x18]
47E968:  B               loc_47E744
47E96A:  B               loc_47E694; jumptable 0047E762 case 221
47E96C:  B               loc_47E43C; jumptable 0047E762 case 219
47E96E:  B.W             loc_47E38E; jumptable 0047E762 case 216
47E972:  B               loc_47E612; jumptable 0047E762 cases 204,220
47E974:  MOVS            R6, #0; jumptable 0047E762 case 201
47E976:  MOV             R0, R9
47E978:  MOVS            R1, #0
47E97A:  MOVS            R2, #1
47E97C:  B.W             loc_47E380
47E980:  LDR.W           R1, [R9,#0x194]; jumptable 0047E762 cases 224-239
47E984:  ADD.W           R0, R1, R0,LSL#2
47E988:  MOV             R1, #0xFFFFFC9C
47E990:  LDR             R1, [R0,R1]
47E992:  B               loc_47E744
47E994:  LDR.W           R0, [R9]; jumptable 0047E762 cases 1,208-215
47E998:  MOVS            R1, #0x5C ; '\'
47E99A:  STR             R1, [R0,#0x14]
47E99C:  LDR.W           R0, [R9]
47E9A0:  LDR.W           R1, [R9,#0x17C]
47E9A4:  STR             R1, [R0,#0x18]
47E9A6:  MOVS            R1, #1
47E9A8:  LDR.W           R0, [R9]
47E9AC:  LDR             R2, [R0,#4]
47E9AE:  B               loc_47E68E
47E9B0:  LDR.W           R0, [R9]; jumptable 0047E762 cases 195,197-200,203,205-207
47E9B4:  MOVS            R1, #0x3C ; '<'
47E9B6:  STR             R1, [R0,#0x14]
47E9B8:  LDR.W           R0, [R9]
47E9BC:  LDR.W           R1, [R9,#0x17C]
47E9C0:  STR             R1, [R0,#0x18]
47E9C2:  LDR.W           R0, [R9]
47E9C6:  LDR             R1, [R0]
47E9C8:  MOV             R0, R9
47E9CA:  BLX             R1
47E9CC:  B               loc_47E74E
47E9CE:  MOVS            R6, #0; jumptable 0047E762 cases 192,193
47E9D0:  MOV             R0, R9
47E9D2:  MOVS            R1, #0
47E9D4:  B               loc_47E9E4
47E9D6:  LDR.W           R0, [R9]; jumptable 0047E762 default case, cases 2-191,222,223,240-253
47E9DA:  MOVS            R1, #0x44 ; 'D'
47E9DC:  B               loc_47E9B6
47E9DE:  MOVS            R6, #0; jumptable 0047E762 case 194
47E9E0:  MOV             R0, R9
47E9E2:  MOVS            R1, #1
47E9E4:  MOVS            R2, #0
47E9E6:  B.W             loc_47E380
47E9EA:  LDR.W           R8, [R9,#0x18]; jumptable 0047E762 case 196
47E9EE:  LDR.W           R0, [R8,#4]
47E9F2:  CBNZ            R0, loc_47EA0A
47E9F4:  LDR.W           R1, [R8,#0xC]
47E9F8:  MOV             R0, R9
47E9FA:  BLX             R1
47E9FC:  CMP             R0, #0
47E9FE:  BEQ.W           loc_47EE94
47EA02:  LDR.W           R0, [R8,#4]
47EA06:  MOV.W           R11, #0x35 ; '5'
47EA0A:  LDR.W           R5, [R8]
47EA0E:  SUBS            R0, #1
47EA10:  LDRB.W          R4, [R5],#1
47EA14:  BNE             loc_47EA2C
47EA16:  LDR.W           R1, [R8,#0xC]
47EA1A:  MOV             R0, R9
47EA1C:  BLX             R1
47EA1E:  CMP             R0, #0
47EA20:  BEQ.W           loc_47EE94
47EA24:  LDRD.W          R5, R0, [R8]
47EA28:  MOV.W           R11, #0x35 ; '5'
47EA2C:  LDRB.W          R2, [R5],#1
47EA30:  LSLS            R1, R4, #8
47EA32:  SUBS            R6, R0, #1
47EA34:  ORRS            R1, R2
47EA36:  SUBS            R4, R1, #2
47EA38:  CMP             R1, #0x13
47EA3A:  BCC.W           loc_47E366
47EA3E:  CMP             R6, #0
47EA40:  STR             R4, [SP,#0x168+var_150]
47EA42:  BNE             loc_47EA56
47EA44:  LDR.W           R1, [R8,#0xC]
47EA48:  MOV             R0, R9
47EA4A:  BLX             R1
47EA4C:  CMP             R0, #0
47EA4E:  BEQ.W           loc_47EE94
47EA52:  LDRD.W          R5, R6, [R8]
47EA56:  LDR.W           R0, [R9]
47EA5A:  MOVS            R1, #0x50 ; 'P'
47EA5C:  LDRB.W          R11, [R5],#1
47EA60:  STR             R1, [R0,#0x14]
47EA62:  MOVS            R1, #1
47EA64:  LDR.W           R0, [R9]
47EA68:  STR.W           R11, [R0,#0x18]
47EA6C:  LDR.W           R0, [R9]
47EA70:  LDR             R2, [R0,#4]
47EA72:  MOV             R0, R9
47EA74:  BLX             R2
47EA76:  LDR             R1, [SP,#0x168+var_154]
47EA78:  SUBS            R6, #1
47EA7A:  MOV.W           R10, #0
47EA7E:  MOVS            R4, #0
47EA80:  STRB.W          R10, [SP,#0x168+var_38]
47EA84:  CBNZ            R6, loc_47EA9A
47EA86:  LDR.W           R1, [R8,#0xC]
47EA8A:  MOV             R0, R9
47EA8C:  BLX             R1
47EA8E:  CMP             R0, #0
47EA90:  BEQ.W           loc_47EE94
47EA94:  LDRD.W          R5, R6, [R8]
47EA98:  LDR             R1, [SP,#0x168+var_154]
47EA9A:  LDRB.W          R0, [R5],#1
47EA9E:  SUBS            R6, #1
47EAA0:  STRB.W          R0, [R1,R10]
47EAA4:  ADD.W           R10, R10, #1
47EAA8:  ADD             R4, R0
47EAAA:  CMP.W           R10, #0x10
47EAAE:  BLT             loc_47EA84
47EAB0:  LDR             R0, [R1]
47EAB2:  MOV.W           R10, #0x56 ; 'V'
47EAB6:  STR             R0, [SP,#0x168+var_148]
47EAB8:  ADD             R0, SP, #0x168+var_148
47EABA:  VLD1.32         {D16[0]}, [R0@32]
47EABE:  LDR.W           R0, [R9]
47EAC2:  ADD.W           R1, R0, #0x18
47EAC6:  ADDS            R0, #0x28 ; '('
47EAC8:  VMOVL.U8        Q8, D16
47EACC:  VMOVL.U16       Q8, D16
47EAD0:  VST1.32         {D16-D17}, [R1]
47EAD4:  LDR             R1, [SP,#0x168+var_160]
47EAD6:  LDR             R1, [R1]
47EAD8:  STR             R1, [SP,#0x168+var_144]
47EADA:  ADD             R1, SP, #0x168+var_144
47EADC:  VLD1.32         {D16[0]}, [R1@32]
47EAE0:  MOVS            R1, #2
47EAE2:  VMOVL.U8        Q8, D16
47EAE6:  VMOVL.U16       Q8, D16
47EAEA:  VST1.32         {D16-D17}, [R0]
47EAEE:  LDR.W           R0, [R9]
47EAF2:  STR.W           R10, [R0,#0x14]
47EAF6:  LDR.W           R0, [R9]
47EAFA:  LDR             R2, [R0,#4]
47EAFC:  MOV             R0, R9
47EAFE:  BLX             R2
47EB00:  LDR             R0, [SP,#0x168+var_15C]
47EB02:  LDR             R0, [R0]
47EB04:  STR             R0, [SP,#0x168+var_140]
47EB06:  ADD             R0, SP, #0x168+var_140
47EB08:  VLD1.32         {D16[0]}, [R0@32]
47EB0C:  LDR.W           R0, [R9]
47EB10:  ADD.W           R1, R0, #0x18
47EB14:  ADDS            R0, #0x28 ; '('
47EB16:  VMOVL.U8        Q8, D16
47EB1A:  VMOVL.U16       Q8, D16
47EB1E:  VST1.32         {D16-D17}, [R1]
47EB22:  LDR             R1, [SP,#0x168+var_158]
47EB24:  LDR             R1, [R1]
47EB26:  STR             R1, [SP,#0x168+var_13C]
47EB28:  ADD             R1, SP, #0x168+var_13C
47EB2A:  VLD1.32         {D16[0]}, [R1@32]
47EB2E:  MOVS            R1, #2
47EB30:  VMOVL.U8        Q8, D16
47EB34:  VMOVL.U16       Q8, D16
47EB38:  VST1.32         {D16-D17}, [R0]
47EB3C:  LDR.W           R0, [R9]
47EB40:  STR.W           R10, [R0,#0x14]
47EB44:  LDR.W           R0, [R9]
47EB48:  LDR             R2, [R0,#4]
47EB4A:  MOV             R0, R9
47EB4C:  BLX             R2
47EB4E:  LDR             R0, [SP,#0x168+var_150]
47EB50:  CMP.W           R4, #0x100
47EB54:  SUB.W           R10, R0, #0x11
47EB58:  BGT             loc_47EB5E
47EB5A:  CMP             R10, R4
47EB5C:  BGE             loc_47EB70
47EB5E:  LDR.W           R0, [R9]
47EB62:  MOVS            R1, #8
47EB64:  STR             R1, [R0,#0x14]
47EB66:  LDR.W           R0, [R9]
47EB6A:  LDR             R1, [R0]
47EB6C:  MOV             R0, R9
47EB6E:  BLX             R1
47EB70:  CMP             R4, #1
47EB72:  STR.W           R10, [SP,#0x168+var_150]
47EB76:  BLT             loc_47EBA6
47EB78:  ADD             R1, SP, #0x168+var_138
47EB7A:  MOV.W           R10, #0
47EB7E:  CBNZ            R6, loc_47EB94
47EB80:  LDR.W           R1, [R8,#0xC]
47EB84:  MOV             R0, R9
47EB86:  BLX             R1
47EB88:  CMP             R0, #0
47EB8A:  BEQ.W           loc_47EE94
47EB8E:  LDRD.W          R5, R6, [R8]
47EB92:  ADD             R1, SP, #0x168+var_138
47EB94:  LDRB.W          R0, [R5],#1
47EB98:  SUBS            R6, #1
47EB9A:  STRB.W          R0, [R1,R10]
47EB9E:  ADD.W           R10, R10, #1
47EBA2:  CMP             R10, R4
47EBA4:  BLT             loc_47EB7E
47EBA6:  SUB.W           R0, R11, #0x10
47EBAA:  ANDS.W          R1, R11, #0x10
47EBAE:  ADD.W           R2, R9, R0,LSL#2
47EBB2:  IT EQ
47EBB4:  MOVEQ           R0, R11
47EBB6:  ADD.W           R10, R2, #0xB0
47EBBA:  ADD.W           R2, R9, R11,LSL#2
47EBBE:  CMP             R1, #0
47EBC0:  IT EQ
47EBC2:  ADDEQ.W         R10, R2, #0xA0
47EBC6:  CMP             R0, #4
47EBC8:  BCC             loc_47EBE2
47EBCA:  LDR.W           R1, [R9]
47EBCE:  MOVS            R2, #0x1E
47EBD0:  STR             R2, [R1,#0x14]
47EBD2:  LDR.W           R1, [R9]
47EBD6:  STR             R0, [R1,#0x18]
47EBD8:  LDR.W           R0, [R9]
47EBDC:  LDR             R1, [R0]
47EBDE:  MOV             R0, R9
47EBE0:  BLX             R1
47EBE2:  LDR             R0, [SP,#0x168+var_150]
47EBE4:  MOV.W           R11, #0x35 ; '5'
47EBE8:  SUBS            R4, R0, R4
47EBEA:  LDR.W           R0, [R10]
47EBEE:  CBNZ            R0, loc_47EBFA
47EBF0:  MOV             R0, R9
47EBF2:  BLX             j__Z21jpeg_alloc_huff_tableP18jpeg_common_struct; jpeg_alloc_huff_table(jpeg_common_struct *)
47EBF6:  STR.W           R0, [R10]
47EBFA:  ADD             R1, SP, #0x168+var_38
47EBFC:  MOV.W           R2, #0x100; size_t
47EC00:  VLD1.8          {D16-D17}, [R1]!
47EC04:  LDRB            R1, [R1]
47EC06:  VST1.8          {D16-D17}, [R0]!
47EC0A:  STRB            R1, [R0]
47EC0C:  ADD             R1, SP, #0x168+var_138; void *
47EC0E:  LDR.W           R0, [R10]
47EC12:  ADDS            R0, #0x11; void *
47EC14:  BLX             memcpy_1
47EC18:  CMP             R4, #0x10
47EC1A:  BGT.W           loc_47EA3E
47EC1E:  B.W             loc_47E366
47EC22:  MOV             R0, R9; jumptable 0047E762 case 202
47EC24:  MOVS            R1, #1
47EC26:  MOVS            R2, #1
47EC28:  BL              sub_47F33A
47EC2C:  CMP             R0, #0
47EC2E:  BNE.W           loc_47E74E
47EC32:  B               loc_47EE94
47EC34:  LDR.W           R0, [R9]; jumptable 0047E762 case 217
47EC38:  MOVS            R1, #0x55 ; 'U'
47EC3A:  STR             R1, [R0,#0x14]
47EC3C:  MOVS            R1, #1
47EC3E:  LDR.W           R0, [R9]
47EC42:  LDR             R2, [R0,#4]
47EC44:  MOV             R0, R9
47EC46:  BLX             R2
47EC48:  MOVS            R0, #0
47EC4A:  MOVS            R6, #2
47EC4C:  STR.W           R0, [R9,#0x17C]
47EC50:  B               loc_47EE96
47EC52:  LDR.W           R0, [R9,#0x194]; jumptable 0047E762 case 218
47EC56:  LDR.W           R6, [R9,#0x18]
47EC5A:  LDRD.W          R5, R4, [R6]
47EC5E:  LDRB            R0, [R0,#0xD]
47EC60:  CBZ             R0, loc_47EC66
47EC62:  CBNZ            R4, loc_47EC8A
47EC64:  B               loc_47EC7A
47EC66:  LDR.W           R0, [R9]
47EC6A:  MOVS            R1, #0x3E ; '>'
47EC6C:  STR             R1, [R0,#0x14]
47EC6E:  LDR.W           R0, [R9]
47EC72:  LDR             R1, [R0]
47EC74:  MOV             R0, R9
47EC76:  BLX             R1
47EC78:  CBNZ            R4, loc_47EC8A
47EC7A:  LDR             R1, [R6,#0xC]
47EC7C:  MOV             R0, R9
47EC7E:  BLX             R1
47EC80:  CMP             R0, #0
47EC82:  BEQ.W           loc_47EE94
47EC86:  LDRD.W          R5, R4, [R6]
47EC8A:  STR             R6, [SP,#0x168+var_14C]
47EC8C:  SUBS            R0, R4, #1
47EC8E:  LDRB.W          R8, [R5],#1
47EC92:  BNE             loc_47ECA6
47EC94:  LDR             R4, [SP,#0x168+var_14C]
47EC96:  MOV             R0, R9
47EC98:  LDR             R1, [R4,#0xC]
47EC9A:  BLX             R1
47EC9C:  CMP             R0, #0
47EC9E:  BEQ.W           loc_47EE94
47ECA2:  LDRD.W          R5, R0, [R4]
47ECA6:  LDRB.W          R10, [R5],#1
47ECAA:  SUBS            R6, R0, #1
47ECAC:  BNE             loc_47ECC0
47ECAE:  LDR             R4, [SP,#0x168+var_14C]
47ECB0:  MOV             R0, R9
47ECB2:  LDR             R1, [R4,#0xC]
47ECB4:  BLX             R1
47ECB6:  CMP             R0, #0
47ECB8:  BEQ.W           loc_47EE94
47ECBC:  LDRD.W          R5, R6, [R4]
47ECC0:  LDR.W           R0, [R9]
47ECC4:  MOVS            R1, #0x67 ; 'g'
47ECC6:  LDRB            R4, [R5]
47ECC8:  STR             R1, [R0,#0x14]
47ECCA:  MOVS            R1, #1
47ECCC:  LDR.W           R0, [R9]
47ECD0:  STR             R4, [R0,#0x18]
47ECD2:  LDR.W           R0, [R9]
47ECD6:  LDR             R2, [R0,#4]
47ECD8:  MOV             R0, R9
47ECDA:  BLX             R2
47ECDC:  SUBS            R0, R4, #1
47ECDE:  UXTB            R0, R0
47ECE0:  CMP             R0, #3
47ECE2:  BHI             loc_47ECF6
47ECE4:  MOV.W           R0, R8,LSL#8
47ECE8:  MOVS            R1, #6
47ECEA:  ORR.W           R0, R0, R10
47ECEE:  ADD.W           R1, R1, R4,LSL#1
47ECF2:  CMP             R0, R1
47ECF4:  BEQ             loc_47ED08
47ECF6:  LDR.W           R0, [R9]
47ECFA:  MOVS            R1, #0xB
47ECFC:  STR             R1, [R0,#0x14]
47ECFE:  LDR.W           R0, [R9]
47ED02:  LDR             R1, [R0]
47ED04:  MOV             R0, R9
47ED06:  BLX             R1
47ED08:  SUBS            R0, R6, #1
47ED0A:  MOV.W           R1, #0
47ED0E:  ADD.W           R5, R5, #1
47ED12:  STR.W           R4, [R9,#0x124]
47ED16:  IT EQ
47ED18:  MOVEQ           R1, #1
47ED1A:  MOVS            R6, #0
47ED1C:  CMP             R4, #0
47ED1E:  BEQ             loc_47EDEA
47ED20:  LDR.W           R8, [SP,#0x168+var_14C]
47ED24:  STR             R4, [SP,#0x168+var_150]
47ED26:  LSLS            R1, R1, #0x1F
47ED28:  BEQ             loc_47ED3C
47ED2A:  LDR.W           R1, [R8,#0xC]
47ED2E:  MOV             R0, R9
47ED30:  BLX             R1
47ED32:  CMP             R0, #0
47ED34:  BEQ.W           loc_47EE94
47ED38:  LDRD.W          R5, R0, [R8]
47ED3C:  LDRB.W          R10, [R5],#1
47ED40:  SUBS.W          R11, R0, #1
47ED44:  BNE             loc_47ED58
47ED46:  LDR.W           R1, [R8,#0xC]
47ED4A:  MOV             R0, R9
47ED4C:  BLX             R1
47ED4E:  CMP             R0, #0
47ED50:  BEQ.W           loc_47EE94
47ED54:  LDRD.W          R5, R11, [R8]
47ED58:  LDR.W           R0, [R9,#0x24]
47ED5C:  LDR.W           R4, [R9,#0xC4]
47ED60:  LDRB.W          R8, [R5]
47ED64:  CMP             R0, #1
47ED66:  BLT             loc_47ED78
47ED68:  MOVS            R1, #0
47ED6A:  LDR             R2, [R4]
47ED6C:  CMP             R2, R10
47ED6E:  BEQ             loc_47ED92
47ED70:  ADDS            R1, #1
47ED72:  ADDS            R4, #0x54 ; 'T'
47ED74:  CMP             R1, R0
47ED76:  BLT             loc_47ED6A
47ED78:  LDR.W           R0, [R9]
47ED7C:  MOVS            R1, #5
47ED7E:  STR             R1, [R0,#0x14]
47ED80:  LDR.W           R0, [R9]
47ED84:  STR.W           R10, [R0,#0x18]
47ED88:  LDR.W           R0, [R9]
47ED8C:  LDR             R1, [R0]
47ED8E:  MOV             R0, R9
47ED90:  BLX             R1
47ED92:  ADD.W           R0, R9, R6,LSL#2
47ED96:  MOV.W           R1, R8,LSR#4
47ED9A:  STR.W           R4, [R0,#0x128]
47ED9E:  AND.W           R0, R8, #0xF
47EDA2:  STRD.W          R1, R0, [R4,#0x14]
47EDA6:  LDR.W           R0, [R9]
47EDAA:  STR.W           R10, [R0,#0x18]
47EDAE:  LDR             R1, [R4,#0x14]
47EDB0:  STR             R1, [R0,#0x1C]
47EDB2:  LDR             R1, [R4,#0x18]
47EDB4:  STR             R1, [R0,#0x20]
47EDB6:  MOVS            R1, #0x68 ; 'h'
47EDB8:  LDR.W           R0, [R9]
47EDBC:  STR             R1, [R0,#0x14]
47EDBE:  MOVS            R1, #1
47EDC0:  LDR.W           R0, [R9]
47EDC4:  LDR             R2, [R0,#4]
47EDC6:  MOV             R0, R9
47EDC8:  BLX             R2
47EDCA:  SUBS.W          R0, R11, #1
47EDCE:  MOV.W           R1, #0
47EDD2:  IT EQ
47EDD4:  MOVEQ           R1, #1
47EDD6:  LDR             R4, [SP,#0x168+var_150]
47EDD8:  LDR.W           R8, [SP,#0x168+var_14C]
47EDDC:  ADDS            R6, #1
47EDDE:  ADDS            R5, #1
47EDE0:  CMP             R6, R4
47EDE2:  BLT             loc_47ED26
47EDE4:  CMP             R1, #1
47EDE6:  BEQ             loc_47EDF2
47EDE8:  B               loc_47EE02
47EDEA:  LDR.W           R8, [SP,#0x168+var_14C]
47EDEE:  CMP             R1, #1
47EDF0:  BNE             loc_47EE02
47EDF2:  LDR.W           R1, [R8,#0xC]
47EDF6:  MOV             R0, R9
47EDF8:  BLX             R1
47EDFA:  CMP             R0, #0
47EDFC:  BEQ             loc_47EE94
47EDFE:  LDRD.W          R5, R0, [R8]
47EE02:  LDRB.W          R1, [R5],#1
47EE06:  SUBS            R0, #1
47EE08:  STR.W           R1, [R9,#0x16C]
47EE0C:  BNE             loc_47EE1C
47EE0E:  LDR.W           R1, [R8,#0xC]
47EE12:  MOV             R0, R9
47EE14:  BLX             R1
47EE16:  CBZ             R0, loc_47EE94
47EE18:  LDRD.W          R5, R0, [R8]
47EE1C:  LDRB.W          R1, [R5],#1
47EE20:  SUBS            R4, R0, #1
47EE22:  STR.W           R1, [R9,#0x170]
47EE26:  BNE             loc_47EE36
47EE28:  LDR.W           R1, [R8,#0xC]
47EE2C:  MOV             R0, R9
47EE2E:  BLX             R1
47EE30:  CBZ             R0, loc_47EE94
47EE32:  LDRD.W          R5, R4, [R8]
47EE36:  LDRB.W          R0, [R5],#1
47EE3A:  MOVS            R6, #1
47EE3C:  LDR.W           R1, [R9]
47EE40:  AND.W           R3, R0, #0xF
47EE44:  LDR.W           R2, [R9,#0x16C]
47EE48:  LSRS            R0, R0, #4
47EE4A:  STRD.W          R0, R3, [R9,#0x174]
47EE4E:  STR             R2, [R1,#0x18]
47EE50:  LDR.W           R0, [R9,#0x170]
47EE54:  STR             R0, [R1,#0x1C]
47EE56:  LDR.W           R0, [R9,#0x174]
47EE5A:  STR             R0, [R1,#0x20]
47EE5C:  LDR.W           R0, [R9,#0x178]
47EE60:  STR             R0, [R1,#0x24]
47EE62:  MOVS            R1, #0x69 ; 'i'
47EE64:  LDR.W           R0, [R9]
47EE68:  STR             R1, [R0,#0x14]
47EE6A:  MOVS            R1, #1
47EE6C:  LDR.W           R0, [R9]
47EE70:  LDR             R2, [R0,#4]
47EE72:  MOV             R0, R9
47EE74:  BLX             R2
47EE76:  LDR.W           R0, [R9,#0x194]
47EE7A:  MOVS            R1, #0
47EE7C:  STR             R1, [R0,#0x10]
47EE7E:  LDR.W           R0, [R9,#0x7C]
47EE82:  ADDS            R0, #1
47EE84:  STR.W           R0, [R9,#0x7C]
47EE88:  SUBS            R0, R4, #1
47EE8A:  STRD.W          R5, R0, [R8]
47EE8E:  STR.W           R1, [R9,#0x17C]
47EE92:  B               loc_47EE96
47EE94:  MOVS            R6, #0
47EE96:  LDR             R0, =(__stack_chk_guard_ptr - 0x47EE9E)
47EE98:  LDR             R1, [SP,#0x168+var_20]
47EE9A:  ADD             R0, PC; __stack_chk_guard_ptr
47EE9C:  LDR             R0, [R0]; __stack_chk_guard
47EE9E:  LDR             R0, [R0]
47EEA0:  SUBS            R0, R0, R1
47EEA2:  ITTTT EQ
47EEA4:  MOVEQ           R0, R6
47EEA6:  ADDEQ           SP, SP, #0x14C
47EEA8:  POPEQ.W         {R8-R11}
47EEAC:  POPEQ           {R4-R7,PC}
47EEAE:  BLX             __stack_chk_fail
