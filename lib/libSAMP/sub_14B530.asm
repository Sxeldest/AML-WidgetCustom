; =========================================================
; Game Engine Function: sub_14B530
; Address            : 0x14B530 - 0x14B5B0
; =========================================================

14B530:  PUSH            {R4-R7,LR}
14B532:  ADD             R7, SP, #0xC
14B534:  PUSH.W          {R8}
14B538:  MOV             R5, R0
14B53A:  LSRS            R0, R1, #4
14B53C:  CMP             R0, #0x7C ; '|'
14B53E:  BHI             loc_14B588
14B540:  LDR             R0, =(off_23496C - 0x14B54A)
14B542:  MOV             R8, R2
14B544:  MOV             R6, R1
14B546:  ADD             R0, PC; off_23496C
14B548:  LDR             R0, [R0]; dword_23DEF4
14B54A:  LDR             R0, [R0]
14B54C:  LDR.W           R0, [R0,#0x3B0]
14B550:  LDR             R4, [R0,#4]
14B552:  MOV             R0, R4
14B554:  BL              sub_F2396
14B558:  CBZ             R0, loc_14B588
14B55A:  LDR.W           R0, [R4,R6,LSL#2]
14B55E:  CBZ             R0, loc_14B588
14B560:  LDR.W           R0, [R5,#0x128]
14B564:  CBZ             R0, loc_14B588
14B566:  BL              sub_104108
14B56A:  CBNZ            R0, loc_14B588
14B56C:  ADD.W           R0, R4, R6,LSL#2
14B570:  MOV.W           R1, #0x1F40
14B574:  LDR             R0, [R0,R1]
14B576:  CBZ             R0, loc_14B588
14B578:  BL              sub_10833C
14B57C:  CBZ             R0, loc_14B588
14B57E:  MOV             R4, R0
14B580:  MOVW            R0, #0xFFFF
14B584:  CMP             R4, R0
14B586:  BNE             loc_14B58E
14B588:  POP.W           {R8}
14B58C:  POP             {R4-R7,PC}
14B58E:  LDR.W           R0, [R5,#0x128]
14B592:  MOVS            R1, #0
14B594:  MOVS            R2, #0
14B596:  MOVS            R3, #0
14B598:  BL              sub_104B1C
14B59C:  LDR.W           R0, [R5,#0x128]
14B5A0:  MOV             R1, R4
14B5A2:  MOV             R2, R8
14B5A4:  POP.W           {R8}
14B5A8:  POP.W           {R4-R7,LR}
14B5AC:  B.W             sub_105378
