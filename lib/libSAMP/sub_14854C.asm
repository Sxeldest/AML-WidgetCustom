; =========================================================
; Game Engine Function: sub_14854C
; Address            : 0x14854C - 0x1485EC
; =========================================================

14854C:  PUSH            {R4-R7,LR}
14854E:  ADD             R7, SP, #0xC
148550:  PUSH.W          {R8-R11}
148554:  SUB             SP, SP, #4
148556:  VPUSH           {D8}
14855A:  SUB             SP, SP, #0x18
14855C:  MOV             R12, R3
14855E:  MOV             R10, R2
148560:  MOV             R8, R0
148562:  ADD.W           R0, R0, R1,LSL#2
148566:  LDR             R2, [R7,#arg_10]
148568:  ADD.W           R11, R0, #0x3EC
14856C:  LDRD.W          R5, R6, [R7,#arg_8]
148570:  MOV             R4, R1
148572:  LDRD.W          R3, LR, [R7,#arg_0]
148576:  LSRS            R1, R1, #3
148578:  VLDR            S16, [R7,#arg_14]
14857C:  CMP             R1, #0x7C ; '|'
14857E:  BHI             loc_1485AE
148580:  LDR.W           R0, [R0,#0x3EC]
148584:  CBZ             R0, loc_1485AE
148586:  ADD.W           R9, R8, R4
14858A:  LDRB.W          R1, [R9,#4]!
14858E:  CBZ             R1, loc_1485AE
148590:  LDR             R1, [R0]
148592:  MOV             R6, R12
148594:  LDR             R1, [R1,#4]
148596:  BLX             R1
148598:  MOV             R12, R6
14859A:  LDR.W           LR, [R7,#arg_4]
14859E:  LDRD.W          R6, R2, [R7,#arg_C]
1485A2:  MOVS            R0, #0
1485A4:  LDR             R3, [R7,#arg_0]
1485A6:  STRB.W          R0, [R9]
1485AA:  STR.W           R0, [R11]
1485AE:  LDR             R0, =(off_234970 - 0x1485BC)
1485B0:  MOV             R1, R10
1485B2:  STRD.W          R6, R2, [SP,#0x40+var_38]
1485B6:  MOV             R2, R12
1485B8:  ADD             R0, PC; off_234970
1485BA:  VSTR            S16, [SP,#0x40+var_30]
1485BE:  STRD.W          LR, R5, [SP,#0x40+var_40]
1485C2:  LDR             R0, [R0]; dword_23DEF0
1485C4:  LDR             R0, [R0]
1485C6:  BL              sub_F9D98
1485CA:  STR.W           R0, [R11]
1485CE:  CBZ             R0, loc_1485D8
1485D0:  ADD.W           R1, R8, R4
1485D4:  MOVS            R2, #1
1485D6:  STRB            R2, [R1,#4]
1485D8:  CMP             R0, #0
1485DA:  IT NE
1485DC:  MOVNE           R0, #1
1485DE:  ADD             SP, SP, #0x18
1485E0:  VPOP            {D8}
1485E4:  ADD             SP, SP, #4
1485E6:  POP.W           {R8-R11}
1485EA:  POP             {R4-R7,PC}
