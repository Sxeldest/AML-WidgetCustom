; =========================================================
; Game Engine Function: _ZN27CTaskComplexGoToPointAimingD0Ev
; Address            : 0x51DB6C - 0x51DB98
; =========================================================

51DB6C:  PUSH            {R4,R6,R7,LR}
51DB6E:  ADD             R7, SP, #8
51DB70:  MOV             R4, R0
51DB72:  LDR             R0, =(_ZTV27CTaskComplexGoToPointAiming_ptr - 0x51DB7A)
51DB74:  MOV             R1, R4
51DB76:  ADD             R0, PC; _ZTV27CTaskComplexGoToPointAiming_ptr
51DB78:  LDR             R2, [R0]; `vtable for'CTaskComplexGoToPointAiming ...
51DB7A:  LDR.W           R0, [R1,#0x10]!; CEntity **
51DB7E:  ADDS            R2, #8
51DB80:  STR             R2, [R4]
51DB82:  CMP             R0, #0
51DB84:  IT NE
51DB86:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51DB8A:  MOV             R0, R4; this
51DB8C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
51DB90:  POP.W           {R4,R6,R7,LR}
51DB94:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
