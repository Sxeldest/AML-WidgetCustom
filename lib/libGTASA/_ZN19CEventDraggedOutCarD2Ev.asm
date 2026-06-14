; =========================================================
; Game Engine Function: _ZN19CEventDraggedOutCarD2Ev
; Address            : 0x371A00 - 0x371A30
; =========================================================

371A00:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventDraggedOutCar::~CEventDraggedOutCar()'
371A02:  ADD             R7, SP, #8
371A04:  MOV             R4, R0
371A06:  LDR             R0, =(_ZTV19CEventDraggedOutCar_ptr - 0x371A0E)
371A08:  MOV             R1, R4
371A0A:  ADD             R0, PC; _ZTV19CEventDraggedOutCar_ptr
371A0C:  LDR             R2, [R0]; `vtable for'CEventDraggedOutCar ...
371A0E:  LDR.W           R0, [R1,#0x14]!; CEntity **
371A12:  ADDS            R2, #8
371A14:  STR             R2, [R4]
371A16:  CMP             R0, #0
371A18:  IT NE
371A1A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
371A1E:  MOV             R1, R4
371A20:  LDR.W           R0, [R1,#0x10]!; CEntity **
371A24:  CMP             R0, #0
371A26:  IT NE
371A28:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
371A2C:  MOV             R0, R4
371A2E:  POP             {R4,R6,R7,PC}
