; =========================================================
; Game Engine Function: sub_146458
; Address            : 0x146458 - 0x1465BE
; =========================================================

146458:  PUSH            {R4,R5,R7,LR}
14645A:  ADD             R7, SP, #8
14645C:  SUB             SP, SP, #0x120
14645E:  LDRD.W          R1, R0, [R0]; src
146462:  MOVS            R3, #0
146464:  ASRS            R2, R0, #0x1F
146466:  ADD.W           R0, R0, R2,LSR#29
14646A:  MOVS            R2, #1
14646C:  ADD.W           R2, R2, R0,ASR#3; size
146470:  ADD             R0, SP, #0x128+var_120; int
146472:  BL              sub_17D4F2
146476:  SUB.W           R1, R7, #-var_9; int
14647A:  MOVS            R2, #8
14647C:  MOVS            R3, #1
14647E:  BL              sub_17D786
146482:  LDRB.W          R0, [R7,#var_9]
146486:  SUBS            R0, #1; switch 4 cases
146488:  CMP             R0, #3
14648A:  BHI.W           def_14648E; jumptable 0014648E default case
14648E:  TBB.W           [PC,R0]; switch jump
146492:  DCB 2; jump table for switch statement
146493:  DCB 0x14
146494:  DCB 0x56
146495:  DCB 0x67
146496:  LDR             R0, =(off_234A24 - 0x14649C); jumptable 0014648E case 1
146498:  ADD             R0, PC; off_234A24
14649A:  LDR             R0, [R0]; dword_23DEEC
14649C:  LDR             R0, [R0]
14649E:  CMP             R0, #0
1464A0:  BEQ             def_14648E; jumptable 0014648E default case
1464A2:  LDR             R4, [R0,#0x60]
1464A4:  LDR             R1, =(unk_8CA13 - 0x1464AA)
1464A6:  ADD             R1, PC; unk_8CA13 ; s
1464A8:  MOV             R0, SP; int
1464AA:  MOVS            R2, #0x26 ; '&'
1464AC:  BL              sub_F1E90
1464B0:  LDR             R1, [SP,#0x128+var_128]
1464B2:  MOV             R0, R4
1464B4:  BL              sub_12D490
1464B8:  B               def_14648E; jumptable 0014648E default case
1464BA:  LDR             R0, =(off_234A24 - 0x1464C0); jumptable 0014648E case 2
1464BC:  ADD             R0, PC; off_234A24
1464BE:  LDR             R5, [R0]; dword_23DEEC
1464C0:  LDR             R0, [R5]
1464C2:  CMP             R0, #0
1464C4:  BEQ             def_14648E; jumptable 0014648E default case
1464C6:  LDR             R4, [R0,#0x60]
1464C8:  LDR             R1, =(unk_8C316 - 0x1464CE)
1464CA:  ADD             R1, PC; unk_8C316 ; s
1464CC:  MOV             R0, SP; int
1464CE:  MOVS            R2, #0x20 ; ' '
1464D0:  BL              sub_F1E90
1464D4:  LDR             R1, [SP,#0x128+var_128]
1464D6:  MOV             R0, R4
1464D8:  BL              sub_12D490
1464DC:  LDR             R0, [R5]
1464DE:  CMP             R0, #0
1464E0:  BEQ             def_14648E; jumptable 0014648E default case
1464E2:  LDR             R4, [R0,#0x60]
1464E4:  LDR             R1, =(unk_8CA3A - 0x1464EA)
1464E6:  ADD             R1, PC; unk_8CA3A ; s
1464E8:  MOV             R0, SP; int
1464EA:  MOVS            R2, #0x5A ; 'Z'
1464EC:  BL              sub_F1E90
1464F0:  LDR             R1, [SP,#0x128+var_128]
1464F2:  MOV             R0, R4
1464F4:  BL              sub_12D490
1464F8:  LDR             R0, [R5]
1464FA:  CMP             R0, #0
1464FC:  BEQ             def_14648E; jumptable 0014648E default case
1464FE:  LDR             R4, [R0,#0x60]
146500:  LDR             R1, =(unk_8AD13 - 0x146506)
146502:  ADD             R1, PC; unk_8AD13 ; s
146504:  MOV             R0, SP; int
146506:  MOVS            R2, #0x47 ; 'G'
146508:  BL              sub_F1E90
14650C:  LDR             R1, [SP,#0x128+var_128]
14650E:  MOV             R0, R4
146510:  BL              sub_12D490
146514:  LDR             R0, [R5]
146516:  CBZ             R0, def_14648E; jumptable 0014648E default case
146518:  LDR             R4, [R0,#0x60]
14651A:  MOVS            R2, #0
14651C:  LDR             R0, =(unk_85839 - 0x146522)
14651E:  ADD             R0, PC; unk_85839
146520:  ADDS            R1, R0, R2
146522:  ADDS            R2, #1
146524:  LDRB            R1, [R1,#1]
146526:  CMP             R1, #0
146528:  BNE             loc_146520
14652A:  LDR             R1, =(unk_85839 - 0x146530)
14652C:  ADD             R1, PC; unk_85839 ; s
14652E:  MOV             R0, SP; int
146530:  BL              sub_F1E90
146534:  LDR             R1, [SP,#0x128+var_128]
146536:  MOV             R0, R4
146538:  BL              sub_12D490
14653C:  B               def_14648E; jumptable 0014648E default case
14653E:  LDR             R0, =(off_234A24 - 0x146544); jumptable 0014648E case 3
146540:  ADD             R0, PC; off_234A24
146542:  LDR             R0, [R0]; dword_23DEEC
146544:  LDR             R0, [R0]
146546:  CBZ             R0, def_14648E; jumptable 0014648E default case
146548:  LDR             R4, [R0,#0x60]
14654A:  LDR             R1, =(unk_9174E - 0x146550)
14654C:  ADD             R1, PC; unk_9174E ; s
14654E:  MOV             R0, SP; int
146550:  MOVS            R2, #0x4E ; 'N'
146552:  BL              sub_F1E90
146556:  LDR             R1, [SP,#0x128+var_128]
146558:  MOV             R0, R4
14655A:  BL              sub_12D490
14655E:  B               def_14648E; jumptable 0014648E default case
146560:  LDR             R0, =(off_234A24 - 0x146566); jumptable 0014648E case 4
146562:  ADD             R0, PC; off_234A24
146564:  LDR             R0, [R0]; dword_23DEEC
146566:  LDR             R0, [R0]
146568:  CBZ             R0, def_14648E; jumptable 0014648E default case
14656A:  LDR             R4, [R0,#0x60]
14656C:  LDR             R1, =(unk_83AB5 - 0x146572)
14656E:  ADD             R1, PC; unk_83AB5 ; s
146570:  MOV             R0, SP; int
146572:  MOVS            R2, #0x43 ; 'C'
146574:  BL              sub_F1E90
146578:  LDR             R1, [SP,#0x128+var_128]
14657A:  MOV             R0, R4
14657C:  BL              sub_12D490
146580:  LDR             R0, =(off_23496C - 0x146586); jumptable 0014648E default case
146582:  ADD             R0, PC; off_23496C
146584:  LDR             R4, [R0]; dword_23DEF4
146586:  LDR             R0, [R4]
146588:  LDR.W           R0, [R0,#0x210]
14658C:  LDR             R1, [R0]
14658E:  LDR             R3, [R1,#0xC]
146590:  MOV.W           R1, #0x1F4
146594:  MOVS            R2, #0
146596:  BLX             R3
146598:  LDR             R0, [R4]
14659A:  LDR.W           R0, [R0,#0x3B0]
14659E:  LDR             R0, [R0]
1465A0:  CBZ             R0, loc_1465B4
1465A2:  MOVW            R1, #0x13BC
1465A6:  LDR             R0, [R0,R1]
1465A8:  CBZ             R0, loc_1465B4
1465AA:  LDR             R0, [R0,#0x1C]
1465AC:  CBZ             R0, loc_1465B4
1465AE:  MOVS            R1, #1
1465B0:  BL              sub_10421C
1465B4:  ADD             R0, SP, #0x128+var_120
1465B6:  BL              sub_17D542
1465BA:  ADD             SP, SP, #0x120
1465BC:  POP             {R4,R5,R7,PC}
