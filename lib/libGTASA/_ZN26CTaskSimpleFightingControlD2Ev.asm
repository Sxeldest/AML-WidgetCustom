; =========================================================
; Game Engine Function: _ZN26CTaskSimpleFightingControlD2Ev
; Address            : 0x4DB4F4 - 0x4DB51C
; =========================================================

4DB4F4:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleFightingControl::~CTaskSimpleFightingControl()'
4DB4F6:  ADD             R7, SP, #8
4DB4F8:  MOV             R4, R0
4DB4FA:  LDR             R0, =(_ZTV26CTaskSimpleFightingControl_ptr - 0x4DB502)
4DB4FC:  MOV             R1, R4
4DB4FE:  ADD             R0, PC; _ZTV26CTaskSimpleFightingControl_ptr
4DB500:  LDR             R2, [R0]; `vtable for'CTaskSimpleFightingControl ...
4DB502:  LDR.W           R0, [R1,#0xC]!; CEntity **
4DB506:  ADDS            R2, #8
4DB508:  STR             R2, [R4]
4DB50A:  CMP             R0, #0
4DB50C:  IT NE
4DB50E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DB512:  MOV             R0, R4; this
4DB514:  POP.W           {R4,R6,R7,LR}
4DB518:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
