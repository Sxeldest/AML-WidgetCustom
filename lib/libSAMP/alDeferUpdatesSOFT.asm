; =========================================================
; Game Engine Function: alDeferUpdatesSOFT
; Address            : 0x1E13B4 - 0x1E152C
; =========================================================

1E13B4:  PUSH            {R4-R11,LR}
1E13B8:  ADD             R11, SP, #0x1C
1E13BC:  SUB             SP, SP, #4
1E13C0:  BL              j_GetContextRef
1E13C4:  MOV             R4, R0
1E13C8:  CMP             R4, #0
1E13CC:  BEQ             loc_1E1524
1E13D0:  LDR             R0, [R4,#0xE0]
1E13D4:  CMP             R0, #0
1E13D8:  BNE             loc_1E1514
1E13DC:  LDR             R0, [R4,#0xFC]
1E13E0:  ADD             R0, R0, #8; mutex
1E13E4:  BL              j_EnterCriticalSection
1E13E8:  MOV             R0, #1
1E13EC:  ADD             R1, R4, #0xC8
1E13F0:  STR             R0, [R4,#0xE0]
1E13F4:  MOV             R2, #0
1E13F8:  DMB             ISH
1E13FC:  LDREX           R0, [R1]
1E1400:  STREX           R3, R2, [R1]
1E1404:  CMP             R3, #0
1E1408:  BNE             loc_1E13FC
1E140C:  DMB             ISH
1E1410:  LDR             R1, [R4,#0xE8]
1E1414:  CMP             R1, #0
1E1418:  BEQ             loc_1E14A8
1E141C:  LDR             R5, [R4,#0xE4]
1E1420:  UXTB            R10, R0
1E1424:  MOVW            R8, #0x1012
1E1428:  MOVW            R9, #0x1F9C
1E142C:  ADD             R6, R5, R1,LSL#2
1E1430:  MOV             R7, #0
1E1434:  LDR             R0, [R5]
1E1438:  LDR             R1, [R0,#0x5C]
1E143C:  CMP             R1, R8
1E1440:  BNE             loc_1E148C
1E1444:  ADD             R0, R0, R9
1E1448:  DMB             ISH
1E144C:  LDREX           R1, [R0]
1E1450:  STREX           R2, R7, [R0]
1E1454:  CMP             R2, #0
1E1458:  BNE             loc_1E144C
1E145C:  ORRS            R0, R1, R10
1E1460:  DMB             ISH
1E1464:  BEQ             loc_1E147C
1E1468:  LDR             R0, [R5]
1E146C:  MOVW            R1, #0x1FA0
1E1470:  LDR             R2, [R0,R1]
1E1474:  MOV             R1, R4
1E1478:  BLX             R2
1E147C:  ADD             R5, R5, #4
1E1480:  CMP             R5, R6
1E1484:  BNE             loc_1E1434
1E1488:  B               loc_1E14A8
1E148C:  LDR             R0, [R4,#0xE8]
1E1490:  SUB             R0, R0, #1
1E1494:  STR             R0, [R4,#0xE8]
1E1498:  LDR             R0, [R6,#-4]!
1E149C:  STR             R0, [R5]
1E14A0:  CMP             R5, R6
1E14A4:  BNE             loc_1E1434
1E14A8:  LDR             R0, [R4,#0xF4]
1E14AC:  CMP             R0, #0
1E14B0:  BEQ             loc_1E1508
1E14B4:  LDR             R5, [R4,#0xF0]
1E14B8:  MOV             R7, #0
1E14BC:  ADD             R6, R5, R0,LSL#2
1E14C0:  LDR             R0, [R5]
1E14C4:  DMB             ISH
1E14C8:  ADD             R1, R0, #0xC0
1E14CC:  LDREX           R0, [R1]
1E14D0:  STREX           R2, R7, [R1]
1E14D4:  CMP             R2, #0
1E14D8:  BNE             loc_1E14CC
1E14DC:  CMP             R0, #0
1E14E0:  DMB             ISH
1E14E4:  BEQ             loc_1E14FC
1E14E8:  LDR             R2, [R5]
1E14EC:  MOV             R1, R4
1E14F0:  LDR             R0, [R2,#0xC4]
1E14F4:  LDR             R3, [R0,#8]
1E14F8:  BLX             R3
1E14FC:  ADD             R5, R5, #4
1E1500:  CMP             R5, R6
1E1504:  BNE             loc_1E14C0
1E1508:  LDR             R0, [R4,#0xFC]
1E150C:  ADD             R0, R0, #8; mutex
1E1510:  BL              j_LeaveCriticalSection
1E1514:  MOV             R0, R4
1E1518:  SUB             SP, R11, #0x1C
1E151C:  POP             {R4-R11,LR}
1E1520:  B               j_ALCcontext_DecRef
1E1524:  SUB             SP, R11, #0x1C
1E1528:  POP             {R4-R11,PC}
