; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWanderingD2Ev
; Address            : 0x521C08 - 0x521C30
; =========================================================

521C08:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexAvoidOtherPedWhileWandering::~CTaskComplexAvoidOtherPedWhileWandering()'
521C0A:  ADD             R7, SP, #8
521C0C:  MOV             R4, R0
521C0E:  LDR             R0, =(_ZTV39CTaskComplexAvoidOtherPedWhileWandering_ptr - 0x521C16)
521C10:  MOV             R1, R4
521C12:  ADD             R0, PC; _ZTV39CTaskComplexAvoidOtherPedWhileWandering_ptr
521C14:  LDR             R2, [R0]; `vtable for'CTaskComplexAvoidOtherPedWhileWandering ...
521C16:  LDR.W           R0, [R1,#0xC]!; CEntity **
521C1A:  ADDS            R2, #8
521C1C:  STR             R2, [R4]
521C1E:  CMP             R0, #0
521C20:  IT NE
521C22:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
521C26:  MOV             R0, R4; this
521C28:  POP.W           {R4,R6,R7,LR}
521C2C:  B.W             sub_18EDE8
