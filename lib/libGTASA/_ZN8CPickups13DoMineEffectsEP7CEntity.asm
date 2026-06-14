; =========================================================
; Game Engine Function: _ZN8CPickups13DoMineEffectsEP7CEntity
; Address            : 0x320828 - 0x320AB0
; =========================================================

320828:  PUSH            {R4-R7,LR}
32082A:  ADD             R7, SP, #0xC
32082C:  PUSH.W          {R8,R9,R11}
320830:  VPUSH           {D8-D9}
320834:  SUB             SP, SP, #0x58
320836:  MOV             R4, R0
320838:  LDR             R0, =(TheCamera_ptr - 0x320846)
32083A:  LDR.W           R8, [R4,#0x14]
32083E:  ADD.W           R9, R4, #4
320842:  ADD             R0, PC; TheCamera_ptr
320844:  VMOV.F32        S16, #20.0
320848:  CMP.W           R8, #0
32084C:  MOV             R1, R9
32084E:  LDR             R0, [R0]; TheCamera
320850:  IT NE
320852:  ADDNE.W         R1, R8, #0x30 ; '0'
320856:  VLDR            D16, [R1]
32085A:  LDR             R1, [R1,#8]
32085C:  LDR             R2, [R0,#(dword_951FBC - 0x951FA8)]
32085E:  STR             R1, [SP,#0x80+var_30]
320860:  VSTR            D16, [SP,#0x80+var_38]
320864:  ADD.W           R1, R2, #0x30 ; '0'
320868:  CMP             R2, #0
32086A:  VLDR            S0, [SP,#0x80+var_38]
32086E:  IT EQ
320870:  ADDEQ           R1, R0, #4
320872:  VLDR            D16, [SP,#0x80+var_38+4]
320876:  VLDR            S2, [R1]
32087A:  VLDR            D17, [R1,#4]
32087E:  VSUB.F32        S0, S2, S0
320882:  VSUB.F32        D16, D17, D16
320886:  VMUL.F32        D1, D16, D16
32088A:  VMUL.F32        S0, S0, S0
32088E:  VADD.F32        S0, S0, S2
320892:  VADD.F32        S0, S0, S3
320896:  VSQRT.F32       S18, S0
32089A:  VCMPE.F32       S18, S16
32089E:  VMRS            APSR_nzcv, FPSCR
3208A2:  BGE             loc_32098C
3208A4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3208AE)
3208A6:  VLDR            S2, =0.012266
3208AA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3208AC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3208AE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3208B0:  ADD             R0, R4
3208B2:  BFC.W           R0, #9, #0x17
3208B6:  VMOV            S0, R0
3208BA:  VCVT.F32.U32    S0, S0
3208BE:  VMUL.F32        S0, S0, S2
3208C2:  VMOV            R0, S0; x
3208C6:  BLX             sinf
3208CA:  VMOV.F32        S0, #0.5
3208CE:  MOVS            R5, #0
3208D0:  VMOV            S2, R0
3208D4:  LDR             R0, =(gpShadowExplosionTex_ptr - 0x3208E2)
3208D6:  VSUB.F32        S4, S16, S18
3208DA:  MOV.W           R1, #0x3F800000
3208DE:  ADD             R0, PC; gpShadowExplosionTex_ptr
3208E0:  MOV.W           R3, #0x40800000
3208E4:  ADD.W           R8, SP, #0x80+var_38
3208E8:  LDR             R0, [R0]; gpShadowExplosionTex
3208EA:  VMUL.F32        S2, S2, S0
3208EE:  LDR             R2, [R0]; int
3208F0:  MOVS            R0, #0x42200000
3208F6:  STRD.W          R3, R1, [SP,#0x80+var_60]; float
3208FA:  STRD.W          R0, R5, [SP,#0x80+var_58]; float
3208FE:  MOV.W           R0, #0xC0000000
320902:  STR             R5, [SP,#0x80+var_50]; float
320904:  MOVS            R1, #2; int
320906:  STRD.W          R5, R5, [SP,#0x80+var_68]; int
32090A:  MOV             R3, R8; int
32090C:  STR             R5, [SP,#0x80+var_70]; int
32090E:  VADD.F32        S0, S2, S0
320912:  VLDR            S2, =64.0
320916:  STR             R0, [SP,#0x80+var_74]; CVector *
320918:  MOV.W           R0, #0x40000000
32091C:  STRD.W          R5, R5, [SP,#0x80+var_7C]; unsigned __int8
320920:  VMUL.F32        S0, S4, S0
320924:  VDIV.F32        S0, S0, S16
320928:  VMUL.F32        S0, S0, S2
32092C:  VCVT.U32.F32    S0, S0
320930:  STR             R0, [SP,#0x80+var_80]; float
320932:  MOV             R0, R4; int
320934:  VMOV            R6, S0
320938:  STR             R6, [SP,#0x80+var_6C]; float
32093A:  BLX             j__ZN8CShadows17StoreStaticShadowEjhP9RwTextureP7CVectorffffshhhfffbf; CShadows::StoreStaticShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,float,bool,float)
32093E:  MOVS            R0, #0
320940:  MOV.W           R1, #0x3FC00000
320944:  MOVW            R2, #0x999A
320948:  STR             R5, [SP,#0x80+var_40]; bool
32094A:  STRD.W          R5, R5, [SP,#0x80+var_60]; unsigned __int8
32094E:  MOVT            R0, #0x4170
320952:  STRD.W          R5, R5, [SP,#0x80+var_58]; float
320956:  MOVT            R2, #0x3F19
32095A:  STRD.W          R1, R5, [SP,#0x80+var_50]; float
32095E:  MOVS            R1, #0
320960:  STRD.W          R0, R5, [SP,#0x80+var_48]; float
320964:  MOVS            R3, #0xFF
320966:  MOVS            R0, #9
320968:  MOVT            R1, #0x4270
32096C:  STRD.W          R5, R3, [SP,#0x80+var_80]; unsigned __int8
320970:  MOVS            R3, #0; unsigned __int8
320972:  STRD.W          R8, R2, [SP,#0x80+var_78]; unsigned __int8
320976:  MOV             R2, R6; CEntity *
320978:  STRD.W          R1, R0, [SP,#0x80+var_70]; float
32097C:  MOV             R0, R4; this
32097E:  MOVS            R1, #0; unsigned int
320980:  STRD.W          R5, R5, [SP,#0x80+var_68]; unsigned __int8
320984:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
320988:  LDR.W           R8, [R4,#0x14]
32098C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x320996)
32098E:  VLDR            S2, =0.0061133
320992:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
320994:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
320996:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
320998:  BFC.W           R0, #0xA, #0x16
32099C:  VMOV            S0, R0
3209A0:  VCVT.F32.U32    S0, S0
3209A4:  VMUL.F32        S0, S0, S2
3209A8:  VMOV            R6, S0
3209AC:  MOV             R0, R6; x
3209AE:  BLX             cosf
3209B2:  MOV             R5, R0
3209B4:  MOV             R0, R6; x
3209B6:  BLX             sinf
3209BA:  VMOV            S16, R5
3209BE:  MOV             R6, R0
3209C0:  CMP.W           R8, #0
3209C4:  BNE             loc_3209D8
3209C6:  MOV             R0, R4; this
3209C8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3209CC:  LDR             R1, [R4,#0x14]; CMatrix *
3209CE:  MOV             R0, R9; this
3209D0:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3209D4:  LDR.W           R8, [R4,#0x14]
3209D8:  VSTR            S16, [R8]
3209DC:  VMOV            S18, R6
3209E0:  LDR             R0, [R4,#0x14]
3209E2:  CBNZ            R0, loc_3209F4
3209E4:  MOV             R0, R4; this
3209E6:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3209EA:  LDR             R1, [R4,#0x14]; CMatrix *
3209EC:  MOV             R0, R9; this
3209EE:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3209F2:  LDR             R0, [R4,#0x14]
3209F4:  VSTR            S18, [R0,#4]
3209F8:  LDR             R0, [R4,#0x14]
3209FA:  CBNZ            R0, loc_320A0C
3209FC:  MOV             R0, R4; this
3209FE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320A02:  LDR             R1, [R4,#0x14]; CMatrix *
320A04:  MOV             R0, R9; this
320A06:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320A0A:  LDR             R0, [R4,#0x14]
320A0C:  VNEG.F32        S18, S18
320A10:  MOVS            R1, #0
320A12:  STR             R1, [R0,#8]
320A14:  LDR             R0, [R4,#0x14]
320A16:  CBNZ            R0, loc_320A28
320A18:  MOV             R0, R4; this
320A1A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320A1E:  LDR             R1, [R4,#0x14]; CMatrix *
320A20:  MOV             R0, R9; this
320A22:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320A26:  LDR             R0, [R4,#0x14]
320A28:  VSTR            S18, [R0,#0x10]
320A2C:  LDR             R0, [R4,#0x14]
320A2E:  CBNZ            R0, loc_320A40
320A30:  MOV             R0, R4; this
320A32:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320A36:  LDR             R1, [R4,#0x14]; CMatrix *
320A38:  MOV             R0, R9; this
320A3A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320A3E:  LDR             R0, [R4,#0x14]
320A40:  VSTR            S16, [R0,#0x14]
320A44:  LDR             R0, [R4,#0x14]
320A46:  CBNZ            R0, loc_320A58
320A48:  MOV             R0, R4; this
320A4A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320A4E:  LDR             R1, [R4,#0x14]; CMatrix *
320A50:  MOV             R0, R9; this
320A52:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320A56:  LDR             R0, [R4,#0x14]
320A58:  MOVS            R5, #0
320A5A:  STR             R5, [R0,#0x18]
320A5C:  LDR             R0, [R4,#0x14]
320A5E:  CBNZ            R0, loc_320A70
320A60:  MOV             R0, R4; this
320A62:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320A66:  LDR             R1, [R4,#0x14]; CMatrix *
320A68:  MOV             R0, R9; this
320A6A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320A6E:  LDR             R0, [R4,#0x14]
320A70:  STR             R5, [R0,#0x20]
320A72:  LDR             R0, [R4,#0x14]
320A74:  CBNZ            R0, loc_320A86
320A76:  MOV             R0, R4; this
320A78:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320A7C:  LDR             R1, [R4,#0x14]; CMatrix *
320A7E:  MOV             R0, R9; this
320A80:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320A84:  LDR             R0, [R4,#0x14]
320A86:  MOVS            R1, #0
320A88:  STR             R1, [R0,#0x24]
320A8A:  LDR             R0, [R4,#0x14]
320A8C:  CBNZ            R0, loc_320A9E
320A8E:  MOV             R0, R4; this
320A90:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320A94:  LDR             R1, [R4,#0x14]; CMatrix *
320A96:  MOV             R0, R9; this
320A98:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320A9C:  LDR             R0, [R4,#0x14]
320A9E:  MOV.W           R1, #0x3F800000
320AA2:  STR             R1, [R0,#0x28]
320AA4:  ADD             SP, SP, #0x58 ; 'X'
320AA6:  VPOP            {D8-D9}
320AAA:  POP.W           {R8,R9,R11}
320AAE:  POP             {R4-R7,PC}
