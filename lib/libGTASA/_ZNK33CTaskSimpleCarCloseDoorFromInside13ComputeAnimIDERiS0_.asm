; =========================================================
; Game Engine Function: _ZNK33CTaskSimpleCarCloseDoorFromInside13ComputeAnimIDERiS0_
; Address            : 0x50156C - 0x5015A4
; =========================================================

50156C:  PUSH            {R4,R6,R7,LR}
50156E:  ADD             R7, SP, #8
501570:  MOV             R4, R1
501572:  LDR             R1, [R0,#0x14]
501574:  SUBS            R1, #8
501576:  CMP             R1, #4
501578:  BCS             loc_501584
50157A:  ADR             R3, dword_5015A4
50157C:  LDR.W           R1, [R3,R1,LSL#2]
501580:  STR             R1, [R2]
501582:  B               loc_501586
501584:  LDR             R1, [R2]; int
501586:  LDR             R0, [R0,#0x10]
501588:  MOVS            R3, #0x94
50158A:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x501594)
50158C:  LDR.W           R0, [R0,#0x388]
501590:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
501592:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
501594:  LDRB.W          R0, [R0,#0xDE]
501598:  SMLABB.W        R0, R0, R3, R2; this
50159C:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5015A0:  STR             R0, [R4]
5015A2:  POP             {R4,R6,R7,PC}
