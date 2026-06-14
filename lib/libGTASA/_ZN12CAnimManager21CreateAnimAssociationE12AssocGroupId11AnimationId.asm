; =========================================================
; Game Engine Function: _ZN12CAnimManager21CreateAnimAssociationE12AssocGroupId11AnimationId
; Address            : 0x38DFD0 - 0x38DFE4
; =========================================================

38DFD0:  LDR             R2, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x38DFDA)
38DFD2:  ADD.W           R0, R0, R0,LSL#2
38DFD6:  ADD             R2, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
38DFD8:  LDR             R2, [R2]; CAnimManager::ms_aAnimAssocGroups ...
38DFDA:  LDR             R2, [R2]; CAnimManager::ms_aAnimAssocGroups
38DFDC:  ADD.W           R0, R2, R0,LSL#2; this
38DFE0:  B.W             sub_18E870
