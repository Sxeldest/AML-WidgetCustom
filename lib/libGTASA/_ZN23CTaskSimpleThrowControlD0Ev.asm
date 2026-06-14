; =========================================================
; Game Engine Function: _ZN23CTaskSimpleThrowControlD0Ev
; Address            : 0x4DEEAC - 0x4DEED8
; =========================================================

4DEEAC:  PUSH            {R4,R6,R7,LR}
4DEEAE:  ADD             R7, SP, #8
4DEEB0:  MOV             R4, R0
4DEEB2:  LDR             R0, =(_ZTV23CTaskSimpleThrowControl_ptr - 0x4DEEBA)
4DEEB4:  MOV             R1, R4
4DEEB6:  ADD             R0, PC; _ZTV23CTaskSimpleThrowControl_ptr
4DEEB8:  LDR             R2, [R0]; `vtable for'CTaskSimpleThrowControl ...
4DEEBA:  LDR.W           R0, [R1,#0xC]!; CEntity **
4DEEBE:  ADDS            R2, #8
4DEEC0:  STR             R2, [R4]
4DEEC2:  CMP             R0, #0
4DEEC4:  IT NE
4DEEC6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DEECA:  MOV             R0, R4; this
4DEECC:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4DEED0:  POP.W           {R4,R6,R7,LR}
4DEED4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
