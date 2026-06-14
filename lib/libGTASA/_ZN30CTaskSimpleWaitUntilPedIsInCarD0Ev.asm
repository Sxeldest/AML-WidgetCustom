; =========================================================
; Game Engine Function: _ZN30CTaskSimpleWaitUntilPedIsInCarD0Ev
; Address            : 0x5067B4 - 0x5067E0
; =========================================================

5067B4:  PUSH            {R4,R6,R7,LR}
5067B6:  ADD             R7, SP, #8
5067B8:  MOV             R4, R0
5067BA:  LDR             R0, =(_ZTV30CTaskSimpleWaitUntilPedIsInCar_ptr - 0x5067C2)
5067BC:  MOV             R1, R4
5067BE:  ADD             R0, PC; _ZTV30CTaskSimpleWaitUntilPedIsInCar_ptr
5067C0:  LDR             R2, [R0]; `vtable for'CTaskSimpleWaitUntilPedIsInCar ...
5067C2:  LDR.W           R0, [R1,#8]!; CEntity **
5067C6:  ADDS            R2, #8
5067C8:  STR             R2, [R4]
5067CA:  CMP             R0, #0
5067CC:  IT NE
5067CE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5067D2:  MOV             R0, R4; this
5067D4:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
5067D8:  POP.W           {R4,R6,R7,LR}
5067DC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
