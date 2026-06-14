; =========================================================
; Game Engine Function: _ZN25CTaskSimpleHurtPedWithCarD0Ev
; Address            : 0x50C098 - 0x50C0C4
; =========================================================

50C098:  PUSH            {R4,R6,R7,LR}
50C09A:  ADD             R7, SP, #8
50C09C:  MOV             R4, R0
50C09E:  LDR             R0, =(_ZTV25CTaskSimpleHurtPedWithCar_ptr - 0x50C0A6)
50C0A0:  MOV             R1, R4
50C0A2:  ADD             R0, PC; _ZTV25CTaskSimpleHurtPedWithCar_ptr
50C0A4:  LDR             R2, [R0]; `vtable for'CTaskSimpleHurtPedWithCar ...
50C0A6:  LDR.W           R0, [R1,#8]!; CEntity **
50C0AA:  ADDS            R2, #8
50C0AC:  STR             R2, [R4]
50C0AE:  CMP             R0, #0
50C0B0:  IT NE
50C0B2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50C0B6:  MOV             R0, R4; this
50C0B8:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
50C0BC:  POP.W           {R4,R6,R7,LR}
50C0C0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
