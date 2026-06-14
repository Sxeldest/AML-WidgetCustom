; =========================================================
; Game Engine Function: _ZN31CTaskSimpleWaitUntilPedIsOutCarD2Ev
; Address            : 0x50668C - 0x5066B4
; =========================================================

50668C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleWaitUntilPedIsOutCar::~CTaskSimpleWaitUntilPedIsOutCar()'
50668E:  ADD             R7, SP, #8
506690:  MOV             R4, R0
506692:  LDR             R0, =(_ZTV31CTaskSimpleWaitUntilPedIsOutCar_ptr - 0x50669A)
506694:  MOV             R1, R4
506696:  ADD             R0, PC; _ZTV31CTaskSimpleWaitUntilPedIsOutCar_ptr
506698:  LDR             R2, [R0]; `vtable for'CTaskSimpleWaitUntilPedIsOutCar ...
50669A:  LDR.W           R0, [R1,#8]!; CEntity **
50669E:  ADDS            R2, #8
5066A0:  STR             R2, [R4]
5066A2:  CMP             R0, #0
5066A4:  IT NE
5066A6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5066AA:  MOV             R0, R4; this
5066AC:  POP.W           {R4,R6,R7,LR}
5066B0:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
