; =========================================================
; Game Engine Function: _ZNK29CTaskComplexFollowPatrolRoute5CloneEv
; Address            : 0x528570 - 0x5285A0
; =========================================================

528570:  PUSH            {R4,R6,R7,LR}
528572:  ADD             R7, SP, #8
528574:  SUB             SP, SP, #8; float
528576:  MOV             R4, R0
528578:  MOVS            R0, #word_30; this
52857A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52857E:  LDRSH.W         R1, [R4,#0x10]; int
528582:  LDRSH.W         R3, [R4,#0xC]; int
528586:  LDR             R2, [R4,#0x1C]; CPatrolRoute *
528588:  VLDR            S0, [R4,#0x14]
52858C:  VLDR            S2, [R4,#0x18]
528590:  VSTR            S0, [SP,#0x10+var_10]
528594:  VSTR            S2, [SP,#0x10+var_C]
528598:  BLX             j__ZN29CTaskComplexFollowPatrolRouteC2EiRK12CPatrolRouteiff_0; CTaskComplexFollowPatrolRoute::CTaskComplexFollowPatrolRoute(int,CPatrolRoute const&,int,float,float)
52859C:  ADD             SP, SP, #8
52859E:  POP             {R4,R6,R7,PC}
