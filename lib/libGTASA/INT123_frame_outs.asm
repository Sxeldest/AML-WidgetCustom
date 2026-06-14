; =========================================================
; Game Engine Function: INT123_frame_outs
; Address            : 0x226374 - 0x22645C
; =========================================================

226374:  PUSH            {R4-R7,LR}
226376:  ADD             R7, SP, #0xC
226378:  PUSH.W          {R8}
22637C:  MOVW            R2, #0x92D0
226380:  LDR             R3, [R0,R2]
226382:  CMP             R3, #3
226384:  BCS             loc_22639A
226386:  MOVW            R2, #0x92D8
22638A:  LDR             R2, [R0,R2]
22638C:  CMP             R2, #1
22638E:  BEQ             loc_226410
226390:  CMP             R2, #2
226392:  BNE             loc_226416
226394:  MOV.W           R0, #0x480
226398:  B               loc_226436
22639A:  BNE             loc_226440
22639C:  CMP             R1, #1
22639E:  BLT             loc_226454
2263A0:  MOVW            R2, #0x9190
2263A4:  MOVW            R3, #0x92D8
2263A8:  LDR             R2, [R0,R2]
2263AA:  MOVW            R6, #0x92CC
2263AE:  LDR             R3, [R0,R3]
2263B0:  ADD.W           R12, R0, R6
2263B4:  MOVW            R6, #0x92C8
2263B8:  ADD.W           LR, R0, R6
2263BC:  MOVS            R0, #0
2263BE:  MOV.W           R5, #0x4000
2263C2:  MOVW            R8, #0x7FFF
2263C6:  CMP             R3, #1
2263C8:  BEQ             loc_2263D4
2263CA:  CMP             R3, #2
2263CC:  BNE             loc_2263DA
2263CE:  MOV.W           R6, #0x480
2263D2:  B               loc_2263EE
2263D4:  MOV.W           R6, #0x180
2263D8:  B               loc_2263EE
2263DA:  LDR.W           R6, [LR]
2263DE:  CMP             R6, #0
2263E0:  ITT EQ
2263E2:  LDREQ.W         R6, [R12]
2263E6:  CMPEQ           R6, #0
2263E8:  BEQ             loc_2263CE
2263EA:  MOV.W           R6, #0x240
2263EE:  MLA.W           R5, R6, R2, R5
2263F2:  SUBS            R1, #1
2263F4:  MOV.W           R6, R5,ASR#31
2263F8:  ADD.W           R6, R5, R6,LSR#17
2263FC:  BIC.W           R4, R6, R8
226400:  SUB.W           R5, R5, R4
226404:  ADD.W           R0, R0, R6,ASR#15
226408:  BNE             loc_2263C6
22640A:  POP.W           {R8}
22640E:  POP             {R4-R7,PC}
226410:  MOV.W           R0, #0x180
226414:  B               loc_226436
226416:  MOVW            R2, #0x92C8
22641A:  LDR             R2, [R0,R2]
22641C:  CBZ             R2, loc_226424
22641E:  MOV.W           R0, #0x240
226422:  B               loc_226436
226424:  MOVW            R2, #0x92CC
226428:  LDR             R2, [R0,R2]
22642A:  MOV.W           R0, #0x480
22642E:  CMP             R2, #0
226430:  IT NE
226432:  MOVNE.W         R0, #0x240
226436:  LSRS            R0, R3
226438:  MULS            R0, R1
22643A:  POP.W           {R8}
22643E:  POP             {R4-R7,PC}
226440:  LDR             R0, =(off_677664 - 0x22644C)
226442:  MOV.W           R2, #0x2E8
226446:  LDR             R1, =(aCProjectsOswra_5 - 0x22644E); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
226448:  ADD             R0, PC; off_677664
22644A:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22644C:  LDR             R0, [R0]
22644E:  LDR             R0, [R0]; stream
226450:  BLX             fprintf
226454:  MOVS            R0, #0
226456:  POP.W           {R8}
22645A:  POP             {R4-R7,PC}
