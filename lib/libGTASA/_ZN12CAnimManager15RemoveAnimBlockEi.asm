; =========================================================
; Game Engine Function: _ZN12CAnimManager15RemoveAnimBlockEi
; Address            : 0x38F7F0 - 0x38F894
; =========================================================

38F7F0:  PUSH            {R4-R7,LR}
38F7F2:  ADD             R7, SP, #0xC
38F7F4:  PUSH.W          {R8-R10}
38F7F8:  MOV             R8, R0
38F7FA:  LDR             R0, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x38F800)
38F7FC:  ADD             R0, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
38F7FE:  LDR             R0, [R0]; CAnimManager::ms_numAnimAssocDefinitions ...
38F800:  LDR             R0, [R0]; CAnimManager::ms_numAnimAssocDefinitions
38F802:  CMP             R0, #1
38F804:  BLT             loc_38F83C
38F806:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38F810)
38F808:  MOVS            R6, #0
38F80A:  MOVS            R5, #0
38F80C:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38F80E:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
38F810:  ADD.W           R10, R1, R8,LSL#5
38F814:  LDR             R1, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x38F81A)
38F816:  ADD             R1, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
38F818:  LDR             R4, [R1]; CAnimManager::ms_aAnimAssocGroups ...
38F81A:  LDR             R1, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x38F820)
38F81C:  ADD             R1, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
38F81E:  LDR.W           R9, [R1]; CAnimManager::ms_numAnimAssocDefinitions ...
38F822:  LDR             R1, [R4]; CAnimManager::ms_aAnimAssocGroups
38F824:  LDR             R2, [R1,R6]
38F826:  CMP             R2, R10
38F828:  BNE             loc_38F834
38F82A:  ADDS            R0, R1, R6; this
38F82C:  BLX             j__ZN20CAnimBlendAssocGroup19DestroyAssociationsEv; CAnimBlendAssocGroup::DestroyAssociations(void)
38F830:  LDR.W           R0, [R9]; CAnimManager::ms_numAnimAssocDefinitions
38F834:  ADDS            R5, #1
38F836:  ADDS            R6, #0x14
38F838:  CMP             R5, R0
38F83A:  BLT             loc_38F822
38F83C:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38F842)
38F83E:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38F840:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
38F842:  ADD.W           R9, R0, R8,LSL#5
38F846:  LDR.W           R0, [R9,#0x18]!
38F84A:  CMP             R0, #1
38F84C:  BLT             loc_38F87E
38F84E:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38F856)
38F850:  MOVS            R6, #0
38F852:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38F854:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
38F856:  ADD.W           R0, R0, R8,LSL#5
38F85A:  ADD.W           R5, R0, #0x14
38F85E:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38F864)
38F860:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38F862:  LDR             R4, [R0]; CAnimManager::ms_aAnimations ...
38F864:  LDR             R0, [R5]
38F866:  ADD             R0, R6
38F868:  ADD.W           R0, R0, R0,LSL#1
38F86C:  ADD.W           R0, R4, R0,LSL#3; this
38F870:  BLX             j__ZN19CAnimBlendHierarchy8ShutdownEv; CAnimBlendHierarchy::Shutdown(void)
38F874:  LDR.W           R0, [R9]
38F878:  ADDS            R6, #1
38F87A:  CMP             R6, R0
38F87C:  BLT             loc_38F864
38F87E:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38F886)
38F880:  MOVS            R1, #0
38F882:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38F884:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
38F886:  ADD.W           R0, R0, R8,LSL#5
38F88A:  STRH            R1, [R0,#0x12]
38F88C:  STRB            R1, [R0,#0x10]
38F88E:  POP.W           {R8-R10}
38F892:  POP             {R4-R7,PC}
