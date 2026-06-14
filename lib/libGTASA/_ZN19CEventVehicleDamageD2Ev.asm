; =========================================================
; Game Engine Function: _ZN19CEventVehicleDamageD2Ev
; Address            : 0x377064 - 0x377094
; =========================================================

377064:  PUSH            {R4,R6,R7,LR}
377066:  ADD             R7, SP, #8
377068:  MOV             R4, R0
37706A:  LDR             R0, =(_ZTV19CEventVehicleDamage_ptr - 0x377072)
37706C:  MOV             R1, R4
37706E:  ADD             R0, PC; _ZTV19CEventVehicleDamage_ptr
377070:  LDR             R2, [R0]; `vtable for'CEventVehicleDamage ...
377072:  LDR.W           R0, [R1,#0x10]!; CEntity **
377076:  ADDS            R2, #8
377078:  STR             R2, [R4]
37707A:  CMP             R0, #0
37707C:  IT NE
37707E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
377082:  MOV             R1, R4
377084:  LDR.W           R0, [R1,#0x14]!; CEntity **
377088:  CMP             R0, #0
37708A:  IT NE
37708C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
377090:  MOV             R0, R4
377092:  POP             {R4,R6,R7,PC}
