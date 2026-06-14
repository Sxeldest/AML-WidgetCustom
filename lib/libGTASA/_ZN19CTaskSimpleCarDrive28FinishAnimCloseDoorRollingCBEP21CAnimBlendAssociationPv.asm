; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarDrive28FinishAnimCloseDoorRollingCBEP21CAnimBlendAssociationPv
; Address            : 0x4FAE38 - 0x4FAE9E
; =========================================================

4FAE38:  PUSH            {R4,R5,R7,LR}
4FAE3A:  ADD             R7, SP, #8
4FAE3C:  SUB             SP, SP, #8
4FAE3E:  MOV             R4, R1
4FAE40:  MOVS            R0, #0
4FAE42:  LDRB.W          R1, [R4,#0x5C]
4FAE46:  STR             R0, [R4,#0xC]
4FAE48:  LDR             R0, [R4,#8]; this
4FAE4A:  AND.W           R1, R1, #0xDF
4FAE4E:  STRB.W          R1, [R4,#0x5C]
4FAE52:  CBZ             R0, loc_4FAE9A
4FAE54:  MOVS            R1, #1; unsigned __int8
4FAE56:  BLX             j__ZN8CVehicle20ClearGettingOutFlagsEh; CVehicle::ClearGettingOutFlags(uchar)
4FAE5A:  LDR             R0, [R4,#8]
4FAE5C:  LDR.W           R1, [R0,#0x464]
4FAE60:  CBZ             R1, loc_4FAE9A
4FAE62:  LDR.W           R0, [R0,#0x388]
4FAE66:  MOVS            R2, #0x94
4FAE68:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x4FAE72)
4FAE6A:  MOV.W           R5, #0x182
4FAE6E:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
4FAE70:  LDRB.W          R0, [R0,#0xDE]
4FAE74:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
4FAE76:  SMLABB.W        R0, R0, R2, R1; this
4FAE7A:  MOV.W           R1, #0x182; int
4FAE7E:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
4FAE82:  MOV             R3, R0
4FAE84:  LDR             R0, [R4,#8]
4FAE86:  LDR             R2, [R0]
4FAE88:  LDR.W           R1, [R0,#0x464]
4FAE8C:  LDR             R4, [R2,#0x74]
4FAE8E:  MOV.W           R2, #0x3F800000
4FAE92:  STRD.W          R5, R2, [SP,#0x10+var_10]
4FAE96:  MOVS            R2, #0xA
4FAE98:  BLX             R4
4FAE9A:  ADD             SP, SP, #8
4FAE9C:  POP             {R4,R5,R7,PC}
