; =========================================================
; Game Engine Function: sub_106334
; Address            : 0x106334 - 0x106496
; =========================================================

106334:  PUSH            {R4-R7,LR}
106336:  ADD             R7, SP, #0xC
106338:  PUSH.W          {R8}
10633C:  SUB             SP, SP, #0x30
10633E:  MOV             R4, R0
106340:  LDR             R0, [R0,#0x5C]
106342:  CMP             R0, #0
106344:  BEQ.W           loc_10648E
106348:  LDRB.W          R0, [R4,#0x39]
10634C:  CMP             R0, #0
10634E:  BEQ.W           loc_10648E
106352:  MOV             R0, R4
106354:  BL              sub_F8C70
106358:  CMP             R0, #0
10635A:  BEQ.W           loc_10648E
10635E:  LDRB.W          R0, [R4,#0x60]
106362:  CMP             R0, #0
106364:  BNE.W           loc_10648E
106368:  LDR             R0, =(off_234970 - 0x106372)
10636A:  MOVS            R1, #0
10636C:  MOVS            R6, #0
10636E:  ADD             R0, PC; off_234970
106370:  LDR             R0, [R0]; dword_23DEF0
106372:  LDR             R0, [R0]
106374:  BL              sub_F97A8
106378:  LDR             R0, [R4,#0x5C]
10637A:  LDRB.W          R5, [R4,#0x38]
10637E:  CBZ             R0, loc_106392
106380:  MOV             R0, R4
106382:  BL              sub_F8C70
106386:  CBZ             R0, loc_106392
106388:  LDR             R0, [R4,#0x5C]
10638A:  LDR.W           R0, [R0,#0x440]
10638E:  LDR             R0, [R0,#0x10]
106390:  CBNZ            R0, loc_1063E8
106392:  LDR             R0, =(off_237DB0 - 0x1063A2); "WOP" ...
106394:  SUB.W           R3, R7, #-var_11
106398:  LDR             R1, =(off_237DA0 - 0x1063A8); "DANCE_LOOP" ...
10639A:  SUB.W           LR, R7, #-var_23
10639E:  ADD             R0, PC; off_237DB0
1063A0:  ADD.W           R12, SP, #0x40+var_28
1063A4:  ADD             R1, PC; off_237DA0
1063A6:  STRB.W          R6, [R7,#var_21]
1063AA:  LDR.W           R2, [R0,R5,LSL#2]
1063AE:  MOVS            R0, #0x40100000
1063B4:  STRD.W          R6, R0, [SP,#0x40+var_20]
1063B8:  MOVS            R0, #1
1063BA:  STRB.W          R0, [R7,#var_11]
1063BE:  SUB.W           R0, R7, #-var_21
1063C2:  LDR.W           R1, [R1,R5,LSL#2]
1063C6:  STRD.W          R3, R0, [SP,#0x40+var_40]
1063CA:  ADD             R3, SP, #0x40+var_20
1063CC:  MOV             R0, R4
1063CE:  STRB.W          R6, [R7,#var_22]
1063D2:  STRB.W          R6, [R7,#var_23]
1063D6:  STR             R6, [SP,#0x40+var_28]
1063D8:  SUB.W           R6, R7, #-var_22
1063DC:  STRD.W          R6, LR, [SP,#0x40+var_38]
1063E0:  STR.W           R12, [SP,#0x40+var_30]
1063E4:  BL              sub_104F28
1063E8:  ADD.W           R8, SP, #0x40+var_28
1063EC:  SUB.W           R6, R7, #-var_11
1063F0:  MOVS            R0, #1
1063F2:  ADD             R1, SP, #0x40+var_20
1063F4:  STR             R0, [SP,#0x40+var_40]
1063F6:  MOV             R0, R4
1063F8:  MOV             R2, R8
1063FA:  MOV             R3, R6
1063FC:  BL              sub_104BA4
106400:  LDRB.W          R0, [R4,#0x3A]
106404:  CMP             R0, #0
106406:  BEQ             loc_10648E
106408:  MOVS            R0, #0
10640A:  CMP             R5, #3
10640C:  STRB.W          R0, [R4,#0x3A]
106410:  BNE             loc_106428
106412:  LDR             R1, =(off_237DB0 - 0x10641A); "WOP" ...
106414:  LDR             R3, =(off_237E40 - 0x10641C); "strip_A" ...
106416:  ADD             R1, PC; off_237DB0
106418:  ADD             R3, PC; off_237E40
10641A:  LDR             R2, [R1,#(off_237DBC - 0x237DB0)]; "STRIP" ...
10641C:  LDR             R1, [R3]; "strip_A" ...
10641E:  MOVS            R3, #0x40100000
106424:  STR             R3, [SP,#0x40+var_1C]
106426:  B               loc_10645A
106428:  MOV             R0, R4
10642A:  BL              sub_10609E
10642E:  CBZ             R0, loc_10643A
106430:  LDR             R0, =(off_237DB0 - 0x106438); "WOP" ...
106432:  LDR             R1, =(off_237E00 - 0x10643A); "DANCE_B1" ...
106434:  ADD             R0, PC; off_237DB0
106436:  ADD             R1, PC; off_237E00
106438:  B               loc_10644A
10643A:  MOV             R0, R4
10643C:  BL              sub_106070
106440:  CBZ             R0, loc_10648E
106442:  LDR             R0, =(off_237DB0 - 0x10644A); "WOP" ...
106444:  LDR             R1, =(off_237DC0 - 0x10644C); "DANCE_G1" ...
106446:  ADD             R0, PC; off_237DB0
106448:  ADD             R1, PC; off_237DC0
10644A:  LDR.W           R2, [R0,R5,LSL#2]
10644E:  MOVS            R0, #0
106450:  LDR             R1, [R1]; "DANCE_B1"
106452:  MOVT            R0, #0x4010
106456:  STR             R0, [SP,#0x40+var_1C]
106458:  MOVS            R0, #0
10645A:  STR             R0, [SP,#0x40+var_20]
10645C:  SUB.W           R3, R7, #-var_22
106460:  STRB.W          R0, [R7,#var_11]
106464:  SUB.W           R5, R7, #-var_21
106468:  STRB.W          R0, [R7,#var_21]
10646C:  STRB.W          R0, [R7,#var_22]
106470:  STRB.W          R0, [R7,#var_23]
106474:  STR             R0, [SP,#0x40+var_28]
106476:  SUB.W           R0, R7, #-var_23
10647A:  STRD.W          R6, R5, [SP,#0x40+var_40]
10647E:  STRD.W          R3, R0, [SP,#0x40+var_38]
106482:  ADD             R3, SP, #0x40+var_20
106484:  MOV             R0, R4
106486:  STR.W           R8, [SP,#0x40+var_30]
10648A:  BL              sub_104F28
10648E:  ADD             SP, SP, #0x30 ; '0'
106490:  POP.W           {R8}
106494:  POP             {R4-R7,PC}
