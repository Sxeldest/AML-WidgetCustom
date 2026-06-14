; =========================================================
; Game Engine Function: _ZN30CTaskSimpleWaitUntilPedIsInCarD2Ev
; Address            : 0x506788 - 0x5067B0
; =========================================================

506788:  PUSH            {R4,R6,R7,LR}
50678A:  ADD             R7, SP, #8
50678C:  MOV             R4, R0
50678E:  LDR             R0, =(_ZTV30CTaskSimpleWaitUntilPedIsInCar_ptr - 0x506796)
506790:  MOV             R1, R4
506792:  ADD             R0, PC; _ZTV30CTaskSimpleWaitUntilPedIsInCar_ptr
506794:  LDR             R2, [R0]; `vtable for'CTaskSimpleWaitUntilPedIsInCar ...
506796:  LDR.W           R0, [R1,#8]!; CEntity **
50679A:  ADDS            R2, #8
50679C:  STR             R2, [R4]
50679E:  CMP             R0, #0
5067A0:  IT NE
5067A2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5067A6:  MOV             R0, R4; this
5067A8:  POP.W           {R4,R6,R7,LR}
5067AC:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
