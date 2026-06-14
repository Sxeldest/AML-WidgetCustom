; =========================================================
; Game Engine Function: _ZN33CTaskComplexGoToBoatSteeringWheelD0Ev
; Address            : 0x505DA0 - 0x505DCC
; =========================================================

505DA0:  PUSH            {R4,R6,R7,LR}
505DA2:  ADD             R7, SP, #8
505DA4:  MOV             R4, R0
505DA6:  LDR             R0, =(_ZTV33CTaskComplexGoToBoatSteeringWheel_ptr - 0x505DAE)
505DA8:  MOV             R1, R4
505DAA:  ADD             R0, PC; _ZTV33CTaskComplexGoToBoatSteeringWheel_ptr
505DAC:  LDR             R2, [R0]; `vtable for'CTaskComplexGoToBoatSteeringWheel ...
505DAE:  LDR.W           R0, [R1,#0x18]!; CEntity **
505DB2:  ADDS            R2, #8
505DB4:  STR             R2, [R4]
505DB6:  CMP             R0, #0
505DB8:  IT NE
505DBA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
505DBE:  MOV             R0, R4; this
505DC0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
505DC4:  POP.W           {R4,R6,R7,LR}
505DC8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
