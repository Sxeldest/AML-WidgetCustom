; =========================================================
; Game Engine Function: _ZN37CTaskSimpleCarWaitForDoorNotToBeInUseD2Ev
; Address            : 0x5022E0 - 0x502308
; =========================================================

5022E0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleCarWaitForDoorNotToBeInUse::~CTaskSimpleCarWaitForDoorNotToBeInUse()'
5022E2:  ADD             R7, SP, #8
5022E4:  MOV             R4, R0
5022E6:  LDR             R0, =(_ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr - 0x5022EE)
5022E8:  MOV             R1, R4
5022EA:  ADD             R0, PC; _ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr
5022EC:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarWaitForDoorNotToBeInUse ...
5022EE:  LDR.W           R0, [R1,#8]!; CEntity **
5022F2:  ADDS            R2, #8
5022F4:  STR             R2, [R4]
5022F6:  CMP             R0, #0
5022F8:  IT NE
5022FA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5022FE:  MOV             R0, R4; this
502300:  POP.W           {R4,R6,R7,LR}
502304:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
