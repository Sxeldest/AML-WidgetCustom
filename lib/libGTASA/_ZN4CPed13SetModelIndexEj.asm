; =========================================================
; Game Engine Function: _ZN4CPed13SetModelIndexEj
; Address            : 0x49FA64 - 0x49FBC6
; =========================================================

49FA64:  PUSH            {R4,R5,R7,LR}
49FA66:  ADD             R7, SP, #8
49FA68:  MOV             R4, R0
49FA6A:  LDR             R0, [R4,#0x1C]
49FA6C:  ORR.W           R0, R0, #0x80
49FA70:  STR             R0, [R4,#0x1C]
49FA72:  MOV             R0, R4; this
49FA74:  BLX             j__ZN7CEntity13SetModelIndexEj; CEntity::SetModelIndex(uint)
49FA78:  LDR             R0, [R4,#0x18]
49FA7A:  BLX             j__Z20RpAnimBlendClumpInitP7RpClump; RpAnimBlendClumpInit(RpClump *)
49FA7E:  LDR             R0, [R4,#0x18]
49FA80:  ADDW            R1, R4, #0x494
49FA84:  BLX             j__Z30RpAnimBlendClumpFillFrameArrayP7RpClumpPP18AnimBlendFrameData; RpAnimBlendClumpFillFrameArray(RpClump *,AnimBlendFrameData **)
49FA88:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x49FA94)
49FA8A:  MOVS            R3, #0x34 ; '4'
49FA8C:  LDRSH.W         R1, [R4,#0x26]
49FA90:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
49FA92:  LDR             R2, =(_ZN9CPedStats13ms_apPedStatsE_ptr - 0x49FA9A)
49FA94:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
49FA96:  ADD             R2, PC; _ZN9CPedStats13ms_apPedStatsE_ptr
49FA98:  LDR.W           R5, [R0,R1,LSL#2]
49FA9C:  LDR             R0, [R2]; CPedStats::ms_apPedStats ...
49FA9E:  LDR             R1, [R5,#0x44]
49FAA0:  LDR             R2, [R0]; CPedStats::ms_apPedStats
49FAA2:  MLA.W           R0, R1, R3, R2
49FAA6:  LDR.W           R3, [R4,#0x59C]
49FAAA:  CMP             R3, #1
49FAAC:  STR.W           R0, [R4,#0x5A0]
49FAB0:  LDR             R0, [R0,#0x20]
49FAB2:  STR.W           R0, [R4,#0x564]
49FAB6:  BHI             loc_49FAC2
49FAB8:  LDR.W           R0, [R4,#0x440]
49FABC:  MOV             R1, #0xFFFFFFFE
49FAC0:  B               loc_49FADE
49FAC2:  LDRB.W          R3, [R4,#0x448]
49FAC6:  LDR.W           R0, [R4,#0x440]; this
49FACA:  CMP             R3, #2
49FACC:  BNE             loc_49FAD4
49FACE:  MOV.W           R1, #0xFFFFFFFF
49FAD2:  B               loc_49FADE
49FAD4:  MOVS            R3, #0x34 ; '4'
49FAD6:  MLA.W           R1, R1, R3, R2
49FADA:  LDRSB.W         R1, [R1,#0x32]; int
49FADE:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
49FAE2:  LDRSH.W         R0, [R4,#0x26]; this
49FAE6:  MOVS            R1, #1; int
49FAE8:  BLX             j__ZN9CPopCycle12IsPedInGroupEii; CPopCycle::IsPedInGroup(int,int)
49FAEC:  CBNZ            R0, loc_49FAFC
49FAEE:  LDRSH.W         R0, [R4,#0x26]; this
49FAF2:  MOVS            R1, #6; int
49FAF4:  BLX             j__ZN9CPopCycle12IsPedInGroupEii; CPopCycle::IsPedInGroup(int,int)
49FAF8:  CMP             R0, #1
49FAFA:  BNE             loc_49FB1C
49FAFC:  BLX             rand
49FB00:  MOV             R1, #0x51EB851F
49FB08:  SMMUL.W         R1, R0, R1
49FB0C:  ASRS            R2, R1, #4
49FB0E:  ADD.W           R1, R2, R1,LSR#31
49FB12:  MOVS            R2, #0x32 ; '2'
49FB14:  MLS.W           R0, R1, R2, R0
49FB18:  ADDS            R0, #0x14
49FB1A:  B               loc_49FB38
49FB1C:  BLX             rand
49FB20:  MOV             R1, #0x51EB851F
49FB28:  SMMUL.W         R1, R0, R1
49FB2C:  ASRS            R2, R1, #3
49FB2E:  ADD.W           R1, R2, R1,LSR#31
49FB32:  MOVS            R2, #0x19
49FB34:  MLS.W           R0, R1, R2, R0
49FB38:  STRH.W          R0, [R4,#0x75E]
49FB3C:  BLX             rand
49FB40:  UXTH            R0, R0
49FB42:  VLDR            S2, =0.000015259
49FB46:  VMOV            S0, R0
49FB4A:  MOVS            R2, #3; unsigned int
49FB4C:  VCVT.F32.S32    S0, S0
49FB50:  VMUL.F32        S0, S0, S2
49FB54:  VLDR            S2, =100.0
49FB58:  VMUL.F32        S0, S0, S2
49FB5C:  VCVT.S32.F32    S0, S0
49FB60:  VMOV            R0, S0
49FB64:  CMP             R0, #2
49FB66:  ITT LE
49FB68:  MOVLE.W         R0, #0x190
49FB6C:  STRHLE.W        R0, [R4,#0x75E]
49FB70:  LDR             R1, [R5,#0x3C]; int
49FB72:  LDR             R0, [R4,#0x18]; int
49FB74:  STR.W           R1, [R4,#0x4E0]
49FB78:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
49FB7C:  LDR.W           R0, [R4,#0x44C]
49FB80:  ORR.W           R0, R0, #8
49FB84:  CMP             R0, #0x3A ; ':'
49FB86:  BNE             loc_49FBBC
49FB88:  LDR.W           R0, [R4,#0x534]
49FB8C:  ORR.W           R0, R0, #2
49FB90:  STR.W           R0, [R4,#0x534]
49FB94:  LDR             R0, =(ClumpOffset_ptr - 0x49FB9C)
49FB96:  LDR             R1, [R4,#0x18]
49FB98:  ADD             R0, PC; ClumpOffset_ptr
49FB9A:  LDR             R0, [R0]; ClumpOffset
49FB9C:  LDR             R0, [R0]
49FB9E:  LDR             R0, [R1,R0]
49FBA0:  ADDW            R1, R4, #0x4E4
49FBA4:  STR             R1, [R0,#0xC]
49FBA6:  LDR             R0, [R5,#0x4C]
49FBA8:  CBNZ            R0, loc_49FBB2
49FBAA:  LDR             R1, [R4,#0x18]
49FBAC:  MOV             R0, R5
49FBAE:  BLX             j__ZN13CPedModelInfo24CreateHitColModelSkinnedEP7RpClump; CPedModelInfo::CreateHitColModelSkinned(RpClump *)
49FBB2:  MOV             R0, R4; this
49FBB4:  POP.W           {R4,R5,R7,LR}
49FBB8:  B.W             j_j__ZN7CEntity13UpdateRpHAnimEv; j_CEntity::UpdateRpHAnim(void)
49FBBC:  LDRB.W          R0, [R4,#0x487]
49FBC0:  LSLS            R0, R0, #0x1D
49FBC2:  BMI             loc_49FB88
49FBC4:  B               loc_49FB94
