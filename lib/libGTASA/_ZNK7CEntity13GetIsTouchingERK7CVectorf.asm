; =========================================================
; Game Engine Function: _ZNK7CEntity13GetIsTouchingERK7CVectorf
; Address            : 0x3ED43C - 0x3ED504
; =========================================================

3ED43C:  PUSH            {R4,R5,R7,LR}
3ED43E:  ADD             R7, SP, #8
3ED440:  VPUSH           {D8}
3ED444:  SUB             SP, SP, #0x30
3ED446:  MOV             R5, R0
3ED448:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3ED454)
3ED44A:  MOV             R4, R1
3ED44C:  LDRSH.W         R1, [R5,#0x26]
3ED450:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3ED452:  VMOV            S16, R2
3ED456:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3ED458:  LDR.W           R0, [R0,R1,LSL#2]
3ED45C:  LDR             R1, [R5,#0x14]
3ED45E:  LDR             R0, [R0,#0x2C]
3ED460:  CMP             R1, #0
3ED462:  ADD.W           R2, R0, #0x18
3ED466:  BEQ             loc_3ED48A
3ED468:  LDR             R0, [R2,#8]
3ED46A:  VLDR            D16, [R2]
3ED46E:  ADD             R2, SP, #0x40+var_30
3ED470:  STR             R0, [SP,#0x40+var_28]
3ED472:  ADD             R0, SP, #0x40+var_20
3ED474:  VSTR            D16, [SP,#0x40+var_30]
3ED478:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3ED47C:  VLDR            D16, [SP,#0x40+var_20]
3ED480:  LDR             R0, [SP,#0x40+var_18]
3ED482:  STR             R0, [SP,#0x40+var_38]
3ED484:  VSTR            D16, [SP,#0x40+var_40]
3ED488:  B               loc_3ED492
3ED48A:  ADDS            R1, R5, #4
3ED48C:  MOV             R0, SP
3ED48E:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3ED492:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3ED49C)
3ED494:  LDRSH.W         R1, [R5,#0x26]
3ED498:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3ED49A:  VLDR            S0, [SP,#0x40+var_40]
3ED49E:  VLDR            S6, [R4]
3ED4A2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3ED4A4:  VLDR            S2, [SP,#0x40+var_40+4]
3ED4A8:  VSUB.F32        S0, S0, S6
3ED4AC:  VLDR            S8, [R4,#4]
3ED4B0:  LDR.W           R0, [R0,R1,LSL#2]
3ED4B4:  VSUB.F32        S2, S2, S8
3ED4B8:  VLDR            S4, [SP,#0x40+var_38]
3ED4BC:  LDR             R0, [R0,#0x2C]
3ED4BE:  VLDR            S10, [R4,#8]
3ED4C2:  VLDR            S6, [R0,#0x24]
3ED4C6:  VSUB.F32        S4, S4, S10
3ED4CA:  VSTR            S0, [SP,#0x40+var_40]
3ED4CE:  VMUL.F32        S0, S0, S0
3ED4D2:  VSTR            S2, [SP,#0x40+var_40+4]
3ED4D6:  VMUL.F32        S2, S2, S2
3ED4DA:  VADD.F32        S6, S6, S16
3ED4DE:  MOVS            R0, #0
3ED4E0:  VADD.F32        S0, S0, S2
3ED4E4:  VMUL.F32        S2, S4, S4
3ED4E8:  VMUL.F32        S4, S6, S6
3ED4EC:  VADD.F32        S0, S2, S0
3ED4F0:  VCMPE.F32       S0, S4
3ED4F4:  VMRS            APSR_nzcv, FPSCR
3ED4F8:  IT LT
3ED4FA:  MOVLT           R0, #1
3ED4FC:  ADD             SP, SP, #0x30 ; '0'
3ED4FE:  VPOP            {D8}
3ED502:  POP             {R4,R5,R7,PC}
