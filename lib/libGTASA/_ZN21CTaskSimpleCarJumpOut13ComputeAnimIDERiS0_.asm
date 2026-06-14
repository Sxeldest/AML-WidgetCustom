; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarJumpOut13ComputeAnimIDERiS0_
; Address            : 0x503A3C - 0x503A74
; =========================================================

503A3C:  PUSH            {R4,R6,R7,LR}
503A3E:  ADD             R7, SP, #8
503A40:  MOV             R4, R1
503A42:  LDR             R1, [R0,#0x18]
503A44:  SUBS            R1, #8
503A46:  CMP             R1, #4
503A48:  BCS             loc_503A54
503A4A:  ADR             R3, dword_503A74
503A4C:  LDR.W           R1, [R3,R1,LSL#2]
503A50:  STR             R1, [R2]
503A52:  B               loc_503A56
503A54:  LDR             R1, [R2]; int
503A56:  LDR             R0, [R0,#0x10]
503A58:  MOVS            R3, #0x94
503A5A:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x503A64)
503A5C:  LDR.W           R0, [R0,#0x388]
503A60:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
503A62:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
503A64:  LDRB.W          R0, [R0,#0xDE]
503A68:  SMLABB.W        R0, R0, R3, R2; this
503A6C:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
503A70:  STR             R0, [R4]
503A72:  POP             {R4,R6,R7,PC}
