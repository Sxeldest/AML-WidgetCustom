; =========================================================
; Game Engine Function: _ZN30CTaskSimpleCarSetPedInAsDriverD2Ev
; Address            : 0x502D00 - 0x502D28
; =========================================================

502D00:  PUSH            {R4,R6,R7,LR}
502D02:  ADD             R7, SP, #8
502D04:  MOV             R4, R0
502D06:  LDR             R0, =(_ZTV30CTaskSimpleCarSetPedInAsDriver_ptr - 0x502D0E)
502D08:  MOV             R1, R4
502D0A:  ADD             R0, PC; _ZTV30CTaskSimpleCarSetPedInAsDriver_ptr
502D0C:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarSetPedInAsDriver ...
502D0E:  LDR.W           R0, [R1,#0x10]!; CEntity **
502D12:  ADDS            R2, #8
502D14:  STR             R2, [R4]
502D16:  CMP             R0, #0
502D18:  IT NE
502D1A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
502D1E:  MOV             R0, R4; this
502D20:  POP.W           {R4,R6,R7,LR}
502D24:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
