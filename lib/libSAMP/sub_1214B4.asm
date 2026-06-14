; =========================================================
; Game Engine Function: sub_1214B4
; Address            : 0x1214B4 - 0x1215EC
; =========================================================

1214B4:  PUSH            {R4-R7,LR}
1214B6:  ADD             R7, SP, #0xC
1214B8:  PUSH.W          {R8-R11}
1214BC:  SUB             SP, SP, #0x94
1214BE:  LDR             R0, =(off_234AC8 - 0x1214C6)
1214C0:  MOV             R5, R1
1214C2:  ADD             R0, PC; off_234AC8
1214C4:  LDR             R0, [R0]; dword_381A9C
1214C6:  LDR             R4, [R0]
1214C8:  MOVS            R0, #0
1214CA:  LDR             R1, [R4]
1214CC:  CMP             R1, #0
1214CE:  BEQ.W           loc_1215E4
1214D2:  CMP             R1, #1
1214D4:  STRB.W          R0, [R7,#var_1D]
1214D8:  BLT.W           loc_1215E4
1214DC:  LDR             R0, =(off_234ACC - 0x1214EC)
1214DE:  MOVS            R6, #0
1214E0:  MOV.W           R11, #0xFFFFFFFF
1214E4:  MOV.W           R10, #0xFFFFFFFF
1214E8:  ADD             R0, PC; off_234ACC
1214EA:  LDR             R0, [R0]; dword_381A98
1214EC:  LDR.W           R9, [R0]
1214F0:  LDR             R0, =(aAxl - 0x1214F6); "AXL" ...
1214F2:  ADD             R0, PC; "AXL"
1214F4:  STR             R0, [SP,#0xB0+var_A4]
1214F6:  LDR             R0, =(aInvalidRuntime - 0x1214FC); "Invalid runtime at %d/%d (find texture "... ...
1214F8:  ADD             R0, PC; "Invalid runtime at %d/%d (find texture "...
1214FA:  STR             R0, [SP,#0xB0+var_A8]
1214FC:  LDR.W           R8, [R9]
121500:  LDR.W           R0, [R8,R6,LSL#2]
121504:  CBZ             R0, loc_12151C
121506:  SUB.W           R2, R7, #-var_1D
12150A:  MOV             R1, R5
12150C:  BL              sub_16390C
121510:  ADDS            R1, R0, #1
121512:  LDR             R1, [R4]
121514:  ITT NE
121516:  MOVNE           R10, R0
121518:  MOVNE           R11, R6
12151A:  B               loc_121542
12151C:  STRD.W          R1, R5, [SP,#0xB0+var_B0]
121520:  MOVS            R0, #6; prio
121522:  LDRD.W          R2, R1, [SP,#0xB0+var_A8]; fmt
121526:  MOV             R3, R6
121528:  BLX             __android_log_print
12152C:  LDR             R0, [R4]
12152E:  SUBS            R1, R0, #1
121530:  CMP             R6, R1
121532:  BEQ             loc_121540
121534:  LDR.W           R0, [R9]
121538:  LDR.W           R0, [R0,R1,LSL#2]
12153C:  STR.W           R0, [R8,R6,LSL#2]
121540:  STR             R1, [R4]
121542:  ADDS            R6, #1
121544:  CMP             R6, R1
121546:  BLT             loc_1214FC
121548:  LDRB.W          R0, [R7,#var_1D]
12154C:  CBZ             R0, loc_1215CA
12154E:  LDR             R0, =(off_234B60 - 0x121554)
121550:  ADD             R0, PC; off_234B60
121552:  LDR             R0, [R0]; dword_381AA0
121554:  LDR             R0, [R0]
121556:  LDR             R0, [R0]
121558:  LDRB            R1, [R0]
12155A:  CBZ             R1, loc_1215CA
12155C:  STRD.W          R5, R0, [SP,#0xB0+var_B0]
121560:  SUB.W           R5, R7, #-var_9D
121564:  MOV             R0, R5
121566:  BL              sub_1216B8
12156A:  LDR             R1, [R4]
12156C:  CMP             R1, #1
12156E:  BLT             loc_1215CA
121570:  LDR             R0, =(aAxl - 0x121578); "AXL" ...
121572:  MOVS            R6, #0
121574:  ADD             R0, PC; "AXL"
121576:  STR             R0, [SP,#0xB0+var_A4]
121578:  LDR             R0, =(aInvalidRuntime - 0x12157E); "Invalid runtime at %d/%d (find texture "... ...
12157A:  ADD             R0, PC; "Invalid runtime at %d/%d (find texture "...
12157C:  STR             R0, [SP,#0xB0+var_A8]
12157E:  LDR.W           R8, [R9]
121582:  LDR.W           R0, [R8,R6,LSL#2]
121586:  CBZ             R0, loc_12159E
121588:  SUB.W           R2, R7, #-var_1D
12158C:  MOV             R1, R5
12158E:  BL              sub_16390C
121592:  ADDS            R1, R0, #1
121594:  LDR             R1, [R4]
121596:  ITT NE
121598:  MOVNE           R10, R0
12159A:  MOVNE           R11, R6
12159C:  B               loc_1215C4
12159E:  STRD.W          R1, R5, [SP,#0xB0+var_B0]
1215A2:  MOVS            R0, #6; prio
1215A4:  LDRD.W          R2, R1, [SP,#0xB0+var_A8]; fmt
1215A8:  MOV             R3, R6
1215AA:  BLX             __android_log_print
1215AE:  LDR             R0, [R4]
1215B0:  SUBS            R1, R0, #1
1215B2:  CMP             R6, R1
1215B4:  BEQ             loc_1215C2
1215B6:  LDR.W           R0, [R9]
1215BA:  LDR.W           R0, [R0,R1,LSL#2]
1215BE:  STR.W           R0, [R8,R6,LSL#2]
1215C2:  STR             R1, [R4]
1215C4:  ADDS            R6, #1
1215C6:  CMP             R6, R1
1215C8:  BLT             loc_12157E
1215CA:  ADDS.W          R0, R11, #1
1215CE:  BEQ             loc_1215E2
1215D0:  LDR.W           R0, [R9]
1215D4:  LDR.W           R0, [R0,R11,LSL#2]
1215D8:  CBZ             R0, loc_1215E2
1215DA:  MOV             R1, R10
1215DC:  BL              sub_163950
1215E0:  B               loc_1215E4
1215E2:  MOVS            R0, #0
1215E4:  ADD             SP, SP, #0x94
1215E6:  POP.W           {R8-R11}
1215EA:  POP             {R4-R7,PC}
