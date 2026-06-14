; =========================================================
; Game Engine Function: _ZN8CClothes17ConstructPedModelEjR15CPedClothesDescPKS0_b
; Address            : 0x457E38 - 0x457ED8
; =========================================================

457E38:  PUSH            {R4-R7,LR}
457E3A:  ADD             R7, SP, #0xC
457E3C:  PUSH.W          {R8-R10}
457E40:  SUB             SP, SP, #8
457E42:  MOV             R5, R3
457E44:  MOV             R8, R2
457E46:  MOV             R9, R1
457E48:  MOV             R4, R0
457E4A:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
457E4E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x457E56)
457E50:  LDR             R1, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x457E58)
457E52:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
457E54:  ADD             R1, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
457E56:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
457E58:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool ...
457E5A:  LDR.W           R4, [R0,R4,LSL#2]
457E5E:  LDR             R0, [R1]; CTxdStore::ms_pTxdPool
457E60:  LDRSH.W         R1, [R4,#0x20]
457E64:  LDR             R0, [R0]
457E66:  LDR             R6, [R4,#0x34]
457E68:  RSB.W           R1, R1, R1,LSL#3
457E6C:  LDR.W           R1, [R0,R1,LSL#3]
457E70:  CBNZ            R1, loc_457E92
457E72:  LDR             R0, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x457E78)
457E74:  ADD             R0, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
457E76:  LDR.W           R10, [R0]; CTxdStore::ms_pTxdPool ...
457E7A:  BLX             j__Z21RwTexDictionaryCreatev; RwTexDictionaryCreate(void)
457E7E:  MOV             R1, R0
457E80:  LDR.W           R0, [R10]; CTxdStore::ms_pTxdPool
457E84:  LDRSH.W         R2, [R4,#0x20]
457E88:  LDR             R0, [R0]
457E8A:  RSB.W           R2, R2, R2,LSL#3
457E8E:  STR.W           R1, [R0,R2,LSL#3]
457E92:  MOV             R0, R6
457E94:  MOV             R2, R9
457E96:  MOV             R3, R8
457E98:  STR             R5, [SP,#0x20+var_20]
457E9A:  BLX             j__ZN15CClothesBuilder18CreateSkinnedClumpEP7RpClumpP15RwTexDictionaryR15CPedClothesDescPKS4_b; CClothesBuilder::CreateSkinnedClump(RpClump *,RwTexDictionary *,CPedClothesDesc &,CPedClothesDesc const*,bool)
457E9E:  MOV             R5, R0
457EA0:  CBZ             R5, loc_457ECA
457EA2:  BLX             j__ZN8CClothes23RequestMotionGroupAnimsEv; CClothes::RequestMotionGroupAnims(void)
457EA6:  MOV             R0, R4; this
457EA8:  BLX             j__ZN14CBaseModelInfo19AddTexDictionaryRefEv; CBaseModelInfo::AddTexDictionaryRef(void)
457EAC:  LDR             R0, [R4]
457EAE:  LDR             R1, [R0,#0x24]
457EB0:  MOV             R0, R4
457EB2:  BLX             R1
457EB4:  LDR             R0, [R4]
457EB6:  MOV             R1, R5
457EB8:  LDR             R2, [R0,#0x44]
457EBA:  MOV             R0, R4
457EBC:  BLX             R2
457EBE:  MOV             R0, R4; this
457EC0:  BLX             j__ZN14CBaseModelInfo22RemoveTexDictionaryRefEv; CBaseModelInfo::RemoveTexDictionaryRef(void)
457EC4:  MOVS            R0, #(stderr+1); this
457EC6:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
457ECA:  ADD             SP, SP, #8
457ECC:  POP.W           {R8-R10}
457ED0:  POP.W           {R4-R7,LR}
457ED4:  B.W             sub_19F7CC
