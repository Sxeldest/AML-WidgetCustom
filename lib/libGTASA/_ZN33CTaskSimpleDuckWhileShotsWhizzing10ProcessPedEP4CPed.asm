; =========================================================
; Game Engine Function: _ZN33CTaskSimpleDuckWhileShotsWhizzing10ProcessPedEP4CPed
; Address            : 0x543868 - 0x54389A
; =========================================================

543868:  PUSH            {R4,R5,R7,LR}
54386A:  ADD             R7, SP, #8
54386C:  MOV             R5, R0
54386E:  MOV             R4, R1
543870:  LDR             R0, [R5,#0x10]
543872:  CBNZ            R0, loc_543890
543874:  LDR             R0, [R4,#0x18]; int
543876:  MOVS            R1, #0; int
543878:  MOVS            R2, #0x8D; unsigned int
54387A:  MOV.W           R3, #0x40800000
54387E:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
543882:  LDR             R1, =(_ZN15CTaskSimpleDuck16DeleteDuckAnimCBEP21CAnimBlendAssociationPv_ptr - 0x54388C)
543884:  MOV             R2, R5; void *
543886:  STR             R0, [R5,#0x10]
543888:  ADD             R1, PC; _ZN15CTaskSimpleDuck16DeleteDuckAnimCBEP21CAnimBlendAssociationPv_ptr
54388A:  LDR             R1, [R1]; CTaskSimpleDuck::DeleteDuckAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
54388C:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
543890:  MOV             R0, R5; this
543892:  MOV             R1, R4; CPed *
543894:  POP.W           {R4,R5,R7,LR}
543898:  B               _ZN15CTaskSimpleDuck10ProcessPedEP4CPed; CTaskSimpleDuck::ProcessPed(CPed *)
