; =========================================================
; Game Engine Function: _ZN16CEventGroupEventC2EP4CPedP6CEvent
; Address            : 0x373CB0 - 0x373CE0
; =========================================================

373CB0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventGroupEvent::CEventGroupEvent(CPed *, CEvent *)'
373CB2:  ADD             R7, SP, #8
373CB4:  MOV             R4, R0
373CB6:  LDR             R0, =(_ZTV16CEventGroupEvent_ptr - 0x373CC0)
373CB8:  MOVS            R3, #0
373CBA:  CMP             R1, #0
373CBC:  ADD             R0, PC; _ZTV16CEventGroupEvent_ptr
373CBE:  STRB            R3, [R4,#8]
373CC0:  STR             R3, [R4,#4]
373CC2:  LDR             R0, [R0]; `vtable for'CEventGroupEvent ...
373CC4:  STR             R2, [R4,#0x10]
373CC6:  MOV             R2, R4
373CC8:  ADD.W           R0, R0, #8
373CCC:  STR             R0, [R4]
373CCE:  STR.W           R1, [R2,#0xC]!
373CD2:  ITTT NE
373CD4:  MOVNE           R0, R1; this
373CD6:  MOVNE           R1, R2; CEntity **
373CD8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
373CDC:  MOV             R0, R4
373CDE:  POP             {R4,R6,R7,PC}
