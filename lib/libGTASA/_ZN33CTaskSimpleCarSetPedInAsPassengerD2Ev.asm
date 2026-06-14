; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarSetPedInAsPassengerD2Ev
; Address            : 0x5026F8 - 0x502720
; =========================================================

5026F8:  PUSH            {R4,R6,R7,LR}
5026FA:  ADD             R7, SP, #8
5026FC:  MOV             R4, R0
5026FE:  LDR             R0, =(_ZTV33CTaskSimpleCarSetPedInAsPassenger_ptr - 0x502706)
502700:  MOV             R1, R4
502702:  ADD             R0, PC; _ZTV33CTaskSimpleCarSetPedInAsPassenger_ptr
502704:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarSetPedInAsPassenger ...
502706:  LDR.W           R0, [R1,#0x10]!; CEntity **
50270A:  ADDS            R2, #8
50270C:  STR             R2, [R4]
50270E:  CMP             R0, #0
502710:  IT NE
502712:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
502716:  MOV             R0, R4; this
502718:  POP.W           {R4,R6,R7,LR}
50271C:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
