; =========================================================
; Game Engine Function: _ZN11CTagManager10ResetAlphaEP7CEntity
; Address            : 0x362044 - 0x362072
; =========================================================

362044:  MOV             R1, R0
362046:  LDR             R0, [R1,#0x18]
362048:  CMP             R0, #0
36204A:  IT EQ
36204C:  BXEQ            LR
36204E:  LDR             R2, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x362056)
362050:  LDR             R3, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x362058)
362052:  ADD             R2, PC; _ZN11CTagManager10ms_numTagsE_ptr
362054:  ADD             R3, PC; _ZN11CTagManager10ms_tagDescE_ptr
362056:  LDR             R2, [R2]; CTagManager::ms_numTags ...
362058:  LDR             R3, [R3]; CTagManager::ms_tagDesc ...
36205A:  LDR             R2, [R2]; CTagManager::ms_numTags
36205C:  ADD.W           R2, R3, R2,LSL#3
362060:  ADDS            R2, #4
362062:  LDR.W           R3, [R2,#-0xC]
362066:  SUBS            R2, #8
362068:  CMP             R3, R1
36206A:  BNE             loc_362062
36206C:  LDRB            R1, [R2]
36206E:  B.W             j_j__ZN18CVisibilityPlugins12SetUserValueEP8RpAtomict; j_CVisibilityPlugins::SetUserValue(RpAtomic *,ushort)
