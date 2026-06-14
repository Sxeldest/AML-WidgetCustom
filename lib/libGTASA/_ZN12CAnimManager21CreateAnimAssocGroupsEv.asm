; =========================================================
; Game Engine Function: _ZN12CAnimManager21CreateAnimAssocGroupsEv
; Address            : 0x38E638 - 0x38E7C6
; =========================================================

38E638:  PUSH            {R4-R7,LR}
38E63A:  ADD             R7, SP, #0xC
38E63C:  PUSH.W          {R8-R11}
38E640:  SUB             SP, SP, #0x34
38E642:  LDR             R0, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x38E648)
38E644:  ADD             R0, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
38E646:  LDR             R0, [R0]; CAnimManager::ms_numAnimAssocDefinitions ...
38E648:  LDR             R0, [R0]; CAnimManager::ms_numAnimAssocDefinitions
38E64A:  CMP             R0, #1
38E64C:  BLT.W           loc_38E7BE
38E650:  LDR             R0, =(_ZN12CAnimManager16ms_numAnimBlocksE_ptr - 0x38E65A)
38E652:  MOVS            R4, #0
38E654:  LDR             R1, =(_ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr - 0x38E65C)
38E656:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimBlocksE_ptr
38E658:  ADD             R1, PC; _ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr
38E65A:  LDR             R0, [R0]; CAnimManager::ms_numAnimBlocks ...
38E65C:  STR             R0, [SP,#0x50+var_20]
38E65E:  LDR             R0, [R1]; "default" ...
38E660:  STR             R0, [SP,#0x50+var_24]
38E662:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38E668)
38E664:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38E666:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
38E668:  STR             R0, [SP,#0x50+var_28]
38E66A:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x38E670)
38E66C:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
38E66E:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
38E670:  STR             R0, [SP,#0x50+var_2C]
38E672:  LDR             R0, =(_ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr - 0x38E678)
38E674:  ADD             R0, PC; _ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr
38E676:  LDR             R0, [R0]; "default" ...
38E678:  STR             R0, [SP,#0x50+var_34]
38E67A:  LDR             R0, =(_ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr - 0x38E680)
38E67C:  ADD             R0, PC; _ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr
38E67E:  LDR             R0, [R0]; "default" ...
38E680:  STR             R0, [SP,#0x50+var_38]
38E682:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x38E688)
38E684:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
38E686:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
38E688:  STR             R0, [SP,#0x50+var_3C]
38E68A:  LDR             R0, =(_Z26AtomicRemoveAnimFromSkinCBP8RpAtomicPv_ptr - 0x38E690)
38E68C:  ADD             R0, PC; _Z26AtomicRemoveAnimFromSkinCBP8RpAtomicPv_ptr
38E68E:  LDR             R0, [R0]; AtomicRemoveAnimFromSkinCB(RpAtomic *,void *)
38E690:  STR             R0, [SP,#0x50+var_4C]
38E692:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x38E698)
38E694:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
38E696:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
38E698:  STR             R0, [SP,#0x50+var_40]
38E69A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x38E6A0)
38E69C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
38E69E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
38E6A0:  STR             R0, [SP,#0x50+var_44]
38E6A2:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x38E6A8)
38E6A4:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
38E6A6:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
38E6A8:  STR             R0, [SP,#0x50+var_48]
38E6AA:  LDR             R0, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x38E6B0)
38E6AC:  ADD             R0, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
38E6AE:  LDR.W           R10, [R0]; CAnimManager::ms_numAnimAssocDefinitions ...
38E6B2:  LDR             R0, [SP,#0x50+var_20]
38E6B4:  LDR.W           R8, [R0]
38E6B8:  CMP.W           R8, #1
38E6BC:  BLT             loc_38E7B2
38E6BE:  ADD.W           R11, R4, R4,LSL#1
38E6C2:  LDR             R0, [SP,#0x50+var_24]
38E6C4:  MOV.W           R9, #0
38E6C8:  LDR             R5, [SP,#0x50+var_28]
38E6CA:  ADD.W           R0, R0, R11,LSL#4
38E6CE:  ADD.W           R6, R0, #0x10
38E6D2:  MOV             R0, R5; char *
38E6D4:  MOV             R1, R6; char *
38E6D6:  BLX             strcasecmp
38E6DA:  CBZ             R0, loc_38E6E8
38E6DC:  ADD.W           R9, R9, #1
38E6E0:  ADDS            R5, #0x20 ; ' '
38E6E2:  CMP             R9, R8
38E6E4:  BLT             loc_38E6D2
38E6E6:  B               loc_38E7B2
38E6E8:  CMP             R5, #0
38E6EA:  ITT NE
38E6EC:  LDRBNE          R0, [R5,#0x10]
38E6EE:  CMPNE           R0, #0
38E6F0:  BEQ             loc_38E7B2
38E6F2:  LDR             R0, [SP,#0x50+var_2C]
38E6F4:  ADD.W           R8, R4, R4,LSL#2
38E6F8:  LDR             R0, [R0]
38E6FA:  ADD.W           R1, R0, R8,LSL#2
38E6FE:  LDR             R1, [R1,#4]
38E700:  CMP             R1, #0
38E702:  BNE             loc_38E7B2
38E704:  LDR             R1, [SP,#0x50+var_34]
38E706:  ADD.W           R1, R1, R11,LSL#4
38E70A:  LDR             R1, [R1,#0x20]
38E70C:  ADDS            R2, R1, #1
38E70E:  BEQ             loc_38E728
38E710:  LDR             R0, [SP,#0x50+var_44]
38E712:  LDR.W           R0, [R0,R1,LSL#2]
38E716:  LDR             R1, [R0]
38E718:  LDR             R1, [R1,#0x2C]
38E71A:  BLX             R1
38E71C:  MOV             R5, R0
38E71E:  BLX             j__Z20RpAnimBlendClumpInitP7RpClump; RpAnimBlendClumpInit(RpClump *)
38E722:  LDR             R0, [SP,#0x50+var_48]
38E724:  LDR             R0, [R0]
38E726:  B               loc_38E72A
38E728:  MOVS            R5, #0
38E72A:  ADD.W           R0, R0, R8,LSL#2; int
38E72E:  LDR.W           R9, [SP,#0x50+var_40]
38E732:  MOV             R2, R5; int
38E734:  STR             R4, [R0,#0x10]
38E736:  LDR             R1, [SP,#0x50+var_38]
38E738:  ADD.W           R11, R1, R11,LSL#4
38E73C:  LDR.W           R1, [R11,#0x2C]!
38E740:  LDR             R1, [R1]
38E742:  STR             R1, [R0,#0xC]
38E744:  LDRD.W          R1, R3, [R11,#-8]; int
38E748:  STR             R1, [SP,#0x50+var_50]; int
38E74A:  MOV             R1, R6; this
38E74C:  STR             R5, [SP,#0x50+var_30]
38E74E:  BLX             j__ZN20CAnimBlendAssocGroup18CreateAssociationsEPKcP7RpClumpPS1_i; CAnimBlendAssocGroup::CreateAssociations(char const*,RpClump *,char const**,int)
38E752:  LDR             R0, [SP,#0x50+var_3C]
38E754:  LDR             R0, [R0]
38E756:  ADD.W           R1, R0, R8,LSL#2
38E75A:  LDR             R1, [R1,#8]
38E75C:  CMP             R1, #0
38E75E:  BEQ             loc_38E78E
38E760:  MOVS            R6, #0
38E762:  LDR.W           R5, [R11]
38E766:  ADD.W           R0, R0, R8,LSL#2; this
38E76A:  LDR.W           R1, [R5,R6,LSL#3]; unsigned int
38E76E:  BLX             j__ZN20CAnimBlendAssocGroup12GetAnimationEj; CAnimBlendAssocGroup::GetAnimation(uint)
38E772:  ADD.W           R2, R5, R6,LSL#3
38E776:  LDRH            R1, [R0,#0xA]
38E778:  ADDS            R6, #1
38E77A:  LDR             R2, [R2,#4]
38E77C:  ORRS            R1, R2
38E77E:  STRH            R1, [R0,#0xA]
38E780:  LDR.W           R0, [R9]
38E784:  ADD.W           R1, R0, R8,LSL#2
38E788:  LDR             R1, [R1,#8]
38E78A:  CMP             R6, R1
38E78C:  BCC             loc_38E762
38E78E:  LDR             R5, [SP,#0x50+var_30]
38E790:  CBZ             R5, loc_38E7B2
38E792:  MOV             R0, R5
38E794:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
38E798:  CBZ             R0, loc_38E7AC
38E79A:  LDR             R0, [R0,#0x18]
38E79C:  BLX             j_RpSkinGeometryGetSkin
38E7A0:  CBZ             R0, loc_38E7AC
38E7A2:  LDR             R1, [SP,#0x50+var_4C]
38E7A4:  MOV             R0, R5
38E7A6:  MOVS            R2, #0
38E7A8:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
38E7AC:  MOV             R0, R5
38E7AE:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
38E7B2:  LDR.W           R0, [R10]; CAnimManager::ms_numAnimAssocDefinitions
38E7B6:  ADDS            R4, #1
38E7B8:  CMP             R4, R0
38E7BA:  BLT.W           loc_38E6B2
38E7BE:  ADD             SP, SP, #0x34 ; '4'
38E7C0:  POP.W           {R8-R11}
38E7C4:  POP             {R4-R7,PC}
