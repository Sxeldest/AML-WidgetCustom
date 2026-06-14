; =========================================================
; Game Engine Function: _ZN18CTaskSimpleIKChainD0Ev
; Address            : 0x4EFE9C - 0x4EFEDA
; =========================================================

4EFE9C:  PUSH            {R4,R6,R7,LR}
4EFE9E:  ADD             R7, SP, #8
4EFEA0:  MOV             R4, R0
4EFEA2:  LDR             R0, =(_ZTV18CTaskSimpleIKChain_ptr - 0x4EFEAA)
4EFEA4:  LDR             R1, [R4,#0x10]; IKChain_c *
4EFEA6:  ADD             R0, PC; _ZTV18CTaskSimpleIKChain_ptr
4EFEA8:  CMP             R1, #0
4EFEAA:  LDR             R0, [R0]; `vtable for'CTaskSimpleIKChain ...
4EFEAC:  ADD.W           R0, R0, #8
4EFEB0:  STR             R0, [R4]
4EFEB2:  BEQ             loc_4EFEBE
4EFEB4:  LDR             R0, =(g_ikChainMan_ptr - 0x4EFEBA)
4EFEB6:  ADD             R0, PC; g_ikChainMan_ptr
4EFEB8:  LDR             R0, [R0]; g_ikChainMan ; this
4EFEBA:  BLX             j__ZN16IKChainManager_c13RemoveIKChainEP9IKChain_c; IKChainManager_c::RemoveIKChain(IKChain_c *)
4EFEBE:  MOV             R1, R4
4EFEC0:  LDR.W           R0, [R1,#0x28]!; CEntity **
4EFEC4:  CMP             R0, #0
4EFEC6:  IT NE
4EFEC8:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4EFECC:  MOV             R0, R4; this
4EFECE:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EFED2:  POP.W           {R4,R6,R7,LR}
4EFED6:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
