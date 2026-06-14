; =========================================================
; Game Engine Function: _ZN31CTaskComplexCarSlowBeDraggedOutD0Ev
; Address            : 0x504DB8 - 0x504DF0
; =========================================================

504DB8:  PUSH            {R4,R6,R7,LR}
504DBA:  ADD             R7, SP, #8
504DBC:  MOV             R4, R0
504DBE:  LDR             R0, =(_ZTV31CTaskComplexCarSlowBeDraggedOut_ptr - 0x504DC6)
504DC0:  MOV             R1, R4
504DC2:  ADD             R0, PC; _ZTV31CTaskComplexCarSlowBeDraggedOut_ptr
504DC4:  LDR             R2, [R0]; `vtable for'CTaskComplexCarSlowBeDraggedOut ...
504DC6:  LDR.W           R0, [R1,#0xC]!; CEntity **
504DCA:  ADDS            R2, #8
504DCC:  STR             R2, [R4]
504DCE:  CMP             R0, #0
504DD0:  IT NE
504DD2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
504DD6:  LDR             R0, [R4,#0x18]; this
504DD8:  CBZ             R0, loc_504DE2
504DDA:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarD2Ev; CTaskUtilityLineUpPedWithCar::~CTaskUtilityLineUpPedWithCar()
504DDE:  BLX             _ZdlPv; operator delete(void *)
504DE2:  MOV             R0, R4; this
504DE4:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
504DE8:  POP.W           {R4,R6,R7,LR}
504DEC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
