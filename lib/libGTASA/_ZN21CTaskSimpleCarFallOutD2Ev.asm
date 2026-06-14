; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarFallOutD2Ev
; Address            : 0x505968 - 0x505990
; =========================================================

505968:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleCarFallOut::~CTaskSimpleCarFallOut()'
50596A:  ADD             R7, SP, #8
50596C:  MOV             R4, R0
50596E:  LDR             R0, =(_ZTV21CTaskSimpleCarFallOut_ptr - 0x505976)
505970:  MOV             R1, R4
505972:  ADD             R0, PC; _ZTV21CTaskSimpleCarFallOut_ptr
505974:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarFallOut ...
505976:  LDR.W           R0, [R1,#0x10]!; CEntity **
50597A:  ADDS            R2, #8
50597C:  STR             R2, [R4]
50597E:  CMP             R0, #0
505980:  IT NE
505982:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
505986:  MOV             R0, R4; this
505988:  POP.W           {R4,R6,R7,LR}
50598C:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
