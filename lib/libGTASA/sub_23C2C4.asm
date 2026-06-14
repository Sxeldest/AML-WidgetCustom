; =========================================================
; Game Engine Function: sub_23C2C4
; Address            : 0x23C2C4 - 0x23C3A2
; =========================================================

23C2C4:  PUSH            {R4-R7,LR}
23C2C6:  ADD             R7, SP, #0xC
23C2C8:  PUSH.W          {R8-R11}
23C2CC:  SUB             SP, SP, #4
23C2CE:  MOVW            R3, #0xB328
23C2D2:  MOV             R10, R2
23C2D4:  MOVW            R2, #0xB32C
23C2D8:  MOV             R8, R1
23C2DA:  LDR             R1, [R0,R2]
23C2DC:  ADD.W           R9, R0, R2
23C2E0:  LDR             R3, [R0,R3]
23C2E2:  SUBS            R3, R3, R1
23C2E4:  CMP             R3, R10
23C2E6:  BGE             loc_23C2F8
23C2E8:  MOVW            R1, #0xB330
23C2EC:  MOV             R11, #0xFFFFFFF6
23C2F0:  LDR             R0, [R0,R1]
23C2F2:  STR.W           R0, [R9]
23C2F6:  B               loc_23C388
23C2F8:  MOVW            R2, #0xB320
23C2FC:  LDR             R5, [R0,R2]
23C2FE:  CMP             R5, #0
23C300:  BEQ             loc_23C384
23C302:  MOVS            R4, #0
23C304:  LDR             R0, [R5,#4]
23C306:  ADDS            R2, R0, R4
23C308:  CMP             R2, R1
23C30A:  BGT             loc_23C316
23C30C:  LDR             R5, [R5,#0xC]
23C30E:  MOV             R4, R2
23C310:  CMP             R5, #0
23C312:  BNE             loc_23C304
23C314:  B               loc_23C384
23C316:  CMP.W           R10, #1
23C31A:  BLT             loc_23C384
23C31C:  SUBS            R1, R1, R4
23C31E:  LDR             R2, [R5]
23C320:  SUBS            R6, R0, R1
23C322:  MOV             R11, R10
23C324:  CMP             R6, R10
23C326:  ADD             R1, R2; void *
23C328:  IT LT
23C32A:  MOVLT           R11, R6
23C32C:  MOV             R0, R8; void *
23C32E:  MOV             R2, R11; size_t
23C330:  BLX             memcpy_1
23C334:  LDR.W           R0, [R9]
23C338:  CMP             R6, R10
23C33A:  ADD             R0, R11
23C33C:  STR.W           R0, [R9]
23C340:  BGE             loc_23C388
23C342:  LDR             R1, [R5,#0xC]
23C344:  CBZ             R1, loc_23C388
23C346:  MOV             R6, R1
23C348:  LDR             R1, [R5,#4]
23C34A:  LDRD.W          R2, R3, [R6]
23C34E:  SUB.W           R5, R10, R11
23C352:  ADD             R4, R1
23C354:  SUBS            R1, R0, R4
23C356:  SUBS            R0, R3, R1
23C358:  ADD             R1, R2; void *
23C35A:  CMP             R5, R0
23C35C:  IT GT
23C35E:  MOVGT           R5, R0
23C360:  ADD.W           R0, R8, R11; void *
23C364:  MOV             R2, R5; size_t
23C366:  BLX             memcpy_1
23C36A:  LDR.W           R0, [R9]
23C36E:  ADD             R11, R5
23C370:  CMP             R11, R10
23C372:  ADD             R0, R5
23C374:  STR.W           R0, [R9]
23C378:  BGE             loc_23C388
23C37A:  LDR             R1, [R6,#0xC]
23C37C:  MOV             R5, R6
23C37E:  CMP             R1, #0
23C380:  BNE             loc_23C346
23C382:  B               loc_23C388
23C384:  MOV.W           R11, #0
23C388:  CMP             R11, R10
23C38A:  MOV             R0, R11
23C38C:  IT NE
23C38E:  MOVNE.W         R0, #0xFFFFFFFF
23C392:  CMP.W           R11, #0
23C396:  IT LT
23C398:  MOVLT           R0, R11
23C39A:  ADD             SP, SP, #4
23C39C:  POP.W           {R8-R11}
23C3A0:  POP             {R4-R7,PC}
