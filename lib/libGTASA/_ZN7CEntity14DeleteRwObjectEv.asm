; =========================================================
; Game Engine Function: _ZN7CEntity14DeleteRwObjectEv
; Address            : 0x3EBBAC - 0x3EBCB6
; =========================================================

3EBBAC:  PUSH            {R4-R7,LR}
3EBBAE:  ADD             R7, SP, #0xC
3EBBB0:  PUSH.W          {R11}
3EBBB4:  MOV             R4, R0
3EBBB6:  LDR             R5, [R4,#0x18]
3EBBB8:  CBZ             R5, loc_3EBBD4
3EBBBA:  LDRB            R0, [R5]
3EBBBC:  CMP             R0, #2
3EBBBE:  BEQ             loc_3EBBDA
3EBBC0:  CMP             R0, #1
3EBBC2:  BNE             loc_3EBBFE
3EBBC4:  MOV             R0, R5
3EBBC6:  LDR             R6, [R5,#4]
3EBBC8:  BLX             j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
3EBBCC:  MOV             R0, R6
3EBBCE:  BLX             j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
3EBBD2:  B               loc_3EBBFE
3EBBD4:  POP.W           {R11}
3EBBD8:  POP             {R4-R7,PC}
3EBBDA:  MOV             R0, R5
3EBBDC:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
3EBBE0:  CBZ             R0, loc_3EBBF8
3EBBE2:  LDR             R0, [R0,#0x18]
3EBBE4:  BLX             j_RpSkinGeometryGetSkin
3EBBE8:  CBZ             R0, loc_3EBBF8
3EBBEA:  LDR             R0, =(_Z26AtomicRemoveAnimFromSkinCBP8RpAtomicPv_ptr - 0x3EBBF2)
3EBBEC:  MOVS            R2, #0
3EBBEE:  ADD             R0, PC; _Z26AtomicRemoveAnimFromSkinCBP8RpAtomicPv_ptr
3EBBF0:  LDR             R1, [R0]; AtomicRemoveAnimFromSkinCB(RpAtomic *,void *)
3EBBF2:  MOV             R0, R5
3EBBF4:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
3EBBF8:  MOV             R0, R5
3EBBFA:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
3EBBFE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EBC0A)
3EBC00:  MOVS            R5, #0
3EBC02:  LDRSH.W         R1, [R4,#0x26]
3EBC06:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EBC08:  STR             R5, [R4,#0x18]
3EBC0A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EBC0C:  LDR.W           R0, [R0,R1,LSL#2]; this
3EBC10:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
3EBC14:  LDR             R0, [R4,#0x2C]
3EBC16:  BLX             j__ZN10CStreaming12RemoveEntityEP5CLinkIP7CEntityE; CStreaming::RemoveEntity(CLink<CEntity *> *)
3EBC1A:  LDRB.W          R0, [R4,#0x3A]
3EBC1E:  STR             R5, [R4,#0x2C]
3EBC20:  AND.W           R0, R0, #7
3EBC24:  CMP             R0, #1
3EBC26:  BNE             loc_3EBC34
3EBC28:  LDR             R0, =(gBuildings_ptr - 0x3EBC2E)
3EBC2A:  ADD             R0, PC; gBuildings_ptr
3EBC2C:  LDR             R0, [R0]; gBuildings
3EBC2E:  LDR             R1, [R0]
3EBC30:  SUBS            R1, #1
3EBC32:  STR             R1, [R0]
3EBC34:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EBC3E)
3EBC36:  LDRSH.W         R1, [R4,#0x26]
3EBC3A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EBC3C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EBC3E:  LDR.W           R5, [R0,R1,LSL#2]
3EBC42:  LDR             R0, [R5]
3EBC44:  LDR             R1, [R0,#0x14]
3EBC46:  MOV             R0, R5
3EBC48:  BLX             R1
3EBC4A:  CMP             R0, #5
3EBC4C:  BNE             loc_3EBCA2
3EBC4E:  LDRB.W          R0, [R5,#0x29]
3EBC52:  LSLS            R0, R0, #0x1F
3EBC54:  BEQ             loc_3EBCA2
3EBC56:  LDRB.W          R0, [R4,#0x3A]
3EBC5A:  AND.W           R0, R0, #7
3EBC5E:  CMP             R0, #4
3EBC60:  BEQ             loc_3EBCA2
3EBC62:  LDR             R0, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x3EBC68)
3EBC64:  ADD             R0, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
3EBC66:  LDR             R0, [R0]; CWorld::ms_listMovingEntityPtrs ...
3EBC68:  LDR             R1, [R0]; CWorld::ms_listMovingEntityPtrs
3EBC6A:  CBZ             R1, loc_3EBCA2
3EBC6C:  MOV             R0, R1; void *
3EBC6E:  LDR             R2, [R0]
3EBC70:  CMP             R2, R4
3EBC72:  BEQ             loc_3EBC7C
3EBC74:  LDR             R0, [R0,#4]
3EBC76:  CMP             R0, #0
3EBC78:  BNE             loc_3EBC6E
3EBC7A:  B               loc_3EBCA2
3EBC7C:  CMP             R1, R0
3EBC7E:  BNE             loc_3EBC8A
3EBC80:  LDR             R1, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x3EBC88)
3EBC82:  LDR             R2, [R0,#4]
3EBC84:  ADD             R1, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
3EBC86:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs ...
3EBC88:  STR             R2, [R1]; CWorld::ms_listMovingEntityPtrs
3EBC8A:  LDR             R1, [R0,#8]
3EBC8C:  CMP             R1, #0
3EBC8E:  ITT NE
3EBC90:  LDRNE           R2, [R0,#4]
3EBC92:  STRNE           R2, [R1,#4]
3EBC94:  LDR             R1, [R0,#4]
3EBC96:  CMP             R1, #0
3EBC98:  ITT NE
3EBC9A:  LDRNE           R2, [R0,#8]
3EBC9C:  STRNE           R2, [R1,#8]
3EBC9E:  BLX             j__ZN18CPtrNodeDoubleLinkdlEPv; CPtrNodeDoubleLink::operator delete(void *)
3EBCA2:  MOV             R0, R4; this
3EBCA4:  BLX             j__ZN7CEntity14DestroyEffectsEv; CEntity::DestroyEffects(void)
3EBCA8:  MOV             R0, R4; this
3EBCAA:  POP.W           {R11}
3EBCAE:  POP.W           {R4-R7,LR}
3EBCB2:  B.W             j_j__ZN7CEntity25RemoveEscalatorsForEntityEv; j_CEntity::RemoveEscalatorsForEntity(void)
