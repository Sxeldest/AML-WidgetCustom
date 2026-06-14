; =========================================================
; Game Engine Function: _ZN19CTaskSimpleIKLookAtD0Ev
; Address            : 0x4F023C - 0x4F027A
; =========================================================

4F023C:  PUSH            {R4,R6,R7,LR}
4F023E:  ADD             R7, SP, #8
4F0240:  MOV             R4, R0
4F0242:  LDR             R0, =(_ZTV18CTaskSimpleIKChain_ptr - 0x4F024A)
4F0244:  LDR             R1, [R4,#0x10]; IKChain_c *
4F0246:  ADD             R0, PC; _ZTV18CTaskSimpleIKChain_ptr
4F0248:  CMP             R1, #0
4F024A:  LDR             R0, [R0]; `vtable for'CTaskSimpleIKChain ...
4F024C:  ADD.W           R0, R0, #8
4F0250:  STR             R0, [R4]
4F0252:  BEQ             loc_4F025E
4F0254:  LDR             R0, =(g_ikChainMan_ptr - 0x4F025A)
4F0256:  ADD             R0, PC; g_ikChainMan_ptr
4F0258:  LDR             R0, [R0]; g_ikChainMan ; this
4F025A:  BLX             j__ZN16IKChainManager_c13RemoveIKChainEP9IKChain_c; IKChainManager_c::RemoveIKChain(IKChain_c *)
4F025E:  MOV             R1, R4
4F0260:  LDR.W           R0, [R1,#0x28]!; CEntity **
4F0264:  CMP             R0, #0
4F0266:  IT NE
4F0268:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F026C:  MOV             R0, R4; this
4F026E:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4F0272:  POP.W           {R4,R6,R7,LR}
4F0276:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
