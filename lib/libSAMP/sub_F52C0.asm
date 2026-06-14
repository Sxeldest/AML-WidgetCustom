; =========================================================
; Game Engine Function: sub_F52C0
; Address            : 0xF52C0 - 0xF5360
; =========================================================

F52C0:  PUSH            {R4-R7,LR}
F52C2:  ADD             R7, SP, #0xC
F52C4:  PUSH.W          {R11}
F52C8:  SUB             SP, SP, #0x10
F52CA:  CMP             R1, R0
F52CC:  BEQ             loc_F5358
F52CE:  MOV             R5, R0
F52D0:  LDR             R0, [R0,#0x10]
F52D2:  MOV             R4, R1
F52D4:  CMP             R0, R5
F52D6:  BEQ             loc_F52E4
F52D8:  LDR             R1, [R4,#0x10]
F52DA:  CMP             R4, R1
F52DC:  BEQ             loc_F5300
F52DE:  STR             R1, [R5,#0x10]
F52E0:  STR             R0, [R4,#0x10]
F52E2:  B               loc_F5358
F52E4:  LDR             R1, [R4,#0x10]
F52E6:  CMP             R1, R4
F52E8:  BEQ             loc_F531A
F52EA:  LDR             R1, [R0]
F52EC:  LDR             R2, [R1,#0xC]
F52EE:  MOV             R1, R4
F52F0:  BLX             R2
F52F2:  LDR             R0, [R5,#0x10]
F52F4:  LDR             R1, [R0]
F52F6:  LDR             R1, [R1,#0x10]
F52F8:  BLX             R1
F52FA:  LDR             R0, [R4,#0x10]
F52FC:  STR             R0, [R5,#0x10]
F52FE:  B               loc_F5356
F5300:  LDR             R0, [R1]
F5302:  LDR             R2, [R0,#0xC]
F5304:  MOV             R0, R1
F5306:  MOV             R1, R5
F5308:  BLX             R2
F530A:  LDR             R0, [R4,#0x10]
F530C:  LDR             R1, [R0]
F530E:  LDR             R1, [R1,#0x10]
F5310:  BLX             R1
F5312:  LDR             R0, [R5,#0x10]
F5314:  STR             R0, [R4,#0x10]
F5316:  STR             R5, [R5,#0x10]
F5318:  B               loc_F5358
F531A:  LDR             R1, [R0]
F531C:  LDR             R2, [R1,#0xC]
F531E:  MOV             R1, SP
F5320:  BLX             R2
F5322:  LDR             R0, [R5,#0x10]
F5324:  LDR             R1, [R0]
F5326:  LDR             R1, [R1,#0x10]
F5328:  BLX             R1
F532A:  MOVS            R6, #0
F532C:  STR             R6, [R5,#0x10]
F532E:  LDR             R0, [R4,#0x10]
F5330:  LDR             R1, [R0]
F5332:  LDR             R2, [R1,#0xC]
F5334:  MOV             R1, R5
F5336:  BLX             R2
F5338:  LDR             R0, [R4,#0x10]
F533A:  LDR             R1, [R0]
F533C:  LDR             R1, [R1,#0x10]
F533E:  BLX             R1
F5340:  LDR             R0, [SP,#0x20+var_20]
F5342:  STR             R6, [R4,#0x10]
F5344:  STR             R5, [R5,#0x10]
F5346:  LDR             R2, [R0,#0xC]
F5348:  MOV             R0, SP
F534A:  MOV             R1, R4
F534C:  BLX             R2
F534E:  LDR             R0, [SP,#0x20+var_20]
F5350:  LDR             R1, [R0,#0x10]
F5352:  MOV             R0, SP
F5354:  BLX             R1
F5356:  STR             R4, [R4,#0x10]
F5358:  ADD             SP, SP, #0x10
F535A:  POP.W           {R11}
F535E:  POP             {R4-R7,PC}
