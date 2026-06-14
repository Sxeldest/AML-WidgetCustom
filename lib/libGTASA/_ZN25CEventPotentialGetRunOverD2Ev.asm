; =========================================================
; Game Engine Function: _ZN25CEventPotentialGetRunOverD2Ev
; Address            : 0x373E40 - 0x373E62
; =========================================================

373E40:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventPotentialGetRunOver::~CEventPotentialGetRunOver()'
373E42:  ADD             R7, SP, #8
373E44:  MOV             R4, R0
373E46:  LDR             R0, =(_ZTV25CEventPotentialGetRunOver_ptr - 0x373E4E)
373E48:  MOV             R1, R4
373E4A:  ADD             R0, PC; _ZTV25CEventPotentialGetRunOver_ptr
373E4C:  LDR             R2, [R0]; `vtable for'CEventPotentialGetRunOver ...
373E4E:  LDR.W           R0, [R1,#0x10]!; CEntity **
373E52:  ADDS            R2, #8
373E54:  STR             R2, [R4]
373E56:  CMP             R0, #0
373E58:  IT NE
373E5A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
373E5E:  MOV             R0, R4
373E60:  POP             {R4,R6,R7,PC}
