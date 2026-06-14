; =========================================================
; Game Engine Function: _ZN34CTaskSimpleCarCloseDoorFromOutsideD2Ev
; Address            : 0x50182C - 0x501864
; =========================================================

50182C:  PUSH            {R4,R6,R7,LR}
50182E:  ADD             R7, SP, #8
501830:  MOV             R4, R0
501832:  LDR             R0, =(_ZTV34CTaskSimpleCarCloseDoorFromOutside_ptr - 0x50183A)
501834:  MOV             R1, R4
501836:  ADD             R0, PC; _ZTV34CTaskSimpleCarCloseDoorFromOutside_ptr
501838:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarCloseDoorFromOutside ...
50183A:  LDR.W           R0, [R1,#0x10]!; CEntity **
50183E:  ADDS            R2, #8
501840:  STR             R2, [R4]
501842:  CMP             R0, #0
501844:  IT NE
501846:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50184A:  LDR             R0, [R4,#0xC]; this
50184C:  CBZ             R0, loc_50185A
50184E:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x501856)
501850:  MOVS            R2, #0; void *
501852:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
501854:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
501856:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50185A:  MOV             R0, R4; this
50185C:  POP.W           {R4,R6,R7,LR}
501860:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
