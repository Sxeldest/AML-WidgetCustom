; =========================================================
; Game Engine Function: _Z31RpMorphTargetCalcBoundingSpherePK13RpMorphTargetP8RwSphere
; Address            : 0x215888 - 0x215948
; =========================================================

215888:  PUSH            {R4-R7,LR}
21588A:  ADD             R7, SP, #0xC
21588C:  PUSH.W          {R11}
215890:  VPUSH           {D8-D9}
215894:  SUB             SP, SP, #0x18
215896:  MOV             R4, R0
215898:  MOV             R5, R1
21589A:  LDR             R0, [R4]
21589C:  LDR             R1, [R4,#0x14]
21589E:  LDR             R6, [R0,#0x14]
2158A0:  MOV             R0, SP
2158A2:  MOV             R2, R6
2158A4:  BLX             j__Z15RwBBoxCalculateP6RwBBoxPK5RwV3di; RwBBoxCalculate(RwBBox *,RwV3d const*,int)
2158A8:  VLDR            S0, [SP,#0x38+var_38]
2158AC:  VMOV.F32        S4, #0.5
2158B0:  VLDR            S2, [SP,#0x38+var_2C]
2158B4:  CMP             R6, #0
2158B6:  VLDR            D16, [SP,#0x38+var_34]
2158BA:  VADD.F32        S0, S2, S0
2158BE:  VLDR            D17, [SP,#0x38+var_28]
2158C2:  VADD.F32        D16, D17, D16
2158C6:  VMOV.I32        D17, #0x3F000000
2158CA:  VMUL.F32        D8, D16, D17
2158CE:  VMUL.F32        S18, S0, S4
2158D2:  VLDR            S0, =0.0
2158D6:  BEQ             loc_21591C
2158D8:  LDR             R0, [R4,#0x14]
2158DA:  VLDR            S2, [R0]
2158DE:  SUBS            R6, #1
2158E0:  VLDR            D16, [R0,#4]
2158E4:  ADD.W           R0, R0, #0xC
2158E8:  VSUB.F32        S2, S2, S18
2158EC:  VSUB.F32        D16, D16, D8
2158F0:  VMUL.F32        D2, D16, D16
2158F4:  VMUL.F32        S2, S2, S2
2158F8:  VADD.F32        S2, S2, S4
2158FC:  VADD.F32        S2, S2, S5
215900:  VMAX.F32        D0, D1, D0
215904:  BNE             loc_2158DA
215906:  VCMPE.F32       S0, #0.0
21590A:  VMRS            APSR_nzcv, FPSCR
21590E:  BLE             loc_21591C
215910:  VMOV            R0, S0; float
215914:  BLX             j__Z7_rwSqrtf; _rwSqrt(float)
215918:  VMOV            S0, R0
21591C:  VLDR            S2, =1.001
215920:  ADDS            R0, R5, #4
215922:  VMUL.F32        S0, S0, S2
215926:  VST1.32         {D8[0]}, [R0@32]
21592A:  ADD.W           R0, R5, #8
21592E:  VSTR            S18, [R5]
215932:  VST1.32         {D8[1]}, [R0@32]
215936:  MOV             R0, R4
215938:  VSTR            S0, [R5,#0xC]
21593C:  ADD             SP, SP, #0x18
21593E:  VPOP            {D8-D9}
215942:  POP.W           {R11}
215946:  POP             {R4-R7,PC}
