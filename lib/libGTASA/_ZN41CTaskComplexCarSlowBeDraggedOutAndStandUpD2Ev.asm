; =========================================================
; Game Engine Function: _ZN41CTaskComplexCarSlowBeDraggedOutAndStandUpD2Ev
; Address            : 0x50528C - 0x5052B4
; =========================================================

50528C:  PUSH            {R4,R6,R7,LR}
50528E:  ADD             R7, SP, #8
505290:  MOV             R4, R0
505292:  LDR             R0, =(_ZTV41CTaskComplexCarSlowBeDraggedOutAndStandUp_ptr - 0x50529A)
505294:  MOV             R1, R4
505296:  ADD             R0, PC; _ZTV41CTaskComplexCarSlowBeDraggedOutAndStandUp_ptr
505298:  LDR             R2, [R0]; `vtable for'CTaskComplexCarSlowBeDraggedOutAndStandUp ...
50529A:  LDR.W           R0, [R1,#0xC]!; CEntity **
50529E:  ADDS            R2, #8
5052A0:  STR             R2, [R4]
5052A2:  CMP             R0, #0
5052A4:  IT NE
5052A6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5052AA:  MOV             R0, R4; this
5052AC:  POP.W           {R4,R6,R7,LR}
5052B0:  B.W             sub_18EDE8
