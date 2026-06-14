; =========================================================
; Game Engine Function: _ZN29CTaskComplexReactToGunAimedAtD0Ev
; Address            : 0x546E54 - 0x546E80
; =========================================================

546E54:  PUSH            {R4,R6,R7,LR}
546E56:  ADD             R7, SP, #8
546E58:  MOV             R4, R0
546E5A:  LDR             R0, =(_ZTV29CTaskComplexReactToGunAimedAt_ptr - 0x546E62)
546E5C:  MOV             R1, R4
546E5E:  ADD             R0, PC; _ZTV29CTaskComplexReactToGunAimedAt_ptr
546E60:  LDR             R2, [R0]; `vtable for'CTaskComplexReactToGunAimedAt ...
546E62:  LDR.W           R0, [R1,#0xC]!; CEntity **
546E66:  ADDS            R2, #8
546E68:  STR             R2, [R4]
546E6A:  CMP             R0, #0
546E6C:  IT NE
546E6E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
546E72:  MOV             R0, R4; this
546E74:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
546E78:  POP.W           {R4,R6,R7,LR}
546E7C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
