; =========================================================
; Game Engine Function: _ZN23CTaskComplexTrackEntityD0Ev
; Address            : 0x517DA0 - 0x517DCC
; =========================================================

517DA0:  PUSH            {R4,R6,R7,LR}
517DA2:  ADD             R7, SP, #8
517DA4:  MOV             R4, R0
517DA6:  LDR             R0, =(_ZTV23CTaskComplexTrackEntity_ptr - 0x517DAE)
517DA8:  MOV             R1, R4
517DAA:  ADD             R0, PC; _ZTV23CTaskComplexTrackEntity_ptr
517DAC:  LDR             R2, [R0]; `vtable for'CTaskComplexTrackEntity ...
517DAE:  LDR.W           R0, [R1,#0xC]!; CEntity **
517DB2:  ADDS            R2, #8
517DB4:  STR             R2, [R4]
517DB6:  CMP             R0, #0
517DB8:  IT NE
517DBA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
517DBE:  MOV             R0, R4; this
517DC0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
517DC4:  POP.W           {R4,R6,R7,LR}
517DC8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
