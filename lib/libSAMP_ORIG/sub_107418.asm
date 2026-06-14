; =========================================================
; Game Engine Function: sub_107418
; Address            : 0x107418 - 0x10745A
; =========================================================

107418:  PUSH            {R4-R7,LR}
10741A:  ADD             R7, SP, #0xC
10741C:  PUSH.W          {R11}
107420:  LDR             R6, =(sub_107758+1 - 0x10742C)
107422:  MOV             R5, R2
107424:  MOV             R2, R0
107426:  MOV             R4, R1
107428:  ADD             R6, PC; sub_107758
10742A:  MOV             R0, R1
10742C:  MOVS            R1, #0
10742E:  BLX             R6; sub_107758
107430:  LDR             R2, [R5]
107432:  MOV             R0, R4
107434:  MOVS            R1, #1
107436:  BLX             R6; sub_107758
107438:  MOV             R0, R4
10743A:  MOVS            R1, #0xF
10743C:  LDR             R5, [R5,#0x10]
10743E:  BL              sub_1073C0
107442:  AND.W           R0, R0, #1
107446:  MOVS            R1, #0xF
107448:  ORR.W           R2, R0, R5
10744C:  MOV             R0, R4
10744E:  MOV             R3, R6
107450:  POP.W           {R11}
107454:  POP.W           {R4-R7,LR}
107458:  BX              R3; sub_107758
