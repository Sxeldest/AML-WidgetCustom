; =========================================================
; Game Engine Function: _ZN30CTaskComplexInvestigateDeadPedD2Ev
; Address            : 0x546790 - 0x5467B8
; =========================================================

546790:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexInvestigateDeadPed::~CTaskComplexInvestigateDeadPed()'
546792:  ADD             R7, SP, #8
546794:  MOV             R4, R0
546796:  LDR             R0, =(_ZTV30CTaskComplexInvestigateDeadPed_ptr - 0x54679E)
546798:  MOV             R1, R4
54679A:  ADD             R0, PC; _ZTV30CTaskComplexInvestigateDeadPed_ptr
54679C:  LDR             R2, [R0]; `vtable for'CTaskComplexInvestigateDeadPed ...
54679E:  LDR.W           R0, [R1,#0xC]!; CEntity **
5467A2:  ADDS            R2, #8
5467A4:  STR             R2, [R4]
5467A6:  CMP             R0, #0
5467A8:  IT NE
5467AA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5467AE:  MOV             R0, R4; this
5467B0:  POP.W           {R4,R6,R7,LR}
5467B4:  B.W             sub_18EDE8
