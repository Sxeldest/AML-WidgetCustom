; =========================================================
; Game Engine Function: sub_A634C
; Address            : 0xA634C - 0xA67BE
; =========================================================

A634C:  PUSH            {R4-R7,LR}
A634E:  ADD             R7, SP, #0xC
A6350:  PUSH.W          {R8-R11}
A6354:  SUB             SP, SP, #0x1C
A6356:  MOV             R4, R0
A6358:  LDR             R0, =(off_114D5C - 0xA6364)
A635A:  MOV             R6, R3
A635C:  LDR.W           R8, [R7,#arg_0]
A6360:  ADD             R0, PC; off_114D5C
A6362:  MOV             R10, R1
A6364:  MOVS            R1, #1
A6366:  LDR             R0, [R0]; dword_1ACF68
A6368:  LDR             R3, [R0]
A636A:  MOVW            R0, #0x19AC
A636E:  STR             R3, [SP,#0x38+var_20]
A6370:  ADD.W           R9, R3, R0
A6374:  LDR             R5, [R3,R0]
A6376:  MOVS.W          R0, R8,LSL#23
A637A:  STRB.W          R1, [R5,#0x7C]
A637E:  BMI             loc_A63CA
A6380:  TST.W           R8, #0x1E
A6384:  LDR.W           R1, [R9,#4]
A6388:  IT EQ
A638A:  ORREQ.W         R8, R8, #2
A638E:  MOVS.W          R0, R8,LSL#26
A6392:  STR             R2, [SP,#0x38+var_24]
A6394:  STR             R1, [SP,#0x38+var_30]
A6396:  BPL             loc_A63A0
A6398:  LDR.W           R0, [R9,#8]
A639C:  CMP             R0, R5
A639E:  BEQ             loc_A63F0
A63A0:  MOVS            R0, #0
A63A2:  STR             R0, [SP,#0x38+var_2C]
A63A4:  MOV             R0, R4
A63A6:  MOV             R1, R10
A63A8:  BL              sub_8B914
A63AC:  LDRB.W          R1, [R9,#0x36C]
A63B0:  STR             R5, [SP,#0x38+var_28]
A63B2:  CBZ             R0, loc_A63EA
A63B4:  CBZ             R1, loc_A63F8
A63B6:  LDR.W           R0, [R9,#0x384]
A63BA:  CMP             R0, R10
A63BC:  BNE             loc_A6402
A63BE:  LDRB.W          R0, [R9,#0x370]
A63C2:  MOVS            R1, #1
A63C4:  UBFX.W          R11, R0, #1, #1
A63C8:  B               loc_A6408
A63CA:  CMP             R2, #0
A63CC:  ITT NE
A63CE:  MOVNE           R0, #0
A63D0:  STRBNE          R0, [R2]
A63D2:  CMP             R6, #0
A63D4:  ITT NE
A63D6:  MOVNE           R0, #0
A63D8:  STRBNE          R0, [R6]
A63DA:  LDR.W           R0, [R9,#0x24]
A63DE:  CMP             R0, R10
A63E0:  IT EQ
A63E2:  BLEQ            sub_8B080
A63E6:  MOVS            R2, #0
A63E8:  B               loc_A6704
A63EA:  MOV.W           R11, #0
A63EE:  B               loc_A6408
A63F0:  MOVS            R0, #1
A63F2:  STR.W           R5, [R9,#4]
A63F6:  B               loc_A63A2
A63F8:  MOVS            R2, #0
A63FA:  MOV.W           R11, #1
A63FE:  LDR             R3, [SP,#0x38+var_20]
A6400:  B               loc_A647E
A6402:  MOVS            R1, #1
A6404:  MOV.W           R11, #1
A6408:  LDR             R3, [SP,#0x38+var_20]
A640A:  MOVS.W          R0, R8,LSL#19
A640E:  MOV.W           R2, #0
A6412:  BPL             loc_A647E
A6414:  CBZ             R1, loc_A647E
A6416:  LDRB.W          R0, [R9,#0x370]
A641A:  LSLS            R0, R0, #0x1D
A641C:  BMI             loc_A646E
A641E:  MOVS            R0, #0x20 ; ' '
A6420:  MOV             R5, R3
A6422:  BL              sub_8B850
A6426:  CBZ             R0, loc_A6472
A6428:  MOV             R0, R10
A642A:  BL              sub_8B0B4
A642E:  VLDR            S0, =0.0001
A6432:  MOVW            R2, #0xD70A
A6436:  VLDR            S2, [R9,#0x1C]
A643A:  MOVW            R3, #0x3333
A643E:  MOVT            R2, #0x3C23
A6442:  MOVT            R3, #0x3F33
A6446:  VADD.F32        S0, S2, S0
A644A:  VLDR            S2, [R5,#0x18]
A644E:  VSUB.F32        S2, S0, S2
A6452:  VMOV            R0, S0
A6456:  VMOV            R1, S2
A645A:  BL              sub_95424
A645E:  CBZ             R0, loc_A6476
A6460:  LDR             R0, [SP,#0x38+var_28]
A6462:  BL              sub_8C628
A6466:  MOV.W           R11, #1
A646A:  MOVS            R2, #1
A646C:  B               loc_A647C
A646E:  MOVS            R2, #0
A6470:  B               loc_A647E
A6472:  MOVS            R2, #0
A6474:  B               loc_A647C
A6476:  MOVS            R2, #0
A6478:  MOV.W           R11, #1
A647C:  MOV             R3, R5
A647E:  LDR             R1, [SP,#0x38+var_2C]
A6480:  ADD.W           R0, R3, #0x408
A6484:  STR             R0, [SP,#0x38+var_34]
A6486:  CMP             R1, #0
A6488:  ITT NE
A648A:  LDRNE           R0, [SP,#0x38+var_30]
A648C:  STRNE.W         R0, [R9,#4]
A6490:  AND.W           R0, R8, #0x40 ; '@'
A6494:  MOVS            R1, #1
A6496:  LDR.W           R12, [SP,#0x38+var_24]
A649A:  EOR.W           R0, R1, R0,LSR#6
A649E:  EOR.W           R1, R11, #1
A64A2:  ORRS            R0, R1
A64A4:  BNE             loc_A651A
A64A6:  LDR.W           R0, [R9,#0x18]
A64AA:  MOV             R5, R6
A64AC:  LDR.W           R11, [SP,#0x38+var_28]
A64B0:  MOV             R6, R4
A64B2:  CMP             R0, R10
A64B4:  IT NE
A64B6:  CMPNE           R0, #0
A64B8:  BNE             loc_A6528
A64BA:  MOVS.W          R0, R8,LSL#21
A64BE:  BMI             loc_A652C
A64C0:  MOVS.W          R0, R8,LSL#30
A64C4:  BPL             loc_A64F0
A64C6:  LDRB.W          R0, [R3,#0x3D8]
A64CA:  CBZ             R0, loc_A64F0
A64CC:  MOV             R0, R10
A64CE:  MOV             R1, R11
A64D0:  MOV             R4, R2
A64D2:  BL              sub_8AF74
A64D6:  MOVS.W          R0, R8,LSL#18
A64DA:  BMI             loc_A64E4
A64DC:  MOV             R0, R10
A64DE:  MOV             R1, R11
A64E0:  BL              sub_8AFEC
A64E4:  MOV             R0, R11
A64E6:  BL              sub_8C628
A64EA:  LDRD.W          R12, R3, [SP,#0x38+var_24]
A64EE:  MOV             R2, R4
A64F0:  MOVS.W          R0, R8,LSL#29
A64F4:  BPL             loc_A64FC
A64F6:  LDRB.W          R0, [R3,#0x3D8]
A64FA:  CBNZ            R0, loc_A6508
A64FC:  MOVS.W          R0, R8,LSL#27
A6500:  BPL             loc_A6558
A6502:  LDRB.W          R0, [R3,#0x3DD]
A6506:  CBZ             R0, loc_A6558
A6508:  MOV             R4, R3
A650A:  MOVS.W          R0, R8,LSL#20
A650E:  BMI             loc_A6546
A6510:  MOV             R0, R10
A6512:  MOV             R1, R11
A6514:  BL              sub_8AF74
A6518:  B               loc_A654A
A651A:  CMP.W           R11, #0
A651E:  LDR.W           R11, [SP,#0x38+var_28]
A6522:  MOV             R5, R6
A6524:  MOV             R6, R4
A6526:  BNE             loc_A64BA
A6528:  MOVS            R4, #0
A652A:  B               loc_A65E8
A652C:  LDRB.W          R0, [R3,#0xF8]
A6530:  CMP             R0, #0
A6532:  BNE             loc_A65DC
A6534:  LDRB.W          R0, [R3,#0xF9]
A6538:  CMP             R0, #0
A653A:  ITT EQ
A653C:  LDRBEQ.W        R0, [R3,#0xFA]
A6540:  CMPEQ           R0, #0
A6542:  BNE             loc_A65DC
A6544:  B               loc_A64C0
A6546:  BL              sub_8B080
A654A:  MOV             R0, R11
A654C:  BL              sub_8C628
A6550:  LDR.W           R12, [SP,#0x38+var_24]
A6554:  MOVS            R2, #1
A6556:  MOV             R3, R4
A6558:  MOVS.W          R0, R8,LSL#28
A655C:  BPL             loc_A6598
A655E:  LDRB.W          R0, [R3,#0x3E2]
A6562:  CBZ             R0, loc_A6598
A6564:  MOVS.W          R0, R8,LSL#31
A6568:  STR             R5, [SP,#0x38+var_2C]
A656A:  BNE             loc_A6570
A656C:  MOVS            R2, #1
A656E:  B               loc_A6586
A6570:  LDR             R0, [SP,#0x38+var_34]
A6572:  VLDR            S0, [R3,#0x88]
A6576:  VLDR            S2, [R0]
A657A:  VCMP.F32        S2, S0
A657E:  VMRS            APSR_nzcv, FPSCR
A6582:  IT LT
A6584:  MOVLT           R2, #1
A6586:  MOV             R5, R2
A6588:  MOV             R4, R3
A658A:  BL              sub_8B080
A658E:  MOV             R2, R5
A6590:  LDR             R5, [SP,#0x38+var_2C]
A6592:  LDR.W           R12, [SP,#0x38+var_24]
A6596:  MOV             R3, R4
A6598:  MOVS.W          R0, R8,LSL#31
A659C:  BEQ             loc_A65DC
A659E:  LDR.W           R0, [R9,#0x24]
A65A2:  CMP             R0, R10
A65A4:  BNE             loc_A65DC
A65A6:  VLDR            S0, [R3,#0x3F4]
A65AA:  VCMP.F32        S0, #0.0
A65AE:  VMRS            APSR_nzcv, FPSCR
A65B2:  BLE             loc_A65DC
A65B4:  MOVS            R0, #0
A65B6:  MOVS            R1, #1
A65B8:  STR             R5, [SP,#0x38+var_2C]
A65BA:  MOV             R5, R2
A65BC:  MOV             R4, R3
A65BE:  BL              sub_95510
A65C2:  ORRS            R0, R5
A65C4:  LDR.W           R12, [SP,#0x38+var_24]
A65C8:  LDR             R5, [SP,#0x38+var_2C]
A65CA:  MOV             R3, R4
A65CC:  BNE             loc_A65E0
A65CE:  MOVS            R2, #0
A65D0:  MOVS            R4, #1
A65D2:  B               loc_A65E8
A65D4:  DCD off_114D5C - 0xA6364
A65D8:  DCFS 0.0001
A65DC:  CMP             R2, #0
A65DE:  BEQ             loc_A65CE
A65E0:  MOVS            R4, #1
A65E2:  MOVS            R2, #1
A65E4:  STRB.W          R4, [R9,#0x16A]
A65E8:  LDR.W           R0, [R9,#0x10C]
A65EC:  CMP             R0, R10
A65EE:  ITT EQ
A65F0:  LDRBEQ.W        R0, [R9,#0x16A]
A65F4:  CMPEQ           R0, #0
A65F6:  BEQ.W           loc_A670E
A65FA:  LDR.W           R0, [R9,#0x114]
A65FE:  CMP             R0, R10
A6600:  BNE             loc_A668A
A6602:  MOVS.W          R0, R8,LSL#31
A6606:  MOV.W           R1, #3
A660A:  MOV.W           R0, #0
A660E:  STR             R5, [SP,#0x38+var_2C]
A6610:  MOV             R5, R11
A6612:  STR             R6, [SP,#0x38+var_30]
A6614:  STR             R4, [SP,#0x38+var_38]
A6616:  IT EQ
A6618:  MOVEQ           R1, #1
A661A:  MOV             R11, R2
A661C:  LDR.W           R4, [R9,#0x110]
A6620:  MOVS            R6, #0
A6622:  BL              sub_99114
A6626:  VMOV            S0, R0
A662A:  SUB.W           R0, R4, R10
A662E:  CLZ.W           R0, R0
A6632:  VCMP.F32        S0, #0.0
A6636:  VMRS            APSR_nzcv, FPSCR
A663A:  IT GT
A663C:  MOVGT           R6, #1
A663E:  LSRS            R0, R0, #5
A6640:  ORRS.W          R4, R0, R6
A6644:  BNE             loc_A664E
A6646:  LDR.W           R0, [R9,#0x24]
A664A:  CMP             R0, R10
A664C:  BNE             loc_A667C
A664E:  MOV             R0, R10
A6650:  MOV             R1, R5
A6652:  ORR.W           R11, R11, R4
A6656:  STR.W           R10, [R9,#0x110]
A665A:  MOV             R6, R5
A665C:  BL              sub_8AF74
A6660:  AND.W           R0, R8, #0x2000
A6664:  EOR.W           R1, R4, #1
A6668:  ORR.W           R0, R1, R0,LSR#13
A666C:  CBNZ            R0, loc_A6676
A666E:  MOV             R0, R10
A6670:  MOV             R1, R6
A6672:  BL              sub_8AFEC
A6676:  MOVS            R0, #0xF
A6678:  STR.W           R0, [R9,#0x38]
A667C:  LDR.W           R12, [SP,#0x38+var_24]
A6680:  MOV             R2, R11
A6682:  LDR             R6, [SP,#0x38+var_30]
A6684:  LDR             R3, [SP,#0x38+var_20]
A6686:  LDR             R5, [SP,#0x38+var_2C]
A6688:  LDR             R4, [SP,#0x38+var_38]
A668A:  LDR.W           R0, [R9,#0x24]
A668E:  CMP             R0, R10
A6690:  BNE             loc_A66F2
A6692:  CMP             R2, #0
A6694:  ITT NE
A6696:  MOVNE           R0, #1
A6698:  STRBNE.W        R0, [R9,#0x32]
A669C:  LDR.W           R0, [R9,#0x4C]
A66A0:  CMP             R0, #2
A66A2:  BEQ             loc_A66DE
A66A4:  CMP             R0, #1
A66A6:  BNE             loc_A66F2
A66A8:  LDRB.W          R0, [R9,#0x30]
A66AC:  CBZ             R0, loc_A66CE
A66AE:  VLDR            S0, [R6]
A66B2:  VLDR            S4, [R3,#0xE0]
A66B6:  VLDR            S2, [R6,#4]
A66BA:  VLDR            S6, [R3,#0xE4]
A66BE:  VSUB.F32        S0, S4, S0
A66C2:  VSUB.F32        S2, S6, S2
A66C6:  VSTR            S0, [R9,#0x40]
A66CA:  VSTR            S2, [R9,#0x44]
A66CE:  LDRB.W          R6, [R3,#0xE8]
A66D2:  CMP             R6, #0
A66D4:  IT NE
A66D6:  MOVNE           R6, #1
A66D8:  BEQ             loc_A6730
A66DA:  MOV             R11, R2
A66DC:  B               loc_A6754
A66DE:  LDR.W           R0, [R9,#0x114]
A66E2:  CMP             R0, R10
A66E4:  BEQ             loc_A66F2
A66E6:  MOV             R8, R2
A66E8:  MOV             R6, R12
A66EA:  BL              sub_8B080
A66EE:  MOV             R12, R6
A66F0:  MOV             R2, R8
A66F2:  MOVS            R6, #0
A66F4:  CMP.W           R12, #0
A66F8:  IT NE
A66FA:  STRBNE.W        R4, [R12]
A66FE:  CMP             R5, #0
A6700:  IT NE
A6702:  STRBNE          R6, [R5]
A6704:  MOV             R0, R2
A6706:  ADD             SP, SP, #0x1C
A6708:  POP.W           {R8-R11}
A670C:  POP             {R4-R7,PC}
A670E:  LDRB.W          R0, [R9,#0x16B]
A6712:  CMP             R0, #0
A6714:  BEQ.W           loc_A65FA
A6718:  LDR.W           R0, [R9,#0x24]
A671C:  CMP             R0, #0
A671E:  IT NE
A6720:  CMPNE           R0, R10
A6722:  BNE             loc_A6764
A6724:  MOVS.W          R0, R8,LSL#17
A6728:  BMI.W           loc_A65FA
A672C:  MOVS            R4, #1
A672E:  B               loc_A65FA
A6730:  AND.W           R0, R8, #2
A6734:  MOVS            R1, #1
A6736:  EOR.W           R0, R1, R0,LSR#1
A673A:  EOR.W           R1, R4, #1
A673E:  ORRS            R0, R1
A6740:  ITT EQ
A6742:  LDRBEQ.W        R0, [R9,#0x36C]
A6746:  CMPEQ           R0, #0
A6748:  BEQ             loc_A6778
A674A:  MOV             R10, R12
A674C:  MOV             R11, R2
A674E:  BL              sub_8B080
A6752:  MOV             R12, R10
A6754:  MOVS.W          R0, R8,LSL#18
A6758:  ITT PL
A675A:  MOVPL           R0, #1
A675C:  STRBPL.W        R0, [R9,#0x16A]
A6760:  MOV             R2, R11
A6762:  B               loc_A66F4
A6764:  MOVS.W          R1, R8,LSL#17
A6768:  BMI.W           loc_A65FA
A676C:  LDR.W           R1, [R11,#0x48]
A6770:  CMP             R0, R1
A6772:  IT EQ
A6774:  MOVEQ           R4, #1
A6776:  B               loc_A65FA
A6778:  MOV             R11, R2
A677A:  MOVS.W          R0, R8,LSL#27
A677E:  BMI             loc_A6784
A6780:  MOVS            R0, #0
A6782:  B               loc_A678E
A6784:  LDRB.W          R0, [R3,#0x3EC]
A6788:  CMP             R0, #0
A678A:  IT NE
A678C:  MOVNE           R0, #1
A678E:  MOVS.W          R1, R8,LSL#31
A6792:  MOV             R2, R11
A6794:  BNE             loc_A679A
A6796:  MOVS            R1, #1
A6798:  B               loc_A67B2
A679A:  LDR             R1, [SP,#0x38+var_34]
A679C:  VLDR            S0, [R3,#0x88]
A67A0:  VLDR            S2, [R1]
A67A4:  MOVS            R1, #0
A67A6:  VCMP.F32        S2, S0
A67AA:  VMRS            APSR_nzcv, FPSCR
A67AE:  IT LT
A67B0:  MOVLT           R1, #1
A67B2:  MOV             R10, R12
A67B4:  CMP             R0, #0
A67B6:  IT EQ
A67B8:  ORREQ.W         R11, R1, R2
A67BC:  B               loc_A674E
