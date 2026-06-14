; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarWaitToSlowDownD2Ev
; Address            : 0x50217C - 0x5021A4
; =========================================================

50217C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleCarWaitToSlowDown::~CTaskSimpleCarWaitToSlowDown()'
50217E:  ADD             R7, SP, #8
502180:  MOV             R4, R0
502182:  LDR             R0, =(_ZTV28CTaskSimpleCarWaitToSlowDown_ptr - 0x50218A)
502184:  MOV             R1, R4
502186:  ADD             R0, PC; _ZTV28CTaskSimpleCarWaitToSlowDown_ptr
502188:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarWaitToSlowDown ...
50218A:  LDR.W           R0, [R1,#8]!; CEntity **
50218E:  ADDS            R2, #8
502190:  STR             R2, [R4]
502192:  CMP             R0, #0
502194:  IT NE
502196:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50219A:  MOV             R0, R4; this
50219C:  POP.W           {R4,R6,R7,LR}
5021A0:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
