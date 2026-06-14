; =========================================================
; Game Engine Function: _ZN16CEventStuckInAirD2Ev
; Address            : 0x376D30 - 0x376D52
; =========================================================

376D30:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventStuckInAir::~CEventStuckInAir()'
376D32:  ADD             R7, SP, #8
376D34:  MOV             R4, R0
376D36:  LDR             R0, =(_ZTV16CEventStuckInAir_ptr - 0x376D3E)
376D38:  MOV             R1, R4
376D3A:  ADD             R0, PC; _ZTV16CEventStuckInAir_ptr
376D3C:  LDR             R2, [R0]; `vtable for'CEventStuckInAir ...
376D3E:  LDR.W           R0, [R1,#0xC]!; CEntity **
376D42:  ADDS            R2, #8
376D44:  STR             R2, [R4]
376D46:  CMP             R0, #0
376D48:  IT NE
376D4A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
376D4E:  MOV             R0, R4
376D50:  POP             {R4,R6,R7,PC}
