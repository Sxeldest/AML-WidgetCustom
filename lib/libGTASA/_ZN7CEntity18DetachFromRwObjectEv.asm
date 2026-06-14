; =========================================================
; Game Engine Function: _ZN7CEntity18DetachFromRwObjectEv
; Address            : 0x3EBB04 - 0x3EBBA0
; =========================================================

3EBB04:  PUSH            {R4,R5,R7,LR}
3EBB06:  ADD             R7, SP, #8
3EBB08:  MOV             R4, R0
3EBB0A:  LDR             R0, [R4,#0x18]
3EBB0C:  CMP             R0, #0
3EBB0E:  BEQ             loc_3EBB9A
3EBB10:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EBB1A)
3EBB12:  LDRSH.W         R1, [R4,#0x26]
3EBB16:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EBB18:  LDR             R5, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EBB1A:  LDR.W           R0, [R5,R1,LSL#2]; this
3EBB1E:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
3EBB22:  LDR             R0, [R4,#0x2C]
3EBB24:  BLX             j__ZN10CStreaming12RemoveEntityEP5CLinkIP7CEntityE; CStreaming::RemoveEntity(CLink<CEntity *> *)
3EBB28:  LDRSH.W         R0, [R4,#0x26]
3EBB2C:  MOVS            R1, #0
3EBB2E:  STR             R1, [R4,#0x2C]
3EBB30:  LDR.W           R5, [R5,R0,LSL#2]
3EBB34:  LDR             R0, [R5]
3EBB36:  LDR             R1, [R0,#0x14]
3EBB38:  MOV             R0, R5
3EBB3A:  BLX             R1
3EBB3C:  CMP             R0, #5
3EBB3E:  BNE             loc_3EBB94
3EBB40:  LDRB.W          R0, [R5,#0x29]
3EBB44:  LSLS            R0, R0, #0x1F
3EBB46:  BEQ             loc_3EBB94
3EBB48:  LDRB.W          R0, [R4,#0x3A]
3EBB4C:  AND.W           R0, R0, #7
3EBB50:  CMP             R0, #4
3EBB52:  BEQ             loc_3EBB94
3EBB54:  LDR             R0, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x3EBB5A)
3EBB56:  ADD             R0, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
3EBB58:  LDR             R0, [R0]; CWorld::ms_listMovingEntityPtrs ...
3EBB5A:  LDR             R1, [R0]; CWorld::ms_listMovingEntityPtrs
3EBB5C:  CBZ             R1, loc_3EBB94
3EBB5E:  MOV             R0, R1; void *
3EBB60:  LDR             R2, [R0]
3EBB62:  CMP             R2, R4
3EBB64:  BEQ             loc_3EBB6E
3EBB66:  LDR             R0, [R0,#4]
3EBB68:  CMP             R0, #0
3EBB6A:  BNE             loc_3EBB60
3EBB6C:  B               loc_3EBB94
3EBB6E:  CMP             R1, R0
3EBB70:  BNE             loc_3EBB7C
3EBB72:  LDR             R1, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x3EBB7A)
3EBB74:  LDR             R2, [R0,#4]
3EBB76:  ADD             R1, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
3EBB78:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs ...
3EBB7A:  STR             R2, [R1]; CWorld::ms_listMovingEntityPtrs
3EBB7C:  LDR             R1, [R0,#8]
3EBB7E:  CMP             R1, #0
3EBB80:  ITT NE
3EBB82:  LDRNE           R2, [R0,#4]
3EBB84:  STRNE           R2, [R1,#4]
3EBB86:  LDR             R1, [R0,#4]
3EBB88:  CMP             R1, #0
3EBB8A:  ITT NE
3EBB8C:  LDRNE           R2, [R0,#8]
3EBB8E:  STRNE           R2, [R1,#8]
3EBB90:  BLX             j__ZN18CPtrNodeDoubleLinkdlEPv; CPtrNodeDoubleLink::operator delete(void *)
3EBB94:  MOV             R0, R4; this
3EBB96:  BLX             j__ZN7CEntity14DestroyEffectsEv; CEntity::DestroyEffects(void)
3EBB9A:  MOVS            R0, #0
3EBB9C:  STR             R0, [R4,#0x18]
3EBB9E:  POP             {R4,R5,R7,PC}
