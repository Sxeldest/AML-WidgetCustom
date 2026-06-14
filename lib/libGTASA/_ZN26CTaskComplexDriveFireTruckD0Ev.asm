; =========================================================
; Game Engine Function: _ZN26CTaskComplexDriveFireTruckD0Ev
; Address            : 0x511860 - 0x51189A
; =========================================================

511860:  PUSH            {R4,R6,R7,LR}
511862:  ADD             R7, SP, #8
511864:  MOV             R4, R0
511866:  LDR             R0, =(_ZTV26CTaskComplexDriveFireTruck_ptr - 0x51186E)
511868:  MOV             R1, R4
51186A:  ADD             R0, PC; _ZTV26CTaskComplexDriveFireTruck_ptr
51186C:  LDR             R2, [R0]; `vtable for'CTaskComplexDriveFireTruck ...
51186E:  LDR.W           R0, [R1,#0xC]!; CEntity **
511872:  ADDS            R2, #8
511874:  STR             R2, [R4]
511876:  CMP             R0, #0
511878:  IT NE
51187A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51187E:  MOV             R1, R4
511880:  LDR.W           R0, [R1,#0x14]!; CEntity **
511884:  CMP             R0, #0
511886:  IT NE
511888:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51188C:  MOV             R0, R4; this
51188E:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
511892:  POP.W           {R4,R6,R7,LR}
511896:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
