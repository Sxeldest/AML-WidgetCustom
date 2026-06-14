; =========================================================
; Game Engine Function: _ZN30CTaskComplexInvestigateDeadPedD0Ev
; Address            : 0x5467BC - 0x5467E8
; =========================================================

5467BC:  PUSH            {R4,R6,R7,LR}
5467BE:  ADD             R7, SP, #8
5467C0:  MOV             R4, R0
5467C2:  LDR             R0, =(_ZTV30CTaskComplexInvestigateDeadPed_ptr - 0x5467CA)
5467C4:  MOV             R1, R4
5467C6:  ADD             R0, PC; _ZTV30CTaskComplexInvestigateDeadPed_ptr
5467C8:  LDR             R2, [R0]; `vtable for'CTaskComplexInvestigateDeadPed ...
5467CA:  LDR.W           R0, [R1,#0xC]!; CEntity **
5467CE:  ADDS            R2, #8
5467D0:  STR             R2, [R4]
5467D2:  CMP             R0, #0
5467D4:  IT NE
5467D6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5467DA:  MOV             R0, R4; this
5467DC:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
5467E0:  POP.W           {R4,R6,R7,LR}
5467E4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
