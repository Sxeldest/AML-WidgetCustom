; =========================================================
; Game Engine Function: _ZN21CTaskComplexLeaveBoatD2Ev
; Address            : 0x4F9540 - 0x4F9568
; =========================================================

4F9540:  PUSH            {R4,R6,R7,LR}
4F9542:  ADD             R7, SP, #8
4F9544:  MOV             R4, R0
4F9546:  LDR             R0, =(_ZTV21CTaskComplexLeaveBoat_ptr - 0x4F954E)
4F9548:  MOV             R1, R4
4F954A:  ADD             R0, PC; _ZTV21CTaskComplexLeaveBoat_ptr
4F954C:  LDR             R2, [R0]; `vtable for'CTaskComplexLeaveBoat ...
4F954E:  LDR.W           R0, [R1,#0xC]!; CEntity **
4F9552:  ADDS            R2, #8
4F9554:  STR             R2, [R4]
4F9556:  CMP             R0, #0
4F9558:  IT NE
4F955A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F955E:  MOV             R0, R4; this
4F9560:  POP.W           {R4,R6,R7,LR}
4F9564:  B.W             sub_18EDE8
