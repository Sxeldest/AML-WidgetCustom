; =========================================================
; Game Engine Function: _ZN9CPhysical23DettachEntityFromEntityEfffb
; Address            : 0x407A18 - 0x407C76
; =========================================================

407A18:  PUSH            {R4-R7,LR}
407A1A:  ADD             R7, SP, #0xC
407A1C:  PUSH.W          {R8-R11}
407A20:  SUB             SP, SP, #4
407A22:  VPUSH           {D8-D11}
407A26:  SUB             SP, SP, #0xF8
407A28:  MOV             R4, R0
407A2A:  MOV             R8, R3
407A2C:  LDR.W           R6, [R4,#0x100]
407A30:  MOVS            R0, #0
407A32:  MOV             R10, R2
407A34:  MOV             R9, R1
407A36:  CMP             R6, #0
407A38:  STRD.W          R0, R0, [SP,#0x138+var_90]
407A3C:  STRD.W          R0, R0, [SP,#0x138+var_D8]
407A40:  BEQ             loc_407A5A
407A42:  LDRB.W          R0, [R4,#0x3A]
407A46:  AND.W           R0, R0, #7
407A4A:  CMP             R0, #2
407A4C:  ITTT EQ
407A4E:  LDRBEQ.W        R0, [R6,#0x3A]
407A52:  ANDEQ.W         R0, R0, #7
407A56:  CMPEQ           R0, #2
407A58:  BEQ             loc_407A60
407A5A:  STR.W           R6, [R4,#0x12C]
407A5E:  B               loc_407AE0
407A60:  MOV             R0, R4; this
407A62:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
407A66:  LDR             R5, [R0,#0x2C]
407A68:  CBZ             R5, loc_407AC2
407A6A:  STR             R0, [SP,#0x138+var_120]
407A6C:  LDRB            R0, [R5,#6]
407A6E:  STR             R0, [SP,#0x138+var_11C]
407A70:  MOVS            R0, #0
407A72:  STRB            R0, [R5,#6]
407A74:  LDR.W           R11, [R6,#0x14]
407A78:  LDR             R0, [R4,#0x14]
407A7A:  CMP.W           R11, #0
407A7E:  STR             R0, [SP,#0x138+var_124]
407A80:  BNE             loc_407A94
407A82:  MOV             R0, R6; this
407A84:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
407A88:  LDR             R1, [R6,#0x14]; CMatrix *
407A8A:  ADDS            R0, R6, #4; this
407A8C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
407A90:  LDR.W           R11, [R6,#0x14]
407A94:  MOV             R0, R6; this
407A96:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
407A9A:  MOV             R3, R0; int
407A9C:  LDR             R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x407AA4)
407A9E:  MOV             R2, R11; CMatrix *
407AA0:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
407AA2:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
407AA4:  STR             R0, [SP,#0x138+var_138]; int
407AA6:  MOVS            R0, #0
407AA8:  STRD.W          R0, R0, [SP,#0x138+var_134]; int
407AAC:  STR             R0, [SP,#0x138+var_12C]; int
407AAE:  LDRD.W          R0, R1, [SP,#0x138+var_124]; int
407AB2:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
407AB6:  CMP             R0, #0
407AB8:  MOV             R0, R6
407ABA:  BEQ             loc_407AD2
407ABC:  STR.W           R0, [R4,#0x12C]
407AC0:  B               loc_407ADC
407AC2:  LDR.W           R0, [R4,#0x12C]
407AC6:  CMP             R0, R6
407AC8:  ITT EQ
407ACA:  MOVEQ           R0, #0
407ACC:  STREQ.W         R0, [R4,#0x12C]
407AD0:  B               loc_407AE0
407AD2:  LDR.W           R0, [R4,#0x12C]
407AD6:  CMP             R0, R6
407AD8:  BEQ.W           loc_407C72
407ADC:  LDR             R0, [SP,#0x138+var_11C]
407ADE:  STRB            R0, [R5,#6]
407AE0:  ADD             R5, SP, #0x138+var_D0
407AE2:  MOV             R0, R5; this
407AE4:  BLX             j__ZN7CMatrix16ResetOrientationEv; CMatrix::ResetOrientation(void)
407AE8:  MOV             R0, R5; this
407AEA:  MOV             R1, R10; x
407AEC:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
407AF0:  MOV             R0, R5; this
407AF2:  MOV             R1, R9; x
407AF4:  BLX             j__ZN7CMatrix7RotateXEf; CMatrix::RotateX(float)
407AF8:  LDR             R1, [R6,#0x14]
407AFA:  CBNZ            R1, loc_407B0C
407AFC:  MOV             R0, R6; this
407AFE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
407B02:  LDR             R1, [R6,#0x14]; CMatrix *
407B04:  ADDS            R0, R6, #4; this
407B06:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
407B0A:  LDR             R1, [R6,#0x14]
407B0C:  ADD             R5, SP, #0x138+var_118
407B0E:  VMOV            S16, R8
407B12:  ADD.W           R8, R4, #0x100
407B16:  LDR.W           R9, [R7,#arg_0]
407B1A:  MOV             R0, R5
407B1C:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
407B20:  ADD             R6, SP, #0x138+var_88
407B22:  ADD             R2, SP, #0x138+var_D0
407B24:  MOV             R1, R5
407B26:  MOV             R0, R6
407B28:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
407B2C:  MOV             R0, R5
407B2E:  MOV             R1, R6
407B30:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
407B34:  MOV             R0, R6; this
407B36:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
407B3A:  MOV             R0, R4; this
407B3C:  VLDR            S18, [SP,#0x138+var_108]
407B40:  VLDR            S20, [SP,#0x138+var_104]
407B44:  VLDR            S22, [SP,#0x138+var_100]
407B48:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
407B4C:  LDR             R0, [R4]
407B4E:  MOVS            R1, #0
407B50:  LDR             R2, [R0,#0x14]
407B52:  MOV             R0, R4
407B54:  BLX             R2
407B56:  LDR             R0, [R4,#0x44]
407B58:  BIC.W           R0, R0, #0x2000000
407B5C:  STR             R0, [R4,#0x44]
407B5E:  MOV             R0, R4; this
407B60:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
407B64:  LDR             R0, [R4,#0x44]
407B66:  TST.W           R0, #4
407B6A:  BEQ             loc_407BC0
407B6C:  LDRB.W          R1, [R4,#0x3A]
407B70:  AND.W           R1, R1, #7
407B74:  CMP             R1, #4
407B76:  BNE             loc_407BA2
407B78:  LDR.W           R1, [R4,#0x164]
407B7C:  VLDR            S0, =99998.0
407B80:  VLDR            S2, [R1]
407B84:  VCMPE.F32       S2, S0
407B88:  VMRS            APSR_nzcv, FPSCR
407B8C:  BGE             loc_407BA2
407B8E:  BIC.W           R0, R0, #4
407B92:  STR             R0, [R4,#0x44]
407B94:  LDR             R2, [R1]
407B96:  STR.W           R2, [R4,#0x90]
407B9A:  LDR             R1, [R1,#4]
407B9C:  STR.W           R1, [R4,#0x94]
407BA0:  B               loc_407BC0
407BA2:  MOV.W           R9, #0
407BA6:  ORR.W           R0, R0, #8
407BAA:  STRD.W          R9, R9, [R4,#0x54]
407BAE:  VLDR            D16, [R4,#0x54]
407BB2:  STR             R0, [R4,#0x44]
407BB4:  STR.W           R9, [R4,#0x5C]
407BB8:  STR.W           R9, [R4,#0x50]
407BBC:  VSTR            D16, [R4,#0x48]
407BC0:  VMUL.F32        S4, S22, S16
407BC4:  LSLS            R0, R0, #0x1D
407BC6:  VMUL.F32        S2, S20, S16
407BCA:  VMUL.F32        S0, S18, S16
407BCE:  BMI             loc_407C14
407BD0:  LDR.W           R0, [R8]
407BD4:  LDRB.W          R1, [R0,#0x3A]
407BD8:  AND.W           R1, R1, #7
407BDC:  SUBS            R1, #2
407BDE:  UXTB            R1, R1
407BE0:  CMP             R1, #2
407BE2:  BHI             loc_407C14
407BE4:  VLDR            D16, [R0,#0x48]
407BE8:  LDR             R0, [R0,#0x50]
407BEA:  STR             R0, [R4,#0x50]
407BEC:  VLDR            S6, [R4,#0x50]
407BF0:  VSTR            D16, [R4,#0x48]
407BF4:  VLDR            S8, [R4,#0x48]
407BF8:  VADD.F32        S6, S4, S6
407BFC:  VLDR            S10, [R4,#0x4C]
407C00:  VADD.F32        S8, S0, S8
407C04:  VADD.F32        S10, S2, S10
407C08:  VSTR            S8, [R4,#0x48]
407C0C:  VSTR            S10, [R4,#0x4C]
407C10:  VSTR            S6, [R4,#0x50]
407C14:  CMP.W           R9, #1
407C18:  BNE             loc_407C48
407C1A:  VMOV            R3, S4
407C1E:  MOV             R0, R4
407C20:  VMOV            R2, S2
407C24:  VMOV            R1, S0
407C28:  VMOV.F32        S6, #0.5
407C2C:  VMUL.F32        S0, S0, S6
407C30:  VMUL.F32        S4, S4, S6
407C34:  VMUL.F32        S2, S2, S6
407C38:  VSTR            S0, [SP,#0x138+var_138]
407C3C:  VSTR            S2, [SP,#0x138+var_134]
407C40:  VSTR            S4, [SP,#0x138+var_130]
407C44:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
407C48:  VMOV.I32        Q8, #0
407C4C:  ADD.W           R0, R4, #0x11C
407C50:  VST1.32         {D16-D17}, [R8]
407C54:  VST1.32         {D16-D17}, [R0]
407C58:  ADD             R0, SP, #0x138+var_118; this
407C5A:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
407C5E:  ADD             R0, SP, #0x138+var_D0; this
407C60:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
407C64:  ADD             SP, SP, #0xF8
407C66:  VPOP            {D8-D11}
407C6A:  ADD             SP, SP, #4
407C6C:  POP.W           {R8-R11}
407C70:  POP             {R4-R7,PC}
407C72:  MOVS            R0, #0
407C74:  B               loc_407ABC
