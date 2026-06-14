; =========================================================
; Game Engine Function: _ZN23CTaskInteriorSitInChair13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x529CA0 - 0x529CF8
; =========================================================

529CA0:  PUSH            {R4,R5,R7,LR}
529CA2:  ADD             R7, SP, #8
529CA4:  MOV             R5, R1
529CA6:  MOV             R4, R0
529CA8:  CMP             R2, #2
529CAA:  BNE             loc_529CEA
529CAC:  LDR             R0, =(g_ikChainMan_ptr - 0x529CB4)
529CAE:  MOV             R1, R5; CPed *
529CB0:  ADD             R0, PC; g_ikChainMan_ptr
529CB2:  LDR             R0, [R0]; g_ikChainMan ; this
529CB4:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
529CB8:  CBZ             R0, loc_529CC8
529CBA:  LDR             R0, =(g_ikChainMan_ptr - 0x529CC4)
529CBC:  MOV             R1, R5; CPed *
529CBE:  MOVS            R2, #0xFA; int
529CC0:  ADD             R0, PC; g_ikChainMan_ptr
529CC2:  LDR             R0, [R0]; g_ikChainMan ; this
529CC4:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
529CC8:  LDR             R0, [R4,#0x14]
529CCA:  CBZ             R0, loc_529CF4
529CCC:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x529CDA)
529CCE:  MOVS            R2, #0xC47A0000
529CD4:  MOVS            R5, #0
529CD6:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
529CD8:  STR             R2, [R0,#0x1C]
529CDA:  LDR             R0, [R4,#0x14]; this
529CDC:  MOVS            R2, #0; void *
529CDE:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
529CE0:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
529CE4:  MOVS            R0, #1
529CE6:  STR             R5, [R4,#0x14]
529CE8:  POP             {R4,R5,R7,PC}
529CEA:  MOVS            R0, #1
529CEC:  STRB.W          R0, [R4,#0x2A]
529CF0:  MOVS            R0, #0
529CF2:  POP             {R4,R5,R7,PC}
529CF4:  MOVS            R0, #1
529CF6:  POP             {R4,R5,R7,PC}
