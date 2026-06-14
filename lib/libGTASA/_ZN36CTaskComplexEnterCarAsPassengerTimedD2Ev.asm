; =========================================================
; Game Engine Function: _ZN36CTaskComplexEnterCarAsPassengerTimedD2Ev
; Address            : 0x4F7660 - 0x4F7688
; =========================================================

4F7660:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexEnterCarAsPassengerTimed::~CTaskComplexEnterCarAsPassengerTimed()'
4F7662:  ADD             R7, SP, #8
4F7664:  MOV             R4, R0
4F7666:  LDR             R0, =(_ZTV36CTaskComplexEnterCarAsPassengerTimed_ptr - 0x4F766E)
4F7668:  MOV             R1, R4
4F766A:  ADD             R0, PC; _ZTV36CTaskComplexEnterCarAsPassengerTimed_ptr
4F766C:  LDR             R2, [R0]; `vtable for'CTaskComplexEnterCarAsPassengerTimed ...
4F766E:  LDR.W           R0, [R1,#0xC]!; CEntity **
4F7672:  ADDS            R2, #8
4F7674:  STR             R2, [R4]
4F7676:  CMP             R0, #0
4F7678:  IT NE
4F767A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F767E:  MOV             R0, R4; this
4F7680:  POP.W           {R4,R6,R7,LR}
4F7684:  B.W             sub_18EDE8
