; =========================================================
; Game Engine Function: _ZN34CTaskSimpleCarCloseDoorFromOutside13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x5018B0 - 0x501928
; =========================================================

5018B0:  PUSH            {R4-R7,LR}
5018B2:  ADD             R7, SP, #0xC
5018B4:  PUSH.W          {R11}
5018B8:  SUB             SP, SP, #8
5018BA:  MOV             R4, R1
5018BC:  MOV             R5, R0
5018BE:  CMP             R2, #2
5018C0:  BNE             loc_5018E6
5018C2:  LDR             R0, [R5,#0xC]
5018C4:  CMP             R0, #0
5018C6:  ITTT NE
5018C8:  MOVNE           R1, #0
5018CA:  MOVTNE          R1, #0xC47A
5018CE:  STRNE           R1, [R0,#0x1C]
5018D0:  LDR             R0, [R5,#0x10]
5018D2:  CBZ             R0, loc_50191E
5018D4:  LDR             R1, [R5,#0x14]
5018D6:  SUBS            R1, #8
5018D8:  CMP             R1, #2
5018DA:  BHI             loc_5018EA
5018DC:  LDR             R2, =(unk_61E6C0 - 0x5018E2)
5018DE:  ADD             R2, PC; unk_61E6C0
5018E0:  LDR.W           R6, [R2,R1,LSL#2]
5018E4:  B               loc_5018EE
5018E6:  MOVS            R0, #0
5018E8:  B               loc_501920
5018EA:  MOV.W           R6, #0x17E
5018EE:  LDR.W           R0, [R0,#0x388]
5018F2:  MOVS            R2, #0x94
5018F4:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5018FA)
5018F6:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5018F8:  LDRB.W          R0, [R0,#0xDE]
5018FC:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5018FE:  SMLABB.W        R0, R0, R2, R1; this
501902:  MOV             R1, R6; int
501904:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
501908:  MOV             R3, R0
50190A:  LDRD.W          R0, R2, [R5,#0x10]
50190E:  LDR             R1, [R0]
501910:  LDR             R5, [R1,#0x74]
501912:  MOV.W           R1, #0x3F800000
501916:  STRD.W          R6, R1, [SP,#0x18+var_18]
50191A:  MOV             R1, R4
50191C:  BLX             R5
50191E:  MOVS            R0, #1
501920:  ADD             SP, SP, #8
501922:  POP.W           {R11}
501926:  POP             {R4-R7,PC}
