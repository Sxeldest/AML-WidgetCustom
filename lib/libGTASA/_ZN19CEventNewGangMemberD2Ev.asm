; =========================================================
; Game Engine Function: _ZN19CEventNewGangMemberD2Ev
; Address            : 0x4CA66C - 0x4CA694
; =========================================================

4CA66C:  PUSH            {R4,R6,R7,LR}
4CA66E:  ADD             R7, SP, #8
4CA670:  MOV             R4, R0
4CA672:  LDR             R0, =(_ZTV19CEventNewGangMember_ptr - 0x4CA67A)
4CA674:  MOV             R1, R4
4CA676:  ADD             R0, PC; _ZTV19CEventNewGangMember_ptr
4CA678:  LDR             R2, [R0]; `vtable for'CEventNewGangMember ...
4CA67A:  LDR.W           R0, [R1,#0xC]!; CEntity **
4CA67E:  ADDS            R2, #8
4CA680:  STR             R2, [R4]
4CA682:  CMP             R0, #0
4CA684:  IT NE
4CA686:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4CA68A:  MOV             R0, R4; this
4CA68C:  POP.W           {R4,R6,R7,LR}
4CA690:  B.W             j_j__ZN6CEventD2Ev_3; j_CEvent::~CEvent()
