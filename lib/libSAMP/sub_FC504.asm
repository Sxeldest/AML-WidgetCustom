; =========================================================
; Game Engine Function: sub_FC504
; Address            : 0xFC504 - 0xFC55A
; =========================================================

FC504:  PUSH            {R4-R7,LR}
FC506:  ADD             R7, SP, #0xC
FC508:  PUSH.W          {R11}
FC50C:  MOV             R4, R0
FC50E:  LDR             R0, =(off_23496C - 0xFC514)
FC510:  ADD             R0, PC; off_23496C
FC512:  LDR             R6, [R0]; dword_23DEF4
FC514:  LDR             R0, [R6]
FC516:  CBZ             R0, loc_FC52A
FC518:  LDR.W           R0, [R0,#0x3B0]
FC51C:  LDR             R0, [R0,#0xC]
FC51E:  CBZ             R0, loc_FC52A
FC520:  MOV             R5, R1
FC522:  BL              sub_1082E4
FC526:  CMP             R0, R5
FC528:  BEQ             loc_FC530
FC52A:  POP.W           {R11}
FC52E:  POP             {R4-R7,PC}
FC530:  LDR             R0, =(off_23494C - 0xFC540)
FC532:  MOVW            R2, #0x290
FC536:  LDR             R1, [R6]
FC538:  MOVT            R2, #0xFF85
FC53C:  ADD             R0, PC; off_23494C
FC53E:  LDR             R0, [R0]; dword_23DF24
FC540:  LDR.W           R1, [R1,#0x3B0]
FC544:  LDR             R0, [R0]
FC546:  SUBS            R0, R4, R0
FC548:  ADD             R2, R0
FC54A:  LDR             R0, [R1,#0xC]
FC54C:  LSRS            R1, R2, #5
FC54E:  POP.W           {R11}
FC552:  POP.W           {R4-R7,LR}
FC556:  B.W             sub_148BB0
