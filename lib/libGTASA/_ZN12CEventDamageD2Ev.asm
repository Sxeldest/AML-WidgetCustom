; =========================================================
; Game Engine Function: _ZN12CEventDamageD2Ev
; Address            : 0x372404 - 0x372426
; =========================================================

372404:  PUSH            {R4,R6,R7,LR}
372406:  ADD             R7, SP, #8
372408:  MOV             R4, R0
37240A:  LDR             R0, =(_ZTV12CEventDamage_ptr - 0x372412)
37240C:  MOV             R1, R4
37240E:  ADD             R0, PC; _ZTV12CEventDamage_ptr
372410:  LDR             R2, [R0]; `vtable for'CEventDamage ...
372412:  LDR.W           R0, [R1,#0x10]!; CEntity **
372416:  ADDS            R2, #8
372418:  STR             R2, [R4]
37241A:  CMP             R0, #0
37241C:  IT NE
37241E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
372422:  MOV             R0, R4
372424:  POP             {R4,R6,R7,PC}
