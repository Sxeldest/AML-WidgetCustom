; =========================================================
; Game Engine Function: _ZN19CEventVehicleThreatD2Ev
; Address            : 0x375330 - 0x375352
; =========================================================

375330:  PUSH            {R4,R6,R7,LR}
375332:  ADD             R7, SP, #8
375334:  MOV             R4, R0
375336:  LDR             R0, =(_ZTV19CEventVehicleThreat_ptr - 0x37533E)
375338:  MOV             R1, R4
37533A:  ADD             R0, PC; _ZTV19CEventVehicleThreat_ptr
37533C:  LDR             R2, [R0]; `vtable for'CEventVehicleThreat ...
37533E:  LDR.W           R0, [R1,#0x10]!; CEntity **
375342:  ADDS            R2, #8
375344:  STR             R2, [R4]
375346:  CMP             R0, #0
375348:  IT NE
37534A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37534E:  MOV             R0, R4
375350:  POP             {R4,R6,R7,PC}
