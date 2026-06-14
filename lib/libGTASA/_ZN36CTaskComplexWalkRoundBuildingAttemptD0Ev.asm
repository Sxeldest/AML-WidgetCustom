; =========================================================
; Game Engine Function: _ZN36CTaskComplexWalkRoundBuildingAttemptD0Ev
; Address            : 0x50CE74 - 0x50CEB4
; =========================================================

50CE74:  PUSH            {R4,R6,R7,LR}
50CE76:  ADD             R7, SP, #8
50CE78:  MOV             R4, R0
50CE7A:  LDR             R0, =(_ZTV36CTaskComplexWalkRoundBuildingAttempt_ptr - 0x50CE80)
50CE7C:  ADD             R0, PC; _ZTV36CTaskComplexWalkRoundBuildingAttempt_ptr
50CE7E:  LDR             R1, [R0]; `vtable for'CTaskComplexWalkRoundBuildingAttempt ...
50CE80:  LDR             R0, [R4,#0xC]; void *
50CE82:  ADDS            R1, #8
50CE84:  STR             R1, [R4]
50CE86:  CMP             R0, #0
50CE88:  IT NE
50CE8A:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
50CE8E:  LDR             R0, [R4,#0x10]; void *
50CE90:  CMP             R0, #0
50CE92:  IT NE
50CE94:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
50CE98:  MOV             R1, R4
50CE9A:  LDR.W           R0, [R1,#0x38]!; CEntity **
50CE9E:  CMP             R0, #0
50CEA0:  IT NE
50CEA2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50CEA6:  MOV             R0, R4; this
50CEA8:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
50CEAC:  POP.W           {R4,R6,R7,LR}
50CEB0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
