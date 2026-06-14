; =========================================================
; Game Engine Function: sub_60318
; Address            : 0x60318 - 0x60392
; =========================================================

60318:  PUSH            {R4-R7,LR}
6031A:  ADD             R7, SP, #0xC
6031C:  PUSH.W          {R8}
60320:  MOV             R4, R1
60322:  LDR             R1, =(aSampOrig - 0x6032E); "SAMP_ORIG" ...
60324:  LDR             R2, =(aStopS - 0x60330); "Stop: %s" ...
60326:  MOV             R5, R0
60328:  LDR             R3, =(unk_117398 - 0x60334)
6032A:  ADD             R1, PC; "SAMP_ORIG"
6032C:  ADD             R2, PC; "Stop: %s"
6032E:  MOVS            R0, #4; prio
60330:  ADD             R3, PC; unk_117398
60332:  BLX             __android_log_print
60336:  LDR             R6, =(byte_1174AE - 0x6033E)
60338:  LDRB            R0, [R5]
6033A:  ADD             R6, PC; byte_1174AE
6033C:  CLZ.W           R0, R0
60340:  LDRB            R1, [R6]
60342:  LSRS            R0, R0, #5
60344:  CLZ.W           R1, R1
60348:  LSRS            R1, R1, #5
6034A:  ORRS.W          R5, R0, R1
6034E:  BNE             loc_60388
60350:  LDR             R0, =(byte_1174AF - 0x6035C)
60352:  MOV.W           R8, #0
60356:  LDR             R1, =(byte_1174AD - 0x6035E)
60358:  ADD             R0, PC; byte_1174AF
6035A:  ADD             R1, PC; byte_1174AD
6035C:  STRB.W          R8, [R0]
60360:  MOV.W           R0, #1
60364:  STRB            R0, [R1]
60366:  CBZ             R4, loc_60374
60368:  MOVS            R0, #0xC8; useconds
6036A:  BLX             usleep
6036E:  LDRB            R0, [R6]
60370:  CMP             R0, #0
60372:  BNE             loc_60368
60374:  LDR             R0, =(off_114AAC - 0x6037C)
60376:  LDR             R4, =(dword_117394 - 0x6037E)
60378:  ADD             R0, PC; off_114AAC
6037A:  ADD             R4, PC; dword_117394
6037C:  LDR             R1, [R0]; off_1ABF08
6037E:  LDR             R0, [R4]
60380:  LDR             R1, [R1]
60382:  BLX             R1
60384:  STR.W           R8, [R4]
60388:  EOR.W           R0, R5, #1
6038C:  POP.W           {R8}
60390:  POP             {R4-R7,PC}
