; =========================================================
; Game Engine Function: _ZN25CTaskSimpleHurtPedWithCarD2Ev
; Address            : 0x50C06C - 0x50C094
; =========================================================

50C06C:  PUSH            {R4,R6,R7,LR}
50C06E:  ADD             R7, SP, #8
50C070:  MOV             R4, R0
50C072:  LDR             R0, =(_ZTV25CTaskSimpleHurtPedWithCar_ptr - 0x50C07A)
50C074:  MOV             R1, R4
50C076:  ADD             R0, PC; _ZTV25CTaskSimpleHurtPedWithCar_ptr
50C078:  LDR             R2, [R0]; `vtable for'CTaskSimpleHurtPedWithCar ...
50C07A:  LDR.W           R0, [R1,#8]!; CEntity **
50C07E:  ADDS            R2, #8
50C080:  STR             R2, [R4]
50C082:  CMP             R0, #0
50C084:  IT NE
50C086:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50C08A:  MOV             R0, R4; this
50C08C:  POP.W           {R4,R6,R7,LR}
50C090:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
