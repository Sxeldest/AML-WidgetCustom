; =========================================================
; Game Engine Function: _ZN22CTaskComplexPassObjectD0Ev
; Address            : 0x51AD48 - 0x51AD74
; =========================================================

51AD48:  PUSH            {R4,R6,R7,LR}
51AD4A:  ADD             R7, SP, #8
51AD4C:  MOV             R4, R0
51AD4E:  LDR             R0, =(_ZTV22CTaskComplexPassObject_ptr - 0x51AD56)
51AD50:  MOV             R1, R4
51AD52:  ADD             R0, PC; _ZTV22CTaskComplexPassObject_ptr
51AD54:  LDR             R2, [R0]; `vtable for'CTaskComplexPassObject ...
51AD56:  LDR.W           R0, [R1,#0xC]!; CEntity **
51AD5A:  ADDS            R2, #8
51AD5C:  STR             R2, [R4]
51AD5E:  CMP             R0, #0
51AD60:  IT NE
51AD62:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51AD66:  MOV             R0, R4; this
51AD68:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
51AD6C:  POP.W           {R4,R6,R7,LR}
51AD70:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
