; =========================================================
; Game Engine Function: _ZN27CTaskComplexSmartFleeEntityD0Ev
; Address            : 0x513C9C - 0x513CC8
; =========================================================

513C9C:  PUSH            {R4,R6,R7,LR}
513C9E:  ADD             R7, SP, #8
513CA0:  MOV             R4, R0
513CA2:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x513CAA)
513CA4:  MOV             R1, R4
513CA6:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
513CA8:  LDR             R2, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
513CAA:  LDR.W           R0, [R1,#0xC]!; CEntity **
513CAE:  ADDS            R2, #8
513CB0:  STR             R2, [R4]
513CB2:  CMP             R0, #0
513CB4:  IT NE
513CB6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
513CBA:  MOV             R0, R4; this
513CBC:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
513CC0:  POP.W           {R4,R6,R7,LR}
513CC4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
