; =========================================================
; Game Engine Function: _ZN24CTaskSimpleGoToPointFine18SetBlendedMoveAnimEP4CPed
; Address            : 0x51795C - 0x517C68
; =========================================================

51795C:  PUSH            {R4-R7,LR}
51795E:  ADD             R7, SP, #0xC
517960:  PUSH.W          {R8-R11}
517964:  SUB             SP, SP, #4
517966:  VPUSH           {D8}
51796A:  SUB             SP, SP, #8
51796C:  MOV             R5, R1
51796E:  MOV             R9, R0
517970:  LDR             R0, [R5,#0x18]
517972:  MOVS            R1, #3
517974:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
517978:  MOV             R4, R0
51797A:  LDR             R0, [R5,#0x18]
51797C:  MOVS            R1, #0
51797E:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
517982:  MOV             R6, R0
517984:  LDR             R0, [R5,#0x18]
517986:  MOVS            R1, #1
517988:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
51798C:  MOV             R10, R0
51798E:  LDR             R0, [R5,#0x18]
517990:  MOVS            R1, #2
517992:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
517996:  STR             R0, [SP,#0x30+var_2C]
517998:  MOVS            R1, #0xA
51799A:  LDR             R0, [R5,#0x18]
51799C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5179A0:  MOV             R11, R0
5179A2:  LDR.W           R0, [R5,#0x484]
5179A6:  ADDW            R8, R5, #0x484
5179AA:  TST.W           R0, #0x4000000
5179AE:  BNE             loc_517A3C
5179B0:  LDR.W           R0, [R5,#0x488]
5179B4:  LSLS            R0, R0, #0x1F
5179B6:  BEQ             loc_5179EA
5179B8:  CMP             R6, #0
5179BA:  ITTT NE
5179BC:  MOVNE           R0, R6; this
5179BE:  MOVNE           R1, #0; float
5179C0:  BLXNE           j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
5179C4:  CMP.W           R10, #0
5179C8:  ITTT NE
5179CA:  MOVNE           R0, R10; this
5179CC:  MOVNE           R1, #0; float
5179CE:  BLXNE           j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
5179D2:  LDR             R0, [SP,#0x30+var_2C]; this
5179D4:  CMP             R0, #0
5179D6:  ITT NE
5179D8:  MOVNE           R1, #0; float
5179DA:  BLXNE           j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
5179DE:  LDR.W           R0, [R8,#4]
5179E2:  BIC.W           R0, R0, #1
5179E6:  STR.W           R0, [R8,#4]
5179EA:  VLDR            S0, [R9,#0x20]
5179EE:  VCMP.F32        S0, #0.0
5179F2:  VMRS            APSR_nzcv, FPSCR
5179F6:  BNE             loc_517A7A
5179F8:  CBNZ            R4, loc_517A0A
5179FA:  LDR.W           R1, [R5,#0x4E0]; int
5179FE:  MOVS            R2, #3; unsigned int
517A00:  LDR             R0, [R5,#0x18]; int
517A02:  MOV.W           R3, #0x40800000
517A06:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
517A0A:  CBZ             R6, loc_517A14
517A0C:  LDR             R0, [R6]
517A0E:  LDR             R1, [R0,#4]
517A10:  MOV             R0, R6
517A12:  BLX             R1
517A14:  CMP.W           R10, #0
517A18:  BEQ             loc_517A24
517A1A:  LDR.W           R0, [R10]
517A1E:  LDR             R1, [R0,#4]
517A20:  MOV             R0, R10
517A22:  BLX             R1
517A24:  LDR             R0, [SP,#0x30+var_2C]
517A26:  CMP             R0, #0
517A28:  ITTT NE
517A2A:  LDRNE           R1, [R0]
517A2C:  LDRNE           R1, [R1,#4]
517A2E:  BLXNE           R1
517A30:  MOV             R0, R5
517A32:  MOVS            R1, #1
517A34:  MOVS            R4, #1
517A36:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
517A3A:  B               loc_517C56
517A3C:  LDR.W           R0, [R5,#0x440]; this
517A40:  MOVS            R1, #0; bool
517A42:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
517A46:  CMP             R0, #0
517A48:  BEQ.W           loc_517B6C
517A4C:  VMOV.F32        S0, #0.5
517A50:  VLDR            S2, [R9,#0x20]
517A54:  VMOV.F32        S4, #1.0
517A58:  LDR.W           R0, [R5,#0x440]; this
517A5C:  MOVS            R1, #0; bool
517A5E:  VMUL.F32        S0, S2, S0
517A62:  VMIN.F32        D0, D0, D2
517A66:  VMOV            R4, S0
517A6A:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
517A6E:  EOR.W           R2, R4, #0x80000000
517A72:  MOVS            R1, #0
517A74:  BLX             j__ZN15CTaskSimpleDuck15ControlDuckMoveE9CVector2D; CTaskSimpleDuck::ControlDuckMove(CVector2D)
517A78:  B               loc_517C5A
517A7A:  CBZ             R4, loc_517A9E
517A7C:  CMP             R6, #0
517A7E:  ITTT NE
517A80:  MOVNE           R0, R6; this
517A82:  MOVNE           R1, #0; float
517A84:  BLXNE           j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
517A88:  CMP.W           R10, #0
517A8C:  ITTT NE
517A8E:  MOVNE           R0, R10; this
517A90:  MOVNE           R1, #0; float
517A92:  BLXNE           j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
517A96:  LDR             R0, [R4]
517A98:  LDR             R1, [R0,#4]
517A9A:  MOV             R0, R4
517A9C:  BLX             R1
517A9E:  CMP.W           R11, #0
517AA2:  BEQ             loc_517AB8
517AA4:  MOVS            R1, #0
517AA6:  LDR.W           R0, [R11]
517AAA:  MOVT            R1, #0xC080
517AAE:  STR.W           R1, [R11,#0x1C]
517AB2:  LDR             R1, [R0,#4]
517AB4:  MOV             R0, R11
517AB6:  BLX             R1
517AB8:  VMOV.F32        S2, #1.0
517ABC:  VLDR            S0, [R9,#0x20]
517AC0:  VCMPE.F32       S0, S2
517AC4:  VMRS            APSR_nzcv, FPSCR
517AC8:  BLE             loc_517B78
517ACA:  VMOV.F32        S16, #2.0
517ACE:  VCMPE.F32       S0, S16
517AD2:  VMRS            APSR_nzcv, FPSCR
517AD6:  BLE             loc_517BCA
517AD8:  VMOV.F32        S16, #3.0
517ADC:  VCMPE.F32       S0, S16
517AE0:  VMRS            APSR_nzcv, FPSCR
517AE4:  BGT.W           loc_517C5A
517AE8:  CBZ             R6, loc_517AF2
517AEA:  LDR             R0, [R6]
517AEC:  LDR             R1, [R0,#4]
517AEE:  MOV             R0, R6
517AF0:  BLX             R1
517AF2:  CMP.W           R10, #0
517AF6:  BNE             loc_517B14
517AF8:  LDR.W           R1, [R5,#0x4E0]; int
517AFC:  MOVS            R2, #1; unsigned int
517AFE:  LDR             R0, [R5,#0x18]; int
517B00:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
517B04:  MOV             R10, R0
517B06:  MOVS            R0, #0
517B08:  STR.W           R0, [R10,#0x18]
517B0C:  MOV.W           R0, #0x3F800000
517B10:  STR.W           R0, [R10,#0x24]
517B14:  LDRH.W          R0, [R10,#0x2E]
517B18:  MOVS            R4, #0
517B1A:  ORR.W           R0, R0, #1
517B1E:  STRH.W          R0, [R10,#0x2E]
517B22:  VLDR            S0, [R9,#0x20]
517B26:  STR.W           R4, [R10,#0x1C]
517B2A:  VSUB.F32        S0, S16, S0
517B2E:  VSTR            S0, [R10,#0x18]
517B32:  LDR             R0, [SP,#0x30+var_2C]
517B34:  CBNZ            R0, loc_517B4A
517B36:  LDR.W           R1, [R5,#0x4E0]; int
517B3A:  MOVS            R2, #2; unsigned int
517B3C:  LDR             R0, [R5,#0x18]; int
517B3E:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
517B42:  MOV.W           R1, #0x3F800000
517B46:  STR             R4, [R0,#0x18]
517B48:  STR             R1, [R0,#0x24]
517B4A:  VMOV.F32        S0, #-2.0
517B4E:  LDRH            R1, [R0,#0x2E]
517B50:  ORR.W           R1, R1, #1
517B54:  STRH            R1, [R0,#0x2E]
517B56:  VLDR            S2, [R9,#0x20]
517B5A:  MOVS            R1, #7
517B5C:  STR             R4, [R0,#0x1C]
517B5E:  MOVS            R4, #7
517B60:  VADD.F32        S0, S2, S0
517B64:  VSTR            S0, [R0,#0x18]
517B68:  MOV             R0, R5
517B6A:  B               loc_517C4E
517B6C:  LDR.W           R0, [R8,#4]
517B70:  LSLS            R0, R0, #0x1F
517B72:  BNE.W           loc_5179B8
517B76:  B               loc_5179EA
517B78:  CBNZ            R6, loc_517B92
517B7A:  LDR.W           R1, [R5,#0x4E0]; int
517B7E:  MOVS            R2, #0; unsigned int
517B80:  LDR             R0, [R5,#0x18]; int
517B82:  MOVS            R4, #0
517B84:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
517B88:  MOV             R6, R0
517B8A:  MOV.W           R0, #0x3F800000
517B8E:  STR             R4, [R6,#0x18]
517B90:  STR             R0, [R6,#0x24]
517B92:  LDRH            R1, [R6,#0x2E]
517B94:  CMP.W           R10, #0
517B98:  MOV.W           R0, #0x3F800000
517B9C:  MOV.W           R2, #0
517BA0:  STRD.W          R0, R2, [R6,#0x18]
517BA4:  ORR.W           R0, R1, #1
517BA8:  STRH            R0, [R6,#0x2E]
517BAA:  BEQ             loc_517BB6
517BAC:  LDR.W           R0, [R10]
517BB0:  LDR             R1, [R0,#4]
517BB2:  MOV             R0, R10
517BB4:  BLX             R1
517BB6:  LDR             R0, [SP,#0x30+var_2C]
517BB8:  CMP             R0, #0
517BBA:  ITTT NE
517BBC:  LDRNE           R1, [R0]
517BBE:  LDRNE           R1, [R1,#4]
517BC0:  BLXNE           R1
517BC2:  MOVS            R4, #4
517BC4:  MOV             R0, R5
517BC6:  MOVS            R1, #4
517BC8:  B               loc_517C4E
517BCA:  CBNZ            R6, loc_517BE4
517BCC:  LDR.W           R1, [R5,#0x4E0]; int
517BD0:  MOVS            R2, #0; unsigned int
517BD2:  LDR             R0, [R5,#0x18]; int
517BD4:  MOVS            R4, #0
517BD6:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
517BDA:  MOV             R6, R0
517BDC:  MOV.W           R0, #0x3F800000
517BE0:  STR             R4, [R6,#0x18]
517BE2:  STR             R0, [R6,#0x24]
517BE4:  LDRH            R0, [R6,#0x2E]
517BE6:  MOVS            R4, #0
517BE8:  CMP.W           R10, #0
517BEC:  ORR.W           R0, R0, #1
517BF0:  STRH            R0, [R6,#0x2E]
517BF2:  VLDR            S0, [R9,#0x20]
517BF6:  STR             R4, [R6,#0x1C]
517BF8:  VSUB.F32        S0, S16, S0
517BFC:  VSTR            S0, [R6,#0x18]
517C00:  BNE             loc_517C1C
517C02:  LDR.W           R1, [R5,#0x4E0]; int
517C06:  MOVS            R2, #1; unsigned int
517C08:  LDR             R0, [R5,#0x18]; int
517C0A:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
517C0E:  MOV             R10, R0
517C10:  MOV.W           R0, #0x3F800000
517C14:  STR.W           R4, [R10,#0x18]
517C18:  STR.W           R0, [R10,#0x24]
517C1C:  VMOV.F32        S0, #-1.0
517C20:  LDRH.W          R0, [R10,#0x2E]
517C24:  ORR.W           R0, R0, #1
517C28:  STRH.W          R0, [R10,#0x2E]
517C2C:  VLDR            S2, [R9,#0x20]
517C30:  STR.W           R4, [R10,#0x1C]
517C34:  VADD.F32        S0, S2, S0
517C38:  VSTR            S0, [R10,#0x18]
517C3C:  LDR             R0, [SP,#0x30+var_2C]
517C3E:  CMP             R0, #0
517C40:  ITTT NE
517C42:  LDRNE           R1, [R0]
517C44:  LDRNE           R1, [R1,#4]
517C46:  BLXNE           R1
517C48:  MOVS            R4, #6
517C4A:  MOV             R0, R5
517C4C:  MOVS            R1, #6
517C4E:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
517C52:  STR.W           R4, [R5,#0x53C]
517C56:  STR.W           R4, [R9,#8]
517C5A:  ADD             SP, SP, #8
517C5C:  VPOP            {D8}
517C60:  ADD             SP, SP, #4
517C62:  POP.W           {R8-R11}
517C66:  POP             {R4-R7,PC}
