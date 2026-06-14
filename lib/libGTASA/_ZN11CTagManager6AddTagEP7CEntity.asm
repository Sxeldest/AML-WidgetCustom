; =========================================================
; Game Engine Function: _ZN11CTagManager6AddTagEP7CEntity
; Address            : 0x361DC8 - 0x361DE8
; =========================================================

361DC8:  LDR             R1, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x361DD0)
361DCA:  LDR             R2, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x361DD2)
361DCC:  ADD             R1, PC; _ZN11CTagManager10ms_numTagsE_ptr
361DCE:  ADD             R2, PC; _ZN11CTagManager10ms_tagDescE_ptr
361DD0:  LDR             R1, [R1]; CTagManager::ms_numTags ...
361DD2:  LDR             R2, [R2]; CTagManager::ms_tagDesc ...
361DD4:  LDR             R3, [R1]; CTagManager::ms_numTags
361DD6:  STR.W           R0, [R2,R3,LSL#3]
361DDA:  ADD.W           R0, R2, R3,LSL#3
361DDE:  MOVS            R2, #0
361DE0:  STRB            R2, [R0,#4]
361DE2:  ADDS            R0, R3, #1
361DE4:  STR             R0, [R1]; CTagManager::ms_numTags
361DE6:  BX              LR
