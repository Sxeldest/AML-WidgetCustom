; =========================================================
; Game Engine Function: sub_F5368
; Address            : 0xF5368 - 0xF538A
; =========================================================

F5368:  PUSH            {R4,R6,R7,LR}
F536A:  ADD             R7, SP, #8
F536C:  LDR             R4, =(unk_24003C - 0xF5374)
F536E:  MOVS            R1, #3
F5370:  ADD             R4, PC; unk_24003C
F5372:  MOV             R0, R4
F5374:  BL              sub_F4358
F5378:  LDR             R0, =(sub_F4380+1 - 0xF5382)
F537A:  MOV             R1, R4
F537C:  LDR             R2, =(off_22A540 - 0xF5384)
F537E:  ADD             R0, PC; sub_F4380
F5380:  ADD             R2, PC; off_22A540
F5382:  POP.W           {R4,R6,R7,LR}
F5386:  B.W             sub_224250
