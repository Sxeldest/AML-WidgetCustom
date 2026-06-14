; =========================================================
; Game Engine Function: _Z18RwFrameRemoveChildP7RwFrame
; Address            : 0x1D83F0 - 0x1D8468
; =========================================================

1D83F0:  PUSH            {R4,R6,R7,LR}
1D83F2:  ADD             R7, SP, #8
1D83F4:  MOV             R4, R0
1D83F6:  LDR             R0, [R4,#4]
1D83F8:  LDR.W           R1, [R0,#0x98]!
1D83FC:  CMP             R1, R4
1D83FE:  BEQ             loc_1D840A
1D8400:  MOV             R0, R1
1D8402:  LDR.W           R1, [R0,#0x9C]!
1D8406:  CMP             R1, R4
1D8408:  BNE             loc_1D8400
1D840A:  LDR.W           R1, [R4,#0x9C]
1D840E:  STR             R1, [R0]
1D8410:  MOVS            R0, #0
1D8412:  STR.W           R0, [R4,#0x9C]
1D8416:  MOV             R1, R4
1D8418:  STR             R0, [R4,#4]
1D841A:  MOV             R0, R4
1D841C:  BL              sub_1D8116
1D8420:  LDR.W           R1, [R4,#0xA0]
1D8424:  LDRB            R0, [R1,#3]
1D8426:  TST.W           R0, #3
1D842A:  BNE             loc_1D8456
1D842C:  LDR             R2, =(RwEngineInstance_ptr - 0x1D8432)
1D842E:  ADD             R2, PC; RwEngineInstance_ptr
1D8430:  LDR             R2, [R2]; RwEngineInstance
1D8432:  LDR             R2, [R2]
1D8434:  LDR.W           R3, [R2,#0xBC]!
1D8438:  STR             R3, [R1,#8]
1D843A:  LDR.W           R1, [R4,#0xA0]
1D843E:  STR             R2, [R1,#0xC]
1D8440:  LDR             R1, [R2]
1D8442:  LDR.W           R3, [R4,#0xA0]
1D8446:  ADDS            R3, #8
1D8448:  STR             R3, [R1,#4]
1D844A:  LDR.W           R1, [R4,#0xA0]
1D844E:  ADDS            R1, #8
1D8450:  STR             R1, [R2]
1D8452:  LDR.W           R1, [R4,#0xA0]
1D8456:  ORR.W           R0, R0, #3
1D845A:  STRB            R0, [R1,#3]
1D845C:  LDRB            R0, [R4,#3]
1D845E:  ORR.W           R0, R0, #0xC
1D8462:  STRB            R0, [R4,#3]
1D8464:  MOV             R0, R4
1D8466:  POP             {R4,R6,R7,PC}
