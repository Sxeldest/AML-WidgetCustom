; =========================================================
; Game Engine Function: _ZNK27CTaskComplexWalkRoundObject15CreateRouteTaskEPK4CPed
; Address            : 0x50E004 - 0x50E044
; =========================================================

50E004:  PUSH            {R4,R5,R7,LR}
50E006:  ADD             R7, SP, #8
50E008:  SUB             SP, SP, #0x18; float
50E00A:  MOV             R5, R0
50E00C:  MOVS            R4, #0
50E00E:  LDR             R0, [R5,#0x20]
50E010:  LDR             R0, [R0]
50E012:  CBZ             R0, loc_50E03E
50E014:  MOVS            R0, #off_3C; this
50E016:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50E01A:  LDR             R3, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x50E022)
50E01C:  LDR             R1, [R5,#0xC]; int
50E01E:  ADD             R3, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
50E020:  LDR             R2, [R5,#0x20]; CPointRoute *
50E022:  STRD.W          R4, R4, [SP,#0x20+var_14]; bool
50E026:  LDR             R3, [R3]; CTaskComplexFollowPointRoute::ms_fTargetRadius ...
50E028:  VLDR            S0, [R3]
50E02C:  MOVS            R3, #1
50E02E:  STRD.W          R4, R3, [SP,#0x20+var_1C]; float
50E032:  MOVS            R3, #0; int
50E034:  VSTR            S0, [SP,#0x20+var_20]
50E038:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
50E03C:  MOV             R4, R0
50E03E:  MOV             R0, R4
50E040:  ADD             SP, SP, #0x18
50E042:  POP             {R4,R5,R7,PC}
