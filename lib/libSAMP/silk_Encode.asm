; =========================================================
; Game Engine Function: silk_Encode
; Address            : 0x1A6210 - 0x1A73BA
; =========================================================

1A6210:  PUSH            {R4-R7,LR}
1A6212:  ADD             R7, SP, #0xC
1A6214:  PUSH.W          {R8-R11}
1A6218:  SUB             SP, SP, #0x11C
1A621A:  MOV             R5, R0
1A621C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1A622A)
1A6220:  STR.W           R3, [R7,#var_8C]
1A6224:  MOV             R8, R2
1A6226:  ADD             R0, PC; __stack_chk_guard_ptr
1A6228:  LDR             R0, [R0]; __stack_chk_guard
1A622A:  LDR             R0, [R0]
1A622C:  STR.W           R0, [R7,#var_24]
1A6230:  LDR             R0, [R1,#0x44]
1A6232:  CBZ             R0, loc_1A6242
1A6234:  MOVW            R0, #0x33F0
1A6238:  MOVS            R2, #1
1A623A:  STR             R2, [R5,R0]
1A623C:  MOVW            R0, #0x1238
1A6240:  STR             R2, [R5,R0]
1A6242:  MOVW            R0, #0x1674
1A6246:  MOVS            R6, #0
1A6248:  STR             R6, [R5,R0]
1A624A:  MOVW            R0, #0x382C
1A624E:  MOV             R4, R1
1A6250:  STR             R6, [R5,R0]
1A6252:  MOV             R0, R1
1A6254:  BLX             j_check_control_input
1A6258:  CBZ             R0, loc_1A627C
1A625A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1A6266)
1A625E:  LDR.W           R2, [R7,#var_24]
1A6262:  ADD             R1, PC; __stack_chk_guard_ptr
1A6264:  LDR             R1, [R1]; __stack_chk_guard
1A6266:  LDR             R1, [R1]
1A6268:  SUBS            R1, R1, R2
1A626A:  ITTTT EQ
1A626C:  SUBEQ.W         R4, R7, #-var_1C
1A6270:  MOVEQ           SP, R4
1A6272:  POPEQ.W         {R8-R11}
1A6276:  POPEQ           {R4-R7,PC}
1A6278:  BLX             __stack_chk_fail
1A627C:  MOVW            R0, #0x21B8
1A6280:  STR.W           R8, [R7,#var_84]
1A6284:  ADD.W           R8, R5, R0
1A6288:  STR             R6, [R4,#0x58]
1A628A:  MOVW            R0, #0x43B4
1A628E:  LDR             R1, [R4,#4]
1A6290:  LDR             R2, [R5,R0]
1A6292:  ADD.W           R9, R5, R0
1A6296:  MOV             R3, R4
1A6298:  CMP             R1, R2
1A629A:  MOV             R4, R5
1A629C:  MOV.W           R10, #0
1A62A0:  STR.W           R3, [R7,#var_40]
1A62A4:  BLE             loc_1A6310
1A62A6:  MOVW            R0, #0x13E4
1A62AA:  LDR             R1, [R4,R0]
1A62AC:  MOV             R0, R8
1A62AE:  BLX             j_silk_init_encoder
1A62B2:  MOV             R10, R0
1A62B4:  MOVW            R0, #0x4370
1A62B8:  MOVS            R1, #0
1A62BA:  MOVS            R2, #1
1A62BC:  STR             R1, [R4,R0]
1A62BE:  MOVW            R0, #0x4378
1A62C2:  STR             R1, [R4,R0]
1A62C4:  MOVW            R0, #0x437C
1A62C8:  STR             R1, [R4,R0]
1A62CA:  MOV.W           R0, #0x4380
1A62CE:  STR             R2, [R4,R0]
1A62D0:  MOVW            R0, #0x4384
1A62D4:  STR             R1, [R4,R0]
1A62D6:  MOVW            R0, #0x4388
1A62DA:  MOVW            R1, #0x43B0
1A62DE:  STR             R2, [R4,R0]
1A62E0:  MOVW            R0, #0x438C
1A62E4:  MOV.W           R2, #0x4000
1A62E8:  LDR             R1, [R4,R1]
1A62EA:  STR             R2, [R4,R0]
1A62EC:  CMP             R1, #2
1A62EE:  BNE             loc_1A630C
1A62F0:  MOVW            R0, #0x3848
1A62F4:  MOVW            R1, #0x1690
1A62F8:  ADD             R0, R4; dest
1A62FA:  ADD             R1, R4; src
1A62FC:  MOV.W           R2, #0x12C; n
1A6300:  BLX             j_memcpy
1A6304:  LDRD.W          R0, R1, [R4]
1A6308:  STRD.W          R0, R1, [R8]
1A630C:  LDR.W           R3, [R7,#var_40]
1A6310:  MOV             R1, R4
1A6312:  STR.W           R8, [R7,#var_E8]
1A6316:  STR.W           R1, [R7,#var_7C]
1A631A:  MOVW            R0, #0x1204
1A631E:  LDR             R0, [R4,R0]
1A6320:  LDR.W           R8, [R3,#0x18]
1A6324:  CMP             R8, R0
1A6326:  BNE             loc_1A633C
1A6328:  LDR             R4, [R3,#4]
1A632A:  MOVS            R1, #0
1A632C:  LDR.W           R0, [R9]
1A6330:  CMP             R0, R4
1A6332:  IT NE
1A6334:  MOVNE           R1, #1
1A6336:  STR.W           R1, [R7,#var_44]
1A633A:  B               loc_1A6344
1A633C:  MOVS            R0, #1
1A633E:  LDR             R4, [R3,#4]
1A6340:  STR.W           R0, [R7,#var_44]
1A6344:  LDR.W           R6, [R7,#var_8C]
1A6348:  MOVS            R0, #0x64 ; 'd'
1A634A:  MOVW            R1, #0x43B0
1A634E:  LDR             R2, [R3]
1A6350:  MUL.W           R11, R6, R0
1A6354:  LDR.W           R0, [R7,#var_7C]
1A6358:  STR             R2, [R0,R1]
1A635A:  STR.W           R4, [R9]
1A635E:  LDR             R5, [R3,#8]
1A6360:  MOV             R0, R11
1A6362:  MOV             R1, R5
1A6364:  BLX             sub_220A40
1A6368:  MOV             R3, R0
1A636A:  MOVS            R0, #1
1A636C:  CMP             R3, #1
1A636E:  IT GT
1A6370:  ASRGT           R0, R3, #1
1A6372:  STR.W           R0, [R7,#var_64]
1A6376:  LDR             R0, [R7,#arg_8]
1A6378:  CBZ             R0, loc_1A63F0
1A637A:  CMP             R3, #1
1A637C:  BNE             loc_1A6416
1A637E:  LDR             R0, [R7,#arg_8]
1A6380:  STR.W           R3, [R7,#var_48]
1A6384:  CMP             R0, #2
1A6386:  BNE             loc_1A63A4
1A6388:  LDR.W           R0, [R7,#var_7C]
1A638C:  SUB.W           R12, R7, #-var_38
1A6390:  MOV             R6, R0
1A6392:  ADD.W           R3, R6, #0x10
1A6396:  LDM             R3, {R0-R3}
1A6398:  STM.W           R12, {R0-R3}
1A639C:  MOV.W           R0, #0x11E0
1A63A0:  LDR.W           R8, [R6,R0]
1A63A4:  LDR.W           R1, [R7,#var_40]
1A63A8:  CMP             R4, #0
1A63AA:  BLE             loc_1A641C
1A63AC:  LDR             R0, [R7,#arg_8]
1A63AE:  MOVS            R6, #0
1A63B0:  CMP             R0, #2
1A63B2:  BNE             loc_1A643A
1A63B4:  LDR.W           R5, [R7,#var_7C]
1A63B8:  MOVW            R9, #0x13E4
1A63BC:  MOVW            R11, #0x21B8
1A63C0:  LDR.W           R1, [R5,R9]
1A63C4:  MOV             R0, R5
1A63C6:  BLX             j_silk_init_encoder
1A63CA:  LDR.W           R1, [R7,#var_40]
1A63CE:  MOV             R10, R0
1A63D0:  LDRD.W          R0, R4, [R7,#var_38]
1A63D4:  ADDS            R6, #1
1A63D6:  LDRD.W          R2, R3, [R7,#var_30]
1A63DA:  STRD.W          R0, R4, [R5,#0x10]
1A63DE:  ADD.W           R0, R5, #0x18
1A63E2:  STM.W           R0, {R2,R3,R8}
1A63E6:  ADD             R5, R11
1A63E8:  LDR             R4, [R1,#4]
1A63EA:  CMP             R6, R4
1A63EC:  BLT             loc_1A63C0
1A63EE:  B               loc_1A6460
1A63F0:  MOV             R0, #0xFFFFFF9B
1A63F4:  CMP             R6, #0
1A63F6:  BLT.W           loc_1A625A
1A63FA:  MUL.W           R1, R3, R5
1A63FE:  CMP             R1, R11
1A6400:  BNE.W           loc_1A625A
1A6404:  LDR.W           R2, [R7,#var_8C]
1A6408:  MOV.W           R1, #0x3E8
1A640C:  MUL.W           R0, R8, R5
1A6410:  MULS            R1, R2
1A6412:  CMP             R1, R0
1A6414:  BLE             loc_1A64A4
1A6416:  MOV             R0, #0xFFFFFF9B
1A641A:  B               loc_1A625A
1A641C:  SUB.W           LR, R7, #-var_100
1A6420:  LDR             R2, [R1,#0x18]
1A6422:  MOVS            R0, #0xA
1A6424:  STR.W           R2, [LR,#-0x34]
1A6428:  SUB.W           LR, R7, #-var_100
1A642C:  LDR             R2, [R1,#0x24]
1A642E:  STR.W           R2, [LR,#-0x30]
1A6432:  STR             R0, [R1,#0x18]
1A6434:  MOVS            R0, #0
1A6436:  STR             R0, [R1,#0x24]
1A6438:  B               loc_1A64C0
1A643A:  LDR.W           R5, [R7,#var_7C]
1A643E:  MOVW            R8, #0x13E4
1A6442:  MOVW            R9, #0x21B8
1A6446:  LDR.W           R1, [R5,R8]
1A644A:  MOV             R0, R5
1A644C:  BLX             j_silk_init_encoder
1A6450:  LDR.W           R1, [R7,#var_40]
1A6454:  ADD             R5, R9
1A6456:  ADDS            R6, #1
1A6458:  MOV             R10, R0
1A645A:  LDR             R4, [R1,#4]
1A645C:  CMP             R6, R4
1A645E:  BLT             loc_1A6446
1A6460:  SUB.W           LR, R7, #-var_100
1A6464:  LDR             R2, [R1,#0x18]
1A6466:  MOVS            R0, #0xA
1A6468:  CMP             R4, #1
1A646A:  STR.W           R2, [LR,#-0x34]
1A646E:  SUB.W           LR, R7, #-var_100
1A6472:  LDR             R2, [R1,#0x24]
1A6474:  STR.W           R2, [LR,#-0x30]
1A6478:  STR             R0, [R1,#0x18]
1A647A:  MOV.W           R0, #0
1A647E:  STR             R0, [R1,#0x24]
1A6480:  LDR.W           R8, [R7,#var_7C]
1A6484:  BLT             loc_1A64C4
1A6486:  MOVW            R2, #0x123C
1A648A:  ADD.W           R5, R8, R2
1A648E:  MOVS            R2, #1
1A6490:  MOVW            R3, #0x21B8
1A6494:  MOVS            R6, #0
1A6496:  STR             R2, [R5,#0xC]
1A6498:  ADDS            R6, #1
1A649A:  STR             R0, [R5]
1A649C:  ADD             R5, R3
1A649E:  CMP             R6, R4
1A64A0:  BLT             loc_1A6496
1A64A2:  B               loc_1A64C4
1A64A4:  SUB.W           LR, R7, #-var_100
1A64A8:  MOVS            R0, #0
1A64AA:  LDR.W           R1, [R7,#var_40]
1A64AE:  STR.W           R0, [LR,#-0x30]
1A64B2:  SUB.W           LR, R7, #-var_100
1A64B6:  MOVS            R0, #0
1A64B8:  STR.W           R3, [R7,#var_48]
1A64BC:  STR.W           R0, [LR,#-0x34]
1A64C0:  LDR.W           R8, [R7,#var_7C]
1A64C4:  MOVW            R0, #0x1670
1A64C8:  CMP             R4, #1
1A64CA:  ADD             R0, R8
1A64CC:  STR.W           R0, [R7,#var_68]
1A64D0:  MOVW            R0, #0x43C0
1A64D4:  ADD             R0, R8
1A64D6:  STR.W           R0, [R7,#var_90]
1A64DA:  ADD.W           R0, R8, #0x11E0
1A64DE:  STR.W           R0, [R7,#var_9C]
1A64E2:  BLT.W           loc_1A65EC
1A64E6:  LDR.W           R0, [R7,#var_44]
1A64EA:  CBZ             R0, loc_1A6566
1A64EC:  MOVW            R0, #0x1274
1A64F0:  ADD.W           R4, R8, R0
1A64F4:  MOVS            R6, #0
1A64F6:  MOVW            R9, #0x21B8
1A64FA:  MOVW            R10, #0x17BC
1A64FE:  MOV.W           R11, #0x17C0
1A6502:  MOVS            R5, #0
1A6504:  MLA.W           R8, R5, R9, R8
1A6508:  CMP             R5, #1
1A650A:  ITTE EQ
1A650C:  LDREQ.W         R0, [R7,#var_9C]
1A6510:  LDREQ           R0, [R0]
1A6512:  MOVNE           R0, #0
1A6514:  LDR.W           R2, [R7,#var_90]
1A6518:  LDR             R2, [R2]
1A651A:  SUB             SP, SP, #8
1A651C:  STR             R0, [SP,#0x140+var_140]
1A651E:  MOV             R0, R8
1A6520:  MOV             R3, R5
1A6522:  BLX             j_silk_control_encoder
1A6526:  ADD             SP, SP, #8
1A6528:  CMP             R0, #0
1A652A:  BNE.W           loc_1A625A
1A652E:  LDR.W           R2, [R7,#var_68]
1A6532:  LDR             R0, [R2]
1A6534:  CMP             R0, #1
1A6536:  BLT             loc_1A6546
1A6538:  MOVS            R0, #0
1A653A:  STR.W           R6, [R4,R0,LSL#2]
1A653E:  ADDS            R0, #1
1A6540:  LDR             R1, [R2]
1A6542:  CMP             R0, R1
1A6544:  BLT             loc_1A653A
1A6546:  LDR.W           R0, [R8,R10]
1A654A:  ADD             R4, R9
1A654C:  STR.W           R0, [R8,R11]
1A6550:  ADDS            R5, #1
1A6552:  LDR.W           R1, [R7,#var_40]
1A6556:  LDR.W           R8, [R7,#var_7C]
1A655A:  LDR             R0, [R1,#4]
1A655C:  CMP             R5, R0
1A655E:  BLT             loc_1A6504
1A6560:  MOV.W           R10, #0
1A6564:  B               loc_1A65EC
1A6566:  MOVW            R0, #0x1274
1A656A:  ADD.W           R4, R8, R0
1A656E:  MOV.W           R10, #0
1A6572:  MOVW            R11, #0x21B8
1A6576:  MOVW            R8, #0x17BC
1A657A:  MOV.W           R9, #0x17C0
1A657E:  MOVS            R5, #0
1A6580:  CMP             R5, #1
1A6582:  ITTE EQ
1A6584:  LDREQ.W         R0, [R7,#var_9C]
1A6588:  LDREQ           R0, [R0]
1A658A:  MOVNE           R0, #0
1A658C:  LDR.W           R2, [R7,#var_7C]
1A6590:  MLA.W           R6, R5, R11, R2
1A6594:  LDR.W           R2, [R7,#var_90]
1A6598:  LDR             R2, [R2]
1A659A:  SUB             SP, SP, #8
1A659C:  STR             R0, [SP,#0x140+var_140]
1A659E:  MOV             R0, R6
1A65A0:  MOV             R3, R5
1A65A2:  BLX             j_silk_control_encoder
1A65A6:  ADD             SP, SP, #8
1A65A8:  CMP             R0, #0
1A65AA:  BNE.W           loc_1A625A
1A65AE:  MOVW            R0, #0x1238
1A65B2:  LDR.W           R2, [R7,#var_68]
1A65B6:  LDR             R0, [R6,R0]
1A65B8:  CBZ             R0, loc_1A65CE
1A65BA:  LDR             R0, [R2]
1A65BC:  CMP             R0, #1
1A65BE:  BLT             loc_1A65CE
1A65C0:  MOVS            R0, #0
1A65C2:  STR.W           R10, [R4,R0,LSL#2]
1A65C6:  ADDS            R0, #1
1A65C8:  LDR             R1, [R2]
1A65CA:  CMP             R0, R1
1A65CC:  BLT             loc_1A65C2
1A65CE:  LDR.W           R0, [R6,R8]
1A65D2:  ADD             R4, R11
1A65D4:  STR.W           R0, [R6,R9]
1A65D8:  ADDS            R5, #1
1A65DA:  LDR.W           R1, [R7,#var_40]
1A65DE:  LDR             R0, [R1,#4]
1A65E0:  CMP             R5, R0
1A65E2:  BLT             loc_1A6580
1A65E4:  MOV.W           R10, #0
1A65E8:  LDR.W           R8, [R7,#var_7C]
1A65EC:  MOVW            R0, #0x1674
1A65F0:  SUB.W           R9, R7, #-var_100
1A65F4:  ADD             R0, R8
1A65F6:  STR.W           R0, [R7,#var_60]
1A65FA:  LDR.W           R0, [R7,#var_9C]
1A65FE:  MOVW            R6, #0x11CC
1A6602:  MOV.W           R1, #0x3E8
1A6606:  MOV             R11, R10
1A6608:  LDR             R4, [R0]
1A660A:  LDR.W           R0, [R7,#var_48]
1A660E:  MULS            R1, R4
1A6610:  ADD.W           R0, R0, R0,LSL#2
1A6614:  LSLS            R0, R0, #1
1A6616:  STR.W           R0, [R9]
1A661A:  MULS            R0, R4
1A661C:  LDR.W           R5, [R8,R6]
1A6620:  STR.W           R0, [R7,#var_B8]
1A6624:  MULS            R0, R5
1A6626:  BLX             sub_220A40
1A662A:  MOVS            R1, #7
1A662C:  ADD.W           R0, R1, R0,LSL#1
1A6630:  BIC.W           R0, R0, #7
1A6634:  SUB.W           LR, R7, #-var_100
1A6638:  SUB.W           R1, SP, R0
1A663C:  MOVW            R0, #0x1270
1A6640:  ADD             R0, R8
1A6642:  STR.W           R0, [R7,#var_FC]
1A6646:  MOVW            R0, #0x1274
1A664A:  MOV.W           R9, #0
1A664E:  ADD             R0, R8
1A6650:  STR.W           R0, [R7,#var_DC]
1A6654:  MOVW            R0, #0x4374
1A6658:  STR.W           R1, [R7,#var_AC]
1A665C:  ADD             R0, R8
1A665E:  STR.W           R0, [R7,#var_C8]
1A6662:  MOVW            R0, #0x3978
1A6666:  ADD             R0, R8
1A6668:  STR.W           R0, [LR,#-0xC]
1A666C:  MOVW            R0, #0x43BC
1A6670:  SUB.W           LR, R7, #-var_100
1A6674:  ADD             R0, R8
1A6676:  STR.W           R0, [R7,#var_EC]
1A667A:  MOVW            R0, #0x3428
1A667E:  ADD             R0, R8
1A6680:  STR.W           R0, [R7,#var_CC]
1A6684:  MOVW            R0, #0x33F0
1A6688:  ADD             R0, R8
1A668A:  STR.W           R0, [LR,#-0x10]
1A668E:  MOVW            R0, #0x3344
1A6692:  SUB.W           LR, R7, #-var_100
1A6696:  ADD             R0, R8
1A6698:  STR.W           R0, [LR,#-0x14]
1A669C:  MOVW            R0, #0x3375
1A66A0:  SUB.W           LR, R7, #-var_100
1A66A4:  ADD             R0, R8
1A66A6:  STR.W           R0, [LR,#-0x18]
1A66AA:  MOVW            R0, #0x3334
1A66AE:  SUB.W           LR, R7, #-var_100
1A66B2:  ADD             R0, R8
1A66B4:  STR.W           R0, [LR,#-0x1C]
1A66B8:  MOVW            R0, #0x3378
1A66BC:  SUB.W           LR, R7, #-var_100
1A66C0:  ADD             R0, R8
1A66C2:  STR.W           R0, [LR,#-0x20]
1A66C6:  MOVW            R0, #0x21C8
1A66CA:  SUB.W           LR, R7, #-var_100
1A66CE:  ADD             R0, R8
1A66D0:  STR.W           R0, [LR,#-0x24]
1A66D4:  MOVW            R0, #0x224C
1A66D8:  SUB.W           LR, R7, #-var_100
1A66DC:  ADD             R0, R8
1A66DE:  STR.W           R0, [LR,#-0x28]
1A66E2:  MOVW            R0, #0x3DB8
1A66E6:  SUB.W           LR, R7, #-var_100
1A66EA:  ADD             R0, R8
1A66EC:  STR.W           R0, [LR,#-0x2C]
1A66F0:  MOVW            R0, #0x43C4
1A66F4:  ADD             R0, R8
1A66F6:  STR.W           R0, [R7,#var_70]
1A66FA:  MOVW            R0, #0x11B4
1A66FE:  SUB.W           LR, R7, #-var_100
1A6702:  ADD             R0, R8
1A6704:  STR.W           R0, [R7,#var_C4]
1A6708:  MOVW            R0, #0x35A4
1A670C:  ADD             R0, R8
1A670E:  STR.W           R0, [R7,#var_D0]
1A6712:  MOVW            R0, #0x13EC
1A6716:  ADD             R0, R8
1A6718:  STR.W           R0, [R7,#var_D4]
1A671C:  MOVW            R0, #0x4370
1A6720:  ADD             R0, R8
1A6722:  STR.W           R0, [R7,#var_D8]
1A6726:  MOVW            R0, #0x43AC
1A672A:  ADD             R0, R8
1A672C:  STR.W           R0, [R7,#var_B0]
1A6730:  MOVW            R0, #0x43A8
1A6734:  ADD             R0, R8
1A6736:  STR.W           R0, [R7,#var_BC]
1A673A:  MOVW            R0, #0x43A4
1A673E:  ADD             R0, R8
1A6740:  STR.W           R0, [R7,#var_5C]
1A6744:  MOVW            R0, #0x342C
1A6748:  ADD             R0, R8
1A674A:  STR.W           R0, [R7,#var_50]
1A674E:  MOVW            R0, #0x4392
1A6752:  ADD             R0, R8
1A6754:  STR.W           R0, [R7,#var_6C]
1A6758:  MOVW            R0, #0x35A0
1A675C:  ADD             R0, R8
1A675E:  STR.W           R0, [R7,#var_F8]
1A6762:  MOVW            R0, #0x3398
1A6766:  ADD             R0, R8
1A6768:  STR.W           R0, [LR,#-4]
1A676C:  MOVW            R0, #0x3824
1A6770:  SUB.W           LR, R7, #-var_100
1A6774:  ADD             R0, R8
1A6776:  STR.W           R0, [R7,#var_E0]
1A677A:  MOVW            R0, #0x33A0
1A677E:  ADD             R0, R8
1A6780:  STR.W           R0, [LR,#-8]
1A6784:  MOVW            R0, #0x13E8
1A6788:  ADD             R0, R8
1A678A:  STR.W           R0, [R7,#var_A0]
1A678E:  MOVW            R0, #0x1690
1A6792:  ADD             R0, R8
1A6794:  STR.W           R0, [R7,#src]
1A6798:  MOVW            R0, #0x3848
1A679C:  ADD             R0, R8
1A679E:  STR.W           R0, [R7,#dest]
1A67A2:  MOVW            R0, #0x43B8
1A67A6:  ADD             R0, R8
1A67A8:  STR.W           R0, [R7,#var_E4]
1A67AC:  MOVW            R0, #0x166C
1A67B0:  ADD.W           R2, R8, R0
1A67B4:  MOVW            R0, #0x11E8
1A67B8:  ADD.W           R3, R8, R0
1A67BC:  ADD.W           R0, R8, R6
1A67C0:  STR.W           R0, [R7,#var_C0]
1A67C4:  ADD.W           R0, R8, #0x1840
1A67C8:  STR.W           R0, [R7,#var_78]
1A67CC:  ADD.W           R0, R8, #0x17C0
1A67D0:  STR.W           R0, [R7,#var_F0]
1A67D4:  LDR.W           R0, [R7,#var_64]
1A67D8:  LSLS            R6, R0, #1
1A67DA:  SUBS            R0, #1
1A67DC:  STR.W           R6, [R7,#var_74]
1A67E0:  STR.W           R0, [R7,#var_58]
1A67E4:  MOV             SP, R1
1A67E6:  LDR.W           R0, =(silk_LBRR_flags_iCDF_ptr_ptr - 0x1A67F2)
1A67EA:  STR.W           R2, [R7,#var_98]
1A67EE:  ADD             R0, PC; silk_LBRR_flags_iCDF_ptr_ptr
1A67F0:  STR.W           R3, [R7,#var_88]
1A67F4:  LDR             R0, [R0]; silk_LBRR_flags_iCDF_ptr
1A67F6:  STR.W           R0, [R7,#var_94]
1A67FA:  MOVS            R0, #0
1A67FC:  STR.W           R0, [R7,#var_54]
1A6800:  B               loc_1A68FC
1A6802:  MOVS            R1, #0
1A6804:  LDR             R0, [R7,#arg_8]
1A6806:  CBNZ            R0, loc_1A681A
1A6808:  ADD.W           R0, R12, #1
1A680C:  MUL.W           R2, R0, R9
1A6810:  LDR             R0, [R7,#arg_0]
1A6812:  BLX             j_ec_enc_patch_initial_bits
1A6816:  LDR.W           LR, [R7,#var_40]
1A681A:  LDR.W           R0, [R7,#var_F0]
1A681E:  MOVS            R4, #0
1A6820:  LDR             R0, [R0]
1A6822:  CBZ             R0, loc_1A683C
1A6824:  LDR.W           R0, [LR,#4]
1A6828:  CMP             R0, #1
1A682A:  BEQ             loc_1A6838
1A682C:  SUB.W           R1, R7, #-var_100
1A6830:  LDR.W           R0, [R1,#-0xC]
1A6834:  LDR             R0, [R0]
1A6836:  CBZ             R0, loc_1A683C
1A6838:  LDR             R0, [R7,#arg_4]
1A683A:  STR             R4, [R0]
1A683C:  LDRD.W          R0, R1, [LR,#0x18]
1A6840:  MOV             R2, #0x10624DD3
1A6848:  LDR.W           R3, [R7,#var_B0]
1A684C:  MULS            R1, R0
1A684E:  MOV             R5, R3
1A6850:  LDR             R3, [R5]
1A6852:  SMMUL.W         R1, R1, R2
1A6856:  LDR             R2, [R7,#arg_4]
1A6858:  LDR             R2, [R2]
1A685A:  ASRS            R6, R1, #6
1A685C:  ADD.W           R2, R3, R2,LSL#3
1A6860:  ADD.W           R1, R6, R1,LSR#31
1A6864:  MOVW            R3, #0xC74
1A6868:  SUBS            R1, R2, R1
1A686A:  MOVW            R2, #0x2710
1A686E:  CMP             R1, #0
1A6870:  IT LE
1A6872:  MOVLE           R1, R4
1A6874:  CMP             R1, R2
1A6876:  IT GE
1A6878:  MOVGE           R1, R2
1A687A:  STR             R1, [R5]
1A687C:  MOVS            R5, #0xD
1A687E:  LDR.W           R6, [R7,#var_EC]
1A6882:  LDR             R1, [R6]
1A6884:  SXTH            R2, R1
1A6886:  SMULBB.W        R2, R2, R3
1A688A:  LDR.W           R3, [R7,#var_C4]
1A688E:  LDR             R3, [R3]
1A6890:  ADD.W           R2, R5, R2,ASR#16
1A6894:  CMP             R3, R2
1A6896:  BGE             loc_1A68A4
1A6898:  LDR.W           R0, [R7,#var_90]
1A689C:  MOVS            R1, #1
1A689E:  STR             R1, [R0]
1A68A0:  STR             R4, [R6]
1A68A2:  B               loc_1A68AE
1A68A4:  LDR.W           R2, [R7,#var_90]
1A68A8:  ADD             R0, R1
1A68AA:  STR             R4, [R2]
1A68AC:  STR             R0, [R6]
1A68AE:  LDR.W           R6, [R7,#var_54]
1A68B2:  MOV             R0, R10
1A68B4:  CBNZ            R0, loc_1A68C4
1A68B6:  B.W             loc_1A72FA
1A68BA:  LDR.W           R3, [R7,#var_98]
1A68BE:  LDR.W           LR, [R7,#var_40]
1A68C2:  B               loc_1A6A4A
1A68C4:  STR.W           R0, [R7,#var_8C]
1A68C8:  ADDS            R6, #1
1A68CA:  LDR.W           R0, [R7,#var_80]
1A68CE:  MOV.W           R9, #0
1A68D2:  LDR.W           R1, [R7,#var_A8]
1A68D6:  LDR.W           R2, [R7,#var_98]
1A68DA:  LDR.W           R3, [R7,#var_88]
1A68DE:  MULS            R0, R1
1A68E0:  LDR.W           R1, [R7,#var_84]
1A68E4:  ADD.W           R1, R1, R0,LSL#1
1A68E8:  LDR.W           R0, [R7,#var_9C]
1A68EC:  STR.W           R1, [R7,#var_84]
1A68F0:  LDR             R4, [R0]
1A68F2:  LDR.W           R0, [R7,#var_C0]
1A68F6:  LDR             R5, [R0]
1A68F8:  STR.W           R6, [R7,#var_54]
1A68FC:  LDR.W           R10, [R2]
1A6900:  MOV.W           R1, #0x3E8
1A6904:  LDR             R0, [R3]
1A6906:  MULS            R1, R4
1A6908:  SUB.W           R4, R0, R10
1A690C:  LDR.W           R0, [R7,#var_B8]
1A6910:  CMP             R4, R0
1A6912:  IT GE
1A6914:  MOVGE           R4, R0
1A6916:  MUL.W           R0, R4, R5
1A691A:  BLX             sub_220A40
1A691E:  LDR.W           R1, [R7,#var_40]
1A6922:  MOV             R6, R0
1A6924:  LDR             R0, [R1]
1A6926:  STR.W           R6, [R7,#var_80]
1A692A:  CMP             R0, #2
1A692C:  BNE             loc_1A6A18
1A692E:  LDR             R0, [R1,#4]
1A6930:  CMP             R0, #1
1A6932:  BEQ.W           loc_1A6B36
1A6936:  CMP             R0, #2
1A6938:  BNE             loc_1A6A18
1A693A:  LDR.W           R0, [R7,#var_60]
1A693E:  CMP             R6, #1
1A6940:  LDR             R0, [R0]
1A6942:  BLT             loc_1A695A
1A6944:  LDR.W           R1, [R7,#var_84]
1A6948:  MOV             R2, R6
1A694A:  LDR.W           R3, [R7,#var_AC]
1A694E:  LDRH.W          R5, [R1],#4
1A6952:  SUBS            R2, #1
1A6954:  STRH.W          R5, [R3],#2
1A6958:  BNE             loc_1A694E
1A695A:  CMP             R0, #0
1A695C:  ITTT EQ
1A695E:  LDREQ.W         R0, [R7,#var_E4]
1A6962:  LDREQ           R0, [R0]
1A6964:  CMPEQ           R0, #1
1A6966:  BNE             loc_1A697C
1A6968:  LDR.W           R0, [R7,#dest]; dest
1A696C:  MOV.W           R2, #0x12C; n
1A6970:  LDR.W           R1, [R7,#src]; src
1A6974:  BLX             j_memcpy
1A6978:  LDR.W           R6, [R7,#var_80]
1A697C:  LDR.W           R0, [R7,#var_A0]
1A6980:  MOV             R3, R6
1A6982:  LDR.W           R2, [R7,#var_AC]; src
1A6986:  ADD.W           R0, R0, R10,LSL#1
1A698A:  ADDS            R1, R0, #4; int
1A698C:  LDR.W           R0, [R7,#src]; int
1A6990:  BLX             j_silk_resampler
1A6994:  LDR.W           R2, [R7,#var_98]
1A6998:  SUB.W           LR, R7, #-var_100
1A699C:  LDR.W           R3, [R7,#var_80]
1A69A0:  ADD.W           R10, R0, R11
1A69A4:  LDR             R1, [R2]
1A69A6:  ADD             R1, R4
1A69A8:  STR             R1, [R2]
1A69AA:  LDR.W           R1, [LR,#-4]
1A69AE:  SUB.W           LR, R7, #-var_100
1A69B2:  LDR.W           R2, [LR]
1A69B6:  SUB.W           LR, R7, #-var_100
1A69BA:  LDR             R1, [R1]
1A69BC:  MUL.W           R4, R1, R2
1A69C0:  LDR.W           R1, [R7,#var_E0]
1A69C4:  LDR.W           R2, [LR,#-8]
1A69C8:  LDR             R1, [R1]
1A69CA:  LDR             R2, [R2]
1A69CC:  SUBS            R2, R2, R1
1A69CE:  CMP             R2, R4
1A69D0:  IT LT
1A69D2:  MOVLT           R4, R2
1A69D4:  CMP             R3, #1
1A69D6:  BLT             loc_1A69F0
1A69D8:  LDR.W           R0, [R7,#var_84]
1A69DC:  MOV             R2, R3
1A69DE:  LDR.W           R5, [R7,#var_AC]
1A69E2:  ADDS            R0, #2
1A69E4:  LDRH.W          R6, [R0],#4
1A69E8:  SUBS            R2, #1
1A69EA:  STRH.W          R6, [R5],#2
1A69EE:  BNE             loc_1A69E4
1A69F0:  LDR.W           R0, [R7,#var_F8]
1A69F4:  LDR.W           R2, [R7,#var_AC]; src
1A69F8:  ADD.W           R0, R0, R1,LSL#1
1A69FC:  ADDS            R1, R0, #4; int
1A69FE:  LDR.W           R0, [R7,#dest]; int
1A6A02:  BLX             j_silk_resampler
1A6A06:  ADD.W           R6, R10, R0
1A6A0A:  LDR.W           R0, [R7,#var_E0]
1A6A0E:  LDR.W           LR, [R7,#var_40]
1A6A12:  LDR.W           R3, [R7,#var_98]
1A6A16:  B               loc_1A6A4C
1A6A18:  LDR.W           R5, [R7,#var_AC]
1A6A1C:  LSLS            R2, R6, #1; n
1A6A1E:  LDR.W           R1, [R7,#var_84]; src
1A6A22:  MOV             R0, R5; dest
1A6A24:  BLX             j_memcpy
1A6A28:  LDR.W           R0, [R7,#var_A0]
1A6A2C:  MOV             R2, R5; src
1A6A2E:  MOV             R3, R6
1A6A30:  ADD.W           R0, R0, R10,LSL#1
1A6A34:  ADDS            R1, R0, #4; int
1A6A36:  LDR.W           R0, [R7,#src]; int
1A6A3A:  BLX             j_silk_resampler
1A6A3E:  MOV             R6, R11
1A6A40:  LDR.W           LR, [R7,#var_40]
1A6A44:  LDR.W           R3, [R7,#var_98]
1A6A48:  ADD             R6, R0
1A6A4A:  MOV             R0, R3
1A6A4C:  LDR             R1, [R0]
1A6A4E:  MOVS            R2, #0
1A6A50:  ADD             R1, R4
1A6A52:  STR             R1, [R0]
1A6A54:  LDR.W           R0, [R7,#var_90]
1A6A58:  LDR.W           R5, [LR]
1A6A5C:  STR             R2, [R0]
1A6A5E:  LDR.W           R0, [R7,#var_88]
1A6A62:  LDR             R1, [R3]
1A6A64:  LDR             R0, [R0]
1A6A66:  CMP             R1, R0
1A6A68:  BLT.W           loc_1A72F6
1A6A6C:  STRD.W          R5, R6, [R7,#var_A8]
1A6A70:  LDR.W           R0, [R7,#var_60]
1A6A74:  LDR             R6, [R7,#arg_8]
1A6A76:  LDR             R0, [R0]
1A6A78:  ORRS            R0, R6
1A6A7A:  BNE.W           loc_1A6E1A
1A6A7E:  LDR.W           R0, [R7,#var_68]
1A6A82:  SUB.W           R2, R7, #-var_3A
1A6A86:  STRH.W          R9, [R7,#var_3A]
1A6A8A:  MOVS            R3, #8
1A6A8C:  LDR.W           R1, [LR,#4]
1A6A90:  LDR             R0, [R0]
1A6A92:  ADDS            R0, #1
1A6A94:  MULS            R0, R1
1A6A96:  MOV.W           R1, #0x100
1A6A9A:  LSR.W           R0, R1, R0
1A6A9E:  MOVS            R1, #0
1A6AA0:  NEGS            R0, R0
1A6AA2:  STRB.W          R0, [R7,#var_3A]
1A6AA6:  LDR             R0, [R7,#arg_0]
1A6AA8:  BLX             j_ec_enc_icdf
1A6AAC:  LDR.W           LR, [R7,#var_40]
1A6AB0:  LDR.W           R0, [LR,#4]
1A6AB4:  CMP             R0, #1
1A6AB6:  BLT.W           loc_1A6C18
1A6ABA:  LDR.W           R5, [R7,#var_DC]
1A6ABE:  MOVS            R4, #0
1A6AC0:  MOVW            R9, #0x1670
1A6AC4:  MOVW            R1, #0x21B8
1A6AC8:  MLA.W           R12, R4, R1, R8
1A6ACC:  LDR.W           R1, [R12,R9]
1A6AD0:  CMP             R1, #1
1A6AD2:  BLT             loc_1A6B1E
1A6AD4:  MOVS            R6, #0
1A6AD6:  MOVS            R3, #0
1A6AD8:  LDR.W           R2, [R5,R6,LSL#2]
1A6ADC:  LSLS            R2, R6
1A6ADE:  ADDS            R6, #1
1A6AE0:  ORRS            R3, R2
1A6AE2:  CMP             R6, R1
1A6AE4:  BLT             loc_1A6AD8
1A6AE6:  CMP             R3, #0
1A6AE8:  MOV.W           R2, #0
1A6AEC:  IT GT
1A6AEE:  MOVGT           R2, #1
1A6AF0:  MOVW            R6, #0x1273
1A6AF4:  STRB.W          R2, [R12,R6]
1A6AF8:  BEQ             loc_1A6B28
1A6AFA:  CMP             R1, #2
1A6AFC:  BLT             loc_1A6B28
1A6AFE:  LDR.W           R0, [R7,#var_94]
1A6B02:  ADD.W           R0, R0, R1,LSL#2
1A6B06:  SUBS            R1, R3, #1
1A6B08:  MOVS            R3, #8
1A6B0A:  LDR.W           R2, [R0,#-8]
1A6B0E:  LDR             R0, [R7,#arg_0]
1A6B10:  BLX             j_ec_enc_icdf
1A6B14:  LDR.W           LR, [R7,#var_40]
1A6B18:  LDR.W           R0, [LR,#4]
1A6B1C:  B               loc_1A6B28
1A6B1E:  MOVS            R1, #0
1A6B20:  MOVW            R2, #0x1273
1A6B24:  STRB.W          R1, [R12,R2]
1A6B28:  MOVW            R3, #0x21B8
1A6B2C:  ADDS            R4, #1
1A6B2E:  ADD             R5, R3
1A6B30:  CMP             R4, R0
1A6B32:  BLT             loc_1A6AC4
1A6B34:  B               loc_1A6C1C
1A6B36:  CMP             R6, #1
1A6B38:  BLT             loc_1A6B64
1A6B3A:  LDR.W           R0, [R7,#var_84]
1A6B3E:  MOV             R1, R6
1A6B40:  LDR.W           R2, [R7,#var_AC]
1A6B44:  ADDS            R0, #2
1A6B46:  LDRSH.W         R3, [R0,#-2]
1A6B4A:  SUBS            R1, #1
1A6B4C:  LDRSH.W         R5, [R0]
1A6B50:  ADD.W           R0, R0, #4
1A6B54:  ADD             R3, R5
1A6B56:  AND.W           R5, R3, #1
1A6B5A:  ADD.W           R3, R5, R3,LSR#1
1A6B5E:  STRH.W          R3, [R2],#2
1A6B62:  BNE             loc_1A6B46
1A6B64:  LDR.W           R0, [R7,#var_A0]
1A6B68:  MOV             R3, R6
1A6B6A:  LDR.W           R2, [R7,#var_AC]; src
1A6B6E:  ADD.W           R0, R0, R10,LSL#1
1A6B72:  ADDS            R1, R0, #4; int
1A6B74:  LDR.W           R0, [R7,#src]; int
1A6B78:  BLX             j_silk_resampler
1A6B7C:  MOV             R6, R11
1A6B7E:  ADD             R6, R0
1A6B80:  LDR.W           R0, [R7,#var_E4]
1A6B84:  LDR             R0, [R0]
1A6B86:  CMP             R0, #2
1A6B88:  BNE.W           loc_1A68BA
1A6B8C:  LDR.W           R0, [R7,#var_60]
1A6B90:  LDR.W           LR, [R7,#var_40]
1A6B94:  LDR.W           R3, [R7,#var_98]
1A6B98:  LDR             R0, [R0]
1A6B9A:  CMP             R0, #0
1A6B9C:  LDR.W           R0, [R7,#var_E0]
1A6BA0:  BNE.W           loc_1A6A4A
1A6BA4:  LDR             R0, [R0]
1A6BA6:  LDR.W           R10, [R7,#var_F8]
1A6BAA:  LDR.W           R2, [R7,#var_AC]; src
1A6BAE:  ADD.W           R0, R10, R0,LSL#1
1A6BB2:  LDR.W           R3, [R7,#var_80]
1A6BB6:  ADDS            R1, R0, #4; int
1A6BB8:  LDR.W           R0, [R7,#dest]; int
1A6BBC:  BLX             j_silk_resampler
1A6BC0:  ADD             R6, R0
1A6BC2:  LDR.W           R0, [R7,#var_88]
1A6BC6:  LDR             R0, [R0]
1A6BC8:  CMP             R0, #1
1A6BCA:  BLT.W           loc_1A68BA
1A6BCE:  LDR.W           R5, [R7,#var_E0]
1A6BD2:  MOVS            R0, #2
1A6BD4:  LDR.W           LR, [R7,#var_40]
1A6BD8:  LDR.W           R11, [R7,#var_98]
1A6BDC:  MOV             R12, R5
1A6BDE:  LDR.W           R5, [R7,#var_A0]
1A6BE2:  LDR.W           R9, [R7,#var_88]
1A6BE6:  LDR.W           R1, [R12]
1A6BEA:  LDR.W           R2, [R11]
1A6BEE:  ADD             R1, R0
1A6BF0:  ADD             R2, R0
1A6BF2:  LDRSH.W         R1, [R10,R1,LSL#1]
1A6BF6:  LDRSH.W         R3, [R5,R2,LSL#1]
1A6BFA:  ADD             R1, R3
1A6BFC:  LSRS            R1, R1, #1
1A6BFE:  STRH.W          R1, [R5,R2,LSL#1]
1A6C02:  SUBS            R1, R0, #1
1A6C04:  ADDS            R0, #1
1A6C06:  LDR.W           R2, [R9]
1A6C0A:  CMP             R1, R2
1A6C0C:  BLT             loc_1A6BE6
1A6C0E:  MOV             R0, R11
1A6C10:  MOV             R3, R11
1A6C12:  MOV.W           R9, #0
1A6C16:  B               loc_1A6A4C
1A6C18:  MOVW            R3, #0x21B8
1A6C1C:  LDR.W           R1, [R7,#var_68]
1A6C20:  LDR             R1, [R1]
1A6C22:  CMP             R1, #1
1A6C24:  BLT.W           loc_1A6DDE
1A6C28:  MOVW            R5, #0xF9F0
1A6C2C:  MOVS            R1, #0
1A6C2E:  STR.W           R1, [R7,#var_44]
1A6C32:  MOVS            R1, #0
1A6C34:  MOVW            R9, #0x1274
1A6C38:  MOV.W           R8, #0
1A6C3C:  MOVT            R5, #0xFFFF
1A6C40:  STR.W           R1, [R7,#var_48]
1A6C44:  CMP             R0, #1
1A6C46:  BLT.W           loc_1A6DB4
1A6C4A:  ADD.W           R1, R8, R8,LSL#1
1A6C4E:  LDR.W           R2, [R7,#var_6C]
1A6C52:  CMP.W           R8, #0
1A6C56:  ADD.W           R1, R2, R1,LSL#1
1A6C5A:  STR.W           R1, [R7,#var_4C]
1A6C5E:  BLE             loc_1A6D16
1A6C60:  LDR.W           R10, [R7,#var_78]
1A6C64:  MOV.W           R11, #0
1A6C68:  ADD.W           R4, R10, R9
1A6C6C:  LDR.W           R1, [R4,R5,LSL#2]
1A6C70:  CMP             R1, #0
1A6C72:  BEQ             loc_1A6D0A
1A6C74:  CMP.W           R11, #0
1A6C78:  ADD.W           R5, R10, R5,LSL#2
1A6C7C:  IT EQ
1A6C7E:  CMPEQ           R0, #2
1A6C80:  BNE             loc_1A6CA4
1A6C82:  LDR             R0, [R7,#arg_0]
1A6C84:  LDR.W           R1, [R7,#var_4C]
1A6C88:  BLX             j_silk_stereo_encode_pred
1A6C8C:  LDR.W           R0, [R7,#var_50]
1A6C90:  LDR.W           R0, [R0,R8,LSL#2]
1A6C94:  CBNZ            R0, loc_1A6CA4
1A6C96:  LDR.W           R0, [R7,#var_5C]
1A6C9A:  LDRSB.W         R1, [R0,R8]
1A6C9E:  LDR             R0, [R7,#arg_0]
1A6CA0:  BLX             j_silk_stereo_encode_mid_only
1A6CA4:  MOV             R0, #0xFFFFE7BC
1A6CAC:  LDR             R0, [R4,R0]
1A6CAE:  CMP             R0, #0
1A6CB0:  IT NE
1A6CB2:  MOVNE           R0, #2
1A6CB4:  SUB             SP, SP, #8
1A6CB6:  LDR             R4, [R7,#arg_0]
1A6CB8:  MOV             R2, R8
1A6CBA:  STR             R0, [SP,#0x140+var_140]
1A6CBC:  MOV             R0, R5
1A6CBE:  MOVS            R3, #1
1A6CC0:  MOV             R1, R4
1A6CC2:  BLX             j_silk_encode_indices
1A6CC6:  ADD             SP, SP, #8
1A6CC8:  MOVW            R0, #0xFE6A
1A6CCC:  LDR.W           R1, [R7,#var_48]
1A6CD0:  MOVT            R0, #0xFFFF
1A6CD4:  LDR.W           R0, [R10,R0,LSL#2]
1A6CD8:  ADD             R1, R10
1A6CDA:  LDRSB.W         R2, [R1,#-0x4E]
1A6CDE:  LDRSB.W         R1, [R1,#-0x4F]
1A6CE2:  SUB             SP, SP, #8
1A6CE4:  STR             R0, [SP,#0x140+var_140]
1A6CE6:  LDR.W           R0, [R7,#var_44]
1A6CEA:  ADD.W           R3, R10, R0
1A6CEE:  MOV             R0, R4
1A6CF0:  BLX             j_silk_encode_pulses
1A6CF4:  ADD             SP, SP, #8
1A6CF6:  LDR.W           LR, [R7,#var_40]
1A6CFA:  MOVW            R5, #0xF9F0
1A6CFE:  MOVW            R3, #0x21B8
1A6D02:  MOVT            R5, #0xFFFF
1A6D06:  LDR.W           R0, [LR,#4]
1A6D0A:  ADD.W           R11, R11, #1
1A6D0E:  ADD             R10, R3
1A6D10:  CMP             R11, R0
1A6D12:  BLT             loc_1A6C68
1A6D14:  B               loc_1A6DB4
1A6D16:  LDR.W           R4, [R7,#var_78]
1A6D1A:  MOVS            R6, #0
1A6D1C:  ADD.W           R1, R9, R4
1A6D20:  LDR.W           R1, [R1,R5,LSL#2]
1A6D24:  CMP             R1, #0
1A6D26:  BEQ             loc_1A6DAC
1A6D28:  CMP             R6, #0
1A6D2A:  ADD.W           R5, R4, R5,LSL#2
1A6D2E:  IT EQ
1A6D30:  CMPEQ           R0, #2
1A6D32:  BNE             loc_1A6D56
1A6D34:  LDR             R0, [R7,#arg_0]
1A6D36:  LDR.W           R1, [R7,#var_4C]
1A6D3A:  BLX             j_silk_stereo_encode_pred
1A6D3E:  LDR.W           R0, [R7,#var_50]
1A6D42:  LDR.W           R0, [R0,R8,LSL#2]
1A6D46:  CBNZ            R0, loc_1A6D56
1A6D48:  LDR.W           R0, [R7,#var_5C]
1A6D4C:  LDRSB.W         R1, [R0,R8]
1A6D50:  LDR             R0, [R7,#arg_0]
1A6D52:  BLX             j_silk_stereo_encode_mid_only
1A6D56:  SUB             SP, SP, #8
1A6D58:  MOVS            R0, #0
1A6D5A:  MOV             R2, R8
1A6D5C:  STR             R0, [SP,#0x140+var_140]
1A6D5E:  MOV             R0, R5
1A6D60:  LDR             R5, [R7,#arg_0]
1A6D62:  MOVS            R3, #1
1A6D64:  MOV             R1, R5
1A6D66:  BLX             j_silk_encode_indices
1A6D6A:  ADD             SP, SP, #8
1A6D6C:  MOVW            R0, #0xFE6A
1A6D70:  LDR.W           R1, [R7,#var_48]
1A6D74:  MOVT            R0, #0xFFFF
1A6D78:  LDR.W           R0, [R4,R0,LSL#2]
1A6D7C:  ADD             R1, R4
1A6D7E:  LDRSB.W         R2, [R1,#-0x4E]
1A6D82:  LDRSB.W         R1, [R1,#-0x4F]
1A6D86:  SUB             SP, SP, #8
1A6D88:  STR             R0, [SP,#0x140+var_140]
1A6D8A:  LDR.W           R0, [R7,#var_44]
1A6D8E:  ADDS            R3, R4, R0
1A6D90:  MOV             R0, R5
1A6D92:  BLX             j_silk_encode_pulses
1A6D96:  ADD             SP, SP, #8
1A6D98:  LDR.W           LR, [R7,#var_40]
1A6D9C:  MOVW            R5, #0xF9F0
1A6DA0:  MOVW            R3, #0x21B8
1A6DA4:  MOVT            R5, #0xFFFF
1A6DA8:  LDR.W           R0, [LR,#4]
1A6DAC:  ADDS            R6, #1
1A6DAE:  ADD             R4, R3
1A6DB0:  CMP             R6, R0
1A6DB2:  BLT             loc_1A6D1C
1A6DB4:  LDR.W           R1, [R7,#var_44]
1A6DB8:  ADD.W           R9, R9, #4
1A6DBC:  ADD.W           R8, R8, #1
1A6DC0:  ADD.W           R1, R1, #0x140
1A6DC4:  STR.W           R1, [R7,#var_44]
1A6DC8:  LDR.W           R1, [R7,#var_48]
1A6DCC:  ADDS            R1, #0x24 ; '$'
1A6DCE:  STR.W           R1, [R7,#var_48]
1A6DD2:  LDR.W           R1, [R7,#var_68]
1A6DD6:  LDR             R1, [R1]
1A6DD8:  CMP             R8, R1
1A6DDA:  BLT.W           loc_1A6C44
1A6DDE:  LDR.W           R8, [R7,#var_7C]
1A6DE2:  CMP             R0, #1
1A6DE4:  MOV.W           R6, #0
1A6DE8:  BLT             loc_1A6E02
1A6DEA:  LDR.W           R1, [R7,#var_DC]
1A6DEE:  MOVS            R0, #0
1A6DF0:  STRD.W          R6, R6, [R1]
1A6DF4:  ADDS            R0, #1
1A6DF6:  STR             R6, [R1,#8]
1A6DF8:  ADD             R1, R3
1A6DFA:  LDR.W           R2, [LR,#4]
1A6DFE:  CMP             R0, R2
1A6E00:  BLT             loc_1A6DF0
1A6E02:  LDR             R0, [R7,#arg_0]
1A6E04:  LDR             R6, [R7,#arg_8]
1A6E06:  MOV             R1, R0
1A6E08:  LDR             R0, [R1,#0x14]
1A6E0A:  LDR             R1, [R1,#0x1C]
1A6E0C:  CLZ.W           R1, R1
1A6E10:  ADD             R0, R1
1A6E12:  LDR.W           R1, [R7,#var_BC]
1A6E16:  SUBS            R0, #0x20 ; ' '
1A6E18:  STR             R0, [R1]
1A6E1A:  MOV             R0, R8
1A6E1C:  MOV.W           R10, #0
1A6E20:  MOV             R4, LR
1A6E22:  BLX             j_silk_HP_variable_cutoff
1A6E26:  LDRD.W          R5, R4, [R4,#0x18]
1A6E2A:  MOV             R1, #0x10624DD3
1A6E32:  CMP             R6, #0
1A6E34:  MOV             R9, R6
1A6E36:  MUL.W           R0, R5, R4
1A6E3A:  SMMUL.W         R0, R0, R1
1A6E3E:  MOV.W           R1, R0,ASR#6
1A6E42:  ADD.W           R0, R1, R0,LSR#31
1A6E46:  ITTT EQ
1A6E48:  LDREQ.W         R1, [R7,#var_BC]
1A6E4C:  LDREQ           R1, [R1]
1A6E4E:  SUBEQ           R0, R0, R1
1A6E50:  LDR.W           R1, [R7,#var_68]
1A6E54:  LDR             R1, [R1]
1A6E56:  BLX             sub_220A40
1A6E5A:  CMP             R5, #0xA
1A6E5C:  MOV.W           R1, #0x32 ; '2'
1A6E60:  IT EQ
1A6E62:  MOVEQ           R1, #0x64 ; 'd'
1A6E64:  SXTH            R2, R0
1A6E66:  SMULBB.W        R1, R1, R2
1A6E6A:  LDR.W           R2, [R7,#var_B0]
1A6E6E:  LDR.W           R6, [R7,#var_54]
1A6E72:  CMP.W           R9, #0
1A6E76:  LDR             R2, [R2]
1A6E78:  SUB.W           R1, R1, R2,LSL#1
1A6E7C:  BEQ             loc_1A6E88
1A6E7E:  LDR.W           R5, [R7,#var_A0]
1A6E82:  LDR.W           R12, [R7,#var_88]
1A6E86:  B               loc_1A6EC2
1A6E88:  LDR.W           R2, [R7,#var_60]
1A6E8C:  LDR.W           R5, [R7,#var_A0]
1A6E90:  LDR.W           R12, [R7,#var_88]
1A6E94:  LDR             R2, [R2]
1A6E96:  CMP             R2, #1
1A6E98:  BLT             loc_1A6EC2
1A6E9A:  MOV             R3, #0xFFFFFFE0
1A6E9E:  LDR.W           R6, [R7,#var_BC]
1A6EA2:  MLS.W           R0, R2, R0, R3
1A6EA6:  LDR             R2, [R7,#arg_0]
1A6EA8:  LDR             R6, [R6]
1A6EAA:  MOV             R3, R2
1A6EAC:  LDR             R2, [R3,#0x14]
1A6EAE:  LDR             R3, [R3,#0x1C]
1A6EB0:  ADD             R0, R2
1A6EB2:  CLZ.W           R2, R3
1A6EB6:  ADD             R0, R2
1A6EB8:  SUBS            R0, R0, R6
1A6EBA:  LDR.W           R6, [R7,#var_54]
1A6EBE:  SUB.W           R1, R1, R0,LSL#1
1A6EC2:  LDR.W           R2, [R7,#var_40]
1A6EC6:  MOVW            R0, #0x1389
1A6ECA:  CMP             R4, R0
1A6ECC:  BLT             loc_1A6EE0
1A6ECE:  CMP             R1, R4
1A6ED0:  MOV             R8, R4
1A6ED2:  BGT             loc_1A6EF0
1A6ED4:  MOVW            R0, #0x1388
1A6ED8:  CMP             R1, R0
1A6EDA:  IT LE
1A6EDC:  MOVLE           R1, R0
1A6EDE:  B               loc_1A6EEE
1A6EE0:  MOVW            R8, #0x1388
1A6EE4:  CMP             R1, R8
1A6EE6:  BGT             loc_1A6EF0
1A6EE8:  CMP             R1, R4
1A6EEA:  IT LT
1A6EEC:  MOVLT           R1, R4
1A6EEE:  MOV             R8, R1
1A6EF0:  LDR             R0, [R2,#4]
1A6EF2:  CMP             R0, #2
1A6EF4:  BNE             loc_1A6F52
1A6EF6:  LDR.W           R0, [R7,#var_60]
1A6EFA:  LDR.W           R1, [R7,#var_C4]
1A6EFE:  LDR.W           R3, [R7,#var_9C]
1A6F02:  MOV             R4, R0
1A6F04:  LDR             R2, [R2,#0x3C]
1A6F06:  LDR             R0, [R4]
1A6F08:  LDR             R1, [R1]
1A6F0A:  LDR             R3, [R3]
1A6F0C:  LDR.W           R12, [R12]
1A6F10:  SUB             SP, SP, #0x20 ; ' '
1A6F12:  LDR.W           R6, [R7,#var_5C]
1A6F16:  ADD.W           LR, SP, #0x158+var_14C
1A6F1A:  ADDS            R5, R6, R0
1A6F1C:  STR             R5, [SP,#0x158+var_158]
1A6F1E:  SUB.W           R5, R7, #-var_38
1A6F22:  STRD.W          R5, R8, [SP,#0x158+var_154]
1A6F26:  STM.W           LR, {R1-R3,R12}
1A6F2A:  ADD.W           R0, R0, R0,LSL#1
1A6F2E:  SUB.W           R2, R7, #-var_D8
1A6F32:  LDR.W           R1, [R7,#var_6C]
1A6F36:  ADD.W           R3, R1, R0,LSL#1
1A6F3A:  LDM             R2, {R0-R2}
1A6F3C:  BLX             j_silk_stereo_LR_to_MS
1A6F40:  ADD             SP, SP, #0x20 ; ' '
1A6F42:  LDR             R0, [R4]
1A6F44:  LDRB            R1, [R6,R0]
1A6F46:  CBZ             R1, loc_1A6F68
1A6F48:  LDR.W           R1, [R7,#var_CC]
1A6F4C:  STRB.W          R10, [R1,R0]
1A6F50:  B               loc_1A6FEA
1A6F52:  LDR.W           R0, [R7,#var_C8]
1A6F56:  MOV             R1, R0
1A6F58:  LDR             R0, [R1]
1A6F5A:  STR             R0, [R5]
1A6F5C:  LDR.W           R0, [R12]
1A6F60:  LDR.W           R0, [R5,R0,LSL#1]
1A6F64:  STR             R0, [R1]
1A6F66:  B               loc_1A7024
1A6F68:  LDR.W           R0, [R7,#var_70]
1A6F6C:  LDR             R0, [R0]
1A6F6E:  CMP             R0, #1
1A6F70:  BNE             loc_1A6FE0
1A6F72:  SUB.W           R6, R7, #-var_100
1A6F76:  MOVS            R5, #0
1A6F78:  MOV.W           R1, #0x1120; n
1A6F7C:  LDR.W           R0, [R6,#-0x2C]
1A6F80:  SUB.W           R6, R7, #-var_100
1A6F84:  MOV             R4, R0
1A6F86:  STRD.W          R5, R5, [R4]
1A6F8A:  STRD.W          R5, R5, [R4,#8]
1A6F8E:  LDR.W           R0, [R6,#-0x24]
1A6F92:  SUB.W           R6, R7, #-var_100
1A6F96:  STRD.W          R5, R5, [R0]
1A6F9A:  LDR.W           R0, [R6,#-0x28]; int
1A6F9E:  BLX             sub_22178C
1A6FA2:  SUB.W           LR, R7, #-var_100
1A6FA6:  MOVS            R1, #0x64 ; 'd'
1A6FA8:  LDR.W           R0, [LR,#-0x20]
1A6FAC:  SUB.W           LR, R7, #-var_100
1A6FB0:  STR             R1, [R0]
1A6FB2:  LDR.W           R0, [LR,#-0x1C]
1A6FB6:  SUB.W           LR, R7, #-var_100
1A6FBA:  STR             R1, [R0]
1A6FBC:  MOVS            R0, #0xA
1A6FBE:  STRB            R0, [R4]
1A6FC0:  MOV.W           R1, #0x10000
1A6FC4:  LDR.W           R0, [LR,#-0x18]
1A6FC8:  SUB.W           LR, R7, #-var_100
1A6FCC:  STRB            R5, [R0]
1A6FCE:  LDR.W           R0, [LR,#-0x14]
1A6FD2:  SUB.W           LR, R7, #-var_100
1A6FD6:  STR             R1, [R0]
1A6FD8:  MOVS            R1, #1
1A6FDA:  LDR.W           R0, [LR,#-0x10]
1A6FDE:  STR             R1, [R0]
1A6FE0:  LDR.W           R0, [R7,#var_E8]
1A6FE4:  LDR             R1, [R7,#arg_C]
1A6FE6:  BLX             j_silk_encode_do_VAD_FIX
1A6FEA:  LDR.W           R6, [R7,#var_54]
1A6FEE:  CMP.W           R9, #0
1A6FF2:  BNE             loc_1A7024
1A6FF4:  LDR.W           R0, [R7,#var_60]
1A6FF8:  LDR.W           R1, [R7,#var_6C]
1A6FFC:  MOV             R4, R0
1A6FFE:  LDR             R0, [R4]
1A7000:  ADD.W           R0, R0, R0,LSL#1
1A7004:  ADD.W           R1, R1, R0,LSL#1
1A7008:  LDR             R0, [R7,#arg_0]
1A700A:  BLX             j_silk_stereo_encode_pred
1A700E:  LDR             R0, [R4]
1A7010:  LDR.W           R1, [R7,#var_CC]
1A7014:  LDRB            R1, [R1,R0]
1A7016:  CBNZ            R1, loc_1A7024
1A7018:  LDR.W           R1, [R7,#var_5C]
1A701C:  LDRSB           R1, [R1,R0]
1A701E:  LDR             R0, [R7,#arg_0]
1A7020:  BLX             j_silk_stereo_encode_mid_only
1A7024:  LDR.W           R0, [R7,#var_7C]
1A7028:  LDR             R1, [R7,#arg_C]
1A702A:  BLX             j_silk_encode_do_VAD_FIX
1A702E:  LDR.W           LR, [R7,#var_40]
1A7032:  LDR.W           R9, [LR,#4]
1A7036:  CMP.W           R9, #1
1A703A:  BLT.W           loc_1A716E
1A703E:  LDR.W           R0, [R7,#var_64]
1A7042:  LDR.W           R12, [R7,#var_A4]
1A7046:  CMP             R0, #2
1A7048:  IT EQ
1A704A:  CMPEQ           R6, #0
1A704C:  BEQ.W           loc_1A7174
1A7050:  LDR.W           R5, [R7,#var_7C]
1A7054:  MOVS            R4, #0
1A7056:  LDR.W           R0, [LR,#0x38]
1A705A:  LDR.W           R1, [R7,#var_64]
1A705E:  CMP             R1, #3
1A7060:  MOV             R10, R0
1A7062:  BNE             loc_1A7090
1A7064:  CBZ             R6, loc_1A707C
1A7066:  CMP             R6, #1
1A7068:  MOV             R10, R0
1A706A:  ITTTT EQ
1A706C:  ADDEQ.W         R1, R0, R0,LSL#1
1A7070:  ASREQ           R2, R1, #0x1F
1A7072:  ADDEQ.W         R1, R1, R2,LSR#30
1A7076:  MOVEQ.W         R10, R1,ASR#2
1A707A:  B               loc_1A7090
1A707C:  MOVW            R2, #0x6667
1A7080:  LSLS            R1, R0, #1
1A7082:  MOVT            R2, #0x6666
1A7086:  SMMUL.W         R1, R1, R2
1A708A:  ASRS            R2, R1, #1
1A708C:  ADD.W           R10, R2, R1,LSR#31
1A7090:  LDR.W           R2, [R7,#var_58]
1A7094:  LDR.W           R1, [LR,#0x34]
1A7098:  CMP             R6, R2
1A709A:  MOV.W           R2, #0
1A709E:  IT EQ
1A70A0:  MOVEQ           R2, #1
1A70A2:  CMP             R1, #0
1A70A4:  IT NE
1A70A6:  MOVNE           R1, #1
1A70A8:  CMP.W           R9, #1
1A70AC:  AND.W           R11, R2, R1
1A70B0:  BNE             loc_1A70BA
1A70B2:  MOV             R6, R8
1A70B4:  CMP             R6, #1
1A70B6:  BGE             loc_1A70EA
1A70B8:  B               loc_1A7134
1A70BA:  SUB.W           R1, R7, #-var_38
1A70BE:  CMP             R4, #0
1A70C0:  LDR.W           R6, [R1,R4,LSL#2]
1A70C4:  BNE             loc_1A70E6
1A70C6:  LDR.W           R1, [R7,#var_34]
1A70CA:  CMP             R1, #1
1A70CC:  BLT             loc_1A70E6
1A70CE:  LDR.W           R1, [R7,#var_74]
1A70D2:  MOV             R11, R12
1A70D4:  BLX             sub_220A40
1A70D8:  LDR.W           LR, [R7,#var_40]
1A70DC:  SUB.W           R10, R10, R0
1A70E0:  MOV             R12, R11
1A70E2:  MOV.W           R11, #0
1A70E6:  CMP             R6, #1
1A70E8:  BLT             loc_1A7134
1A70EA:  MOV             R0, R5
1A70EC:  MOV             R1, R6
1A70EE:  BLX             j_silk_control_SNR
1A70F2:  LDR.W           R0, [R7,#var_60]
1A70F6:  LDR             R0, [R0]
1A70F8:  CMP             R0, R4
1A70FA:  BLE             loc_1A710C
1A70FC:  CMP             R4, #1
1A70FE:  BLT             loc_1A7118
1A7100:  LDR.W           R0, [R7,#var_70]
1A7104:  LDR             R0, [R0]
1A7106:  CBZ             R0, loc_1A7118
1A7108:  MOVS            R3, #1
1A710A:  B               loc_1A711A
1A710C:  MOVS            R3, #0
1A710E:  B               loc_1A711A
1A7110:  DCD __stack_chk_guard_ptr - 0x1A622A
1A7114:  DCD __stack_chk_guard_ptr - 0x1A6266
1A7118:  MOVS            R3, #2
1A711A:  STRD.W          R10, R11, [SP,#0x138+var_140]!
1A711E:  LDRD.W          R2, R1, [R7,#arg_0]
1A7122:  MOV             R0, R5
1A7124:  BLX             j_silk_encode_frame_FIX
1A7128:  ADD             SP, SP, #8
1A712A:  LDR.W           LR, [R7,#var_40]
1A712E:  MOV             R12, R0
1A7130:  LDR.W           R9, [LR,#4]
1A7134:  MOVW            R2, #0xFE6A
1A7138:  MOVW            R1, #0x166C
1A713C:  ADDS            R0, R5, R1
1A713E:  MOVT            R2, #0xFFFF
1A7142:  ADD.W           R0, R0, R2,LSL#2
1A7146:  MOVS            R2, #0
1A7148:  MOVW            R3, #0x1674
1A714C:  ADDS            R4, #1
1A714E:  STR.W           R2, [R0,#0x228]
1A7152:  CMP             R4, R9
1A7154:  LDR             R0, [R5,R3]
1A7156:  STR             R2, [R5,R1]
1A7158:  ADD.W           R0, R0, #1
1A715C:  STR             R0, [R5,R3]
1A715E:  MOVW            R0, #0x21B8
1A7162:  ADD             R5, R0
1A7164:  LDR.W           R6, [R7,#var_54]
1A7168:  BLT.W           loc_1A7056
1A716C:  B               loc_1A7266
1A716E:  LDR.W           R12, [R7,#var_A4]
1A7172:  B               loc_1A7266
1A7174:  LDR.W           R5, [R7,#var_7C]
1A7178:  MOVS            R4, #0
1A717A:  LDRD.W          R1, R0, [LR,#0x34]
1A717E:  MOVW            R3, #0x6667
1A7182:  ADD.W           R2, R0, R0,LSL#1
1A7186:  MOVT            R3, #0x6666
1A718A:  SMMUL.W         R2, R2, R3
1A718E:  LDR.W           R3, [R7,#var_58]
1A7192:  CMP             R6, R3
1A7194:  MOV.W           R3, #0
1A7198:  IT EQ
1A719A:  MOVEQ           R3, #1
1A719C:  CMP             R1, #0
1A719E:  IT NE
1A71A0:  MOVNE           R1, #1
1A71A2:  CMP.W           R9, #1
1A71A6:  AND.W           R11, R3, R1
1A71AA:  MOV.W           R1, R2,ASR#1
1A71AE:  ADD.W           R10, R1, R2,LSR#31
1A71B2:  BNE             loc_1A71BC
1A71B4:  MOV             R6, R8
1A71B6:  CMP             R6, #1
1A71B8:  BGE             loc_1A71EC
1A71BA:  B               loc_1A722E
1A71BC:  SUB.W           R1, R7, #-var_38
1A71C0:  CMP             R4, #0
1A71C2:  LDR.W           R6, [R1,R4,LSL#2]
1A71C6:  BNE             loc_1A71E8
1A71C8:  LDR.W           R1, [R7,#var_34]
1A71CC:  CMP             R1, #1
1A71CE:  BLT             loc_1A71E8
1A71D0:  LDR.W           R1, [R7,#var_74]
1A71D4:  MOV             R11, R12
1A71D6:  BLX             sub_220A40
1A71DA:  LDR.W           LR, [R7,#var_40]
1A71DE:  SUB.W           R10, R10, R0
1A71E2:  MOV             R12, R11
1A71E4:  MOV.W           R11, #0
1A71E8:  CMP             R6, #1
1A71EA:  BLT             loc_1A722E
1A71EC:  MOV             R0, R5
1A71EE:  MOV             R1, R6
1A71F0:  BLX             j_silk_control_SNR
1A71F4:  LDR.W           R0, [R7,#var_60]
1A71F8:  LDR             R0, [R0]
1A71FA:  CMP             R0, R4
1A71FC:  BLE             loc_1A720E
1A71FE:  CMP             R4, #1
1A7200:  BLT             loc_1A7212
1A7202:  LDR.W           R0, [R7,#var_70]
1A7206:  LDR             R0, [R0]
1A7208:  CBZ             R0, loc_1A7212
1A720A:  MOVS            R3, #1
1A720C:  B               loc_1A7214
1A720E:  MOVS            R3, #0
1A7210:  B               loc_1A7214
1A7212:  MOVS            R3, #2
1A7214:  STRD.W          R10, R11, [SP,#0x138+var_140]!
1A7218:  LDRD.W          R2, R1, [R7,#arg_0]
1A721C:  MOV             R0, R5
1A721E:  BLX             j_silk_encode_frame_FIX
1A7222:  ADD             SP, SP, #8
1A7224:  LDR.W           LR, [R7,#var_40]
1A7228:  MOV             R12, R0
1A722A:  LDR.W           R9, [LR,#4]
1A722E:  MOVW            R2, #0xFE6A
1A7232:  MOVW            R1, #0x166C
1A7236:  ADDS            R0, R5, R1
1A7238:  MOVT            R2, #0xFFFF
1A723C:  ADD.W           R0, R0, R2,LSL#2
1A7240:  MOVS            R2, #0
1A7242:  MOVW            R3, #0x1674
1A7246:  ADDS            R4, #1
1A7248:  STR.W           R2, [R0,#0x228]
1A724C:  CMP             R4, R9
1A724E:  LDR             R0, [R5,R3]
1A7250:  STR             R2, [R5,R1]
1A7252:  ADD.W           R0, R0, #1
1A7256:  STR             R0, [R5,R3]
1A7258:  MOVW            R0, #0x21B8
1A725C:  ADD             R5, R0
1A725E:  LDR.W           R6, [R7,#var_54]
1A7262:  BLT.W           loc_1A717A
1A7266:  LDR.W           R0, [R7,#var_8C]
1A726A:  MOV             R11, R12
1A726C:  LDR.W           R1, [R7,#var_80]
1A7270:  LDR.W           R2, [R7,#var_70]
1A7274:  SUBS            R0, R0, R1
1A7276:  LDR.W           R1, [R7,#var_60]
1A727A:  LDR.W           R12, [R1]
1A727E:  LDR.W           R1, [R7,#var_5C]
1A7282:  ADD             R1, R12
1A7284:  LDRSB.W         R1, [R1,#-1]
1A7288:  STR             R1, [R2]
1A728A:  LDR             R1, [R7,#arg_4]
1A728C:  LDR.W           R8, [R7,#var_7C]
1A7290:  LDR             R1, [R1]
1A7292:  CMP             R1, #1
1A7294:  BLT.W           loc_1A68B4
1A7298:  LDR.W           R1, [R7,#var_68]
1A729C:  LDR             R1, [R1]
1A729E:  CMP             R12, R1
1A72A0:  BNE.W           loc_1A68B4
1A72A4:  MOV             R10, R0
1A72A6:  CMP.W           R9, #1
1A72AA:  BLT.W           loc_1A6802
1A72AE:  LDR.W           R3, [R7,#var_FC]
1A72B2:  MOVS            R2, #0
1A72B4:  MOVS            R1, #0
1A72B6:  MOVW            R0, #0x21B8
1A72BA:  MLA.W           R6, R2, R0, R8
1A72BE:  MOVW            R0, #0x1670
1A72C2:  LSLS            R1, R1, #1
1A72C4:  LDR             R5, [R6,R0]
1A72C6:  CMP             R5, #1
1A72C8:  BLT             loc_1A72DC
1A72CA:  MOVS            R4, #0
1A72CC:  LDRSB           R0, [R3,R4]
1A72CE:  ADDS            R4, #1
1A72D0:  CMP             R4, R5
1A72D2:  ORR.W           R0, R0, R1
1A72D6:  MOV.W           R1, R0,LSL#1
1A72DA:  BLT             loc_1A72CC
1A72DC:  MOVW            R0, #0x1273
1A72E0:  ADDS            R2, #1
1A72E2:  LDRSB           R0, [R6,R0]
1A72E4:  CMP             R2, R9
1A72E6:  ORR.W           R1, R1, R0
1A72EA:  MOVW            R0, #0x21B8
1A72EE:  ADD             R3, R0
1A72F0:  BLT             loc_1A72BA
1A72F2:  B.W             loc_1A6804
1A72F6:  MOV             R0, R6
1A72F8:  B               loc_1A7302
1A72FA:  LDR.W           R0, [R7,#var_90]
1A72FE:  LDR             R2, [R0]
1A7300:  MOV             R0, R11
1A7302:  LDR.W           R3, [R7,#var_E4]
1A7306:  LDR.W           R1, [LR,#4]
1A730A:  LDR             R5, [R7,#arg_8]
1A730C:  STR             R1, [R3]
1A730E:  STR.W           R2, [LR,#0x4C]
1A7312:  LDR.W           R2, [R7,#var_9C]
1A7316:  LDR             R3, [R2]
1A7318:  MOVS            R2, #0
1A731A:  CMP             R3, #0x10
1A731C:  BNE             loc_1A7328
1A731E:  LDR.W           R6, [R8,#0x1C]
1A7322:  CMP             R6, #0
1A7324:  IT EQ
1A7326:  MOVEQ           R2, #1
1A7328:  SXTH            R3, R3
1A732A:  MOV.W           R6, #0x3E8
1A732E:  STR.W           R2, [LR,#0x50]
1A7332:  SMULBB.W        R3, R3, R6
1A7336:  LDR.W           R2, [LR,#0x3C]
1A733A:  STR.W           R3, [LR,#0x48]
1A733E:  CMP             R2, #0
1A7340:  ITTE EQ
1A7342:  MOVWEQ          R2, #0x438C
1A7346:  LDRSHEQ.W       R2, [R8,R2]
1A734A:  MOVNE           R2, #0
1A734C:  CMP             R5, #0
1A734E:  STR.W           R2, [LR,#0x54]
1A7352:  BEQ             loc_1A738A
1A7354:  SUB.W           R3, R7, #-var_100
1A7358:  CMP             R1, #1
1A735A:  LDR.W           R2, [R3,#-0x30]
1A735E:  SUB.W           R3, R7, #-var_100
1A7362:  STR.W           R2, [LR,#0x24]
1A7366:  LDR.W           R2, [R3,#-0x34]
1A736A:  STR.W           R2, [LR,#0x18]
1A736E:  BLT             loc_1A738A
1A7370:  MOVW            R2, #0x123C
1A7374:  MOVS            R3, #0
1A7376:  ADD             R2, R8
1A7378:  MOVW            R6, #0x21B8
1A737C:  MOVS            R5, #0
1A737E:  STR             R3, [R2,#0xC]
1A7380:  ADDS            R5, #1
1A7382:  STR             R3, [R2]
1A7384:  ADD             R2, R6
1A7386:  CMP             R5, R1
1A7388:  BLT             loc_1A737E
1A738A:  LDR             R1, =(silk_Quantization_Offsets_Q10_ptr - 0x1A739C)
1A738C:  MOVW            R2, #0x129D
1A7390:  LDRSB.W         R2, [R8,R2]
1A7394:  MOVW            R3, #0x129E
1A7398:  ADD             R1, PC; silk_Quantization_Offsets_Q10_ptr
1A739A:  STR.W           R2, [LR,#0x5C]
1A739E:  MOV             R6, #0xFFFFFFFC
1A73A2:  LDRSB.W         R3, [R8,R3]
1A73A6:  LDR             R1, [R1]; silk_Quantization_Offsets_Q10
1A73A8:  AND.W           R2, R6, R2,LSL#1
1A73AC:  ADD             R1, R2
1A73AE:  LDRSH.W         R1, [R1,R3,LSL#1]
1A73B2:  STR.W           R1, [LR,#0x60]
1A73B6:  B.W             loc_1A625A
