; =========================================================
; Game Engine Function: _Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType
; Address            : 0x1E3974 - 0x1E3A22
; =========================================================

1E3974:  PUSH            {R4-R7,LR}
1E3976:  ADD             R7, SP, #0xC
1E3978:  PUSH.W          {R8,R9,R11}
1E397C:  VPUSH           {D8-D9}
1E3980:  SUB             SP, SP, #0x10
1E3982:  MOV             R6, R1
1E3984:  MOV             R9, R0
1E3986:  VLDR            S0, [R6]
1E398A:  MOV             R8, R3
1E398C:  VLDR            S2, [R6,#4]
1E3990:  VMUL.F32        S0, S0, S0
1E3994:  VLDR            S4, [R6,#8]
1E3998:  VMUL.F32        S2, S2, S2
1E399C:  VMUL.F32        S4, S4, S4
1E39A0:  VADD.F32        S0, S0, S2
1E39A4:  VMOV            S2, R2
1E39A8:  VADD.F32        S0, S0, S4
1E39AC:  VMOV            R0, S0; float
1E39B0:  VLDR            S0, =0.017453
1E39B4:  VMUL.F32        S16, S2, S0
1E39B8:  BLX             j__Z10_rwInvSqrtf; _rwInvSqrt(float)
1E39BC:  VMOV            R5, S16
1E39C0:  VLDR            S0, [R6]
1E39C4:  VMOV            S16, R0
1E39C8:  VLDR            S2, [R6,#4]
1E39CC:  VMUL.F32        S0, S16, S0
1E39D0:  VMUL.F32        S18, S16, S2
1E39D4:  VSTR            S0, [SP,#0x38+var_34]
1E39D8:  MOV             R0, R5; x
1E39DA:  BLX             cosf
1E39DE:  MOV             R4, R0
1E39E0:  MOV             R0, R5; x
1E39E2:  BLX             sinf
1E39E6:  VMOV.F32        S0, #1.0
1E39EA:  VSTR            S18, [SP,#0x38+var_30]
1E39EE:  VMOV            S2, R4
1E39F2:  ADD             R1, SP, #0x38+var_34
1E39F4:  MOV             R3, R0
1E39F6:  MOV             R0, R9
1E39F8:  VSUB.F32        S0, S0, S2
1E39FC:  VMOV            R2, S0
1E3A00:  VLDR            S0, [R6,#8]
1E3A04:  STR.W           R8, [SP,#0x38+var_38]
1E3A08:  VMUL.F32        S0, S16, S0
1E3A0C:  VSTR            S0, [SP,#0x38+var_2C]
1E3A10:  BLX             j__Z32RwMatrixRotateOneMinusCosineSineP11RwMatrixTagPK5RwV3dff15RwOpCombineType; RwMatrixRotateOneMinusCosineSine(RwMatrixTag *,RwV3d const*,float,float,RwOpCombineType)
1E3A14:  MOV             R0, R9
1E3A16:  ADD             SP, SP, #0x10
1E3A18:  VPOP            {D8-D9}
1E3A1C:  POP.W           {R8,R9,R11}
1E3A20:  POP             {R4-R7,PC}
