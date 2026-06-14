; =========================================================
; Game Engine Function: _ZN4CPed18PreRenderAfterTestEv
; Address            : 0x4A5910 - 0x4A6832
; =========================================================

4A5910:  PUSH            {R4-R7,LR}
4A5912:  ADD             R7, SP, #0xC
4A5914:  PUSH.W          {R8-R11}
4A5918:  SUB             SP, SP, #4
4A591A:  VPUSH           {D8-D14}
4A591E:  SUB             SP, SP, #0x68; float
4A5920:  MOV             R10, R0
4A5922:  LDR.W           R0, [R10,#0x440]; this
4A5926:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
4A592A:  MOV             R1, R0
4A592C:  LDR.W           R0, [R10,#0x440]; this
4A5930:  CBZ             R1, loc_4A593E
4A5932:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
4A5936:  MOV             R1, R10; CPed *
4A5938:  BLX             j__ZN15CTaskSimpleSwim17ApplyRollAndPitchEP4CPed; CTaskSimpleSwim::ApplyRollAndPitch(CPed *)
4A593C:  B               loc_4A5952
4A593E:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
4A5942:  CBZ             R0, loc_4A595E
4A5944:  LDR.W           R0, [R10,#0x440]; this
4A5948:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
4A594C:  MOV             R1, R10; CPed *
4A594E:  BLX             j__ZN18CTaskSimpleJetPack17ApplyRollAndPitchEP4CPed; CTaskSimpleJetPack::ApplyRollAndPitch(CPed *)
4A5952:  LDR.W           R0, [R10,#0x534]
4A5956:  BIC.W           R0, R0, #8
4A595A:  STR.W           R0, [R10,#0x534]
4A595E:  LDR.W           R0, [R10,#0x440]; this
4A5962:  BLX             j__ZNK16CPedIntelligence12GetTaskInAirEv; CPedIntelligence::GetTaskInAir(void)
4A5966:  CBZ             R0, loc_4A5984
4A5968:  LDR.W           R0, [R10,#0x440]; this
4A596C:  BLX             j__ZNK16CPedIntelligence12GetTaskInAirEv; CPedIntelligence::GetTaskInAir(void)
4A5970:  MOV             R1, R10; CPed *
4A5972:  BLX             j__ZN16CTaskSimpleInAir17ApplyRollAndPitchEP4CPed; CTaskSimpleInAir::ApplyRollAndPitch(CPed *)
4A5976:  LDR.W           R0, [R10,#0x534]
4A597A:  BIC.W           R0, R0, #8
4A597E:  STR.W           R0, [R10,#0x534]
4A5982:  B               loc_4A59AE
4A5984:  LDRB.W          R0, [R10,#0x534]
4A5988:  LSLS            R0, R0, #0x1C
4A598A:  BMI             loc_4A59A6
4A598C:  LDR.W           R0, [R10,#0x59C]
4A5990:  CMP             R0, #2
4A5992:  BCC             loc_4A59AE
4A5994:  ADDW            R0, R10, #0x524
4A5998:  VLDR            S0, [R0]
4A599C:  VCMP.F32        S0, #0.0
4A59A0:  VMRS            APSR_nzcv, FPSCR
4A59A4:  BEQ             loc_4A59AE
4A59A6:  ADD.W           R0, R10, #0x518; this
4A59AA:  BLX             j__ZN6CPedIK13PitchForSlopeEv; CPedIK::PitchForSlope(void)
4A59AE:  LDR.W           R0, [R10,#0x48C]
4A59B2:  ORR.W           R0, R0, #0x400
4A59B6:  STR.W           R0, [R10,#0x48C]
4A59BA:  MOV             R0, R10; this
4A59BC:  BLX             j__ZN7CEntity13UpdateRpHAnimEv; CEntity::UpdateRpHAnim(void)
4A59C0:  LDR.W           R0, =(_ZN6CTimer21bSkipProcessThisFrameE_ptr - 0x4A59CC)
4A59C4:  ADDW            R11, R10, #0x484
4A59C8:  ADD             R0, PC; _ZN6CTimer21bSkipProcessThisFrameE_ptr
4A59CA:  LDR             R0, [R0]; CTimer::bSkipProcessThisFrame ...
4A59CC:  LDRB            R0, [R0]; CTimer::bSkipProcessThisFrame
4A59CE:  CBNZ            R0, loc_4A5A3A
4A59D0:  LDR.W           R0, [R10,#0x500]
4A59D4:  CMP             R0, #0
4A59D6:  ITT NE
4A59D8:  LDRNE.W         R1, [R10,#0x444]
4A59DC:  CMPNE           R1, #0
4A59DE:  BEQ             loc_4A5A3A
4A59E0:  LDRSB.W         R1, [R10,#0x71C]
4A59E4:  RSB.W           R1, R1, R1,LSL#3
4A59E8:  ADD.W           R1, R10, R1,LSL#2
4A59EC:  LDR.W           R1, [R1,#0x5A4]
4A59F0:  CMP             R1, #0x26 ; '&'
4A59F2:  BNE             loc_4A5A3A
4A59F4:  ADR.W           R1, aMinigun2; "minigun2"
4A59F8:  BLX             j__ZN15CClumpModelInfo16GetFrameFromNameEP7RpClumpPKc; CClumpModelInfo::GetFrameFromName(RpClump *,char const*)
4A59FC:  CBZ             R0, loc_4A5A3A
4A59FE:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A5A0E)
4A5A02:  ADDS            R0, #0x10
4A5A04:  LDR.W           R2, [R10,#0x444]
4A5A08:  MOVS            R3, #1
4A5A0A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A5A0C:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
4A5A0E:  VLDR            S0, [R2,#0x64]
4A5A12:  VLDR            S2, [R1]
4A5A16:  LDR.W           R1, =(_ZN6CPedIK7XaxisIKE_ptr - 0x4A5A26)
4A5A1A:  VMUL.F32        S0, S0, S2
4A5A1E:  VLDR            S2, =180.0
4A5A22:  ADD             R1, PC; _ZN6CPedIK7XaxisIKE_ptr
4A5A24:  LDR             R1, [R1]; CPedIK::XaxisIK ...
4A5A26:  VMUL.F32        S0, S0, S2
4A5A2A:  VLDR            S2, =3.1416
4A5A2E:  VDIV.F32        S0, S0, S2
4A5A32:  VMOV            R2, S0
4A5A36:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A5A3A:  MOV             R9, R10
4A5A3C:  LDRB.W          R0, [R9,#0x1C]!
4A5A40:  TST.W           R0, #0x80
4A5A44:  BEQ.W           loc_4A5D56
4A5A48:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x4A5A50)
4A5A4C:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
4A5A4E:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
4A5A50:  LDRH.W          R0, [R0,#(dword_966594 - 0x96654C)]; this
4A5A54:  CBNZ            R0, loc_4A5A60
4A5A56:  BLX             j__ZN12CPostEffects16IsVisionFXActiveEv; CPostEffects::IsVisionFXActive(void)
4A5A5A:  CMP             R0, #1
4A5A5C:  BNE.W           loc_4A5D56
4A5A60:  LDRB.W          R1, [R11,#1]
4A5A64:  LDR.W           R0, [R10,#0x440]
4A5A68:  ADDS            R0, #4; this
4A5A6A:  LSLS            R1, R1, #0x1F
4A5A6C:  BNE             loc_4A5A88
4A5A6E:  MOVW            R1, #0x2BD; int
4A5A72:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4A5A76:  MOV             R8, R0
4A5A78:  CMP.W           R8, #0
4A5A7C:  MOV             R6, R8
4A5A7E:  MOV.W           R4, #0
4A5A82:  IT NE
4A5A84:  MOVNE           R6, #1
4A5A86:  B               loc_4A5AB6
4A5A88:  MOV.W           R1, #0x2C0; int
4A5A8C:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4A5A90:  CBZ             R0, loc_4A5A9A
4A5A92:  MOV.W           R8, #0
4A5A96:  MOVS            R4, #1
4A5A98:  B               loc_4A5AB4
4A5A9A:  LDR.W           R0, [R10,#0x440]
4A5A9E:  MOVW            R1, #0x2BF; int
4A5AA2:  ADDS            R0, #4; this
4A5AA4:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4A5AA8:  MOV             R4, R0
4A5AAA:  CMP             R4, #0
4A5AAC:  IT NE
4A5AAE:  MOVNE           R4, #1
4A5AB0:  MOV.W           R8, #0
4A5AB4:  MOVS            R6, #0
4A5AB6:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x4A5ABE)
4A5ABA:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
4A5ABC:  LDR             R0, [R0]; MobileSettings::settings ...
4A5ABE:  LDR.W           R0, [R0,#(dword_6E049C - 0x6E03F4)]
4A5AC2:  CMP             R0, #2
4A5AC4:  ITT NE
4A5AC6:  LDRNE.W         R0, [R10,#0x59C]
4A5ACA:  CMPNE           R0, #0
4A5ACC:  BNE             loc_4A5AD6
4A5ACE:  LDRB.W          R0, [R10,#0x33]
4A5AD2:  CMP             R0, #0
4A5AD4:  BEQ             loc_4A5B5A
4A5AD6:  CBNZ            R4, loc_4A5AE4
4A5AD8:  LDR.W           R0, [R11]
4A5ADC:  ANDS.W          R0, R0, #0x100
4A5AE0:  BNE.W           loc_4A5D56
4A5AE4:  LDR.W           R0, =(_ZN10CTimeCycle20m_CurrentStoredValueE_ptr - 0x4A5AF0)
4A5AE8:  LDR.W           R1, =(_ZN10CTimeCycle15m_fShadowFrontXE_ptr - 0x4A5AF6)
4A5AEC:  ADD             R0, PC; _ZN10CTimeCycle20m_CurrentStoredValueE_ptr
4A5AEE:  LDR.W           R3, =(_ZN10CTimeCycle22m_fShadowDisplacementXE_ptr - 0x4A5AFE)
4A5AF2:  ADD             R1, PC; _ZN10CTimeCycle15m_fShadowFrontXE_ptr
4A5AF4:  LDR.W           R2, =(_ZN10CTimeCycle22m_fShadowDisplacementYE_ptr - 0x4A5B04)
4A5AF8:  LDR             R0, [R0]; CTimeCycle::m_CurrentStoredValue ...
4A5AFA:  ADD             R3, PC; _ZN10CTimeCycle22m_fShadowDisplacementXE_ptr
4A5AFC:  LDR.W           R6, =(_ZN10CTimeCycle14m_fShadowSideXE_ptr - 0x4A5B0E)
4A5B00:  ADD             R2, PC; _ZN10CTimeCycle22m_fShadowDisplacementYE_ptr
4A5B02:  LDR.W           LR, =(_ZN10CTimeCycle15m_fShadowFrontYE_ptr - 0x4A5B12)
4A5B06:  LDR.W           R12, =(_ZN10CTimeCycle14m_fShadowSideYE_ptr - 0x4A5B16)
4A5B0A:  ADD             R6, PC; _ZN10CTimeCycle14m_fShadowSideXE_ptr
4A5B0C:  LDR             R1, [R1]; CTimeCycle::m_fShadowFrontX ...
4A5B0E:  ADD             LR, PC; _ZN10CTimeCycle15m_fShadowFrontYE_ptr
4A5B10:  LDR             R0, [R0]; CTimeCycle::m_CurrentStoredValue
4A5B12:  ADD             R12, PC; _ZN10CTimeCycle14m_fShadowSideYE_ptr
4A5B14:  LDR             R5, [R3]; CTimeCycle::m_fShadowDisplacementX ...
4A5B16:  LDR             R2, [R2]; CTimeCycle::m_fShadowDisplacementY ...
4A5B18:  LDR             R6, [R6]; CTimeCycle::m_fShadowSideX ...
4A5B1A:  LDR.W           R4, [LR]; CTimeCycle::m_fShadowFrontY ...
4A5B1E:  LDR.W           R3, [R1,R0,LSL#2]; float
4A5B22:  ADD.W           R6, R6, R0,LSL#2
4A5B26:  LDR.W           R1, [R5,R0,LSL#2]; CEntity *
4A5B2A:  LDR.W           R5, [R12]; CTimeCycle::m_fShadowSideY ...
4A5B2E:  ADD.W           R4, R4, R0,LSL#2
4A5B32:  LDR.W           R2, [R2,R0,LSL#2]; float
4A5B36:  ADD.W           R0, R5, R0,LSL#2
4A5B3A:  VLDR            S0, [R4]
4A5B3E:  VLDR            S4, [R0]
4A5B42:  MOV             R0, R10; this
4A5B44:  VLDR            S2, [R6]
4A5B48:  VSTR            S0, [SP,#0xC0+var_C0]
4A5B4C:  VSTR            S2, [SP,#0xC0+var_BC]
4A5B50:  VSTR            S4, [SP,#0xC0+var_B8]
4A5B54:  BLX             j__ZN8CShadows23StoreShadowForPedObjectEP7CEntityffffff; CShadows::StoreShadowForPedObject(CEntity *,float,float,float,float,float,float)
4A5B58:  B               loc_4A5D56
4A5B5A:  LDR.W           R0, [R11,#8]
4A5B5E:  MOV.W           R5, #0x400
4A5B62:  TST             R0, R5
4A5B64:  BEQ             loc_4A5B94
4A5B66:  LDR.W           R0, [R10,#0x18]
4A5B6A:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
4A5B6E:  MOV             R5, R0
4A5B70:  CBZ             R5, loc_4A5BB0
4A5B72:  MOV             R0, R5
4A5B74:  MOVS            R1, #0
4A5B76:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A5B7A:  STR             R4, [SP,#0xC0+var_A8]
4A5B7C:  MOV             R4, R0
4A5B7E:  MOV             R0, R5
4A5B80:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A5B84:  ADD.W           R0, R0, R4,LSL#6
4A5B88:  LDR             R4, [SP,#0xC0+var_A8]
4A5B8A:  VLDR            S0, [R0,#0x30]
4A5B8E:  VLDR            S2, [R0,#0x34]
4A5B92:  B               loc_4A5BC8
4A5B94:  LDR.W           R0, =(aStdBonePosisions_ptr - 0x4A5BA0)
4A5B98:  LDR.W           R1, [R10,#0x14]
4A5B9C:  ADD             R0, PC; aStdBonePosisions_ptr
4A5B9E:  LDR             R2, [R0]; aStdBonePosisions
4A5BA0:  ADD             R0, SP, #0xC0+var_98
4A5BA2:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4A5BA6:  VLDR            S0, [SP,#0xC0+var_98]
4A5BAA:  VLDR            S2, [SP,#0xC0+var_98+4]
4A5BAE:  B               loc_4A5BCC
4A5BB0:  LDR.W           R0, [R10,#0x14]
4A5BB4:  ADD.W           R1, R0, #0x30 ; '0'
4A5BB8:  CMP             R0, #0
4A5BBA:  IT EQ
4A5BBC:  ADDEQ.W         R1, R10, #4
4A5BC0:  VLDR            S0, [R1]
4A5BC4:  VLDR            S2, [R1,#4]
4A5BC8:  MOV.W           R5, #0x400
4A5BCC:  LDR.W           R0, =(TheCamera_ptr - 0x4A5BD4)
4A5BD0:  ADD             R0, PC; TheCamera_ptr
4A5BD2:  LDR             R0, [R0]; TheCamera
4A5BD4:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
4A5BD6:  ADD.W           R2, R1, #0x30 ; '0'
4A5BDA:  CMP             R1, #0
4A5BDC:  IT EQ
4A5BDE:  ADDEQ           R2, R0, #4
4A5BE0:  LDR.W           R0, =(MAX_DISTANCE_PED_SHADOWS_SQR_ptr - 0x4A5BF0)
4A5BE4:  VLDR            S4, [R2]
4A5BE8:  VLDR            S6, [R2,#4]
4A5BEC:  ADD             R0, PC; MAX_DISTANCE_PED_SHADOWS_SQR_ptr
4A5BEE:  VSUB.F32        S0, S0, S4
4A5BF2:  VSUB.F32        S2, S2, S6
4A5BF6:  LDR             R0, [R0]; MAX_DISTANCE_PED_SHADOWS_SQR
4A5BF8:  VMUL.F32        S0, S0, S0
4A5BFC:  VMUL.F32        S2, S2, S2
4A5C00:  VADD.F32        S0, S0, S2
4A5C04:  VLDR            S2, [R0]
4A5C08:  VCMPE.F32       S0, S2
4A5C0C:  VMRS            APSR_nzcv, FPSCR
4A5C10:  BGT.W           loc_4A5D56
4A5C14:  LDRB.W          R0, [R10,#0x45]
4A5C18:  LSLS            R0, R0, #0x1F
4A5C1A:  BNE.W           loc_4A5D56
4A5C1E:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x4A5C2A)
4A5C22:  LDR.W           R2, [R11]
4A5C26:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
4A5C28:  TST.W           R2, #0x100
4A5C2C:  LDR             R1, [R0]; MobileSettings::settings ...
4A5C2E:  LDR.W           R0, [R11,#8]
4A5C32:  STR             R4, [SP,#0xC0+var_A8]
4A5C34:  LDR.W           R1, [R1,#(dword_6E049C - 0x6E03F4)]
4A5C38:  BNE             loc_4A5C40
4A5C3A:  MOVS            R4, #1
4A5C3C:  CBNZ            R6, loc_4A5C8A
4A5C3E:  B               loc_4A5CB0
4A5C40:  CBZ             R4, loc_4A5C68
4A5C42:  CMP             R1, #2
4A5C44:  BNE             loc_4A5C68
4A5C46:  MOVS            R4, #1
4A5C48:  TST             R0, R5
4A5C4A:  BNE             loc_4A5CB4
4A5C4C:  LDR.W           R0, =(aStdBonePosisions_ptr - 0x4A5C58)
4A5C50:  LDR.W           R1, [R10,#0x14]
4A5C54:  ADD             R0, PC; aStdBonePosisions_ptr
4A5C56:  LDR             R0, [R0]; aStdBonePosisions
4A5C58:  ADD.W           R2, R0, #0x24 ; '$'
4A5C5C:  ADD             R0, SP, #0xC0+var_98
4A5C5E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4A5C62:  VLDR            S0, [SP,#0xC0+var_90]
4A5C66:  B               loc_4A5CEE
4A5C68:  LDR.W           R2, [R10,#0x590]
4A5C6C:  MOVS            R4, #0
4A5C6E:  CBZ             R2, loc_4A5C88
4A5C70:  LDR.W           R2, [R2,#0x5A4]
4A5C74:  CMP             R2, #0xA
4A5C76:  BHI             loc_4A5C88
4A5C78:  MOVS            R3, #1
4A5C7A:  LSL.W           R2, R3, R2
4A5C7E:  MOVW            R3, #0x604
4A5C82:  TST             R2, R3
4A5C84:  IT NE
4A5C86:  MOVNE           R4, #1
4A5C88:  CBZ             R6, loc_4A5CB0
4A5C8A:  CMP             R1, #2
4A5C8C:  ITTT NE
4A5C8E:  LDRNE.W         R1, [R8,#0xC]
4A5C92:  MOVNE           R4, #0
4A5C94:  CMPNE           R1, #0
4A5C96:  BEQ             loc_4A5CB0
4A5C98:  LDR.W           R1, [R1,#0x5A4]
4A5C9C:  CMP             R1, #0xA
4A5C9E:  BHI             loc_4A5CB0
4A5CA0:  MOVS            R2, #1
4A5CA2:  LSL.W           R1, R2, R1
4A5CA6:  MOVW            R2, #0x604
4A5CAA:  TST             R1, R2
4A5CAC:  IT NE
4A5CAE:  MOVNE           R4, #1
4A5CB0:  TST             R0, R5
4A5CB2:  BEQ             loc_4A5C4C
4A5CB4:  LDR.W           R0, [R10,#0x18]
4A5CB8:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
4A5CBC:  MOV             R5, R0
4A5CBE:  CBZ             R5, loc_4A5CDA
4A5CC0:  MOV             R0, R5
4A5CC2:  MOVS            R1, #3
4A5CC4:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A5CC8:  MOV             R6, R0
4A5CCA:  MOV             R0, R5
4A5CCC:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A5CD0:  ADD.W           R0, R0, R6,LSL#6
4A5CD4:  VLDR            S0, [R0,#0x38]
4A5CD8:  B               loc_4A5CEE
4A5CDA:  LDR.W           R0, [R10,#0x14]
4A5CDE:  ADD.W           R1, R0, #0x30 ; '0'
4A5CE2:  CMP             R0, #0
4A5CE4:  IT EQ
4A5CE6:  ADDEQ.W         R1, R10, #4
4A5CEA:  VLDR            S0, [R1,#8]
4A5CEE:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x4A5CF6)
4A5CF2:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
4A5CF4:  LDR             R0, [R0]; MobileSettings::settings ...
4A5CF6:  LDR.W           R0, [R0,#(dword_6E049C - 0x6E03F4)]
4A5CFA:  CMP             R0, #2
4A5CFC:  BEQ             loc_4A5D38
4A5CFE:  LDR.W           R0, [R10,#0x44C]
4A5D02:  BIC.W           R0, R0, #1
4A5D06:  CMP             R0, #0x36 ; '6'
4A5D08:  BEQ             loc_4A5D30
4A5D0A:  LDR.W           R0, [R10,#0x14]
4A5D0E:  VLDR            S2, =-0.2
4A5D12:  ADD.W           R1, R0, #0x30 ; '0'
4A5D16:  CMP             R0, #0
4A5D18:  IT EQ
4A5D1A:  ADDEQ.W         R1, R10, #4
4A5D1E:  VLDR            S4, [R1,#8]
4A5D22:  VADD.F32        S2, S4, S2
4A5D26:  VCMPE.F32       S0, S2
4A5D2A:  VMRS            APSR_nzcv, FPSCR
4A5D2E:  BGE             loc_4A5D38
4A5D30:  LDR.W           R0, [R11]
4A5D34:  UBFX.W          R4, R0, #0x1A, #1
4A5D38:  CMP             R4, #0
4A5D3A:  LDR             R4, [SP,#0xC0+var_A8]
4A5D3C:  BEQ             loc_4A5D56
4A5D3E:  LDR.W           R0, =(g_realTimeShadowMan_ptr - 0x4A5D48)
4A5D42:  MOV             R1, R10; CPhysical *
4A5D44:  ADD             R0, PC; g_realTimeShadowMan_ptr
4A5D46:  LDR             R0, [R0]; g_realTimeShadowMan ; this
4A5D48:  BLX             j__ZN22CRealTimeShadowManager17DoShadowThisFrameEP9CPhysical; CRealTimeShadowManager::DoShadowThisFrame(CPhysical *)
4A5D4C:  LDR.W           R0, [R10,#0x138]
4A5D50:  CMP             R0, #0
4A5D52:  BEQ.W           loc_4A5AD6
4A5D56:  LDRH.W          R0, [R10,#0x26]
4A5D5A:  CBNZ            R0, loc_4A5D70
4A5D5C:  LDR.W           R0, [R10,#0x18]
4A5D60:  BLX             j__ZN4CPed20ShoulderBoneRotationEP7RpClump; CPed::ShoulderBoneRotation(RpClump *)
4A5D64:  LDR.W           R0, [R9]
4A5D68:  ORR.W           R0, R0, #0x800000
4A5D6C:  STR.W           R0, [R9]
4A5D70:  LDR.W           R0, [R10,#0x18]
4A5D74:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
4A5D78:  MOV             R5, R0
4A5D7A:  MOV.W           R0, #0x3F800000
4A5D7E:  STR             R0, [SP,#0xC0+var_5C]
4A5D80:  LDR.W           R0, [R10,#0x59C]
4A5D84:  CMP             R0, #1
4A5D86:  BHI             loc_4A5DCC
4A5D88:  LDR.W           R0, [R10,#0x14]
4A5D8C:  ADD             R3, SP, #0xC0+var_5C
4A5D8E:  ADD.W           R2, R0, #0x30 ; '0'
4A5D92:  CMP             R0, #0
4A5D94:  IT EQ
4A5D96:  ADDEQ.W         R2, R10, #4
4A5D9A:  LDM             R2, {R0-R2}
4A5D9C:  STR             R3, [SP,#0xC0+var_C0]
4A5D9E:  BLX             j__ZN14CWindModifiers16FindWindModifierE7CVectorPfS1_; CWindModifiers::FindWindModifier(CVector,float *,float *)
4A5DA2:  CMP             R0, #1
4A5DA4:  BNE             loc_4A5DCC
4A5DA6:  BLX             j__ZN10CCullZones12PlayerNoRainEv; CCullZones::PlayerNoRain(void)
4A5DAA:  EOR.W           R6, R0, #1
4A5DAE:  B               loc_4A5DCE
4A5DB0:  DCFS 180.0
4A5DB4:  DCFS 3.1416
4A5DB8:  DCFS -0.2
4A5DBC:  DCFS 0.0
4A5DC0:  DCFS 0.2
4A5DC4:  DCFS 4.6566e-10
4A5DC8:  DCFS 0.1
4A5DCC:  MOVS            R6, #0
4A5DCE:  LDR.W           R0, [R10,#0x44C]
4A5DD2:  CMP             R0, #0x32 ; '2'
4A5DD4:  BNE             loc_4A5DF8
4A5DD6:  LDR.W           R0, [R10,#0x590]
4A5DDA:  CBZ             R0, loc_4A5DF8
4A5DDC:  LDR.W           R1, [R0,#0x5A0]
4A5DE0:  CMP             R1, #9
4A5DE2:  BEQ             loc_4A5DF2
4A5DE4:  CBNZ            R1, loc_4A5DF8
4A5DE6:  LDR             R1, [R0]
4A5DE8:  LDR.W           R1, [R1,#0xA0]
4A5DEC:  BLX             R1
4A5DEE:  CMP             R0, #1
4A5DF0:  BNE             loc_4A5DF8
4A5DF2:  MOV.W           R9, #1
4A5DF6:  B               loc_4A5DFC
4A5DF8:  MOV.W           R9, #0
4A5DFC:  LDR.W           R0, [R10,#0x444]
4A5E00:  CBZ             R0, loc_4A5E2C
4A5E02:  LDR             R0, [R0,#4]
4A5E04:  LDR             R4, [R0]
4A5E06:  ADR.W           R0, aVest; "vest"
4A5E0A:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4A5E0E:  CMP             R4, R0
4A5E10:  BEQ             loc_4A5E26
4A5E12:  LDR.W           R0, [R10,#0x444]
4A5E16:  LDR             R0, [R0,#4]
4A5E18:  LDR             R4, [R0]
4A5E1A:  ADR.W           R0, aTorso; "torso"
4A5E1E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4A5E22:  CMP             R4, R0
4A5E24:  BNE             loc_4A5E2C
4A5E26:  MOV.W           R9, #0
4A5E2A:  MOVS            R6, #0
4A5E2C:  CMP.W           R9, #0
4A5E30:  BNE             loc_4A5E38
4A5E32:  CMP             R6, #1
4A5E34:  BNE.W           loc_4A6090
4A5E38:  CMP.W           R9, #1
4A5E3C:  BNE             loc_4A5E80
4A5E3E:  LDR.W           R0, [R10,#0x590]
4A5E42:  LDR             R1, [R0,#0x14]
4A5E44:  VLDR            S0, [R0,#0x48]
4A5E48:  VLDR            S2, [R0,#0x4C]
4A5E4C:  VLDR            S6, [R1,#0x10]
4A5E50:  VLDR            S8, [R1,#0x14]
4A5E54:  VMUL.F32        S0, S0, S6
4A5E58:  VLDR            S4, [R0,#0x50]
4A5E5C:  VMUL.F32        S2, S2, S8
4A5E60:  VLDR            S10, [R1,#0x18]
4A5E64:  VMUL.F32        S4, S4, S10
4A5E68:  VADD.F32        S0, S0, S2
4A5E6C:  VADD.F32        S22, S0, S4
4A5E70:  CMP             R6, #1
4A5E72:  BEQ             loc_4A5E88
4A5E74:  B               loc_4A5EA6
4A5E76:  ALIGN 4
4A5E78:  DCFS 4.6566e-10
4A5E7C:  DCFS 0.0025
4A5E80:  VLDR            S22, =0.0
4A5E84:  CMP             R6, #1
4A5E86:  BNE             loc_4A5EA6
4A5E88:  VMOV.F32        S0, #-1.0
4A5E8C:  VLDR            S2, [SP,#0xC0+var_5C]
4A5E90:  VADD.F32        S0, S2, S0
4A5E94:  VABS.F32        S0, S0
4A5E98:  VCMPE.F32       S0, S22
4A5E9C:  VMRS            APSR_nzcv, FPSCR
4A5EA0:  IT GT
4A5EA2:  VMOVGT.F32      S22, S0
4A5EA6:  VLDR            S0, =0.2
4A5EAA:  VMOV.F32        S24, #1.0
4A5EAE:  VMUL.F32        S18, S22, S0
4A5EB2:  BLX             rand
4A5EB6:  VMOV            S0, R0
4A5EBA:  VSUB.F32        S16, S24, S18
4A5EBE:  VADD.F32        S2, S18, S24
4A5EC2:  VLDR            S18, =4.6566e-10
4A5EC6:  VCVT.F32.S32    S0, S0
4A5ECA:  VSUB.F32        S20, S2, S16
4A5ECE:  VMUL.F32        S0, S0, S18
4A5ED2:  VMUL.F32        S0, S20, S0
4A5ED6:  VADD.F32        S0, S16, S0
4A5EDA:  VSTR            S0, [SP,#0xC0+var_98]
4A5EDE:  BLX             rand
4A5EE2:  VMOV            S0, R0
4A5EE6:  VCVT.F32.S32    S0, S0
4A5EEA:  VMUL.F32        S0, S0, S18
4A5EEE:  VMUL.F32        S0, S20, S0
4A5EF2:  VADD.F32        S0, S16, S0
4A5EF6:  VSTR            S0, [SP,#0xC0+var_98+4]
4A5EFA:  BLX             rand
4A5EFE:  VMOV            S0, R0
4A5F02:  MOV             R0, R5
4A5F04:  MOVS            R1, #4
4A5F06:  VCVT.F32.S32    S0, S0
4A5F0A:  VMUL.F32        S0, S0, S18
4A5F0E:  VMUL.F32        S0, S20, S0
4A5F12:  VADD.F32        S0, S16, S0
4A5F16:  VSTR            S0, [SP,#0xC0+var_90]
4A5F1A:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A5F1E:  MOV             R6, R0
4A5F20:  MOV             R0, R5
4A5F22:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A5F26:  ADD.W           R8, SP, #0xC0+var_98
4A5F2A:  ADD.W           R0, R0, R6,LSL#6
4A5F2E:  MOVS            R2, #1
4A5F30:  MOV             R1, R8
4A5F32:  BLX             j__Z13RwMatrixScaleP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixScale(RwMatrixTag *,RwV3d const*,RwOpCombineType)
4A5F36:  VLDR            S0, =0.1
4A5F3A:  VMUL.F32        S0, S22, S0
4A5F3E:  VSUB.F32        S22, S24, S0
4A5F42:  VADD.F32        S24, S0, S24
4A5F46:  BLX             rand
4A5F4A:  VMOV            S0, R0
4A5F4E:  VSUB.F32        S24, S24, S22
4A5F52:  VCVT.F32.S32    S0, S0
4A5F56:  VMUL.F32        S0, S0, S18
4A5F5A:  VMUL.F32        S0, S24, S0
4A5F5E:  VADD.F32        S0, S22, S0
4A5F62:  VSTR            S0, [SP,#0xC0+var_98]
4A5F66:  BLX             rand
4A5F6A:  VMOV            S0, R0
4A5F6E:  VCVT.F32.S32    S0, S0
4A5F72:  VMUL.F32        S0, S0, S18
4A5F76:  VMUL.F32        S0, S24, S0
4A5F7A:  VADD.F32        S0, S22, S0
4A5F7E:  VSTR            S0, [SP,#0xC0+var_98+4]
4A5F82:  BLX             rand
4A5F86:  VMOV            S0, R0
4A5F8A:  MOV             R0, R5
4A5F8C:  MOVS            R1, #0x1F
4A5F8E:  VCVT.F32.S32    S0, S0
4A5F92:  VMUL.F32        S0, S0, S18
4A5F96:  VMUL.F32        S0, S24, S0
4A5F9A:  VADD.F32        S0, S22, S0
4A5F9E:  VSTR            S0, [SP,#0xC0+var_90]
4A5FA2:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A5FA6:  MOV             R6, R0
4A5FA8:  MOV             R0, R5
4A5FAA:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A5FAE:  ADD.W           R0, R0, R6,LSL#6
4A5FB2:  MOV             R1, R8
4A5FB4:  MOVS            R2, #1
4A5FB6:  BLX             j__Z13RwMatrixScaleP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixScale(RwMatrixTag *,RwV3d const*,RwOpCombineType)
4A5FBA:  MOV             R0, R5
4A5FBC:  MOVS            R1, #0x15
4A5FBE:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A5FC2:  MOV             R6, R0
4A5FC4:  MOV             R0, R5
4A5FC6:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A5FCA:  ADD.W           R0, R0, R6,LSL#6
4A5FCE:  MOV             R1, R8
4A5FD0:  MOVS            R2, #1
4A5FD2:  BLX             j__Z13RwMatrixScaleP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixScale(RwMatrixTag *,RwV3d const*,RwOpCombineType)
4A5FD6:  CMP.W           R9, #0
4A5FDA:  BNE             loc_4A5FE6
4A5FDC:  LDR.W           R0, [R10,#0x440]; this
4A5FE0:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
4A5FE4:  CBNZ            R0, loc_4A6002
4A5FE6:  MOV             R0, R5
4A5FE8:  MOVS            R1, #3
4A5FEA:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A5FEE:  MOV             R6, R0
4A5FF0:  MOV             R0, R5
4A5FF2:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A5FF6:  ADD.W           R0, R0, R6,LSL#6
4A5FFA:  ADD             R1, SP, #0xC0+var_98
4A5FFC:  MOVS            R2, #1
4A5FFE:  BLX             j__Z13RwMatrixScaleP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixScale(RwMatrixTag *,RwV3d const*,RwOpCombineType)
4A6002:  BLX             rand
4A6006:  VMOV            S0, R0
4A600A:  VCVT.F32.S32    S0, S0
4A600E:  VMUL.F32        S0, S0, S18
4A6012:  VMUL.F32        S0, S20, S0
4A6016:  VADD.F32        S0, S16, S0
4A601A:  VSTR            S0, [SP,#0xC0+var_98]
4A601E:  BLX             rand
4A6022:  VMOV            S0, R0
4A6026:  VCVT.F32.S32    S0, S0
4A602A:  VMUL.F32        S0, S0, S18
4A602E:  VMUL.F32        S0, S20, S0
4A6032:  VADD.F32        S0, S16, S0
4A6036:  VSTR            S0, [SP,#0xC0+var_98+4]
4A603A:  BLX             rand
4A603E:  VMOV            S0, R0
4A6042:  MOV             R0, R5
4A6044:  MOVS            R1, #0x20 ; ' '
4A6046:  VCVT.F32.S32    S0, S0
4A604A:  VMUL.F32        S0, S0, S18
4A604E:  VMUL.F32        S0, S20, S0
4A6052:  VADD.F32        S0, S16, S0
4A6056:  VSTR            S0, [SP,#0xC0+var_90]
4A605A:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A605E:  MOV             R6, R0
4A6060:  MOV             R0, R5
4A6062:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A6066:  ADD.W           R0, R0, R6,LSL#6
4A606A:  ADD             R6, SP, #0xC0+var_98
4A606C:  MOVS            R2, #1
4A606E:  MOV             R1, R6
4A6070:  BLX             j__Z13RwMatrixScaleP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixScale(RwMatrixTag *,RwV3d const*,RwOpCombineType)
4A6074:  MOV             R0, R5
4A6076:  MOVS            R1, #0x16
4A6078:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A607C:  MOV             R4, R0
4A607E:  MOV             R0, R5
4A6080:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A6084:  ADD.W           R0, R0, R4,LSL#6
4A6088:  MOV             R1, R6
4A608A:  MOVS            R2, #1
4A608C:  BLX             j__Z13RwMatrixScaleP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixScale(RwMatrixTag *,RwV3d const*,RwOpCombineType)
4A6090:  LDRB.W          R0, [R11,#1]
4A6094:  LSLS            R0, R0, #0x18
4A6096:  BPL             loc_4A611A
4A6098:  LDRB.W          R0, [R10,#0x75C]
4A609C:  CMP             R0, #2
4A609E:  BNE             loc_4A611A
4A60A0:  MOV             R0, R5
4A60A2:  MOVS            R1, #5
4A60A4:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A60A8:  MOV             R4, R0
4A60AA:  MOV             R0, R5
4A60AC:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A60B0:  ADD             R6, SP, #0xC0+var_98
4A60B2:  MOVS            R1, #0
4A60B4:  ADD.W           R0, R0, R4,LSL#6
4A60B8:  STRD.W          R1, R1, [SP,#0xC0+var_98]
4A60BC:  STR             R1, [SP,#0xC0+var_90]
4A60BE:  MOV             R1, R6
4A60C0:  MOVS            R2, #1
4A60C2:  BLX             j__Z13RwMatrixScaleP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixScale(RwMatrixTag *,RwV3d const*,RwOpCombineType)
4A60C6:  MOV             R0, R5
4A60C8:  MOVS            R1, #8
4A60CA:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A60CE:  MOV             R4, R0
4A60D0:  MOV             R0, R5
4A60D2:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A60D6:  ADD.W           R0, R0, R4,LSL#6
4A60DA:  MOV             R1, R6
4A60DC:  MOVS            R2, #1
4A60DE:  BLX             j__Z13RwMatrixScaleP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixScale(RwMatrixTag *,RwV3d const*,RwOpCombineType)
4A60E2:  MOV             R0, R5
4A60E4:  MOVS            R1, #6
4A60E6:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A60EA:  MOV             R4, R0
4A60EC:  MOV             R0, R5
4A60EE:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A60F2:  ADD.W           R0, R0, R4,LSL#6
4A60F6:  MOV             R1, R6
4A60F8:  MOVS            R2, #1
4A60FA:  BLX             j__Z13RwMatrixScaleP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixScale(RwMatrixTag *,RwV3d const*,RwOpCombineType)
4A60FE:  MOV             R0, R5
4A6100:  MOVS            R1, #7
4A6102:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A6106:  MOV             R4, R0
4A6108:  MOV             R0, R5
4A610A:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A610E:  ADD.W           R0, R0, R4,LSL#6
4A6112:  MOV             R1, R6
4A6114:  MOVS            R2, #1
4A6116:  BLX             j__Z13RwMatrixScaleP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixScale(RwMatrixTag *,RwV3d const*,RwOpCombineType)
4A611A:  LDR.W           R0, =(unk_61DCC8 - 0x4A6126)
4A611E:  ADD.W           R4, R10, #0x760
4A6122:  ADD             R0, PC; unk_61DCC8
4A6124:  VLDR            D16, [R0]
4A6128:  LDR             R0, [R0,#(dword_61DCD0 - 0x61DCC8)]
4A612A:  STR             R0, [SP,#0xC0+var_60]
4A612C:  VSTR            D16, [SP,#0xC0+var_68]
4A6130:  VLDR            S0, [R4]
4A6134:  VCMPE.F32       S0, #0.0
4A6138:  VMRS            APSR_nzcv, FPSCR
4A613C:  BLE             loc_4A61E2
4A613E:  VMOV            R0, S0; x
4A6142:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A6152)
4A6146:  ADDW            R2, R10, #0x764
4A614A:  VMOV.F32        S16, #-5.0
4A614E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A6150:  VLDR            S2, [R2]
4A6154:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
4A6156:  VLDR            S4, [R1]
4A615A:  VMUL.F32        S2, S2, S4
4A615E:  VSUB.F32        S18, S0, S2
4A6162:  BLX             sinf
4A6166:  VMOV            S0, R0
4A616A:  VSTR            S18, [R4]
4A616E:  LDR.W           R0, [R10,#0x59C]
4A6172:  VMUL.F32        S16, S0, S16
4A6176:  CMP             R0, #2
4A6178:  BCC             loc_4A61C2
4A617A:  MOV             R0, R5
4A617C:  MOV.W           R1, #0x12E
4A6180:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A6184:  MOV             R4, R0
4A6186:  MOV             R0, R5
4A6188:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A618C:  VMOV            R6, S16
4A6190:  ADD.W           R8, SP, #0xC0+var_68
4A6194:  ADD.W           R0, R0, R4,LSL#6
4A6198:  MOVS            R3, #1
4A619A:  MOV             R1, R8
4A619C:  MOV             R2, R6
4A619E:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A61A2:  MOV             R0, R5
4A61A4:  MOVW            R1, #0x12D
4A61A8:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A61AC:  MOV             R4, R0
4A61AE:  MOV             R0, R5
4A61B0:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A61B4:  ADD.W           R0, R0, R4,LSL#6
4A61B8:  MOV             R1, R8
4A61BA:  MOV             R2, R6
4A61BC:  MOVS            R3, #1
4A61BE:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A61C2:  MOV             R0, R5
4A61C4:  MOVS            R1, #0xC9
4A61C6:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A61CA:  MOV             R4, R0
4A61CC:  MOV             R0, R5
4A61CE:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A61D2:  VMOV            R2, S16
4A61D6:  ADD.W           R0, R0, R4,LSL#6
4A61DA:  ADD             R1, SP, #0xC0+var_68
4A61DC:  MOVS            R3, #1
4A61DE:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A61E2:  LDR.W           R0, =(_ZN8CWeather10EarthquakeE_ptr - 0x4A61EA)
4A61E6:  ADD             R0, PC; _ZN8CWeather10EarthquakeE_ptr
4A61E8:  LDR             R0, [R0]; CWeather::Earthquake ...
4A61EA:  VLDR            S16, [R0]
4A61EE:  VCMPE.F32       S16, #0.0
4A61F2:  VMRS            APSR_nzcv, FPSCR
4A61F6:  BLE.W           loc_4A6374
4A61FA:  BLX             rand
4A61FE:  VMOV            S0, R0
4A6202:  VLDR            S2, =4.6566e-10
4A6206:  VADD.F32        S4, S16, S16
4A620A:  MOV             R0, R5
4A620C:  VCVT.F32.S32    S0, S0
4A6210:  MOVS            R1, #0x2A ; '*'
4A6212:  VMUL.F32        S0, S0, S2
4A6216:  VLDR            S2, =0.0025
4A621A:  VMUL.F32        S0, S4, S0
4A621E:  VSUB.F32        S0, S0, S16
4A6222:  VMUL.F32        S16, S0, S2
4A6226:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A622A:  MOV             R4, R0
4A622C:  MOV             R0, R5
4A622E:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A6232:  VMOV            R6, S16
4A6236:  ADD.W           R8, SP, #0xC0+var_68
4A623A:  ADD.W           R0, R0, R4,LSL#6
4A623E:  MOVS            R3, #2
4A6240:  MOV             R1, R8
4A6242:  MOV             R2, R6
4A6244:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A6248:  MOV             R0, R5
4A624A:  MOVS            R1, #0x34 ; '4'
4A624C:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A6250:  MOV             R4, R0
4A6252:  MOV             R0, R5
4A6254:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A6258:  ADD.W           R0, R0, R4,LSL#6
4A625C:  MOV             R1, R8
4A625E:  MOV             R2, R6
4A6260:  MOVS            R3, #2
4A6262:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A6266:  MOV             R0, R5
4A6268:  MOVS            R1, #0x21 ; '!'
4A626A:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A626E:  MOV             R4, R0
4A6270:  MOV             R0, R5
4A6272:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A6276:  ADD.W           R0, R0, R4,LSL#6
4A627A:  MOV             R1, R8
4A627C:  MOV             R2, R6
4A627E:  MOVS            R3, #2
4A6280:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A6284:  MOV             R0, R5
4A6286:  MOVS            R1, #0x17
4A6288:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A628C:  MOV             R4, R0
4A628E:  MOV             R0, R5
4A6290:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A6294:  ADD.W           R0, R0, R4,LSL#6
4A6298:  MOV             R1, R8
4A629A:  MOV             R2, R6
4A629C:  MOVS            R3, #2
4A629E:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A62A2:  MOV             R0, R5
4A62A4:  MOVS            R1, #0x20 ; ' '
4A62A6:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A62AA:  MOV             R4, R0
4A62AC:  MOV             R0, R5
4A62AE:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A62B2:  ADD.W           R0, R0, R4,LSL#6
4A62B6:  MOV             R1, R8
4A62B8:  MOV             R2, R6
4A62BA:  MOVS            R3, #2
4A62BC:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A62C0:  MOV             R0, R5
4A62C2:  MOVS            R1, #0x16
4A62C4:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A62C8:  MOV             R4, R0
4A62CA:  MOV             R0, R5
4A62CC:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A62D0:  ADD.W           R0, R0, R4,LSL#6
4A62D4:  MOV             R1, R8
4A62D6:  MOV             R2, R6
4A62D8:  MOVS            R3, #2
4A62DA:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A62DE:  MOV             R0, R5
4A62E0:  MOVS            R1, #0x2B ; '+'
4A62E2:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A62E6:  MOV             R4, R0
4A62E8:  MOV             R0, R5
4A62EA:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A62EE:  ADD.W           R0, R0, R4,LSL#6
4A62F2:  MOV             R1, R8
4A62F4:  MOV             R2, R6
4A62F6:  MOVS            R3, #2
4A62F8:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A62FC:  MOV             R0, R5
4A62FE:  MOVS            R1, #0x35 ; '5'
4A6300:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A6304:  MOV             R4, R0
4A6306:  MOV             R0, R5
4A6308:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A630C:  ADD.W           R0, R0, R4,LSL#6
4A6310:  MOV             R1, R8
4A6312:  MOV             R2, R6
4A6314:  MOVS            R3, #2
4A6316:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A631A:  MOV             R0, R5
4A631C:  MOVS            R1, #0x22 ; '"'
4A631E:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A6322:  MOV             R4, R0
4A6324:  MOV             R0, R5
4A6326:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A632A:  ADD.W           R0, R0, R4,LSL#6
4A632E:  MOV             R1, R8
4A6330:  MOV             R2, R6
4A6332:  MOVS            R3, #2
4A6334:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A6338:  MOV             R0, R5
4A633A:  MOVS            R1, #0x18
4A633C:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A6340:  MOV             R4, R0
4A6342:  MOV             R0, R5
4A6344:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A6348:  ADD.W           R0, R0, R4,LSL#6
4A634C:  MOV             R1, R8
4A634E:  MOV             R2, R6
4A6350:  MOVS            R3, #2
4A6352:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A6356:  MOV             R0, R5
4A6358:  MOVS            R1, #5
4A635A:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A635E:  MOV             R4, R0
4A6360:  MOV             R0, R5
4A6362:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A6366:  ADD.W           R0, R0, R4,LSL#6
4A636A:  MOV             R1, R8
4A636C:  MOV             R2, R6
4A636E:  MOVS            R3, #2
4A6370:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
4A6374:  LDR.W           R0, [R11]
4A6378:  TST.W           R0, #0x8000
4A637C:  BEQ             loc_4A6412
4A637E:  LDRB.W          R0, [R10,#0x75C]
4A6382:  CMP             R0, #2
4A6384:  BNE             loc_4A6412
4A6386:  LDR.W           R0, [R11,#0xC]
4A638A:  LSLS            R0, R0, #0x1A
4A638C:  BMI             loc_4A6412
4A638E:  LDR.W           R0, [R10,#0x44C]
4A6392:  CMP             R0, #0x37 ; '7'
4A6394:  BEQ             loc_4A6412
4A6396:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x4A639E)
4A639A:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
4A639C:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
4A639E:  LDRB            R0, [R0]; CTimer::m_FrameCounter
4A63A0:  LSLS            R0, R0, #0x1D
4A63A2:  BPL             loc_4A6412
4A63A4:  LDR.W           R0, [R10,#0x18]
4A63A8:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
4A63AC:  MOVS            R1, #5
4A63AE:  MOV             R4, R0
4A63B0:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4A63B4:  MOV             R5, R0
4A63B6:  MOV             R0, R4
4A63B8:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4A63BC:  ADD.W           R0, R0, R5,LSL#6
4A63C0:  VLDR            S0, =0.6
4A63C4:  ADD             R1, SP, #0xC0+var_98; CVector *
4A63C6:  ADD             R2, SP, #0xC0+var_78; CVector *
4A63C8:  VLDR            D16, [R0,#0x30]
4A63CC:  MOVS            R3, #0x10; int
4A63CE:  LDR             R0, [R0,#0x38]
4A63D0:  STR             R0, [SP,#0xC0+var_90]
4A63D2:  VSTR            D16, [SP,#0xC0+var_98]
4A63D6:  LDR.W           R0, [R10,#0x14]
4A63DA:  VLDR            S2, [R0,#0x20]
4A63DE:  VLDR            S4, [R0,#0x24]
4A63E2:  VLDR            S6, [R0,#0x28]
4A63E6:  VMUL.F32        S2, S2, S0
4A63EA:  VMUL.F32        S4, S4, S0
4A63EE:  LDR.W           R0, =(g_fx_ptr - 0x4A63FA)
4A63F2:  VMUL.F32        S0, S6, S0
4A63F6:  ADD             R0, PC; g_fx_ptr
4A63F8:  LDR             R0, [R0]; g_fx ; this
4A63FA:  VSTR            S4, [SP,#0xC0+var_78+4]
4A63FE:  VSTR            S2, [SP,#0xC0+var_78]
4A6402:  VSTR            S0, [SP,#0xC0+var_70]
4A6406:  VLDR            S0, [R10,#0x130]
4A640A:  VSTR            S0, [SP,#0xC0+var_C0]
4A640E:  BLX             j__ZN4Fx_c8AddBloodER7CVectorS1_if; Fx_c::AddBlood(CVector &,CVector &,int,float)
4A6412:  LDR.W           R0, =(_ZN8CWeather4RainE_ptr - 0x4A641E)
4A6416:  VLDR            S0, =0.3
4A641A:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
4A641C:  LDR             R0, [R0]; CWeather::Rain ...
4A641E:  VLDR            S2, [R0]
4A6422:  VCMPE.F32       S2, S0
4A6426:  VMRS            APSR_nzcv, FPSCR
4A642A:  BLE.W           loc_4A6558
4A642E:  LDR.W           R0, =(TheCamera_ptr - 0x4A643A)
4A6432:  VMOV.F32        S2, #15.0
4A6436:  ADD             R0, PC; TheCamera_ptr
4A6438:  LDR             R0, [R0]; TheCamera
4A643A:  VLDR            S0, [R0,#0x154]
4A643E:  VCMPE.F32       S0, S2
4A6442:  VMRS            APSR_nzcv, FPSCR
4A6446:  BLE.W           loc_4A6558
4A644A:  LDR.W           R0, [R11]
4A644E:  LSLS            R0, R0, #0x17
4A6450:  BMI.W           loc_4A6558
4A6454:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x4A645C)
4A6458:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
4A645A:  LDR             R0, [R0]; CGame::currArea ...
4A645C:  LDR             R0, [R0]; CGame::currArea
4A645E:  CMP             R0, #0
4A6460:  BNE             loc_4A6558
4A6462:  LDR.W           R0, [R10,#0x14]; this
4A6466:  ADD.W           R4, R10, #4
4A646A:  VLDR            S0, =900.0
4A646E:  CMP             R0, #0
4A6470:  MOV             R1, R4
4A6472:  IT NE
4A6474:  ADDNE.W         R1, R0, #0x30 ; '0'
4A6478:  VLDR            S2, [R1,#8]
4A647C:  VCMPE.F32       S2, S0
4A6480:  VMRS            APSR_nzcv, FPSCR
4A6484:  BGE             loc_4A6558
4A6486:  BLX             j__ZN10CCullZones9CamNoRainEv; CCullZones::CamNoRain(void)
4A648A:  CMP             R0, #0
4A648C:  BNE             loc_4A6558
4A648E:  LDR.W           R0, =(TheCamera_ptr - 0x4A649A)
4A6492:  LDR.W           R1, [R10,#0x14]
4A6496:  ADD             R0, PC; TheCamera_ptr
4A6498:  CMP             R1, #0
4A649A:  LDR             R0, [R0]; TheCamera
4A649C:  LDR             R2, [R0,#(dword_951FBC - 0x951FA8)]
4A649E:  IT NE
4A64A0:  ADDNE.W         R4, R1, #0x30 ; '0'
4A64A4:  VLDR            S0, [R4]
4A64A8:  ADD.W           R1, R2, #0x30 ; '0'
4A64AC:  CMP             R2, #0
4A64AE:  IT EQ
4A64B0:  ADDEQ           R1, R0, #4
4A64B2:  VLDR            D16, [R4,#4]
4A64B6:  VLDR            S2, [R1]
4A64BA:  VLDR            D17, [R1,#4]
4A64BE:  VSUB.F32        S0, S2, S0
4A64C2:  VSUB.F32        D16, D17, D16
4A64C6:  VMUL.F32        D1, D16, D16
4A64CA:  VMUL.F32        S0, S0, S0
4A64CE:  VADD.F32        S0, S0, S2
4A64D2:  VADD.F32        S0, S0, S3
4A64D6:  VMOV.F32        S2, #25.0
4A64DA:  VSQRT.F32       S0, S0
4A64DE:  VCMPE.F32       S0, S2
4A64E2:  VMRS            APSR_nzcv, FPSCR
4A64E6:  BGE             loc_4A6558
4A64E8:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4A64F2)
4A64EA:  LDRSH.W         R2, [R10,#0x26]
4A64EE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4A64F0:  LDR.W           R1, [R10,#0x18]
4A64F4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4A64F6:  LDR.W           R4, [R0,R2,LSL#2]
4A64FA:  MOV             R0, R4
4A64FC:  BLX             j__ZN13CPedModelInfo30AnimatePedColModelSkinnedWorldEP7RpClump; CPedModelInfo::AnimatePedColModelSkinnedWorld(RpClump *)
4A6500:  MOV.W           R0, #0xFFFFFFFF; int
4A6504:  LDR             R4, [R4,#0x4C]
4A6506:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
4A650A:  VLDR            S20, [R0]
4A650E:  VLDR            S0, =0.05
4A6512:  VABS.F32        S2, S20
4A6516:  VCMPE.F32       S2, S0
4A651A:  VMRS            APSR_nzcv, FPSCR
4A651E:  BGT             loc_4A6558
4A6520:  VLDR            S18, [R0,#4]
4A6524:  VABS.F32        S2, S18
4A6528:  VCMPE.F32       S2, S0
4A652C:  VMRS            APSR_nzcv, FPSCR
4A6530:  BGT             loc_4A6558
4A6532:  VLDR            S16, [R0,#8]
4A6536:  LDR.W           R0, [R10,#0x44C]
4A653A:  SUB.W           R1, R0, #0x2A ; '*'
4A653E:  CMP             R1, #0xD
4A6540:  BHI             loc_4A6550
4A6542:  MOVS            R2, #1
4A6544:  LSL.W           R1, R2, R1
4A6548:  MOVW            R2, #0x3001
4A654C:  TST             R1, R2
4A654E:  BNE             loc_4A6558
4A6550:  SUBS            R0, #0x10
4A6552:  CMP             R0, #2
4A6554:  BCS.W           loc_4A66CC
4A6558:  LDR.W           R0, [R10,#0x444]
4A655C:  CMP             R0, #0
4A655E:  BEQ.W           loc_4A669C
4A6562:  LDRSB.W         R1, [R0,#0x8C]
4A6566:  CMP             R1, #1
4A6568:  BLT.W           loc_4A669C
4A656C:  LDRB.W          R0, [R0,#0x8E]
4A6570:  CMP             R0, #0x1D
4A6572:  BHI.W           loc_4A669C
4A6576:  MOVW            R0, #0xCCCD
4A657A:  MOVW            R1, #0x999A
4A657E:  MOVW            R2, #0xCCCD
4A6582:  ADD             R5, SP, #0xC0+var_98
4A6584:  MOVT            R0, #0x3DCC
4A6588:  MOVS            R4, #0
4A658A:  MOVT            R1, #0x3E19
4A658E:  MOVT            R2, #0x3E4C
4A6592:  STRD.W          R2, R1, [SP,#0xC0+var_C0]; float
4A6596:  MOV.W           R1, #0x3F800000; float
4A659A:  STRD.W          R4, R0, [SP,#0xC0+var_B8]; float
4A659E:  MOV             R0, R5; this
4A65A0:  MOV.W           R2, #0x3F800000; float
4A65A4:  MOV.W           R3, #0x3F800000; float
4A65A8:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
4A65AC:  LDR.W           R0, [R10,#0x14]
4A65B0:  ADD.W           R1, R0, #0x30 ; '0'
4A65B4:  CMP             R0, #0
4A65B6:  IT EQ
4A65B8:  ADDEQ.W         R1, R10, #4
4A65BC:  VLDR            D16, [R1]
4A65C0:  LDR             R0, [R1,#8]
4A65C2:  STR             R0, [SP,#0xC0+var_70]
4A65C4:  VSTR            D16, [SP,#0xC0+var_78]
4A65C8:  BLX             rand
4A65CC:  VMOV            S0, R0
4A65D0:  VLDR            S16, =4.6566e-10
4A65D4:  VLDR            S18, =0.6
4A65D8:  VCVT.F32.S32    S0, S0
4A65DC:  VLDR            S20, =-0.3
4A65E0:  VLDR            S2, [SP,#0xC0+var_78]
4A65E4:  VMUL.F32        S0, S0, S16
4A65E8:  VMUL.F32        S0, S0, S18
4A65EC:  VADD.F32        S0, S0, S20
4A65F0:  VADD.F32        S0, S2, S0
4A65F4:  VSTR            S0, [SP,#0xC0+var_78]
4A65F8:  BLX             rand
4A65FC:  VMOV            S0, R0
4A6600:  VCVT.F32.S32    S0, S0
4A6604:  VLDR            S2, [SP,#0xC0+var_78+4]
4A6608:  VMUL.F32        S0, S0, S16
4A660C:  VMUL.F32        S0, S0, S18
4A6610:  VADD.F32        S0, S0, S20
4A6614:  VADD.F32        S0, S2, S0
4A6618:  VSTR            S0, [SP,#0xC0+var_78+4]
4A661C:  BLX             rand
4A6620:  VMOV            S0, R0
4A6624:  VLDR            S2, =-0.8
4A6628:  MOVW            R1, #0x999A
4A662C:  MOVW            R2, #0x999A
4A6630:  VCVT.F32.S32    S0, S0
4A6634:  MOVS            R3, #0
4A6636:  MOVT            R1, #0x3F19
4A663A:  MOVT            R2, #0x3F99
4A663E:  MOVT            R3, #0xBF80
4A6642:  VMUL.F32        S0, S0, S16
4A6646:  VADD.F32        S0, S0, S2
4A664A:  VLDR            S2, [SP,#0xC0+var_70]
4A664E:  VADD.F32        S0, S2, S0
4A6652:  VLDR            S2, =100.0
4A6656:  VSTR            S0, [SP,#0xC0+var_70]
4A665A:  STRD.W          R4, R4, [SP,#0xC0+var_A4]
4A665E:  STR             R4, [SP,#0xC0+var_9C]
4A6660:  LDR.W           R0, [R10,#0x444]
4A6664:  LDRSB.W         R0, [R0,#0x8C]
4A6668:  VMOV            S0, R0
4A666C:  LDR             R0, =(g_fx_ptr - 0x4A6676)
4A666E:  VCVT.F32.S32    S0, S0
4A6672:  ADD             R0, PC; g_fx_ptr
4A6674:  LDR             R0, [R0]; g_fx
4A6676:  LDR             R0, [R0,#(dword_820558 - 0x820520)]; int
4A6678:  VDIV.F32        S0, S0, S2
4A667C:  VLDR            S2, [SP,#0xC0+var_8C]
4A6680:  VMUL.F32        S0, S2, S0
4A6684:  VSTR            S0, [SP,#0xC0+var_8C]
4A6688:  STRD.W          R5, R3, [SP,#0xC0+var_C0]; int
4A668C:  MOVS            R3, #0; int
4A668E:  STRD.W          R2, R1, [SP,#0xC0+var_B8]; float
4A6692:  ADD             R1, SP, #0xC0+var_78; int
4A6694:  ADD             R2, SP, #0xC0+var_A4; int
4A6696:  STR             R4, [SP,#0xC0+var_B0]; int
4A6698:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
4A669C:  LDRB.W          R0, [R11,#1]
4A66A0:  LSLS            R0, R0, #0x1F
4A66A2:  BEQ             loc_4A66B4
4A66A4:  LDR.W           R0, [R10,#0x590]
4A66A8:  CMP             R0, #0
4A66AA:  ITT NE
4A66AC:  LDRNE.W         R0, [R0,#0x130]
4A66B0:  STRNE.W         R0, [R10,#0x130]
4A66B4:  ADD             SP, SP, #0x68 ; 'h'
4A66B6:  VPOP            {D8-D14}
4A66BA:  ADD             SP, SP, #4
4A66BC:  POP.W           {R8-R11}
4A66C0:  POP             {R4-R7,PC}
4A66C2:  ALIGN 4
4A66C4:  DCFS 0.6
4A66C8:  DCFS 0.3
4A66CC:  MOVW            R1, #0x999A
4A66D0:  MOV             R0, R10; this
4A66D2:  MOVT            R1, #0x3E99; float
4A66D6:  BLX             j__ZN4CPed17IsPedHeadAbovePosEf; CPed::IsPedHeadAbovePos(float)
4A66DA:  CMP             R0, #0
4A66DC:  BEQ.W           loc_4A6558
4A66E0:  LDR.W           R0, [R10,#0x18]
4A66E4:  MOVS            R1, #0xA
4A66E6:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4A66EA:  CMP             R0, #0
4A66EC:  BNE.W           loc_4A6558
4A66F0:  LDR             R0, [R4,#0x2C]
4A66F2:  STR             R0, [SP,#0xC0+var_A8]
4A66F4:  LDRSH.W         R6, [R0]
4A66F8:  CMP             R6, #1
4A66FA:  BLT.W           loc_4A6558
4A66FE:  VLDR            S0, =50.0
4A6702:  VMOV.F32        S28, #0.75
4A6706:  LDR             R0, =(g_fx_ptr - 0x4A671C)
4A6708:  MOV.W           R8, #0x11
4A670C:  VMUL.F32        S16, S16, S0
4A6710:  VLDR            S22, =4.6566e-10
4A6714:  VMUL.F32        S18, S18, S0
4A6718:  ADD             R0, PC; g_fx_ptr
4A671A:  VMUL.F32        S20, S20, S0
4A671E:  VLDR            S24, =0.16
4A6722:  VLDR            S26, =-0.08
4A6726:  MOV.W           R9, #0
4A672A:  LDR             R0, [R0]; g_fx
4A672C:  STR             R0, [SP,#0xC0+var_AC]
4A672E:  LDR             R0, [SP,#0xC0+var_A8]
4A6730:  LDR             R5, [R0,#8]
4A6732:  LDRB.W          R0, [R5,R8]
4A6736:  CMP             R0, #9
4A6738:  BHI             loc_4A6826
4A673A:  MOVS            R1, #1
4A673C:  LSL.W           R0, R1, R0
4A6740:  TST.W           R0, #0x260
4A6744:  BEQ             loc_4A6826
4A6746:  MOVW            R0, #0x3333
4A674A:  ADD             R4, SP, #0xC0+var_98
4A674C:  MOVT            R0, #0x3EB3
4A6750:  MOV.W           R1, #0x3F800000; float
4A6754:  STR             R0, [SP,#0xC0+var_C0]; float
4A6756:  MOV             R0, #0x3C23D70A
4A675E:  MOV.W           R2, #0x3F800000; float
4A6762:  STRD.W          R0, R9, [SP,#0xC0+var_BC]; float
4A6766:  MOV             R0, #0x3CF5C28F
4A676E:  MOV.W           R3, #0x3F800000; float
4A6772:  STR             R0, [SP,#0xC0+var_B4]; float
4A6774:  MOV             R0, R4; this
4A6776:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
4A677A:  ADD             R5, R8
4A677C:  SUB.W           R0, R5, #0x11
4A6780:  VLDR            D16, [R0]
4A6784:  LDR.W           R0, [R5,#-9]
4A6788:  STR             R0, [SP,#0xC0+var_70]
4A678A:  VSTR            D16, [SP,#0xC0+var_78]
4A678E:  BLX             rand
4A6792:  VMOV            S0, R0
4A6796:  VCVT.F32.S32    S0, S0
4A679A:  VLDR            S2, [SP,#0xC0+var_78]
4A679E:  VMUL.F32        S0, S0, S22
4A67A2:  VMUL.F32        S0, S0, S24
4A67A6:  VADD.F32        S0, S0, S26
4A67AA:  VADD.F32        S0, S2, S0
4A67AE:  VSTR            S0, [SP,#0xC0+var_78]
4A67B2:  BLX             rand
4A67B6:  VMOV            S0, R0
4A67BA:  SUBS            R0, R5, #5
4A67BC:  MOVS            R1, #0
4A67BE:  ADD             R2, SP, #0xC0+var_A4; int
4A67C0:  VCVT.F32.S32    S0, S0
4A67C4:  VLDR            S2, [SP,#0xC0+var_78+4]
4A67C8:  VLDR            S4, [SP,#0xC0+var_70]
4A67CC:  MOVT            R1, #0xBF80
4A67D0:  MOVS            R3, #0; int
4A67D2:  VMUL.F32        S0, S0, S22
4A67D6:  VMUL.F32        S0, S0, S24
4A67DA:  VADD.F32        S0, S0, S26
4A67DE:  VADD.F32        S0, S2, S0
4A67E2:  VSTR            S0, [SP,#0xC0+var_78+4]
4A67E6:  VLDR            S0, [R0]
4A67EA:  LDR             R0, [SP,#0xC0+var_AC]
4A67EC:  VMUL.F32        S0, S0, S28
4A67F0:  STR             R4, [SP,#0xC0+var_C0]; int
4A67F2:  STR             R1, [SP,#0xC0+var_BC]; float
4A67F4:  MOV             R1, #0x3F99999A
4A67FC:  LDR             R0, [R0,#0x30]; int
4A67FE:  STR             R1, [SP,#0xC0+var_B8]; float
4A6800:  MOV             R1, #0x3F19999A
4A6808:  VSTR            S18, [SP,#0xC0+var_A0]
4A680C:  VSTR            S20, [SP,#0xC0+var_A4]
4A6810:  VSTR            S16, [SP,#0xC0+var_9C]
4A6814:  VADD.F32        S0, S4, S0
4A6818:  VSTR            S0, [SP,#0xC0+var_70]
4A681C:  STRD.W          R1, R9, [SP,#0xC0+var_B4]; float
4A6820:  ADD             R1, SP, #0xC0+var_78; int
4A6822:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
4A6826:  ADD.W           R8, R8, #0x14
4A682A:  SUBS            R6, #1
4A682C:  BNE.W           loc_4A672E
4A6830:  B               loc_4A6558
