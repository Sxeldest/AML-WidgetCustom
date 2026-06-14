; =========================================================
; Game Engine Function: _ZN15CTaskSimpleJump15StartLaunchAnimEP4CPed
; Address            : 0x52DDD4 - 0x52DF64
; =========================================================

52DDD4:  PUSH            {R4-R7,LR}
52DDD6:  ADD             R7, SP, #0xC
52DDD8:  PUSH.W          {R11}
52DDDC:  SUB             SP, SP, #8
52DDDE:  MOV             R4, R1
52DDE0:  MOV             R5, R0
52DDE2:  LDR             R0, [R4,#0x18]
52DDE4:  MOVS            R1, #0x74 ; 't'
52DDE6:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52DDEA:  CMP             R0, #0
52DDEC:  STR             R0, [R5,#0x28]
52DDEE:  BNE             loc_52DDFE
52DDF0:  LDR             R0, [R4,#0x18]
52DDF2:  MOVS            R1, #0x75 ; 'u'
52DDF4:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52DDF8:  CMP             R0, #0
52DDFA:  STR             R0, [R5,#0x28]
52DDFC:  BEQ             loc_52DE08
52DDFE:  MOVS            R0, #0
52DE00:  ADD             SP, SP, #8
52DE02:  POP.W           {R11}
52DE06:  POP             {R4-R7,PC}
52DE08:  LDR             R0, =(g_surfaceInfos_ptr - 0x52DE12)
52DE0A:  LDRB.W          R1, [R4,#0xBE]; unsigned int
52DE0E:  ADD             R0, PC; g_surfaceInfos_ptr
52DE10:  LDR             R0, [R0]; g_surfaceInfos ; this
52DE12:  BLX             j__ZN14SurfaceInfos_c12IsSteepSlopeEj; SurfaceInfos_c::IsSteepSlope(uint)
52DE16:  CBZ             R0, loc_52DE5E
52DE18:  LDR             R0, [R4,#0x14]
52DE1A:  ADD.W           R1, R4, #0x580
52DE1E:  VLDR            S0, [R1]
52DE22:  VLDR            S4, [R0,#0x14]
52DE26:  VLDR            S2, [R0,#0x10]
52DE2A:  VLDR            S6, [R0,#0x18]
52DE2E:  ADDW            R0, R4, #0x57C
52DE32:  VMUL.F32        S0, S4, S0
52DE36:  VLDR            S8, [R0]
52DE3A:  ADDW            R0, R4, #0x584
52DE3E:  VMUL.F32        S2, S2, S8
52DE42:  VLDR            S4, [R0]
52DE46:  VMUL.F32        S4, S6, S4
52DE4A:  VADD.F32        S0, S2, S0
52DE4E:  VADD.F32        S0, S0, S4
52DE52:  VCMPE.F32       S0, #0.0
52DE56:  VMRS            APSR_nzcv, FPSCR
52DE5A:  BGE             loc_52DE82
52DE5C:  B               loc_52DF04
52DE5E:  MOV             R0, R4; this
52DE60:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52DE64:  CMP             R0, #1
52DE66:  BNE             loc_52DE82
52DE68:  LDR             R0, [R4,#0x14]
52DE6A:  ADD.W           R3, R0, #0x10
52DE6E:  MOVS            R0, #0x40A00000
52DE74:  LDM             R3, {R1-R3}
52DE76:  STR             R0, [SP,#0x18+var_18]
52DE78:  MOV             R0, R4
52DE7A:  BLX             j__ZN10CGameLogic34IsPlayerAllowedToGoInThisDirectionEP10CPlayerPed7CVectorf; CGameLogic::IsPlayerAllowedToGoInThisDirection(CPlayerPed *,CVector,float)
52DE7E:  CMP             R0, #0
52DE80:  BEQ             loc_52DF04
52DE82:  LDR             R0, [R4,#0x18]
52DE84:  MOVS            R1, #2
52DE86:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52DE8A:  CBZ             R0, loc_52DE9E
52DE8C:  VLDR            S2, =0.3
52DE90:  VLDR            S0, [R0,#0x18]
52DE94:  VCMPE.F32       S0, S2
52DE98:  VMRS            APSR_nzcv, FPSCR
52DE9C:  BGE             loc_52DEAC
52DE9E:  LDR             R0, [R4,#0x18]
52DEA0:  MOVS            R1, #1
52DEA2:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52DEA6:  CBZ             R0, loc_52DEBA
52DEA8:  VLDR            S0, [R0,#0x18]
52DEAC:  VLDR            S2, =0.3
52DEB0:  VCMPE.F32       S0, S2
52DEB4:  VMRS            APSR_nzcv, FPSCR
52DEB8:  BGE             loc_52DEC8
52DEBA:  LDR             R0, [R4,#0x18]
52DEBC:  MOVS            R1, #0
52DEBE:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52DEC2:  CBZ             R0, loc_52DF14
52DEC4:  VLDR            S0, [R0,#0x18]
52DEC8:  VLDR            S2, =0.3
52DECC:  VCMPE.F32       S0, S2
52DED0:  VMRS            APSR_nzcv, FPSCR
52DED4:  BLE             loc_52DF14
52DED6:  LDR             R1, [R0,#0x14]
52DED8:  VMOV.F32        S4, #1.0
52DEDC:  VLDR            S0, [R0,#0x20]
52DEE0:  VLDR            S2, [R1,#0x10]
52DEE4:  VDIV.F32        S0, S0, S2
52DEE8:  VLDR            S2, =0.367
52DEEC:  VADD.F32        S0, S0, S2
52DEF0:  VCMPE.F32       S0, S4
52DEF4:  VMRS            APSR_nzcv, FPSCR
52DEF8:  ITT GT
52DEFA:  VMOVGT.F32      S2, #-1.0
52DEFE:  VADDGT.F32      S0, S0, S2
52DF02:  B               loc_52DF18
52DF04:  LDR.W           R0, [R4,#0x534]
52DF08:  ORR.W           R0, R0, #8
52DF0C:  STR.W           R0, [R4,#0x534]
52DF10:  MOVS            R0, #0
52DF12:  B               loc_52DE00
52DF14:  VLDR            S0, =0.0
52DF18:  VMOV.F32        S2, #0.5
52DF1C:  LDR             R0, [R4,#0x18]; int
52DF1E:  MOVS            R2, #0x75 ; 'u'
52DF20:  MOVS            R1, #0; int
52DF22:  MOV.W           R3, #0x41000000
52DF26:  VCMPE.F32       S0, S2
52DF2A:  VMRS            APSR_nzcv, FPSCR
52DF2E:  IT LT
52DF30:  MOVLT           R2, #0x74 ; 't'; unsigned int
52DF32:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52DF36:  MOV             R6, R0
52DF38:  STR             R6, [R5,#0x28]
52DF3A:  LDR.W           R0, [R4,#0x444]
52DF3E:  CBZ             R0, loc_52DF4A
52DF40:  MOVS            R0, #2
52DF42:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
52DF46:  STR             R0, [R6,#0x24]
52DF48:  LDR             R6, [R5,#0x28]
52DF4A:  LDR             R0, =(_ZN15CTaskSimpleJump18FinishAnimLaunchCBEP21CAnimBlendAssociationPv_ptr - 0x52DF52)
52DF4C:  MOV             R2, R5; void *
52DF4E:  ADD             R0, PC; _ZN15CTaskSimpleJump18FinishAnimLaunchCBEP21CAnimBlendAssociationPv_ptr
52DF50:  LDR             R1, [R0]; CTaskSimpleJump::FinishAnimLaunchCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52DF52:  MOV             R0, R6; this
52DF54:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52DF58:  LDR.W           R0, [R4,#0x55C]
52DF5C:  STR.W           R0, [R4,#0x560]
52DF60:  MOVS            R0, #1
52DF62:  B               loc_52DE00
