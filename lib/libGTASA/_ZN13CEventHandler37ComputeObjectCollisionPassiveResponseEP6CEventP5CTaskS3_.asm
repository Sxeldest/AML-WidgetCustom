; =========================================================
; Game Engine Function: _ZN13CEventHandler37ComputeObjectCollisionPassiveResponseEP6CEventP5CTaskS3_
; Address            : 0x383708 - 0x383752
; =========================================================

383708:  PUSH            {R4-R7,LR}
38370A:  ADD             R7, SP, #0xC
38370C:  PUSH.W          {R8}
383710:  LDR             R5, [R1,#0x10]
383712:  MOV             R6, R3
383714:  MOV             R4, R0
383716:  CBZ             R5, loc_38374C
383718:  LDR             R0, [R4]
38371A:  LDRB.W          R0, [R0,#0x485]
38371E:  LSLS            R0, R0, #0x1F
383720:  BNE             loc_38374C
383722:  CMP             R6, #0
383724:  ITT NE
383726:  LDRNE.W         R8, [R1,#0x14]
38372A:  CMPNE.W         R8, #1
38372E:  BEQ             loc_38374C
383730:  MOV             R0, R6; this
383732:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
383736:  CBZ             R0, loc_38374C
383738:  MOVS            R0, #dword_54; this
38373A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38373E:  ADD.W           R2, R6, #0xC; CVector *
383742:  MOV             R1, R8; int
383744:  MOV             R3, R5; CEntity *
383746:  BLX             j__ZN27CTaskComplexWalkRoundObjectC2EiRK7CVectorP7CEntity; CTaskComplexWalkRoundObject::CTaskComplexWalkRoundObject(int,CVector const&,CEntity *)
38374A:  STR             R0, [R4,#0x24]
38374C:  POP.W           {R8}
383750:  POP             {R4-R7,PC}
