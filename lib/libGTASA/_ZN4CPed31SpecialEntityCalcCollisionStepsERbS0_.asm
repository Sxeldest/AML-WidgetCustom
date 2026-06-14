; =========================================================
; Game Engine Function: _ZN4CPed31SpecialEntityCalcCollisionStepsERbS0_
; Address            : 0x4A6DE8 - 0x4A6EFC
; =========================================================

4A6DE8:  PUSH            {R4,R6,R7,LR}
4A6DEA:  ADD             R7, SP, #8
4A6DEC:  MOV             R4, R0
4A6DEE:  LDR.W           R0, [R4,#0x100]
4A6DF2:  CMP             R0, #0
4A6DF4:  ITT NE
4A6DF6:  MOVNE           R0, #1
4A6DF8:  POPNE           {R4,R6,R7,PC}
4A6DFA:  LDR.W           R0, [R4,#0x444]
4A6DFE:  VLDR            S0, [R4,#0x48]
4A6E02:  CBZ             R0, loc_4A6E18
4A6E04:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A6E0E)
4A6E06:  VLDR            S4, [R4,#0x4C]
4A6E0A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A6E0C:  VLDR            S2, [R4,#0x50]
4A6E10:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
4A6E12:  VLDR            S6, [R1]
4A6E16:  B               loc_4A6E58
4A6E18:  VLDR            S4, [R4,#0x4C]
4A6E1C:  VMUL.F32        S6, S0, S0
4A6E20:  VLDR            S2, [R4,#0x50]
4A6E24:  VMUL.F32        S8, S4, S4
4A6E28:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A6E32)
4A6E2A:  VMUL.F32        S10, S2, S2
4A6E2E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A6E30:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
4A6E32:  VADD.F32        S6, S6, S8
4A6E36:  VADD.F32        S8, S6, S10
4A6E3A:  VLDR            S6, [R1]
4A6E3E:  VLDR            S10, =0.09
4A6E42:  VMUL.F32        S8, S6, S8
4A6E46:  VMUL.F32        S8, S6, S8
4A6E4A:  VCMPE.F32       S8, S10
4A6E4E:  VMRS            APSR_nzcv, FPSCR
4A6E52:  ITT LT
4A6E54:  MOVLT           R0, #1
4A6E56:  POPLT           {R4,R6,R7,PC}
4A6E58:  VMUL.F32        S4, S4, S4
4A6E5C:  CMP             R0, #0
4A6E5E:  VMUL.F32        S0, S0, S0
4A6E62:  VMUL.F32        S2, S2, S2
4A6E66:  VADD.F32        S0, S0, S4
4A6E6A:  VADD.F32        S0, S0, S2
4A6E6E:  VSQRT.F32       S0, S0
4A6E72:  VMUL.F32        S0, S6, S0
4A6E76:  BEQ             loc_4A6E9A
4A6E78:  LDR.W           R0, [R4,#0x56C]
4A6E7C:  CMP             R0, #0
4A6E7E:  BEQ             loc_4A6ECC
4A6E80:  VADD.F32        S0, S0, S0
4A6E84:  VLDR            S2, =0.3
4A6E88:  VDIV.F32        S0, S0, S2
4A6E8C:  VMOV            R0, S0; x
4A6E90:  BLX             ceilf
4A6E94:  VMOV.F32        S0, #4.0
4A6E98:  B               loc_4A6EE0
4A6E9A:  VMOV.F32        S2, #1.5
4A6E9E:  VMUL.F32        S0, S0, S2
4A6EA2:  VLDR            S2, =0.3
4A6EA6:  VDIV.F32        S0, S0, S2
4A6EAA:  VMOV            R0, S0; x
4A6EAE:  BLX             ceilf
4A6EB2:  VMOV            S2, R0
4A6EB6:  VLDR            S0, [R4,#0xA0]
4A6EBA:  VCVT.U32.F32    S2, S2
4A6EBE:  VADD.F32        S0, S0, S0
4A6EC2:  VMOV            R0, S2
4A6EC6:  VSTR            S0, [R4,#0xA0]
4A6ECA:  POP             {R4,R6,R7,PC}
4A6ECC:  VLDR            S2, =0.3
4A6ED0:  VDIV.F32        S0, S0, S2
4A6ED4:  VMOV            R0, S0; x
4A6ED8:  BLX             ceilf
4A6EDC:  VMOV.F32        S0, #2.0
4A6EE0:  VMOV            S2, R0
4A6EE4:  VCMPE.F32       S2, S0
4A6EE8:  VMRS            APSR_nzcv, FPSCR
4A6EEC:  IT GE
4A6EEE:  VMOVGE.F32      S0, S2
4A6EF2:  VCVT.U32.F32    S0, S0
4A6EF6:  VMOV            R0, S0
4A6EFA:  POP             {R4,R6,R7,PC}
