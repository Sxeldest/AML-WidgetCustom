; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFightD2Ev
; Address            : 0x4D8724 - 0x4D879A
; =========================================================

4D8724:  PUSH            {R4,R6,R7,LR}
4D8726:  ADD             R7, SP, #8
4D8728:  MOV             R4, R0
4D872A:  LDR             R0, =(_ZTV16CTaskSimpleFight_ptr - 0x4D8732)
4D872C:  MOV             R1, R4
4D872E:  ADD             R0, PC; _ZTV16CTaskSimpleFight_ptr
4D8730:  LDR             R2, [R0]; `vtable for'CTaskSimpleFight ...
4D8732:  LDR.W           R0, [R1,#0x18]!; CEntity **
4D8736:  ADDS            R2, #8
4D8738:  STR             R2, [R4]
4D873A:  CMP             R0, #0
4D873C:  IT NE
4D873E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4D8742:  LDR             R0, [R4,#0x1C]; this
4D8744:  CBZ             R0, loc_4D8752
4D8746:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D874E)
4D8748:  MOVS            R2, #0; void *
4D874A:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4D874C:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D874E:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D8752:  LDR             R0, [R4,#0x20]; this
4D8754:  CBZ             R0, loc_4D8762
4D8756:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D875E)
4D8758:  MOVS            R2, #0; void *
4D875A:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4D875C:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D875E:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D8762:  LDRB            R0, [R4,#0xA]
4D8764:  CMP             R0, #0
4D8766:  ITT NE
4D8768:  LDRNE           R0, [R4,#0xC]
4D876A:  CMPNE           R0, #0x21 ; '!'
4D876C:  BEQ             loc_4D8790
4D876E:  LDR             R1, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x4D877A)
4D8770:  ADD.W           R0, R0, R0,LSL#2
4D8774:  LDR             R2, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x4D877C)
4D8776:  ADD             R1, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
4D8778:  ADD             R2, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
4D877A:  LDR             R1, [R1]; CAnimManager::ms_aAnimAssocGroups ...
4D877C:  LDR             R2, [R2]; CAnimManager::ms_aAnimBlocks ...
4D877E:  LDR             R1, [R1]; int
4D8780:  LDR.W           R0, [R1,R0,LSL#2]
4D8784:  SUBS            R0, R0, R2
4D8786:  ASRS            R0, R0, #5; this
4D8788:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
4D878C:  MOVS            R0, #0
4D878E:  STRB            R0, [R4,#0xA]
4D8790:  MOV             R0, R4; this
4D8792:  POP.W           {R4,R6,R7,LR}
4D8796:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
