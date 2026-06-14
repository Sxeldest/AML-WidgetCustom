; =========================================================
; Game Engine Function: _ZN12CAnimManager12LoadAnimFileEP8RwStreambPA32_Kc
; Address            : 0x38E9EC - 0x38F66C
; =========================================================

38E9EC:  PUSH            {R4-R7,LR}
38E9EE:  ADD             R7, SP, #0xC
38E9F0:  PUSH.W          {R8-R11}
38E9F4:  SUB             SP, SP, #4
38E9F6:  VPUSH           {D8-D14}
38E9FA:  SUB             SP, SP, #0x1B0
38E9FC:  STRD.W          R1, R2, [SP,#0x208+var_1E0]
38EA00:  ADD             R5, SP, #0x208+var_164
38EA02:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x38EA0C)
38EA06:  MOVS            R2, #8; size_t
38EA08:  ADD             R1, PC; __stack_chk_guard_ptr
38EA0A:  LDR             R1, [R1]; __stack_chk_guard
38EA0C:  LDR             R1, [R1]
38EA0E:  STR             R1, [SP,#0x208+var_5C]
38EA10:  MOV             R1, R5; void *
38EA12:  STR             R0, [SP,#0x208+var_1B4]
38EA14:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38EA18:  ADR.W           R1, aAnp2; "ANP2"
38EA1C:  MOV             R0, R5; char *
38EA1E:  MOVS            R2, #4; size_t
38EA20:  BLX             strncmp
38EA24:  CBZ             R0, loc_38EA9C
38EA26:  ADD             R0, SP, #0x208+var_164; char *
38EA28:  ADR.W           R1, aAnp3; "ANP3"
38EA2C:  MOVS            R2, #4; size_t
38EA2E:  BLX             strncmp
38EA32:  CBZ             R0, loc_38EA9C
38EA34:  LDR             R0, [SP,#0x208+var_160]
38EA36:  MOVS            R2, #8; size_t
38EA38:  ANDS.W          R1, R0, #3
38EA3C:  ITTT NE
38EA3E:  ADDNE           R0, #4
38EA40:  SUBNE           R0, R0, R1
38EA42:  STRNE           R0, [SP,#0x208+var_160]
38EA44:  ADD             R1, SP, #0x208+byte_count; void *
38EA46:  LDR             R0, [SP,#0x208+var_1B4]; int
38EA48:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38EA4C:  LDR             R2, [SP,#0x208+var_170]
38EA4E:  ADD             R5, SP, #0x208+var_15C
38EA50:  ANDS.W          R0, R2, #3
38EA54:  ITTT NE
38EA56:  ADDNE           R1, R2, #4
38EA58:  SUBNE           R2, R1, R0; size_t
38EA5A:  STRNE           R2, [SP,#0x208+var_170]
38EA5C:  LDR             R0, [SP,#0x208+var_1B4]; int
38EA5E:  MOV             R1, R5; void *
38EA60:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38EA64:  LDR.W           R0, =(_ZN12CAnimManager16ms_numAnimBlocksE_ptr - 0x38EA6E)
38EA68:  ADDS            R5, #4
38EA6A:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimBlocksE_ptr
38EA6C:  LDR             R0, [R0]; CAnimManager::ms_numAnimBlocks ...
38EA6E:  LDR.W           R8, [R0]; CAnimManager::ms_numAnimBlocks
38EA72:  CMP.W           R8, #1
38EA76:  BLT.W           loc_38EFBA
38EA7A:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38EA84)
38EA7E:  MOVS            R6, #0
38EA80:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38EA82:  LDR             R4, [R0]; CAnimManager::ms_aAnimBlocks ...
38EA84:  MOV             R0, R4; char *
38EA86:  MOV             R1, R5; char *
38EA88:  BLX             strcasecmp
38EA8C:  CMP             R0, #0
38EA8E:  BEQ.W           loc_38EF9A
38EA92:  ADDS            R6, #1
38EA94:  ADDS            R4, #0x20 ; ' '
38EA96:  CMP             R6, R8
38EA98:  BLT             loc_38EA84
38EA9A:  B               loc_38EFBA
38EA9C:  ADD             R0, SP, #0x208+var_164; char *
38EA9E:  ADR.W           R1, aAnp3; "ANP3"
38EAA2:  MOVS            R2, #4; size_t
38EAA4:  BLX             strncmp
38EAA8:  LDR             R4, [SP,#0x208+var_1B4]
38EAAA:  ADD             R1, SP, #0x208+var_15C; void *
38EAAC:  STR             R0, [SP,#0x208+var_1B8]
38EAAE:  MOVS            R2, #0x18; size_t
38EAB0:  MOV             R0, R4; int
38EAB2:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38EAB6:  ADD             R1, SP, #0x208+var_1B0
38EAB8:  MOV             R0, R4
38EABA:  MOVS            R2, #4
38EABC:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
38EAC0:  LDR.W           R0, =(_ZN12CAnimManager16ms_numAnimBlocksE_ptr - 0x38EAC8)
38EAC4:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimBlocksE_ptr
38EAC6:  LDR             R0, [R0]; CAnimManager::ms_numAnimBlocks ...
38EAC8:  LDR.W           R9, [R0]; CAnimManager::ms_numAnimBlocks
38EACC:  CMP.W           R9, #1
38EAD0:  BLT             loc_38EB0E
38EAD2:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38EADE)
38EAD6:  MOVS            R4, #0
38EAD8:  ADD             R5, SP, #0x208+var_15C
38EADA:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38EADC:  LDR             R6, [R0]; CAnimManager::ms_aAnimBlocks ...
38EADE:  MOV             R0, R6; char *
38EAE0:  MOV             R1, R5; char *
38EAE2:  BLX             strcasecmp
38EAE6:  CBZ             R0, loc_38EAF2
38EAE8:  ADDS            R4, #1
38EAEA:  ADDS            R6, #0x20 ; ' '
38EAEC:  CMP             R4, R9
38EAEE:  BLT             loc_38EADE
38EAF0:  B               loc_38EB0E
38EAF2:  CBZ             R6, loc_38EB0E
38EAF4:  LDR             R0, [R6,#0x18]
38EAF6:  LDR.W           R8, [SP,#0x208+var_1B0]
38EAFA:  CBNZ            R0, loc_38EB76
38EAFC:  LDR.W           R0, =(_ZN12CAnimManager16ms_numAnimationsE_ptr - 0x38EB08)
38EB00:  STR.W           R8, [R6,#0x18]
38EB04:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimationsE_ptr
38EB06:  LDR             R0, [R0]; CAnimManager::ms_numAnimations ...
38EB08:  LDR             R0, [R0]; CAnimManager::ms_numAnimations
38EB0A:  STR             R0, [R6,#0x14]
38EB0C:  B               loc_38EB76
38EB0E:  LDR.W           R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38EB1E)
38EB12:  ADD.W           R2, R9, #1
38EB16:  LDR.W           R0, =(_ZN12CAnimManager16ms_numAnimBlocksE_ptr - 0x38EB20)
38EB1A:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38EB1C:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimBlocksE_ptr
38EB1E:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
38EB20:  LDR             R0, [R0]; CAnimManager::ms_numAnimBlocks ...
38EB22:  ADD.W           R6, R1, R9,LSL#5
38EB26:  ADD             R1, SP, #0x208+var_15C; char *
38EB28:  STR             R2, [R0]; CAnimManager::ms_numAnimBlocks
38EB2A:  MOV             R0, R6; char *
38EB2C:  MOVS            R2, #0x10; size_t
38EB2E:  BLX             strncpy
38EB32:  LDR.W           R0, =(_ZN12CAnimManager16ms_numAnimationsE_ptr - 0x38EB40)
38EB36:  MOVS            R4, #0
38EB38:  LDR.W           R1, =(_ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr - 0x38EB46)
38EB3C:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimationsE_ptr
38EB3E:  LDR.W           R8, [SP,#0x208+var_1B0]
38EB42:  ADD             R1, PC; _ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr
38EB44:  LDR             R0, [R0]; CAnimManager::ms_numAnimations ...
38EB46:  LDR             R1, [R1]; "default" ...
38EB48:  ADD.W           R5, R1, #0x10
38EB4C:  LDR             R0, [R0]; CAnimManager::ms_numAnimations
38EB4E:  STRD.W          R0, R8, [R6,#0x14]
38EB52:  MOV             R0, R5; char *
38EB54:  MOV             R1, R6; char *
38EB56:  BLX             strcasecmp
38EB5A:  CBZ             R0, loc_38EB68
38EB5C:  ADDS            R0, R4, #1
38EB5E:  ADDS            R5, #0x30 ; '0'
38EB60:  CMP             R4, #0x75 ; 'u'
38EB62:  MOV             R4, R0
38EB64:  BLT             loc_38EB52
38EB66:  MOVS            R4, #0x76 ; 'v'
38EB68:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38EB70)
38EB6C:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38EB6E:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
38EB70:  ADD.W           R0, R0, R9,LSL#5
38EB74:  STR             R4, [R0,#0x1C]
38EB76:  LDR             R5, [SP,#0x208+var_1B4]
38EB78:  MOVS            R0, #1
38EB7A:  LDR.W           R9, [R6,#0x14]
38EB7E:  CMP.W           R8, #1
38EB82:  STRB            R0, [R6,#0x10]
38EB84:  BLT.W           loc_38EF7C
38EB88:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38EB96)
38EB8C:  ADD.W           R11, SP, #0x208+var_15C
38EB90:  MOVS            R4, #0
38EB92:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38EB94:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
38EB96:  SUBS            R0, R6, R0
38EB98:  ASRS            R0, R0, #5
38EB9A:  STR             R0, [SP,#0x208+var_1C8]
38EB9C:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38EBA4)
38EBA0:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38EBA2:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38EBA4:  STR             R0, [SP,#0x208+var_1CC]
38EBA6:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38EBAE)
38EBAA:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38EBAC:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38EBAE:  STR             R0, [SP,#0x208+var_1E0]
38EBB0:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38EBB8)
38EBB4:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38EBB6:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38EBB8:  STR             R0, [SP,#0x208+var_1D0]
38EBBA:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38EBC2)
38EBBE:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38EBC0:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38EBC2:  STR             R0, [SP,#0x208+var_1E4]
38EBC4:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38EBCC)
38EBC8:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38EBCA:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38EBCC:  STR             R0, [SP,#0x208+var_1D8]
38EBCE:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38EBD6)
38EBD2:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38EBD4:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38EBD6:  STR             R0, [SP,#0x208+var_1D4]
38EBD8:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38EBE0)
38EBDC:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38EBDE:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38EBE0:  STR             R0, [SP,#0x208+var_1DC]
38EBE2:  MOV             R0, R5; int
38EBE4:  MOV             R1, R11; void *
38EBE6:  MOVS            R2, #0x18; size_t
38EBE8:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38EBEC:  ADD             R1, SP, #0x208+var_16C
38EBEE:  MOV             R0, R5
38EBF0:  MOVS            R2, #4
38EBF2:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
38EBF6:  ADD.W           R11, R9, R9,LSL#1
38EBFA:  LDR             R0, [SP,#0x208+var_1CC]
38EBFC:  MOV             R6, R5
38EBFE:  ADD.W           R5, R0, R11,LSL#3
38EC02:  LDR             R0, [SP,#0x208+var_1B8]
38EC04:  CBZ             R0, loc_38EC0C
38EC06:  MOV.W           R8, #0
38EC0A:  B               loc_38EC36
38EC0C:  ADD             R1, SP, #0x208+byte_count
38EC0E:  MOV             R0, R6
38EC10:  MOVS            R2, #4
38EC12:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
38EC16:  ADD             R1, SP, #0x208+var_178
38EC18:  MOV             R0, R6
38EC1A:  MOVS            R2, #4
38EC1C:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
38EC20:  LDR             R1, [SP,#0x208+var_1E0]
38EC22:  LDR             R0, [SP,#0x208+var_178]
38EC24:  ADD.W           R1, R1, R11,LSL#3; unsigned int
38EC28:  AND.W           R0, R0, #1
38EC2C:  STRB            R0, [R1,#0xA]
38EC2E:  LDR             R0, [SP,#0x208+byte_count]; byte_count
38EC30:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
38EC34:  MOV             R8, R0
38EC36:  ADD             R1, SP, #0x208+var_15C; CKeyGen *
38EC38:  MOV             R0, R5; this
38EC3A:  STR             R5, [SP,#0x208+var_1C4]
38EC3C:  BLX             j__ZN19CAnimBlendHierarchy7SetNameEPKc; CAnimBlendHierarchy::SetName(char const*)
38EC40:  LDR             R0, [SP,#0x208+var_1D0]
38EC42:  MOVS            R1, #0
38EC44:  LDR             R6, [SP,#0x208+var_16C]
38EC46:  MOVS            R5, #0xC
38EC48:  ADD.W           R0, R0, R11,LSL#3
38EC4C:  STRB            R1, [R0,#0xB]
38EC4E:  LDR             R1, [SP,#0x208+var_1C8]
38EC50:  STR             R1, [R0,#0xC]
38EC52:  UMULL.W         R1, R2, R6, R5
38EC56:  STRH            R6, [R0,#8]
38EC58:  ADD.W           R0, R1, #8
38EC5C:  CMP             R0, R1
38EC5E:  IT CC
38EC60:  MOVCC.W         R0, #0xFFFFFFFF
38EC64:  CMP             R2, #0
38EC66:  IT NE
38EC68:  MOVNE           R2, #1
38EC6A:  CMP             R2, #0
38EC6C:  IT NE
38EC6E:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
38EC72:  BLX             _Znaj; operator new[](uint)
38EC76:  ADD.W           R10, R0, #8
38EC7A:  CMP             R6, #0
38EC7C:  STRD.W          R5, R6, [R0]
38EC80:  STRD.W          R4, R9, [SP,#0x208+var_1C0]
38EC84:  BEQ             loc_38ED46
38EC86:  ADD.W           R0, R6, R6,LSL#1
38EC8A:  LSLS            R6, R0, #2
38EC8C:  MOV             R0, R10; this
38EC8E:  BLX             j__ZN18CAnimBlendSequenceC2Ev; CAnimBlendSequence::CAnimBlendSequence(void)
38EC92:  SUBS            R6, #0xC
38EC94:  ADD.W           R0, R0, #0xC
38EC98:  BNE             loc_38EC8E
38EC9A:  LDR             R1, [SP,#0x208+var_1D4]
38EC9C:  LDR             R0, [SP,#0x208+var_16C]
38EC9E:  ADD.W           R9, R1, R11,LSL#3
38ECA2:  CMP             R0, #0
38ECA4:  STR.W           R10, [R9,#4]!
38ECA8:  BLE             loc_38ED50
38ECAA:  LDR             R4, [SP,#0x208+var_1B4]
38ECAC:  ADD             R5, SP, #0x208+var_15C
38ECAE:  MOVS            R2, #0x18; size_t
38ECB0:  MOV             R1, R5; void *
38ECB2:  MOV             R0, R4; int
38ECB4:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38ECB8:  ADD             R1, SP, #0x208+var_180
38ECBA:  MOV             R0, R4
38ECBC:  MOVS            R2, #4
38ECBE:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
38ECC2:  ADD             R1, SP, #0x208+var_17C
38ECC4:  MOV             R0, R4
38ECC6:  MOVS            R2, #4
38ECC8:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
38ECCC:  ADD             R1, SP, #0x208+var_184
38ECCE:  MOV             R0, R4
38ECD0:  MOVS            R2, #4
38ECD2:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
38ECD6:  LDR.W           R4, [R9]
38ECDA:  MOV             R1, R5; CKeyGen *
38ECDC:  MOV             R0, R4; this
38ECDE:  BLX             j__ZN18CAnimBlendSequence7SetNameEPKc; CAnimBlendSequence::SetName(char const*)
38ECE2:  LDR             R1, [SP,#0x208+var_184]; int
38ECE4:  MOV             R0, R4; this
38ECE6:  BLX             j__ZN18CAnimBlendSequence10SetBoneTagEi; CAnimBlendSequence::SetBoneTag(int)
38ECEA:  LDR             R0, [SP,#0x208+var_180]
38ECEC:  LDR             R1, [SP,#0x208+var_1DC]
38ECEE:  SUBS            R0, #1; switch 4 cases
38ECF0:  ADD.W           R6, R1, R11,LSL#3
38ECF4:  CMP             R0, #1
38ECF6:  MOV.W           R1, #0
38ECFA:  IT HI
38ECFC:  MOVHI           R1, #1
38ECFE:  CMP             R0, #3
38ED00:  STRB.W          R1, [R6,#0xA]!
38ED04:  BHI             def_38ED06; jumptable 0038ED06 default case
38ED06:  TBB.W           [PC,R0]; switch jump
38ED0A:  DCB 2; jump table for switch statement
38ED0B:  DCB 0x33
38ED0C:  DCB 0x4A
38ED0D:  DCB 0x65
38ED0E:  LDR             R1, [SP,#0x208+var_17C]; jumptable 0038ED06 case 1
38ED10:  MOV             R0, R4; this
38ED12:  MOVS            R2, #0; bool
38ED14:  MOVS            R3, #0; bool
38ED16:  STR.W           R8, [SP,#0x208+var_208]; unsigned __int8 *
38ED1A:  BLX             j__ZN18CAnimBlendSequence12SetNumFramesEibbPh; CAnimBlendSequence::SetNumFrames(int,bool,bool,uchar *)
38ED1E:  LDR             R0, [SP,#0x208+var_17C]
38ED20:  LDR             R5, [SP,#0x208+var_1B4]
38ED22:  LDR             R1, [R4,#8]; void *
38ED24:  ADD.W           R0, R0, R0,LSL#2
38ED28:  LSLS            R2, R0, #2; size_t
38ED2A:  MOV             R0, R5; int
38ED2C:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38ED30:  LDR             R0, [SP,#0x208+var_1B8]
38ED32:  ADD.W           R11, SP, #0x208+var_15C
38ED36:  CMP             R0, #0
38ED38:  BNE             loc_38EE0A
38ED3A:  LDR             R0, [SP,#0x208+var_17C]
38ED3C:  ADD.W           R0, R0, R0,LSL#2
38ED40:  ADD.W           R8, R8, R0,LSL#2
38ED44:  B               loc_38EE02
38ED46:  LDR             R0, [SP,#0x208+var_1E4]
38ED48:  ADD.W           R0, R0, R11,LSL#3
38ED4C:  STR.W           R10, [R0,#4]
38ED50:  LDR             R0, [SP,#0x208+var_1D8]
38ED52:  LDR             R5, [SP,#0x208+var_1B4]
38ED54:  ADD.W           R0, R0, R11,LSL#3
38ED58:  ADD.W           R11, SP, #0x208+var_15C
38ED5C:  ADD.W           R6, R0, #0xA
38ED60:  B               loc_38EF56
38ED62:  LDR             R0, [SP,#0x208+var_1B8]; jumptable 0038ED06 default case
38ED64:  ADD.W           R11, SP, #0x208+var_15C
38ED68:  LDR             R5, [SP,#0x208+var_1B4]
38ED6A:  CMP             R0, #0
38ED6C:  BNE             loc_38EE0A
38ED6E:  B               loc_38EE02
38ED70:  LDR             R1, [SP,#0x208+var_17C]; jumptable 0038ED06 case 2
38ED72:  MOV             R0, R4; this
38ED74:  MOVS            R2, #1; bool
38ED76:  MOVS            R3, #0; bool
38ED78:  STR.W           R8, [SP,#0x208+var_208]; unsigned __int8 *
38ED7C:  BLX             j__ZN18CAnimBlendSequence12SetNumFramesEibbPh; CAnimBlendSequence::SetNumFrames(int,bool,bool,uchar *)
38ED80:  LDR             R0, [SP,#0x208+var_17C]
38ED82:  LDR             R5, [SP,#0x208+var_1B4]
38ED84:  LDR             R1, [R4,#8]; void *
38ED86:  LSLS            R2, R0, #5; size_t
38ED88:  MOV             R0, R5; int
38ED8A:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38ED8E:  LDR             R0, [SP,#0x208+var_1B8]
38ED90:  ADD.W           R11, SP, #0x208+var_15C
38ED94:  CBNZ            R0, loc_38EE0A
38ED96:  LDR             R0, [SP,#0x208+var_17C]
38ED98:  ADD.W           R8, R8, R0,LSL#5
38ED9C:  B               loc_38EE02
38ED9E:  LDR             R1, [SP,#0x208+var_17C]; jumptable 0038ED06 case 3
38EDA0:  MOV             R0, R4; this
38EDA2:  MOVS            R2, #0; bool
38EDA4:  MOVS            R3, #1; bool
38EDA6:  STR.W           R8, [SP,#0x208+var_208]; unsigned __int8 *
38EDAA:  BLX             j__ZN18CAnimBlendSequence12SetNumFramesEibbPh; CAnimBlendSequence::SetNumFrames(int,bool,bool,uchar *)
38EDAE:  LDR             R0, [SP,#0x208+var_17C]
38EDB0:  LDR             R5, [SP,#0x208+var_1B4]
38EDB2:  LDR             R1, [R4,#8]; void *
38EDB4:  ADD.W           R0, R0, R0,LSL#2
38EDB8:  LSLS            R2, R0, #1; size_t
38EDBA:  MOV             R0, R5; int
38EDBC:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38EDC0:  LDR             R0, [SP,#0x208+var_1B8]
38EDC2:  ADD.W           R11, SP, #0x208+var_15C
38EDC6:  CBNZ            R0, loc_38EE0A
38EDC8:  LDR             R0, [SP,#0x208+var_17C]
38EDCA:  ADD.W           R0, R0, R0,LSL#2
38EDCE:  ADD.W           R8, R8, R0,LSL#1
38EDD2:  B               loc_38EE02
38EDD4:  LDR             R1, [SP,#0x208+var_17C]; jumptable 0038ED06 case 4
38EDD6:  MOV             R0, R4; this
38EDD8:  MOVS            R2, #1; bool
38EDDA:  MOVS            R3, #1; bool
38EDDC:  STR.W           R8, [SP,#0x208+var_208]; unsigned __int8 *
38EDE0:  BLX             j__ZN18CAnimBlendSequence12SetNumFramesEibbPh; CAnimBlendSequence::SetNumFrames(int,bool,bool,uchar *)
38EDE4:  LDR             R0, [SP,#0x208+var_17C]
38EDE6:  LDR             R5, [SP,#0x208+var_1B4]
38EDE8:  LDR             R1, [R4,#8]; void *
38EDEA:  LSLS            R2, R0, #4; size_t
38EDEC:  MOV             R0, R5; int
38EDEE:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38EDF2:  LDR             R0, [SP,#0x208+var_1B8]
38EDF4:  ADD.W           R11, SP, #0x208+var_15C
38EDF8:  CMP             R0, #0
38EDFA:  BNE             loc_38EE0A
38EDFC:  LDR             R0, [SP,#0x208+var_17C]
38EDFE:  ADD.W           R8, R8, R0,LSL#4
38EE02:  LDRH            R0, [R4,#4]
38EE04:  ORR.W           R0, R0, #8
38EE08:  STRH            R0, [R4,#4]
38EE0A:  LDR             R0, [SP,#0x208+var_16C]
38EE0C:  CMP             R0, #2
38EE0E:  BLT.W           loc_38EF56
38EE12:  STR             R6, [SP,#0x208+var_1E8]
38EE14:  MOVS            R4, #1
38EE16:  MOVS            R6, #0
38EE18:  MOV             R0, R5; int
38EE1A:  MOV             R1, R11; void *
38EE1C:  MOVS            R2, #0x18; size_t
38EE1E:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38EE22:  ADD             R1, SP, #0x208+var_180
38EE24:  MOV             R0, R5
38EE26:  MOVS            R2, #4
38EE28:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
38EE2C:  ADD             R1, SP, #0x208+var_17C
38EE2E:  MOV             R0, R5
38EE30:  MOVS            R2, #4
38EE32:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
38EE36:  ADD             R1, SP, #0x208+var_184
38EE38:  MOV             R0, R5
38EE3A:  MOVS            R2, #4
38EE3C:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
38EE40:  LDR.W           R0, [R9]
38EE44:  MOV             R1, R11; CKeyGen *
38EE46:  ADD.W           R10, R0, R6
38EE4A:  ADD.W           R5, R10, #0xC
38EE4E:  MOV             R0, R5; this
38EE50:  BLX             j__ZN18CAnimBlendSequence7SetNameEPKc; CAnimBlendSequence::SetName(char const*)
38EE54:  LDR             R1, [SP,#0x208+var_184]; int
38EE56:  MOV             R0, R5; this
38EE58:  BLX             j__ZN18CAnimBlendSequence10SetBoneTagEi; CAnimBlendSequence::SetBoneTag(int)
38EE5C:  LDR             R0, [SP,#0x208+var_180]
38EE5E:  SUBS            R0, #1; switch 4 cases
38EE60:  CMP             R0, #3
38EE62:  BHI             def_38EE64; jumptable 0038EE64 default case
38EE64:  TBB.W           [PC,R0]; switch jump
38EE68:  DCB 2; jump table for switch statement
38EE69:  DCB 0x22
38EE6A:  DCB 0x38
38EE6B:  DCB 0x52
38EE6C:  LDR             R1, [SP,#0x208+var_17C]; jumptable 0038EE64 case 1
38EE6E:  MOV             R0, R5; this
38EE70:  MOVS            R2, #0; bool
38EE72:  MOVS            R3, #0; bool
38EE74:  STR.W           R8, [SP,#0x208+var_208]; unsigned __int8 *
38EE78:  BLX             j__ZN18CAnimBlendSequence12SetNumFramesEibbPh; CAnimBlendSequence::SetNumFrames(int,bool,bool,uchar *)
38EE7C:  LDR             R0, [SP,#0x208+var_17C]
38EE7E:  LDR             R5, [SP,#0x208+var_1B4]
38EE80:  LDR.W           R1, [R10,#0x14]; void *
38EE84:  ADD.W           R0, R0, R0,LSL#2
38EE88:  LSLS            R2, R0, #2; size_t
38EE8A:  MOV             R0, R5; int
38EE8C:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38EE90:  LDR             R0, [SP,#0x208+var_1B8]
38EE92:  CMP             R0, #0
38EE94:  BNE             loc_38EF42
38EE96:  LDR             R0, [SP,#0x208+var_17C]
38EE98:  ADD.W           R0, R0, R0,LSL#2
38EE9C:  ADD.W           R8, R8, R0,LSL#2
38EEA0:  B               loc_38EF36
38EEA2:  LDR             R0, [SP,#0x208+var_1B8]; jumptable 0038EE64 default case
38EEA4:  LDR             R5, [SP,#0x208+var_1B4]
38EEA6:  CMP             R0, #0
38EEA8:  BNE             loc_38EF42
38EEAA:  B               loc_38EF36
38EEAC:  LDR             R1, [SP,#0x208+var_17C]; jumptable 0038EE64 case 2
38EEAE:  MOV             R0, R5; this
38EEB0:  MOVS            R2, #1; bool
38EEB2:  MOVS            R3, #0; bool
38EEB4:  STR.W           R8, [SP,#0x208+var_208]; unsigned __int8 *
38EEB8:  BLX             j__ZN18CAnimBlendSequence12SetNumFramesEibbPh; CAnimBlendSequence::SetNumFrames(int,bool,bool,uchar *)
38EEBC:  LDR             R0, [SP,#0x208+var_17C]
38EEBE:  LDR             R5, [SP,#0x208+var_1B4]
38EEC0:  LDR.W           R1, [R10,#0x14]; void *
38EEC4:  LSLS            R2, R0, #5; size_t
38EEC6:  MOV             R0, R5; int
38EEC8:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38EECC:  LDR             R0, [SP,#0x208+var_1B8]
38EECE:  CBNZ            R0, loc_38EF42
38EED0:  LDR             R0, [SP,#0x208+var_17C]
38EED2:  ADD.W           R8, R8, R0,LSL#5
38EED6:  B               loc_38EF36
38EED8:  LDR             R1, [SP,#0x208+var_17C]; jumptable 0038EE64 case 3
38EEDA:  MOV             R0, R5; this
38EEDC:  MOVS            R2, #0; bool
38EEDE:  MOVS            R3, #1; bool
38EEE0:  STR.W           R8, [SP,#0x208+var_208]; unsigned __int8 *
38EEE4:  BLX             j__ZN18CAnimBlendSequence12SetNumFramesEibbPh; CAnimBlendSequence::SetNumFrames(int,bool,bool,uchar *)
38EEE8:  LDR             R0, [SP,#0x208+var_17C]
38EEEA:  LDR             R5, [SP,#0x208+var_1B4]
38EEEC:  LDR.W           R1, [R10,#0x14]; void *
38EEF0:  ADD.W           R0, R0, R0,LSL#2
38EEF4:  LSLS            R2, R0, #1; size_t
38EEF6:  MOV             R0, R5; int
38EEF8:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38EEFC:  LDR             R0, [SP,#0x208+var_1B8]
38EEFE:  CBNZ            R0, loc_38EF42
38EF00:  LDR             R0, [SP,#0x208+var_17C]
38EF02:  ADD.W           R0, R0, R0,LSL#2
38EF06:  ADD.W           R8, R8, R0,LSL#1
38EF0A:  B               loc_38EF36
38EF0C:  LDR             R1, [SP,#0x208+var_17C]; jumptable 0038EE64 case 4
38EF0E:  MOV             R0, R5; this
38EF10:  MOVS            R2, #1; bool
38EF12:  MOVS            R3, #1; bool
38EF14:  STR.W           R8, [SP,#0x208+var_208]; unsigned __int8 *
38EF18:  BLX             j__ZN18CAnimBlendSequence12SetNumFramesEibbPh; CAnimBlendSequence::SetNumFrames(int,bool,bool,uchar *)
38EF1C:  LDR             R0, [SP,#0x208+var_17C]
38EF1E:  LDR             R5, [SP,#0x208+var_1B4]
38EF20:  LDR.W           R1, [R10,#0x14]; void *
38EF24:  LSLS            R2, R0, #4; size_t
38EF26:  MOV             R0, R5; int
38EF28:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38EF2C:  LDR             R0, [SP,#0x208+var_1B8]
38EF2E:  CBNZ            R0, loc_38EF42
38EF30:  LDR             R0, [SP,#0x208+var_17C]
38EF32:  ADD.W           R8, R8, R0,LSL#4
38EF36:  LDRH.W          R0, [R10,#0x10]
38EF3A:  ORR.W           R0, R0, #8
38EF3E:  STRH.W          R0, [R10,#0x10]
38EF42:  LDR             R0, [SP,#0x208+var_16C]
38EF44:  ADDS            R4, #1
38EF46:  ADDS            R6, #0xC
38EF48:  CMP             R4, R0
38EF4A:  BLT.W           loc_38EE18
38EF4E:  LDR.W           R9, [SP,#0x208+var_1BC]
38EF52:  LDR             R6, [SP,#0x208+var_1E8]
38EF54:  B               loc_38EF5A
38EF56:  LDR.W           R9, [SP,#0x208+var_1BC]
38EF5A:  LDRB            R0, [R6]
38EF5C:  ADD.W           R9, R9, #1
38EF60:  LDR             R4, [SP,#0x208+var_1C0]
38EF62:  CBNZ            R0, loc_38EF72
38EF64:  LDR             R6, [SP,#0x208+var_1C4]
38EF66:  MOV             R0, R6; this
38EF68:  BLX             j__ZN19CAnimBlendHierarchy21RemoveQuaternionFlipsEv; CAnimBlendHierarchy::RemoveQuaternionFlips(void)
38EF6C:  MOV             R0, R6; this
38EF6E:  BLX             j__ZN19CAnimBlendHierarchy13CalcTotalTimeEv; CAnimBlendHierarchy::CalcTotalTime(void)
38EF72:  LDR             R0, [SP,#0x208+var_1B0]
38EF74:  ADDS            R4, #1
38EF76:  CMP             R4, R0
38EF78:  BLT.W           loc_38EBE2
38EF7C:  LDR.W           R0, =(_ZN12CAnimManager16ms_numAnimationsE_ptr - 0x38EF84)
38EF80:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimationsE_ptr
38EF82:  LDR             R0, [R0]; CAnimManager::ms_numAnimations ...
38EF84:  LDR             R0, [R0]; CAnimManager::ms_numAnimations
38EF86:  CMP             R9, R0
38EF88:  BLE.W           loc_38F64A
38EF8C:  LDR.W           R0, =(_ZN12CAnimManager16ms_numAnimationsE_ptr - 0x38EF94)
38EF90:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimationsE_ptr
38EF92:  LDR             R0, [R0]; CAnimManager::ms_numAnimations ...
38EF94:  STR.W           R9, [R0]; CAnimManager::ms_numAnimations
38EF98:  B               loc_38F64A
38EF9A:  CBZ             R4, loc_38EFBA
38EF9C:  LDR             R0, [R4,#0x18]
38EF9E:  LDR             R5, [SP,#0x208+var_1B4]
38EFA0:  CMP             R0, #0
38EFA2:  STR             R4, [SP,#0x208+var_1EC]
38EFA4:  BNE             loc_38F024
38EFA6:  LDR.W           R0, =(_ZN12CAnimManager16ms_numAnimationsE_ptr - 0x38EFB0)
38EFAA:  LDR             R2, [SP,#0x208+var_1EC]
38EFAC:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimationsE_ptr
38EFAE:  LDR             R1, [SP,#0x208+var_15C]
38EFB0:  LDR             R0, [R0]; CAnimManager::ms_numAnimations ...
38EFB2:  STR             R1, [R2,#0x18]
38EFB4:  LDR             R0, [R0]; CAnimManager::ms_numAnimations
38EFB6:  STR             R0, [R2,#0x14]
38EFB8:  B               loc_38F024
38EFBA:  LDR.W           R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38EFCA)
38EFBE:  ADD.W           R2, R8, #1
38EFC2:  LDR.W           R0, =(_ZN12CAnimManager16ms_numAnimBlocksE_ptr - 0x38EFCC)
38EFC6:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38EFC8:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimBlocksE_ptr
38EFCA:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
38EFCC:  LDR             R0, [R0]; CAnimManager::ms_numAnimBlocks ...
38EFCE:  ADD.W           R4, R1, R8,LSL#5
38EFD2:  MOV             R1, R5; char *
38EFD4:  STR             R2, [R0]; CAnimManager::ms_numAnimBlocks
38EFD6:  MOV             R0, R4; char *
38EFD8:  MOVS            R2, #0x10; size_t
38EFDA:  BLX             strncpy
38EFDE:  LDR.W           R0, =(_ZN12CAnimManager16ms_numAnimationsE_ptr - 0x38EFEC)
38EFE2:  MOVS            R6, #0
38EFE4:  LDR.W           R1, =(_ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr - 0x38EFF0)
38EFE8:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimationsE_ptr
38EFEA:  LDR             R2, [SP,#0x208+var_15C]
38EFEC:  ADD             R1, PC; _ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr
38EFEE:  STR             R4, [SP,#0x208+var_1EC]
38EFF0:  LDR             R0, [R0]; CAnimManager::ms_numAnimations ...
38EFF2:  LDR             R1, [R1]; "default" ...
38EFF4:  ADD.W           R5, R1, #0x10
38EFF8:  LDR             R0, [R0]; CAnimManager::ms_numAnimations
38EFFA:  STR             R0, [R4,#0x14]
38EFFC:  STR             R2, [R4,#0x18]
38EFFE:  LDR             R1, [SP,#0x208+var_1EC]; char *
38F000:  MOV             R0, R5; char *
38F002:  BLX             strcasecmp
38F006:  CBZ             R0, loc_38F014
38F008:  ADDS            R0, R6, #1
38F00A:  ADDS            R5, #0x30 ; '0'
38F00C:  CMP             R6, #0x75 ; 'u'
38F00E:  MOV             R6, R0
38F010:  BLT             loc_38EFFE
38F012:  MOVS            R6, #0x76 ; 'v'
38F014:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38F01E)
38F018:  LDR             R5, [SP,#0x208+var_1B4]
38F01A:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38F01C:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
38F01E:  ADD.W           R0, R0, R8,LSL#5
38F022:  STR             R6, [R0,#0x1C]
38F024:  LDR             R2, [SP,#0x208+var_1EC]
38F026:  MOVS            R1, #1
38F028:  LDRD.W          R4, R0, [R2,#0x14]
38F02C:  CMP             R0, #1
38F02E:  STRB            R1, [R2,#0x10]
38F030:  BLT.W           loc_38F636
38F034:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38F048)
38F038:  VMOV.F32        S24, #0.5
38F03C:  VMOV.F32        S28, #8.0
38F040:  ADD.W           R8, SP, #0x208+byte_count
38F044:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38F046:  VLDR            S16, =-4096.0
38F04A:  VLDR            S18, =4096.0
38F04E:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
38F050:  VLDR            S20, =1024.0
38F054:  SUBS            R0, R2, R0
38F056:  VLDR            S22, =60.0
38F05A:  VLDR            S26, =32.0
38F05E:  ASRS            R0, R0, #5
38F060:  STR             R0, [SP,#0x208+var_1F0]
38F062:  ADD             R0, SP, #0x208+var_1B0
38F064:  ADDS            R0, #0x10
38F066:  STR             R0, [SP,#0x208+var_1C8]
38F068:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38F070)
38F06C:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38F06E:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38F070:  STR             R0, [SP,#0x208+var_1F4]
38F072:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38F07A)
38F076:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38F078:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38F07A:  STR             R0, [SP,#0x208+var_1F8]
38F07C:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38F084)
38F080:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38F082:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38F084:  STR             R0, [SP,#0x208+var_1FC]
38F086:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38F08E)
38F08A:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38F08C:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38F08E:  STR             R0, [SP,#0x208+var_204]
38F090:  LDR.W           R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38F098)
38F094:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38F096:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38F098:  STR             R0, [SP,#0x208+var_200]
38F09A:  MOVS            R0, #0
38F09C:  STR             R0, [SP,#0x208+var_1E4]
38F09E:  MOV             R0, R5; int
38F0A0:  MOV             R1, R8; void *
38F0A2:  MOVS            R2, #8; size_t
38F0A4:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38F0A8:  LDR             R2, [SP,#0x208+var_170]
38F0AA:  ADD             R6, SP, #0x208+var_15C
38F0AC:  ANDS.W          R0, R2, #3
38F0B0:  ITTT NE
38F0B2:  ADDNE           R1, R2, #4
38F0B4:  SUBNE           R2, R1, R0; size_t
38F0B6:  STRNE           R2, [SP,#0x208+var_170]
38F0B8:  MOV             R0, R5; int
38F0BA:  MOV             R1, R6; void *
38F0BC:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38F0C0:  ADD.W           R10, R4, R4,LSL#1
38F0C4:  LDR             R0, [SP,#0x208+var_1F4]
38F0C6:  MOV             R1, R6; CKeyGen *
38F0C8:  STR             R4, [SP,#0x208+var_1E8]
38F0CA:  ADD.W           R9, R0, R10,LSL#3
38F0CE:  MOV             R0, R9; this
38F0D0:  BLX             j__ZN19CAnimBlendHierarchy7SetNameEPKc; CAnimBlendHierarchy::SetName(char const*)
38F0D4:  LDR             R0, [SP,#0x208+var_1F0]
38F0D6:  STR.W           R0, [R9,#0xC]
38F0DA:  LDR             R0, [SP,#0x208+var_1DC]
38F0DC:  CMP             R0, #0
38F0DE:  LDR             R0, [SP,#0x208+var_1E0]
38F0E0:  BEQ             loc_38F10C
38F0E2:  LDR             R0, [SP,#0x208+var_1DC]
38F0E4:  LDR             R6, [SP,#0x208+var_1E0]
38F0E6:  LDRB            R0, [R0]
38F0E8:  CBZ             R0, loc_38F106
38F0EA:  LDRD.W          R6, R5, [SP,#0x208+var_1E0]
38F0EE:  MOV             R0, R5; this
38F0F0:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
38F0F4:  LDR.W           R1, [R9]
38F0F8:  LDRB.W          R2, [R5,#0x20]!
38F0FC:  CMP             R0, R1
38F0FE:  IT EQ
38F100:  MOVEQ           R6, #0
38F102:  CMP             R2, #0
38F104:  BNE             loc_38F0EE
38F106:  LDR             R5, [SP,#0x208+var_1B4]
38F108:  AND.W           R0, R6, #1
38F10C:  MOV             R2, R0
38F10E:  LDR             R0, [SP,#0x208+var_1F8]
38F110:  MOVS            R1, #0
38F112:  STR             R2, [SP,#0x208+var_1B8]
38F114:  ADD.W           R0, R0, R10,LSL#3
38F118:  STRB            R1, [R0,#0xB]
38F11A:  ADD             R1, SP, #0x208+var_16C; void *
38F11C:  STRB            R2, [R0,#0xA]
38F11E:  MOV             R0, R5; int
38F120:  MOVS            R2, #8; size_t
38F122:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38F126:  LDR             R0, [SP,#0x208+var_168]
38F128:  MOVS            R2, #8; size_t
38F12A:  ANDS.W          R1, R0, #3
38F12E:  ITTT NE
38F130:  ADDNE           R0, #4
38F132:  SUBNE           R0, R0, R1
38F134:  STRNE           R0, [SP,#0x208+var_168]
38F136:  MOV             R1, R8; void *
38F138:  MOV             R0, R5; int
38F13A:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38F13E:  LDR             R2, [SP,#0x208+var_170]
38F140:  ANDS.W          R0, R2, #3
38F144:  ITTT NE
38F146:  ADDNE           R1, R2, #4
38F148:  SUBNE           R2, R1, R0; size_t
38F14A:  STRNE           R2, [SP,#0x208+var_170]
38F14C:  MOV             R0, R5; int
38F14E:  ADD             R1, SP, #0x208+var_15C; void *
38F150:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38F154:  LDR             R4, [SP,#0x208+var_15C]
38F156:  MOVS            R5, #0xC
38F158:  LDR             R0, [SP,#0x208+var_1FC]
38F15A:  UMULL.W         R1, R2, R4, R5
38F15E:  ADD.W           R0, R0, R10,LSL#3
38F162:  STRH            R4, [R0,#8]
38F164:  ADD.W           R0, R1, #8
38F168:  CMP             R0, R1
38F16A:  IT CC
38F16C:  MOVCC.W         R0, #0xFFFFFFFF
38F170:  CMP             R2, #0
38F172:  IT NE
38F174:  MOVNE           R2, #1
38F176:  CMP             R2, #0
38F178:  IT NE
38F17A:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
38F17E:  BLX             _Znaj; operator new[](uint)
38F182:  STRD.W          R5, R4, [R0]
38F186:  ADD.W           R5, R0, #8
38F18A:  CMP             R4, #0
38F18C:  BEQ.W           loc_38F604
38F190:  ADD.W           R0, R4, R4,LSL#1
38F194:  LSLS            R6, R0, #2
38F196:  MOV             R0, R5; this
38F198:  BLX             j__ZN18CAnimBlendSequenceC2Ev; CAnimBlendSequence::CAnimBlendSequence(void)
38F19C:  SUBS            R6, #0xC
38F19E:  ADD.W           R0, R0, #0xC
38F1A2:  BNE             loc_38F198
38F1A4:  LDR             R0, [SP,#0x208+var_200]
38F1A6:  CMP             R4, #1
38F1A8:  ADD.W           R0, R0, R10,LSL#3
38F1AC:  STR.W           R5, [R0,#4]!
38F1B0:  STR             R0, [SP,#0x208+var_1D0]
38F1B2:  BLT.W           loc_38F60C
38F1B6:  MOVS            R6, #0
38F1B8:  STRD.W          R4, R9, [SP,#0x208+var_1D8]
38F1BC:  BLX             j__Z12CheckForPumpv; CheckForPump(void)
38F1C0:  LDR             R4, [SP,#0x208+var_1B4]
38F1C2:  MOV             R1, R8; void *
38F1C4:  MOVS            R2, #8; size_t
38F1C6:  MOV             R0, R4; int
38F1C8:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38F1CC:  LDR             R0, [SP,#0x208+var_170]
38F1CE:  MOVS            R2, #8; size_t
38F1D0:  ANDS.W          R1, R0, #3
38F1D4:  ITTT NE
38F1D6:  ADDNE           R0, #4
38F1D8:  SUBNE           R0, R0, R1
38F1DA:  STRNE           R0, [SP,#0x208+var_170]
38F1DC:  MOV             R1, R8; void *
38F1DE:  MOV             R0, R4; int
38F1E0:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38F1E4:  LDR             R2, [SP,#0x208+var_170]
38F1E6:  ADD             R5, SP, #0x208+var_15C
38F1E8:  ANDS.W          R0, R2, #3
38F1EC:  ITTT NE
38F1EE:  ADDNE           R1, R2, #4
38F1F0:  SUBNE           R2, R1, R0; size_t
38F1F2:  STRNE           R2, [SP,#0x208+var_170]
38F1F4:  MOV             R0, R4; int
38F1F6:  MOV             R1, R5; void *
38F1F8:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38F1FC:  LDR             R0, [SP,#0x208+var_1D0]
38F1FE:  ADD.W           R1, R6, R6,LSL#1
38F202:  STR             R6, [SP,#0x208+var_1CC]
38F204:  LDR             R0, [R0]
38F206:  ADD.W           R4, R0, R1,LSL#2
38F20A:  MOV             R1, R5; CKeyGen *
38F20C:  MOV             R0, R4; this
38F20E:  BLX             j__ZN18CAnimBlendSequence7SetNameEPKc; CAnimBlendSequence::SetName(char const*)
38F212:  LDR             R0, [SP,#0x208+var_170]
38F214:  CMP             R0, #0x2C ; ','
38F216:  BNE             loc_38F220
38F218:  LDR             R1, [SP,#0x208+var_134]; int
38F21A:  MOV             R0, R4; this
38F21C:  BLX             j__ZN18CAnimBlendSequence10SetBoneTagEi; CAnimBlendSequence::SetBoneTag(int)
38F220:  LDR             R0, [SP,#0x208+var_140]
38F222:  CMP             R0, #0
38F224:  BEQ.W           loc_38F5EE
38F228:  ADD             R5, SP, #0x208+byte_count
38F22A:  LDR             R0, [SP,#0x208+var_1B4]; int
38F22C:  MOVS            R2, #8; size_t
38F22E:  MOV             R1, R5; void *
38F230:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38F234:  ADR.W           R1, aKrts; "KRTS"
38F238:  MOV             R0, R5; char *
38F23A:  MOVS            R2, #4; size_t
38F23C:  BLX             strncmp
38F240:  CBZ             R0, loc_38F282
38F242:  ADR.W           R1, aKrt0; "KRT0"
38F246:  MOV             R0, R5; char *
38F248:  MOVS            R2, #4; size_t
38F24A:  BLX             strncmp
38F24E:  CBZ             R0, loc_38F292
38F250:  ADR.W           R1, aKr00; "KR00"
38F254:  MOV             R0, R5; char *
38F256:  MOVS            R2, #4; size_t
38F258:  BLX             strncmp
38F25C:  CMP             R0, #0
38F25E:  MOV.W           R1, #0
38F262:  MOV.W           R0, #0
38F266:  STR             R1, [SP,#0x208+var_1BC]
38F268:  STR             R0, [SP,#0x208+var_1C4]
38F26A:  BNE             loc_38F2AA
38F26C:  LDR             R1, [SP,#0x208+var_140]; int
38F26E:  MOVS            R0, #0
38F270:  LDR             R3, [SP,#0x208+var_1B8]; bool
38F272:  MOVS            R2, #0; bool
38F274:  STR             R0, [SP,#0x208+var_208]; unsigned __int8 *
38F276:  MOV             R0, R4; this
38F278:  BLX             j__ZN18CAnimBlendSequence12SetNumFramesEibbPh; CAnimBlendSequence::SetNumFrames(int,bool,bool,uchar *)
38F27C:  MOVS            R0, #0
38F27E:  STR             R0, [SP,#0x208+var_1C4]
38F280:  B               loc_38F2AA
38F282:  LDR             R1, [SP,#0x208+var_140]
38F284:  MOVS            R0, #0
38F286:  MOVS            R2, #0
38F288:  STR             R0, [SP,#0x208+var_1C4]
38F28A:  MOVS            R0, #1
38F28C:  STR             R2, [SP,#0x208+var_208]
38F28E:  STR             R0, [SP,#0x208+var_1BC]
38F290:  B               loc_38F2A0
38F292:  MOVS            R0, #0
38F294:  MOVS            R2, #0
38F296:  STR             R0, [SP,#0x208+var_1BC]
38F298:  MOVS            R0, #1
38F29A:  LDR             R1, [SP,#0x208+var_140]; int
38F29C:  STR             R2, [SP,#0x208+var_208]; unsigned __int8 *
38F29E:  STR             R0, [SP,#0x208+var_1C4]
38F2A0:  LDR             R3, [SP,#0x208+var_1B8]; bool
38F2A2:  MOV             R0, R4; this
38F2A4:  MOVS            R2, #1; bool
38F2A6:  BLX             j__ZN18CAnimBlendSequence12SetNumFramesEibbPh; CAnimBlendSequence::SetNumFrames(int,bool,bool,uchar *)
38F2AA:  MOV             R10, R4
38F2AC:  LDRSH.W         R0, [R10,#6]!
38F2B0:  CMP             R0, #1
38F2B2:  BLT.W           loc_38F5EE
38F2B6:  ADD.W           R0, R4, #8
38F2BA:  ADDS            R4, #4
38F2BC:  MOVS            R5, #0
38F2BE:  MOVS            R6, #0
38F2C0:  MOV.W           R8, #0
38F2C4:  MOV.W           R11, #0
38F2C8:  MOV.W           R9, #0
38F2CC:  STR             R0, [SP,#0x208+var_1C0]
38F2CE:  LDR             R0, [SP,#0x208+var_1BC]
38F2D0:  CMP             R0, #1
38F2D2:  BNE             loc_38F394
38F2D4:  LDR             R0, [SP,#0x208+var_1B4]; int
38F2D6:  ADD             R1, SP, #0x208+var_1B0; void *
38F2D8:  MOVS            R2, #0x2C ; ','; size_t
38F2DA:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38F2DE:  LDR             R0, [SP,#0x208+var_1C0]
38F2E0:  LDRH            R2, [R4]
38F2E2:  LDR             R3, [SP,#0x208+var_1B8]
38F2E4:  LDR             R0, [R0]
38F2E6:  AND.W           R2, R2, #2
38F2EA:  LDR             R1, [SP,#0x208+var_1A4]
38F2EC:  CMP             R3, #1
38F2EE:  VLDR            S0, [SP,#0x208+var_1B0]
38F2F2:  VLDR            S2, [SP,#0x208+var_1AC]
38F2F6:  VLDR            S4, [SP,#0x208+var_1A8]
38F2FA:  BNE.W           loc_38F4C6
38F2FE:  VMUL.F32        S4, S4, S16
38F302:  CMP             R2, #0
38F304:  VMUL.F32        S0, S0, S16
38F308:  VMUL.F32        S2, S2, S16
38F30C:  VMOV            S6, R1
38F310:  MOV             R1, R5
38F312:  VMUL.F32        S6, S6, S18
38F316:  VCVT.S32.F32    S4, S4
38F31A:  VCVT.S32.F32    S0, S0
38F31E:  IT NE
38F320:  MOVNE           R1, R6
38F322:  VCVT.S32.F32    S2, S2
38F326:  VMOV            R2, S0
38F32A:  STRH            R2, [R0,R1]
38F32C:  ADD             R0, R1
38F32E:  VMOV            R1, S2
38F332:  STRH            R1, [R0,#2]
38F334:  VMOV            R1, S4
38F338:  VCVT.S32.F32    S0, S6
38F33C:  STRH            R1, [R0,#4]
38F33E:  VMOV            R1, S0
38F342:  STRH            R1, [R0,#6]
38F344:  VLDR            S0, [SP,#0x208+var_1A0]
38F348:  VMUL.F32        S0, S0, S20
38F34C:  VCVT.S32.F32    S0, S0
38F350:  VMOV            R1, S0
38F354:  STRH            R1, [R0,#0xA]
38F356:  VLDR            S0, [SP,#0x208+var_19C]
38F35A:  VMUL.F32        S0, S0, S20
38F35E:  VCVT.S32.F32    S0, S0
38F362:  VMOV            R1, S0
38F366:  STRH            R1, [R0,#0xC]
38F368:  VLDR            S0, [SP,#0x208+var_198]
38F36C:  VMUL.F32        S0, S0, S20
38F370:  VCVT.S32.F32    S0, S0
38F374:  VMOV            R1, S0
38F378:  STRH            R1, [R0,#0xE]
38F37A:  VLDR            S0, [SP,#0x208+var_188]
38F37E:  B               loc_38F56E
38F380:  DCFS -4096.0
38F384:  DCFS 4096.0
38F388:  DCFS 1024.0
38F38C:  DCFS 60.0
38F390:  DCFS 32.0
38F394:  LDR             R0, [SP,#0x208+var_1C4]
38F396:  CMP             R0, #1
38F398:  BNE.W           loc_38F4FC
38F39C:  LDR             R0, [SP,#0x208+var_1B4]; int
38F39E:  ADD             R1, SP, #0x208+var_1B0; void *
38F3A0:  MOVS            R2, #0x20 ; ' '; size_t
38F3A2:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38F3A6:  VLDR            S0, [SP,#0x208+var_1B0]
38F3AA:  VLDR            S2, [SP,#0x208+var_1AC]
38F3AE:  VLDR            S4, [SP,#0x208+var_1A8]
38F3B2:  VNEG.F32        S10, S0
38F3B6:  VNEG.F32        S8, S2
38F3BA:  LDR             R0, [SP,#0x208+var_1C0]
38F3BC:  VNEG.F32        S6, S4
38F3C0:  LDRH            R2, [R4]
38F3C2:  LDR             R3, [SP,#0x208+var_1B8]
38F3C4:  LDR             R0, [R0]
38F3C6:  AND.W           R2, R2, #2
38F3CA:  LDR             R1, [SP,#0x208+var_1A4]
38F3CC:  CMP             R3, #1
38F3CE:  BNE.W           loc_38F582
38F3D2:  VLDR            S12, [SP,#0x208+var_1A0]
38F3D6:  CMP             R2, #0
38F3D8:  MOV             R2, R5
38F3DA:  VMUL.F32        S4, S4, S16
38F3DE:  VABS.F32        S12, S12
38F3E2:  IT NE
38F3E4:  MOVNE           R2, R6
38F3E6:  ADD             R0, R2
38F3E8:  VMUL.F32        S2, S2, S16
38F3EC:  VMUL.F32        S0, S0, S16
38F3F0:  VABS.F32        S6, S6
38F3F4:  VCMPE.F32       S12, S26
38F3F8:  VMRS            APSR_nzcv, FPSCR
38F3FC:  ITT GT
38F3FE:  MOVGT           R3, #0
38F400:  STRGT           R3, [SP,#0x208+var_1A0]
38F402:  VLDR            S12, [SP,#0x208+var_19C]
38F406:  VABS.F32        S12, S12
38F40A:  VCMPE.F32       S12, S26
38F40E:  VMRS            APSR_nzcv, FPSCR
38F412:  VABS.F32        S12, S8
38F416:  VABS.F32        S8, S10
38F41A:  ITT GT
38F41C:  MOVGT           R2, #0
38F41E:  STRGT           R2, [SP,#0x208+var_19C]
38F420:  VLDR            S10, [SP,#0x208+var_198]
38F424:  VABS.F32        S10, S10
38F428:  VCMPE.F32       S10, S26
38F42C:  VMRS            APSR_nzcv, FPSCR
38F430:  VCMPE.F32       S12, S28
38F434:  VMOV            S10, R1
38F438:  VMUL.F32        S10, S10, S18
38F43C:  ITT GT
38F43E:  MOVGT           R2, #0
38F440:  STRGT           R2, [SP,#0x208+var_198]
38F442:  VMRS            APSR_nzcv, FPSCR
38F446:  VCVT.S32.F32    S4, S4
38F44A:  VCVT.S32.F32    S2, S2
38F44E:  VCMPE.F32       S8, S28
38F452:  VCVT.S32.F32    S0, S0
38F456:  VMOV            R1, S2
38F45A:  IT GT
38F45C:  MOVGT           R1, #0
38F45E:  VMRS            APSR_nzcv, FPSCR
38F462:  STRH            R1, [R0,#2]
38F464:  VMOV            R1, S0
38F468:  VCMPE.F32       S6, S28
38F46C:  IT GT
38F46E:  MOVGT           R1, #0
38F470:  VMRS            APSR_nzcv, FPSCR
38F474:  STRH            R1, [R0]
38F476:  VMOV            R1, S4
38F47A:  IT GT
38F47C:  MOVGT           R1, #0
38F47E:  VCVT.S32.F32    S0, S10
38F482:  STRH            R1, [R0,#4]
38F484:  VMOV            R1, S0
38F488:  STRH            R1, [R0,#6]
38F48A:  VLDR            S0, [SP,#0x208+var_1A0]
38F48E:  VMUL.F32        S0, S0, S20
38F492:  VCVT.S32.F32    S0, S0
38F496:  VMOV            R1, S0
38F49A:  STRH            R1, [R0,#0xA]
38F49C:  VLDR            S0, [SP,#0x208+var_19C]
38F4A0:  VMUL.F32        S0, S0, S20
38F4A4:  VCVT.S32.F32    S0, S0
38F4A8:  VMOV            R1, S0
38F4AC:  STRH            R1, [R0,#0xC]
38F4AE:  VLDR            S0, [SP,#0x208+var_198]
38F4B2:  VMUL.F32        S0, S0, S20
38F4B6:  VCVT.S32.F32    S0, S0
38F4BA:  VMOV            R1, S0
38F4BE:  STRH            R1, [R0,#0xE]
38F4C0:  VLDR            S0, [SP,#0x208+var_194]
38F4C4:  B               loc_38F56E
38F4C6:  VNEG.F32        S2, S2
38F4CA:  CMP             R2, #0
38F4CC:  VNEG.F32        S0, S0
38F4D0:  MOV             R2, R8
38F4D2:  VNEG.F32        S4, S4
38F4D6:  IT NE
38F4D8:  MOVNE           R2, R11
38F4DA:  ADD             R0, R2
38F4DC:  STR             R1, [R0,#0xC]
38F4DE:  VSTR            S0, [R0]
38F4E2:  VSTR            S2, [R0,#4]
38F4E6:  VSTR            S4, [R0,#8]
38F4EA:  LDR             R1, [SP,#0x208+var_1C8]
38F4EC:  VLDR            D16, [R1]
38F4F0:  LDR             R1, [R1,#8]
38F4F2:  STR             R1, [R0,#0x1C]
38F4F4:  VSTR            D16, [R0,#0x14]
38F4F8:  LDR             R1, [SP,#0x208+var_188]
38F4FA:  B               loc_38F5D2
38F4FC:  LDR             R0, [SP,#0x208+var_1B4]; int
38F4FE:  ADD             R1, SP, #0x208+var_1B0; void *
38F500:  MOVS            R2, #0x14; size_t
38F502:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
38F506:  LDR             R0, [SP,#0x208+var_1C0]
38F508:  LDRH            R2, [R4]
38F50A:  LDR             R3, [SP,#0x208+var_1B8]
38F50C:  LDR             R0, [R0]
38F50E:  AND.W           R2, R2, #2
38F512:  LDR             R1, [SP,#0x208+var_1A4]
38F514:  CMP             R3, #1
38F516:  VLDR            S0, [SP,#0x208+var_1B0]
38F51A:  VLDR            S2, [SP,#0x208+var_1AC]
38F51E:  VLDR            S4, [SP,#0x208+var_1A8]
38F522:  BNE             loc_38F5AC
38F524:  VMUL.F32        S4, S4, S16
38F528:  CMP             R2, #0
38F52A:  VMUL.F32        S0, S0, S16
38F52E:  VMUL.F32        S2, S2, S16
38F532:  VMOV            S6, R1
38F536:  MOV             R1, R5
38F538:  VMUL.F32        S6, S6, S18
38F53C:  VCVT.S32.F32    S4, S4
38F540:  VCVT.S32.F32    S0, S0
38F544:  IT NE
38F546:  MOVNE           R1, R6
38F548:  VCVT.S32.F32    S2, S2
38F54C:  VMOV            R2, S0
38F550:  STRH            R2, [R0,R1]
38F552:  ADD             R0, R1
38F554:  VMOV            R1, S2
38F558:  STRH            R1, [R0,#2]
38F55A:  VMOV            R1, S4
38F55E:  VCVT.S32.F32    S0, S6
38F562:  STRH            R1, [R0,#4]
38F564:  VMOV            R1, S0
38F568:  STRH            R1, [R0,#6]
38F56A:  VLDR            S0, [SP,#0x208+var_1A0]
38F56E:  VMUL.F32        S0, S0, S22
38F572:  VADD.F32        S0, S0, S24
38F576:  VCVT.S32.F32    S0, S0
38F57A:  VMOV            R1, S0
38F57E:  STRH            R1, [R0,#8]
38F580:  B               loc_38F5D4
38F582:  CMP             R2, #0
38F584:  MOV             R2, R8
38F586:  IT NE
38F588:  MOVNE           R2, R11
38F58A:  ADD             R0, R2
38F58C:  VSTR            S10, [R0]
38F590:  VSTR            S8, [R0,#4]
38F594:  VSTR            S6, [R0,#8]
38F598:  STR             R1, [R0,#0xC]
38F59A:  LDR             R1, [SP,#0x208+var_1C8]
38F59C:  VLDR            D16, [R1]
38F5A0:  LDR             R1, [R1,#8]
38F5A2:  STR             R1, [R0,#0x1C]
38F5A4:  VSTR            D16, [R0,#0x14]
38F5A8:  LDR             R1, [SP,#0x208+var_194]
38F5AA:  B               loc_38F5D2
38F5AC:  VNEG.F32        S2, S2
38F5B0:  CMP             R2, #0
38F5B2:  VNEG.F32        S0, S0
38F5B6:  MOV             R2, R8
38F5B8:  VNEG.F32        S4, S4
38F5BC:  IT NE
38F5BE:  MOVNE           R2, R11
38F5C0:  ADD             R0, R2
38F5C2:  STR             R1, [R0,#0xC]
38F5C4:  VSTR            S0, [R0]
38F5C8:  VSTR            S2, [R0,#4]
38F5CC:  VSTR            S4, [R0,#8]
38F5D0:  LDR             R1, [SP,#0x208+var_1A0]
38F5D2:  STR             R1, [R0,#0x10]
38F5D4:  LDRSH.W         R0, [R10]
38F5D8:  ADD.W           R9, R9, #1
38F5DC:  ADDS            R5, #0xA
38F5DE:  ADDS            R6, #0x10
38F5E0:  ADD.W           R8, R8, #0x14
38F5E4:  ADD.W           R11, R11, #0x20 ; ' '
38F5E8:  CMP             R9, R0
38F5EA:  BLT.W           loc_38F2CE
38F5EE:  LDR             R6, [SP,#0x208+var_1CC]
38F5F0:  ADD.W           R8, SP, #0x208+byte_count
38F5F4:  LDR             R0, [SP,#0x208+var_1D8]
38F5F6:  LDR.W           R9, [SP,#0x208+var_1D4]
38F5FA:  ADDS            R6, #1
38F5FC:  CMP             R6, R0
38F5FE:  BNE.W           loc_38F1BC
38F602:  B               loc_38F60C
38F604:  LDR             R0, [SP,#0x208+var_204]
38F606:  ADD.W           R0, R0, R10,LSL#3
38F60A:  STR             R5, [R0,#4]
38F60C:  LDR             R4, [SP,#0x208+var_1E8]
38F60E:  LDR             R0, [SP,#0x208+var_1B8]
38F610:  LDR             R5, [SP,#0x208+var_1B4]
38F612:  ADDS            R4, #1
38F614:  CBNZ            R0, loc_38F622
38F616:  MOV             R0, R9; this
38F618:  BLX             j__ZN19CAnimBlendHierarchy21RemoveQuaternionFlipsEv; CAnimBlendHierarchy::RemoveQuaternionFlips(void)
38F61C:  MOV             R0, R9; this
38F61E:  BLX             j__ZN19CAnimBlendHierarchy13CalcTotalTimeEv; CAnimBlendHierarchy::CalcTotalTime(void)
38F622:  LDR             R1, [SP,#0x208+var_1E4]
38F624:  LDR             R0, [SP,#0x208+var_1EC]
38F626:  MOV             R2, R1
38F628:  ADDS            R2, #1
38F62A:  LDR             R0, [R0,#0x18]
38F62C:  MOV             R1, R2
38F62E:  CMP             R2, R0
38F630:  STR             R1, [SP,#0x208+var_1E4]
38F632:  BLT.W           loc_38F09E
38F636:  LDR             R0, =(_ZN12CAnimManager16ms_numAnimationsE_ptr - 0x38F63C)
38F638:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimationsE_ptr
38F63A:  LDR             R0, [R0]; CAnimManager::ms_numAnimations ...
38F63C:  LDR             R0, [R0]; CAnimManager::ms_numAnimations
38F63E:  CMP             R4, R0
38F640:  BLE             loc_38F64A
38F642:  LDR             R0, =(_ZN12CAnimManager16ms_numAnimationsE_ptr - 0x38F648)
38F644:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimationsE_ptr
38F646:  LDR             R0, [R0]; CAnimManager::ms_numAnimations ...
38F648:  STR             R4, [R0]; CAnimManager::ms_numAnimations
38F64A:  LDR             R0, =(__stack_chk_guard_ptr - 0x38F652)
38F64C:  LDR             R1, [SP,#0x208+var_5C]
38F64E:  ADD             R0, PC; __stack_chk_guard_ptr
38F650:  LDR             R0, [R0]; __stack_chk_guard
38F652:  LDR             R0, [R0]
38F654:  SUBS            R0, R0, R1
38F656:  ITTTT EQ
38F658:  ADDEQ           SP, SP, #0x1B0
38F65A:  VPOPEQ          {D8-D14}
38F65E:  ADDEQ           SP, SP, #4
38F660:  POPEQ.W         {R8-R11}
38F664:  IT EQ
38F666:  POPEQ           {R4-R7,PC}
38F668:  BLX             __stack_chk_fail
