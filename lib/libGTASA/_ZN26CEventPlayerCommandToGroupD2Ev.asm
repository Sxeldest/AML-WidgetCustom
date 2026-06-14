; =========================================================
; Game Engine Function: _ZN26CEventPlayerCommandToGroupD2Ev
; Address            : 0x3780A0 - 0x3780C2
; =========================================================

3780A0:  PUSH            {R4,R6,R7,LR}
3780A2:  ADD             R7, SP, #8
3780A4:  MOV             R4, R0
3780A6:  LDR             R0, =(_ZTV26CEventPlayerCommandToGroup_ptr - 0x3780AE)
3780A8:  MOV             R1, R4
3780AA:  ADD             R0, PC; _ZTV26CEventPlayerCommandToGroup_ptr
3780AC:  LDR             R2, [R0]; `vtable for'CEventPlayerCommandToGroup ...
3780AE:  LDR.W           R0, [R1,#0x14]!; CEntity **
3780B2:  ADDS            R2, #8
3780B4:  STR             R2, [R4]
3780B6:  CMP             R0, #0
3780B8:  IT NE
3780BA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3780BE:  MOV             R0, R4
3780C0:  POP             {R4,R6,R7,PC}
