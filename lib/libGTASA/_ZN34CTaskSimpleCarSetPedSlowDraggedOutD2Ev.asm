; =========================================================
; Game Engine Function: _ZN34CTaskSimpleCarSetPedSlowDraggedOutD2Ev
; Address            : 0x504A48 - 0x504A70
; =========================================================

504A48:  PUSH            {R4,R6,R7,LR}
504A4A:  ADD             R7, SP, #8
504A4C:  MOV             R4, R0
504A4E:  LDR             R0, =(_ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr - 0x504A56)
504A50:  MOV             R1, R4
504A52:  ADD             R0, PC; _ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr
504A54:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarSetPedSlowDraggedOut ...
504A56:  LDR.W           R0, [R1,#8]!; CEntity **
504A5A:  ADDS            R2, #8
504A5C:  STR             R2, [R4]
504A5E:  CMP             R0, #0
504A60:  IT NE
504A62:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
504A66:  MOV             R0, R4; this
504A68:  POP.W           {R4,R6,R7,LR}
504A6C:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
