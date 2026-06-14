; =========================================================
; Game Engine Function: sub_11E340
; Address            : 0x11E340 - 0x11E388
; =========================================================

11E340:  PUSH            {R4,R5,R7,LR}
11E342:  ADD             R7, SP, #8
11E344:  MOV             R4, R0
11E346:  LDR             R0, [R0,#0x10]
11E348:  MOV             R5, R1
11E34A:  MOVS            R1, #0
11E34C:  CMP             R4, R0
11E34E:  STR             R1, [R4,#0x10]
11E350:  BEQ             loc_11E358
11E352:  CBZ             R0, loc_11E362
11E354:  MOVS            R1, #5
11E356:  B               loc_11E35A
11E358:  MOVS            R1, #4
11E35A:  LDR             R2, [R0]
11E35C:  LDR.W           R1, [R2,R1,LSL#2]
11E360:  BLX             R1
11E362:  LDR             R0, [R5,#0x10]
11E364:  CBZ             R0, loc_11E372
11E366:  CMP             R5, R0
11E368:  BEQ             loc_11E378
11E36A:  STR             R0, [R4,#0x10]
11E36C:  MOVS            R0, #0
11E36E:  STR             R0, [R5,#0x10]
11E370:  B               loc_11E384
11E372:  MOVS            R0, #0
11E374:  STR             R0, [R4,#0x10]
11E376:  B               loc_11E384
11E378:  STR             R4, [R4,#0x10]
11E37A:  LDR             R0, [R5,#0x10]
11E37C:  LDR             R1, [R0]
11E37E:  LDR             R2, [R1,#0xC]
11E380:  MOV             R1, R4
11E382:  BLX             R2
11E384:  MOV             R0, R4
11E386:  POP             {R4,R5,R7,PC}
