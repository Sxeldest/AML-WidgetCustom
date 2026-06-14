; =========================================================
; Game Engine Function: _ZN15CEventAttractorD2Ev
; Address            : 0x374BF4 - 0x374C16
; =========================================================

374BF4:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventAttractor::~CEventAttractor()'
374BF6:  ADD             R7, SP, #8
374BF8:  MOV             R4, R0
374BFA:  LDR             R0, =(_ZTV15CEventAttractor_ptr - 0x374C02)
374BFC:  MOV             R1, R4
374BFE:  ADD             R0, PC; _ZTV15CEventAttractor_ptr
374C00:  LDR             R2, [R0]; `vtable for'CEventAttractor ...
374C02:  LDR.W           R0, [R1,#0x14]!; CEntity **
374C06:  ADDS            R2, #8
374C08:  STR             R2, [R4]
374C0A:  CMP             R0, #0
374C0C:  IT NE
374C0E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
374C12:  MOV             R0, R4
374C14:  POP             {R4,R6,R7,PC}
