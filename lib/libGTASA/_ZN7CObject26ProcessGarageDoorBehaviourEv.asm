; =========================================================
; Game Engine Function: _ZN7CObject26ProcessGarageDoorBehaviourEv
; Address            : 0x314970 - 0x314AFA
; =========================================================

314970:  PUSH            {R4,R6,R7,LR}
314972:  ADD             R7, SP, #8
314974:  MOV             R4, R0
314976:  LDRSB.W         LR, [R4,#0x14B]
31497A:  CMP.W           LR, #0xFFFFFFFF
31497E:  BGT             loc_314996
314980:  MOV             R0, R4; this
314982:  BLX             j__ZN8CGarages19FindGarageForObjectEP7CObject; CGarages::FindGarageForObject(CObject *)
314986:  SXTB.W          LR, R0
31498A:  CMP.W           LR, #0
31498E:  STRB.W          R0, [R4,#0x14B]
314992:  IT LT
314994:  POPLT           {R4,R6,R7,PC}
314996:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3149A4)
314998:  MOV.W           R12, #0xD8
31499C:  LDRSH.W         R2, [R4,#0x26]
3149A0:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3149A2:  LDR.W           R3, [R4,#0x178]
3149A6:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3149A8:  LDR             R0, [R3,#0x14]
3149AA:  LDR.W           R1, [R1,R2,LSL#2]
3149AE:  CMP             R0, #0
3149B0:  LDR             R2, =(_ZN8CGarages8aGaragesE_ptr - 0x3149B8)
3149B2:  LDR             R1, [R1,#0x2C]
3149B4:  ADD             R2, PC; _ZN8CGarages8aGaragesE_ptr
3149B6:  LDR             R2, [R2]; CGarages::aGarages ...
3149B8:  VLDR            S0, [R1,#8]
3149BC:  VLDR            S2, [R1,#0x14]
3149C0:  SMLABB.W        R1, LR, R12, R2
3149C4:  ADD.W           R2, R0, #0x30 ; '0'
3149C8:  VSUB.F32        S0, S2, S0
3149CC:  VLDR            S2, =-0.1
3149D0:  LDRB.W          R1, [R1,#0x4E]
3149D4:  IT EQ
3149D6:  ADDEQ           R2, R3, #4; float
3149D8:  LSLS            R0, R1, #0x1C
3149DA:  VADD.F32        S2, S0, S2
3149DE:  VLDR            S0, [R2,#8]
3149E2:  BMI             loc_314A14
3149E4:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x3149EA)
3149E6:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
3149E8:  LDR             R0, [R0]; CGarages::aGarages ...
3149EA:  SMLABB.W        R0, LR, R12, R0
3149EE:  LDRB.W          R1, [R0,#0x4C]
3149F2:  CMP             R1, #0x2D ; '-'
3149F4:  BEQ             loc_314A62
3149F6:  CMP             R1, #0x2C ; ','
3149F8:  BNE             loc_314A92
3149FA:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x314A02)
3149FC:  MOVS            R1, #0xD8
3149FE:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
314A00:  LDR             R0, [R0]; CGarages::aGarages ...
314A02:  SMLABB.W        R0, LR, R1, R0
314A06:  VLDR            S4, [R0,#0x38]
314A0A:  VMUL.F32        S2, S2, S4
314A0E:  VSUB.F32        S0, S0, S2
314A12:  B               loc_314AB2
314A14:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x314A1A)
314A16:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
314A18:  LDR             R0, [R0]; CGarages::aGarages ...
314A1A:  SMLABB.W        R1, LR, R12, R0
314A1E:  VLDR            S4, [R1,#0x38]
314A22:  LDR             R1, [R4,#0x14]
314A24:  VMUL.F32        S2, S2, S4
314A28:  VLDR            S4, =0.48
314A2C:  VMUL.F32        S2, S2, S4
314A30:  VADD.F32        S0, S0, S2
314A34:  VSTR            S0, [R1,#0x38]
314A38:  LDRSB.W         R1, [R4,#0x14B]
314A3C:  SMLABB.W        R0, R1, R12, R0
314A40:  VLDR            S0, [R0,#0x38]
314A44:  LDRB.W          R0, [R0,#0x4E]
314A48:  VNEG.F32        S2, S0
314A4C:  TST.W           R0, #0x10
314A50:  MOV             R0, R4; this
314A52:  IT EQ
314A54:  VMOVEQ.F32      S2, S0
314A58:  VMOV            R1, S2; CEntity *
314A5C:  BLX             j__ZN7CGarage22BuildRotatedDoorMatrixEP7CEntityf; CGarage::BuildRotatedDoorMatrix(CEntity *,float)
314A60:  B               loc_314AB8
314A62:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x314A72)
314A64:  MOVS            R1, #0xD8
314A66:  VMOV.F32        S6, #-14.0
314A6A:  VLDR            S0, [R2]
314A6E:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
314A70:  LDR             R0, [R0]; CGarages::aGarages ...
314A72:  SMLABB.W        R0, LR, R1, R0
314A76:  LDR             R1, [R4,#0x14]
314A78:  VLDR            S2, [R1]
314A7C:  VLDR            S4, [R0,#0x38]
314A80:  VMUL.F32        S2, S4, S2
314A84:  VMUL.F32        S2, S2, S6
314A88:  VADD.F32        S0, S0, S2
314A8C:  VSTR            S0, [R1,#0x30]
314A90:  B               loc_314AB8
314A92:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x314A9A)
314A94:  MOVS            R1, #0xD8
314A96:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
314A98:  LDR             R0, [R0]; CGarages::aGarages ...
314A9A:  SMLABB.W        R0, LR, R1, R0
314A9E:  VLDR            S4, [R0,#0x38]
314AA2:  VMUL.F32        S2, S2, S4
314AA6:  VLDR            S4, =1.1
314AAA:  VDIV.F32        S2, S2, S4
314AAE:  VADD.F32        S0, S0, S2
314AB2:  LDR             R0, [R4,#0x14]
314AB4:  VSTR            S0, [R0,#0x38]
314AB8:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x314AC4)
314ABA:  MOVS            R2, #0xD8
314ABC:  LDRSB.W         R1, [R4,#0x14B]
314AC0:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
314AC2:  LDR             R0, [R0]; CGarages::aGarages ...
314AC4:  SMLABB.W        R0, R1, R2, R0
314AC8:  LDRB.W          R1, [R0,#0x4E]
314ACC:  LDRD.W          R0, R2, [R4,#0x18]
314AD0:  LSRS            R1, R1, #6
314AD2:  CMP             R0, #0
314AD4:  BFI.W           R2, R1, #0, #1
314AD8:  STR             R2, [R4,#0x1C]
314ADA:  BEQ             loc_314AF0
314ADC:  LDR             R1, [R0,#4]
314ADE:  LDR             R0, [R4,#0x14]
314AE0:  ADDS            R1, #0x10
314AE2:  CBZ             R0, loc_314AEA
314AE4:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
314AE8:  B               loc_314AF0
314AEA:  ADDS            R0, R4, #4
314AEC:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
314AF0:  MOV             R0, R4; this
314AF2:  POP.W           {R4,R6,R7,LR}
314AF6:  B.W             j_j__ZN7CEntity13UpdateRwFrameEv; j_CEntity::UpdateRwFrame(void)
