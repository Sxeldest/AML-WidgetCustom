; =========================================================
; Game Engine Function: sub_85418
; Address            : 0x85418 - 0x85478
; =========================================================

85418:  PUSH            {R4,R5,R7,LR}
8541A:  ADD             R7, SP, #8
8541C:  MOV             R4, R1
8541E:  LDR             R1, [R1,#4]
85420:  CBZ             R1, loc_8542C
85422:  MOV             R5, R1
85424:  LDR             R1, [R1]
85426:  CMP             R1, #0
85428:  BNE             loc_85422
8542A:  B               loc_85446
8542C:  MOV             R1, R4
8542E:  LDR.W           R5, [R1,#8]!
85432:  LDR             R2, [R5]
85434:  CMP             R2, R4
85436:  BEQ             loc_85446
85438:  LDR             R2, [R1]
8543A:  MOV             R1, R2
8543C:  LDR.W           R5, [R1,#8]!
85440:  LDR             R3, [R5]
85442:  CMP             R3, R2
85444:  BNE             loc_85438
85446:  LDR             R1, [R0]
85448:  CMP             R1, R4
8544A:  IT EQ
8544C:  STREQ           R5, [R0]
8544E:  LDRD.W          R1, R2, [R0,#4]
85452:  SUBS            R2, #1
85454:  STR             R2, [R0,#8]
85456:  MOV             R0, R1
85458:  MOV             R1, R4
8545A:  BL              sub_8231C
8545E:  LDR             R0, [R4,#0x14]
85460:  MOVS            R1, #0
85462:  STR             R1, [R4,#0x14]
85464:  CBZ             R0, loc_8546E
85466:  BL              sub_7DE3C
8546A:  BLX             j__ZdlPv; operator delete(void *)
8546E:  MOV             R0, R4; void *
85470:  BLX             j__ZdlPv; operator delete(void *)
85474:  MOV             R0, R5
85476:  POP             {R4,R5,R7,PC}
