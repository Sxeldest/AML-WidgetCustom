; =========================================================
; Game Engine Function: _ZN11CTheScripts4SaveEv
; Address            : 0x48B8E4 - 0x48C2D2
; =========================================================

48B8E4:  PUSH            {R4-R7,LR}
48B8E6:  ADD             R7, SP, #0xC
48B8E8:  PUSH.W          {R8-R11}
48B8EC:  SUB             SP, SP, #0x2C
48B8EE:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x48B8FA)
48B8F2:  LDR.W           R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x48B8FC)
48B8F6:  ADD             R0, PC; __stack_chk_guard_ptr
48B8F8:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
48B8FA:  LDR             R0, [R0]; __stack_chk_guard
48B8FC:  LDR             R4, [R1]; CTheScripts::ScriptSpace ...
48B8FE:  LDR             R0, [R0]
48B900:  LDR.W           R6, [R4,#(dword_7BD797 - 0x7BD794)]
48B904:  STR             R0, [SP,#0x48+var_20]
48B906:  MOVS            R0, #4; byte_count
48B908:  BLX             malloc
48B90C:  MOV             R5, R0
48B90E:  MOVS            R1, #byte_4; void *
48B910:  STR             R6, [R5]
48B912:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B916:  MOV             R0, R5; p
48B918:  BLX             free
48B91C:  MOVW            R0, #0xFDE9
48B920:  CMP             R6, R0
48B922:  BLT             loc_48B94E
48B924:  LDR.W           R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x48B938)
48B928:  MOVW            R8, #:lower16:(elf_hash_chain+0xFA68)
48B92C:  MOVW            R5, #0xFDE8
48B930:  MOVT            R8, #:upper16:(elf_hash_chain+0xFA68)
48B934:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
48B936:  LDR             R4, [R0]; CTheScripts::ScriptSpace ...
48B938:  MOV             R0, R4; this
48B93A:  MOVW            R1, #(elf_hash_bucket+0xFCEC); void *
48B93E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B942:  SUBS            R1, R6, R5
48B944:  ADD             R4, R5
48B946:  CMP             R6, R8
48B948:  MOV             R6, R1
48B94A:  BGT             loc_48B938
48B94C:  B               loc_48B950
48B94E:  MOV             R1, R6; void *
48B950:  MOV             R0, R4; this
48B952:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B956:  LDR.W           R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x48B960)
48B95A:  MOVS            R5, #0
48B95C:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
48B95E:  LDR.W           R8, [R0]; CTheScripts::ScriptsForBrains ...
48B962:  MOVS            R0, #0x14; byte_count
48B964:  ADD.W           R6, R8, R5
48B968:  BLX             malloc
48B96C:  MOV             R4, R0
48B96E:  VLD1.8          {D16-D17}, [R6]!
48B972:  MOV             R1, R4
48B974:  VST1.8          {D16-D17}, [R1]!
48B978:  LDR             R0, [R6]
48B97A:  STR             R0, [R1]
48B97C:  MOV             R0, R4; this
48B97E:  MOVS            R1, #dword_14; void *
48B980:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B984:  MOV             R0, R4; p
48B986:  BLX             free
48B98A:  ADDS            R5, #0x14
48B98C:  CMP.W           R5, #0x578
48B990:  BNE             loc_48B962
48B992:  MOVS            R0, #4; byte_count
48B994:  BLX             malloc
48B998:  MOV             R4, R0
48B99A:  LDR.W           R0, =(_ZN11CTheScripts14OnAMissionFlagE_ptr - 0x48B9A4)
48B99E:  MOVS            R1, #byte_4; void *
48B9A0:  ADD             R0, PC; _ZN11CTheScripts14OnAMissionFlagE_ptr
48B9A2:  LDR             R0, [R0]; CTheScripts::OnAMissionFlag ...
48B9A4:  LDR             R0, [R0]; CTheScripts::OnAMissionFlag
48B9A6:  STR             R0, [R4]
48B9A8:  MOV             R0, R4; this
48B9AA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B9AE:  MOV             R0, R4; p
48B9B0:  BLX             free
48B9B4:  MOVS            R0, #4; byte_count
48B9B6:  BLX             malloc
48B9BA:  MOV             R4, R0
48B9BC:  LDR.W           R0, =(_ZN11CTheScripts21LastMissionPassedTimeE_ptr - 0x48B9C6)
48B9C0:  MOVS            R1, #byte_4; void *
48B9C2:  ADD             R0, PC; _ZN11CTheScripts21LastMissionPassedTimeE_ptr
48B9C4:  LDR             R0, [R0]; CTheScripts::LastMissionPassedTime ...
48B9C6:  LDR             R0, [R0]; CTheScripts::LastMissionPassedTime
48B9C8:  STR             R0, [R4]
48B9CA:  MOV             R0, R4; this
48B9CC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B9D0:  MOV             R0, R4; p
48B9D2:  BLX             free
48B9D6:  LDR.W           R0, =(_ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x48B9E0)
48B9DA:  MOVS            R5, #0
48B9DC:  ADD             R0, PC; _ZN11CTheScripts17BuildingSwapArrayE_ptr
48B9DE:  LDR.W           R11, [R0]; CTheScripts::BuildingSwapArray ...
48B9E2:  LDR.W           R0, =(_ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x48B9EA)
48B9E6:  ADD             R0, PC; _ZN11CTheScripts17BuildingSwapArrayE_ptr
48B9E8:  LDR.W           R10, [R0]; CTheScripts::BuildingSwapArray ...
48B9EC:  LDR.W           R0, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x48B9F4)
48B9F0:  ADD             R0, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
48B9F2:  LDR             R0, [R0]; CPools::ms_pBuildingPool ...
48B9F4:  STR             R0, [SP,#0x48+var_2C]
48B9F6:  LDR.W           R0, [R11,R5]
48B9FA:  CBZ             R0, loc_48BA1A
48B9FC:  LDR             R1, [SP,#0x48+var_2C]
48B9FE:  MOV.W           R9, #2
48BA02:  LDR             R1, [R1]
48BA04:  LDR             R1, [R1]
48BA06:  SUBS            R0, R0, R1
48BA08:  MOV             R1, #0xEEEEEEEF
48BA10:  ASRS            R0, R0, #2
48BA12:  MULS            R0, R1
48BA14:  ADD.W           R8, R0, #1
48BA18:  B               loc_48BA22
48BA1A:  MOV.W           R9, #0
48BA1E:  MOV.W           R8, #0
48BA22:  MOVS            R0, #4; byte_count
48BA24:  BLX             malloc
48BA28:  MOV             R4, R0
48BA2A:  MOVS            R1, #byte_4; void *
48BA2C:  STR.W           R9, [R4]
48BA30:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BA34:  MOV             R0, R4; p
48BA36:  BLX             free
48BA3A:  MOVS            R0, #4; byte_count
48BA3C:  BLX             malloc
48BA40:  MOV             R4, R0
48BA42:  MOVS            R1, #byte_4; void *
48BA44:  STR.W           R8, [R4]
48BA48:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BA4C:  MOV             R0, R4; p
48BA4E:  BLX             free
48BA52:  MOVS            R0, #4; byte_count
48BA54:  ADD.W           R6, R10, R5
48BA58:  BLX             malloc
48BA5C:  MOV             R4, R0
48BA5E:  LDR             R0, [R6,#4]
48BA60:  STR             R0, [R4]
48BA62:  MOV             R0, R4; this
48BA64:  MOVS            R1, #byte_4; void *
48BA66:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BA6A:  MOV             R0, R4; p
48BA6C:  BLX             free
48BA70:  MOVS            R0, #4; byte_count
48BA72:  BLX             malloc
48BA76:  MOV             R4, R0
48BA78:  LDR             R0, [R6,#8]
48BA7A:  STR             R0, [R4]
48BA7C:  MOV             R0, R4; this
48BA7E:  MOVS            R1, #byte_4; void *
48BA80:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BA84:  MOV             R0, R4; p
48BA86:  BLX             free
48BA8A:  ADDS            R5, #0xC
48BA8C:  CMP.W           R5, #0x12C
48BA90:  BNE             loc_48B9F6
48BA92:  LDR.W           R0, =(_ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x48BA9C)
48BA96:  MOVS            R5, #0
48BA98:  ADD             R0, PC; _ZN11CTheScripts24InvisibilitySettingArrayE_ptr
48BA9A:  LDR             R6, [R0]; CTheScripts::InvisibilitySettingArray ...
48BA9C:  LDR.W           R0, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x48BAA4)
48BAA0:  ADD             R0, PC; _ZN6CPools13ms_pDummyPoolE_ptr
48BAA2:  LDR.W           R8, [R0]; CPools::ms_pDummyPool ...
48BAA6:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x48BAAE)
48BAAA:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
48BAAC:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
48BAAE:  STR             R0, [SP,#0x48+var_2C]
48BAB0:  LDR.W           R0, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x48BAB8)
48BAB4:  ADD             R0, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
48BAB6:  LDR.W           R10, [R0]; CPools::ms_pBuildingPool ...
48BABA:  LDR.W           R0, [R6,R5,LSL#2]
48BABE:  CBZ             R0, loc_48BADE
48BAC0:  LDRB.W          R1, [R0,#0x3A]
48BAC4:  AND.W           R1, R1, #7
48BAC8:  CMP             R1, #5
48BACA:  BEQ             loc_48BAE8
48BACC:  CMP             R1, #4
48BACE:  BEQ             loc_48BAFE
48BAD0:  CMP             R1, #1
48BAD2:  BNE             loc_48BB1A
48BAD4:  LDR.W           R1, [R10]; CPools::ms_pBuildingPool
48BAD8:  MOV.W           R9, #2
48BADC:  B               loc_48BAF0
48BADE:  MOV.W           R9, #0
48BAE2:  MOV.W           R11, #0
48BAE6:  B               loc_48BB1A
48BAE8:  LDR.W           R1, [R8]; CPools::ms_pDummyPool
48BAEC:  MOV.W           R9, #4
48BAF0:  LDR             R1, [R1]
48BAF2:  SUBS            R0, R0, R1
48BAF4:  MOV             R1, #0xEEEEEEEF
48BAFC:  B               loc_48BB12
48BAFE:  LDR             R1, [SP,#0x48+var_2C]
48BB00:  MOV.W           R9, #3
48BB04:  LDR             R1, [R1]
48BB06:  LDR             R1, [R1]
48BB08:  SUBS            R0, R0, R1
48BB0A:  MOV             R1, #0xD8FD8FD9
48BB12:  ASRS            R0, R0, #2
48BB14:  MULS            R0, R1
48BB16:  ADD.W           R11, R0, #1
48BB1A:  MOVS            R0, #4; byte_count
48BB1C:  BLX             malloc
48BB20:  MOV             R4, R0
48BB22:  MOVS            R1, #byte_4; void *
48BB24:  STR.W           R9, [R4]
48BB28:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BB2C:  MOV             R0, R4; p
48BB2E:  BLX             free
48BB32:  MOVS            R0, #4; byte_count
48BB34:  BLX             malloc
48BB38:  MOV             R4, R0
48BB3A:  MOVS            R1, #byte_4; void *
48BB3C:  STR.W           R11, [R4]
48BB40:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BB44:  MOV             R0, R4; p
48BB46:  BLX             free
48BB4A:  ADDS            R5, #1
48BB4C:  CMP             R5, #0x14
48BB4E:  BNE             loc_48BABA
48BB50:  LDR.W           R0, =(_ZN11CTheScripts28VehicleModelsBlockedByScriptE_ptr - 0x48BB5A)
48BB54:  MOVS            R5, #0
48BB56:  ADD             R0, PC; _ZN11CTheScripts28VehicleModelsBlockedByScriptE_ptr
48BB58:  LDR             R6, [R0]; CTheScripts::VehicleModelsBlockedByScript ...
48BB5A:  MOVS            R0, #4; byte_count
48BB5C:  BLX             malloc
48BB60:  MOV             R4, R0
48BB62:  LDR.W           R0, [R6,R5,LSL#2]
48BB66:  STR             R0, [R4]
48BB68:  MOV             R0, R4; this
48BB6A:  MOVS            R1, #byte_4; void *
48BB6C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BB70:  MOV             R0, R4; p
48BB72:  BLX             free
48BB76:  ADDS            R5, #1
48BB78:  CMP             R5, #0x14
48BB7A:  BNE             loc_48BB5A
48BB7C:  MOVS            R0, #8; byte_count
48BB7E:  BLX             malloc
48BB82:  MOV             R4, R0
48BB84:  LDR.W           R0, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x48BB8C)
48BB88:  ADD             R0, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
48BB8A:  LDR             R5, [R0]; CTheScripts::ScriptConnectLodsObjects ...
48BB8C:  LDRD.W          R0, R1, [R5]; CTheScripts::ScriptConnectLodsObjects
48BB90:  STR             R1, [R4,#4]
48BB92:  MOVS            R1, #byte_8; void *
48BB94:  STR             R0, [R4]
48BB96:  MOV             R0, R4; this
48BB98:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BB9C:  MOV             R0, R4; p
48BB9E:  BLX             free
48BBA2:  MOVS            R0, #8; byte_count
48BBA4:  BLX             malloc
48BBA8:  MOV             R4, R0
48BBAA:  LDRD.W          R0, R1, [R5,#(dword_8199F0 - 0x8199E8)]
48BBAE:  STR             R1, [R4,#4]
48BBB0:  MOVS            R1, #byte_8; void *
48BBB2:  STR             R0, [R4]
48BBB4:  MOV             R0, R4; this
48BBB6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BBBA:  MOV             R0, R4; p
48BBBC:  BLX             free
48BBC0:  MOVS            R0, #8; byte_count
48BBC2:  BLX             malloc
48BBC6:  MOV             R4, R0
48BBC8:  LDRD.W          R0, R1, [R5,#(dword_8199F8 - 0x8199E8)]
48BBCC:  STR             R1, [R4,#4]
48BBCE:  MOVS            R1, #byte_8; void *
48BBD0:  STR             R0, [R4]
48BBD2:  MOV             R0, R4; this
48BBD4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BBD8:  MOV             R0, R4; p
48BBDA:  BLX             free
48BBDE:  MOVS            R0, #8; byte_count
48BBE0:  BLX             malloc
48BBE4:  MOV             R4, R0
48BBE6:  LDRD.W          R0, R1, [R5,#(dword_819A00 - 0x8199E8)]
48BBEA:  STR             R1, [R4,#4]
48BBEC:  MOVS            R1, #byte_8; void *
48BBEE:  STR             R0, [R4]
48BBF0:  MOV             R0, R4; this
48BBF2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BBF6:  MOV             R0, R4; p
48BBF8:  BLX             free
48BBFC:  MOVS            R0, #8; byte_count
48BBFE:  BLX             malloc
48BC02:  MOV             R4, R0
48BC04:  LDRD.W          R0, R1, [R5,#(dword_819A08 - 0x8199E8)]
48BC08:  STR             R1, [R4,#4]
48BC0A:  MOVS            R1, #byte_8; void *
48BC0C:  STR             R0, [R4]
48BC0E:  MOV             R0, R4; this
48BC10:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BC14:  MOV             R0, R4; p
48BC16:  BLX             free
48BC1A:  MOVS            R0, #8; byte_count
48BC1C:  BLX             malloc
48BC20:  MOV             R4, R0
48BC22:  LDRD.W          R0, R1, [R5,#(dword_819A10 - 0x8199E8)]
48BC26:  STR             R1, [R4,#4]
48BC28:  MOVS            R1, #byte_8; void *
48BC2A:  STR             R0, [R4]
48BC2C:  MOV             R0, R4; this
48BC2E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BC32:  MOV             R0, R4; p
48BC34:  BLX             free
48BC38:  MOVS            R0, #8; byte_count
48BC3A:  BLX             malloc
48BC3E:  MOV             R4, R0
48BC40:  LDRD.W          R0, R1, [R5,#(dword_819A18 - 0x8199E8)]
48BC44:  STR             R1, [R4,#4]
48BC46:  MOVS            R1, #byte_8; void *
48BC48:  STR             R0, [R4]
48BC4A:  MOV             R0, R4; this
48BC4C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BC50:  MOV             R0, R4; p
48BC52:  BLX             free
48BC56:  MOVS            R0, #8; byte_count
48BC58:  BLX             malloc
48BC5C:  MOV             R4, R0
48BC5E:  LDRD.W          R0, R1, [R5,#(dword_819A20 - 0x8199E8)]
48BC62:  STR             R1, [R4,#4]
48BC64:  MOVS            R1, #byte_8; void *
48BC66:  STR             R0, [R4]
48BC68:  MOV             R0, R4; this
48BC6A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BC6E:  MOV             R0, R4; p
48BC70:  BLX             free
48BC74:  MOVS            R0, #8; byte_count
48BC76:  BLX             malloc
48BC7A:  MOV             R4, R0
48BC7C:  LDRD.W          R0, R1, [R5,#(dword_819A28 - 0x8199E8)]
48BC80:  STR             R1, [R4,#4]
48BC82:  MOVS            R1, #byte_8; void *
48BC84:  STR             R0, [R4]
48BC86:  MOV             R0, R4; this
48BC88:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BC8C:  MOV             R0, R4; p
48BC8E:  BLX             free
48BC92:  MOVS            R0, #8; byte_count
48BC94:  BLX             malloc
48BC98:  MOV             R4, R0
48BC9A:  LDRD.W          R0, R1, [R5,#(dword_819A30 - 0x8199E8)]
48BC9E:  STR             R1, [R4,#4]
48BCA0:  MOVS            R1, #byte_8; void *
48BCA2:  STR             R0, [R4]
48BCA4:  MOV             R0, R4; this
48BCA6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BCAA:  MOV             R0, R4; p
48BCAC:  BLX             free
48BCB0:  MOVS            R0, #0x14; byte_count
48BCB2:  BLX             malloc
48BCB6:  MOV             R4, R0
48BCB8:  LDR.W           R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x48BCC2)
48BCBC:  MOV             R1, R4
48BCBE:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
48BCC0:  LDR             R5, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
48BCC2:  MOV             R0, R5
48BCC4:  VLD1.32         {D16-D17}, [R0]!
48BCC8:  VST1.8          {D16-D17}, [R1]!
48BCCC:  LDR             R0, [R0]
48BCCE:  STR             R0, [R1]
48BCD0:  MOV             R0, R4; this
48BCD2:  MOVS            R1, #dword_14; void *
48BCD4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BCD8:  MOV             R0, R4; p
48BCDA:  BLX             free
48BCDE:  MOVS            R0, #0x14; byte_count
48BCE0:  BLX             malloc
48BCE4:  MOV             R4, R0
48BCE6:  ADD.W           R0, R5, #0x14
48BCEA:  VLD1.32         {D16-D17}, [R0]
48BCEE:  MOV             R1, R4
48BCF0:  VST1.8          {D16-D17}, [R1]!
48BCF4:  LDR             R0, [R5,#(dword_81996C - 0x819948)]
48BCF6:  STR             R0, [R1]
48BCF8:  MOV             R0, R4; this
48BCFA:  MOVS            R1, #dword_14; void *
48BCFC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BD00:  MOV             R0, R4; p
48BD02:  BLX             free
48BD06:  MOVS            R0, #0x14; byte_count
48BD08:  BLX             malloc
48BD0C:  MOV             R4, R0
48BD0E:  ADD.W           R0, R5, #0x28 ; '('
48BD12:  VLD1.32         {D16-D17}, [R0]
48BD16:  MOV             R1, R4
48BD18:  VST1.8          {D16-D17}, [R1]!
48BD1C:  LDR             R0, [R5,#(dword_819980 - 0x819948)]
48BD1E:  STR             R0, [R1]
48BD20:  MOV             R0, R4; this
48BD22:  MOVS            R1, #dword_14; void *
48BD24:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BD28:  MOV             R0, R4; p
48BD2A:  BLX             free
48BD2E:  MOVS            R0, #0x14; byte_count
48BD30:  BLX             malloc
48BD34:  MOV             R4, R0
48BD36:  ADD.W           R0, R5, #0x3C ; '<'
48BD3A:  VLD1.32         {D16-D17}, [R0]
48BD3E:  MOV             R1, R4
48BD40:  VST1.8          {D16-D17}, [R1]!
48BD44:  LDR             R0, [R5,#(dword_819994 - 0x819948)]
48BD46:  STR             R0, [R1]
48BD48:  MOV             R0, R4; this
48BD4A:  MOVS            R1, #dword_14; void *
48BD4C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BD50:  MOV             R0, R4; p
48BD52:  BLX             free
48BD56:  MOVS            R0, #0x14; byte_count
48BD58:  BLX             malloc
48BD5C:  MOV             R4, R0
48BD5E:  ADD.W           R0, R5, #0x50 ; 'P'
48BD62:  VLD1.32         {D16-D17}, [R0]
48BD66:  MOV             R1, R4
48BD68:  VST1.8          {D16-D17}, [R1]!
48BD6C:  LDR             R0, [R5,#(dword_8199A8 - 0x819948)]
48BD6E:  STR             R0, [R1]
48BD70:  MOV             R0, R4; this
48BD72:  MOVS            R1, #dword_14; void *
48BD74:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BD78:  MOV             R0, R4; p
48BD7A:  BLX             free
48BD7E:  MOVS            R0, #0x14; byte_count
48BD80:  BLX             malloc
48BD84:  MOV             R4, R0
48BD86:  ADD.W           R0, R5, #0x64 ; 'd'
48BD8A:  VLD1.32         {D16-D17}, [R0]
48BD8E:  MOV             R1, R4
48BD90:  VST1.8          {D16-D17}, [R1]!
48BD94:  LDR             R0, [R5,#(dword_8199BC - 0x819948)]
48BD96:  STR             R0, [R1]
48BD98:  MOV             R0, R4; this
48BD9A:  MOVS            R1, #dword_14; void *
48BD9C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BDA0:  MOV             R0, R4; p
48BDA2:  BLX             free
48BDA6:  MOVS            R0, #0x14; byte_count
48BDA8:  BLX             malloc
48BDAC:  MOV             R4, R0
48BDAE:  ADD.W           R0, R5, #0x78 ; 'x'
48BDB2:  VLD1.32         {D16-D17}, [R0]
48BDB6:  MOV             R1, R4
48BDB8:  VST1.8          {D16-D17}, [R1]!
48BDBC:  LDR.W           R0, [R5,#(dword_8199D0 - 0x819948)]
48BDC0:  STR             R0, [R1]
48BDC2:  MOV             R0, R4; this
48BDC4:  MOVS            R1, #dword_14; void *
48BDC6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BDCA:  MOV             R0, R4; p
48BDCC:  BLX             free
48BDD0:  MOVS            R0, #0x14; byte_count
48BDD2:  BLX             malloc
48BDD6:  MOV             R4, R0
48BDD8:  ADD.W           R0, R5, #0x8C
48BDDC:  VLD1.32         {D16-D17}, [R0]
48BDE0:  MOV             R1, R4
48BDE2:  VST1.8          {D16-D17}, [R1]!
48BDE6:  LDR.W           R0, [R5,#(dword_8199E4 - 0x819948)]
48BDEA:  STR             R0, [R1]
48BDEC:  MOV             R0, R4; this
48BDEE:  MOVS            R1, #dword_14; void *
48BDF0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BDF4:  MOV             R0, R4; p
48BDF6:  BLX             free
48BDFA:  LDR.W           R0, =(_ZN11CTheScripts22bUsingAMultiScriptFileE_ptr - 0x48BE04)
48BDFE:  MOVS            R1, #(stderr+1); void *
48BE00:  ADD             R0, PC; _ZN11CTheScripts22bUsingAMultiScriptFileE_ptr
48BE02:  LDR             R0, [R0]; this
48BE04:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BE08:  LDR.W           R0, =(_ZN11CTheScripts24bPlayerHasMetDebbieHarryE_ptr - 0x48BE12)
48BE0C:  MOVS            R1, #(stderr+1); void *
48BE0E:  ADD             R0, PC; _ZN11CTheScripts24bPlayerHasMetDebbieHarryE_ptr
48BE10:  LDR             R0, [R0]; this
48BE12:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BE16:  MOVS            R0, #4; byte_count
48BE18:  BLX             malloc
48BE1C:  MOV             R4, R0
48BE1E:  LDR.W           R0, =(_ZN11CTheScripts14MainScriptSizeE_ptr - 0x48BE28)
48BE22:  MOVS            R1, #byte_4; void *
48BE24:  ADD             R0, PC; _ZN11CTheScripts14MainScriptSizeE_ptr
48BE26:  LDR             R0, [R0]; CTheScripts::MainScriptSize ...
48BE28:  LDR             R0, [R0]; CTheScripts::MainScriptSize
48BE2A:  STR             R0, [R4]
48BE2C:  MOV             R0, R4; this
48BE2E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BE32:  MOV             R0, R4; p
48BE34:  BLX             free
48BE38:  MOVS            R0, #4; byte_count
48BE3A:  BLX             malloc
48BE3E:  MOV             R4, R0
48BE40:  LDR.W           R0, =(_ZN11CTheScripts24LargestMissionScriptSizeE_ptr - 0x48BE4A)
48BE44:  MOVS            R1, #byte_4; void *
48BE46:  ADD             R0, PC; _ZN11CTheScripts24LargestMissionScriptSizeE_ptr
48BE48:  LDR             R0, [R0]; CTheScripts::LargestMissionScriptSize ...
48BE4A:  LDR             R0, [R0]; CTheScripts::LargestMissionScriptSize
48BE4C:  STR             R0, [R4]
48BE4E:  MOV             R0, R4; this
48BE50:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BE54:  MOV             R0, R4; p
48BE56:  BLX             free
48BE5A:  MOVS            R0, #2; byte_count
48BE5C:  BLX             malloc
48BE60:  MOV             R4, R0
48BE62:  LDR.W           R0, =(_ZN11CTheScripts22NumberOfMissionScriptsE_ptr - 0x48BE6C)
48BE66:  MOVS            R1, #(stderr+2); void *
48BE68:  ADD             R0, PC; _ZN11CTheScripts22NumberOfMissionScriptsE_ptr
48BE6A:  LDR             R0, [R0]; CTheScripts::NumberOfMissionScripts ...
48BE6C:  LDRH            R0, [R0]; CTheScripts::NumberOfMissionScripts
48BE6E:  STRH            R0, [R4]
48BE70:  MOV             R0, R4; this
48BE72:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BE76:  MOV             R0, R4; p
48BE78:  BLX             free
48BE7C:  MOVS            R0, #2; byte_count
48BE7E:  BLX             malloc
48BE82:  MOV             R4, R0
48BE84:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfExclusiveMissionScriptsE_ptr - 0x48BE8E)
48BE88:  MOVS            R1, #(stderr+2); void *
48BE8A:  ADD             R0, PC; _ZN11CTheScripts31NumberOfExclusiveMissionScriptsE_ptr
48BE8C:  LDR             R0, [R0]; CTheScripts::NumberOfExclusiveMissionScripts ...
48BE8E:  LDRH            R0, [R0]; CTheScripts::NumberOfExclusiveMissionScripts
48BE90:  STRH            R0, [R4]
48BE92:  MOV             R0, R4; this
48BE94:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BE98:  MOV             R0, R4; p
48BE9A:  BLX             free
48BE9E:  MOVS            R0, #4; byte_count
48BEA0:  BLX             malloc
48BEA4:  MOV             R4, R0
48BEA6:  LDR.W           R0, =(_ZN11CTheScripts42LargestNumberOfMissionScriptLocalVariablesE_ptr - 0x48BEB0)
48BEAA:  MOVS            R1, #byte_4; void *
48BEAC:  ADD             R0, PC; _ZN11CTheScripts42LargestNumberOfMissionScriptLocalVariablesE_ptr
48BEAE:  LDR             R0, [R0]; CTheScripts::LargestNumberOfMissionScriptLocalVariables ...
48BEB0:  LDR             R0, [R0]; CTheScripts::LargestNumberOfMissionScriptLocalVariables
48BEB2:  STR             R0, [R4]
48BEB4:  MOV             R0, R4; this
48BEB6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BEBA:  MOV             R0, R4; p
48BEBC:  BLX             free
48BEC0:  LDR.W           R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x48BEC8)
48BEC4:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
48BEC6:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
48BEC8:  LDR             R0, [R0]; CTheScripts::pActiveScripts
48BECA:  CBZ             R0, loc_48BEFC
48BECC:  LDR.W           R1, =(SaveStreamedScripts_ptr - 0x48BED6)
48BED0:  MOVS            R5, #0
48BED2:  ADD             R1, PC; SaveStreamedScripts_ptr
48BED4:  LDR             R1, [R1]; SaveStreamedScripts
48BED6:  LDRB            R1, [R1]
48BED8:  B               loc_48BEDE
48BEDA:  ADDS            R5, #1
48BEDC:  B               loc_48BEF4
48BEDE:  LDRB.W          R2, [R0,#0xE7]
48BEE2:  CMP             R2, #0
48BEE4:  ITT EQ
48BEE6:  LDRBEQ.W        R2, [R0,#0xE9]
48BEEA:  CMPEQ           R2, #0xFF
48BEEC:  BEQ             loc_48BEDA
48BEEE:  CMP             R1, #0
48BEF0:  IT NE
48BEF2:  ADDNE           R5, #1
48BEF4:  LDR             R0, [R0]
48BEF6:  CMP             R0, #0
48BEF8:  BNE             loc_48BEDE
48BEFA:  B               loc_48BEFE
48BEFC:  MOVS            R5, #0
48BEFE:  MOVS            R0, #4; byte_count
48BF00:  BLX             malloc
48BF04:  MOV             R4, R0
48BF06:  MOVS            R1, #byte_4; void *
48BF08:  STR             R5, [R4]
48BF0A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BF0E:  MOV             R0, R4; p
48BF10:  BLX             free
48BF14:  LDR.W           R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x48BF1C)
48BF18:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
48BF1A:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
48BF1C:  LDR             R0, [R0]; CTheScripts::pActiveScripts
48BF1E:  MOV             R4, R0
48BF20:  LDR             R0, [R4]
48BF22:  CMP             R0, #0
48BF24:  BNE             loc_48BF1E
48BF26:  LDR.W           R0, =(UseDataFence_ptr - 0x48BF2E)
48BF2A:  ADD             R0, PC; UseDataFence_ptr
48BF2C:  LDR             R0, [R0]; UseDataFence
48BF2E:  LDRB            R6, [R0]
48BF30:  CBZ             R6, loc_48BF7A
48BF32:  LDR.W           R0, =(currentSaveFenceCount_ptr - 0x48BF44)
48BF36:  MOVS            R3, #0
48BF38:  LDR.W           R1, =(UseDataFence_ptr - 0x48BF46)
48BF3C:  LDR.W           R2, =(DataFence_ptr - 0x48BF48)
48BF40:  ADD             R0, PC; currentSaveFenceCount_ptr
48BF42:  ADD             R1, PC; UseDataFence_ptr
48BF44:  ADD             R2, PC; DataFence_ptr
48BF46:  LDR             R0, [R0]; currentSaveFenceCount
48BF48:  LDR.W           R8, [R1]; UseDataFence
48BF4C:  LDR             R1, [R2]; DataFence
48BF4E:  LDR             R2, [R0]
48BF50:  STRB.W          R3, [R8]
48BF54:  LDRH            R1, [R1]
48BF56:  ADDS            R3, R2, #1
48BF58:  STR             R3, [R0]
48BF5A:  MOVS            R0, #2; byte_count
48BF5C:  ADD.W           R9, R2, R1
48BF60:  BLX             malloc
48BF64:  MOV             R5, R0
48BF66:  MOVS            R1, #(stderr+2); void *
48BF68:  STRH.W          R9, [R5]
48BF6C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BF70:  MOV             R0, R5; p
48BF72:  BLX             free
48BF76:  STRB.W          R6, [R8]
48BF7A:  MOVS            R0, #4; byte_count
48BF7C:  BLX             malloc
48BF80:  MOV             R5, R0
48BF82:  LDR.W           R0, =(SaveGameStateType_ptr - 0x48BF8C)
48BF86:  MOVS            R1, #byte_4; void *
48BF88:  ADD             R0, PC; SaveGameStateType_ptr
48BF8A:  LDR             R0, [R0]; SaveGameStateType
48BF8C:  LDR             R0, [R0]
48BF8E:  STR             R0, [R5]
48BF90:  MOV             R0, R5; this
48BF92:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48BF96:  MOV             R0, R5; p
48BF98:  BLX             free
48BF9C:  LDR             R0, =(IsMissionLoad_ptr - 0x48BFAA)
48BF9E:  MOV.W           R10, #0
48BFA2:  LDR             R1, =(IsMissionSave_ptr - 0x48BFAC)
48BFA4:  CMP             R4, #0
48BFA6:  ADD             R0, PC; IsMissionLoad_ptr
48BFA8:  ADD             R1, PC; IsMissionSave_ptr
48BFAA:  LDR             R0, [R0]; IsMissionLoad
48BFAC:  LDR             R1, [R1]; IsMissionSave
48BFAE:  STRB.W          R10, [R0]
48BFB2:  STRB.W          R10, [R1]
48BFB6:  BEQ.W           loc_48C23A
48BFBA:  LDR             R0, =(SaveStreamedScripts_ptr - 0x48BFC4)
48BFBC:  MOV.W           R10, #0
48BFC0:  ADD             R0, PC; SaveStreamedScripts_ptr
48BFC2:  LDR             R0, [R0]; SaveStreamedScripts
48BFC4:  STR             R0, [SP,#0x48+var_44]
48BFC6:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x48BFCC)
48BFC8:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
48BFCA:  LDR.W           R11, [R0]; CTheScripts::ScriptSpace ...
48BFCE:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x48BFD4)
48BFD0:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
48BFD2:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
48BFD4:  ADD.W           R1, R0, #0x41000
48BFD8:  ADD.W           R1, R1, #0xEB0
48BFDC:  STR             R1, [SP,#0x48+var_2C]
48BFDE:  MOV             R1, #stru_4A568.st_info; CRunningScript *
48BFE6:  ADD             R0, R1
48BFE8:  STR             R0, [SP,#0x48+var_30]
48BFEA:  LDR             R0, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x48BFF0)
48BFEC:  ADD             R0, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
48BFEE:  LDR             R0, [R0]; CTheScripts::LocalVariablesForCurrentMission ...
48BFF0:  STR             R0, [SP,#0x48+var_34]
48BFF2:  LDR             R0, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x48BFF8)
48BFF4:  ADD             R0, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
48BFF6:  LDR             R0, [R0]; CTheScripts::StreamedScripts ...
48BFF8:  STR             R0, [SP,#0x48+var_38]
48BFFA:  LDR             R0, =(SaveGameStateType_ptr - 0x48C000)
48BFFC:  ADD             R0, PC; SaveGameStateType_ptr
48BFFE:  LDR             R0, [R0]; SaveGameStateType
48C000:  STR             R0, [SP,#0x48+var_3C]
48C002:  LDR             R0, =(IsMissionSave_ptr - 0x48C008)
48C004:  ADD             R0, PC; IsMissionSave_ptr
48C006:  LDR             R0, [R0]; IsMissionSave
48C008:  STR             R0, [SP,#0x48+var_48]
48C00A:  LDR             R0, =(CurrentScriptName_ptr - 0x48C010)
48C00C:  ADD             R0, PC; CurrentScriptName_ptr
48C00E:  LDR             R0, [R0]; CurrentScriptName
48C010:  STR             R0, [SP,#0x48+var_40]
48C012:  LDR             R0, =(SaveStreamedScripts_ptr - 0x48C018)
48C014:  ADD             R0, PC; SaveStreamedScripts_ptr
48C016:  LDR.W           R9, [R0]; SaveStreamedScripts
48C01A:  LDRB.W          R0, [R4,#0xE7]
48C01E:  CBZ             R0, loc_48C028
48C020:  LDRB.W          R0, [R9]
48C024:  CBNZ            R0, loc_48C03A
48C026:  B               loc_48C232
48C028:  LDRB.W          R0, [R4,#0xE9]
48C02C:  CMP             R0, #0xFF
48C02E:  BEQ             loc_48C03A
48C030:  LDR             R0, [SP,#0x48+var_44]
48C032:  LDRB            R0, [R0]
48C034:  CMP             R0, #0
48C036:  BEQ.W           loc_48C232
48C03A:  MOV             R0, R4; this
48C03C:  BLX             j__ZN11CTheScripts25GetScriptIndexFromPointerEP14CRunningScript; CTheScripts::GetScriptIndexFromPointer(CRunningScript *)
48C040:  MOV             R6, R0
48C042:  LDRB.W          R0, [R4,#0xE6]
48C046:  CBZ             R0, loc_48C06C
48C048:  LDR             R0, [SP,#0x48+var_3C]
48C04A:  MOV             R1, #0xFFFF8000
48C052:  ORRS            R6, R1
48C054:  MOVS            R2, #8; size_t
48C056:  LDR             R0, [R0]
48C058:  CMP             R0, #0
48C05A:  ITTT EQ
48C05C:  LDREQ           R0, [SP,#0x48+var_48]
48C05E:  MOVEQ           R1, #1
48C060:  STRBEQ          R1, [R0]
48C062:  LDR             R0, [SP,#0x48+var_40]; char *
48C064:  ADD.W           R1, R4, #8; char *
48C068:  BLX             strncpy
48C06C:  MOVS            R0, #2; byte_count
48C06E:  BLX             malloc
48C072:  MOV             R8, R0
48C074:  MOVS            R1, #(stderr+2); void *
48C076:  STRH.W          R6, [R8]
48C07A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C07E:  MOV             R0, R8; p
48C080:  BLX             free
48C084:  LDRB.W          R0, [R4,#0xE7]
48C088:  CBZ             R0, loc_48C096
48C08A:  LDR             R1, [R4,#0x10]; unsigned __int8 *
48C08C:  LDR             R0, [SP,#0x48+var_38]; this
48C08E:  BLX             j__ZN16CStreamedScripts37GetStreamedScriptWithThisStartAddressEPh; CStreamedScripts::GetStreamedScriptWithThisStartAddress(uchar *)
48C092:  MOV             R6, R0
48C094:  B               loc_48C09A
48C096:  MOV.W           R6, #0xFFFFFFFF
48C09A:  MOVS            R0, #4; byte_count
48C09C:  BLX             malloc
48C0A0:  MOV             R5, R0
48C0A2:  MOVS            R1, #byte_4; void *
48C0A4:  STR             R6, [R5]
48C0A6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C0AA:  MOV             R0, R5; p
48C0AC:  BLX             free
48C0B0:  LDRB.W          R0, [R4,#0xE6]
48C0B4:  CBZ             R0, loc_48C0F2
48C0B6:  LDR             R0, [SP,#0x48+var_2C]; this
48C0B8:  MOVW            R1, #(elf_hash_bucket+0x85C8); void *
48C0BC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C0C0:  LDR             R0, [SP,#0x48+var_30]; this
48C0C2:  MOVW            R1, #(elf_hash_bucket+0x85C8); void *
48C0C6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C0CA:  MOV.W           R0, #0x1000; byte_count
48C0CE:  BLX             malloc
48C0D2:  LDR             R1, [SP,#0x48+var_34]; void *
48C0D4:  MOV.W           R2, #0x1000; size_t
48C0D8:  MOV             R5, R0
48C0DA:  BLX             memcpy_1
48C0DE:  MOV             R0, R5; this
48C0E0:  MOV.W           R1, #(elf_hash_bucket+0xF04); void *
48C0E4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C0E8:  MOV             R0, R5; p
48C0EA:  BLX             free
48C0EE:  MOV.W           R10, #1
48C0F2:  MOV.W           R0, #0x100; byte_count
48C0F6:  BLX             malloc
48C0FA:  MOV             R1, R4; void *
48C0FC:  MOV.W           R2, #0x100; size_t
48C100:  MOV             R5, R0
48C102:  BLX             memcpy_1
48C106:  MOV             R0, R5; this
48C108:  MOV.W           R1, #(elf_hash_bucket+4); void *
48C10C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C110:  MOV             R0, R5; p
48C112:  BLX             free
48C116:  LDR             R0, [R4,#0x14]
48C118:  SUB.W           R6, R0, R11
48C11C:  MOVS            R0, #4; byte_count
48C11E:  BLX             malloc
48C122:  MOV             R5, R0
48C124:  MOVS            R1, #byte_4; void *
48C126:  STR             R6, [R5]
48C128:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C12C:  MOV             R0, R5; p
48C12E:  BLX             free
48C132:  LDR             R6, [R4,#0x18]
48C134:  MOVS            R0, #4; byte_count
48C136:  CMP             R6, #0
48C138:  IT NE
48C13A:  SUBNE.W         R6, R6, R11
48C13E:  BLX             malloc
48C142:  MOV             R5, R0
48C144:  MOVS            R1, #byte_4; void *
48C146:  STR             R6, [R5]
48C148:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C14C:  MOV             R0, R5; p
48C14E:  BLX             free
48C152:  LDR             R6, [R4,#0x1C]
48C154:  MOVS            R0, #4; byte_count
48C156:  CMP             R6, #0
48C158:  IT NE
48C15A:  SUBNE.W         R6, R6, R11
48C15E:  BLX             malloc
48C162:  MOV             R5, R0
48C164:  MOVS            R1, #byte_4; void *
48C166:  STR             R6, [R5]
48C168:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C16C:  MOV             R0, R5; p
48C16E:  BLX             free
48C172:  LDR             R6, [R4,#0x20]
48C174:  MOVS            R0, #4; byte_count
48C176:  CMP             R6, #0
48C178:  IT NE
48C17A:  SUBNE.W         R6, R6, R11
48C17E:  BLX             malloc
48C182:  MOV             R5, R0
48C184:  MOVS            R1, #byte_4; void *
48C186:  STR             R6, [R5]
48C188:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C18C:  MOV             R0, R5; p
48C18E:  BLX             free
48C192:  LDR             R6, [R4,#0x24]
48C194:  MOVS            R0, #4; byte_count
48C196:  CMP             R6, #0
48C198:  IT NE
48C19A:  SUBNE.W         R6, R6, R11
48C19E:  BLX             malloc
48C1A2:  MOV             R5, R0
48C1A4:  MOVS            R1, #byte_4; void *
48C1A6:  STR             R6, [R5]
48C1A8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C1AC:  MOV             R0, R5; p
48C1AE:  BLX             free
48C1B2:  LDR             R6, [R4,#0x28]
48C1B4:  MOVS            R0, #4; byte_count
48C1B6:  CMP             R6, #0
48C1B8:  IT NE
48C1BA:  SUBNE.W         R6, R6, R11
48C1BE:  BLX             malloc
48C1C2:  MOV             R5, R0
48C1C4:  MOVS            R1, #byte_4; void *
48C1C6:  STR             R6, [R5]
48C1C8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C1CC:  MOV             R0, R5; p
48C1CE:  BLX             free
48C1D2:  LDR             R6, [R4,#0x2C]
48C1D4:  MOVS            R0, #4; byte_count
48C1D6:  CMP             R6, #0
48C1D8:  IT NE
48C1DA:  SUBNE.W         R6, R6, R11
48C1DE:  BLX             malloc
48C1E2:  MOV             R5, R0
48C1E4:  MOVS            R1, #byte_4; void *
48C1E6:  STR             R6, [R5]
48C1E8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C1EC:  MOV             R0, R5; p
48C1EE:  BLX             free
48C1F2:  LDR             R6, [R4,#0x30]
48C1F4:  MOVS            R0, #4; byte_count
48C1F6:  CMP             R6, #0
48C1F8:  IT NE
48C1FA:  SUBNE.W         R6, R6, R11
48C1FE:  BLX             malloc
48C202:  MOV             R5, R0
48C204:  MOVS            R1, #byte_4; void *
48C206:  STR             R6, [R5]
48C208:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C20C:  MOV             R0, R5; p
48C20E:  BLX             free
48C212:  LDR             R6, [R4,#0x34]
48C214:  MOVS            R0, #4; byte_count
48C216:  CMP             R6, #0
48C218:  IT NE
48C21A:  SUBNE.W         R6, R6, R11
48C21E:  BLX             malloc
48C222:  MOV             R5, R0
48C224:  MOVS            R1, #byte_4; void *
48C226:  STR             R6, [R5]
48C228:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C22C:  MOV             R0, R5; p
48C22E:  BLX             free
48C232:  LDR             R4, [R4,#4]
48C234:  CMP             R4, #0
48C236:  BNE.W           loc_48C01A
48C23A:  LDR             R0, =(_ZN11CTheScripts21ScriptResourceManagerE_ptr - 0x48C240)
48C23C:  ADD             R0, PC; _ZN11CTheScripts21ScriptResourceManagerE_ptr
48C23E:  LDR             R0, [R0]; this
48C240:  BLX             j__ZN22CScriptResourceManager4SaveEv; CScriptResourceManager::Save(void)
48C244:  MOVS            R0, #4; byte_count
48C246:  BLX             malloc
48C24A:  MOV             R4, R0
48C24C:  LDR             R0, =(IsOddJob_ptr - 0x48C254)
48C24E:  MOVS            R1, #byte_4; void *
48C250:  ADD             R0, PC; IsOddJob_ptr
48C252:  LDR             R5, [R0]; IsOddJob
48C254:  LDR             R0, [R5]
48C256:  STR             R0, [R4]
48C258:  MOV             R0, R4; this
48C25A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C25E:  MOV             R0, R4; p
48C260:  BLX             free
48C264:  LDR             R0, [R5]
48C266:  CMP             R0, #1
48C268:  BNE             loc_48C27C
48C26A:  LDR             R0, =(IsMissionLoad_ptr - 0x48C274)
48C26C:  MOVS            R2, #1
48C26E:  LDR             R1, =(IsMissionSave_ptr - 0x48C276)
48C270:  ADD             R0, PC; IsMissionLoad_ptr
48C272:  ADD             R1, PC; IsMissionSave_ptr
48C274:  LDR             R0, [R0]; IsMissionLoad
48C276:  LDR             R1, [R1]; IsMissionSave
48C278:  STRB            R2, [R0]
48C27A:  STRB            R2, [R1]
48C27C:  MOVS.W          R0, R10,LSL#31
48C280:  BEQ             loc_48C2B8
48C282:  LDR             R0, =(TheText_ptr - 0x48C28A)
48C284:  ADD             R4, SP, #0x48+var_28
48C286:  ADD             R0, PC; TheText_ptr
48C288:  MOV             R1, R4; char *
48C28A:  LDR             R0, [R0]; TheText ; this
48C28C:  BLX             j__ZN5CText26GetNameOfLoadedMissionTextEPc; CText::GetNameOfLoadedMissionText(char *)
48C290:  MOV             R0, R4; this
48C292:  MOVS            R1, #byte_8; void *
48C294:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C298:  MOVS            R0, #4; byte_count
48C29A:  BLX             malloc
48C29E:  MOV             R4, R0
48C2A0:  LDR             R0, =(missionReplaySetting_ptr - 0x48C2A8)
48C2A2:  MOVS            R1, #byte_4; void *
48C2A4:  ADD             R0, PC; missionReplaySetting_ptr
48C2A6:  LDR             R0, [R0]; missionReplaySetting
48C2A8:  LDR             R0, [R0]
48C2AA:  STR             R0, [R4]
48C2AC:  MOV             R0, R4; this
48C2AE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48C2B2:  MOV             R0, R4; p
48C2B4:  BLX             free
48C2B8:  LDR             R0, =(__stack_chk_guard_ptr - 0x48C2C0)
48C2BA:  LDR             R1, [SP,#0x48+var_20]
48C2BC:  ADD             R0, PC; __stack_chk_guard_ptr
48C2BE:  LDR             R0, [R0]; __stack_chk_guard
48C2C0:  LDR             R0, [R0]
48C2C2:  SUBS            R0, R0, R1
48C2C4:  ITTT EQ
48C2C6:  ADDEQ           SP, SP, #0x2C ; ','
48C2C8:  POPEQ.W         {R8-R11}
48C2CC:  POPEQ           {R4-R7,PC}
48C2CE:  BLX             __stack_chk_fail
