; =========================================================
; Game Engine Function: _ZN29CTaskComplexGoToPointShootingD0Ev
; Address            : 0x528834 - 0x528860
; =========================================================

528834:  PUSH            {R4,R6,R7,LR}
528836:  ADD             R7, SP, #8
528838:  MOV             R4, R0
52883A:  LDR             R0, =(_ZTV27CTaskComplexGoToPointAiming_ptr - 0x528842)
52883C:  MOV             R1, R4
52883E:  ADD             R0, PC; _ZTV27CTaskComplexGoToPointAiming_ptr
528840:  LDR             R2, [R0]; `vtable for'CTaskComplexGoToPointAiming ...
528842:  LDR.W           R0, [R1,#0x10]!; CEntity **
528846:  ADDS            R2, #8
528848:  STR             R2, [R4]
52884A:  CMP             R0, #0
52884C:  IT NE
52884E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
528852:  MOV             R0, R4; this
528854:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
528858:  POP.W           {R4,R6,R7,LR}
52885C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
