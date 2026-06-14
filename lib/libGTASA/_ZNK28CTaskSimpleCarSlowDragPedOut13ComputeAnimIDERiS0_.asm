; =========================================================
; Game Engine Function: _ZNK28CTaskSimpleCarSlowDragPedOut13ComputeAnimIDERiS0_
; Address            : 0x5041B8 - 0x5041FE
; =========================================================

5041B8:  PUSH            {R4,R5,R7,LR}
5041BA:  ADD             R7, SP, #8
5041BC:  MOV             R5, R1
5041BE:  LDR             R1, [R0,#0x14]
5041C0:  SUBS            R1, #8
5041C2:  CMP             R1, #0xB
5041C4:  BCS             loc_5041D4
5041C6:  UXTH            R3, R1
5041C8:  MOVW            R4, #0x40F
5041CC:  LSR.W           R3, R4, R3
5041D0:  LSLS            R3, R3, #0x1F
5041D2:  BNE             loc_5041D8
5041D4:  LDR             R1, [R2]
5041D6:  B               loc_5041E0
5041D8:  ADR             R3, dword_504200
5041DA:  LDR.W           R1, [R3,R1,LSL#2]; int
5041DE:  STR             R1, [R2]
5041E0:  LDR             R0, [R0,#0x10]
5041E2:  MOVS            R3, #0x94
5041E4:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5041EE)
5041E6:  LDR.W           R0, [R0,#0x388]
5041EA:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5041EC:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5041EE:  LDRB.W          R0, [R0,#0xDE]
5041F2:  SMLABB.W        R0, R0, R3, R2; this
5041F6:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5041FA:  STR             R0, [R5]
5041FC:  POP             {R4,R5,R7,PC}
