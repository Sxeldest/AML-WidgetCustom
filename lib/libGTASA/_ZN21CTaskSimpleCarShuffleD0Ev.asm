; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarShuffleD0Ev
; Address            : 0x501FCC - 0x502008
; =========================================================

501FCC:  PUSH            {R4,R6,R7,LR}
501FCE:  ADD             R7, SP, #8
501FD0:  MOV             R4, R0
501FD2:  LDR             R0, =(_ZTV21CTaskSimpleCarShuffle_ptr - 0x501FDA)
501FD4:  MOV             R1, R4
501FD6:  ADD             R0, PC; _ZTV21CTaskSimpleCarShuffle_ptr
501FD8:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarShuffle ...
501FDA:  LDR.W           R0, [R1,#0x10]!; CEntity **
501FDE:  ADDS            R2, #8
501FE0:  STR             R2, [R4]
501FE2:  CMP             R0, #0
501FE4:  IT NE
501FE6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
501FEA:  LDR             R0, [R4,#0xC]; this
501FEC:  CBZ             R0, loc_501FFA
501FEE:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x501FF6)
501FF0:  MOVS            R2, #0; void *
501FF2:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
501FF4:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
501FF6:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
501FFA:  MOV             R0, R4; this
501FFC:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
502000:  POP.W           {R4,R6,R7,LR}
502004:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
