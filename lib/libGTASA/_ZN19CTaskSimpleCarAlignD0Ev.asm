; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarAlignD0Ev
; Address            : 0x500758 - 0x500794
; =========================================================

500758:  PUSH            {R4,R6,R7,LR}
50075A:  ADD             R7, SP, #8
50075C:  MOV             R4, R0
50075E:  LDR             R0, =(_ZTV19CTaskSimpleCarAlign_ptr - 0x500766)
500760:  MOV             R1, R4
500762:  ADD             R0, PC; _ZTV19CTaskSimpleCarAlign_ptr
500764:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarAlign ...
500766:  LDR.W           R0, [R1,#0x10]!; CEntity **
50076A:  ADDS            R2, #8
50076C:  STR             R2, [R4]
50076E:  CMP             R0, #0
500770:  IT NE
500772:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
500776:  LDR             R0, [R4,#0xC]; this
500778:  CBZ             R0, loc_500786
50077A:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x500782)
50077C:  MOVS            R2, #0; void *
50077E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
500780:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
500782:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
500786:  MOV             R0, R4; this
500788:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
50078C:  POP.W           {R4,R6,R7,LR}
500790:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
