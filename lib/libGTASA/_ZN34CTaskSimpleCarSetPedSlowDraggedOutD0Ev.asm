; =========================================================
; Game Engine Function: _ZN34CTaskSimpleCarSetPedSlowDraggedOutD0Ev
; Address            : 0x504A74 - 0x504AA0
; =========================================================

504A74:  PUSH            {R4,R6,R7,LR}
504A76:  ADD             R7, SP, #8
504A78:  MOV             R4, R0
504A7A:  LDR             R0, =(_ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr - 0x504A82)
504A7C:  MOV             R1, R4
504A7E:  ADD             R0, PC; _ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr
504A80:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarSetPedSlowDraggedOut ...
504A82:  LDR.W           R0, [R1,#8]!; CEntity **
504A86:  ADDS            R2, #8
504A88:  STR             R2, [R4]
504A8A:  CMP             R0, #0
504A8C:  IT NE
504A8E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
504A92:  MOV             R0, R4; this
504A94:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
504A98:  POP.W           {R4,R6,R7,LR}
504A9C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
