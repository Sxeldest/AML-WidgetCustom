; =========================================================
; Game Engine Function: _ZN21CTaskSimpleIKPointArmD2Ev
; Address            : 0x4EFE58 - 0x4EFE92
; =========================================================

4EFE58:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleIKChain::~CTaskSimpleIKChain()'
4EFE5A:  ADD             R7, SP, #8
4EFE5C:  MOV             R4, R0
4EFE5E:  LDR             R0, =(_ZTV18CTaskSimpleIKChain_ptr - 0x4EFE66)
4EFE60:  LDR             R1, [R4,#0x10]; IKChain_c *
4EFE62:  ADD             R0, PC; _ZTV18CTaskSimpleIKChain_ptr
4EFE64:  CMP             R1, #0
4EFE66:  LDR             R0, [R0]; `vtable for'CTaskSimpleIKChain ...
4EFE68:  ADD.W           R0, R0, #8
4EFE6C:  STR             R0, [R4]
4EFE6E:  BEQ             loc_4EFE7A
4EFE70:  LDR             R0, =(g_ikChainMan_ptr - 0x4EFE76)
4EFE72:  ADD             R0, PC; g_ikChainMan_ptr
4EFE74:  LDR             R0, [R0]; g_ikChainMan ; this
4EFE76:  BLX             j__ZN16IKChainManager_c13RemoveIKChainEP9IKChain_c; IKChainManager_c::RemoveIKChain(IKChain_c *)
4EFE7A:  MOV             R1, R4
4EFE7C:  LDR.W           R0, [R1,#0x28]!; CEntity **
4EFE80:  CMP             R0, #0
4EFE82:  IT NE
4EFE84:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4EFE88:  MOV             R0, R4; this
4EFE8A:  POP.W           {R4,R6,R7,LR}
4EFE8E:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
