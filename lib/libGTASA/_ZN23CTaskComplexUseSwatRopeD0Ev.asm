; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSwatRopeD0Ev
; Address            : 0x511B90 - 0x511BC2
; =========================================================

511B90:  PUSH            {R4,R6,R7,LR}
511B92:  ADD             R7, SP, #8
511B94:  MOV             R4, R0
511B96:  LDR             R0, =(_ZTV23CTaskComplexUseSwatRope_ptr - 0x511B9E)
511B98:  LDRB            R1, [R4,#0x14]
511B9A:  ADD             R0, PC; _ZTV23CTaskComplexUseSwatRope_ptr
511B9C:  LDR             R0, [R0]; `vtable for'CTaskComplexUseSwatRope ...
511B9E:  ADDS            R0, #8
511BA0:  STR             R0, [R4]
511BA2:  LSLS            R0, R1, #0x1F
511BA4:  BEQ             loc_511BB4
511BA6:  MOV             R1, R4
511BA8:  LDR.W           R0, [R1,#0x18]!; CEntity **
511BAC:  CMP             R0, #0
511BAE:  IT NE
511BB0:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
511BB4:  MOV             R0, R4; this
511BB6:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
511BBA:  POP.W           {R4,R6,R7,LR}
511BBE:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
