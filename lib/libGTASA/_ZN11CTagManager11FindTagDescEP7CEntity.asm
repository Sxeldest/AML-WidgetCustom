; =========================================================
; Game Engine Function: _ZN11CTagManager11FindTagDescEP7CEntity
; Address            : 0x361DF0 - 0x361E1A
; =========================================================

361DF0:  MOV             R1, R0
361DF2:  LDR             R0, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x361DFA)
361DF4:  LDR             R3, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x361DFC)
361DF6:  ADD             R0, PC; _ZN11CTagManager10ms_numTagsE_ptr
361DF8:  ADD             R3, PC; _ZN11CTagManager10ms_tagDescE_ptr
361DFA:  LDR             R0, [R0]; CTagManager::ms_numTags ...
361DFC:  LDR             R2, [R0]; CTagManager::ms_numTags
361DFE:  LDR             R0, [R3]; CTagManager::ms_tagDesc ...
361E00:  ADD.W           R0, R0, R2,LSL#3
361E04:  CMP             R2, #0
361E06:  ITT EQ
361E08:  MOVEQ           R0, #0
361E0A:  BXEQ            LR
361E0C:  LDR.W           R3, [R0,#-8]!
361E10:  SUBS            R2, #1
361E12:  CMP             R3, R1
361E14:  IT EQ
361E16:  BXEQ            LR
361E18:  B               loc_361E04
