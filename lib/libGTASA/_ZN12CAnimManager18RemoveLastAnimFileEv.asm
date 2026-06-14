; =========================================================
; Game Engine Function: _ZN12CAnimManager18RemoveLastAnimFileEv
; Address            : 0x38F724 - 0x38F7C8
; =========================================================

38F724:  PUSH            {R4-R7,LR}
38F726:  ADD             R7, SP, #0xC
38F728:  PUSH.W          {R8}
38F72C:  LDR             R0, =(_ZN12CAnimManager16ms_numAnimBlocksE_ptr - 0x38F734)
38F72E:  LDR             R1, =(_ZN12CAnimManager16ms_numAnimationsE_ptr - 0x38F736)
38F730:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimBlocksE_ptr
38F732:  ADD             R1, PC; _ZN12CAnimManager16ms_numAnimationsE_ptr
38F734:  LDR             R2, [R0]; CAnimManager::ms_numAnimBlocks ...
38F736:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38F73E)
38F738:  LDR             R6, [R1]; CAnimManager::ms_numAnimations ...
38F73A:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38F73C:  LDR             R3, [R2]; CAnimManager::ms_numAnimBlocks
38F73E:  LDR             R1, [R0]; CAnimManager::ms_aAnimBlocks ...
38F740:  SUBS            R0, R3, #1
38F742:  STR             R0, [R2]; CAnimManager::ms_numAnimBlocks
38F744:  ADD.W           R2, R1, R0,LSL#5
38F748:  LDRD.W          R1, R2, [R2,#0x14]
38F74C:  CMP             R2, #1
38F74E:  STR             R1, [R6]; CAnimManager::ms_numAnimations
38F750:  BLT             loc_38F7B4
38F752:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38F75C)
38F754:  ADD.W           R1, R1, R1,LSL#1
38F758:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38F75A:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38F75C:  ADD.W           R0, R0, R1,LSL#3; this
38F760:  BLX             j__ZN19CAnimBlendHierarchy8ShutdownEv; CAnimBlendHierarchy::Shutdown(void)
38F764:  LDR             R0, =(_ZN12CAnimManager16ms_numAnimBlocksE_ptr - 0x38F76C)
38F766:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38F76E)
38F768:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimBlocksE_ptr
38F76A:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38F76C:  LDR             R0, [R0]; CAnimManager::ms_numAnimBlocks ...
38F76E:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
38F770:  LDR             R0, [R0]; CAnimManager::ms_numAnimBlocks
38F772:  ADD.W           R1, R1, R0,LSL#5
38F776:  LDR             R1, [R1,#0x18]
38F778:  CMP             R1, #2
38F77A:  BLT             loc_38F7B4
38F77C:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38F784)
38F77E:  MOVS            R4, #1
38F780:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38F782:  LDR             R5, [R1]; CAnimManager::ms_aAnimBlocks ...
38F784:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38F78A)
38F786:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38F788:  LDR.W           R8, [R1]; CAnimManager::ms_aAnimations ...
38F78C:  LDR             R1, =(_ZN12CAnimManager16ms_numAnimBlocksE_ptr - 0x38F792)
38F78E:  ADD             R1, PC; _ZN12CAnimManager16ms_numAnimBlocksE_ptr
38F790:  LDR             R6, [R1]; CAnimManager::ms_numAnimBlocks ...
38F792:  ADD.W           R0, R5, R0,LSL#5
38F796:  LDR             R0, [R0,#0x14]
38F798:  ADD             R0, R4
38F79A:  ADD.W           R0, R0, R0,LSL#1
38F79E:  ADD.W           R0, R8, R0,LSL#3; this
38F7A2:  BLX             j__ZN19CAnimBlendHierarchy8ShutdownEv; CAnimBlendHierarchy::Shutdown(void)
38F7A6:  LDR             R0, [R6]; CAnimManager::ms_numAnimBlocks
38F7A8:  ADDS            R4, #1
38F7AA:  ADD.W           R1, R5, R0,LSL#5
38F7AE:  LDR             R1, [R1,#0x18]
38F7B0:  CMP             R4, R1
38F7B2:  BLT             loc_38F792
38F7B4:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38F7BA)
38F7B6:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38F7B8:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
38F7BA:  ADD.W           R0, R1, R0,LSL#5
38F7BE:  MOVS            R1, #0
38F7C0:  STRB            R1, [R0,#0x10]
38F7C2:  POP.W           {R8}
38F7C6:  POP             {R4-R7,PC}
