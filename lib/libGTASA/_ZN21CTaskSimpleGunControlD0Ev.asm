; =========================================================
; Game Engine Function: _ZN21CTaskSimpleGunControlD0Ev
; Address            : 0x4DE02C - 0x4DE058
; =========================================================

4DE02C:  PUSH            {R4,R6,R7,LR}
4DE02E:  ADD             R7, SP, #8
4DE030:  MOV             R4, R0
4DE032:  LDR             R0, =(_ZTV21CTaskSimpleGunControl_ptr - 0x4DE03A)
4DE034:  MOV             R1, R4
4DE036:  ADD             R0, PC; _ZTV21CTaskSimpleGunControl_ptr
4DE038:  LDR             R2, [R0]; `vtable for'CTaskSimpleGunControl ...
4DE03A:  LDR.W           R0, [R1,#0xC]!; CEntity **
4DE03E:  ADDS            R2, #8
4DE040:  STR             R2, [R4]
4DE042:  CMP             R0, #0
4DE044:  IT NE
4DE046:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DE04A:  MOV             R0, R4; this
4DE04C:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4DE050:  POP.W           {R4,R6,R7,LR}
4DE054:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
