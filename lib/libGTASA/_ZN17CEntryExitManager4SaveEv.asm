; =========================================================
; Game Engine Function: _ZN17CEntryExitManager4SaveEv
; Address            : 0x48EAD4 - 0x48EC3A
; =========================================================

48EAD4:  PUSH            {R4-R7,LR}
48EAD6:  ADD             R7, SP, #0xC
48EAD8:  PUSH.W          {R8-R11}
48EADC:  SUB             SP, SP, #4
48EADE:  MOVS            R0, #4; byte_count
48EAE0:  BLX             malloc
48EAE4:  MOV             R4, R0
48EAE6:  LDR             R0, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x48EAEE)
48EAE8:  MOVS            R1, #byte_4; void *
48EAEA:  ADD             R0, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
48EAEC:  LDR             R5, [R0]; CEntryExitManager::ms_entryExitStackPosn ...
48EAEE:  LDR             R0, [R5]; CEntryExitManager::ms_entryExitStackPosn
48EAF0:  STR             R0, [R4]
48EAF2:  MOV             R0, R4; this
48EAF4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EAF8:  MOV             R0, R4; p
48EAFA:  BLX             free
48EAFE:  LDR             R0, [R5]; CEntryExitManager::ms_entryExitStackPosn
48EB00:  CMP             R0, #1
48EB02:  BLT             loc_48EB58
48EB04:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x48EB12)
48EB06:  MOVW            R9, #0xEEEF
48EB0A:  LDR             R1, =(_ZN17CEntryExitManager17ms_entryExitStackE_ptr - 0x48EB18)
48EB0C:  MOVS            R5, #0
48EB0E:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
48EB10:  MOVT            R9, #0xEEEE
48EB14:  ADD             R1, PC; _ZN17CEntryExitManager17ms_entryExitStackE_ptr
48EB16:  LDR.W           R8, [R0]; CEntryExitManager::mp_poolEntryExits ...
48EB1A:  LDR             R0, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x48EB24)
48EB1C:  LDR.W           R10, [R1]; CEntryExitManager::ms_entryExitStack ...
48EB20:  ADD             R0, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
48EB22:  LDR.W           R11, [R0]; CEntryExitManager::ms_entryExitStackPosn ...
48EB26:  LDR.W           R0, [R8]; CEntryExitManager::mp_poolEntryExits
48EB2A:  LDR.W           R1, [R10,R5,LSL#2]
48EB2E:  LDR             R0, [R0]
48EB30:  SUBS            R0, R1, R0
48EB32:  LSRS            R0, R0, #2
48EB34:  MUL.W           R6, R0, R9
48EB38:  MOVS            R0, #2; byte_count
48EB3A:  BLX             malloc
48EB3E:  MOV             R4, R0
48EB40:  MOVS            R1, #(stderr+2); void *
48EB42:  STRH            R6, [R4]
48EB44:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EB48:  MOV             R0, R4; p
48EB4A:  BLX             free
48EB4E:  LDR.W           R0, [R11]; CEntryExitManager::ms_entryExitStackPosn
48EB52:  ADDS            R5, #1
48EB54:  CMP             R5, R0
48EB56:  BLT             loc_48EB26
48EB58:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x48EB66)
48EB5A:  MOVS            R6, #0
48EB5C:  MOVW            R9, #0x6AA4
48EB60:  MOVS            R5, #0
48EB62:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
48EB64:  LDR.W           R11, [R0]; CEntryExitManager::mp_poolEntryExits ...
48EB68:  LDR.W           R0, [R11]; CEntryExitManager::mp_poolEntryExits
48EB6C:  LDR             R1, [R0,#4]
48EB6E:  LDRSB           R2, [R1,R5]
48EB70:  CMP             R2, #0
48EB72:  BLT             loc_48EC0C
48EB74:  LDR             R3, [R0]
48EB76:  ADDS.W          R8, R3, R6
48EB7A:  BEQ             loc_48EC0C
48EB7C:  LDR.W           R2, [R8,#0x38]
48EB80:  MOVW            R10, #0xFFFF
48EB84:  CBZ             R2, loc_48EBC2
48EB86:  SUBS            R3, R2, R3
48EB88:  MOVW            R10, #0xFFFF
48EB8C:  CMP             R3, #0
48EB8E:  BLT             loc_48EBC2
48EB90:  MOVW            R4, #0xEEEF
48EB94:  ASRS            R3, R3, #2
48EB96:  MOVT            R4, #0xEEEE
48EB9A:  MOVW            R10, #0xFFFF
48EB9E:  MULS            R3, R4
48EBA0:  LDR             R4, [R0,#8]
48EBA2:  CMP             R3, R4
48EBA4:  BGE             loc_48EBC2
48EBA6:  LDRSB           R1, [R1,R3]
48EBA8:  MOVW            R10, #0xFFFF
48EBAC:  CMP             R1, #0
48EBAE:  BLT             loc_48EBC2
48EBB0:  LDR             R0, [R0]
48EBB2:  MOV             R1, #0xEEEEEEEF
48EBBA:  SUBS            R0, R2, R0
48EBBC:  ASRS            R0, R0, #2
48EBBE:  MUL.W           R10, R0, R1
48EBC2:  MOVS            R0, #2; byte_count
48EBC4:  BLX             malloc
48EBC8:  MOV             R4, R0
48EBCA:  MOVS            R1, #(stderr+2); void *
48EBCC:  STRH            R5, [R4]
48EBCE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EBD2:  MOV             R0, R4; p
48EBD4:  BLX             free
48EBD8:  MOVS            R0, #2; byte_count
48EBDA:  BLX             malloc
48EBDE:  MOV             R4, R0
48EBE0:  LDRH.W          R0, [R8,#0x30]
48EBE4:  STRH            R0, [R4]
48EBE6:  MOV             R0, R4; this
48EBE8:  MOVS            R1, #(stderr+2); void *
48EBEA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EBEE:  MOV             R0, R4; p
48EBF0:  BLX             free
48EBF4:  MOVS            R0, #2; byte_count
48EBF6:  BLX             malloc
48EBFA:  MOV             R4, R0
48EBFC:  MOVS            R1, #(stderr+2); void *
48EBFE:  STRH.W          R10, [R4]
48EC02:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EC06:  MOV             R0, R4; p
48EC08:  BLX             free
48EC0C:  ADDS            R6, #0x3C ; '<'
48EC0E:  ADDS            R5, #1
48EC10:  CMP             R6, R9
48EC12:  BNE             loc_48EB68
48EC14:  MOVS            R0, #2; byte_count
48EC16:  BLX             malloc
48EC1A:  MOV             R4, R0
48EC1C:  MOVW            R0, #0xFFFF
48EC20:  STRH            R0, [R4]
48EC22:  MOV             R0, R4; this
48EC24:  MOVS            R1, #(stderr+2); void *
48EC26:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EC2A:  MOV             R0, R4; p
48EC2C:  BLX             free
48EC30:  MOVS            R0, #1
48EC32:  ADD             SP, SP, #4
48EC34:  POP.W           {R8-R11}
48EC38:  POP             {R4-R7,PC}
