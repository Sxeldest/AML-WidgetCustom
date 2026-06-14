; =========================================================
; Game Engine Function: _ZN42CTaskComplexDiveFromAttachedEntityAndGetUpD0Ev
; Address            : 0x50EC24 - 0x50EC50
; =========================================================

50EC24:  PUSH            {R4,R6,R7,LR}
50EC26:  ADD             R7, SP, #8
50EC28:  MOV             R4, R0
50EC2A:  LDR             R0, =(_ZTV31CTaskComplexEvasiveDiveAndGetUp_ptr - 0x50EC32)
50EC2C:  MOV             R1, R4
50EC2E:  ADD             R0, PC; _ZTV31CTaskComplexEvasiveDiveAndGetUp_ptr
50EC30:  LDR             R2, [R0]; `vtable for'CTaskComplexEvasiveDiveAndGetUp ...
50EC32:  LDR.W           R0, [R1,#0xC]!; CEntity **
50EC36:  ADDS            R2, #8
50EC38:  STR             R2, [R4]
50EC3A:  CMP             R0, #0
50EC3C:  IT NE
50EC3E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50EC42:  MOV             R0, R4; this
50EC44:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
50EC48:  POP.W           {R4,R6,R7,LR}
50EC4C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
