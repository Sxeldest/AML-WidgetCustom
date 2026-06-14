; =========================================================
; Game Engine Function: _ZN22CTaskComplexPassObject18CreateFirstSubTaskEP4CPed
; Address            : 0x51AEA8 - 0x51B00A
; =========================================================

51AEA8:  PUSH            {R4-R7,LR}
51AEAA:  ADD             R7, SP, #0xC
51AEAC:  PUSH.W          {R11}
51AEB0:  MOV             R5, R0
51AEB2:  MOV             R4, R1
51AEB4:  LDR             R0, [R5,#0xC]
51AEB6:  CMP             R0, #0
51AEB8:  BEQ             loc_51AF66
51AEBA:  MOV             R0, R4; this
51AEBC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
51AEC0:  CBNZ            R0, loc_51AECC
51AEC2:  LDR             R0, [R5,#0xC]; this
51AEC4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
51AEC8:  CMP             R0, #1
51AECA:  BNE             loc_51AEE6
51AECC:  LDR             R0, =(g_ikChainMan_ptr - 0x51AED8)
51AECE:  MOVS            R1, #0; int
51AED0:  MOV             R2, R4; CPed *
51AED2:  MOVS            R6, #0
51AED4:  ADD             R0, PC; g_ikChainMan_ptr
51AED6:  LDR             R0, [R0]; g_ikChainMan ; this
51AED8:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
51AEDC:  CMP             R0, #0
51AEDE:  BEQ             loc_51AF8C
51AEE0:  LDR             R0, =(g_ikChainMan_ptr - 0x51AEE6)
51AEE2:  ADD             R0, PC; g_ikChainMan_ptr
51AEE4:  B               loc_51AF7C
51AEE6:  LDRB            R0, [R5,#0x10]
51AEE8:  CMP             R0, #0
51AEEA:  MOV             R0, R4
51AEEC:  IT EQ
51AEEE:  LDREQ           R0, [R5,#0xC]; this
51AEF0:  BLX             j__ZN4CPed29GetEntityThatThisPedIsHoldingEv; CPed::GetEntityThatThisPedIsHolding(void)
51AEF4:  MOV             R1, R5
51AEF6:  CMP             R0, #0
51AEF8:  STR.W           R0, [R1,#0x2C]!; CEntity **
51AEFC:  IT NE
51AEFE:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51AF02:  LDR             R1, [R5,#0xC]
51AF04:  LDR             R0, [R4,#0x14]
51AF06:  LDR             R2, [R1,#0x14]
51AF08:  ADD.W           R3, R0, #0x30 ; '0'
51AF0C:  CMP             R0, #0
51AF0E:  ADD.W           R0, R1, #4
51AF12:  IT EQ
51AF14:  ADDEQ           R3, R4, #4
51AF16:  CMP             R2, #0
51AF18:  VLDR            S2, [R3]
51AF1C:  VLDR            S0, [R3,#4]
51AF20:  VLDR            S4, [R3,#8]
51AF24:  MOV             R3, R0
51AF26:  IT NE
51AF28:  ADDNE.W         R3, R2, #0x30 ; '0'
51AF2C:  VLDR            S6, [R3]
51AF30:  VLDR            S8, [R3,#4]
51AF34:  VSUB.F32        S2, S6, S2
51AF38:  VLDR            S10, [R3,#8]
51AF3C:  VSUB.F32        S0, S8, S0
51AF40:  VSUB.F32        S4, S10, S4
51AF44:  VMUL.F32        S8, S2, S2
51AF48:  VMUL.F32        S6, S0, S0
51AF4C:  VMUL.F32        S10, S4, S4
51AF50:  VADD.F32        S6, S8, S6
51AF54:  VMOV.F32        S8, #2.25
51AF58:  VADD.F32        S6, S6, S10
51AF5C:  VCMPE.F32       S6, S8
51AF60:  VMRS            APSR_nzcv, FPSCR
51AF64:  BLE             loc_51AF94
51AF66:  LDR             R0, =(g_ikChainMan_ptr - 0x51AF72)
51AF68:  MOVS            R1, #0; int
51AF6A:  MOV             R2, R4; CPed *
51AF6C:  MOVS            R6, #0
51AF6E:  ADD             R0, PC; g_ikChainMan_ptr
51AF70:  LDR             R0, [R0]; g_ikChainMan ; this
51AF72:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
51AF76:  CBZ             R0, loc_51AF8C
51AF78:  LDR             R0, =(g_ikChainMan_ptr - 0x51AF7E)
51AF7A:  ADD             R0, PC; g_ikChainMan_ptr
51AF7C:  LDR             R0, [R0]; g_ikChainMan ; this
51AF7E:  MOVS            R1, #0; int
51AF80:  MOV             R2, R4; CPed *
51AF82:  MOV.W           R3, #0x1F4; int
51AF86:  MOVS            R6, #0
51AF88:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
51AF8C:  MOV             R0, R6
51AF8E:  POP.W           {R11}
51AF92:  POP             {R4-R7,PC}
51AF94:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51AFA0)
51AF96:  VMOV.F32        S6, #0.5
51AF9A:  MOVS            R3, #1
51AF9C:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51AF9E:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
51AFA0:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
51AFA2:  VMUL.F32        S2, S2, S6
51AFA6:  STRB.W          R3, [R5,#0x28]
51AFAA:  MOV.W           R3, #0x3E8
51AFAE:  STRD.W          R2, R3, [R5,#0x20]
51AFB2:  VMUL.F32        S4, S4, S6
51AFB6:  VMUL.F32        S0, S0, S6
51AFBA:  LDR             R1, [R1,#0x14]; unsigned int
51AFBC:  CMP             R1, #0
51AFBE:  IT NE
51AFC0:  ADDNE.W         R0, R1, #0x30 ; '0'
51AFC4:  VLDR            S6, [R0]
51AFC8:  VLDR            S8, [R0,#4]
51AFCC:  VLDR            S10, [R0,#8]
51AFD0:  VADD.F32        S2, S2, S6
51AFD4:  VADD.F32        S0, S0, S8
51AFD8:  MOVS            R0, #word_28; this
51AFDA:  VADD.F32        S4, S4, S10
51AFDE:  VSTR            S2, [R5,#0x14]
51AFE2:  VSTR            S0, [R5,#0x18]
51AFE6:  VSTR            S4, [R5,#0x1C]
51AFEA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51AFEE:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x51AFF8)
51AFF0:  MOV             R6, R0
51AFF2:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x51AFFA)
51AFF4:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
51AFF6:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
51AFF8:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
51AFFA:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
51AFFC:  LDR             R1, [R5,#0xC]; CEntity *
51AFFE:  LDR             R3, [R3]; float
51B000:  LDR             R2, [R0]; float
51B002:  MOV             R0, R6; this
51B004:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
51B008:  B               loc_51AF8C
