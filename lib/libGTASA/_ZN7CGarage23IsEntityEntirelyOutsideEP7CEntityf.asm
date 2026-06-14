; =========================================================
; Game Engine Function: _ZN7CGarage23IsEntityEntirelyOutsideEP7CEntityf
; Address            : 0x311B2C - 0x311CBE
; =========================================================

311B2C:  PUSH            {R4-R7,LR}
311B2E:  ADD             R7, SP, #0xC
311B30:  PUSH.W          {R8-R11}
311B34:  SUB             SP, SP, #4
311B36:  VPUSH           {D8}
311B3A:  SUB             SP, SP, #0x10
311B3C:  MOV             R11, R0
311B3E:  VMOV            S16, R2
311B42:  VLDR            S0, [R11,#0x28]
311B46:  MOV             R10, R1
311B48:  LDR.W           R1, [R10,#0x14]
311B4C:  ADD.W           R8, R10, #4
311B50:  VSUB.F32        S2, S0, S16
311B54:  CMP             R1, #0
311B56:  MOV             R0, R8
311B58:  IT NE
311B5A:  ADDNE.W         R0, R1, #0x30 ; '0'
311B5E:  VLDR            S0, [R0]
311B62:  VCMPE.F32       S0, S2
311B66:  VMRS            APSR_nzcv, FPSCR
311B6A:  BLE             loc_311BAA
311B6C:  VLDR            S2, [R11,#0x2C]
311B70:  VADD.F32        S2, S2, S16
311B74:  VCMPE.F32       S0, S2
311B78:  VMRS            APSR_nzcv, FPSCR
311B7C:  BGE             loc_311BAA
311B7E:  VLDR            S0, [R11,#0x30]
311B82:  VSUB.F32        S2, S0, S16
311B86:  VLDR            S0, [R0,#4]
311B8A:  VCMPE.F32       S0, S2
311B8E:  VMRS            APSR_nzcv, FPSCR
311B92:  BLE             loc_311BAA
311B94:  VLDR            S2, [R11,#0x34]
311B98:  VADD.F32        S2, S2, S16
311B9C:  VCMPE.F32       S0, S2
311BA0:  VMRS            APSR_nzcv, FPSCR
311BA4:  BGE             loc_311BAA
311BA6:  MOVS            R0, #0
311BA8:  B               loc_311CB0
311BAA:  MOV             R0, R10; this
311BAC:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
311BB0:  LDR             R6, [R0,#0x2C]
311BB2:  CMP             R6, #0
311BB4:  BEQ             loc_311CAE
311BB6:  LDRSH.W         R0, [R6]
311BBA:  CMP             R0, #1
311BBC:  BLT             loc_311CAE
311BBE:  ADD.W           R9, SP, #0x38+var_34
311BC2:  MOVS            R4, #0
311BC4:  LDR.W           R1, [R10,#0x14]
311BC8:  CBNZ            R1, loc_311BDE
311BCA:  MOV             R0, R10; this
311BCC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
311BD0:  LDR.W           R1, [R10,#0x14]; CMatrix *
311BD4:  MOV             R0, R8; this
311BD6:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
311BDA:  LDR.W           R1, [R10,#0x14]
311BDE:  LDR             R0, [R6,#8]
311BE0:  ADD.W           R5, R4, R4,LSL#2
311BE4:  ADD.W           R2, R0, R5,LSL#2
311BE8:  MOV             R0, R9
311BEA:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
311BEE:  LDR             R0, [R6,#8]
311BF0:  VLDR            S4, [R11,#8]
311BF4:  ADD.W           R0, R0, R5,LSL#2
311BF8:  VLDR            S2, [SP,#0x38+var_2C]
311BFC:  VLDR            S0, [R0,#0xC]
311C00:  VADD.F32        S0, S0, S16
311C04:  VSUB.F32        S4, S4, S0
311C08:  VCMPE.F32       S4, S2
311C0C:  VMRS            APSR_nzcv, FPSCR
311C10:  BGT             loc_311CA2
311C12:  VLDR            S4, [R11,#0x1C]
311C16:  VADD.F32        S4, S0, S4
311C1A:  VCMPE.F32       S4, S2
311C1E:  VMRS            APSR_nzcv, FPSCR
311C22:  BLT             loc_311CA2
311C24:  VLDR            S2, [SP,#0x38+var_34]
311C28:  VLDR            S6, [R11]
311C2C:  VLDR            S4, [SP,#0x38+var_30]
311C30:  VLDR            S8, [R11,#4]
311C34:  VSUB.F32        S2, S2, S6
311C38:  VLDR            S10, [R11,#0xC]
311C3C:  VNEG.F32        S6, S0
311C40:  VSUB.F32        S4, S4, S8
311C44:  VLDR            S12, [R11,#0x10]
311C48:  VMUL.F32        S10, S2, S10
311C4C:  VMUL.F32        S8, S4, S12
311C50:  VADD.F32        S8, S10, S8
311C54:  VCMPE.F32       S8, S6
311C58:  VMRS            APSR_nzcv, FPSCR
311C5C:  BLT             loc_311CA2
311C5E:  VLDR            S10, [R11,#0x20]
311C62:  VADD.F32        S10, S0, S10
311C66:  VCMPE.F32       S8, S10
311C6A:  VMRS            APSR_nzcv, FPSCR
311C6E:  BGT             loc_311CA2
311C70:  VLDR            S8, [R11,#0x14]
311C74:  VLDR            S10, [R11,#0x18]
311C78:  VMUL.F32        S2, S2, S8
311C7C:  VMUL.F32        S4, S4, S10
311C80:  VADD.F32        S2, S2, S4
311C84:  VCMPE.F32       S2, S6
311C88:  VMRS            APSR_nzcv, FPSCR
311C8C:  BLT             loc_311CA2
311C8E:  VLDR            S4, [R11,#0x24]
311C92:  VADD.F32        S0, S0, S4
311C96:  VCMPE.F32       S2, S0
311C9A:  VMRS            APSR_nzcv, FPSCR
311C9E:  BLE.W           loc_311BA6
311CA2:  ADDS            R1, R4, #1
311CA4:  LDRSH.W         R0, [R6]
311CA8:  SXTH            R4, R1
311CAA:  CMP             R0, R4
311CAC:  BGT             loc_311BC4
311CAE:  MOVS            R0, #1
311CB0:  ADD             SP, SP, #0x10
311CB2:  VPOP            {D8}
311CB6:  ADD             SP, SP, #4
311CB8:  POP.W           {R8-R11}
311CBC:  POP             {R4-R7,PC}
