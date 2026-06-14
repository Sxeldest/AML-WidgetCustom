; =========================================================
; Game Engine Function: _ZN10CPedGroups12GetPedsGroupEPK4CPed
; Address            : 0x4B408C - 0x4B4100
; =========================================================

4B408C:  PUSH            {R4,R5,R7,LR}
4B408E:  ADD             R7, SP, #8
4B4090:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B409E)
4B4092:  MOV.W           R12, #0x2D4
4B4096:  LDR             R3, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B40A0)
4B4098:  LDR             R4, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B40A2)
4B409A:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B409C:  ADD             R3, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B409E:  ADD             R4, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B40A0:  LDR             R2, [R1]; CPedGroups::ms_groups ...
4B40A2:  LDR             R3, [R3]; CPedGroups::ms_activeGroups ...
4B40A4:  MOVS            R1, #0
4B40A6:  LDR.W           LR, [R4]; CPedGroups::ms_groups ...
4B40AA:  MOV             R4, R1
4B40AC:  LDRB            R1, [R3,R4]
4B40AE:  CMP             R1, #0
4B40B0:  IT NE
4B40B2:  CMPNE           R0, #0
4B40B4:  BEQ             loc_4B40EA
4B40B6:  MLA.W           R1, R4, R12, LR
4B40BA:  LDR             R5, [R2,#0xC]
4B40BC:  CMP             R5, R0
4B40BE:  BEQ             loc_4B40F6
4B40C0:  LDR             R5, [R2,#0x10]
4B40C2:  CMP             R5, R0
4B40C4:  ITT NE
4B40C6:  LDRNE           R5, [R2,#0x14]
4B40C8:  CMPNE           R5, R0
4B40CA:  BEQ             loc_4B40F6
4B40CC:  LDR             R5, [R2,#0x18]
4B40CE:  CMP             R5, R0
4B40D0:  ITT NE
4B40D2:  LDRNE           R5, [R2,#0x1C]
4B40D4:  CMPNE           R5, R0
4B40D6:  BEQ             loc_4B40F6
4B40D8:  LDR             R5, [R2,#0x20]
4B40DA:  CMP             R5, R0
4B40DC:  ITT NE
4B40DE:  LDRNE           R5, [R2,#0x24]
4B40E0:  CMPNE           R5, R0
4B40E2:  BEQ             loc_4B40F6
4B40E4:  LDR             R1, [R2,#0x28]
4B40E6:  CMP             R1, R0
4B40E8:  BEQ             loc_4B40FA
4B40EA:  ADD.W           R2, R2, #0x2D4
4B40EE:  ADDS            R1, R4, #1
4B40F0:  CMP             R4, #7
4B40F2:  BLT             loc_4B40AA
4B40F4:  MOVS            R1, #0
4B40F6:  MOV             R0, R1
4B40F8:  POP             {R4,R5,R7,PC}
4B40FA:  MOV             R1, R2
4B40FC:  MOV             R0, R1
4B40FE:  POP             {R4,R5,R7,PC}
