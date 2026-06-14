; =========================================================
; Game Engine Function: _ZN19CEventCarUpsideDownC2EP8CVehicle
; Address            : 0x3772F0 - 0x37731E
; =========================================================

3772F0:  PUSH            {R4,R6,R7,LR}
3772F2:  ADD             R7, SP, #8
3772F4:  MOV             R4, R0
3772F6:  LDR             R0, =(_ZTV19CEventCarUpsideDown_ptr - 0x377300)
3772F8:  MOVS            R2, #0
3772FA:  CMP             R1, #0
3772FC:  ADD             R0, PC; _ZTV19CEventCarUpsideDown_ptr
3772FE:  STRB            R2, [R4,#8]
377300:  LDR             R0, [R0]; `vtable for'CEventCarUpsideDown ...
377302:  ADD.W           R0, R0, #8
377306:  STRD.W          R0, R2, [R4]
37730A:  MOV             R2, R4
37730C:  STR.W           R1, [R2,#0xC]!
377310:  ITTT NE
377312:  MOVNE           R0, R1; this
377314:  MOVNE           R1, R2; CEntity **
377316:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37731A:  MOV             R0, R4
37731C:  POP             {R4,R6,R7,PC}
