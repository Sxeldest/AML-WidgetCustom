; =========================================================
; Game Engine Function: _ZNK27CTaskComplexWalkRoundObject13CreateSubTaskEiPK4CPed
; Address            : 0x50DF90 - 0x50DFFE
; =========================================================

50DF90:  PUSH            {R4,R5,R7,LR}
50DF92:  ADD             R7, SP, #8
50DF94:  SUB             SP, SP, #0x18; float
50DF96:  MOV             R5, R0
50DF98:  CMP             R1, #0xCB
50DF9A:  BEQ             loc_50DFD8
50DF9C:  MOVW            R0, #0x389
50DFA0:  CMP             R1, R0
50DFA2:  BNE             loc_50DFF6
50DFA4:  LDR             R0, [R5,#0x20]
50DFA6:  MOVS            R4, #0
50DFA8:  LDR             R0, [R0]
50DFAA:  CBZ             R0, loc_50DFF8
50DFAC:  MOVS            R0, #off_3C; this
50DFAE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50DFB2:  LDR             R3, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x50DFBA)
50DFB4:  LDR             R1, [R5,#0xC]; int
50DFB6:  ADD             R3, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
50DFB8:  LDR             R2, [R5,#0x20]; CPointRoute *
50DFBA:  STRD.W          R4, R4, [SP,#0x20+var_14]; bool
50DFBE:  LDR             R3, [R3]; CTaskComplexFollowPointRoute::ms_fTargetRadius ...
50DFC0:  VLDR            S0, [R3]
50DFC4:  MOVS            R3, #1
50DFC6:  STRD.W          R4, R3, [SP,#0x20+var_1C]; float
50DFCA:  MOVS            R3, #0; int
50DFCC:  VSTR            S0, [SP,#0x20+var_20]
50DFD0:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
50DFD4:  MOV             R4, R0
50DFD6:  B               loc_50DFF8
50DFD8:  MOVS            R0, #dword_20; this
50DFDA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50DFDE:  MOV             R4, R0
50DFE0:  MOV.W           R0, #0x41000000
50DFE4:  STR             R0, [SP,#0x20+var_20]; float
50DFE6:  MOV             R0, R4; this
50DFE8:  MOV.W           R1, #0x1F4; int
50DFEC:  MOVS            R2, #0; bool
50DFEE:  MOVS            R3, #0; bool
50DFF0:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
50DFF4:  B               loc_50DFF8
50DFF6:  MOVS            R4, #0
50DFF8:  MOV             R0, R4
50DFFA:  ADD             SP, SP, #0x18
50DFFC:  POP             {R4,R5,R7,PC}
