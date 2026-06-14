; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarCloseDoorFromInside13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x5014F0 - 0x501564
; =========================================================

5014F0:  PUSH            {R4-R7,LR}
5014F2:  ADD             R7, SP, #0xC
5014F4:  PUSH.W          {R11}
5014F8:  SUB             SP, SP, #8
5014FA:  MOV             R4, R1
5014FC:  MOV             R5, R0
5014FE:  CMP             R2, #2
501500:  BNE             loc_50155A
501502:  LDR             R0, [R5,#0xC]
501504:  CMP             R0, #0
501506:  ITTT NE
501508:  MOVNE           R1, #0
50150A:  MOVTNE          R1, #0xC47A
50150E:  STRNE           R1, [R0,#0x1C]
501510:  LDR             R0, [R5,#0x10]
501512:  CBZ             R0, loc_50155A
501514:  LDR             R1, [R5,#0x14]
501516:  SUBS            R1, #8
501518:  CMP             R1, #2
50151A:  BHI             loc_501526
50151C:  LDR             R2, =(unk_61E6B4 - 0x501522)
50151E:  ADD             R2, PC; unk_61E6B4
501520:  LDR.W           R6, [R2,R1,LSL#2]
501524:  B               loc_50152A
501526:  MOVW            R6, #0x171
50152A:  LDR.W           R0, [R0,#0x388]
50152E:  MOVS            R2, #0x94
501530:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x501536)
501532:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
501534:  LDRB.W          R0, [R0,#0xDE]
501538:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
50153A:  SMLABB.W        R0, R0, R2, R1; this
50153E:  MOV             R1, R6; int
501540:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
501544:  MOV             R3, R0
501546:  LDRD.W          R0, R2, [R5,#0x10]
50154A:  LDR             R1, [R0]
50154C:  LDR             R5, [R1,#0x74]
50154E:  MOV.W           R1, #0x3F800000
501552:  STRD.W          R6, R1, [SP,#0x18+var_18]
501556:  MOV             R1, R4
501558:  BLX             R5
50155A:  MOVS            R0, #0
50155C:  ADD             SP, SP, #8
50155E:  POP.W           {R11}
501562:  POP             {R4-R7,PC}
