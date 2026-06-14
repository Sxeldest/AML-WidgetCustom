; =========================================================
; Game Engine Function: _ZN23CTaskComplexEvasiveStepD0Ev
; Address            : 0x50AF64 - 0x50AF90
; =========================================================

50AF64:  PUSH            {R4,R6,R7,LR}
50AF66:  ADD             R7, SP, #8
50AF68:  MOV             R4, R0
50AF6A:  LDR             R0, =(_ZTV23CTaskComplexEvasiveStep_ptr - 0x50AF72)
50AF6C:  MOV             R1, R4
50AF6E:  ADD             R0, PC; _ZTV23CTaskComplexEvasiveStep_ptr
50AF70:  LDR             R2, [R0]; `vtable for'CTaskComplexEvasiveStep ...
50AF72:  LDR.W           R0, [R1,#0x18]!; CEntity **
50AF76:  ADDS            R2, #8
50AF78:  STR             R2, [R4]
50AF7A:  CMP             R0, #0
50AF7C:  IT NE
50AF7E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50AF82:  MOV             R0, R4; this
50AF84:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
50AF88:  POP.W           {R4,R6,R7,LR}
50AF8C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
