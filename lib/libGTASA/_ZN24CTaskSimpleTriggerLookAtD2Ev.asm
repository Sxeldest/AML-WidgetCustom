; =========================================================
; Game Engine Function: _ZN24CTaskSimpleTriggerLookAtD2Ev
; Address            : 0x4F0820 - 0x4F0848
; =========================================================

4F0820:  PUSH            {R4,R6,R7,LR}
4F0822:  ADD             R7, SP, #8
4F0824:  MOV             R4, R0
4F0826:  LDR             R0, =(_ZTV24CTaskSimpleTriggerLookAt_ptr - 0x4F082E)
4F0828:  MOV             R1, R4
4F082A:  ADD             R0, PC; _ZTV24CTaskSimpleTriggerLookAt_ptr
4F082C:  LDR             R2, [R0]; `vtable for'CTaskSimpleTriggerLookAt ...
4F082E:  LDR.W           R0, [R1,#8]!; CEntity **
4F0832:  ADDS            R2, #8
4F0834:  STR             R2, [R4]
4F0836:  CMP             R0, #0
4F0838:  IT NE
4F083A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F083E:  MOV             R0, R4; this
4F0840:  POP.W           {R4,R6,R7,LR}
4F0844:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
