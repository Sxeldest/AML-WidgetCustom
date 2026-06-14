; =========================================================
; Game Engine Function: _ZN11CTagManager18ShutdownForRestartEv
; Address            : 0x361D74 - 0x361D9E
; =========================================================

361D74:  LDR             R0, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x361D7A)
361D76:  ADD             R0, PC; _ZN11CTagManager10ms_numTagsE_ptr
361D78:  LDR             R0, [R0]; CTagManager::ms_numTags ...
361D7A:  LDR             R0, [R0]; CTagManager::ms_numTags
361D7C:  CBZ             R0, loc_361D92
361D7E:  LDR             R1, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x361D86)
361D80:  MOVS            R2, #0
361D82:  ADD             R1, PC; _ZN11CTagManager10ms_tagDescE_ptr
361D84:  LDR             R1, [R1]; CTagManager::ms_tagDesc ...
361D86:  ADD.W           R3, R1, R0,LSL#3
361D8A:  SUBS            R0, #1
361D8C:  STRB.W          R2, [R3,#-4]
361D90:  BNE             loc_361D86
361D92:  LDR             R0, =(_ZN11CTagManager12ms_numTaggedE_ptr - 0x361D9A)
361D94:  MOVS            R1, #0
361D96:  ADD             R0, PC; _ZN11CTagManager12ms_numTaggedE_ptr
361D98:  LDR             R0, [R0]; CTagManager::ms_numTagged ...
361D9A:  STR             R1, [R0]; CTagManager::ms_numTagged
361D9C:  BX              LR
