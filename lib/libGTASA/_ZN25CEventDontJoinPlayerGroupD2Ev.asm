; =========================================================
; Game Engine Function: _ZN25CEventDontJoinPlayerGroupD2Ev
; Address            : 0x4CA63C - 0x4CA664
; =========================================================

4CA63C:  PUSH            {R4,R6,R7,LR}
4CA63E:  ADD             R7, SP, #8
4CA640:  MOV             R4, R0
4CA642:  LDR             R0, =(_ZTV25CEventDontJoinPlayerGroup_ptr - 0x4CA64A)
4CA644:  MOV             R1, R4
4CA646:  ADD             R0, PC; _ZTV25CEventDontJoinPlayerGroup_ptr
4CA648:  LDR             R2, [R0]; `vtable for'CEventDontJoinPlayerGroup ...
4CA64A:  LDR.W           R0, [R1,#0xC]!; CEntity **
4CA64E:  ADDS            R2, #8
4CA650:  STR             R2, [R4]
4CA652:  CMP             R0, #0
4CA654:  IT NE
4CA656:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4CA65A:  MOV             R0, R4; this
4CA65C:  POP.W           {R4,R6,R7,LR}
4CA660:  B.W             j_j__ZN6CEventD2Ev_3; j_CEvent::~CEvent()
