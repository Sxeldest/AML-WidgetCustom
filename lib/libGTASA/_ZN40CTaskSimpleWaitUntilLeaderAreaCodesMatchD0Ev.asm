; =========================================================
; Game Engine Function: _ZN40CTaskSimpleWaitUntilLeaderAreaCodesMatchD0Ev
; Address            : 0x4F2168 - 0x4F2194
; =========================================================

4F2168:  PUSH            {R4,R6,R7,LR}
4F216A:  ADD             R7, SP, #8
4F216C:  MOV             R4, R0
4F216E:  LDR             R0, =(_ZTV34CTaskSimpleWaitUntilAreaCodesMatch_ptr - 0x4F2176)
4F2170:  MOV             R1, R4
4F2172:  ADD             R0, PC; _ZTV34CTaskSimpleWaitUntilAreaCodesMatch_ptr
4F2174:  LDR             R2, [R0]; `vtable for'CTaskSimpleWaitUntilAreaCodesMatch ...
4F2176:  LDR.W           R0, [R1,#0x20]!; CEntity **
4F217A:  ADDS            R2, #8
4F217C:  STR             R2, [R4]
4F217E:  CMP             R0, #0
4F2180:  IT NE
4F2182:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F2186:  MOV             R0, R4; this
4F2188:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4F218C:  POP.W           {R4,R6,R7,LR}
4F2190:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
