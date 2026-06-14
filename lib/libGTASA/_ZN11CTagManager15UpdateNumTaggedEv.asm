; =========================================================
; Game Engine Function: _ZN11CTagManager15UpdateNumTaggedEv
; Address            : 0x361FA0 - 0x361FE2
; =========================================================

361FA0:  LDR             R0, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x361FAA)
361FA2:  MOVS            R2, #0
361FA4:  LDR             R1, =(_ZN11CTagManager12ms_numTaggedE_ptr - 0x361FAC)
361FA6:  ADD             R0, PC; _ZN11CTagManager10ms_numTagsE_ptr
361FA8:  ADD             R1, PC; _ZN11CTagManager12ms_numTaggedE_ptr
361FAA:  LDR             R0, [R0]; CTagManager::ms_numTags ...
361FAC:  LDR             R1, [R1]; CTagManager::ms_numTagged ...
361FAE:  LDR             R0, [R0]; CTagManager::ms_numTags
361FB0:  STR             R2, [R1]; CTagManager::ms_numTagged
361FB2:  CMP             R0, #0
361FB4:  IT EQ
361FB6:  BXEQ            LR
361FB8:  LDR             R2, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x361FC2)
361FBA:  MOVS            R1, #0
361FBC:  LDR             R3, =(_ZN11CTagManager12ms_numTaggedE_ptr - 0x361FC4)
361FBE:  ADD             R2, PC; _ZN11CTagManager10ms_tagDescE_ptr
361FC0:  ADD             R3, PC; _ZN11CTagManager12ms_numTaggedE_ptr
361FC2:  LDR             R2, [R2]; CTagManager::ms_tagDesc ...
361FC4:  LDR.W           R12, [R3]; CTagManager::ms_numTagged ...
361FC8:  ADD.W           R3, R2, R0,LSL#3
361FCC:  SUBS            R0, #1
361FCE:  LDRB.W          R3, [R3,#-4]
361FD2:  CMP             R3, #0xE5
361FD4:  ITT CS
361FD6:  ADDCS           R1, #1
361FD8:  STRCS.W         R1, [R12]; CTagManager::ms_numTagged
361FDC:  CMP             R0, #0
361FDE:  BNE             loc_361FC8
361FE0:  BX              LR
