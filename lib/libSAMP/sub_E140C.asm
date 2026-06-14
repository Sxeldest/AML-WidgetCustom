; =========================================================
; Game Engine Function: sub_E140C
; Address            : 0xE140C - 0xE150A
; =========================================================

E140C:  PUSH            {R4-R7,LR}
E140E:  ADD             R7, SP, #0xC
E1410:  PUSH.W          {R8-R10}
E1414:  SUB             SP, SP, #0x18
E1416:  MOV             R6, R0
E1418:  LDR             R0, =(unk_91CE0 - 0xE1426)
E141A:  LDRH.W          R2, [R1,#9]
E141E:  ADD.W           R8, R1, #0xB
E1422:  ADD             R0, PC; unk_91CE0
E1424:  LDR             R5, [R1]
E1426:  AND.W           R2, R2, #0xF
E142A:  LDR.W           R10, [R7,#arg_0]
E142E:  SUBS            R4, R5, R3
E1430:  LDRB            R0, [R0,R2]
E1432:  IT CC
E1434:  MOVCC           R4, #0
E1436:  LSRS.W          R9, R4, R0
E143A:  BEQ             loc_E1448
E143C:  MOV             R0, R6
E143E:  MOV             R1, R9
E1440:  MOV             R2, R8
E1442:  BL              sub_DD992
E1446:  MOV             R6, R0
E1448:  LDR.W           R0, [R10]
E144C:  BIC.W           R5, R0, #0xFF000000
E1450:  CBZ             R5, loc_E1472
E1452:  LDRD.W          R0, R2, [R6,#8]
E1456:  ADDS            R1, R0, #1
E1458:  CMP             R2, R1
E145A:  BCS             loc_E1468
E145C:  LDR             R0, [R6]
E145E:  LDR             R2, [R0]
E1460:  MOV             R0, R6
E1462:  BLX             R2
E1464:  LDR             R0, [R6,#8]
E1466:  ADDS            R1, R0, #1
E1468:  LDR             R2, [R6,#4]
E146A:  STR             R1, [R6,#8]
E146C:  STRB            R5, [R2,R0]
E146E:  LSRS            R5, R5, #8
E1470:  BNE             loc_E1452
E1472:  SUB.W           R5, R7, #-var_2E
E1476:  LDR.W           R1, [R10,#8]
E147A:  MOVS            R0, #0x30 ; '0'
E147C:  SUB.W           R9, R4, R9
E1480:  STRB.W          R0, [R7,#var_2E]
E1484:  MOV             R0, R6
E1486:  MOV             R2, R5
E1488:  BL              sub_DD9D2
E148C:  MOV             R2, R0
E148E:  LDR.W           R1, [R10,#0x18]
E1492:  LDRD.W          R6, R4, [R2,#8]
E1496:  LDRD.W          R3, R0, [R10,#0x10]
E149A:  ADD             R6, R1
E149C:  CMP             R4, R6
E149E:  BCC             loc_E14C6
E14A0:  LDR             R4, [R2,#4]
E14A2:  STR             R6, [R2,#8]
E14A4:  CBZ             R4, loc_E14C6
E14A6:  ADDS            R1, R6, R4
E14A8:  MOVS            R6, #6
E14AA:  SUBS            R1, #1
E14AC:  LSRS            R5, R3, #3
E14AE:  BFI.W           R3, R6, #3, #0x1D
E14B2:  STRB.W          R3, [R1],#-1
E14B6:  ORR.W           R3, R5, R0,LSL#29
E14BA:  ORR.W           R5, R3, R0,LSR#3
E14BE:  LSRS            R0, R0, #3
E14C0:  CMP             R5, #0
E14C2:  BNE             loc_E14AC
E14C4:  B               loc_E14EE
E14C6:  ADD             R1, R5
E14C8:  MOVS            R5, #6
E14CA:  SUBS            R6, R1, #1
E14CC:  LSRS            R4, R3, #3
E14CE:  BFI.W           R3, R5, #3, #0x1D
E14D2:  STRB.W          R3, [R6],#-1
E14D6:  ORR.W           R3, R4, R0,LSL#29
E14DA:  ORR.W           R4, R3, R0,LSR#3
E14DE:  LSRS            R0, R0, #3
E14E0:  CMP             R4, #0
E14E2:  BNE             loc_E14CC
E14E4:  SUB.W           R0, R7, #-var_2E
E14E8:  BL              sub_DCF1C
E14EC:  MOV             R2, R0
E14EE:  CMP.W           R9, #0
E14F2:  BEQ             loc_E1500
E14F4:  MOV             R0, R2
E14F6:  MOV             R1, R9
E14F8:  MOV             R2, R8
E14FA:  BL              sub_DD992
E14FE:  MOV             R2, R0
E1500:  MOV             R0, R2
E1502:  ADD             SP, SP, #0x18
E1504:  POP.W           {R8-R10}
E1508:  POP             {R4-R7,PC}
