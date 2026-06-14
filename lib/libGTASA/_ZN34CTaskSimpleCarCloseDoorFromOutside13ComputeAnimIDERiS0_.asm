; =========================================================
; Game Engine Function: _ZN34CTaskSimpleCarCloseDoorFromOutside13ComputeAnimIDERiS0_
; Address            : 0x501930 - 0x501968
; =========================================================

501930:  PUSH            {R4,R6,R7,LR}
501932:  ADD             R7, SP, #8
501934:  MOV             R4, R1
501936:  LDR             R1, [R0,#0x14]
501938:  SUBS            R1, #8
50193A:  CMP             R1, #4
50193C:  BCS             loc_501948
50193E:  ADR             R3, dword_501968
501940:  LDR.W           R1, [R3,R1,LSL#2]
501944:  STR             R1, [R2]
501946:  B               loc_50194A
501948:  LDR             R1, [R2]; int
50194A:  LDR             R0, [R0,#0x10]
50194C:  MOVS            R3, #0x94
50194E:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x501958)
501950:  LDR.W           R0, [R0,#0x388]
501954:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
501956:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
501958:  LDRB.W          R0, [R0,#0xDE]
50195C:  SMLABB.W        R0, R0, R3, R2; this
501960:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
501964:  STR             R0, [R4]
501966:  POP             {R4,R6,R7,PC}
