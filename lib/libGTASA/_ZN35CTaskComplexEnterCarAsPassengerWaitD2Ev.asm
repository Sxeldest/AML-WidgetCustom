; =========================================================
; Game Engine Function: _ZN35CTaskComplexEnterCarAsPassengerWaitD2Ev
; Address            : 0x4F7920 - 0x4F7956
; =========================================================

4F7920:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexEnterCarAsPassengerWait::~CTaskComplexEnterCarAsPassengerWait()'
4F7922:  ADD             R7, SP, #8
4F7924:  MOV             R4, R0
4F7926:  LDR             R0, =(_ZTV35CTaskComplexEnterCarAsPassengerWait_ptr - 0x4F792E)
4F7928:  MOV             R1, R4
4F792A:  ADD             R0, PC; _ZTV35CTaskComplexEnterCarAsPassengerWait_ptr
4F792C:  LDR             R2, [R0]; `vtable for'CTaskComplexEnterCarAsPassengerWait ...
4F792E:  LDR.W           R0, [R1,#0xC]!; CEntity **
4F7932:  ADDS            R2, #8
4F7934:  STR             R2, [R4]
4F7936:  CMP             R0, #0
4F7938:  IT NE
4F793A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F793E:  MOV             R1, R4
4F7940:  LDR.W           R0, [R1,#0x10]!; CEntity **
4F7944:  CMP             R0, #0
4F7946:  IT NE
4F7948:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F794C:  MOV             R0, R4; this
4F794E:  POP.W           {R4,R6,R7,LR}
4F7952:  B.W             sub_18EDE8
