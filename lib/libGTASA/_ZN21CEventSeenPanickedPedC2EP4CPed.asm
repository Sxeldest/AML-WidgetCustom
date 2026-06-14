; =========================================================
; Game Engine Function: _ZN21CEventSeenPanickedPedC2EP4CPed
; Address            : 0x377924 - 0x377960
; =========================================================

377924:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventSeenPanickedPed::CEventSeenPanickedPed(CPed *)'
377926:  ADD             R7, SP, #8
377928:  MOV             R4, R0
37792A:  LDR             R0, =(_ZTV21CEventSeenPanickedPed_ptr - 0x377934)
37792C:  MOVS            R2, #0
37792E:  CMP             R1, #0
377930:  ADD             R0, PC; _ZTV21CEventSeenPanickedPed_ptr
377932:  STR             R2, [R4,#4]
377934:  MOV             R2, #0xC80100
37793C:  LDR             R0, [R0]; `vtable for'CEventSeenPanickedPed ...
37793E:  STR             R2, [R4,#8]
377940:  MOVW            R2, #0xFFFF
377944:  STRH            R2, [R4,#0xC]
377946:  MOV             R2, R4
377948:  ADD.W           R0, R0, #8
37794C:  STR             R0, [R4]
37794E:  STR.W           R1, [R2,#0x10]!
377952:  ITTT NE
377954:  MOVNE           R0, R1; this
377956:  MOVNE           R1, R2; CEntity **
377958:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37795C:  MOV             R0, R4
37795E:  POP             {R4,R6,R7,PC}
