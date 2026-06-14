; =========================================================
; Game Engine Function: _ZN17CEntryExitManager4LoadEv
; Address            : 0x48EC50 - 0x48ED60
; =========================================================

48EC50:  PUSH            {R4-R7,LR}
48EC52:  ADD             R7, SP, #0xC
48EC54:  PUSH.W          {R8-R11}
48EC58:  SUB             SP, SP, #0xC
48EC5A:  LDR             R0, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x48EC62)
48EC5C:  MOVS            R1, #byte_4; void *
48EC5E:  ADD             R0, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
48EC60:  LDR             R4, [R0]; CEntryExitManager::ms_entryExitStackPosn ...
48EC62:  MOV             R0, R4; this
48EC64:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48EC68:  SUB.W           R0, R7, #-var_1E; this
48EC6C:  MOVS            R1, #(stderr+2); void *
48EC6E:  LDR             R4, [R4]; CEntryExitManager::ms_entryExitStackPosn
48EC70:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48EC74:  CMP             R4, #1
48EC76:  BLT             loc_48ECC6
48EC78:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x48EC86)
48EC7A:  SUB.W           R8, R7, #-var_1E
48EC7E:  LDR             R1, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x48EC88)
48EC80:  MOVS            R5, #0
48EC82:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
48EC84:  ADD             R1, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
48EC86:  LDR.W           R9, [R0]; CEntryExitManager::mp_poolEntryExits ...
48EC8A:  LDR             R0, =(_ZN17CEntryExitManager17ms_entryExitStackE_ptr - 0x48EC92)
48EC8C:  LDR             R6, [R1]; CEntryExitManager::ms_entryExitStackPosn ...
48EC8E:  ADD             R0, PC; _ZN17CEntryExitManager17ms_entryExitStackE_ptr
48EC90:  LDR.W           R10, [R0]; CEntryExitManager::ms_entryExitStack ...
48EC94:  LDR.W           R0, [R9]; CEntryExitManager::mp_poolEntryExits
48EC98:  LDRSH.W         R1, [R7,#var_1E]
48EC9C:  LDR             R2, [R0,#4]
48EC9E:  LDRSB           R2, [R2,R1]; int
48ECA0:  CMP             R2, #0
48ECA2:  BLT             loc_48ECB0
48ECA4:  LDR             R0, [R0]
48ECA6:  RSB.W           R1, R1, R1,LSL#4
48ECAA:  ADD.W           R0, R0, R1,LSL#2
48ECAE:  B               loc_48ECB2
48ECB0:  MOVS            R0, #0
48ECB2:  STR.W           R0, [R10,R5,LSL#2]
48ECB6:  MOV             R0, R8; this
48ECB8:  MOVS            R1, #(stderr+2); void *
48ECBA:  LDR             R4, [R6]; CEntryExitManager::ms_entryExitStackPosn
48ECBC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48ECC0:  ADDS            R5, #1
48ECC2:  CMP             R5, R4
48ECC4:  BLT             loc_48EC94
48ECC6:  LDRH.W          R0, [R7,#var_1E]
48ECCA:  MOVW            R4, #0xFFFF
48ECCE:  CMP             R0, R4
48ECD0:  BEQ             loc_48ED56
48ECD2:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x48ECE4)
48ECD4:  SUB.W           R8, R7, #-var_22
48ECD8:  ADD.W           R9, SP, #0x28+var_20
48ECDC:  SUB.W           R11, R7, #-var_1E
48ECE0:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
48ECE2:  LDR             R5, [R1]; CEntryExitManager::mp_poolEntryExits ...
48ECE4:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x48ECEA)
48ECE6:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
48ECE8:  LDR.W           R10, [R1]; CEntryExitManager::mp_poolEntryExits ...
48ECEC:  LDR             R1, [R5]; CEntryExitManager::mp_poolEntryExits
48ECEE:  SXTH            R0, R0
48ECF0:  LDR             R2, [R1,#4]
48ECF2:  LDRSB           R2, [R2,R0]; int
48ECF4:  CMP             R2, #0
48ECF6:  BLT             loc_48ED04
48ECF8:  LDR             R1, [R1]
48ECFA:  RSB.W           R0, R0, R0,LSL#4
48ECFE:  ADD.W           R6, R1, R0,LSL#2
48ED02:  B               loc_48ED06
48ED04:  MOVS            R6, #0
48ED06:  MOV             R0, R8; this
48ED08:  MOVS            R1, #(stderr+2); void *
48ED0A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48ED0E:  MOV             R0, R9; this
48ED10:  MOVS            R1, #(stderr+2); void *
48ED12:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48ED16:  CMP             R6, #0
48ED18:  BEQ             loc_48ED46
48ED1A:  LDRH.W          R0, [R7,#var_22]
48ED1E:  STRH            R0, [R6,#0x30]
48ED20:  LDRH.W          R0, [SP,#0x28+var_20]
48ED24:  CMP             R0, R4
48ED26:  BEQ             loc_48ED42
48ED28:  LDR.W           R1, [R10]; CEntryExitManager::mp_poolEntryExits
48ED2C:  SXTH            R0, R0
48ED2E:  LDR             R2, [R1,#4]
48ED30:  LDRSB           R2, [R2,R0]
48ED32:  CMP             R2, #0
48ED34:  BLT             loc_48ED42
48ED36:  LDR             R1, [R1]
48ED38:  RSB.W           R0, R0, R0,LSL#4
48ED3C:  ADD.W           R0, R1, R0,LSL#2
48ED40:  B               loc_48ED44
48ED42:  MOVS            R0, #0
48ED44:  STR             R0, [R6,#0x38]
48ED46:  MOV             R0, R11; this
48ED48:  MOVS            R1, #(stderr+2); void *
48ED4A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48ED4E:  LDRH.W          R0, [R7,#var_1E]
48ED52:  CMP             R0, R4
48ED54:  BNE             loc_48ECEC
48ED56:  MOVS            R0, #1
48ED58:  ADD             SP, SP, #0xC
48ED5A:  POP.W           {R8-R11}
48ED5E:  POP             {R4-R7,PC}
