; =========================================================
; Game Engine Function: _ZN15CTaskSimpleLand10ProcessPedEP4CPed
; Address            : 0x52CC94 - 0x52CE06
; =========================================================

52CC94:  PUSH            {R4,R5,R7,LR}
52CC96:  ADD             R7, SP, #8
52CC98:  VPUSH           {D8}
52CC9C:  MOV             R4, R0
52CC9E:  MOV             R5, R1
52CCA0:  LDRB            R0, [R4,#0x10]
52CCA2:  TST.W           R0, #1
52CCA6:  BNE             loc_52CD34
52CCA8:  LSLS            R1, R0, #0x1E
52CCAA:  BMI             loc_52CCD0
52CCAC:  LDR             R1, [R4,#8]
52CCAE:  CBNZ            R1, loc_52CCD0
52CCB0:  LDR             R2, [R4,#0xC]; unsigned int
52CCB2:  MOVS            R3, #0
52CCB4:  LDR             R0, [R5,#0x18]; int
52CCB6:  MOVT            R3, #0x42C8
52CCBA:  MOVS            R1, #0; int
52CCBC:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52CCC0:  LDR             R1, =(_ZN15CTaskSimpleLand16FinishAnimLandCBEP21CAnimBlendAssociationPv_ptr - 0x52CCCA)
52CCC2:  MOV             R2, R4; void *
52CCC4:  STR             R0, [R4,#8]
52CCC6:  ADD             R1, PC; _ZN15CTaskSimpleLand16FinishAnimLandCBEP21CAnimBlendAssociationPv_ptr
52CCC8:  LDR             R1, [R1]; CTaskSimpleLand::FinishAnimLandCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52CCCA:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52CCCE:  LDRB            R0, [R4,#0x10]
52CCD0:  LSLS            R0, R0, #0x1D
52CCD2:  BPL.W           loc_52CDFE
52CCD6:  VMOV.F32        S0, #1.0
52CCDA:  LDR             R0, [R5,#0x14]; this
52CCDC:  VLDR            S2, [R0,#0x28]
52CCE0:  VCMP.F32        S2, S0
52CCE4:  VMRS            APSR_nzcv, FPSCR
52CCE8:  BNE             loc_52CD14
52CCEA:  VLDR            S0, [R5,#0x54]
52CCEE:  VCMP.F32        S0, #0.0
52CCF2:  VMRS            APSR_nzcv, FPSCR
52CCF6:  BNE             loc_52CD14
52CCF8:  VLDR            S0, [R5,#0x58]
52CCFC:  VCMP.F32        S0, #0.0
52CD00:  VMRS            APSR_nzcv, FPSCR
52CD04:  BNE             loc_52CD14
52CD06:  VLDR            S0, [R5,#0x5C]
52CD0A:  VCMP.F32        S0, #0.0
52CD0E:  VMRS            APSR_nzcv, FPSCR
52CD12:  BEQ             loc_52CD92
52CD14:  ADDW            R1, R5, #0x55C
52CD18:  CMP             R0, #0
52CD1A:  VLDR            S0, [R1]
52CD1E:  MOV.W           R1, #0
52CD22:  STRD.W          R1, R1, [R5,#0x54]
52CD26:  STR             R1, [R5,#0x5C]
52CD28:  BEQ             loc_52CD8E
52CD2A:  VMOV            R1, S0; x
52CD2E:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
52CD32:  B               loc_52CD92
52CD34:  LDR.W           R0, [R5,#0x484]
52CD38:  BIC.W           R0, R0, #0x400
52CD3C:  STR.W           R0, [R5,#0x484]
52CD40:  LDRB            R0, [R4,#0x10]
52CD42:  LSLS            R0, R0, #0x1E
52CD44:  BMI             loc_52CD86
52CD46:  LDR             R0, [R5,#0x18]
52CD48:  MOVS            R1, #0
52CD4A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52CD4E:  CMP             R0, #0
52CD50:  STR             R0, [R4,#8]
52CD52:  ITT NE
52CD54:  MOVNE           R1, #0; float
52CD56:  BLXNE           j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
52CD5A:  LDR             R0, [R5,#0x18]
52CD5C:  MOVS            R1, #1
52CD5E:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52CD62:  CMP             R0, #0
52CD64:  STR             R0, [R4,#8]
52CD66:  ITT NE
52CD68:  MOVNE           R1, #0; float
52CD6A:  BLXNE           j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
52CD6E:  LDR             R0, [R5,#0x18]
52CD70:  MOVS            R1, #2
52CD72:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52CD76:  CMP             R0, #0
52CD78:  STR             R0, [R4,#8]
52CD7A:  ITT NE
52CD7C:  MOVNE           R1, #0; float
52CD7E:  BLXNE           j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
52CD82:  MOVS            R0, #0
52CD84:  STR             R0, [R4,#8]
52CD86:  MOVS            R0, #1
52CD88:  VPOP            {D8}
52CD8C:  POP             {R4,R5,R7,PC}
52CD8E:  VSTR            S0, [R5,#0x10]
52CD92:  LDR.W           R0, [R5,#0x484]
52CD96:  ORR.W           R0, R0, #0x400
52CD9A:  STR.W           R0, [R5,#0x484]
52CD9E:  MOV             R0, R5; this
52CDA0:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52CDA4:  CMP             R0, #1
52CDA6:  BNE             loc_52CDE6
52CDA8:  MOV             R0, R5; this
52CDAA:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
52CDAE:  LDR.W           R1, [R5,#0x450]
52CDB2:  CMP             R1, #7
52CDB4:  BNE             loc_52CDC8
52CDB6:  MOVS            R1, #0; int
52CDB8:  BLX             j__ZN4CPad9GetSprintEi; CPad::GetSprint(int)
52CDBC:  CMP             R0, #1
52CDBE:  ITTT EQ
52CDC0:  LDREQ           R0, [R4,#8]
52CDC2:  MOVEQ.W         R1, #0x40000000
52CDC6:  STREQ           R1, [R0,#0x24]
52CDC8:  LDR             R0, [R4,#0xC]
52CDCA:  CMP             R0, #0xA
52CDCC:  BEQ             loc_52CDE6
52CDCE:  LDR             R5, [R4,#8]
52CDD0:  MOVS            R0, #2
52CDD2:  VLDR            S16, [R5,#0x24]
52CDD6:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
52CDDA:  VMOV            S0, R0
52CDDE:  VMUL.F32        S0, S16, S0
52CDE2:  VSTR            S0, [R5,#0x24]
52CDE6:  LDRB            R0, [R4,#0x10]
52CDE8:  TST.W           R0, #2
52CDEC:  AND.W           R1, R0, #0xFB
52CDF0:  STRB            R1, [R4,#0x10]
52CDF2:  ITTT NE
52CDF4:  ANDNE.W         R0, R0, #0xFA
52CDF8:  ORRNE.W         R0, R0, #1
52CDFC:  STRBNE          R0, [R4,#0x10]
52CDFE:  MOVS            R0, #0
52CE00:  VPOP            {D8}
52CE04:  POP             {R4,R5,R7,PC}
