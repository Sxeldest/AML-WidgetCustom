; =========================================================
; Game Engine Function: _ZN21CTaskSimpleIKPointArmD0Ev
; Address            : 0x4F0550 - 0x4F058E
; =========================================================

4F0550:  PUSH            {R4,R6,R7,LR}
4F0552:  ADD             R7, SP, #8
4F0554:  MOV             R4, R0
4F0556:  LDR             R0, =(_ZTV18CTaskSimpleIKChain_ptr - 0x4F055E)
4F0558:  LDR             R1, [R4,#0x10]; IKChain_c *
4F055A:  ADD             R0, PC; _ZTV18CTaskSimpleIKChain_ptr
4F055C:  CMP             R1, #0
4F055E:  LDR             R0, [R0]; `vtable for'CTaskSimpleIKChain ...
4F0560:  ADD.W           R0, R0, #8
4F0564:  STR             R0, [R4]
4F0566:  BEQ             loc_4F0572
4F0568:  LDR             R0, =(g_ikChainMan_ptr - 0x4F056E)
4F056A:  ADD             R0, PC; g_ikChainMan_ptr
4F056C:  LDR             R0, [R0]; g_ikChainMan ; this
4F056E:  BLX             j__ZN16IKChainManager_c13RemoveIKChainEP9IKChain_c; IKChainManager_c::RemoveIKChain(IKChain_c *)
4F0572:  MOV             R1, R4
4F0574:  LDR.W           R0, [R1,#0x28]!; CEntity **
4F0578:  CMP             R0, #0
4F057A:  IT NE
4F057C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F0580:  MOV             R0, R4; this
4F0582:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4F0586:  POP.W           {R4,R6,R7,LR}
4F058A:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
