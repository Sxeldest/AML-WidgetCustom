; =========================================================
; Game Engine Function: silk_insertion_sort_increasing
; Address            : 0xB827A - 0xB837A
; =========================================================

B827A:  PUSH            {R4-R7,LR}
B827C:  ADD             R7, SP, #0xC
B827E:  PUSH.W          {R8-R11}
B8282:  SUB             SP, SP, #8
B8284:  CMP             R3, #1
B8286:  MOV.W           R6, #0
B828A:  STR             R2, [SP,#0x24+var_20]
B828C:  BLT             loc_B82FC
B828E:  STR.W           R6, [R1,R6,LSL#2]
B8292:  ADDS            R6, #1
B8294:  CMP             R3, R6
B8296:  BNE             loc_B828E
B8298:  CMP             R3, #1
B829A:  MOV.W           R5, #0
B829E:  IT GT
B82A0:  MOVGT           R5, #1
B82A2:  MOVS            R6, #0
B82A4:  CMP             R3, #2
B82A6:  BLT             loc_B82FC
B82A8:  ADDS            R2, R1, #4
B82AA:  ADD.W           R8, R0, #4
B82AE:  MOV.W           LR, #1
B82B2:  STR             R5, [SP,#0x24+var_24]
B82B4:  LDR.W           R10, [R0,LR,LSL#2]
B82B8:  MOV             R11, R2
B82BA:  MOV             R4, R8
B82BC:  MOV             R9, LR
B82BE:  LDR.W           R6, [R4,#-4]
B82C2:  CMP             R10, R6
B82C4:  BGE             loc_B82E2
B82C6:  STR.W           R6, [R4],#-4
B82CA:  MOV             R6, R11
B82CC:  LDR.W           R12, [R6,#-4]!
B82D0:  SUB.W           R9, R9, #1
B82D4:  ADD.W           R5, R9, #1
B82D8:  STR.W           R12, [R11]
B82DC:  CMP             R5, #1
B82DE:  MOV             R11, R6
B82E0:  BGT             loc_B82BE
B82E2:  STR.W           R10, [R0,R9,LSL#2]
B82E6:  ADDS            R2, #4
B82E8:  ADD.W           R8, R8, #4
B82EC:  STR.W           LR, [R1,R9,LSL#2]
B82F0:  ADD.W           LR, LR, #1
B82F4:  CMP             LR, R3
B82F6:  BNE             loc_B82B4
B82F8:  LDRD.W          R6, R2, [SP,#0x24+var_24]
B82FC:  CMP             R3, R2
B82FE:  BGE             loc_B8372
B8300:  SUB.W           R12, R3, #1
B8304:  CMP             R6, #1
B8306:  BNE             loc_B8358
B8308:  ADD.W           LR, R1, R12,LSL#2
B830C:  ADD.W           R9, R0, R12,LSL#2
B8310:  LDR.W           R10, [R0,R3,LSL#2]
B8314:  LDR.W           R4, [R0,R12,LSL#2]
B8318:  CMP             R10, R4
B831A:  BGE             loc_B8350
B831C:  MOV             R11, LR
B831E:  MOV             R4, R9
B8320:  MOV             R5, R12
B8322:  LDR.W           R6, [R4,#-4]
B8326:  CMP             R10, R6
B8328:  BGE             loc_B8340
B832A:  STR.W           R6, [R4],#-4
B832E:  MOV             R6, R11
B8330:  LDR.W           R8, [R6,#-4]!
B8334:  SUBS            R5, #1
B8336:  STR.W           R8, [R11]
B833A:  CMP             R5, #0
B833C:  MOV             R11, R6
B833E:  BGT             loc_B8322
B8340:  SUBS            R4, R5, #1
B8342:  MOVS            R2, #4
B8344:  ADD.W           R4, R2, R4,LSL#2
B8348:  STR.W           R10, [R0,R4]
B834C:  STR             R3, [R1,R4]
B834E:  LDR             R2, [SP,#0x24+var_20]
B8350:  ADDS            R3, #1
B8352:  CMP             R3, R2
B8354:  BNE             loc_B8310
B8356:  B               loc_B8372
B8358:  LDR.W           R6, [R0,R3,LSL#2]
B835C:  LDR.W           R5, [R0,R12,LSL#2]
B8360:  CMP             R6, R5
B8362:  ITT LT
B8364:  STRLT.W         R6, [R0,R12,LSL#2]
B8368:  STRLT.W         R3, [R1,R12,LSL#2]
B836C:  ADDS            R3, #1
B836E:  CMP             R2, R3
B8370:  BNE             loc_B8358
B8372:  ADD             SP, SP, #8
B8374:  POP.W           {R8-R11}
B8378:  POP             {R4-R7,PC}
