; =========================================================
; Game Engine Function: _ZN11CTagManager8GetAlphaEP7CEntity
; Address            : 0x361FF4 - 0x36202E
; =========================================================

361FF4:  LDR             R1, [R0,#0x18]
361FF6:  CBZ             R1, loc_36200A
361FF8:  PUSH            {R7,LR}
361FFA:  MOV             R7, SP
361FFC:  MOV             R0, R1
361FFE:  BLX             j__ZN18CVisibilityPlugins12GetUserValueEP8RpAtomic; CVisibilityPlugins::GetUserValue(RpAtomic *)
362002:  POP.W           {R7,LR}
362006:  UXTB            R0, R0
362008:  BX              LR
36200A:  LDR             R1, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x362012)
36200C:  LDR             R2, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x362014)
36200E:  ADD             R1, PC; _ZN11CTagManager10ms_numTagsE_ptr
362010:  ADD             R2, PC; _ZN11CTagManager10ms_tagDescE_ptr
362012:  LDR             R1, [R1]; CTagManager::ms_numTags ...
362014:  LDR             R2, [R2]; CTagManager::ms_tagDesc ...
362016:  LDR             R1, [R1]; CTagManager::ms_numTags
362018:  ADD.W           R1, R2, R1,LSL#3
36201C:  ADDS            R1, #4
36201E:  LDR.W           R2, [R1,#-0xC]
362022:  SUBS            R1, #8
362024:  CMP             R2, R0
362026:  BNE             loc_36201E
362028:  LDRB            R0, [R1]
36202A:  UXTB            R0, R0
36202C:  BX              LR
