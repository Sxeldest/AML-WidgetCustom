; =========================================================
; Game Engine Function: _ZN24CTaskComplexPartnerGreetD0Ev
; Address            : 0x534DE0 - 0x534E12
; =========================================================

534DE0:  PUSH            {R4,R6,R7,LR}
534DE2:  ADD             R7, SP, #8
534DE4:  MOV             R4, R0
534DE6:  LDR             R0, =(_ZTV19CTaskComplexPartner_ptr - 0x534DEE)
534DE8:  MOV             R1, R4
534DEA:  ADD             R0, PC; _ZTV19CTaskComplexPartner_ptr
534DEC:  LDR             R2, [R0]; `vtable for'CTaskComplexPartner ...
534DEE:  LDR.W           R0, [R1,#0x38]!; CEntity **
534DF2:  ADDS            R2, #8
534DF4:  STR             R2, [R4]
534DF6:  CBZ             R0, loc_534DFE
534DF8:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
534DFC:  LDR             R2, [R4]
534DFE:  LDR             R1, [R2,#0x38]; CTaskComplexPartner::RemoveStreamedAnims(void) ...
534E00:  MOV             R0, R4
534E02:  BLX             R1
534E04:  MOV             R0, R4; this
534E06:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
534E0A:  POP.W           {R4,R6,R7,LR}
534E0E:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
