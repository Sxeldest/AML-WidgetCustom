; =========================================================
; Game Engine Function: INT123_ntom_frmouts
; Address            : 0x226464 - 0x2264E8
; =========================================================

226464:  PUSH            {R4-R7,LR}
226466:  ADD             R7, SP, #0xC
226468:  PUSH.W          {R8}
22646C:  CMP             R1, #1
22646E:  BLT             loc_2264E0
226470:  MOVW            R2, #0x9190
226474:  MOVW            R3, #0x92D8
226478:  LDR             R2, [R0,R2]
22647A:  MOVW            R6, #0x92CC
22647E:  LDR             R3, [R0,R3]
226480:  ADD.W           R12, R0, R6
226484:  MOVW            R6, #0x92C8
226488:  ADD.W           LR, R0, R6
22648C:  MOVS            R0, #0
22648E:  MOV.W           R5, #0x4000
226492:  MOVW            R8, #0x7FFF
226496:  CMP             R3, #1
226498:  BEQ             loc_2264A4
22649A:  CMP             R3, #2
22649C:  BNE             loc_2264AA
22649E:  MOV.W           R6, #0x480
2264A2:  B               loc_2264BE
2264A4:  MOV.W           R6, #0x180
2264A8:  B               loc_2264BE
2264AA:  LDR.W           R6, [LR]
2264AE:  CMP             R6, #0
2264B0:  ITT EQ
2264B2:  LDREQ.W         R6, [R12]
2264B6:  CMPEQ           R6, #0
2264B8:  BEQ             loc_22649E
2264BA:  MOV.W           R6, #0x240
2264BE:  MLA.W           R5, R2, R6, R5
2264C2:  SUBS            R1, #1
2264C4:  MOV.W           R6, R5,ASR#31
2264C8:  ADD.W           R6, R5, R6,LSR#17
2264CC:  BIC.W           R4, R6, R8
2264D0:  SUB.W           R5, R5, R4
2264D4:  ADD.W           R0, R0, R6,ASR#15
2264D8:  BNE             loc_226496
2264DA:  POP.W           {R8}
2264DE:  POP             {R4-R7,PC}
2264E0:  MOVS            R0, #0
2264E2:  POP.W           {R8}
2264E6:  POP             {R4-R7,PC}
