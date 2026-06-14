; =========================================================
; Game Engine Function: _ZN11CTagManager8SetAlphaEP7CEntityh
; Address            : 0x361E74 - 0x361F66
; =========================================================

361E74:  PUSH            {R4-R7,LR}
361E76:  ADD             R7, SP, #0xC
361E78:  PUSH.W          {R11}
361E7C:  MOV             R5, R0
361E7E:  MOV             R6, R1
361E80:  LDR             R0, [R5,#0x18]
361E82:  CMP             R0, #0
361E84:  ITT NE
361E86:  MOVNE           R1, R6
361E88:  BLXNE           j__ZN18CVisibilityPlugins12SetUserValueEP8RpAtomict; CVisibilityPlugins::SetUserValue(RpAtomic *,ushort)
361E8C:  LDR             R0, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x361E94)
361E8E:  LDR             R1, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x361E96)
361E90:  ADD             R0, PC; _ZN11CTagManager10ms_numTagsE_ptr
361E92:  ADD             R1, PC; _ZN11CTagManager10ms_tagDescE_ptr
361E94:  LDR             R0, [R0]; CTagManager::ms_numTags ...
361E96:  LDR             R4, [R0]; CTagManager::ms_numTags
361E98:  LDR             R0, [R1]; CTagManager::ms_tagDesc ...
361E9A:  ADD.W           R1, R0, R4,LSL#3
361E9E:  MOV             R0, R4
361EA0:  CBZ             R0, loc_361F0E
361EA2:  LDR.W           R2, [R1,#-8]!
361EA6:  SUBS            R0, #1
361EA8:  CMP             R2, R5
361EAA:  BNE             loc_361EA0
361EAC:  CMP             R6, #0xE5
361EAE:  BCC             loc_361F14
361EB0:  LDR             R0, =(_ZN11CTagManager12ms_numTaggedE_ptr - 0x361EBA)
361EB2:  CMP             R4, #0
361EB4:  LDRB            R2, [R1,#4]
361EB6:  ADD             R0, PC; _ZN11CTagManager12ms_numTaggedE_ptr
361EB8:  STRB            R6, [R1,#4]
361EBA:  MOV.W           R1, #0
361EBE:  LDR             R0, [R0]; CTagManager::ms_numTagged ...
361EC0:  STR             R1, [R0]; CTagManager::ms_numTagged
361EC2:  BEQ             loc_361EEA
361EC4:  LDR             R0, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x361ECC)
361EC6:  MOVS            R1, #0
361EC8:  ADD             R0, PC; _ZN11CTagManager10ms_tagDescE_ptr
361ECA:  LDR             R3, [R0]; CTagManager::ms_tagDesc ...
361ECC:  LDR             R0, =(_ZN11CTagManager12ms_numTaggedE_ptr - 0x361ED2)
361ECE:  ADD             R0, PC; _ZN11CTagManager12ms_numTaggedE_ptr
361ED0:  LDR             R5, [R0]; CTagManager::ms_numTagged ...
361ED2:  MOV             R0, R4
361ED4:  ADD.W           R6, R3, R0,LSL#3
361ED8:  SUBS            R0, #1
361EDA:  LDRB.W          R6, [R6,#-4]
361EDE:  CMP             R6, #0xE5
361EE0:  ITT CS
361EE2:  ADDCS           R1, #1
361EE4:  STRCS           R1, [R5]; CTagManager::ms_numTagged
361EE6:  CMP             R0, #0
361EE8:  BNE             loc_361ED4
361EEA:  CMP             R2, #0xE4
361EEC:  BHI             loc_361F4A
361EEE:  LDR             R0, =(TheCamera_ptr - 0x361EF4)
361EF0:  ADD             R0, PC; TheCamera_ptr
361EF2:  LDR             R0, [R0]; TheCamera
361EF4:  LDRB.W          R0, [R0,#(byte_951FE3 - 0x951FA8)]
361EF8:  CBNZ            R0, loc_361F4A
361EFA:  CMP             R1, R4
361EFC:  BNE             loc_361F50
361EFE:  ADR             R0, aTagAll; "TAG_ALL"
361F00:  MOV.W           R1, #0xFFFFFFFF
361F04:  MOVW            R2, #0x1388
361F08:  MOV.W           R3, #0xFFFFFFFF
361F0C:  B               loc_361F5A
361F0E:  MOVS            R1, #0
361F10:  CMP             R6, #0xE5
361F12:  BCS             loc_361EB0
361F14:  LDR             R0, =(_ZN11CTagManager12ms_numTaggedE_ptr - 0x361F22)
361F16:  CMP             R4, #0
361F18:  STRB            R6, [R1,#4]
361F1A:  MOV.W           R1, #0
361F1E:  ADD             R0, PC; _ZN11CTagManager12ms_numTaggedE_ptr
361F20:  LDR             R0, [R0]; CTagManager::ms_numTagged ...
361F22:  STR             R1, [R0]; CTagManager::ms_numTagged
361F24:  BEQ             loc_361F4A
361F26:  LDR             R0, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x361F2E)
361F28:  MOVS            R1, #0
361F2A:  ADD             R0, PC; _ZN11CTagManager10ms_tagDescE_ptr
361F2C:  LDR             R2, [R0]; CTagManager::ms_tagDesc ...
361F2E:  LDR             R0, =(_ZN11CTagManager12ms_numTaggedE_ptr - 0x361F34)
361F30:  ADD             R0, PC; _ZN11CTagManager12ms_numTaggedE_ptr
361F32:  LDR             R3, [R0]; CTagManager::ms_numTagged ...
361F34:  ADD.W           R0, R2, R4,LSL#3
361F38:  SUBS            R4, #1
361F3A:  LDRB.W          R0, [R0,#-4]
361F3E:  CMP             R0, #0xE5
361F40:  ITT CS
361F42:  ADDCS           R1, #1
361F44:  STRCS           R1, [R3]; CTagManager::ms_numTagged
361F46:  CMP             R4, #0
361F48:  BNE             loc_361F34
361F4A:  POP.W           {R11}
361F4E:  POP             {R4-R7,PC}
361F50:  SXTH            R1, R1; char *
361F52:  SXTH            R3, R4; unsigned __int16
361F54:  ADR             R0, aTagOne; "TAG_ONE"
361F56:  MOVW            R2, #0x1388; __int16
361F5A:  POP.W           {R11}
361F5E:  POP.W           {R4-R7,LR}
361F62:  B.W             sub_19BFAC
