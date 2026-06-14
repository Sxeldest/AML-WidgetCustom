; =========================================================
; Game Engine Function: _ZN19CEventLeanOnVehicleD2Ev
; Address            : 0x378CC4 - 0x378CE6
; =========================================================

378CC4:  PUSH            {R4,R6,R7,LR}
378CC6:  ADD             R7, SP, #8
378CC8:  MOV             R4, R0
378CCA:  LDR             R0, =(_ZTV19CEventLeanOnVehicle_ptr - 0x378CD2)
378CCC:  MOV             R1, R4
378CCE:  ADD             R0, PC; _ZTV19CEventLeanOnVehicle_ptr
378CD0:  LDR             R2, [R0]; `vtable for'CEventLeanOnVehicle ...
378CD2:  LDR.W           R0, [R1,#0xC]!; CEntity **
378CD6:  ADDS            R2, #8
378CD8:  STR             R2, [R4]
378CDA:  CMP             R0, #0
378CDC:  IT NE
378CDE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
378CE2:  MOV             R0, R4
378CE4:  POP             {R4,R6,R7,PC}
