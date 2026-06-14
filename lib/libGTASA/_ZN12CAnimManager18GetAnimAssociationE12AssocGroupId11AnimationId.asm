; =========================================================
; Game Engine Function: _ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId
; Address            : 0x38DFE8 - 0x38DFFC
; =========================================================

38DFE8:  LDR             R2, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x38DFF2)
38DFEA:  ADD.W           R0, R0, R0,LSL#2
38DFEE:  ADD             R2, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
38DFF0:  LDR             R2, [R2]; CAnimManager::ms_aAnimAssocGroups ...
38DFF2:  LDR             R2, [R2]; CAnimManager::ms_aAnimAssocGroups
38DFF4:  ADD.W           R0, R2, R0,LSL#2; this
38DFF8:  B.W             sub_19F8AC
