; =========================================================
; Game Engine Function: _ZN24CTaskComplexPartnerShoveD2Ev
; Address            : 0x53432C - 0x53435A
; =========================================================

53432C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexPartnerDeal::~CTaskComplexPartnerDeal()'
53432E:  ADD             R7, SP, #8
534330:  MOV             R4, R0
534332:  LDR             R0, =(_ZTV19CTaskComplexPartner_ptr - 0x53433A)
534334:  MOV             R1, R4
534336:  ADD             R0, PC; _ZTV19CTaskComplexPartner_ptr
534338:  LDR             R2, [R0]; `vtable for'CTaskComplexPartner ...
53433A:  LDR.W           R0, [R1,#0x38]!; CEntity **
53433E:  ADDS            R2, #8
534340:  STR             R2, [R4]
534342:  CBZ             R0, loc_53434A
534344:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
534348:  LDR             R2, [R4]
53434A:  LDR             R1, [R2,#0x38]; CTaskComplexPartner::RemoveStreamedAnims(void) ...
53434C:  MOV             R0, R4
53434E:  BLX             R1
534350:  MOV             R0, R4; this
534352:  POP.W           {R4,R6,R7,LR}
534356:  B.W             sub_18EDE8
