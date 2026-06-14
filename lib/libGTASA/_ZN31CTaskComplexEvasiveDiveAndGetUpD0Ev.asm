; =========================================================
; Game Engine Function: _ZN31CTaskComplexEvasiveDiveAndGetUpD0Ev
; Address            : 0x50B2DC - 0x50B308
; =========================================================

50B2DC:  PUSH            {R4,R6,R7,LR}
50B2DE:  ADD             R7, SP, #8
50B2E0:  MOV             R4, R0
50B2E2:  LDR             R0, =(_ZTV31CTaskComplexEvasiveDiveAndGetUp_ptr - 0x50B2EA)
50B2E4:  MOV             R1, R4
50B2E6:  ADD             R0, PC; _ZTV31CTaskComplexEvasiveDiveAndGetUp_ptr
50B2E8:  LDR             R2, [R0]; `vtable for'CTaskComplexEvasiveDiveAndGetUp ...
50B2EA:  LDR.W           R0, [R1,#0xC]!; CEntity **
50B2EE:  ADDS            R2, #8
50B2F0:  STR             R2, [R4]
50B2F2:  CMP             R0, #0
50B2F4:  IT NE
50B2F6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50B2FA:  MOV             R0, R4; this
50B2FC:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
50B300:  POP.W           {R4,R6,R7,LR}
50B304:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
