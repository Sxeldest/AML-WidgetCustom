; =========================================================
; Game Engine Function: _ZN8CPedPath11AddBlockadeEP7CEntityPA40_12CPedPathNodeP7CVector
; Address            : 0x31BEC4 - 0x31C154
; =========================================================

31BEC4:  PUSH            {R4-R7,LR}
31BEC6:  ADD             R7, SP, #0xC
31BEC8:  PUSH.W          {R8-R11}
31BECC:  SUB             SP, SP, #4
31BECE:  VPUSH           {D8-D15}
31BED2:  SUB             SP, SP, #0x30
31BED4:  MOV             R6, R2
31BED6:  MOV             R4, R1
31BED8:  MOV             R5, R0
31BEDA:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
31BEDE:  VLDR            S16, [R0,#0x10]
31BEE2:  MOV             R0, R5; this
31BEE4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
31BEE8:  VLDR            S18, [R0,#4]
31BEEC:  MOV             R0, R5; this
31BEEE:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
31BEF2:  VLDR            S22, [R0,#0xC]
31BEF6:  LDR             R0, [R5,#0x14]
31BEF8:  CBZ             R0, loc_31BF00
31BEFA:  LDR.W           R9, [R0,#0x10]
31BEFE:  B               loc_31BF1E
31BF00:  MOV             R0, R5; this
31BF02:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31BF06:  ADD.W           R8, R5, #4
31BF0A:  LDR             R1, [R5,#0x14]; CMatrix *
31BF0C:  MOV             R0, R8; this
31BF0E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
31BF12:  LDR             R0, [R5,#0x14]
31BF14:  CMP             R0, #0
31BF16:  LDR.W           R9, [R0,#0x10]
31BF1A:  BEQ.W           loc_31C0CA
31BF1E:  LDR.W           R10, [R0,#0x14]
31BF22:  VLDR            S20, [R0]
31BF26:  VLDR            S26, [R6]
31BF2A:  VLDR            S24, [R0,#4]
31BF2E:  VLDR            S0, [R0,#0x30]
31BF32:  ADD.W           R11, R6, #4
31BF36:  VLDR            S28, [R6,#4]
31BF3A:  VSUB.F32        S26, S26, S0
31BF3E:  VLDR            S30, [R0,#0x34]
31BF42:  ADD             R0, SP, #0x90+var_6C; this
31BF44:  MOV             R1, R5
31BF46:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
31BF4A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x31BF54)
31BF4C:  LDRSH.W         R1, [R5,#0x26]
31BF50:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
31BF52:  VLDR            S0, [SP,#0x90+var_6C]
31BF56:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
31BF58:  LDR.W           R0, [R0,R1,LSL#2]
31BF5C:  LDR             R0, [R0,#0x2C]
31BF5E:  VLDR            S2, [R0,#0x24]
31BF62:  VADD.F32        S0, S0, S2
31BF66:  VLDR            S2, [R6]
31BF6A:  VCMPE.F32       S0, S2
31BF6E:  VMRS            APSR_nzcv, FPSCR
31BF72:  BLT.W           loc_31C0BC
31BF76:  ADD             R0, SP, #0x90+var_78; this
31BF78:  MOV             R1, R5
31BF7A:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
31BF7E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x31BF88)
31BF80:  LDRSH.W         R1, [R5,#0x26]
31BF84:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
31BF86:  VLDR            S0, [SP,#0x90+var_74]
31BF8A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
31BF8C:  LDR.W           R0, [R0,R1,LSL#2]
31BF90:  LDR             R0, [R0,#0x2C]
31BF92:  VLDR            S2, [R0,#0x24]
31BF96:  VADD.F32        S0, S0, S2
31BF9A:  VLDR            S2, [R11]
31BF9E:  VCMPE.F32       S0, S2
31BFA2:  VMRS            APSR_nzcv, FPSCR
31BFA6:  BLT.W           loc_31C0BC
31BFAA:  ADD             R0, SP, #0x90+var_84; this
31BFAC:  MOV             R1, R5
31BFAE:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
31BFB2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x31BFC0)
31BFB4:  VMOV.F32        S17, #28.0
31BFB8:  LDRSH.W         R1, [R5,#0x26]
31BFBC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
31BFBE:  VLDR            S0, [R6]
31BFC2:  VLDR            S2, [SP,#0x90+var_84]
31BFC6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
31BFC8:  LDR.W           R0, [R0,R1,LSL#2]
31BFCC:  VADD.F32        S0, S0, S17
31BFD0:  LDR             R0, [R0,#0x2C]
31BFD2:  VLDR            S4, [R0,#0x24]
31BFD6:  VSUB.F32        S2, S2, S4
31BFDA:  VCMPE.F32       S2, S0
31BFDE:  VMRS            APSR_nzcv, FPSCR
31BFE2:  BGT             loc_31C0BC
31BFE4:  MOV             R0, SP; this
31BFE6:  MOV             R1, R5
31BFE8:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
31BFEC:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x31BFF6)
31BFEE:  LDRSH.W         R1, [R5,#0x26]
31BFF2:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
31BFF4:  VLDR            S0, [R11]
31BFF8:  VLDR            S2, [SP,#0x90+var_8C]
31BFFC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
31BFFE:  VADD.F32        S0, S0, S17
31C002:  LDR.W           R0, [R0,R1,LSL#2]
31C006:  LDR             R0, [R0,#0x2C]
31C008:  VLDR            S4, [R0,#0x24]
31C00C:  VSUB.F32        S2, S2, S4
31C010:  VCMPE.F32       S2, S0
31C014:  VMRS            APSR_nzcv, FPSCR
31C018:  BGT             loc_31C0BC
31C01A:  VLDR            S2, =-0.3
31C01E:  VSUB.F32        S6, S28, S30
31C022:  VLDR            S4, =0.3
31C026:  VMOV            S8, R10
31C02A:  VADD.F32        S2, S18, S2
31C02E:  VLDR            S12, =0.7
31C032:  VADD.F32        S0, S16, S4
31C036:  MOVS            R0, #0
31C038:  VADD.F32        S4, S22, S4
31C03C:  MOVS            R1, #1
31C03E:  VMOV            S10, R9
31C042:  SXTH            R2, R0
31C044:  MOV             R3, R4
31C046:  VMOV            S14, R2
31C04A:  MOVS            R2, #0
31C04C:  VCVT.F32.S32    S14, S14
31C050:  VMUL.F32        S14, S14, S12
31C054:  VADD.F32        S1, S26, S14
31C058:  VMUL.F32        S14, S1, S10
31C05C:  VMUL.F32        S1, S20, S1
31C060:  LDRB            R6, [R3]
31C062:  CBNZ            R6, loc_31C0AA
31C064:  SXTH            R6, R2
31C066:  VMOV            S3, R6
31C06A:  VCVT.F32.S32    S3, S3
31C06E:  VMUL.F32        S3, S3, S12
31C072:  VADD.F32        S3, S6, S3
31C076:  VMUL.F32        S5, S24, S3
31C07A:  VADD.F32        S5, S1, S5
31C07E:  VABS.F32        S5, S5
31C082:  VCMPE.F32       S5, S4
31C086:  VMRS            APSR_nzcv, FPSCR
31C08A:  BGE             loc_31C0AA
31C08C:  VMUL.F32        S3, S3, S8
31C090:  VADD.F32        S3, S14, S3
31C094:  VCMPE.F32       S3, S0
31C098:  VMRS            APSR_nzcv, FPSCR
31C09C:  BGE             loc_31C0AA
31C09E:  VCMPE.F32       S3, S2
31C0A2:  VMRS            APSR_nzcv, FPSCR
31C0A6:  IT GT
31C0A8:  STRBGT          R1, [R3]
31C0AA:  ADDS            R2, #1
31C0AC:  ADDS            R3, #0x10
31C0AE:  CMP             R2, #0x28 ; '('
31C0B0:  BNE             loc_31C060
31C0B2:  ADDS            R0, #1
31C0B4:  ADD.W           R4, R4, #0x280
31C0B8:  CMP             R0, #0x28 ; '('
31C0BA:  BNE             loc_31C042
31C0BC:  ADD             SP, SP, #0x30 ; '0'
31C0BE:  VPOP            {D8-D15}
31C0C2:  ADD             SP, SP, #4
31C0C4:  POP.W           {R8-R11}
31C0C8:  POP             {R4-R7,PC}
31C0CA:  MOV             R0, R5; this
31C0CC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31C0D0:  LDR             R1, [R5,#0x14]; CMatrix *
31C0D2:  MOV             R0, R8; this
31C0D4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
31C0D8:  LDR             R0, [R5,#0x14]
31C0DA:  CMP             R0, #0
31C0DC:  LDR.W           R10, [R0,#0x14]
31C0E0:  BNE.W           loc_31BF22
31C0E4:  MOV             R0, R5; this
31C0E6:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31C0EA:  LDR             R1, [R5,#0x14]; CMatrix *
31C0EC:  MOV             R0, R8; this
31C0EE:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
31C0F2:  LDR             R0, [R5,#0x14]
31C0F4:  CMP             R0, #0
31C0F6:  VLDR            S20, [R0]
31C0FA:  BNE.W           loc_31BF26
31C0FE:  MOV             R0, R5; this
31C100:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31C104:  LDR             R1, [R5,#0x14]; CMatrix *
31C106:  MOV             R0, R8; this
31C108:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
31C10C:  LDR             R0, [R5,#0x14]
31C10E:  VLDR            S26, [R6]
31C112:  CMP             R0, #0
31C114:  VLDR            S24, [R0,#4]
31C118:  BNE.W           loc_31BF2E
31C11C:  MOV             R0, R5; this
31C11E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31C122:  LDR             R1, [R5,#0x14]; CMatrix *
31C124:  MOV             R0, R8; this
31C126:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
31C12A:  LDR             R0, [R5,#0x14]
31C12C:  ADD.W           R11, R6, #4
31C130:  VLDR            S28, [R6,#4]
31C134:  CMP             R0, #0
31C136:  VLDR            S0, [R0,#0x30]
31C13A:  VSUB.F32        S26, S26, S0
31C13E:  BNE.W           loc_31BF3E
31C142:  MOV             R0, R5; this
31C144:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31C148:  LDR             R1, [R5,#0x14]; CMatrix *
31C14A:  MOV             R0, R8; this
31C14C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
31C150:  LDR             R0, [R5,#0x14]
31C152:  B               loc_31BF3E
