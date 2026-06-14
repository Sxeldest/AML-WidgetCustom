; =========================================================
; Game Engine Function: sub_10D30C
; Address            : 0x10D30C - 0x10D3AC
; =========================================================

10D30C:  PUSH            {R4-R7,LR}
10D30E:  ADD             R7, SP, #0xC
10D310:  PUSH.W          {R11}
10D314:  SUB             SP, SP, #0x10
10D316:  CMP             R1, R0
10D318:  BEQ             loc_10D3A4
10D31A:  MOV             R5, R0
10D31C:  LDR             R0, [R0,#0x10]
10D31E:  MOV             R4, R1
10D320:  CMP             R0, R5
10D322:  BEQ             loc_10D330
10D324:  LDR             R1, [R4,#0x10]
10D326:  CMP             R4, R1
10D328:  BEQ             loc_10D34C
10D32A:  STR             R1, [R5,#0x10]
10D32C:  STR             R0, [R4,#0x10]
10D32E:  B               loc_10D3A4
10D330:  LDR             R1, [R4,#0x10]
10D332:  CMP             R1, R4
10D334:  BEQ             loc_10D366
10D336:  LDR             R1, [R0]
10D338:  LDR             R2, [R1,#0xC]
10D33A:  MOV             R1, R4
10D33C:  BLX             R2
10D33E:  LDR             R0, [R5,#0x10]
10D340:  LDR             R1, [R0]
10D342:  LDR             R1, [R1,#0x10]
10D344:  BLX             R1
10D346:  LDR             R0, [R4,#0x10]
10D348:  STR             R0, [R5,#0x10]
10D34A:  B               loc_10D3A2
10D34C:  LDR             R0, [R1]
10D34E:  LDR             R2, [R0,#0xC]
10D350:  MOV             R0, R1
10D352:  MOV             R1, R5
10D354:  BLX             R2
10D356:  LDR             R0, [R4,#0x10]
10D358:  LDR             R1, [R0]
10D35A:  LDR             R1, [R1,#0x10]
10D35C:  BLX             R1
10D35E:  LDR             R0, [R5,#0x10]
10D360:  STR             R0, [R4,#0x10]
10D362:  STR             R5, [R5,#0x10]
10D364:  B               loc_10D3A4
10D366:  LDR             R1, [R0]
10D368:  LDR             R2, [R1,#0xC]
10D36A:  MOV             R1, SP
10D36C:  BLX             R2
10D36E:  LDR             R0, [R5,#0x10]
10D370:  LDR             R1, [R0]
10D372:  LDR             R1, [R1,#0x10]
10D374:  BLX             R1
10D376:  MOVS            R6, #0
10D378:  STR             R6, [R5,#0x10]
10D37A:  LDR             R0, [R4,#0x10]
10D37C:  LDR             R1, [R0]
10D37E:  LDR             R2, [R1,#0xC]
10D380:  MOV             R1, R5
10D382:  BLX             R2
10D384:  LDR             R0, [R4,#0x10]
10D386:  LDR             R1, [R0]
10D388:  LDR             R1, [R1,#0x10]
10D38A:  BLX             R1
10D38C:  LDR             R0, [SP,#0x20+var_20]
10D38E:  STR             R6, [R4,#0x10]
10D390:  STR             R5, [R5,#0x10]
10D392:  LDR             R2, [R0,#0xC]
10D394:  MOV             R0, SP
10D396:  MOV             R1, R4
10D398:  BLX             R2
10D39A:  LDR             R0, [SP,#0x20+var_20]
10D39C:  LDR             R1, [R0,#0x10]
10D39E:  MOV             R0, SP
10D3A0:  BLX             R1
10D3A2:  STR             R4, [R4,#0x10]
10D3A4:  ADD             SP, SP, #0x10
10D3A6:  POP.W           {R11}
10D3AA:  POP             {R4-R7,PC}
