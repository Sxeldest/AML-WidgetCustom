; =========================================================
; Game Engine Function: _ZN25CTaskSimpleCarForcePedOutD0Ev
; Address            : 0x503BD0 - 0x503BFC
; =========================================================

503BD0:  PUSH            {R4,R6,R7,LR}
503BD2:  ADD             R7, SP, #8
503BD4:  MOV             R4, R0
503BD6:  LDR             R0, =(_ZTV25CTaskSimpleCarForcePedOut_ptr - 0x503BDE)
503BD8:  MOV             R1, R4
503BDA:  ADD             R0, PC; _ZTV25CTaskSimpleCarForcePedOut_ptr
503BDC:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarForcePedOut ...
503BDE:  LDR.W           R0, [R1,#8]!; CEntity **
503BE2:  ADDS            R2, #8
503BE4:  STR             R2, [R4]
503BE6:  CMP             R0, #0
503BE8:  IT NE
503BEA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
503BEE:  MOV             R0, R4; this
503BF0:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
503BF4:  POP.W           {R4,R6,R7,LR}
503BF8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
