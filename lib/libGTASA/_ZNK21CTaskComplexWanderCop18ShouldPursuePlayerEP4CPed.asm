; =========================================================
; Game Engine Function: _ZNK21CTaskComplexWanderCop18ShouldPursuePlayerEP4CPed
; Address            : 0x52399C - 0x5239DA
; =========================================================

52399C:  PUSH            {R4,R5,R7,LR}
52399E:  ADD             R7, SP, #8
5239A0:  MOV             R5, R0
5239A2:  MOV.W           R0, #0xFFFFFFFF; int
5239A6:  MOV             R4, R1
5239A8:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
5239AC:  LDR             R0, [R0,#0x2C]
5239AE:  CMP             R0, #1
5239B0:  BLT             loc_5239C4
5239B2:  LDR             R0, [R5,#8]
5239B4:  CBZ             R0, loc_5239C8
5239B6:  LDR             R1, [R0]
5239B8:  LDR             R1, [R1,#0x14]
5239BA:  BLX             R1
5239BC:  MOVW            R1, #0x44F
5239C0:  CMP             R0, R1
5239C2:  BNE             loc_5239C8
5239C4:  MOVS            R0, #0
5239C6:  POP             {R4,R5,R7,PC}
5239C8:  MOV.W           R0, #0xFFFFFFFF; int
5239CC:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
5239D0:  MOV             R1, R4
5239D2:  POP.W           {R4,R5,R7,LR}
5239D6:  B.W             sub_19286C
