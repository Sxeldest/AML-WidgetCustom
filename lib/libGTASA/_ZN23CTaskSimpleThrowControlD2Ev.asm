; =========================================================
; Game Engine Function: _ZN23CTaskSimpleThrowControlD2Ev
; Address            : 0x4DEE80 - 0x4DEEA8
; =========================================================

4DEE80:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleThrowControl::~CTaskSimpleThrowControl()'
4DEE82:  ADD             R7, SP, #8
4DEE84:  MOV             R4, R0
4DEE86:  LDR             R0, =(_ZTV23CTaskSimpleThrowControl_ptr - 0x4DEE8E)
4DEE88:  MOV             R1, R4
4DEE8A:  ADD             R0, PC; _ZTV23CTaskSimpleThrowControl_ptr
4DEE8C:  LDR             R2, [R0]; `vtable for'CTaskSimpleThrowControl ...
4DEE8E:  LDR.W           R0, [R1,#0xC]!; CEntity **
4DEE92:  ADDS            R2, #8
4DEE94:  STR             R2, [R4]
4DEE96:  CMP             R0, #0
4DEE98:  IT NE
4DEE9A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DEE9E:  MOV             R0, R4; this
4DEEA0:  POP.W           {R4,R6,R7,LR}
4DEEA4:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
