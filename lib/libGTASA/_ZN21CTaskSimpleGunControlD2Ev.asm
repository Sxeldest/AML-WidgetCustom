; =========================================================
; Game Engine Function: _ZN21CTaskSimpleGunControlD2Ev
; Address            : 0x4DE000 - 0x4DE028
; =========================================================

4DE000:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleGunControl::~CTaskSimpleGunControl()'
4DE002:  ADD             R7, SP, #8
4DE004:  MOV             R4, R0
4DE006:  LDR             R0, =(_ZTV21CTaskSimpleGunControl_ptr - 0x4DE00E)
4DE008:  MOV             R1, R4
4DE00A:  ADD             R0, PC; _ZTV21CTaskSimpleGunControl_ptr
4DE00C:  LDR             R2, [R0]; `vtable for'CTaskSimpleGunControl ...
4DE00E:  LDR.W           R0, [R1,#0xC]!; CEntity **
4DE012:  ADDS            R2, #8
4DE014:  STR             R2, [R4]
4DE016:  CMP             R0, #0
4DE018:  IT NE
4DE01A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DE01E:  MOV             R0, R4; this
4DE020:  POP.W           {R4,R6,R7,LR}
4DE024:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
