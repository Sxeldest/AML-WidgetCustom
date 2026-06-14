; =========================================================
; Game Engine Function: _ZN9IKChain_c17MoveBonesToTargetEv
; Address            : 0x4D29B8 - 0x4D2CB2
; =========================================================

4D29B8:  PUSH            {R4-R7,LR}
4D29BA:  ADD             R7, SP, #0xC
4D29BC:  PUSH.W          {R8-R11}
4D29C0:  SUB             SP, SP, #4
4D29C2:  VPUSH           {D8-D15}
4D29C6:  SUB             SP, SP, #0x60
4D29C8:  MOV             R4, R0
4D29CA:  LDR             R0, [R4,#0x10]
4D29CC:  LDRB.W          R1, [R4,#0x54]
4D29D0:  LDR.W           R10, [R0]
4D29D4:  CMP             R1, #0
4D29D6:  BEQ             loc_4D2A66
4D29D8:  LDR             R0, [R4,#0x30]
4D29DA:  CBZ             R0, loc_4D2A48
4D29DC:  LDR             R0, [R0,#0x18]
4D29DE:  CMP             R0, #0
4D29E0:  ITTE NE
4D29E2:  LDRNE           R0, [R0,#4]
4D29E4:  ADDNE.W         R5, R0, #0x10
4D29E8:  MOVEQ           R5, #0
4D29EA:  MOV             R0, R5
4D29EC:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
4D29F0:  LDR             R2, [R4,#0x34]
4D29F2:  ADDS            R0, R2, #1
4D29F4:  BEQ             loc_4D2A56
4D29F6:  LDR             R0, [R4,#0x30]; this
4D29F8:  ADD.W           R1, R4, #0x48 ; 'H'
4D29FC:  MOVS            R3, #0
4D29FE:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
4D2A02:  CBZ             R5, loc_4D2A66
4D2A04:  MOV             R0, R5
4D2A06:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
4D2A0A:  ADD.W           R1, R4, #0x38 ; '8'
4D2A0E:  ADD             R0, SP, #0xC0+var_A0
4D2A10:  MOV             R2, R5
4D2A12:  BLX             j__Z20RwV3dTransformVectorP5RwV3dPKS_PK11RwMatrixTag; RwV3dTransformVector(RwV3d *,RwV3d const*,RwMatrixTag const*)
4D2A16:  VLDR            S0, [R4,#0x48]
4D2A1A:  VLDR            S6, [SP,#0xC0+var_A0]
4D2A1E:  VLDR            S2, [R4,#0x4C]
4D2A22:  VADD.F32        S0, S0, S6
4D2A26:  VLDR            S6, [SP,#0xC0+var_9C]
4D2A2A:  VLDR            S4, [R4,#0x50]
4D2A2E:  VADD.F32        S2, S2, S6
4D2A32:  VLDR            S6, [SP,#0xC0+var_98]
4D2A36:  VADD.F32        S4, S4, S6
4D2A3A:  VSTR            S0, [R4,#0x48]
4D2A3E:  VSTR            S2, [R4,#0x4C]
4D2A42:  VSTR            S4, [R4,#0x50]
4D2A46:  B               loc_4D2A66
4D2A48:  VLDR            D16, [R4,#0x38]
4D2A4C:  LDR             R0, [R4,#0x40]
4D2A4E:  STR             R0, [R4,#0x50]
4D2A50:  VSTR            D16, [R4,#0x48]
4D2A54:  B               loc_4D2A66
4D2A56:  CBZ             R5, loc_4D2A66
4D2A58:  ADD.W           R0, R4, #0x48 ; 'H'
4D2A5C:  ADD.W           R1, R4, #0x38 ; '8'
4D2A60:  MOV             R2, R5
4D2A62:  BLX             j__Z19RwV3dTransformPointP5RwV3dPKS_PK11RwMatrixTag; RwV3dTransformPoint(RwV3d *,RwV3d const*,RwMatrixTag const*)
4D2A66:  LDR             R0, [R4,#0xC]
4D2A68:  CMP             R0, #1
4D2A6A:  BLT.W           loc_4D2CA4
4D2A6E:  VMOV.F32        S22, #1.0
4D2A72:  ADD.W           R8, R10, #0x3C ; '<'
4D2A76:  ADD.W           R5, R4, #0x20 ; ' '
4D2A7A:  ADD             R6, SP, #0xC0+var_78
4D2A7C:  VLDR            S16, =0.00001
4D2A80:  MOV.W           R9, #0
4D2A84:  VLDR            S18, =0.997
4D2A88:  VLDR            S20, =57.296
4D2A8C:  LDR             R0, [R4,#0x10]
4D2A8E:  MOV             R1, R5
4D2A90:  MOV             R2, R8
4D2A92:  VLDR            S30, [R10,#0x6C]
4D2A96:  VLDR            S17, [R10,#0x70]
4D2A9A:  LDR.W           R11, [R0,R9,LSL#2]
4D2A9E:  MOV             R0, R6
4D2AA0:  VLDR            S19, [R10,#0x74]
4D2AA4:  VLDR            S28, [R11,#0x6C]
4D2AA8:  VLDR            S26, [R11,#0x70]
4D2AAC:  VLDR            S24, [R11,#0x74]
4D2AB0:  BLX             j__Z20RwV3dTransformVectorP5RwV3dPKS_PK11RwMatrixTag; RwV3dTransformVector(RwV3d *,RwV3d const*,RwMatrixTag const*)
4D2AB4:  VLDR            S0, [SP,#0xC0+var_78]
4D2AB8:  ADD             R0, SP, #0xC0+var_6C
4D2ABA:  VLDR            S2, [SP,#0xC0+var_74]
4D2ABE:  VLDR            S4, [SP,#0xC0+var_70]
4D2AC2:  VADD.F32        S0, S30, S0
4D2AC6:  VADD.F32        S2, S17, S2
4D2ACA:  VADD.F32        S4, S19, S4
4D2ACE:  VSUB.F32        S0, S0, S28
4D2AD2:  VSUB.F32        S2, S2, S26
4D2AD6:  VSUB.F32        S4, S4, S24
4D2ADA:  VSTR            S0, [SP,#0xC0+var_6C]
4D2ADE:  VSTR            S2, [SP,#0xC0+var_68]
4D2AE2:  VSTR            S4, [SP,#0xC0+var_64]
4D2AE6:  BLX             j__Z11RwV3dLengthPK5RwV3d; RwV3dLength(RwV3d const*)
4D2AEA:  VMOV            S0, R0
4D2AEE:  VCMPE.F32       S0, S16
4D2AF2:  VMRS            APSR_nzcv, FPSCR
4D2AF6:  BLE.W           loc_4D2C98
4D2AFA:  ADD             R0, SP, #0xC0+var_6C
4D2AFC:  MOV             R1, R0
4D2AFE:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
4D2B02:  VLDR            S0, [R4,#0x48]
4D2B06:  ADD             R0, SP, #0xC0+var_84
4D2B08:  VLDR            S2, [R4,#0x4C]
4D2B0C:  VSUB.F32        S0, S0, S28
4D2B10:  VLDR            S4, [R4,#0x50]
4D2B14:  VSTR            S0, [SP,#0xC0+var_84]
4D2B18:  VSUB.F32        S0, S2, S26
4D2B1C:  VSTR            S0, [SP,#0xC0+var_80]
4D2B20:  VSUB.F32        S0, S4, S24
4D2B24:  VSTR            S0, [SP,#0xC0+var_7C]
4D2B28:  BLX             j__Z11RwV3dLengthPK5RwV3d; RwV3dLength(RwV3d const*)
4D2B2C:  VMOV            S0, R0
4D2B30:  VCMPE.F32       S0, S16
4D2B34:  VMRS            APSR_nzcv, FPSCR
4D2B38:  BLE.W           loc_4D2C98
4D2B3C:  ADD             R0, SP, #0xC0+var_84
4D2B3E:  MOV             R1, R0
4D2B40:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
4D2B44:  VLDR            S0, [SP,#0xC0+var_6C]
4D2B48:  VLDR            S6, [SP,#0xC0+var_84]
4D2B4C:  VLDR            S2, [SP,#0xC0+var_68]
4D2B50:  VLDR            S8, [SP,#0xC0+var_80]
4D2B54:  VMUL.F32        S0, S6, S0
4D2B58:  VLDR            S4, [SP,#0xC0+var_64]
4D2B5C:  VMUL.F32        S2, S8, S2
4D2B60:  VLDR            S10, [SP,#0xC0+var_7C]
4D2B64:  VMUL.F32        S4, S10, S4
4D2B68:  VADD.F32        S0, S0, S2
4D2B6C:  VADD.F32        S0, S0, S4
4D2B70:  VCMPE.F32       S0, S18
4D2B74:  VMRS            APSR_nzcv, FPSCR
4D2B78:  BGE.W           loc_4D2C98
4D2B7C:  VMOV            R0, S0; x
4D2B80:  MOV             R6, R8
4D2B82:  BLX             acosf
4D2B86:  MOV             R8, R0
4D2B88:  MOV             R0, R11; this
4D2B8A:  VLDR            S24, [R4,#0x44]
4D2B8E:  BLX             j__ZN10BoneNode_c8GetSpeedEv; BoneNode_c::GetSpeed(void)
4D2B92:  VLDR            S0, [SP,#0xC0+var_80]
4D2B96:  VMOV            S26, R0
4D2B9A:  VLDR            S6, [SP,#0xC0+var_64]
4D2B9E:  VLDR            S2, [SP,#0xC0+var_7C]
4D2BA2:  VLDR            S4, [SP,#0xC0+var_68]
4D2BA6:  VMUL.F32        S8, S6, S0
4D2BAA:  VLDR            S12, [SP,#0xC0+var_84]
4D2BAE:  VMUL.F32        S10, S4, S2
4D2BB2:  VMUL.F32        S6, S6, S12
4D2BB6:  VMUL.F32        S4, S4, S12
4D2BBA:  VSUB.F32        S8, S10, S8
4D2BBE:  VMOV            S10, R8
4D2BC2:  VMUL.F32        S10, S10, S20
4D2BC6:  VSTR            S8, [SP,#0xC0+var_90]
4D2BCA:  VLDR            S8, [SP,#0xC0+var_6C]
4D2BCE:  VMUL.F32        S2, S8, S2
4D2BD2:  VMUL.F32        S0, S8, S0
4D2BD6:  VMUL.F32        S24, S10, S24
4D2BDA:  VSUB.F32        S2, S6, S2
4D2BDE:  VSUB.F32        S0, S0, S4
4D2BE2:  VSTR            S2, [SP,#0xC0+var_8C]
4D2BE6:  VSTR            S0, [SP,#0xC0+var_88]
4D2BEA:  LDR.W           R0, [R11,#0x2C]
4D2BEE:  CMP             R0, #0
4D2BF0:  ITE EQ
4D2BF2:  LDREQ           R1, [R4,#0x14]
4D2BF4:  ADDNE.W         R1, R0, #0x3C ; '<'
4D2BF8:  ADD             R0, SP, #0xC0+var_A0
4D2BFA:  BLX             j__Z23RtQuatConvertFromMatrixP6RtQuatPK11RwMatrixTag; RtQuatConvertFromMatrix(RtQuat *,RwMatrixTag const*)
4D2BFE:  VLDR            S4, [SP,#0xC0+var_A0]
4D2C02:  VMUL.F32        S24, S24, S26
4D2C06:  VLDR            S0, [SP,#0xC0+var_9C]
4D2C0A:  MOV             R8, R6
4D2C0C:  VMUL.F32        S10, S4, S4
4D2C10:  VLDR            S2, [SP,#0xC0+var_98]
4D2C14:  VMUL.F32        S8, S0, S0
4D2C18:  VLDR            S6, [SP,#0xC0+var_94]
4D2C1C:  VMUL.F32        S12, S2, S2
4D2C20:  ADD             R6, SP, #0xC0+var_78
4D2C22:  VADD.F32        S8, S10, S8
4D2C26:  VMUL.F32        S10, S6, S6
4D2C2A:  VADD.F32        S8, S8, S12
4D2C2E:  VADD.F32        S8, S10, S8
4D2C32:  VCMPE.F32       S8, #0.0
4D2C36:  VMRS            APSR_nzcv, FPSCR
4D2C3A:  BLE             loc_4D2C60
4D2C3C:  VDIV.F32        S8, S22, S8
4D2C40:  VNMUL.F32       S4, S8, S4
4D2C44:  VMUL.F32        S6, S6, S8
4D2C48:  VNMUL.F32       S0, S8, S0
4D2C4C:  VNMUL.F32       S2, S8, S2
4D2C50:  VSTR            S4, [SP,#0xC0+var_B0]
4D2C54:  VSTR            S6, [SP,#0xC0+var_A4]
4D2C58:  VSTR            S0, [SP,#0xC0+var_AC]
4D2C5C:  VSTR            S2, [SP,#0xC0+var_A8]
4D2C60:  ADD             R0, SP, #0xC0+var_BC
4D2C62:  ADD             R1, SP, #0xC0+var_90
4D2C64:  ADD             R3, SP, #0xC0+var_B0
4D2C66:  MOVS            R2, #1
4D2C68:  BLX             j__Z22RtQuatTransformVectorsP5RwV3dPKS_iPK6RtQuat; RtQuatTransformVectors(RwV3d *,RwV3d const*,int,RtQuat const*)
4D2C6C:  VMOV            R2, S24
4D2C70:  ADD.W           R0, R11, #0x10
4D2C74:  ADD             R1, SP, #0xC0+var_BC
4D2C76:  MOVS            R3, #2
4D2C78:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
4D2C7C:  LDR             R1, [R4,#0x18]; float
4D2C7E:  MOV             R0, R11; this
4D2C80:  BLX             j__ZN10BoneNode_c5LimitEf; BoneNode_c::Limit(float)
4D2C84:  LDR.W           R0, [R11,#0x2C]
4D2C88:  CMP             R0, #0
4D2C8A:  ITE EQ
4D2C8C:  LDREQ           R1, [R4,#0x14]
4D2C8E:  ADDNE.W         R1, R0, #0x3C ; '<'
4D2C92:  MOV             R0, R11
4D2C94:  BLX             j__ZN10BoneNode_c10CalcWldMatEP11RwMatrixTag; BoneNode_c::CalcWldMat(RwMatrixTag *)
4D2C98:  LDR             R0, [R4,#0xC]
4D2C9A:  ADD.W           R9, R9, #1
4D2C9E:  CMP             R9, R0
4D2CA0:  BLT.W           loc_4D2A8C
4D2CA4:  ADD             SP, SP, #0x60 ; '`'
4D2CA6:  VPOP            {D8-D15}
4D2CAA:  ADD             SP, SP, #4
4D2CAC:  POP.W           {R8-R11}
4D2CB0:  POP             {R4-R7,PC}
