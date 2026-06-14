; =========================================================
; Game Engine Function: _ZN29CTaskSimplePlayHandSignalAnim9StartAnimEP4CPed
; Address            : 0x4D7674 - 0x4D7874
; =========================================================

4D7674:  PUSH            {R4-R7,LR}
4D7676:  ADD             R7, SP, #0xC
4D7678:  PUSH.W          {R11}
4D767C:  MOV             R5, R1
4D767E:  MOV             R4, R0
4D7680:  BLX             rand
4D7684:  UXTH            R0, R0
4D7686:  VLDR            S2, =0.000015259
4D768A:  VMOV            S0, R0
4D768E:  VMOV.F32        S4, #5.0
4D7692:  VCVT.F32.S32    S0, S0
4D7696:  VMUL.F32        S0, S0, S2
4D769A:  VMUL.F32        S0, S0, S4
4D769E:  VCVT.S32.F32    S0, S0
4D76A2:  VMOV            R0, S0
4D76A6:  ADD.W           R6, R0, #0x140
4D76AA:  MOV             R0, R5; this
4D76AC:  BLX             j__ZN4CPed29GetEntityThatThisPedIsHoldingEv; CPed::GetEntityThatThisPedIsHolding(void)
4D76B0:  CBNZ            R0, loc_4D76D6
4D76B2:  LDR             R0, =(g_ikChainMan_ptr - 0x4D76BC)
4D76B4:  MOVS            R1, #0; int
4D76B6:  MOV             R2, R5; CPed *
4D76B8:  ADD             R0, PC; g_ikChainMan_ptr
4D76BA:  LDR             R0, [R0]; g_ikChainMan ; this
4D76BC:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
4D76C0:  CBNZ            R0, loc_4D76D6
4D76C2:  LDRSB.W         R0, [R5,#0x71C]
4D76C6:  RSB.W           R0, R0, R0,LSL#3
4D76CA:  ADD.W           R0, R5, R0,LSL#2
4D76CE:  LDR.W           R0, [R0,#0x5A4]
4D76D2:  CMP             R0, #0
4D76D4:  BEQ             loc_4D776E
4D76D6:  LDR             R3, [R4,#0x14]
4D76D8:  MOVS            R1, #0x4E ; 'N'; int
4D76DA:  LDR             R0, [R5,#0x18]; int
4D76DC:  MOV             R2, R6; unsigned int
4D76DE:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4D76E2:  LDR             R1, =(_ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D76EC)
4D76E4:  MOV             R2, R4; void *
4D76E6:  STR             R0, [R4,#8]
4D76E8:  ADD             R1, PC; _ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr
4D76EA:  LDR             R1, [R1]; CTaskSimpleAnim::FinishRunAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D76EC:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D76F0:  LDR             R0, [R4,#0x10]
4D76F2:  ADDS            R0, #1
4D76F4:  BEQ             loc_4D7768
4D76F6:  MOV.W           R0, #(elf_hash_bucket+0x98); this
4D76FA:  LDRB            R6, [R4,#0x18]
4D76FC:  BLX             j__ZN7CObjectnwEj; CObject::operator new(uint)
4D7700:  CBZ             R6, loc_4D7732
4D7702:  MOV.W           R1, #0x18C; int
4D7706:  MOV             R2, R5; CPed *
4D7708:  MOVS            R3, #1; bool
4D770A:  BLX             j__ZN11CHandObjectC2EiP4CPedb; CHandObject::CHandObject(int,CPed *,bool)
4D770E:  CMP             R0, #0
4D7710:  STR             R0, [R4,#0x1C]
4D7712:  BEQ             loc_4D7768
4D7714:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
4D7718:  LDR             R1, [R4,#0x10]
4D771A:  MOVS            R0, #0x4F ; 'O'
4D771C:  BLX             j__ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId; CAnimManager::GetAnimAssociation(AssocGroupId,AnimationId)
4D7720:  LDR             R2, [R4,#0x1C]
4D7722:  LDR             R1, [R0,#0x10]
4D7724:  LDR             R0, [R2,#0x18]
4D7726:  MOVS            R2, #0
4D7728:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClumpP19CAnimBlendHierarchyi; CAnimManager::AddAnimation(RpClump *,CAnimBlendHierarchy *,int)
4D772C:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x4D7732)
4D772E:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
4D7730:  B               loc_4D7760
4D7732:  MOV.W           R1, #0x18A; int
4D7736:  MOV             R2, R5; CPed *
4D7738:  MOVS            R3, #1; bool
4D773A:  BLX             j__ZN11CHandObjectC2EiP4CPedb; CHandObject::CHandObject(int,CPed *,bool)
4D773E:  CMP             R0, #0
4D7740:  STR             R0, [R4,#0x1C]
4D7742:  BEQ             loc_4D7768
4D7744:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
4D7748:  LDR             R1, [R4,#0x10]
4D774A:  MOVS            R0, #0x4F ; 'O'
4D774C:  BLX             j__ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId; CAnimManager::GetAnimAssociation(AssocGroupId,AnimationId)
4D7750:  LDR             R2, [R4,#0x1C]
4D7752:  LDR             R1, [R0,#0x10]
4D7754:  LDR             R0, [R2,#0x18]
4D7756:  MOVS            R2, #0
4D7758:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClumpP19CAnimBlendHierarchyi; CAnimManager::AddAnimation(RpClump *,CAnimBlendHierarchy *,int)
4D775C:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x4D7762)
4D775E:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
4D7760:  LDR             R0, [R0]; CObject::nNoTempObjects ...
4D7762:  LDRH            R1, [R0]; CObject::nNoTempObjects
4D7764:  ADDS            R1, #1
4D7766:  STRH            R1, [R0]; CObject::nNoTempObjects
4D7768:  POP.W           {R11}
4D776C:  POP             {R4-R7,PC}
4D776E:  LDR             R3, [R4,#0x14]
4D7770:  MOVS            R1, #0x4D ; 'M'; int
4D7772:  LDR             R0, [R5,#0x18]; int
4D7774:  MOV             R2, R6; unsigned int
4D7776:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4D777A:  LDR             R1, =(_ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D7784)
4D777C:  MOV             R2, R4; void *
4D777E:  STR             R0, [R4,#8]
4D7780:  ADD             R1, PC; _ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr
4D7782:  LDR             R1, [R1]; CTaskSimpleAnim::FinishRunAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D7784:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D7788:  LDR             R0, [R4,#0x10]
4D778A:  ADDS            R0, #1
4D778C:  BEQ             loc_4D7768
4D778E:  MOV.W           R0, #(elf_hash_bucket+0x98); this
4D7792:  LDRB            R6, [R4,#0x18]
4D7794:  BLX             j__ZN7CObjectnwEj; CObject::operator new(uint)
4D7798:  CBZ             R6, loc_4D77CA
4D779A:  MOV.W           R1, #0x18C; int
4D779E:  MOV             R2, R5; CPed *
4D77A0:  MOVS            R3, #1; bool
4D77A2:  BLX             j__ZN11CHandObjectC2EiP4CPedb; CHandObject::CHandObject(int,CPed *,bool)
4D77A6:  CMP             R0, #0
4D77A8:  STR             R0, [R4,#0x1C]
4D77AA:  BEQ             loc_4D7800
4D77AC:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
4D77B0:  LDR             R1, [R4,#0x10]
4D77B2:  MOVS            R0, #0x4F ; 'O'
4D77B4:  BLX             j__ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId; CAnimManager::GetAnimAssociation(AssocGroupId,AnimationId)
4D77B8:  LDR             R2, [R4,#0x1C]
4D77BA:  LDR             R1, [R0,#0x10]
4D77BC:  LDR             R0, [R2,#0x18]
4D77BE:  MOVS            R2, #0
4D77C0:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClumpP19CAnimBlendHierarchyi; CAnimManager::AddAnimation(RpClump *,CAnimBlendHierarchy *,int)
4D77C4:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x4D77CA)
4D77C6:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
4D77C8:  B               loc_4D77F8
4D77CA:  MOV.W           R1, #0x18A; int
4D77CE:  MOV             R2, R5; CPed *
4D77D0:  MOVS            R3, #1; bool
4D77D2:  BLX             j__ZN11CHandObjectC2EiP4CPedb; CHandObject::CHandObject(int,CPed *,bool)
4D77D6:  CMP             R0, #0
4D77D8:  STR             R0, [R4,#0x1C]
4D77DA:  BEQ             loc_4D7800
4D77DC:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
4D77E0:  LDR             R1, [R4,#0x10]
4D77E2:  MOVS            R0, #0x4F ; 'O'
4D77E4:  BLX             j__ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId; CAnimManager::GetAnimAssociation(AssocGroupId,AnimationId)
4D77E8:  LDR             R2, [R4,#0x1C]
4D77EA:  LDR             R1, [R0,#0x10]
4D77EC:  LDR             R0, [R2,#0x18]
4D77EE:  MOVS            R2, #0
4D77F0:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClumpP19CAnimBlendHierarchyi; CAnimManager::AddAnimation(RpClump *,CAnimBlendHierarchy *,int)
4D77F4:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x4D77FA)
4D77F6:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
4D77F8:  LDR             R0, [R0]; CObject::nNoTempObjects ...
4D77FA:  LDRH            R1, [R0]; CObject::nNoTempObjects
4D77FC:  ADDS            R1, #1; unsigned int
4D77FE:  STRH            R1, [R0]; CObject::nNoTempObjects
4D7800:  LDR             R0, [R4,#0x10]
4D7802:  ADDS            R0, #1
4D7804:  BEQ             loc_4D7768
4D7806:  MOV.W           R0, #(elf_hash_bucket+0x98); this
4D780A:  LDRB            R6, [R4,#0x18]
4D780C:  BLX             j__ZN7CObjectnwEj; CObject::operator new(uint)
4D7810:  CBZ             R6, loc_4D7842
4D7812:  MOVW            R1, #0x18D; int
4D7816:  MOV             R2, R5; CPed *
4D7818:  MOVS            R3, #0; bool
4D781A:  BLX             j__ZN11CHandObjectC2EiP4CPedb; CHandObject::CHandObject(int,CPed *,bool)
4D781E:  CMP             R0, #0
4D7820:  STR             R0, [R4,#0x20]
4D7822:  BEQ             loc_4D7768
4D7824:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
4D7828:  LDR             R1, [R4,#0x10]
4D782A:  MOVS            R0, #0x50 ; 'P'
4D782C:  BLX             j__ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId; CAnimManager::GetAnimAssociation(AssocGroupId,AnimationId)
4D7830:  LDR             R2, [R4,#0x20]
4D7832:  LDR             R1, [R0,#0x10]
4D7834:  LDR             R0, [R2,#0x18]
4D7836:  MOVS            R2, #0
4D7838:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClumpP19CAnimBlendHierarchyi; CAnimManager::AddAnimation(RpClump *,CAnimBlendHierarchy *,int)
4D783C:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x4D7842)
4D783E:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
4D7840:  B               loc_4D7760
4D7842:  MOVW            R1, #0x18B; int
4D7846:  MOV             R2, R5; CPed *
4D7848:  MOVS            R3, #0; bool
4D784A:  BLX             j__ZN11CHandObjectC2EiP4CPedb; CHandObject::CHandObject(int,CPed *,bool)
4D784E:  CMP             R0, #0
4D7850:  STR             R0, [R4,#0x20]
4D7852:  BEQ.W           loc_4D7768
4D7856:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
4D785A:  LDR             R1, [R4,#0x10]
4D785C:  MOVS            R0, #0x50 ; 'P'
4D785E:  BLX             j__ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId; CAnimManager::GetAnimAssociation(AssocGroupId,AnimationId)
4D7862:  LDR             R2, [R4,#0x20]
4D7864:  LDR             R1, [R0,#0x10]
4D7866:  LDR             R0, [R2,#0x18]
4D7868:  MOVS            R2, #0
4D786A:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClumpP19CAnimBlendHierarchyi; CAnimManager::AddAnimation(RpClump *,CAnimBlendHierarchy *,int)
4D786E:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x4D7874)
4D7870:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
4D7872:  B               loc_4D7760
