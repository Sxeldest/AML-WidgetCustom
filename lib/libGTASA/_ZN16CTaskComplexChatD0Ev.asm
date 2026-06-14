; =========================================================
; Game Engine Function: _ZN16CTaskComplexChatD0Ev
; Address            : 0x5357FC - 0x535828
; =========================================================

5357FC:  PUSH            {R4,R6,R7,LR}
5357FE:  ADD             R7, SP, #8
535800:  MOV             R4, R0
535802:  LDR             R0, =(_ZTV16CTaskComplexChat_ptr - 0x53580A)
535804:  MOV             R1, R4
535806:  ADD             R0, PC; _ZTV16CTaskComplexChat_ptr
535808:  LDR             R2, [R0]; `vtable for'CTaskComplexChat ...
53580A:  LDR.W           R0, [R1,#0x10]!; CEntity **
53580E:  ADDS            R2, #8
535810:  STR             R2, [R4]
535812:  CMP             R0, #0
535814:  IT NE
535816:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53581A:  MOV             R0, R4; this
53581C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
535820:  POP.W           {R4,R6,R7,LR}
535824:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
