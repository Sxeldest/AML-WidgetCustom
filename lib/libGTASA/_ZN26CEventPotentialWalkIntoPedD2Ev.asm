; =========================================================
; Game Engine Function: _ZN26CEventPotentialWalkIntoPedD2Ev
; Address            : 0x3742F8 - 0x37431A
; =========================================================

3742F8:  PUSH            {R4,R6,R7,LR}
3742FA:  ADD             R7, SP, #8
3742FC:  MOV             R4, R0
3742FE:  LDR             R0, =(_ZTV26CEventPotentialWalkIntoPed_ptr - 0x374306)
374300:  MOV             R1, R4
374302:  ADD             R0, PC; _ZTV26CEventPotentialWalkIntoPed_ptr
374304:  LDR             R2, [R0]; `vtable for'CEventPotentialWalkIntoPed ...
374306:  LDR.W           R0, [R1,#0x1C]!; CEntity **
37430A:  ADDS            R2, #8
37430C:  STR             R2, [R4]
37430E:  CMP             R0, #0
374310:  IT NE
374312:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
374316:  MOV             R0, R4
374318:  POP             {R4,R6,R7,PC}
