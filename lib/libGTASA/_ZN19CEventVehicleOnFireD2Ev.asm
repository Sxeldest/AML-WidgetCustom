; =========================================================
; Game Engine Function: _ZN19CEventVehicleOnFireD2Ev
; Address            : 0x3769C0 - 0x3769E2
; =========================================================

3769C0:  PUSH            {R4,R6,R7,LR}
3769C2:  ADD             R7, SP, #8
3769C4:  MOV             R4, R0
3769C6:  LDR             R0, =(_ZTV19CEventVehicleOnFire_ptr - 0x3769CE)
3769C8:  MOV             R1, R4
3769CA:  ADD             R0, PC; _ZTV19CEventVehicleOnFire_ptr
3769CC:  LDR             R2, [R0]; `vtable for'CEventVehicleOnFire ...
3769CE:  LDR.W           R0, [R1,#0x10]!; CEntity **
3769D2:  ADDS            R2, #8
3769D4:  STR             R2, [R4]
3769D6:  CMP             R0, #0
3769D8:  IT NE
3769DA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3769DE:  MOV             R0, R4
3769E0:  POP             {R4,R6,R7,PC}
