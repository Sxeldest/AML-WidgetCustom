; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarSlowDragPedOut29FinishAnimCarSlowDragPedOutCBEP21CAnimBlendAssociationPv
; Address            : 0x504568 - 0x50461E
; =========================================================

504568:  PUSH            {R4-R7,LR}
50456A:  ADD             R7, SP, #0xC
50456C:  PUSH.W          {R11}
504570:  SUB             SP, SP, #8
504572:  MOV             R4, R1
504574:  MOVS            R0, #0
504576:  STR             R0, [R4,#0xC]
504578:  MOVS            R1, #1
50457A:  LDR             R0, [R4,#0x10]
50457C:  STRB            R1, [R4,#8]
50457E:  CBZ             R0, loc_5045D6
504580:  LDR             R1, [R4,#0x14]
504582:  SUB.W           R2, R1, #0xA
504586:  CMP             R2, #2
504588:  BCS             loc_504590
50458A:  MOV.W           R6, #0x16C
50458E:  B               loc_50459C
504590:  CMP             R1, #0x12
504592:  ITE EQ
504594:  MOVEQ.W         R6, #0x16E
504598:  MOVWNE          R6, #0x16D
50459C:  LDR.W           R0, [R0,#0x388]
5045A0:  MOVS            R2, #0x94
5045A2:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5045A8)
5045A4:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5045A6:  LDRB.W          R0, [R0,#0xDE]
5045AA:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5045AC:  SMLABB.W        R0, R0, R2, R1; this
5045B0:  MOV             R1, R6; int
5045B2:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5045B6:  MOV             R3, R0
5045B8:  LDRD.W          R0, R2, [R4,#0x10]
5045BC:  LDR             R1, [R0]
5045BE:  LDR             R5, [R1,#0x74]
5045C0:  MOV.W           R1, #0x3F800000
5045C4:  STRD.W          R6, R1, [SP,#0x18+var_18]
5045C8:  MOVS            R1, #0
5045CA:  BLX             R5
5045CC:  LDR             R0, [R4,#0x10]
5045CE:  CBZ             R0, loc_5045D6
5045D0:  LDR.W           R1, [R0,#0x5A0]
5045D4:  CBZ             R1, loc_5045DE
5045D6:  ADD             SP, SP, #8
5045D8:  POP.W           {R11}
5045DC:  POP             {R4-R7,PC}
5045DE:  LDR             R1, [R4,#0x14]; int
5045E0:  ADDW            R0, R0, #0x5B4; this
5045E4:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
5045E8:  CBZ             R0, loc_5045FA
5045EA:  LDRD.W          R0, R1, [R4,#0x10]; int
5045EE:  ADDW            R0, R0, #0x5B4; this
5045F2:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
5045F6:  CMP             R0, #2
5045F8:  BNE             loc_5045D6
5045FA:  LDRD.W          R0, R1, [R4,#0x10]; int
5045FE:  ADDW            R0, R0, #0x5B4; this
504602:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
504606:  LDRD.W          R3, R1, [R4,#0x10]; int
50460A:  ADDS            R2, R0, #1; unsigned int
50460C:  ADDW            R0, R3, #0x5B4; this
504610:  ADD             SP, SP, #8
504612:  POP.W           {R11}
504616:  POP.W           {R4-R7,LR}
50461A:  B.W             j_j__ZN14CDamageManager13SetDoorStatusEij; j_CDamageManager::SetDoorStatus(int,uint)
