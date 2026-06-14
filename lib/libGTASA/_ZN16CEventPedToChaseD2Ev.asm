; =========================================================
; Game Engine Function: _ZN16CEventPedToChaseD2Ev
; Address            : 0x374A70 - 0x374A92
; =========================================================

374A70:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventPedToChase::~CEventPedToChase()'
374A72:  ADD             R7, SP, #8
374A74:  MOV             R4, R0
374A76:  LDR             R0, =(_ZTV16CEventPedToChase_ptr - 0x374A7E)
374A78:  MOV             R1, R4
374A7A:  ADD             R0, PC; _ZTV16CEventPedToChase_ptr
374A7C:  LDR             R2, [R0]; `vtable for'CEventPedToChase ...
374A7E:  LDR.W           R0, [R1,#0xC]!; CEntity **
374A82:  ADDS            R2, #8
374A84:  STR             R2, [R4]
374A86:  CMP             R0, #0
374A88:  IT NE
374A8A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
374A8E:  MOV             R0, R4
374A90:  POP             {R4,R6,R7,PC}
