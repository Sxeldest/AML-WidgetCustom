; =========================================================
; Game Engine Function: _ZN25CTaskSimpleCarForcePedOutD2Ev
; Address            : 0x503BA4 - 0x503BCC
; =========================================================

503BA4:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleCarForcePedOut::~CTaskSimpleCarForcePedOut()'
503BA6:  ADD             R7, SP, #8
503BA8:  MOV             R4, R0
503BAA:  LDR             R0, =(_ZTV25CTaskSimpleCarForcePedOut_ptr - 0x503BB2)
503BAC:  MOV             R1, R4
503BAE:  ADD             R0, PC; _ZTV25CTaskSimpleCarForcePedOut_ptr
503BB0:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarForcePedOut ...
503BB2:  LDR.W           R0, [R1,#8]!; CEntity **
503BB6:  ADDS            R2, #8
503BB8:  STR             R2, [R4]
503BBA:  CMP             R0, #0
503BBC:  IT NE
503BBE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
503BC2:  MOV             R0, R4; this
503BC4:  POP.W           {R4,R6,R7,LR}
503BC8:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
