; =========================================================
; Game Engine Function: _ZN32CTaskComplexKillPedOnFootStealthD0Ev
; Address            : 0x4E13D0 - 0x4E13FC
; =========================================================

4E13D0:  PUSH            {R4,R6,R7,LR}
4E13D2:  ADD             R7, SP, #8
4E13D4:  MOV             R4, R0
4E13D6:  LDR             R0, =(_ZTV25CTaskComplexKillPedOnFoot_ptr - 0x4E13DE)
4E13D8:  MOV             R1, R4
4E13DA:  ADD             R0, PC; _ZTV25CTaskComplexKillPedOnFoot_ptr
4E13DC:  LDR             R2, [R0]; `vtable for'CTaskComplexKillPedOnFoot ...
4E13DE:  LDR.W           R0, [R1,#0x10]!; CEntity **
4E13E2:  ADDS            R2, #8
4E13E4:  STR             R2, [R4]
4E13E6:  CMP             R0, #0
4E13E8:  IT NE
4E13EA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E13EE:  MOV             R0, R4; this
4E13F0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4E13F4:  POP.W           {R4,R6,R7,LR}
4E13F8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
