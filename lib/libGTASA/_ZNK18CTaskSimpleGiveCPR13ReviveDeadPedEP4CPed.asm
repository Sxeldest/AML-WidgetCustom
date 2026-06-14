; =========================================================
; Game Engine Function: _ZNK18CTaskSimpleGiveCPR13ReviveDeadPedEP4CPed
; Address            : 0x510360 - 0x5103AA
; =========================================================

510360:  PUSH            {R4,R5,R7,LR}
510362:  ADD             R7, SP, #8
510364:  SUB             SP, SP, #0x10
510366:  LDR             R0, [R0,#0xC]
510368:  LDR             R4, [R0]
51036A:  CBZ             R4, loc_5103A6
51036C:  MOVS            R1, #1
51036E:  STRB            R1, [R0,#5]
510370:  MOVS            R1, #0
510372:  LDRB.W          R0, [R4,#0x485]
510376:  CMP.W           R1, R0,LSR#7
51037A:  BNE             loc_5103A6
51037C:  LDR             R0, =(g_InterestingEvents_ptr - 0x510386)
51037E:  MOVS            R1, #0xB
510380:  MOV             R2, R4
510382:  ADD             R0, PC; g_InterestingEvents_ptr
510384:  LDR             R0, [R0]; g_InterestingEvents
510386:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
51038A:  ADD             R5, SP, #0x18+var_14
51038C:  MOV             R0, R5; this
51038E:  BLX             j__ZN13CEventRevivedC2Ev; CEventRevived::CEventRevived(void)
510392:  LDR.W           R0, [R4,#0x440]
510396:  MOV             R1, R5; CEvent *
510398:  MOVS            R2, #0; bool
51039A:  ADDS            R0, #0x68 ; 'h'; this
51039C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5103A0:  MOV             R0, R5; this
5103A2:  BLX             j__ZN6CEventD2Ev_4; CEvent::~CEvent()
5103A6:  ADD             SP, SP, #0x10
5103A8:  POP             {R4,R5,R7,PC}
