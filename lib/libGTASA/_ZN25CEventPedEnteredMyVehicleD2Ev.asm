; =========================================================
; Game Engine Function: _ZN25CEventPedEnteredMyVehicleD2Ev
; Address            : 0x3745CC - 0x3745FC
; =========================================================

3745CC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventPedEnteredMyVehicle::~CEventPedEnteredMyVehicle()'
3745CE:  ADD             R7, SP, #8
3745D0:  MOV             R4, R0
3745D2:  LDR             R0, =(_ZTV25CEventPedEnteredMyVehicle_ptr - 0x3745DA)
3745D4:  MOV             R1, R4
3745D6:  ADD             R0, PC; _ZTV25CEventPedEnteredMyVehicle_ptr
3745D8:  LDR             R2, [R0]; `vtable for'CEventPedEnteredMyVehicle ...
3745DA:  LDR.W           R0, [R1,#0x10]!; CEntity **
3745DE:  ADDS            R2, #8
3745E0:  STR             R2, [R4]
3745E2:  CMP             R0, #0
3745E4:  IT NE
3745E6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3745EA:  MOV             R1, R4
3745EC:  LDR.W           R0, [R1,#0x14]!; CEntity **
3745F0:  CMP             R0, #0
3745F2:  IT NE
3745F4:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3745F8:  MOV             R0, R4
3745FA:  POP             {R4,R6,R7,PC}
