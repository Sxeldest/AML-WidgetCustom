; =========================================================
; Game Engine Function: _ZN25CEventPedCollisionWithPedD2Ev
; Address            : 0x3712D4 - 0x3712F6
; =========================================================

3712D4:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventPedCollisionWithPed::~CEventPedCollisionWithPed()'
3712D6:  ADD             R7, SP, #8
3712D8:  MOV             R4, R0
3712DA:  LDR             R0, =(_ZTV25CEventPedCollisionWithPed_ptr - 0x3712E2)
3712DC:  MOV             R1, R4
3712DE:  ADD             R0, PC; _ZTV25CEventPedCollisionWithPed_ptr
3712E0:  LDR             R2, [R0]; `vtable for'CEventPedCollisionWithPed ...
3712E2:  LDR.W           R0, [R1,#0x10]!; CEntity **
3712E6:  ADDS            R2, #8
3712E8:  STR             R2, [R4]
3712EA:  CMP             R0, #0
3712EC:  IT NE
3712EE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3712F2:  MOV             R0, R4
3712F4:  POP             {R4,R6,R7,PC}
