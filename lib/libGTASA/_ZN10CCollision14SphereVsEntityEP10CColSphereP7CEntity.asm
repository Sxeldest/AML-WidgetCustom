; =========================================================
; Game Engine Function: _ZN10CCollision14SphereVsEntityEP10CColSphereP7CEntity
; Address            : 0x2E0D84 - 0x2E0FB8
; =========================================================

2E0D84:  PUSH            {R4-R7,LR}
2E0D86:  ADD             R7, SP, #0xC
2E0D88:  PUSH.W          {R8-R11}
2E0D8C:  SUB             SP, SP, #4
2E0D8E:  VPUSH           {D8-D10}
2E0D92:  SUB             SP, SP, #0x48
2E0D94:  MOV             R4, R1
2E0D96:  LDRB            R0, [R4,#0x1C]
2E0D98:  LSLS            R0, R0, #0x1F
2E0D9A:  BEQ             loc_2E0DAA
2E0D9C:  LDR             R0, =(TheCamera_ptr - 0x2E0DA4)
2E0D9E:  MOV             R1, R4; CEntity *
2E0DA0:  ADD             R0, PC; TheCamera_ptr
2E0DA2:  LDR             R0, [R0]; TheCamera ; this
2E0DA4:  BLX             j__ZN7CCamera21IsExtraEntityToIgnoreEP7CEntity; CCamera::IsExtraEntityToIgnore(CEntity *)
2E0DA8:  CBZ             R0, loc_2E0DBC
2E0DAA:  MOVS            R5, #0
2E0DAC:  MOV             R0, R5
2E0DAE:  ADD             SP, SP, #0x48 ; 'H'
2E0DB0:  VPOP            {D8-D10}
2E0DB4:  ADD             SP, SP, #4
2E0DB6:  POP.W           {R8-R11}
2E0DBA:  POP             {R4-R7,PC}
2E0DBC:  LDR             R0, [R4,#0x14]
2E0DBE:  CBNZ            R0, loc_2E0DD0
2E0DC0:  MOV             R0, R4; this
2E0DC2:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2E0DC6:  LDR             R1, [R4,#0x14]; CMatrix *
2E0DC8:  ADDS            R0, R4, #4; this
2E0DCA:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2E0DCE:  LDR             R0, [R4,#0x14]; CMatrix *
2E0DD0:  MOV             R6, SP
2E0DD2:  MOVS            R5, #0
2E0DD4:  MOV             R1, R6; CMatrix *
2E0DD6:  STRD.W          R5, R5, [SP,#0x80+var_40]
2E0DDA:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
2E0DDE:  MOV             R0, R6; this
2E0DE0:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
2E0DE4:  MOV             R0, R4; this
2E0DE6:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
2E0DEA:  LDR             R4, [R0,#0x2C]
2E0DEC:  CMP             R4, #0
2E0DEE:  BEQ             loc_2E0DAC
2E0DF0:  LDRSH.W         R0, [R4]
2E0DF4:  VMUL.F32        S0, S0, S0
2E0DF8:  VMUL.F32        D1, D16, D16
2E0DFC:  MOV             R2, #0xFFFFFFEC
2E0E00:  ADD.W           R1, R0, R0,LSL#2
2E0E04:  ADDS            R0, #1
2E0E06:  ADD.W           R1, R2, R1,LSL#2
2E0E0A:  SUBS            R0, #1
2E0E0C:  CMP             R0, #1
2E0E0E:  BLT             loc_2E0E3C
2E0E10:  LDR             R3, [R4,#8]
2E0E12:  SUB.W           R2, R1, #0x14
2E0E16:  VADD.F32        S6, S0, S2
2E0E1A:  ADD             R1, R3
2E0E1C:  VLDR            S4, [R1,#0xC]
2E0E20:  MOV             R1, R2
2E0E22:  VADD.F32        S4, S4, S0
2E0E26:  VADD.F32        S6, S6, S3
2E0E2A:  VMUL.F32        S4, S4, S4
2E0E2E:  VCMPE.F32       S6, S4
2E0E32:  VMRS            APSR_nzcv, FPSCR
2E0E36:  BGE             loc_2E0E0A
2E0E38:  MOVS            R5, #1
2E0E3A:  B               loc_2E0DAC
2E0E3C:  LDRSH.W         R1, [R4,#2]
2E0E40:  CMP             R1, #1
2E0E42:  BLT             loc_2E0EBA
2E0E44:  VADD.F32        S0, S0, S0
2E0E48:  RSB.W           R2, R1, R1,LSL#3
2E0E4C:  LDR             R0, [R4,#0xC]
2E0E4E:  ADDS            R1, #1
2E0E50:  ADD.W           R0, R0, R2,LSL#2
2E0E54:  SUBS            R0, #0xC
2E0E56:  VADD.F32        S2, S0, S0
2E0E5A:  VADD.F32        S4, S0, S0
2E0E5E:  VLDR            S6, [R0,#-0x10]
2E0E62:  VCMPE.F32       S6, S0
2E0E66:  VMRS            APSR_nzcv, FPSCR
2E0E6A:  BGT             loc_2E0EB2
2E0E6C:  VLDR            S6, [R0,#-4]
2E0E70:  VCMPE.F32       S6, S0
2E0E74:  VMRS            APSR_nzcv, FPSCR
2E0E78:  BLT             loc_2E0EB2
2E0E7A:  VLDR            S6, [R0,#-0xC]
2E0E7E:  VCMPE.F32       S6, S2
2E0E82:  VMRS            APSR_nzcv, FPSCR
2E0E86:  BGT             loc_2E0EB2
2E0E88:  VLDR            S6, [R0]
2E0E8C:  VCMPE.F32       S6, S0
2E0E90:  VMRS            APSR_nzcv, FPSCR
2E0E94:  BLT             loc_2E0EB2
2E0E96:  VLDR            S6, [R0,#-8]
2E0E9A:  VCMPE.F32       S6, S4
2E0E9E:  VMRS            APSR_nzcv, FPSCR
2E0EA2:  BGT             loc_2E0EB2
2E0EA4:  VLDR            S6, [R0,#4]
2E0EA8:  VCMPE.F32       S6, S0
2E0EAC:  VMRS            APSR_nzcv, FPSCR
2E0EB0:  BGE             loc_2E0E38
2E0EB2:  SUBS            R1, #1; CCollisionData *
2E0EB4:  SUBS            R0, #0x1C
2E0EB6:  CMP             R1, #1
2E0EB8:  BGT             loc_2E0E5E
2E0EBA:  MOV             R0, R4; this
2E0EBC:  BLX             j__ZN10CCollision23CalculateTrianglePlanesEP14CCollisionData; CCollision::CalculateTrianglePlanes(CCollisionData *)
2E0EC0:  LDRSH.W         R1, [R4,#4]
2E0EC4:  CMP             R1, #0
2E0EC6:  BEQ.W           loc_2E0DAA
2E0ECA:  LDRD.W          R10, R9, [R4,#0x14]
2E0ECE:  LDRB            R0, [R4,#7]
2E0ED0:  TST.W           R0, #2
2E0ED4:  BNE             loc_2E0EFE
2E0ED6:  ADD.W           R0, R9, R1,LSL#4
2E0EDA:  ADDS            R5, R1, #1
2E0EDC:  SUB.W           R2, R0, #0x10
2E0EE0:  MOV             R4, SP
2E0EE2:  SUBS            R5, #1
2E0EE4:  CMP             R5, #1
2E0EE6:  BLT.W           loc_2E0DAA
2E0EEA:  MOV             R0, R4
2E0EEC:  MOV             R1, R10
2E0EEE:  SUB.W           R6, R2, #0x10
2E0EF2:  BLX             j__ZN10CCollision18TestSphereTriangleERK10CColSpherePK7CVectorRK12CColTriangleRK17CColTrianglePlane; CCollision::TestSphereTriangle(CColSphere const&,CVector const*,CColTriangle const&,CColTrianglePlane const&)
2E0EF6:  CMP             R0, #1
2E0EF8:  MOV             R2, R6
2E0EFA:  BNE             loc_2E0EE2
2E0EFC:  B               loc_2E0E38
2E0EFE:  VADD.F32        S16, S0, S0
2E0F02:  MOVS            R5, #0
2E0F04:  VADD.F32        S18, S0, S0
2E0F08:  VADD.F32        S20, S0, S0
2E0F0C:  B               loc_2E0F12
2E0F0E:  LDRB            R0, [R4,#7]
2E0F10:  ADDS            R5, #1
2E0F12:  LSLS            R1, R0, #0x1E
2E0F14:  ITTE MI
2E0F16:  LDRMI           R1, [R4,#0x30]
2E0F18:  LDRMI           R1, [R1]
2E0F1A:  MOVPL           R1, #0
2E0F1C:  CMP             R5, R1
2E0F1E:  BGE.W           loc_2E0DAA
2E0F22:  MVNS            R2, R5
2E0F24:  LDR             R1, [R4,#0x30]
2E0F26:  RSB.W           R2, R2, R2,LSL#3
2E0F2A:  ADD.W           R6, R1, R2,LSL#2
2E0F2E:  VLDR            S0, [R6]
2E0F32:  VCMPE.F32       S0, S16
2E0F36:  VMRS            APSR_nzcv, FPSCR
2E0F3A:  BGT             loc_2E0F10
2E0F3C:  VLDR            S0, [R6,#0xC]
2E0F40:  VCMPE.F32       S0, S0
2E0F44:  VMRS            APSR_nzcv, FPSCR
2E0F48:  BLT             loc_2E0F10
2E0F4A:  VLDR            S0, [R6,#4]
2E0F4E:  VCMPE.F32       S0, S18
2E0F52:  VMRS            APSR_nzcv, FPSCR
2E0F56:  BGT             loc_2E0F10
2E0F58:  VLDR            S0, [R6,#0x10]
2E0F5C:  VCMPE.F32       S0, S0
2E0F60:  VMRS            APSR_nzcv, FPSCR
2E0F64:  BLT             loc_2E0F10
2E0F66:  VLDR            S0, [R6,#8]
2E0F6A:  VCMPE.F32       S0, S20
2E0F6E:  VMRS            APSR_nzcv, FPSCR
2E0F72:  BGT             loc_2E0F10
2E0F74:  VLDR            S0, [R6,#0x14]
2E0F78:  VCMPE.F32       S0, S0
2E0F7C:  VMRS            APSR_nzcv, FPSCR
2E0F80:  BLT             loc_2E0F10
2E0F82:  LDRSH.W         R2, [R6,#0x1A]!
2E0F86:  LDRSH.W         R1, [R6,#-2]
2E0F8A:  CMP             R1, R2
2E0F8C:  BGT             loc_2E0F10
2E0F8E:  ADD.W           R11, R9, R1,LSL#4
2E0F92:  SUB.W           R8, R1, #1
2E0F96:  MOV             R0, SP
2E0F98:  MOV             R1, R10
2E0F9A:  MOV             R2, R11
2E0F9C:  BLX             j__ZN10CCollision18TestSphereTriangleERK10CColSpherePK7CVectorRK12CColTriangleRK17CColTrianglePlane; CCollision::TestSphereTriangle(CColSphere const&,CVector const*,CColTriangle const&,CColTrianglePlane const&)
2E0FA0:  CMP             R0, #0
2E0FA2:  BNE.W           loc_2E0E38
2E0FA6:  LDRSH.W         R0, [R6]
2E0FAA:  ADD.W           R8, R8, #1
2E0FAE:  ADD.W           R11, R11, #0x10
2E0FB2:  CMP             R8, R0
2E0FB4:  BLT             loc_2E0F96
2E0FB6:  B               loc_2E0F0E
