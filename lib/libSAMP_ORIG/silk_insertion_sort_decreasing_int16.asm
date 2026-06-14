; =========================================================
; Game Engine Function: silk_insertion_sort_decreasing_int16
; Address            : 0xB837A - 0xB847E
; =========================================================

B837A:  PUSH            {R4-R7,LR}
B837C:  ADD             R7, SP, #0xC
B837E:  PUSH.W          {R8-R11}
B8382:  SUB             SP, SP, #8
B8384:  CMP             R3, #1
B8386:  MOV.W           R6, #0
B838A:  STR             R2, [SP,#0x24+var_20]
B838C:  BLT             loc_B83FC
B838E:  STR.W           R6, [R1,R6,LSL#2]
B8392:  ADDS            R6, #1
B8394:  CMP             R3, R6
B8396:  BNE             loc_B838E
B8398:  CMP             R3, #1
B839A:  MOV.W           R5, #0
B839E:  IT GT
B83A0:  MOVGT           R5, #1
B83A2:  MOVS            R6, #0
B83A4:  CMP             R3, #2
B83A6:  BLT             loc_B83FC
B83A8:  ADDS            R2, R1, #4
B83AA:  ADD.W           R8, R0, #2
B83AE:  MOV.W           LR, #1
B83B2:  STR             R5, [SP,#0x24+var_24]
B83B4:  LDRSH.W         R10, [R0,LR,LSL#1]
B83B8:  MOV             R11, R2
B83BA:  MOV             R4, R8
B83BC:  MOV             R9, LR
B83BE:  LDRSH.W         R6, [R4,#-2]
B83C2:  CMP             R10, R6
B83C4:  BLE             loc_B83E2
B83C6:  STRH.W          R6, [R4],#-2
B83CA:  MOV             R6, R11
B83CC:  LDR.W           R12, [R6,#-4]!
B83D0:  SUB.W           R9, R9, #1
B83D4:  ADD.W           R5, R9, #1
B83D8:  STR.W           R12, [R11]
B83DC:  CMP             R5, #1
B83DE:  MOV             R11, R6
B83E0:  BGT             loc_B83BE
B83E2:  STRH.W          R10, [R0,R9,LSL#1]
B83E6:  ADDS            R2, #4
B83E8:  ADD.W           R8, R8, #2
B83EC:  STR.W           LR, [R1,R9,LSL#2]
B83F0:  ADD.W           LR, LR, #1
B83F4:  CMP             LR, R3
B83F6:  BNE             loc_B83B4
B83F8:  LDRD.W          R6, R2, [SP,#0x24+var_24]
B83FC:  CMP             R3, R2
B83FE:  BGE             loc_B8476
B8400:  SUB.W           R12, R3, #1
B8404:  CMP             R6, #1
B8406:  BNE             loc_B8458
B8408:  SUBS            R6, R3, #2
B840A:  ADD.W           R8, R1, R12,LSL#2
B840E:  ADD.W           LR, R0, R6,LSL#1
B8412:  LDRSH.W         R9, [R0,R3,LSL#1]
B8416:  LDRSH.W         R4, [R0,R12,LSL#1]
B841A:  CMP             R9, R4
B841C:  BLE             loc_B8450
B841E:  MOV             R10, R8
B8420:  MOV             R4, LR
B8422:  MOV             R6, R12
B8424:  LDRSH.W         R5, [R4]
B8428:  CMP             R9, R5
B842A:  BLE             loc_B8442
B842C:  STRH            R5, [R4,#2]
B842E:  MOV             R11, R10
B8430:  LDR.W           R5, [R11,#-4]!
B8434:  SUBS            R6, #1
B8436:  SUBS            R4, #2
B8438:  STR.W           R5, [R10]
B843C:  CMP             R6, #0
B843E:  MOV             R10, R11
B8440:  BGT             loc_B8424
B8442:  SUBS            R4, R6, #1
B8444:  ADDS            R4, #1
B8446:  STRH.W          R9, [R0,R4,LSL#1]
B844A:  STR.W           R3, [R1,R4,LSL#2]
B844E:  LDR             R2, [SP,#0x24+var_20]
B8450:  ADDS            R3, #1
B8452:  CMP             R3, R2
B8454:  BNE             loc_B8412
B8456:  B               loc_B8476
B8458:  LDRH.W          R5, [R0,R12,LSL#1]
B845C:  LDRSH.W         R6, [R0,R3,LSL#1]
B8460:  SXTH            R4, R5
B8462:  CMP             R6, R4
B8464:  BLE             loc_B8470
B8466:  MOV             R5, R6
B8468:  STRH.W          R6, [R0,R12,LSL#1]
B846C:  STR.W           R3, [R1,R12,LSL#2]
B8470:  ADDS            R3, #1
B8472:  CMP             R2, R3
B8474:  BNE             loc_B845C
B8476:  ADD             SP, SP, #8
B8478:  POP.W           {R8-R11}
B847C:  POP             {R4-R7,PC}
