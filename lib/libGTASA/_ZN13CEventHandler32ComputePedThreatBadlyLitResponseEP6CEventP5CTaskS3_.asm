; =========================================================
; Game Engine Function: _ZN13CEventHandler32ComputePedThreatBadlyLitResponseEP6CEventP5CTaskS3_
; Address            : 0x3826F4 - 0x382730
; =========================================================

3826F4:  PUSH            {R4-R7,LR}
3826F6:  ADD             R7, SP, #0xC
3826F8:  PUSH.W          {R11}
3826FC:  MOV             R6, R1
3826FE:  MOV             R4, R0
382700:  LDR             R5, [R6,#0x10]
382702:  CBZ             R5, loc_38272A
382704:  LDRSH.W         R0, [R6,#0xA]
382708:  CMP             R0, #0xC8
38270A:  BEQ             loc_382726
38270C:  MOVW            R1, #0x3A7; unsigned int
382710:  CMP             R0, R1
382712:  BNE             loc_38272A
382714:  MOVS            R0, #dword_1C; this
382716:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38271A:  ADD.W           R1, R6, #0x18; CVector *
38271E:  MOV             R2, R5; CEntity *
382720:  BLX             j__ZN34CTaskComplexInvestigateDisturbanceC2ERK7CVectorP7CEntity; CTaskComplexInvestigateDisturbance::CTaskComplexInvestigateDisturbance(CVector const&,CEntity *)
382724:  B               loc_382728
382726:  MOVS            R0, #0
382728:  STR             R0, [R4,#0x24]
38272A:  POP.W           {R11}
38272E:  POP             {R4-R7,PC}
