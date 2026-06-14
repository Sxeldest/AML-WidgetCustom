; =========================================================
; Game Engine Function: sub_1AC3F4
; Address            : 0x1AC3F4 - 0x1AC4CA
; =========================================================

1AC3F4:  PUSH            {R4-R7,LR}
1AC3F6:  ADD             R7, SP, #0xC
1AC3F8:  PUSH.W          {R11}
1AC3FC:  MOV             R4, R1
1AC3FE:  MOV             R5, R0
1AC400:  CMP             R4, #0
1AC402:  BEQ             loc_1AC4C4
1AC404:  CMP             R2, #1
1AC406:  BLT             loc_1AC4AA
1AC408:  SUBS            R6, R2, #1
1AC40A:  LDR             R1, [R4]
1AC40C:  MOV             R0, R5
1AC40E:  MOV             R2, R6
1AC410:  BL              sub_1AC3F4
1AC414:  LDR             R1, [R4,#4]
1AC416:  MOV             R0, R5
1AC418:  MOV             R2, R6
1AC41A:  BL              sub_1AC3F4
1AC41E:  LDR             R1, [R4,#8]
1AC420:  MOV             R0, R5
1AC422:  MOV             R2, R6
1AC424:  BL              sub_1AC3F4
1AC428:  LDR             R1, [R4,#0xC]
1AC42A:  MOV             R0, R5
1AC42C:  MOV             R2, R6
1AC42E:  BL              sub_1AC3F4
1AC432:  LDR             R1, [R4,#0x10]
1AC434:  MOV             R0, R5
1AC436:  MOV             R2, R6
1AC438:  BL              sub_1AC3F4
1AC43C:  LDR             R1, [R4,#0x14]
1AC43E:  MOV             R0, R5
1AC440:  MOV             R2, R6
1AC442:  BL              sub_1AC3F4
1AC446:  LDR             R1, [R4,#0x18]
1AC448:  MOV             R0, R5
1AC44A:  MOV             R2, R6
1AC44C:  BL              sub_1AC3F4
1AC450:  LDR             R1, [R4,#0x1C]
1AC452:  MOV             R0, R5
1AC454:  MOV             R2, R6
1AC456:  BL              sub_1AC3F4
1AC45A:  LDR             R1, [R4,#0x20]
1AC45C:  MOV             R0, R5
1AC45E:  MOV             R2, R6
1AC460:  BL              sub_1AC3F4
1AC464:  LDR             R1, [R4,#0x24]
1AC466:  MOV             R0, R5
1AC468:  MOV             R2, R6
1AC46A:  BL              sub_1AC3F4
1AC46E:  LDR             R1, [R4,#0x28]
1AC470:  MOV             R0, R5
1AC472:  MOV             R2, R6
1AC474:  BL              sub_1AC3F4
1AC478:  LDR             R1, [R4,#0x2C]
1AC47A:  MOV             R0, R5
1AC47C:  MOV             R2, R6
1AC47E:  BL              sub_1AC3F4
1AC482:  LDR             R1, [R4,#0x30]
1AC484:  MOV             R0, R5
1AC486:  MOV             R2, R6
1AC488:  BL              sub_1AC3F4
1AC48C:  LDR             R1, [R4,#0x34]
1AC48E:  MOV             R0, R5
1AC490:  MOV             R2, R6
1AC492:  BL              sub_1AC3F4
1AC496:  LDR             R1, [R4,#0x38]
1AC498:  MOV             R0, R5
1AC49A:  MOV             R2, R6
1AC49C:  BL              sub_1AC3F4
1AC4A0:  LDR             R1, [R4,#0x3C]
1AC4A2:  MOV             R0, R5
1AC4A4:  MOV             R2, R6
1AC4A6:  BL              sub_1AC3F4
1AC4AA:  LDR             R0, =(RwEngineInstance_ptr - 0x1AC4B0)
1AC4AC:  ADD             R0, PC; RwEngineInstance_ptr
1AC4AE:  LDR             R0, [R0]; RwEngineInstance
1AC4B0:  LDR             R1, [R0]
1AC4B2:  LDR             R0, [R5,#0xC]
1AC4B4:  LDR.W           R2, [R1,#0x140]
1AC4B8:  MOV             R1, R4
1AC4BA:  POP.W           {R11}
1AC4BE:  POP.W           {R4-R7,LR}
1AC4C2:  BX              R2
1AC4C4:  POP.W           {R11}
1AC4C8:  POP             {R4-R7,PC}
