; =========================================================
; Game Engine Function: _ZNK30CTaskSimpleCarSlowBeDraggedOut13ComputeAnimIDERiS0_
; Address            : 0x504770 - 0x5047A8
; =========================================================

504770:  PUSH            {R4,R6,R7,LR}
504772:  ADD             R7, SP, #8
504774:  MOV             R4, R1
504776:  LDR             R1, [R0,#0x14]
504778:  SUBS            R1, #8
50477A:  CMP             R1, #4
50477C:  BCS             loc_504788
50477E:  ADR             R3, dword_5047A8
504780:  LDR.W           R1, [R3,R1,LSL#2]
504784:  STR             R1, [R2]
504786:  B               loc_50478A
504788:  LDR             R1, [R2]; int
50478A:  LDR             R0, [R0,#0x10]
50478C:  MOVS            R3, #0x94
50478E:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x504798)
504790:  LDR.W           R0, [R0,#0x388]
504794:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
504796:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
504798:  LDRB.W          R0, [R0,#0xDE]
50479C:  SMLABB.W        R0, R0, R3, R2; this
5047A0:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5047A4:  STR             R0, [R4]
5047A6:  POP             {R4,R6,R7,PC}
