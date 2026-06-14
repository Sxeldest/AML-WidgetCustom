; =========================================================
; Game Engine Function: _ZN7CEntity16AttachToRwObjectEP8RwObjectb
; Address            : 0x3EBA30 - 0x3EBAF4
; =========================================================

3EBA30:  PUSH            {R4,R6,R7,LR}
3EBA32:  ADD             R7, SP, #8
3EBA34:  MOV             R4, R0
3EBA36:  LDRB            R0, [R4,#0x1C]
3EBA38:  LSLS            R0, R0, #0x18
3EBA3A:  BMI             loc_3EBA3E
3EBA3C:  POP             {R4,R6,R7,PC}
3EBA3E:  CMP             R1, #0
3EBA40:  STR             R1, [R4,#0x18]
3EBA42:  IT EQ
3EBA44:  POPEQ           {R4,R6,R7,PC}
3EBA46:  CMP             R2, #1
3EBA48:  BNE             loc_3EBA6A
3EBA4A:  LDR             R0, [R4,#0x14]
3EBA4C:  CBNZ            R0, loc_3EBA60
3EBA4E:  MOV             R0, R4; this
3EBA50:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EBA54:  LDR             R1, [R4,#0x14]; CMatrix *
3EBA56:  ADDS            R0, R4, #4; this
3EBA58:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EBA5C:  LDRD.W          R0, R1, [R4,#0x14]
3EBA60:  LDR             R1, [R1,#4]
3EBA62:  ADDS            R1, #0x10
3EBA64:  BLX             j__ZN7CMatrix12UpdateMatrixEP11RwMatrixTag; CMatrix::UpdateMatrix(RwMatrixTag *)
3EBA68:  LDR             R1, [R4,#0x18]
3EBA6A:  LDRB            R0, [R1]
3EBA6C:  CMP             R0, #2
3EBA6E:  BNE             loc_3EBAD0
3EBA70:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EBA7A)
3EBA72:  LDRSH.W         R1, [R4,#0x26]; unsigned int
3EBA76:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EBA78:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EBA7A:  LDR.W           R0, [R0,R1,LSL#2]
3EBA7E:  LDRB.W          R0, [R0,#0x29]
3EBA82:  LSLS            R0, R0, #0x1F
3EBA84:  BEQ             loc_3EBAD0
3EBA86:  LDRB.W          R0, [R4,#0x3A]
3EBA8A:  AND.W           R0, R0, #7
3EBA8E:  CMP             R0, #4
3EBA90:  BNE             loc_3EBAAC
3EBA92:  LDR.W           R0, [R4,#0xB8]
3EBA96:  CMP             R0, #0
3EBA98:  ITT EQ
3EBA9A:  MOVEQ           R0, R4; this
3EBA9C:  BLXEQ           j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
3EBAA0:  LDR             R0, [R4]
3EBAA2:  MOVS            R1, #0
3EBAA4:  LDR             R2, [R0,#0x14]
3EBAA6:  MOV             R0, R4
3EBAA8:  BLX             R2
3EBAAA:  B               loc_3EBAD0
3EBAAC:  MOVS            R0, #(byte_9+3); this
3EBAAE:  BLX             j__ZN18CPtrNodeDoubleLinknwEj; CPtrNodeDoubleLink::operator new(uint)
3EBAB2:  LDR             R1, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x3EBABC)
3EBAB4:  MOVS            R2, #0
3EBAB6:  STR             R4, [R0]
3EBAB8:  ADD             R1, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
3EBABA:  STR             R2, [R0,#8]
3EBABC:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs ...
3EBABE:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs
3EBAC0:  STR             R1, [R0,#4]
3EBAC2:  CMP             R1, #0
3EBAC4:  IT NE
3EBAC6:  STRNE           R0, [R1,#8]
3EBAC8:  LDR             R1, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x3EBACE)
3EBACA:  ADD             R1, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
3EBACC:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs ...
3EBACE:  STR             R0, [R1]; CWorld::ms_listMovingEntityPtrs
3EBAD0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EBADA)
3EBAD2:  LDRSH.W         R1, [R4,#0x26]
3EBAD6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EBAD8:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EBADA:  LDR.W           R0, [R0,R1,LSL#2]; this
3EBADE:  BLX             j__ZN14CBaseModelInfo6AddRefEv; CBaseModelInfo::AddRef(void)
3EBAE2:  MOV             R0, R4; this
3EBAE4:  BLX             j__ZN10CStreaming9AddEntityEP7CEntity; CStreaming::AddEntity(CEntity *)
3EBAE8:  STR             R0, [R4,#0x2C]
3EBAEA:  MOV             R0, R4; this
3EBAEC:  POP.W           {R4,R6,R7,LR}
3EBAF0:  B.W             _ZN7CEntity13CreateEffectsEv; CEntity::CreateEffects(void)
