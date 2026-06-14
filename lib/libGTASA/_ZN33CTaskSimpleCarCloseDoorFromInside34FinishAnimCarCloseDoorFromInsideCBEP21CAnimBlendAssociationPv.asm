; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarCloseDoorFromInside34FinishAnimCarCloseDoorFromInsideCBEP21CAnimBlendAssociationPv
; Address            : 0x50176C - 0x5017DA
; =========================================================

50176C:  PUSH            {R4,R5,R7,LR}
50176E:  ADD             R7, SP, #8
501770:  SUB             SP, SP, #8
501772:  MOV             R4, R1
501774:  MOVS            R1, #1
501776:  LDR             R0, [R4,#0x10]
501778:  STRB            R1, [R4,#8]
50177A:  CBZ             R0, loc_5017C4
50177C:  LDR             R1, [R4,#0x14]
50177E:  SUBS            R1, #8
501780:  CMP             R1, #2
501782:  BHI             loc_50178E
501784:  LDR             R2, =(unk_61E6B4 - 0x50178A)
501786:  ADD             R2, PC; unk_61E6B4
501788:  LDR.W           R5, [R2,R1,LSL#2]
50178C:  B               loc_501792
50178E:  MOVW            R5, #0x171
501792:  LDR.W           R0, [R0,#0x388]
501796:  MOVS            R2, #0x94
501798:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x50179E)
50179A:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
50179C:  LDRB.W          R0, [R0,#0xDE]
5017A0:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5017A2:  SMLABB.W        R0, R0, R2, R1; this
5017A6:  MOV             R1, R5; int
5017A8:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5017AC:  MOV             R3, R0
5017AE:  LDRD.W          R0, R2, [R4,#0x10]
5017B2:  LDR             R1, [R0]
5017B4:  LDR.W           R12, [R1,#0x74]
5017B8:  MOV.W           R1, #0x3F800000
5017BC:  STRD.W          R5, R1, [SP,#0x10+var_10]
5017C0:  MOVS            R1, #0
5017C2:  BLX             R12
5017C4:  LDR             R0, [R4,#0xC]
5017C6:  CMP             R0, #0
5017C8:  ITTT NE
5017CA:  MOVNE           R1, #0
5017CC:  MOVTNE          R1, #0xC47A
5017D0:  STRNE           R1, [R0,#0x1C]
5017D2:  MOVS            R0, #0
5017D4:  STR             R0, [R4,#0xC]
5017D6:  ADD             SP, SP, #8
5017D8:  POP             {R4,R5,R7,PC}
