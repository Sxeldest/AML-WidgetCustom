; =========================================================
; Game Engine Function: _ZN23CTaskComplexPartnerDealD0Ev
; Address            : 0x534BC0 - 0x534BF2
; =========================================================

534BC0:  PUSH            {R4,R6,R7,LR}
534BC2:  ADD             R7, SP, #8
534BC4:  MOV             R4, R0
534BC6:  LDR             R0, =(_ZTV19CTaskComplexPartner_ptr - 0x534BCE)
534BC8:  MOV             R1, R4
534BCA:  ADD             R0, PC; _ZTV19CTaskComplexPartner_ptr
534BCC:  LDR             R2, [R0]; `vtable for'CTaskComplexPartner ...
534BCE:  LDR.W           R0, [R1,#0x38]!; CEntity **
534BD2:  ADDS            R2, #8
534BD4:  STR             R2, [R4]
534BD6:  CBZ             R0, loc_534BDE
534BD8:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
534BDC:  LDR             R2, [R4]
534BDE:  LDR             R1, [R2,#0x38]; CTaskComplexPartner::RemoveStreamedAnims(void) ...
534BE0:  MOV             R0, R4
534BE2:  BLX             R1
534BE4:  MOV             R0, R4; this
534BE6:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
534BEA:  POP.W           {R4,R6,R7,LR}
534BEE:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
