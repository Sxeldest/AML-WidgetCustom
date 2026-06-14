; =========================================================
; Game Engine Function: _ZN30CTaskComplexUsePairedAttractor15SeekPartnershipEP4CPed
; Address            : 0x4EEEE0 - 0x4EEFB6
; =========================================================

4EEEE0:  PUSH            {R4-R7,LR}
4EEEE2:  ADD             R7, SP, #0xC
4EEEE4:  PUSH.W          {R8-R11}
4EEEE8:  SUB             SP, SP, #0x14
4EEEEA:  STR             R1, [SP,#0x30+var_2C]
4EEEEC:  MOV             R11, R0
4EEEEE:  LDR.W           R0, [R11,#0xC]
4EEEF2:  LDR             R0, [R0,#4]
4EEEF4:  BLX             j__ZN18CScripted2dEffects14GetEffectPairsEPK9C2dEffect; CScripted2dEffects::GetEffectPairs(C2dEffect const*)
4EEEF8:  MOV             R1, R0
4EEEFA:  STR             R1, [SP,#0x30+var_20]
4EEEFC:  LDR             R0, [R0]
4EEEFE:  CMP             R0, #1
4EEF00:  BLT             loc_4EEFAE
4EEF02:  ADD.W           R0, R11, #0x10
4EEF06:  STR             R0, [SP,#0x30+var_28]
4EEF08:  LDR             R0, =(_ZN18CScripted2dEffects10ms_effectsE_ptr - 0x4EEF12)
4EEF0A:  MOV.W           R8, #4
4EEF0E:  ADD             R0, PC; _ZN18CScripted2dEffects10ms_effectsE_ptr
4EEF10:  LDR             R0, [R0]; CScripted2dEffects::ms_effects ...
4EEF12:  STR             R0, [SP,#0x30+var_24]
4EEF14:  LDR.W           R0, [R11,#0x1C]
4EEF18:  ADD             R0, R8
4EEF1A:  ASRS            R1, R0, #0x1F
4EEF1C:  ADD.W           R1, R0, R1,LSR#30
4EEF20:  BIC.W           R1, R1, #3
4EEF24:  SUB.W           R10, R0, R1
4EEF28:  LDR             R1, [SP,#0x30+var_20]
4EEF2A:  ADD.W           R0, R10, R10,LSL#3
4EEF2E:  ADD.W           R0, R1, R0,LSL#2
4EEF32:  MOV             R9, R0
4EEF34:  LDR.W           R1, [R9,#4]!
4EEF38:  ADDS            R1, #1
4EEF3A:  ITT NE
4EEF3C:  LDRNE           R0, [R0,#0x14]
4EEF3E:  ADDSNE.W        R1, R0, #1
4EEF42:  BEQ             loc_4EEFA4
4EEF44:  LDR             R1, [SP,#0x30+var_24]
4EEF46:  ADD.W           R4, R1, R0,LSL#6
4EEF4A:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
4EEF4E:  MOV             R1, R4
4EEF50:  MOVS            R2, #0
4EEF52:  BLX             j__ZN20CPedAttractorManager17GetPedUsingEffectEPK9C2dEffectPK7CEntity; CPedAttractorManager::GetPedUsingEffect(C2dEffect const*,CEntity const*)
4EEF56:  MOV             R4, R0
4EEF58:  CBZ             R4, loc_4EEFA4
4EEF5A:  LDR.W           R0, [R4,#0x440]
4EEF5E:  MOVS            R1, #0xF6; int
4EEF60:  ADDS            R0, #4; this
4EEF62:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4EEF66:  MOV             R6, R0
4EEF68:  CBZ             R6, loc_4EEFA4
4EEF6A:  MOV             R5, R6
4EEF6C:  LDR.W           R0, [R5,#0x10]!
4EEF70:  CBNZ            R0, loc_4EEFA4
4EEF72:  LDR             R0, [SP,#0x30+var_28]
4EEF74:  LDR             R0, [R0]
4EEF76:  CBNZ            R0, loc_4EEFA4
4EEF78:  STR.W           R4, [R11,#0x10]
4EEF7C:  MOV             R0, R4; this
4EEF7E:  STR.W           R10, [R11,#0x1C]
4EEF82:  LDR             R1, [SP,#0x30+var_28]; CEntity **
4EEF84:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4EEF88:  MOVS            R0, #1
4EEF8A:  STR.W           R9, [R11,#0x18]
4EEF8E:  STRB.W          R0, [R11,#0x14]
4EEF92:  MOV             R1, R5; CEntity **
4EEF94:  LDR             R0, [SP,#0x30+var_2C]; this
4EEF96:  STR             R0, [R6,#0x10]
4EEF98:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4EEF9C:  MOVS            R0, #0
4EEF9E:  STR.W           R9, [R6,#0x18]
4EEFA2:  STRB            R0, [R6,#0x14]
4EEFA4:  ADD.W           R8, R8, #1
4EEFA8:  CMP.W           R8, #8
4EEFAC:  BNE             loc_4EEF14
4EEFAE:  ADD             SP, SP, #0x14
4EEFB0:  POP.W           {R8-R11}
4EEFB4:  POP             {R4-R7,PC}
