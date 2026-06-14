; =========================================================
; Game Engine Function: _ZN16CEventGroupEventD2Ev
; Address            : 0x373CE4 - 0x373D12
; =========================================================

373CE4:  PUSH            {R4,R6,R7,LR}
373CE6:  ADD             R7, SP, #8
373CE8:  MOV             R4, R0
373CEA:  LDR             R0, =(_ZTV16CEventGroupEvent_ptr - 0x373CF2)
373CEC:  MOV             R1, R4
373CEE:  ADD             R0, PC; _ZTV16CEventGroupEvent_ptr
373CF0:  LDR             R2, [R0]; `vtable for'CEventGroupEvent ...
373CF2:  LDR.W           R0, [R1,#0xC]!; CEntity **
373CF6:  ADDS            R2, #8
373CF8:  STR             R2, [R4]
373CFA:  CMP             R0, #0
373CFC:  IT NE
373CFE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
373D02:  LDR             R0, [R4,#0x10]
373D04:  CMP             R0, #0
373D06:  ITTT NE
373D08:  LDRNE           R1, [R0]
373D0A:  LDRNE           R1, [R1,#4]
373D0C:  BLXNE           R1
373D0E:  MOV             R0, R4
373D10:  POP             {R4,R6,R7,PC}
