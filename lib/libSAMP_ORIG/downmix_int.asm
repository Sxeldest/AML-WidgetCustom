; =========================================================
; Game Engine Function: downmix_int
; Address            : 0xC52E8 - 0xC5390
; =========================================================

C52E8:  PUSH            {R4-R7,LR}
C52EA:  ADD             R7, SP, #0xC
C52EC:  PUSH.W          {R8,R9,R11}
C52F0:  LDRD.W          LR, R12, [R7,#arg_4]
C52F4:  CMP             R2, #1
C52F6:  BLT             loc_C5318
C52F8:  LDR             R4, [R7,#arg_0]
C52FA:  MOV.W           R8, R12,LSL#1
C52FE:  MLA.W           R4, R12, R3, R4
C5302:  MOV             R6, R2
C5304:  MOV             R5, R1
C5306:  ADD.W           R4, R0, R4,LSL#1
C530A:  LDRSH.W         R9, [R4]
C530E:  ADD             R4, R8
C5310:  STR.W           R9, [R5],#4
C5314:  SUBS            R6, #1
C5316:  BNE             loc_C530A
C5318:  CMP.W           LR, #0
C531C:  BLT             loc_C5342
C531E:  CMP             R2, #1
C5320:  BLT             loc_C538A
C5322:  MLA.W           R3, R12, R3, LR
C5326:  ADD.W           R0, R0, R3,LSL#1
C532A:  MOV.W           R3, R12,LSL#1
C532E:  LDRSH.W         R6, [R0]
C5332:  ADD             R0, R3
C5334:  LDR             R5, [R1]
C5336:  SUBS            R2, #1
C5338:  ADD             R6, R5
C533A:  STR.W           R6, [R1],#4
C533E:  BNE             loc_C532E
C5340:  B               loc_C538A
C5342:  CMP.W           R12, #2
C5346:  BLT             loc_C538A
C5348:  ADDS.W          R6, LR, #2
C534C:  BNE             loc_C538A
C534E:  CMP             R2, #1
C5350:  BLT             loc_C538A
C5352:  MUL.W           R3, R12, R3
C5356:  MOV.W           R9, R12,LSL#1
C535A:  MOV.W           R8, #1
C535E:  ADD.W           R0, R0, R3,LSL#1
C5362:  ADD.W           LR, R0, #2
C5366:  MOV             R4, LR
C5368:  MOV             R5, R1
C536A:  MOV             R6, R2
C536C:  LDRSH.W         R0, [R4]
C5370:  ADD             R4, R9
C5372:  LDR             R3, [R5]
C5374:  SUBS            R6, #1
C5376:  ADD             R0, R3
C5378:  STR.W           R0, [R5],#4
C537C:  BNE             loc_C536C
C537E:  ADD.W           R8, R8, #1
C5382:  ADD.W           LR, LR, #2
C5386:  CMP             R8, R12
C5388:  BNE             loc_C5366
C538A:  POP.W           {R8,R9,R11}
C538E:  POP             {R4-R7,PC}
