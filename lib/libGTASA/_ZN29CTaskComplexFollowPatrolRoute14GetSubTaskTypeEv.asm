; =========================================================
; Game Engine Function: _ZN29CTaskComplexFollowPatrolRoute14GetSubTaskTypeEv
; Address            : 0x5252F4 - 0x52534E
; =========================================================

5252F4:  PUSH            {R4,R6,R7,LR}
5252F6:  ADD             R7, SP, #8
5252F8:  MOV             R4, R0
5252FA:  LDR             R0, [R4,#0x1C]; this
5252FC:  LDR             R1, [R0]
5252FE:  CBZ             R1, loc_525338; jumptable 0052531E case 0
525300:  LDRH            R2, [R4,#0x12]
525302:  SXTH            R2, R2
525304:  ADDS            R3, R2, #1
525306:  CMP             R3, R1
525308:  BLT             loc_525342
52530A:  BEQ             loc_525348
52530C:  CMP             R1, R2
52530E:  BNE             def_52531E; jumptable 0052531E default case
525310:  LDRH            R1, [R4,#0xE]
525312:  LDRSH.W         R2, [R4,#0xC]
525316:  ADDS            R3, R1, #1
525318:  STRH            R3, [R4,#0xE]
52531A:  CMP             R2, #3; switch 4 cases
52531C:  BHI             def_52531E; jumptable 0052531E default case
52531E:  TBB.W           [PC,R2]; switch jump
525322:  DCB 0xB; jump table for switch statement
525323:  DCB 2
525324:  DCB 3
525325:  DCB 5
525326:  CBNZ            R1, loc_525338; jumptable 0052531E case 1
525328:  BLX             j__ZN12CPatrolRoute7ReverseEv; jumptable 0052531E case 2
52532C:  LDR             R0, [R4,#0x1C]; jumptable 0052531E case 3
52532E:  MOVS            R2, #0
525330:  STRH            R2, [R4,#0x12]
525332:  LDR             R1, [R0]
525334:  CMP             R1, #0
525336:  BNE             loc_525302
525338:  MOVW            R0, #0x516; jumptable 0052531E case 0
52533C:  POP             {R4,R6,R7,PC}
52533E:  MOVS            R0, #0xC8; jumptable 0052531E default case
525340:  POP             {R4,R6,R7,PC}
525342:  MOV.W           R0, #0x384
525346:  POP             {R4,R6,R7,PC}
525348:  MOVW            R0, #0x387
52534C:  POP             {R4,R6,R7,PC}
