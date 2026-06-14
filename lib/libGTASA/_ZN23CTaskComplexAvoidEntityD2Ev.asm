; =========================================================
; Game Engine Function: _ZN23CTaskComplexAvoidEntityD2Ev
; Address            : 0x522A64 - 0x522A8C
; =========================================================

522A64:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexAvoidEntity::~CTaskComplexAvoidEntity()'
522A66:  ADD             R7, SP, #8
522A68:  MOV             R4, R0
522A6A:  LDR             R0, =(_ZTV23CTaskComplexAvoidEntity_ptr - 0x522A72)
522A6C:  MOV             R1, R4
522A6E:  ADD             R0, PC; _ZTV23CTaskComplexAvoidEntity_ptr
522A70:  LDR             R2, [R0]; `vtable for'CTaskComplexAvoidEntity ...
522A72:  LDR.W           R0, [R1,#0xC]!; CEntity **
522A76:  ADDS            R2, #8
522A78:  STR             R2, [R4]
522A7A:  CMP             R0, #0
522A7C:  IT NE
522A7E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
522A82:  MOV             R0, R4; this
522A84:  POP.W           {R4,R6,R7,LR}
522A88:  B.W             sub_18EDE8
