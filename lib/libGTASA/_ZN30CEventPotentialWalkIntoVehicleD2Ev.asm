; =========================================================
; Game Engine Function: _ZN30CEventPotentialWalkIntoVehicleD2Ev
; Address            : 0x373F40 - 0x373F62
; =========================================================

373F40:  PUSH            {R4,R6,R7,LR}
373F42:  ADD             R7, SP, #8
373F44:  MOV             R4, R0
373F46:  LDR             R0, =(_ZTV30CEventPotentialWalkIntoVehicle_ptr - 0x373F4E)
373F48:  MOV             R1, R4
373F4A:  ADD             R0, PC; _ZTV30CEventPotentialWalkIntoVehicle_ptr
373F4C:  LDR             R2, [R0]; `vtable for'CEventPotentialWalkIntoVehicle ...
373F4E:  LDR.W           R0, [R1,#0x10]!; CEntity **
373F52:  ADDS            R2, #8
373F54:  STR             R2, [R4]
373F56:  CMP             R0, #0
373F58:  IT NE
373F5A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
373F5E:  MOV             R0, R4
373F60:  POP             {R4,R6,R7,PC}
