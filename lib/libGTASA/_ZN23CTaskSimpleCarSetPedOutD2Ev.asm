; =========================================================
; Game Engine Function: _ZN23CTaskSimpleCarSetPedOutD2Ev
; Address            : 0x503CC0 - 0x503CE8
; =========================================================

503CC0:  PUSH            {R4,R6,R7,LR}
503CC2:  ADD             R7, SP, #8
503CC4:  MOV             R4, R0
503CC6:  LDR             R0, =(_ZTV23CTaskSimpleCarSetPedOut_ptr - 0x503CCE)
503CC8:  MOV             R1, R4
503CCA:  ADD             R0, PC; _ZTV23CTaskSimpleCarSetPedOut_ptr
503CCC:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarSetPedOut ...
503CCE:  LDR.W           R0, [R1,#8]!; CEntity **
503CD2:  ADDS            R2, #8
503CD4:  STR             R2, [R4]
503CD6:  CMP             R0, #0
503CD8:  IT NE
503CDA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
503CDE:  MOV             R0, R4; this
503CE0:  POP.W           {R4,R6,R7,LR}
503CE4:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
