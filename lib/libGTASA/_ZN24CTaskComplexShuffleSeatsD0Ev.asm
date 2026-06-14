; =========================================================
; Game Engine Function: _ZN24CTaskComplexShuffleSeatsD0Ev
; Address            : 0x4FCB94 - 0x4FCBCC
; =========================================================

4FCB94:  PUSH            {R4,R6,R7,LR}
4FCB96:  ADD             R7, SP, #8
4FCB98:  MOV             R4, R0
4FCB9A:  LDR             R0, =(_ZTV24CTaskComplexShuffleSeats_ptr - 0x4FCBA2)
4FCB9C:  MOV             R1, R4
4FCB9E:  ADD             R0, PC; _ZTV24CTaskComplexShuffleSeats_ptr
4FCBA0:  LDR             R2, [R0]; `vtable for'CTaskComplexShuffleSeats ...
4FCBA2:  LDR.W           R0, [R1,#0xC]!; CEntity **
4FCBA6:  ADDS            R2, #8
4FCBA8:  STR             R2, [R4]
4FCBAA:  CMP             R0, #0
4FCBAC:  IT NE
4FCBAE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FCBB2:  LDR             R0, [R4,#0x24]; this
4FCBB4:  CBZ             R0, loc_4FCBBE
4FCBB6:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarD2Ev; CTaskUtilityLineUpPedWithCar::~CTaskUtilityLineUpPedWithCar()
4FCBBA:  BLX             _ZdlPv; operator delete(void *)
4FCBBE:  MOV             R0, R4; this
4FCBC0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4FCBC4:  POP.W           {R4,R6,R7,LR}
4FCBC8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
