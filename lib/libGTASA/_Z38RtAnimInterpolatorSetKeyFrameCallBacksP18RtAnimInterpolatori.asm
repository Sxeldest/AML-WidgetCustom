; =========================================================
; Game Engine Function: _Z38RtAnimInterpolatorSetKeyFrameCallBacksP18RtAnimInterpolatori
; Address            : 0x1EB3F0 - 0x1EB450
; =========================================================

1EB3F0:  PUSH            {R7,LR}
1EB3F2:  MOV             R7, SP
1EB3F4:  LDR             R2, =(RtAnimInterpolatorInfoBlockNumEntries_ptr - 0x1EB3FA)
1EB3F6:  ADD             R2, PC; RtAnimInterpolatorInfoBlockNumEntries_ptr
1EB3F8:  LDR             R2, [R2]; RtAnimInterpolatorInfoBlockNumEntries
1EB3FA:  LDR.W           R12, [R2]
1EB3FE:  CMP.W           R12, #1
1EB402:  ITT LT
1EB404:  MOVLT           R0, #0
1EB406:  POPLT           {R7,PC}
1EB408:  LDR             R2, =(RtAnimInterpolatorInfoBlock_ptr - 0x1EB410)
1EB40A:  MOVS            R3, #0
1EB40C:  ADD             R2, PC; RtAnimInterpolatorInfoBlock_ptr
1EB40E:  LDR             R2, [R2]; RtAnimInterpolatorInfoBlock
1EB410:  ADD.W           LR, R2, #0xC
1EB414:  LDR.W           R2, [LR,#-0xC]
1EB418:  CMP             R2, R1
1EB41A:  BEQ             loc_1EB42A
1EB41C:  ADDS            R3, #1
1EB41E:  ADD.W           LR, LR, #0x30 ; '0'
1EB422:  CMP             R3, R12
1EB424:  BLT             loc_1EB414
1EB426:  MOVS            R0, #0
1EB428:  POP             {R7,PC}
1EB42A:  CMP.W           LR, #0xC
1EB42E:  ITT EQ
1EB430:  MOVEQ           R0, #0
1EB432:  POPEQ           {R7,PC}
1EB434:  LDR.W           R1, [LR]
1EB438:  STR             R1, [R0,#0x3C]
1EB43A:  LDR.W           R1, [LR,#4]
1EB43E:  STR             R1, [R0,#0x40]
1EB440:  LDR.W           R1, [LR,#8]
1EB444:  STR             R1, [R0,#0x44]
1EB446:  LDR.W           R1, [LR,#0xC]
1EB44A:  STR             R1, [R0,#0x48]
1EB44C:  MOVS            R0, #1
1EB44E:  POP             {R7,PC}
