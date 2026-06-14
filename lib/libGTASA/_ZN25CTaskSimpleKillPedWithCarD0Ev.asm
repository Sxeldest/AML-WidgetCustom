; =========================================================
; Game Engine Function: _ZN25CTaskSimpleKillPedWithCarD0Ev
; Address            : 0x50B954 - 0x50B980
; =========================================================

50B954:  PUSH            {R4,R6,R7,LR}
50B956:  ADD             R7, SP, #8
50B958:  MOV             R4, R0
50B95A:  LDR             R0, =(_ZTV25CTaskSimpleKillPedWithCar_ptr - 0x50B962)
50B95C:  MOV             R1, R4
50B95E:  ADD             R0, PC; _ZTV25CTaskSimpleKillPedWithCar_ptr
50B960:  LDR             R2, [R0]; `vtable for'CTaskSimpleKillPedWithCar ...
50B962:  LDR.W           R0, [R1,#8]!; CEntity **
50B966:  ADDS            R2, #8
50B968:  STR             R2, [R4]
50B96A:  CMP             R0, #0
50B96C:  IT NE
50B96E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50B972:  MOV             R0, R4; this
50B974:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
50B978:  POP.W           {R4,R6,R7,LR}
50B97C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
