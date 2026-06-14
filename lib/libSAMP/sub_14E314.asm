; =========================================================
; Game Engine Function: sub_14E314
; Address            : 0x14E314 - 0x14E498
; =========================================================

14E314:  PUSH            {R4-R7,LR}
14E316:  ADD             R7, SP, #0xC
14E318:  PUSH.W          {R8-R11}
14E31C:  SUB.W           SP, SP, #0x33C
14E320:  LDR             R1, =(off_23496C - 0x14E326)
14E322:  ADD             R1, PC; off_23496C
14E324:  LDR             R1, [R1]; dword_23DEF4
14E326:  LDR             R1, [R1]
14E328:  LDR.W           R1, [R1,#0x3B0]
14E32C:  LDR             R6, [R1,#0x1C]
14E32E:  CMP             R6, #0
14E330:  BEQ.W           loc_14E48E
14E334:  LDRD.W          R4, R5, [R0]
14E338:  ADD             R0, SP, #0x358+dest; int
14E33A:  MOV.W           R1, #0x100; n
14E33E:  BLX             sub_22178C
14E342:  ADD             R0, SP, #0x358+var_220; int
14E344:  MOV.W           R1, #0x100; n
14E348:  BLX             sub_22178C
14E34C:  ASRS            R0, R5, #0x1F
14E34E:  MOVS            R1, #1
14E350:  ADD.W           R0, R5, R0,LSR#29
14E354:  MOVS            R3, #0
14E356:  ADD.W           R2, R1, R0,ASR#3; size
14E35A:  ADD             R0, SP, #0x358+var_340; int
14E35C:  MOV             R1, R4; src
14E35E:  BL              sub_17D4F2
14E362:  ADD.W           R1, SP, #0x358+var_222; int
14E366:  MOVS            R2, #0x10
14E368:  MOVS            R3, #1
14E36A:  BL              sub_17D786
14E36E:  ADD             R0, SP, #0x358+var_340; int
14E370:  ADDW            R1, SP, #0x358+var_223; int
14E374:  MOVS            R2, #8
14E376:  MOVS            R3, #1
14E378:  BL              sub_17D786
14E37C:  LDRB.W          R2, [SP,#0x358+var_223]
14E380:  ADD.W           R8, SP, #0x358+dest
14E384:  ADD             R0, SP, #0x358+var_340; int
14E386:  MOV             R1, R8; dest
14E388:  BL              sub_17D744
14E38C:  ADD             R0, SP, #0x358+var_340; int
14E38E:  ADD             R1, SP, #0x358+var_224; int
14E390:  MOVS            R2, #8
14E392:  MOVS            R3, #1
14E394:  BL              sub_17D786
14E398:  LDRB.W          R2, [SP,#0x358+var_224]
14E39C:  ADD.W           R10, SP, #0x358+var_220
14E3A0:  ADD             R0, SP, #0x358+var_340; int
14E3A2:  MOV             R1, R10; dest
14E3A4:  BL              sub_17D744
14E3A8:  ADD             R0, SP, #0x358+var_340; int
14E3AA:  ADD             R1, SP, #0x358+var_228; int
14E3AC:  MOVS            R2, #0x20 ; ' '
14E3AE:  MOVS            R3, #1
14E3B0:  BL              sub_17D786
14E3B4:  LDR             R0, [SP,#0x358+var_340]
14E3B6:  LDR             R1, [SP,#0x358+var_338]
14E3B8:  CMP             R1, R0
14E3BA:  BGE             loc_14E3D8
14E3BC:  LDR             R2, [SP,#0x358+var_334]
14E3BE:  ASRS            R3, R1, #3
14E3C0:  LDRB            R2, [R2,R3]
14E3C2:  ADDS            R3, R1, #1
14E3C4:  AND.W           R1, R1, #7
14E3C8:  STR             R3, [SP,#0x358+var_338]
14E3CA:  LSL.W           R1, R2, R1
14E3CE:  UXTB            R1, R1
14E3D0:  MOV.W           R9, R1,LSR#7
14E3D4:  MOV             R1, R3
14E3D6:  B               loc_14E3DC
14E3D8:  MOV.W           R9, #0
14E3DC:  CMP             R1, R0
14E3DE:  BGE             loc_14E3FC
14E3E0:  LDR             R2, [SP,#0x358+var_334]
14E3E2:  ASRS            R3, R1, #3
14E3E4:  LDRB            R2, [R2,R3]
14E3E6:  ADDS            R3, R1, #1
14E3E8:  AND.W           R1, R1, #7
14E3EC:  STR             R3, [SP,#0x358+var_338]
14E3EE:  LSL.W           R1, R2, R1
14E3F2:  UXTB            R1, R1
14E3F4:  MOV.W           R11, R1,LSR#7
14E3F8:  MOV             R1, R3
14E3FA:  B               loc_14E400
14E3FC:  MOV.W           R11, #0
14E400:  CMP             R1, R0
14E402:  BGE             loc_14E41E
14E404:  LDR             R2, [SP,#0x358+var_334]
14E406:  ASRS            R3, R1, #3
14E408:  LDRB            R2, [R2,R3]
14E40A:  ADDS            R3, R1, #1
14E40C:  AND.W           R1, R1, #7
14E410:  STR             R3, [SP,#0x358+var_338]
14E412:  LSL.W           R1, R2, R1
14E416:  UXTB            R1, R1
14E418:  LSRS            R5, R1, #7
14E41A:  MOV             R1, R3
14E41C:  B               loc_14E420
14E41E:  MOVS            R5, #0
14E420:  CMP             R1, R0
14E422:  BGE             loc_14E43A
14E424:  LDR             R0, [SP,#0x358+var_334]
14E426:  ASRS            R2, R1, #3
14E428:  LDRB            R0, [R0,R2]
14E42A:  ADDS            R2, R1, #1
14E42C:  AND.W           R1, R1, #7
14E430:  STR             R2, [SP,#0x358+var_338]
14E432:  LSLS            R0, R1
14E434:  UXTB            R0, R0
14E436:  LSRS            R4, R0, #7
14E438:  B               loc_14E43C
14E43A:  MOVS            R4, #0
14E43C:  ADD             R0, SP, #0x358+var_340; int
14E43E:  ADD             R1, SP, #0x358+var_22C; int
14E440:  MOVS            R2, #0x20 ; ' '
14E442:  MOVS            R3, #1
14E444:  BL              sub_17D786
14E448:  LDRB.W          R1, [SP,#0x358+var_224]
14E44C:  MOVS            R3, #0
14E44E:  LDRH.W          R0, [SP,#0x358+var_222]
14E452:  LDRB.W          R2, [SP,#0x358+var_223]
14E456:  STRB.W          R3, [R10,R1]
14E45A:  LSRS            R1, R0, #3
14E45C:  CMP             R1, #0x7C ; '|'
14E45E:  STRB.W          R3, [R8,R2]
14E462:  BHI             loc_14E488
14E464:  ADDS            R1, R6, R0
14E466:  LDRB.W          R1, [R1,#0xFA0]
14E46A:  CBZ             R1, loc_14E488
14E46C:  LDR.W           R0, [R6,R0,LSL#2]
14E470:  CBZ             R0, loc_14E488
14E472:  LDRD.W          R1, R3, [SP,#0x358+var_22C]
14E476:  STR             R1, [SP,#0x358+var_348]
14E478:  ADD             R1, SP, #0x358+var_220
14E47A:  ADD             R2, SP, #0x358+dest
14E47C:  STRD.W          R9, R11, [SP,#0x358+var_358]
14E480:  STRD.W          R5, R4, [SP,#0x358+var_350]
14E484:  BL              sub_F7EF0
14E488:  ADD             R0, SP, #0x358+var_340
14E48A:  BL              sub_17D542
14E48E:  ADD.W           SP, SP, #0x33C
14E492:  POP.W           {R8-R11}
14E496:  POP             {R4-R7,PC}
