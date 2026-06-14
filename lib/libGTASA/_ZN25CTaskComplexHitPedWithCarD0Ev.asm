; =========================================================
; Game Engine Function: _ZN25CTaskComplexHitPedWithCarD0Ev
; Address            : 0x50B51C - 0x50B548
; =========================================================

50B51C:  PUSH            {R4,R6,R7,LR}
50B51E:  ADD             R7, SP, #8
50B520:  MOV             R4, R0
50B522:  LDR             R0, =(_ZTV25CTaskComplexHitPedWithCar_ptr - 0x50B52A)
50B524:  MOV             R1, R4
50B526:  ADD             R0, PC; _ZTV25CTaskComplexHitPedWithCar_ptr
50B528:  LDR             R2, [R0]; `vtable for'CTaskComplexHitPedWithCar ...
50B52A:  LDR.W           R0, [R1,#0xC]!; CEntity **
50B52E:  ADDS            R2, #8
50B530:  STR             R2, [R4]
50B532:  CMP             R0, #0
50B534:  IT NE
50B536:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50B53A:  MOV             R0, R4; this
50B53C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
50B540:  POP.W           {R4,R6,R7,LR}
50B544:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
