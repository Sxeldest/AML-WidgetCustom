; =========================================================
; Game Engine Function: _ZN14CTaskSimpleDie9StartAnimEP4CPed
; Address            : 0x4EAF14 - 0x4EAF82
; =========================================================

4EAF14:  PUSH            {R4,R5,R7,LR}
4EAF16:  ADD             R7, SP, #8
4EAF18:  MOV             R4, R1
4EAF1A:  MOV             R5, R0
4EAF1C:  LDR             R1, [R5,#0x10]
4EAF1E:  LDR             R0, [R4,#0x18]; int
4EAF20:  CBZ             R1, loc_4EAF2C
4EAF22:  LDRD.W          R2, R3, [R5,#0x14]
4EAF26:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClumpP19CAnimBlendHierarchyif; CAnimManager::BlendAnimation(RpClump *,CAnimBlendHierarchy *,int,float)
4EAF2A:  B               loc_4EAF36
4EAF2C:  LDRD.W          R1, R2, [R5,#8]; unsigned int
4EAF30:  LDR             R3, [R5,#0x18]
4EAF32:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4EAF36:  LDR             R1, =(_ZN14CTaskSimpleDie15FinishAnimDieCBEP21CAnimBlendAssociationPv_ptr - 0x4EAF40)
4EAF38:  MOV             R2, R5; void *
4EAF3A:  STR             R0, [R5,#0x24]
4EAF3C:  ADD             R1, PC; _ZN14CTaskSimpleDie15FinishAnimDieCBEP21CAnimBlendAssociationPv_ptr
4EAF3E:  LDR             R1, [R1]; CTaskSimpleDie::FinishAnimDieCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4EAF40:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4EAF44:  LDR             R0, [R5,#0x24]
4EAF46:  LDRH            R1, [R0,#0x2E]
4EAF48:  BIC.W           R1, R1, #8
4EAF4C:  STRH            R1, [R0,#0x2E]
4EAF4E:  VLDR            S0, [R5,#0x1C]
4EAF52:  VCMPE.F32       S0, #0.0
4EAF56:  VMRS            APSR_nzcv, FPSCR
4EAF5A:  ITT GT
4EAF5C:  LDRGT           R0, [R5,#0x24]
4EAF5E:  VSTRGT          S0, [R0,#0x24]
4EAF62:  MOV             R0, R4; this
4EAF64:  BLX             j__ZN4CPed8ClearAllEv; CPed::ClearAll(void)
4EAF68:  MOVS            R0, #0
4EAF6A:  STR.W           R0, [R4,#0x544]
4EAF6E:  MOV             R0, R4; this
4EAF70:  BLX             j__ZN4CPed19StopNonPartialAnimsEv; CPed::StopNonPartialAnims(void)
4EAF74:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EAF7A)
4EAF76:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EAF78:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EAF7A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4EAF7C:  STR.W           R0, [R4,#0x758]
4EAF80:  POP             {R4,R5,R7,PC}
