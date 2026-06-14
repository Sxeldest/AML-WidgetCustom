; =========================================================
; Game Engine Function: _ZN19CEventCarUpsideDownD2Ev
; Address            : 0x377324 - 0x377346
; =========================================================

377324:  PUSH            {R4,R6,R7,LR}
377326:  ADD             R7, SP, #8
377328:  MOV             R4, R0
37732A:  LDR             R0, =(_ZTV19CEventCarUpsideDown_ptr - 0x377332)
37732C:  MOV             R1, R4
37732E:  ADD             R0, PC; _ZTV19CEventCarUpsideDown_ptr
377330:  LDR             R2, [R0]; `vtable for'CEventCarUpsideDown ...
377332:  LDR.W           R0, [R1,#0xC]!; CEntity **
377336:  ADDS            R2, #8
377338:  STR             R2, [R4]
37733A:  CMP             R0, #0
37733C:  IT NE
37733E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
377342:  MOV             R0, R4
377344:  POP             {R4,R6,R7,PC}
