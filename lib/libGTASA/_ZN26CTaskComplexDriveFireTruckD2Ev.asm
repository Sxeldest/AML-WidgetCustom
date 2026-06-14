; =========================================================
; Game Engine Function: _ZN26CTaskComplexDriveFireTruckD2Ev
; Address            : 0x511824 - 0x51185A
; =========================================================

511824:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexDriveFireTruck::~CTaskComplexDriveFireTruck()'
511826:  ADD             R7, SP, #8
511828:  MOV             R4, R0
51182A:  LDR             R0, =(_ZTV26CTaskComplexDriveFireTruck_ptr - 0x511832)
51182C:  MOV             R1, R4
51182E:  ADD             R0, PC; _ZTV26CTaskComplexDriveFireTruck_ptr
511830:  LDR             R2, [R0]; `vtable for'CTaskComplexDriveFireTruck ...
511832:  LDR.W           R0, [R1,#0xC]!; CEntity **
511836:  ADDS            R2, #8
511838:  STR             R2, [R4]
51183A:  CMP             R0, #0
51183C:  IT NE
51183E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
511842:  MOV             R1, R4
511844:  LDR.W           R0, [R1,#0x14]!; CEntity **
511848:  CMP             R0, #0
51184A:  IT NE
51184C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
511850:  MOV             R0, R4; this
511852:  POP.W           {R4,R6,R7,LR}
511856:  B.W             sub_18EDE8
