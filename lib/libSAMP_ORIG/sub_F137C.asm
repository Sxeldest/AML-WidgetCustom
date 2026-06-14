; =========================================================
; Game Engine Function: sub_F137C
; Address            : 0xF137C - 0xF1442
; =========================================================

F137C:  PUSH            {R4-R7,LR}
F137E:  ADD             R7, SP, #0xC
F1380:  PUSH.W          {R8-R11}
F1384:  STR             R0, [R2]
F1386:  LDRB            R0, [R7,#arg_C]
F1388:  LDR.W           R9, [R7,#arg_4]
F138C:  LSLS            R0, R0, #0x1D
F138E:  STR.W           R3, [R9]
F1392:  BPL             loc_F13AA
F1394:  LDR             R0, [R2]
F1396:  SUBS            R3, R1, R0
F1398:  CMP             R3, #2
F139A:  BLT             loc_F13AA
F139C:  LDRB            R3, [R0]
F139E:  CMP             R3, #0xFE
F13A0:  ITTTT EQ
F13A2:  LDRBEQ          R3, [R0,#1]
F13A4:  CMPEQ           R3, #0xFF
F13A6:  ADDEQ           R0, #2
F13A8:  STREQ           R0, [R2]
F13AA:  LDR.W           R12, [R7,#arg_8]
F13AE:  SUB.W           R10, R1, #1
F13B2:  LDR.W           R8, [R7,#arg_0]
F13B6:  MOV.W           LR, #0xFC00
F13BA:  B               loc_F141E
F13BC:  LDRB            R4, [R3]
F13BE:  LDRB.W          R11, [R3,#1]
F13C2:  AND.W           R6, LR, R4,LSL#8
F13C6:  ORR.W           R4, R11, R4,LSL#8
F13CA:  CMP.W           R6, #0xD800
F13CE:  BEQ             loc_F13DE
F13D0:  CMP.W           R6, #0xDC00
F13D4:  BEQ             loc_F143A
F13D6:  MOVS            R0, #2
F13D8:  CMP             R4, R12
F13DA:  BLS             loc_F140E
F13DC:  B               loc_F1434
F13DE:  SUBS            R6, R1, R3
F13E0:  CMP             R6, #4
F13E2:  BLT             loc_F143E
F13E4:  LDRB            R6, [R3,#2]
F13E6:  AND.W           R0, R6, #0xFC
F13EA:  CMP             R0, #0xDC
F13EC:  BNE             loc_F143A
F13EE:  LDRB            R0, [R3,#3]
F13F0:  AND.W           R4, R4, #0x3C0
F13F4:  BFI.W           R0, R6, #8, #2
F13F8:  MOV.W           R6, R11,LSL#10
F13FC:  UXTH            R6, R6
F13FE:  ORR.W           R4, R6, R4,LSL#10
F1402:  ADD             R0, R4
F1404:  ADD.W           R4, R0, #0x10000
F1408:  CMP             R4, R12
F140A:  BHI             loc_F143A
F140C:  MOVS            R0, #4
F140E:  ADD             R0, R3
F1410:  STR             R0, [R2]
F1412:  LDR.W           R0, [R9]
F1416:  STR             R4, [R5]
F1418:  ADDS            R0, #4
F141A:  STR.W           R0, [R9]
F141E:  LDR             R3, [R2]
F1420:  CMP             R3, R10
F1422:  ITT CC
F1424:  LDRCC.W         R5, [R9]
F1428:  CMPCC           R5, R8
F142A:  BCC             loc_F13BC
F142C:  MOVS            R0, #0
F142E:  CMP             R3, R1
F1430:  IT CC
F1432:  MOVCC           R0, #1
F1434:  POP.W           {R8-R11}
F1438:  POP             {R4-R7,PC}
F143A:  MOVS            R0, #2
F143C:  B               loc_F1434
F143E:  MOVS            R0, #1
F1440:  B               loc_F1434
