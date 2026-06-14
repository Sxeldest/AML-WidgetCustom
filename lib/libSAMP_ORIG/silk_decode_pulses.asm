; =========================================================
; Game Engine Function: silk_decode_pulses
; Address            : 0xB62C0 - 0xB66D8
; =========================================================

B62C0:  PUSH            {R4-R7,LR}
B62C2:  ADD             R7, SP, #0xC
B62C4:  PUSH.W          {R8-R11}
B62C8:  SUB             SP, SP, #0x10C
B62CA:  MOV             R6, R0
B62CC:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xB62DA)
B62D0:  MOV             R10, R1
B62D2:  LDR.W           R1, =(silk_rate_levels_iCDF_ptr - 0xB62DE)
B62D6:  ADD             R0, PC; __stack_chk_guard_ptr
B62D8:  STR             R3, [SP,#0x128+var_11C]
B62DA:  ADD             R1, PC; silk_rate_levels_iCDF_ptr
B62DC:  LDR             R0, [R0]; __stack_chk_guard
B62DE:  LDR             R1, [R1]; silk_rate_levels_iCDF
B62E0:  LDR             R0, [R0]
B62E2:  STR             R0, [SP,#0x128+var_20]
B62E4:  ASRS            R0, R2, #1
B62E6:  ADD.W           R0, R0, R0,LSL#3
B62EA:  STR             R2, [SP,#0x128+var_118]
B62EC:  ADD             R1, R0
B62EE:  MOV             R0, R6
B62F0:  MOVS            R2, #8
B62F2:  BLX             j_ec_dec_icdf
B62F6:  LDR             R3, [R7,#arg_0]
B62F8:  MOVS            R1, #1
B62FA:  BIC.W           R2, R3, #0xF
B62FE:  ASRS            R5, R3, #4
B6300:  CMP             R2, R3
B6302:  IT LT
B6304:  ADDLT.W         R5, R1, R3,ASR#4
B6308:  CMP             R5, #1
B630A:  STR             R5, [SP,#0x128+var_CC]
B630C:  BLT.W           loc_B66AA
B6310:  LDR.W           R1, =(silk_pulses_per_block_iCDF_ptr - 0xB6324)
B6314:  ADD.W           R0, R0, R0,LSL#3
B6318:  STR.W           R10, [SP,#0x128+var_D4]
B631C:  ADD.W           R8, SP, #0x128+var_C0
B6320:  ADD             R1, PC; silk_pulses_per_block_iCDF_ptr
B6322:  ADD.W           R10, SP, #0x128+var_70
B6326:  MOVS            R5, #0
B6328:  LDR             R1, [R1]; silk_pulses_per_block_iCDF
B632A:  ADD.W           R9, R1, R0,LSL#1
B632E:  LDR.W           R0, =(silk_pulses_per_block_iCDF_ptr - 0xB6336)
B6332:  ADD             R0, PC; silk_pulses_per_block_iCDF_ptr
B6334:  LDR.W           R11, [R0]; silk_pulses_per_block_iCDF
B6338:  MOVS            R0, #0
B633A:  MOV             R1, R9
B633C:  STR.W           R0, [R8,R5,LSL#2]
B6340:  MOV             R0, R6
B6342:  MOVS            R2, #8
B6344:  BLX             j_ec_dec_icdf
B6348:  CMP             R0, #0x11
B634A:  STR.W           R0, [R10,R5,LSL#2]
B634E:  BNE             loc_B6374
B6350:  MOVS            R4, #1
B6352:  CMP             R4, #0xA
B6354:  MOV             R0, R11
B6356:  STR.W           R4, [R8,R5,LSL#2]
B635A:  IT EQ
B635C:  ADDEQ           R0, #1
B635E:  ADD.W           R1, R0, #0xA2
B6362:  MOV             R0, R6
B6364:  MOVS            R2, #8
B6366:  BLX             j_ec_dec_icdf
B636A:  ADDS            R4, #1
B636C:  CMP             R0, #0x11
B636E:  STR.W           R0, [R10,R5,LSL#2]
B6372:  BEQ             loc_B6352
B6374:  LDR             R0, [SP,#0x128+var_CC]
B6376:  ADDS            R5, #1
B6378:  CMP             R5, R0
B637A:  BNE             loc_B6338
B637C:  LDR             R0, [SP,#0x128+var_CC]
B637E:  LDR.W           R10, [SP,#0x128+var_D4]
B6382:  CMP             R0, #1
B6384:  BLT.W           loc_B66AA
B6388:  LDR.W           R9, [SP,#0x128+var_CC]
B638C:  ADD             R4, SP, #0x128+var_70
B638E:  MOV.W           R8, #0
B6392:  MOVS            R5, #0
B6394:  LDR             R2, [R4]
B6396:  ADD.W           R0, R10, R5,ASR#11
B639A:  CMP             R2, #1
B639C:  BLT             loc_B63A6
B639E:  MOV             R1, R6
B63A0:  BLX             j_silk_shell_decoder
B63A4:  B               loc_B63C6
B63A6:  STR.W           R8, [R0,#0x1C]
B63AA:  STR.W           R8, [R0,#0x18]
B63AE:  STR.W           R8, [R0,#0x14]
B63B2:  STR.W           R8, [R0,#0x10]
B63B6:  STR.W           R8, [R0,#0xC]
B63BA:  STR.W           R8, [R0,#8]
B63BE:  STR.W           R8, [R0,#4]
B63C2:  STR.W           R8, [R0]
B63C6:  ADD.W           R5, R5, #0x10000
B63CA:  SUBS.W          R9, R9, #1
B63CE:  ADD.W           R4, R4, #4
B63D2:  BNE             loc_B6394
B63D4:  LDR             R0, [SP,#0x128+var_CC]
B63D6:  ADD             R1, SP, #0x128+var_C0
B63D8:  CMP             R0, #1
B63DA:  BLT.W           loc_B66AA
B63DE:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB63E6)
B63E0:  MOVS            R2, #0
B63E2:  ADD             R0, PC; silk_lsb_iCDF_ptr
B63E4:  LDR             R5, [R0]; silk_lsb_iCDF
B63E6:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB63EC)
B63E8:  ADD             R0, PC; silk_lsb_iCDF_ptr
B63EA:  LDR.W           R11, [R0]; silk_lsb_iCDF
B63EE:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB63F4)
B63F0:  ADD             R0, PC; silk_lsb_iCDF_ptr
B63F2:  LDR.W           R12, [R0]; silk_lsb_iCDF
B63F6:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB63FC)
B63F8:  ADD             R0, PC; silk_lsb_iCDF_ptr
B63FA:  LDR.W           R8, [R0]; silk_lsb_iCDF
B63FE:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB6404)
B6400:  ADD             R0, PC; silk_lsb_iCDF_ptr
B6402:  LDR.W           LR, [R0]; silk_lsb_iCDF
B6406:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB640C)
B6408:  ADD             R0, PC; silk_lsb_iCDF_ptr
B640A:  LDR.W           R9, [R0]; silk_lsb_iCDF
B640E:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB6414)
B6410:  ADD             R0, PC; silk_lsb_iCDF_ptr
B6412:  LDR             R4, [R0]; silk_lsb_iCDF
B6414:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB641A)
B6416:  ADD             R0, PC; silk_lsb_iCDF_ptr
B6418:  LDR             R0, [R0]; silk_lsb_iCDF
B641A:  STR             R0, [SP,#0x128+var_F4]
B641C:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB6422)
B641E:  ADD             R0, PC; silk_lsb_iCDF_ptr
B6420:  LDR             R0, [R0]; silk_lsb_iCDF
B6422:  STR             R0, [SP,#0x128+var_F8]
B6424:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB642A)
B6426:  ADD             R0, PC; silk_lsb_iCDF_ptr
B6428:  LDR             R0, [R0]; silk_lsb_iCDF
B642A:  STR             R0, [SP,#0x128+var_FC]
B642C:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB6432)
B642E:  ADD             R0, PC; silk_lsb_iCDF_ptr
B6430:  LDR             R0, [R0]; silk_lsb_iCDF
B6432:  STR             R0, [SP,#0x128+var_100]
B6434:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB643A)
B6436:  ADD             R0, PC; silk_lsb_iCDF_ptr
B6438:  LDR             R0, [R0]; silk_lsb_iCDF
B643A:  STR             R0, [SP,#0x128+var_104]
B643C:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB6442)
B643E:  ADD             R0, PC; silk_lsb_iCDF_ptr
B6440:  LDR             R0, [R0]; silk_lsb_iCDF
B6442:  STR             R0, [SP,#0x128+var_108]
B6444:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB644A)
B6446:  ADD             R0, PC; silk_lsb_iCDF_ptr
B6448:  LDR             R0, [R0]; silk_lsb_iCDF
B644A:  STR             R0, [SP,#0x128+var_10C]
B644C:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB6452)
B644E:  ADD             R0, PC; silk_lsb_iCDF_ptr
B6450:  LDR             R0, [R0]; silk_lsb_iCDF
B6452:  STR             R0, [SP,#0x128+var_110]
B6454:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xB645A)
B6456:  ADD             R0, PC; silk_lsb_iCDF_ptr
B6458:  LDR             R0, [R0]; silk_lsb_iCDF
B645A:  STR             R0, [SP,#0x128+var_114]
B645C:  ADD             R0, SP, #0x128+var_F0
B645E:  STRD.W          R11, R5, [SP,#0x128+var_DC]
B6462:  STRD.W          R8, R12, [SP,#0x128+var_E4]
B6466:  STM.W           R0, {R4,R9,LR}
B646A:  LDR.W           R3, [R1,R2,LSL#2]
B646E:  CMP             R3, #1
B6470:  BLT.W           loc_B66A0
B6474:  LSLS            R0, R2, #0x10
B6476:  STR             R2, [SP,#0x128+var_D0]
B6478:  ASRS            R1, R0, #0xB
B647A:  ADD.W           R0, R10, R0,ASR#11
B647E:  LDRSH.W         R11, [R10,R1]
B6482:  MOV             R4, R3
B6484:  MOV             R10, R3
B6486:  STR             R0, [SP,#0x128+var_C4]
B6488:  MOV             R0, R6
B648A:  MOV             R1, R5
B648C:  MOVS            R2, #8
B648E:  BLX             j_ec_dec_icdf
B6492:  ADD.W           R11, R0, R11,LSL#1
B6496:  SUBS            R4, #1
B6498:  BNE             loc_B6488
B649A:  LDR             R0, [SP,#0x128+var_C4]
B649C:  MOV             R5, R10
B649E:  LDRSH.W         R4, [R0,#2]
B64A2:  STRH.W          R11, [R0]
B64A6:  LDR.W           R11, [SP,#0x128+var_DC]
B64AA:  MOV             R0, R6
B64AC:  MOV             R1, R11
B64AE:  MOVS            R2, #8
B64B0:  BLX             j_ec_dec_icdf
B64B4:  ADD.W           R4, R0, R4,LSL#1
B64B8:  SUBS            R5, #1
B64BA:  BNE             loc_B64AA
B64BC:  LDR             R0, [SP,#0x128+var_C4]
B64BE:  LDRSH.W         R5, [R0,#4]
B64C2:  STRH            R4, [R0,#2]
B64C4:  MOV             R4, R10
B64C6:  LDR.W           R8, [SP,#0x128+var_E0]
B64CA:  MOV             R0, R6
B64CC:  MOV             R1, R8
B64CE:  MOVS            R2, #8
B64D0:  BLX             j_ec_dec_icdf
B64D4:  ADD.W           R5, R0, R5,LSL#1
B64D8:  SUBS            R4, #1
B64DA:  BNE             loc_B64CA
B64DC:  LDR             R0, [SP,#0x128+var_C4]
B64DE:  LDRSH.W         R4, [R0,#6]
B64E2:  STRH            R5, [R0,#4]
B64E4:  MOV             R5, R10
B64E6:  LDR.W           R8, [SP,#0x128+var_E4]
B64EA:  MOV             R0, R6
B64EC:  MOV             R1, R8
B64EE:  MOVS            R2, #8
B64F0:  BLX             j_ec_dec_icdf
B64F4:  ADD.W           R4, R0, R4,LSL#1
B64F8:  SUBS            R5, #1
B64FA:  BNE             loc_B64EA
B64FC:  LDR             R0, [SP,#0x128+var_C4]
B64FE:  LDRSH.W         R5, [R0,#8]
B6502:  STRH            R4, [R0,#6]
B6504:  MOV             R4, R10
B6506:  LDR.W           R9, [SP,#0x128+var_E8]
B650A:  MOV             R0, R6
B650C:  MOV             R1, R9
B650E:  MOVS            R2, #8
B6510:  BLX             j_ec_dec_icdf
B6514:  ADD.W           R5, R0, R5,LSL#1
B6518:  SUBS            R4, #1
B651A:  BNE             loc_B650A
B651C:  LDR             R0, [SP,#0x128+var_C4]
B651E:  LDRSH.W         R4, [R0,#0xA]
B6522:  STRH            R5, [R0,#8]
B6524:  MOV             R5, R10
B6526:  LDR.W           R9, [SP,#0x128+var_EC]
B652A:  MOV             R0, R6
B652C:  MOV             R1, R9
B652E:  MOVS            R2, #8
B6530:  BLX             j_ec_dec_icdf
B6534:  ADD.W           R4, R0, R4,LSL#1
B6538:  SUBS            R5, #1
B653A:  BNE             loc_B652A
B653C:  LDR             R0, [SP,#0x128+var_C4]
B653E:  LDRSH.W         R5, [R0,#0xC]
B6542:  STRH            R4, [R0,#0xA]
B6544:  MOV             R0, R10
B6546:  MOV             R4, R10
B6548:  LDR.W           R10, [SP,#0x128+var_F0]
B654C:  STR             R0, [SP,#0x128+var_C8]
B654E:  MOV             R0, R6
B6550:  MOV             R1, R10
B6552:  MOVS            R2, #8
B6554:  BLX             j_ec_dec_icdf
B6558:  ADD.W           R5, R0, R5,LSL#1
B655C:  SUBS            R4, #1
B655E:  BNE             loc_B654E
B6560:  LDR             R0, [SP,#0x128+var_C4]
B6562:  LDRSH.W         R4, [R0,#0xE]
B6566:  STRH            R5, [R0,#0xC]
B6568:  LDR             R5, [SP,#0x128+var_C8]
B656A:  LDR.W           R10, [SP,#0x128+var_F4]
B656E:  MOV             R0, R6
B6570:  MOV             R1, R10
B6572:  MOVS            R2, #8
B6574:  BLX             j_ec_dec_icdf
B6578:  ADD.W           R4, R0, R4,LSL#1
B657C:  SUBS            R5, #1
B657E:  BNE             loc_B656E
B6580:  LDR             R0, [SP,#0x128+var_C4]
B6582:  LDRSH.W         R5, [R0,#0x10]
B6586:  STRH            R4, [R0,#0xE]
B6588:  LDR             R4, [SP,#0x128+var_C8]
B658A:  LDR.W           R10, [SP,#0x128+var_F8]
B658E:  MOV             R0, R6
B6590:  MOV             R1, R10
B6592:  MOVS            R2, #8
B6594:  BLX             j_ec_dec_icdf
B6598:  ADD.W           R5, R0, R5,LSL#1
B659C:  SUBS            R4, #1
B659E:  BNE             loc_B658E
B65A0:  LDR             R0, [SP,#0x128+var_C4]
B65A2:  LDRSH.W         R4, [R0,#0x12]
B65A6:  STRH            R5, [R0,#0x10]
B65A8:  LDR             R5, [SP,#0x128+var_C8]
B65AA:  LDR.W           R10, [SP,#0x128+var_FC]
B65AE:  MOV             R0, R6
B65B0:  MOV             R1, R10
B65B2:  MOVS            R2, #8
B65B4:  BLX             j_ec_dec_icdf
B65B8:  ADD.W           R4, R0, R4,LSL#1
B65BC:  SUBS            R5, #1
B65BE:  BNE             loc_B65AE
B65C0:  LDR             R0, [SP,#0x128+var_C4]
B65C2:  LDRSH.W         R5, [R0,#0x14]
B65C6:  STRH            R4, [R0,#0x12]
B65C8:  LDR             R4, [SP,#0x128+var_C8]
B65CA:  LDR.W           R10, [SP,#0x128+var_100]
B65CE:  MOV             R0, R6
B65D0:  MOV             R1, R10
B65D2:  MOVS            R2, #8
B65D4:  BLX             j_ec_dec_icdf
B65D8:  ADD.W           R5, R0, R5,LSL#1
B65DC:  SUBS            R4, #1
B65DE:  BNE             loc_B65CE
B65E0:  LDR             R0, [SP,#0x128+var_C4]
B65E2:  LDRSH.W         R4, [R0,#0x16]
B65E6:  STRH            R5, [R0,#0x14]
B65E8:  LDR             R5, [SP,#0x128+var_C8]
B65EA:  LDR.W           R10, [SP,#0x128+var_104]
B65EE:  MOV             R0, R6
B65F0:  MOV             R1, R10
B65F2:  MOVS            R2, #8
B65F4:  BLX             j_ec_dec_icdf
B65F8:  ADD.W           R4, R0, R4,LSL#1
B65FC:  SUBS            R5, #1
B65FE:  BNE             loc_B65EE
B6600:  LDR             R0, [SP,#0x128+var_C4]
B6602:  LDRSH.W         R5, [R0,#0x18]
B6606:  STRH            R4, [R0,#0x16]
B6608:  LDR             R4, [SP,#0x128+var_C8]
B660A:  LDR.W           R10, [SP,#0x128+var_108]
B660E:  MOV             R0, R6
B6610:  MOV             R1, R10
B6612:  MOVS            R2, #8
B6614:  BLX             j_ec_dec_icdf
B6618:  ADD.W           R5, R0, R5,LSL#1
B661C:  SUBS            R4, #1
B661E:  BNE             loc_B660E
B6620:  LDR             R0, [SP,#0x128+var_C4]
B6622:  LDRSH.W         R4, [R0,#0x1A]
B6626:  STRH            R5, [R0,#0x18]
B6628:  LDR             R5, [SP,#0x128+var_C8]
B662A:  LDR.W           R10, [SP,#0x128+var_10C]
B662E:  MOV             R0, R6
B6630:  MOV             R1, R10
B6632:  MOVS            R2, #8
B6634:  BLX             j_ec_dec_icdf
B6638:  ADD.W           R4, R0, R4,LSL#1
B663C:  SUBS            R5, #1
B663E:  BNE             loc_B662E
B6640:  LDR             R0, [SP,#0x128+var_C4]
B6642:  LDRSH.W         R5, [R0,#0x1C]
B6646:  STRH            R4, [R0,#0x1A]
B6648:  LDR             R4, [SP,#0x128+var_C8]
B664A:  LDR.W           R10, [SP,#0x128+var_110]
B664E:  MOV             R0, R6
B6650:  MOV             R1, R10
B6652:  MOVS            R2, #8
B6654:  BLX             j_ec_dec_icdf
B6658:  ADD.W           R5, R0, R5,LSL#1
B665C:  SUBS            R4, #1
B665E:  BNE             loc_B664E
B6660:  LDR             R0, [SP,#0x128+var_C4]
B6662:  LDRSH.W         R4, [R0,#0x1E]
B6666:  STRH            R5, [R0,#0x1C]
B6668:  LDR             R5, [SP,#0x128+var_C8]
B666A:  LDR.W           R10, [SP,#0x128+var_114]
B666E:  MOV             R0, R6
B6670:  MOV             R1, R10
B6672:  MOVS            R2, #8
B6674:  BLX             j_ec_dec_icdf
B6678:  ADD.W           R4, R0, R4,LSL#1
B667C:  SUBS            R5, #1
B667E:  BNE             loc_B666E
B6680:  LDR             R0, [SP,#0x128+var_C4]
B6682:  STRH            R4, [R0,#0x1E]
B6684:  ADD             R0, SP, #0x128+var_70
B6686:  LDR             R2, [SP,#0x128+var_D0]
B6688:  MOV             R1, R0
B668A:  LDR             R3, [SP,#0x128+var_C8]
B668C:  LDR.W           R10, [SP,#0x128+var_D4]
B6690:  LDR.W           R0, [R1,R2,LSL#2]
B6694:  LDR             R5, [SP,#0x128+var_D8]
B6696:  ORR.W           R0, R0, R3,LSL#5
B669A:  STR.W           R0, [R1,R2,LSL#2]
B669E:  ADD             R1, SP, #0x128+var_C0
B66A0:  LDR             R0, [SP,#0x128+var_CC]
B66A2:  ADDS            R2, #1
B66A4:  CMP             R2, R0
B66A6:  BNE.W           loc_B646A
B66AA:  ADD             R0, SP, #0x128+var_70
B66AC:  LDR             R1, [SP,#0x128+var_11C]
B66AE:  LDR             R2, [R7,#arg_0]
B66B0:  STRD.W          R1, R0, [SP,#0x128+var_128]
B66B4:  MOV             R0, R6
B66B6:  LDR             R3, [SP,#0x128+var_118]
B66B8:  MOV             R1, R10
B66BA:  BLX             j_silk_decode_signs
B66BE:  LDR             R0, =(__stack_chk_guard_ptr - 0xB66C6)
B66C0:  LDR             R1, [SP,#0x128+var_20]
B66C2:  ADD             R0, PC; __stack_chk_guard_ptr
B66C4:  LDR             R0, [R0]; __stack_chk_guard
B66C6:  LDR             R0, [R0]
B66C8:  SUBS            R0, R0, R1
B66CA:  ITTT EQ
B66CC:  ADDEQ           SP, SP, #0x10C
B66CE:  POPEQ.W         {R8-R11}
B66D2:  POPEQ           {R4-R7,PC}
B66D4:  BLX             __stack_chk_fail
