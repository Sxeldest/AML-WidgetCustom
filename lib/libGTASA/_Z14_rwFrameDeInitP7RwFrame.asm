; =========================================================
; Game Engine Function: _Z14_rwFrameDeInitP7RwFrame
; Address            : 0x1D8338 - 0x1D83E8
; =========================================================

1D8338:  PUSH            {R4,R6,R7,LR}
1D833A:  ADD             R7, SP, #8
1D833C:  MOV             R4, R0
1D833E:  LDR             R0, =(frameTKList_ptr - 0x1D8346)
1D8340:  MOV             R1, R4
1D8342:  ADD             R0, PC; frameTKList_ptr
1D8344:  LDR             R0, [R0]; frameTKList
1D8346:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
1D834A:  LDR             R0, [R4,#4]
1D834C:  CBZ             R0, loc_1D83BC
1D834E:  LDR.W           R1, [R0,#0x98]!
1D8352:  CMP             R1, R4
1D8354:  BEQ             loc_1D8360
1D8356:  MOV             R0, R1
1D8358:  LDR.W           R1, [R0,#0x9C]!
1D835C:  CMP             R1, R4
1D835E:  BNE             loc_1D8356
1D8360:  LDR.W           R1, [R4,#0x9C]
1D8364:  STR             R1, [R0]
1D8366:  MOVS            R0, #0
1D8368:  STR.W           R0, [R4,#0x9C]
1D836C:  MOV             R1, R4
1D836E:  STR             R0, [R4,#4]
1D8370:  MOV             R0, R4
1D8372:  BL              sub_1D8116
1D8376:  LDR.W           R1, [R4,#0xA0]
1D837A:  LDRB            R0, [R1,#3]
1D837C:  TST.W           R0, #3
1D8380:  BNE             loc_1D83AC
1D8382:  LDR             R2, =(RwEngineInstance_ptr - 0x1D8388)
1D8384:  ADD             R2, PC; RwEngineInstance_ptr
1D8386:  LDR             R2, [R2]; RwEngineInstance
1D8388:  LDR             R2, [R2]
1D838A:  LDR.W           R3, [R2,#0xBC]!
1D838E:  STR             R3, [R1,#8]
1D8390:  LDR.W           R1, [R4,#0xA0]
1D8394:  STR             R2, [R1,#0xC]
1D8396:  LDR             R1, [R2]
1D8398:  LDR.W           R3, [R4,#0xA0]
1D839C:  ADDS            R3, #8
1D839E:  STR             R3, [R1,#4]
1D83A0:  LDR.W           R1, [R4,#0xA0]
1D83A4:  ADDS            R1, #8
1D83A6:  STR             R1, [R2]
1D83A8:  LDR.W           R1, [R4,#0xA0]
1D83AC:  ORR.W           R0, R0, #3
1D83B0:  STRB            R0, [R1,#3]
1D83B2:  LDRB            R0, [R4,#3]
1D83B4:  ORR.W           R0, R0, #0xC
1D83B8:  STRB            R0, [R4,#3]
1D83BA:  B               loc_1D83BE
1D83BC:  LDRB            R0, [R4,#3]
1D83BE:  LSLS            R0, R0, #0x1E
1D83C0:  ITTTT NE
1D83C2:  LDRDNE.W        R0, R1, [R4,#8]
1D83C6:  STRNE           R0, [R1]
1D83C8:  LDRDNE.W        R0, R1, [R4,#8]
1D83CC:  STRNE           R1, [R0,#4]
1D83CE:  LDR.W           R0, [R4,#0x98]
1D83D2:  CMP             R0, #0
1D83D4:  IT EQ
1D83D6:  POPEQ           {R4,R6,R7,PC}
1D83D8:  MOVS            R1, #0
1D83DA:  LDR.W           R2, [R0,#0x9C]
1D83DE:  STR             R1, [R0,#4]
1D83E0:  CMP             R2, #0
1D83E2:  MOV             R0, R2
1D83E4:  BNE             loc_1D83DA
1D83E6:  POP             {R4,R6,R7,PC}
