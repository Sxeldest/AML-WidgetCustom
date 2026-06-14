; =========================================================
; Game Engine Function: _ZN13CEventHandler26ComputeChatPartnerResponseEP6CEventP5CTaskS3_
; Address            : 0x3806C4 - 0x380728
; =========================================================

3806C4:  PUSH            {R4-R7,LR}
3806C6:  ADD             R7, SP, #0xC
3806C8:  PUSH.W          {R11}
3806CC:  SUB             SP, SP, #0x20
3806CE:  MOV             R4, R0
3806D0:  CBZ             R1, loc_380720
3806D2:  LDR             R5, [R1,#0xC]
3806D4:  CBZ             R5, loc_3806E8
3806D6:  LDR             R0, [R4]
3806D8:  LDRB            R6, [R1,#9]
3806DA:  MOVW            R1, #0x4B4; int
3806DE:  LDR.W           R0, [R0,#0x440]; this
3806E2:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
3806E6:  CBZ             R0, loc_3806EC
3806E8:  MOVS            R0, #0
3806EA:  B               loc_38071E
3806EC:  BLX             rand
3806F0:  MOVS            R0, #dword_78; this
3806F2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3806F6:  LDR             R1, =(aEventchatpartn - 0x38070A); "EventChatPartnerResponse"
3806F8:  MOVS            R2, #0
3806FA:  MOV.W           R12, #1
3806FE:  MOV.W           LR, #4
380702:  MOV.W           R3, #0x3F000000
380706:  ADD             R1, PC; "EventChatPartnerResponse"
380708:  STRD.W          R3, LR, [SP,#0x30+var_30]
38070C:  MOV             R3, R6
38070E:  STRD.W          R12, R2, [SP,#0x30+var_28]
380712:  STRD.W          R2, R2, [SP,#0x30+var_20]
380716:  STR             R2, [SP,#0x30+var_18]
380718:  MOV             R2, R5
38071A:  BLX             j__ZN23CTaskComplexPartnerChatC2EPcP4CPedhfihh7CVector; CTaskComplexPartnerChat::CTaskComplexPartnerChat(char *,CPed *,uchar,float,int,uchar,uchar,CVector)
38071E:  STR             R0, [R4,#0x24]
380720:  ADD             SP, SP, #0x20 ; ' '
380722:  POP.W           {R11}
380726:  POP             {R4-R7,PC}
