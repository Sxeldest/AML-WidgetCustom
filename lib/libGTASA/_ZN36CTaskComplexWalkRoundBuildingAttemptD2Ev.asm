; =========================================================
; Game Engine Function: _ZN36CTaskComplexWalkRoundBuildingAttemptD2Ev
; Address            : 0x50CE34 - 0x50CE70
; =========================================================

50CE34:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexWalkRoundBuildingAttempt::~CTaskComplexWalkRoundBuildingAttempt()'
50CE36:  ADD             R7, SP, #8
50CE38:  MOV             R4, R0
50CE3A:  LDR             R0, =(_ZTV36CTaskComplexWalkRoundBuildingAttempt_ptr - 0x50CE40)
50CE3C:  ADD             R0, PC; _ZTV36CTaskComplexWalkRoundBuildingAttempt_ptr
50CE3E:  LDR             R1, [R0]; `vtable for'CTaskComplexWalkRoundBuildingAttempt ...
50CE40:  LDR             R0, [R4,#0xC]; void *
50CE42:  ADDS            R1, #8
50CE44:  STR             R1, [R4]
50CE46:  CMP             R0, #0
50CE48:  IT NE
50CE4A:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
50CE4E:  LDR             R0, [R4,#0x10]; void *
50CE50:  CMP             R0, #0
50CE52:  IT NE
50CE54:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
50CE58:  MOV             R1, R4
50CE5A:  LDR.W           R0, [R1,#0x38]!; CEntity **
50CE5E:  CMP             R0, #0
50CE60:  IT NE
50CE62:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50CE66:  MOV             R0, R4; this
50CE68:  POP.W           {R4,R6,R7,LR}
50CE6C:  B.W             sub_18EDE8
