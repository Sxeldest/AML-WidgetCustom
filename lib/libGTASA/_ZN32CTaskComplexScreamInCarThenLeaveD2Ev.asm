; =========================================================
; Game Engine Function: _ZN32CTaskComplexScreamInCarThenLeaveD2Ev
; Address            : 0x4F9BEC - 0x4F9C14
; =========================================================

4F9BEC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexScreamInCarThenLeave::~CTaskComplexScreamInCarThenLeave()'
4F9BEE:  ADD             R7, SP, #8
4F9BF0:  MOV             R4, R0
4F9BF2:  LDR             R0, =(_ZTV32CTaskComplexScreamInCarThenLeave_ptr - 0x4F9BFA)
4F9BF4:  MOV             R1, R4
4F9BF6:  ADD             R0, PC; _ZTV32CTaskComplexScreamInCarThenLeave_ptr
4F9BF8:  LDR             R2, [R0]; `vtable for'CTaskComplexScreamInCarThenLeave ...
4F9BFA:  LDR.W           R0, [R1,#0xC]!; CEntity **
4F9BFE:  ADDS            R2, #8
4F9C00:  STR             R2, [R4]
4F9C02:  CMP             R0, #0
4F9C04:  IT NE
4F9C06:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F9C0A:  MOV             R0, R4; this
4F9C0C:  POP.W           {R4,R6,R7,LR}
4F9C10:  B.W             sub_18EDE8
