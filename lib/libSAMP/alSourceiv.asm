; =========================================================
; Game Engine Function: alSourceiv
; Address            : 0x1CC344 - 0x1CC534
; =========================================================

1CC344:  PUSH            {R4-R6,R10,R11,LR}
1CC348:  ADD             R11, SP, #0x10
1CC34C:  SUB             SP, SP, #8
1CC350:  MOV             R5, R2
1CC354:  MOV             R4, R0
1CC358:  CMP             R5, #0
1CC35C:  BEQ             loc_1CC4D8; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC360:  CMP             R1, #0xD000
1CC364:  BGE             loc_1CC468
1CC368:  MOVW            R0, #0x1001
1CC36C:  SUB             R0, R1, R0
1CC370:  CMP             R0, #0x32; switch 51 cases
1CC374:  BHI             def_1CC384; jumptable 001CC384 default case
1CC378:  ADR             R2, jpt_1CC384
1CC37C:  MOV             R0, R0,LSL#2
1CC380:  LDR             R0, [R0,R2]
1CC384:  ADD             PC, R0, R2; switch jump
1CC388:  DCD loc_1CC454 - 0x1CC388; jump table for switch statement
1CC38C:  DCD loc_1CC454 - 0x1CC388; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC390:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC394:  DCD loc_1CC49C - 0x1CC388; jumptable 001CC384 cases 3-5
1CC398:  DCD loc_1CC49C - 0x1CC388; jumptable 001CC384 cases 3-5
1CC39C:  DCD loc_1CC49C - 0x1CC388; jumptable 001CC384 cases 3-5
1CC3A0:  DCD loc_1CC454 - 0x1CC388; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC3A4:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3A8:  DCD loc_1CC454 - 0x1CC388; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC3AC:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3B0:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3B4:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3B8:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3BC:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3C0:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3C4:  DCD loc_1CC454 - 0x1CC388; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC3C8:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3CC:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3D0:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3D4:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3D8:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3DC:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3E0:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3E4:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3E8:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3EC:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3F0:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3F4:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3F8:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC3FC:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC400:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC404:  DCD loc_1CC454 - 0x1CC388; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC408:  DCD loc_1CC454 - 0x1CC388; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC40C:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC410:  DCD loc_1CC454 - 0x1CC388; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC414:  DCD loc_1CC454 - 0x1CC388; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC418:  DCD loc_1CC454 - 0x1CC388; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC41C:  DCD loc_1CC454 - 0x1CC388; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC420:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC424:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC428:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC42C:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC430:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC434:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC438:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC43C:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC440:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC444:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC448:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC44C:  DCD loc_1CC4D8 - 0x1CC388; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC450:  DCD loc_1CC454 - 0x1CC388; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC454:  LDR             R2, [R5]; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC458:  MOV             R0, R4
1CC45C:  SUB             SP, R11, #0x10
1CC460:  POP             {R4-R6,R10,R11,LR}
1CC464:  B               j_alSourcei
1CC468:  MOV             R0, #0x20009
1CC470:  CMP             R1, R0
1CC474:  BGT             loc_1CC4B8
1CC478:  CMP             R1, #0xD000
1CC47C:  MOVNE           R0, #0x20005
1CC484:  CMPNE           R1, R0
1CC488:  BEQ             loc_1CC454; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC48C:  MOV             R0, #0x20006
1CC494:  CMP             R1, R0
1CC498:  BNE             loc_1CC4D8; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC49C:  LDM             R5, {R2,R3}; jumptable 001CC384 cases 3-5
1CC4A0:  LDR             R0, [R5,#8]
1CC4A4:  STR             R0, [SP,#0x18+var_18]; int
1CC4A8:  MOV             R0, R4; int
1CC4AC:  BL              j_alSource3i
1CC4B0:  SUB             SP, R11, #0x10
1CC4B4:  POP             {R4-R6,R10,R11,PC}
1CC4B8:  SUB             R0, R1, #0xA
1CC4BC:  SUB             R0, R0, #0x20000
1CC4C0:  CMP             R0, #2
1CC4C4:  BLS             loc_1CC454; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC4C8:  B               loc_1CC4D8; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC4CC:  MOVW            R0, #0x202; jumptable 001CC384 default case
1CC4D0:  CMP             R1, R0
1CC4D4:  BEQ             loc_1CC454; jumptable 001CC384 cases 0,1,6,8,15,31,32,34-37,50
1CC4D8:  BL              j_GetContextRef; jumptable 001CC384 cases 2,7,9-14,16-30,33,38-49
1CC4DC:  MOV             R6, R0
1CC4E0:  CMP             R6, #0
1CC4E4:  BEQ             loc_1CC510
1CC4E8:  CMP             R5, #0
1CC4EC:  BEQ             loc_1CC518
1CC4F0:  ADD             R0, R6, #0x7C ; '|'
1CC4F4:  MOV             R1, R4
1CC4F8:  BL              j_LookupUIntMapKey
1CC4FC:  CMP             R0, #0
1CC500:  MOV             R0, R6
1CC504:  MOVWEQ          R1, #0xA001
1CC508:  MOVWNE          R1, #0xA002
1CC50C:  B               loc_1CC520
1CC510:  SUB             SP, R11, #0x10
1CC514:  POP             {R4-R6,R10,R11,PC}
1CC518:  MOV             R0, R6
1CC51C:  MOVW            R1, #0xA003
1CC520:  BL              j_alSetError
1CC524:  MOV             R0, R6
1CC528:  SUB             SP, R11, #0x10
1CC52C:  POP             {R4-R6,R10,R11,LR}
1CC530:  B               j_ALCcontext_DecRef
