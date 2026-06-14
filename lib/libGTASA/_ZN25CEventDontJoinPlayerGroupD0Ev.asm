; =========================================================
; Game Engine Function: _ZN25CEventDontJoinPlayerGroupD0Ev
; Address            : 0x4CA710 - 0x4CA73C
; =========================================================

4CA710:  PUSH            {R4,R6,R7,LR}
4CA712:  ADD             R7, SP, #8
4CA714:  MOV             R4, R0
4CA716:  LDR             R0, =(_ZTV25CEventDontJoinPlayerGroup_ptr - 0x4CA71E)
4CA718:  MOV             R1, R4
4CA71A:  ADD             R0, PC; _ZTV25CEventDontJoinPlayerGroup_ptr
4CA71C:  LDR             R2, [R0]; `vtable for'CEventDontJoinPlayerGroup ...
4CA71E:  LDR.W           R0, [R1,#0xC]!; CEntity **
4CA722:  ADDS            R2, #8
4CA724:  STR             R2, [R4]
4CA726:  CMP             R0, #0
4CA728:  IT NE
4CA72A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4CA72E:  MOV             R0, R4; this
4CA730:  BLX             j__ZN6CEventD2Ev_3; CEvent::~CEvent()
4CA734:  POP.W           {R4,R6,R7,LR}
4CA738:  B.W             sub_197900
