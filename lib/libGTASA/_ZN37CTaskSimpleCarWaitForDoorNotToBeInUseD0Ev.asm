; =========================================================
; Game Engine Function: _ZN37CTaskSimpleCarWaitForDoorNotToBeInUseD0Ev
; Address            : 0x50230C - 0x502338
; =========================================================

50230C:  PUSH            {R4,R6,R7,LR}
50230E:  ADD             R7, SP, #8
502310:  MOV             R4, R0
502312:  LDR             R0, =(_ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr - 0x50231A)
502314:  MOV             R1, R4
502316:  ADD             R0, PC; _ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr
502318:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarWaitForDoorNotToBeInUse ...
50231A:  LDR.W           R0, [R1,#8]!; CEntity **
50231E:  ADDS            R2, #8
502320:  STR             R2, [R4]
502322:  CMP             R0, #0
502324:  IT NE
502326:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50232A:  MOV             R0, R4; this
50232C:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
502330:  POP.W           {R4,R6,R7,LR}
502334:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
