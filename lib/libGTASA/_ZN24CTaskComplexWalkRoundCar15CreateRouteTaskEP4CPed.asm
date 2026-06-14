; =========================================================
; Game Engine Function: _ZN24CTaskComplexWalkRoundCar15CreateRouteTaskEP4CPed
; Address            : 0x50C3B4 - 0x50C3F6
; =========================================================

50C3B4:  PUSH            {R4,R5,R7,LR}
50C3B6:  ADD             R7, SP, #8
50C3B8:  SUB             SP, SP, #0x18; float
50C3BA:  MOV             R5, R0
50C3BC:  MOVS            R4, #0
50C3BE:  LDR             R0, [R5,#0x20]
50C3C0:  LDR             R0, [R0]
50C3C2:  CBZ             R0, loc_50C3F0
50C3C4:  MOVS            R0, #off_3C; this
50C3C6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50C3CA:  LDR             R3, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x50C3D4)
50C3CC:  LDRSB.W         R1, [R5,#0xC]; int
50C3D0:  ADD             R3, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
50C3D2:  LDR             R2, [R5,#0x20]; CPointRoute *
50C3D4:  STRD.W          R4, R4, [SP,#0x20+var_14]; bool
50C3D8:  LDR             R3, [R3]; CTaskComplexFollowPointRoute::ms_fTargetRadius ...
50C3DA:  VLDR            S0, [R3]
50C3DE:  MOVS            R3, #1
50C3E0:  STRD.W          R4, R3, [SP,#0x20+var_1C]; float
50C3E4:  MOVS            R3, #0; int
50C3E6:  VSTR            S0, [SP,#0x20+var_20]
50C3EA:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
50C3EE:  MOV             R4, R0
50C3F0:  MOV             R0, R4
50C3F2:  ADD             SP, SP, #0x18
50C3F4:  POP             {R4,R5,R7,PC}
