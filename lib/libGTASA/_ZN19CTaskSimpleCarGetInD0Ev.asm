; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarGetInD0Ev
; Address            : 0x501CC0 - 0x501CFC
; =========================================================

501CC0:  PUSH            {R4,R6,R7,LR}
501CC2:  ADD             R7, SP, #8
501CC4:  MOV             R4, R0
501CC6:  LDR             R0, =(_ZTV19CTaskSimpleCarGetIn_ptr - 0x501CCE)
501CC8:  MOV             R1, R4
501CCA:  ADD             R0, PC; _ZTV19CTaskSimpleCarGetIn_ptr
501CCC:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarGetIn ...
501CCE:  LDR.W           R0, [R1,#0x18]!; CEntity **
501CD2:  ADDS            R2, #8
501CD4:  STR             R2, [R4]
501CD6:  CMP             R0, #0
501CD8:  IT NE
501CDA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
501CDE:  LDR             R0, [R4,#0xC]; this
501CE0:  CBZ             R0, loc_501CEE
501CE2:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x501CEA)
501CE4:  MOVS            R2, #0; void *
501CE6:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
501CE8:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
501CEA:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
501CEE:  MOV             R0, R4; this
501CF0:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
501CF4:  POP.W           {R4,R6,R7,LR}
501CF8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
