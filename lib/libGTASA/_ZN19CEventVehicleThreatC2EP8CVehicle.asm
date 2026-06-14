; =========================================================
; Game Engine Function: _ZN19CEventVehicleThreatC2EP8CVehicle
; Address            : 0x3752F0 - 0x37532C
; =========================================================

3752F0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventVehicleThreat::CEventVehicleThreat(CVehicle *)'
3752F2:  ADD             R7, SP, #8
3752F4:  MOV             R4, R0
3752F6:  LDR             R0, =(_ZTV19CEventVehicleThreat_ptr - 0x375300)
3752F8:  MOVS            R2, #0
3752FA:  CMP             R1, #0
3752FC:  ADD             R0, PC; _ZTV19CEventVehicleThreat_ptr
3752FE:  STR             R2, [R4,#4]
375300:  MOV             R2, #0xC80100
375308:  LDR             R0, [R0]; `vtable for'CEventVehicleThreat ...
37530A:  STR             R2, [R4,#8]
37530C:  MOVW            R2, #0xFFFF
375310:  STRH            R2, [R4,#0xC]
375312:  MOV             R2, R4
375314:  ADD.W           R0, R0, #8
375318:  STR             R0, [R4]
37531A:  STR.W           R1, [R2,#0x10]!
37531E:  ITTT NE
375320:  MOVNE           R0, R1; this
375322:  MOVNE           R1, R2; CEntity **
375324:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
375328:  MOV             R0, R4
37532A:  POP             {R4,R6,R7,PC}
