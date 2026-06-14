; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarFallOutD0Ev
; Address            : 0x505994 - 0x5059C0
; =========================================================

505994:  PUSH            {R4,R6,R7,LR}
505996:  ADD             R7, SP, #8
505998:  MOV             R4, R0
50599A:  LDR             R0, =(_ZTV21CTaskSimpleCarFallOut_ptr - 0x5059A2)
50599C:  MOV             R1, R4
50599E:  ADD             R0, PC; _ZTV21CTaskSimpleCarFallOut_ptr
5059A0:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarFallOut ...
5059A2:  LDR.W           R0, [R1,#0x10]!; CEntity **
5059A6:  ADDS            R2, #8
5059A8:  STR             R2, [R4]
5059AA:  CMP             R0, #0
5059AC:  IT NE
5059AE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5059B2:  MOV             R0, R4; this
5059B4:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
5059B8:  POP.W           {R4,R6,R7,LR}
5059BC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
