; =========================================================
; Game Engine Function: _ZN21CTaskComplexArrestPedD0Ev
; Address            : 0x53CC40 - 0x53CC6C
; =========================================================

53CC40:  PUSH            {R4,R6,R7,LR}
53CC42:  ADD             R7, SP, #8
53CC44:  MOV             R4, R0
53CC46:  LDR             R0, =(_ZTV21CTaskComplexArrestPed_ptr - 0x53CC4E)
53CC48:  MOV             R1, R4
53CC4A:  ADD             R0, PC; _ZTV21CTaskComplexArrestPed_ptr
53CC4C:  LDR             R2, [R0]; `vtable for'CTaskComplexArrestPed ...
53CC4E:  LDR.W           R0, [R1,#0x10]!; CEntity **
53CC52:  ADDS            R2, #8
53CC54:  STR             R2, [R4]
53CC56:  CMP             R0, #0
53CC58:  IT NE
53CC5A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53CC5E:  MOV             R0, R4; this
53CC60:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
53CC64:  POP.W           {R4,R6,R7,LR}
53CC68:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
