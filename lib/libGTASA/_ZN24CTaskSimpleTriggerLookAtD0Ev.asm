; =========================================================
; Game Engine Function: _ZN24CTaskSimpleTriggerLookAtD0Ev
; Address            : 0x4F084C - 0x4F0878
; =========================================================

4F084C:  PUSH            {R4,R6,R7,LR}
4F084E:  ADD             R7, SP, #8
4F0850:  MOV             R4, R0
4F0852:  LDR             R0, =(_ZTV24CTaskSimpleTriggerLookAt_ptr - 0x4F085A)
4F0854:  MOV             R1, R4
4F0856:  ADD             R0, PC; _ZTV24CTaskSimpleTriggerLookAt_ptr
4F0858:  LDR             R2, [R0]; `vtable for'CTaskSimpleTriggerLookAt ...
4F085A:  LDR.W           R0, [R1,#8]!; CEntity **
4F085E:  ADDS            R2, #8
4F0860:  STR             R2, [R4]
4F0862:  CMP             R0, #0
4F0864:  IT NE
4F0866:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F086A:  MOV             R0, R4; this
4F086C:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4F0870:  POP.W           {R4,R6,R7,LR}
4F0874:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
