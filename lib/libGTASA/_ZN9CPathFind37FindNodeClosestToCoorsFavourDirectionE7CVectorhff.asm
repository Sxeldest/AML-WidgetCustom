; =========================================================
; Game Engine Function: _ZN9CPathFind37FindNodeClosestToCoorsFavourDirectionE7CVectorhff
; Address            : 0x317E34 - 0x317FAC
; =========================================================

317E34:  PUSH            {R4-R7,LR}
317E36:  ADD             R7, SP, #0xC
317E38:  PUSH.W          {R8-R11}
317E3C:  VLDR            S0, [R7,#arg_8]
317E40:  VLDR            S4, [R7,#arg_4]
317E44:  VMUL.F32        S2, S0, S0
317E48:  VMUL.F32        S6, S4, S4
317E4C:  VADD.F32        S2, S6, S2
317E50:  VSQRT.F32       S6, S2
317E54:  VMOV.F32        S2, #1.0
317E58:  VCMP.F32        S6, #0.0
317E5C:  VMRS            APSR_nzcv, FPSCR
317E60:  BEQ             loc_317E6C
317E62:  VDIV.F32        S0, S0, S6
317E66:  VDIV.F32        S4, S4, S6
317E6A:  B               loc_317E70
317E6C:  VMOV.F32        S4, S2
317E70:  VMOV.F32        S14, #0.125
317E74:  LDR.W           R12, [R7,#arg_0]
317E78:  VMOV.F32        S1, #3.0
317E7C:  VLDR            S12, =10000.0
317E80:  VMOV.F32        S3, #-1.0
317E84:  MOVW            LR, #0xFFFF
317E88:  VMOV.F32        S5, #-20.0
317E8C:  MOV.W           R11, #0
317E90:  VMOV            S6, R3
317E94:  MOVW            R8, #0x1104
317E98:  VMOV            S8, R2
317E9C:  VMOV            S10, R1
317EA0:  ADD.W           R6, R0, R11,LSL#2
317EA4:  LDR.W           R4, [R6,#0x804]
317EA8:  CMP             R4, #0
317EAA:  BEQ             loc_317F96
317EAC:  CMP.W           R12, #1
317EB0:  BEQ             loc_317EC2
317EB2:  CMP.W           R12, #0
317EB6:  BNE             loc_317ECC
317EB8:  ADD.W           R5, R6, R8
317EBC:  MOV.W           R9, #0
317EC0:  B               loc_317ECA
317EC2:  LDR.W           R9, [R6,R8]
317EC6:  ADDW            R5, R6, #0xFE4
317ECA:  LDR             R5, [R5]
317ECC:  CMP             R9, R5
317ECE:  BGE             loc_317F96
317ED0:  RSB.W           R6, R9, R9,LSL#3
317ED4:  ADD.W           R4, R4, R6,LSL#2
317ED8:  ADD.W           R6, R4, #8
317EDC:  MOV             R4, R9
317EDE:  LDRSH.W         R3, [R6]
317EE2:  LDRSH.W         R2, [R6,#2]
317EE6:  LDRSH.W         R1, [R6,#4]
317EEA:  VMOV            S9, R3
317EEE:  VMOV            S7, R2
317EF2:  VMOV            S11, R1
317EF6:  VCVT.F32.S32    S7, S7
317EFA:  VCVT.F32.S32    S9, S9
317EFE:  VCVT.F32.S32    S11, S11
317F02:  VMUL.F32        S7, S7, S14
317F06:  VMUL.F32        S9, S9, S14
317F0A:  VMUL.F32        S13, S11, S14
317F0E:  VSUB.F32        S7, S7, S8
317F12:  VSUB.F32        S11, S9, S10
317F16:  VSUB.F32        S9, S13, S6
317F1A:  VABS.F32        S13, S7
317F1E:  VABS.F32        S15, S11
317F22:  VABS.F32        S9, S9
317F26:  VADD.F32        S13, S15, S13
317F2A:  VMUL.F32        S9, S9, S1
317F2E:  VADD.F32        S9, S13, S9
317F32:  VCMPE.F32       S9, S12
317F36:  VMRS            APSR_nzcv, FPSCR
317F3A:  BGE             loc_317F8E
317F3C:  VMUL.F32        S13, S7, S7
317F40:  VMUL.F32        S15, S11, S11
317F44:  VADD.F32        S13, S15, S13
317F48:  VSQRT.F32       S13, S13
317F4C:  VCMP.F32        S13, #0.0
317F50:  VMRS            APSR_nzcv, FPSCR
317F54:  BEQ             loc_317F60
317F56:  VDIV.F32        S7, S7, S13
317F5A:  VDIV.F32        S11, S11, S13
317F5E:  B               loc_317F64
317F60:  VMOV.F32        S11, S2
317F64:  VMUL.F32        S7, S0, S7
317F68:  VMUL.F32        S11, S4, S11
317F6C:  VADD.F32        S7, S11, S7
317F70:  VADD.F32        S7, S7, S3
317F74:  VMUL.F32        S7, S7, S5
317F78:  VADD.F32        S7, S9, S7
317F7C:  VCMPE.F32       S7, S12
317F80:  VMRS            APSR_nzcv, FPSCR
317F84:  ITTT LT
317F86:  MOVLT           LR, R11
317F88:  MOVLT           R10, R4
317F8A:  VMOVLT.F32      S12, S7
317F8E:  ADDS            R4, #1
317F90:  ADDS            R6, #0x1C
317F92:  CMP             R5, R4
317F94:  BNE             loc_317EDE
317F96:  ADD.W           R11, R11, #1
317F9A:  CMP.W           R11, #0x48 ; 'H'
317F9E:  BNE.W           loc_317EA0
317FA2:  PKHBT.W         R0, LR, R10,LSL#16
317FA6:  POP.W           {R8-R11}
317FAA:  POP             {R4-R7,PC}
