; =========================================================
; Game Engine Function: _ZNK21CTaskSimpleCarFallOut13ComputeAnimIDERiS0_
; Address            : 0x505A50 - 0x505A8A
; =========================================================

505A50:  PUSH            {R4,R6,R7,LR}
505A52:  ADD             R7, SP, #8
505A54:  MOV             R4, R1
505A56:  LDR             R1, [R0,#0x14]
505A58:  BIC.W           R3, R1, #1
505A5C:  MOV.W           R1, #0x184
505A60:  CMP             R3, #0xA
505A62:  MOV.W           R3, #0x94
505A66:  IT EQ
505A68:  MOVWEQ          R1, #0x183; int
505A6C:  STR             R1, [R2]
505A6E:  LDR             R0, [R0,#0x10]
505A70:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x505A7A)
505A72:  LDR.W           R0, [R0,#0x388]
505A76:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
505A78:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
505A7A:  LDRB.W          R0, [R0,#0xDE]
505A7E:  SMLABB.W        R0, R0, R3, R2; this
505A82:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
505A86:  STR             R0, [R4]
505A88:  POP             {R4,R6,R7,PC}
