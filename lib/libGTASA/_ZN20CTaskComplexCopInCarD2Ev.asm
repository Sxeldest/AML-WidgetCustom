; =========================================================
; Game Engine Function: _ZN20CTaskComplexCopInCarD2Ev
; Address            : 0x53FC48 - 0x53FC8C
; =========================================================

53FC48:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexCopInCar::~CTaskComplexCopInCar()'
53FC4A:  ADD             R7, SP, #8
53FC4C:  MOV             R4, R0
53FC4E:  LDR             R0, =(_ZTV20CTaskComplexCopInCar_ptr - 0x53FC56)
53FC50:  MOV             R1, R4
53FC52:  ADD             R0, PC; _ZTV20CTaskComplexCopInCar_ptr
53FC54:  LDR             R2, [R0]; `vtable for'CTaskComplexCopInCar ...
53FC56:  LDR.W           R0, [R1,#0xC]!; CEntity **
53FC5A:  ADDS            R2, #8
53FC5C:  STR             R2, [R4]
53FC5E:  CMP             R0, #0
53FC60:  IT NE
53FC62:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53FC66:  MOV             R1, R4
53FC68:  LDR.W           R0, [R1,#0x10]!; CEntity **
53FC6C:  CMP             R0, #0
53FC6E:  IT NE
53FC70:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53FC74:  MOV             R1, R4
53FC76:  LDR.W           R0, [R1,#0x14]!; CEntity **
53FC7A:  CMP             R0, #0
53FC7C:  IT NE
53FC7E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53FC82:  MOV             R0, R4; this
53FC84:  POP.W           {R4,R6,R7,LR}
53FC88:  B.W             sub_18EDE8
