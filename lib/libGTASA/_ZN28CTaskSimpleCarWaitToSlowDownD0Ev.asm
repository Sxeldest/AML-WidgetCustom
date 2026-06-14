; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarWaitToSlowDownD0Ev
; Address            : 0x5021A8 - 0x5021D4
; =========================================================

5021A8:  PUSH            {R4,R6,R7,LR}
5021AA:  ADD             R7, SP, #8
5021AC:  MOV             R4, R0
5021AE:  LDR             R0, =(_ZTV28CTaskSimpleCarWaitToSlowDown_ptr - 0x5021B6)
5021B0:  MOV             R1, R4
5021B2:  ADD             R0, PC; _ZTV28CTaskSimpleCarWaitToSlowDown_ptr
5021B4:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarWaitToSlowDown ...
5021B6:  LDR.W           R0, [R1,#8]!; CEntity **
5021BA:  ADDS            R2, #8
5021BC:  STR             R2, [R4]
5021BE:  CMP             R0, #0
5021C0:  IT NE
5021C2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5021C6:  MOV             R0, R4; this
5021C8:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
5021CC:  POP.W           {R4,R6,R7,LR}
5021D0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
