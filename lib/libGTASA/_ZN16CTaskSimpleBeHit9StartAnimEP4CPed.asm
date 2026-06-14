; =========================================================
; Game Engine Function: _ZN16CTaskSimpleBeHit9StartAnimEP4CPed
; Address            : 0x4DFC58 - 0x4DFD1E
; =========================================================

4DFC58:  PUSH            {R4,R5,R7,LR}
4DFC5A:  ADD             R7, SP, #8
4DFC5C:  MOV             R4, R0
4DFC5E:  MOV             R5, R1
4DFC60:  LDR             R2, [R4,#0x10]
4DFC62:  CMP             R2, #0xBF
4DFC64:  BNE             loc_4DFC74
4DFC66:  LDR             R0, [R4,#0x20]
4DFC68:  CBZ             R0, loc_4DFCC6
4DFC6A:  LDR             R0, [R4,#0x18]
4DFC6C:  CMP             R0, #3
4DFC6E:  BNE             loc_4DFCB4
4DFC70:  MOVS            R2, #0x20 ; ' '; unsigned int
4DFC72:  STR             R2, [R4,#0x10]
4DFC74:  LDRB            R1, [R4,#0xD]
4DFC76:  LDR             R0, [R5,#0x18]; int
4DFC78:  CBZ             R1, loc_4DFC8C
4DFC7A:  MOV             R1, R2
4DFC7C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DFC80:  CMP             R0, #0
4DFC82:  STR             R0, [R4,#0x24]
4DFC84:  BNE             loc_4DFCA4
4DFC86:  MOVS            R0, #1
4DFC88:  STRB            R0, [R4,#0xC]
4DFC8A:  POP             {R4,R5,R7,PC}
4DFC8C:  LDR             R1, [R4,#0x14]; int
4DFC8E:  MOV.W           R3, #0x41000000
4DFC92:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DFC96:  MOVS            R1, #0; float
4DFC98:  STR             R0, [R4,#0x24]
4DFC9A:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DFC9E:  LDR             R0, [R4,#0x24]
4DFCA0:  MOVS            R1, #1
4DFCA2:  STRB            R1, [R4,#0xD]
4DFCA4:  LDR             R1, =(_ZN16CTaskSimpleBeHit17FinishAnimBeHitCBEP21CAnimBlendAssociationPv_ptr - 0x4DFCAC)
4DFCA6:  MOV             R2, R4
4DFCA8:  ADD             R1, PC; _ZN16CTaskSimpleBeHit17FinishAnimBeHitCBEP21CAnimBlendAssociationPv_ptr
4DFCAA:  LDR             R1, [R1]; CTaskSimpleBeHit::FinishAnimBeHitCB(CAnimBlendAssociation *,void *)
4DFCAC:  POP.W           {R4,R5,R7,LR}
4DFCB0:  B.W             sub_18C20C
4DFCB4:  LDR             R0, [R4,#0x20]
4DFCB6:  CMP             R0, #3
4DFCB8:  BEQ             loc_4DFD0A
4DFCBA:  CMP             R0, #2
4DFCBC:  BEQ             loc_4DFD0E
4DFCBE:  CMP             R0, #1
4DFCC0:  BNE             loc_4DFD12
4DFCC2:  MOVS            R2, #0x21 ; '!'
4DFCC4:  B               loc_4DFC72
4DFCC6:  LDR             R0, [R4,#8]
4DFCC8:  CMP             R0, #0
4DFCCA:  BEQ             loc_4DFC6A
4DFCCC:  LDR.W           R0, [R0,#0x440]; this
4DFCD0:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
4DFCD4:  CMP             R0, #0
4DFCD6:  BEQ             loc_4DFC6A
4DFCD8:  LDRSB.W         R1, [R0,#0x24]
4DFCDC:  CMP             R1, #4
4DFCDE:  BLT             loc_4DFC6A
4DFCE0:  LDRSB.W         R0, [R0,#0x25]
4DFCE4:  CMP             R0, #2
4DFCE6:  BGT             loc_4DFC6A
4DFCE8:  LDR             R3, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DFCF8)
4DFCEA:  ADD.W           R2, R0, #0xDB
4DFCEE:  ADD.W           R1, R1, R1,LSL#4
4DFCF2:  STR             R2, [R4,#0x10]
4DFCF4:  ADD             R3, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DFCF6:  LDR             R0, [R3]; CTaskSimpleFight::m_aComboData ...
4DFCF8:  ADD.W           R0, R0, R1,LSL#3
4DFCFC:  MOV             R1, #0xFFFFFDE0
4DFD04:  LDR             R0, [R0,R1]
4DFD06:  STR             R0, [R4,#0x14]
4DFD08:  B               loc_4DFC74
4DFD0A:  MOVS            R2, #0x23 ; '#'
4DFD0C:  B               loc_4DFC72
4DFD0E:  MOVS            R2, #0x22 ; '"'
4DFD10:  B               loc_4DFC72
4DFD12:  LDR             R0, [R4,#0x1C]
4DFD14:  MOVS            R2, #0x20 ; ' '
4DFD16:  CMP             R0, #5
4DFD18:  IT GT
4DFD1A:  MOVGT           R2, #0x25 ; '%'
4DFD1C:  B               loc_4DFC72
