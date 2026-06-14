; =========================================================
; Game Engine Function: _ZN34CTaskSimpleWaitUntilAreaCodesMatchD0Ev
; Address            : 0x4F17EC - 0x4F1818
; =========================================================

4F17EC:  PUSH            {R4,R6,R7,LR}
4F17EE:  ADD             R7, SP, #8
4F17F0:  MOV             R4, R0
4F17F2:  LDR             R0, =(_ZTV34CTaskSimpleWaitUntilAreaCodesMatch_ptr - 0x4F17FA)
4F17F4:  MOV             R1, R4
4F17F6:  ADD             R0, PC; _ZTV34CTaskSimpleWaitUntilAreaCodesMatch_ptr
4F17F8:  LDR             R2, [R0]; `vtable for'CTaskSimpleWaitUntilAreaCodesMatch ...
4F17FA:  LDR.W           R0, [R1,#0x20]!; CEntity **
4F17FE:  ADDS            R2, #8
4F1800:  STR             R2, [R4]
4F1802:  CMP             R0, #0
4F1804:  IT NE
4F1806:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F180A:  MOV             R0, R4; this
4F180C:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4F1810:  POP.W           {R4,R6,R7,LR}
4F1814:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
