; =========================================================
; Game Engine Function: _ZN21CEventSeenPanickedPedD2Ev
; Address            : 0x377964 - 0x377986
; =========================================================

377964:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventSeenPanickedPed::~CEventSeenPanickedPed()'
377966:  ADD             R7, SP, #8
377968:  MOV             R4, R0
37796A:  LDR             R0, =(_ZTV21CEventSeenPanickedPed_ptr - 0x377972)
37796C:  MOV             R1, R4
37796E:  ADD             R0, PC; _ZTV21CEventSeenPanickedPed_ptr
377970:  LDR             R2, [R0]; `vtable for'CEventSeenPanickedPed ...
377972:  LDR.W           R0, [R1,#0x10]!; CEntity **
377976:  ADDS            R2, #8
377978:  STR             R2, [R4]
37797A:  CMP             R0, #0
37797C:  IT NE
37797E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
377982:  MOV             R0, R4
377984:  POP             {R4,R6,R7,PC}
