; =========================================================
; Game Engine Function: sub_13E2C8
; Address            : 0x13E2C8 - 0x13E46E
; =========================================================

13E2C8:  PUSH            {R4-R7,LR}
13E2CA:  ADD             R7, SP, #0xC
13E2CC:  PUSH.W          {R8-R11}
13E2D0:  SUB             SP, SP, #0xC
13E2D2:  MOV             R8, R0
13E2D4:  LDR             R0, =(off_23496C - 0x13E2DA)
13E2D6:  ADD             R0, PC; off_23496C
13E2D8:  LDR             R0, [R0]; dword_23DEF4
13E2DA:  LDR             R0, [R0]
13E2DC:  CBZ             R0, loc_13E2EE
13E2DE:  LDR.W           R0, [R0,#0x218]
13E2E2:  CMP             R0, #5
13E2E4:  ITT NE
13E2E6:  LDRDNE.W        R4, R5, [R8]
13E2EA:  CMPNE           R4, R5
13E2EC:  BNE             loc_13E3D2
13E2EE:  LDRD.W          R5, R10, [R8]
13E2F2:  CMP             R5, R10
13E2F4:  BEQ             loc_13E3CA
13E2F6:  MOV.W           R11, #1
13E2FA:  LDR             R0, [R5,#0x30]
13E2FC:  ADDS            R0, #1
13E2FE:  BEQ             loc_13E328
13E300:  BL              sub_F0B30
13E304:  LDRD.W          R1, R2, [R5,#0x30]
13E308:  SUBS            R0, R0, R2
13E30A:  CMP             R0, R1
13E30C:  BLS             loc_13E324
13E30E:  MOV             R0, R5
13E310:  LDR.W           R1, [R0,#0x38]!
13E314:  CBZ             R1, loc_13E338
13E316:  MOVS            R1, #0
13E318:  BL              sub_13E4F0
13E31C:  BL              sub_F0B30
13E320:  STR             R0, [R5,#0x34]
13E322:  B               loc_13E338
13E324:  ADDS            R0, R1, #1
13E326:  BNE             loc_13E338
13E328:  LDR             R0, [R5,#0x38]
13E32A:  CBZ             R0, loc_13E338
13E32C:  BL              sub_163050
13E330:  LDRB.W          R0, [R0,#0x55]
13E334:  CMP             R0, #0
13E336:  BNE             loc_13E3E6
13E338:  BL              sub_1082E4
13E33C:  CMP             R0, #0
13E33E:  BEQ             loc_13E3C4
13E340:  MOV             R6, R5
13E342:  LDR.W           R4, [R6,#0x38]!
13E346:  BL              sub_1082E4
13E34A:  MOV             R1, R0
13E34C:  CBZ             R4, loc_13E370
13E34E:  LDR             R0, [R5,#0x38]
13E350:  LDRB.W          R2, [R5,#0x2C]
13E354:  LDRB.W          R1, [R1,#0x33]
13E358:  CMP             R1, R2
13E35A:  BNE             loc_13E382
13E35C:  BL              sub_163050
13E360:  LDRB.W          R0, [R0,#0x54]
13E364:  CMP             R0, #1
13E366:  BNE             loc_13E3C4
13E368:  LDR             R0, [R5,#0x38]
13E36A:  BL              sub_163054
13E36E:  B               loc_13E3C4
13E370:  LDR             R0, [R1,#0x18]
13E372:  CBZ             R0, loc_13E388
13E374:  BL              sub_1082E4
13E378:  LDR             R0, [R0,#0x18]
13E37A:  LDR             R0, [R0,#4]
13E37C:  ADD.W           R9, R0, #0x10
13E380:  B               loc_13E38C
13E382:  BL              sub_163070
13E386:  B               loc_13E3C4
13E388:  MOV.W           R9, #0
13E38C:  MOVS            R0, #4; unsigned int
13E38E:  BLX             j__Znwj; operator new(uint)
13E392:  MOV             R4, R0
13E394:  ADD.W           R2, R5, #0x20 ; ' '
13E398:  MOV             R1, R5
13E39A:  MOV             R3, R9
13E39C:  STR.W           R11, [SP,#0x28+var_28]
13E3A0:  BL              sub_162F64
13E3A4:  MOV             R0, R6
13E3A6:  MOV             R1, R4
13E3A8:  BL              sub_13E4F0
13E3AC:  LDR             R1, [R5,#0x30]
13E3AE:  LDR             R0, [R5,#0x38]
13E3B0:  ADDS            R1, #1
13E3B2:  BEQ             loc_13E3BA
13E3B4:  BL              sub_163054
13E3B8:  B               loc_13E3BE
13E3BA:  BL              sub_16308C
13E3BE:  BL              sub_F0B30
13E3C2:  STR             R0, [R5,#0x34]
13E3C4:  ADDS            R5, #0x3C ; '<'
13E3C6:  CMP             R5, R10
13E3C8:  BNE             loc_13E2FA
13E3CA:  ADD             SP, SP, #0xC
13E3CC:  POP.W           {R8-R11}
13E3D0:  POP             {R4-R7,PC}
13E3D2:  SUBS            R0, R5, #4
13E3D4:  MOVS            R1, #0
13E3D6:  BL              sub_13E4F0
13E3DA:  SUBS            R5, #0x3C ; '<'
13E3DC:  CMP             R5, R4
13E3DE:  BNE             loc_13E3D2
13E3E0:  STR.W           R4, [R8,#4]
13E3E4:  B               loc_13E2EE
13E3E6:  LDRD.W          R10, R11, [R8]
13E3EA:  CMP             R10, R11
13E3EC:  BEQ             loc_13E402
13E3EE:  MOV             R0, R10; s1
13E3F0:  MOV             R1, R5; s2
13E3F2:  BL              sub_13DF22
13E3F6:  CBNZ            R0, loc_13E402
13E3F8:  ADD.W           R10, R10, #0x3C ; '<'
13E3FC:  CMP             R10, R11
13E3FE:  BNE             loc_13E3EE
13E400:  B               loc_13E3CA
13E402:  CMP             R10, R11
13E404:  BEQ             loc_13E3CA
13E406:  ADD.W           R0, R10, #0x3C ; '<'
13E40A:  STR.W           R8, [SP,#0x28+var_20]
13E40E:  CMP             R0, R11
13E410:  BEQ             loc_13E452
13E412:  MOV.W           R9, #0
13E416:  ADD.W           R8, R10, #0x3C ; '<'
13E41A:  MOV             R0, R10
13E41C:  MOV             R1, R8
13E41E:  LDM             R1!, {R2-R5}
13E420:  STM             R0!, {R2-R5}
13E422:  LDM             R1!, {R2-R6}
13E424:  STM             R0!, {R2-R6}
13E426:  LDM.W           R1, {R2-R6}
13E42A:  STM             R0!, {R2-R6}
13E42C:  ADD.W           R0, R10, #0x38 ; '8'
13E430:  LDR.W           R1, [R10,#0x74]
13E434:  STR.W           R9, [R10,#0x74]
13E438:  BL              sub_13E4F0
13E43C:  ADD.W           R0, R10, #0x78 ; 'x'
13E440:  MOV             R10, R8
13E442:  CMP             R0, R11
13E444:  BNE             loc_13E416
13E446:  LDR             R0, [SP,#0x28+var_20]
13E448:  LDR.W           R11, [R0,#4]
13E44C:  CMP             R8, R11
13E44E:  BNE             loc_13E454
13E450:  B               loc_13E466
13E452:  MOV             R8, R10
13E454:  SUB.W           R0, R11, #4
13E458:  MOVS            R1, #0
13E45A:  BL              sub_13E4F0
13E45E:  SUB.W           R11, R11, #0x3C ; '<'
13E462:  CMP             R11, R8
13E464:  BNE             loc_13E454
13E466:  LDR             R0, [SP,#0x28+var_20]
13E468:  STR.W           R8, [R0,#4]
13E46C:  B               loc_13E3CA
