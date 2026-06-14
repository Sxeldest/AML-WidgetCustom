; =========================================================
; Game Engine Function: _ZN29CTaskSimpleSetPedAsAutoDriverD0Ev
; Address            : 0x505CBC - 0x505CE8
; =========================================================

505CBC:  PUSH            {R4,R6,R7,LR}
505CBE:  ADD             R7, SP, #8
505CC0:  MOV             R4, R0
505CC2:  LDR             R0, =(_ZTV29CTaskSimpleSetPedAsAutoDriver_ptr - 0x505CCA)
505CC4:  MOV             R1, R4
505CC6:  ADD             R0, PC; _ZTV29CTaskSimpleSetPedAsAutoDriver_ptr
505CC8:  LDR             R2, [R0]; `vtable for'CTaskSimpleSetPedAsAutoDriver ...
505CCA:  LDR.W           R0, [R1,#8]!; CEntity **
505CCE:  ADDS            R2, #8
505CD0:  STR             R2, [R4]
505CD2:  CMP             R0, #0
505CD4:  IT NE
505CD6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
505CDA:  MOV             R0, R4; this
505CDC:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
505CE0:  POP.W           {R4,R6,R7,LR}
505CE4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
