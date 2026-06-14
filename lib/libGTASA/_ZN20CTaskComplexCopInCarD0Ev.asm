; =========================================================
; Game Engine Function: _ZN20CTaskComplexCopInCarD0Ev
; Address            : 0x53FC90 - 0x53FCD8
; =========================================================

53FC90:  PUSH            {R4,R6,R7,LR}
53FC92:  ADD             R7, SP, #8
53FC94:  MOV             R4, R0
53FC96:  LDR             R0, =(_ZTV20CTaskComplexCopInCar_ptr - 0x53FC9E)
53FC98:  MOV             R1, R4
53FC9A:  ADD             R0, PC; _ZTV20CTaskComplexCopInCar_ptr
53FC9C:  LDR             R2, [R0]; `vtable for'CTaskComplexCopInCar ...
53FC9E:  LDR.W           R0, [R1,#0xC]!; CEntity **
53FCA2:  ADDS            R2, #8
53FCA4:  STR             R2, [R4]
53FCA6:  CMP             R0, #0
53FCA8:  IT NE
53FCAA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53FCAE:  MOV             R1, R4
53FCB0:  LDR.W           R0, [R1,#0x10]!; CEntity **
53FCB4:  CMP             R0, #0
53FCB6:  IT NE
53FCB8:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53FCBC:  MOV             R1, R4
53FCBE:  LDR.W           R0, [R1,#0x14]!; CEntity **
53FCC2:  CMP             R0, #0
53FCC4:  IT NE
53FCC6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53FCCA:  MOV             R0, R4; this
53FCCC:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
53FCD0:  POP.W           {R4,R6,R7,LR}
53FCD4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
