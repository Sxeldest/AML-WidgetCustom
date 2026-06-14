; =========================================================
; Game Engine Function: _ZN34CTaskSimpleCarCloseDoorFromOutside10ProcessPedEP4CPed
; Address            : 0x50197C - 0x501A1A
; =========================================================

50197C:  PUSH            {R4-R7,LR}
50197E:  ADD             R7, SP, #0xC
501980:  PUSH.W          {R11}
501984:  SUB             SP, SP, #8
501986:  MOV             R5, R0
501988:  MOV             R4, R1
50198A:  LDRB            R0, [R5,#8]
50198C:  CBZ             R0, loc_501998
50198E:  MOVS            R0, #1
501990:  ADD             SP, SP, #8
501992:  POP.W           {R11}
501996:  POP             {R4-R7,PC}
501998:  LDR             R0, [R5,#0x10]
50199A:  CMP             R0, #0
50199C:  BEQ             loc_50198E
50199E:  LDR.W           R0, [R0,#0x388]
5019A2:  MOVS            R2, #0x94
5019A4:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5019AA)
5019A6:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5019A8:  LDRB.W          R0, [R0,#0xDE]
5019AC:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5019AE:  SMLABB.W        R0, R0, R2, R1
5019B2:  LDRB            R0, [R0,#8]
5019B4:  LSLS            R0, R0, #0x1F
5019B6:  BNE             loc_50198E
5019B8:  LDR             R0, [R5,#0xC]
5019BA:  CBNZ            R0, loc_5019CA
5019BC:  MOV             R0, R5; this
5019BE:  MOV             R1, R4; CPed *
5019C0:  BLX             j__ZN34CTaskSimpleCarCloseDoorFromOutside9StartAnimEPK4CPed; CTaskSimpleCarCloseDoorFromOutside::StartAnim(CPed const*)
5019C4:  LDR             R0, [R5,#0xC]
5019C6:  CMP             R0, #0
5019C8:  BEQ             loc_50198E
5019CA:  LDR             R0, [R5,#0x14]
5019CC:  SUBS            R0, #8
5019CE:  CMP             R0, #2
5019D0:  BHI             loc_5019DC
5019D2:  LDR             R1, =(unk_61E6C0 - 0x5019D8)
5019D4:  ADD             R1, PC; unk_61E6C0
5019D6:  LDR.W           R6, [R1,R0,LSL#2]
5019DA:  B               loc_5019E0
5019DC:  MOV.W           R6, #0x17E
5019E0:  LDR             R0, [R5,#0x10]
5019E2:  MOVS            R2, #0x94
5019E4:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5019EE)
5019E6:  LDR.W           R0, [R0,#0x388]
5019EA:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5019EC:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5019EE:  LDRB.W          R0, [R0,#0xDE]
5019F2:  SMLABB.W        R0, R0, R2, R1; this
5019F6:  MOV             R1, R6; int
5019F8:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5019FC:  MOV             R3, R0
5019FE:  LDRD.W          R1, R0, [R5,#0xC]
501A02:  LDR             R2, [R5,#0x14]
501A04:  LDR             R5, [R0]
501A06:  VLDR            S0, [R1,#0x20]
501A0A:  MOV             R1, R4
501A0C:  LDR             R5, [R5,#0x74]
501A0E:  VSTR            S0, [SP,#0x18+var_14]
501A12:  STR             R6, [SP,#0x18+var_18]
501A14:  BLX             R5
501A16:  MOVS            R0, #0
501A18:  B               loc_501990
