; =========================================================
; Game Engine Function: _ZN10Interior_c9IsVisibleEv
; Address            : 0x446874 - 0x4469C2
; =========================================================

446874:  LDR             R1, =(TheCamera_ptr - 0x44687E)
446876:  VLDR            S4, [R0,#0x48]
44687A:  ADD             R1, PC; TheCamera_ptr
44687C:  VLDR            S6, [R0,#0x4C]
446880:  VLDR            S8, [R0,#0x50]
446884:  LDR             R1, [R1]; TheCamera
446886:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
446888:  ADD.W           R3, R2, #0x30 ; '0'
44688C:  CMP             R2, #0
44688E:  IT EQ
446890:  ADDEQ           R3, R1, #4
446892:  VLDR            S12, [R0,#0x18]
446896:  VLDR            S0, [R3]
44689A:  VLDR            S2, [R3,#4]
44689E:  VSUB.F32        S4, S0, S4
4468A2:  VLDR            S10, [R3,#8]
4468A6:  VSUB.F32        S6, S2, S6
4468AA:  VLDR            S14, [R0,#0x1C]
4468AE:  LDR             R1, [R0,#0x14]
4468B0:  VSUB.F32        S10, S10, S8
4468B4:  VLDR            S1, [R0,#0x20]
4468B8:  VMOV.F32        S8, #0.5
4468BC:  LDRB            R2, [R1,#2]
4468BE:  VMUL.F32        S12, S4, S12
4468C2:  VMUL.F32        S14, S6, S14
4468C6:  VMOV            S3, R2
4468CA:  VMUL.F32        S1, S10, S1
4468CE:  VCVT.F32.U32    S3, S3
4468D2:  VADD.F32        S14, S12, S14
4468D6:  VMOV.F32        S12, #5.0
4468DA:  VMUL.F32        S3, S3, S8
4468DE:  VADD.F32        S14, S14, S1
4468E2:  VADD.F32        S1, S3, S12
4468E6:  VABS.F32        S14, S14
4468EA:  VCMPE.F32       S14, S1
4468EE:  VMRS            APSR_nzcv, FPSCR
4468F2:  BGT             loc_446978
4468F4:  VLDR            S14, [R0,#0x28]
4468F8:  VLDR            S1, [R0,#0x2C]
4468FC:  VMUL.F32        S14, S4, S14
446900:  LDRB            R2, [R1,#3]
446902:  VMUL.F32        S1, S6, S1
446906:  VLDR            S3, [R0,#0x30]
44690A:  VMOV            S5, R2
44690E:  VMUL.F32        S3, S10, S3
446912:  VCVT.F32.U32    S5, S5
446916:  VADD.F32        S14, S14, S1
44691A:  VMUL.F32        S1, S5, S8
44691E:  VADD.F32        S14, S14, S3
446922:  VADD.F32        S12, S1, S12
446926:  VABS.F32        S14, S14
44692A:  VCMPE.F32       S14, S12
44692E:  VMRS            APSR_nzcv, FPSCR
446932:  BGT             loc_446978
446934:  VLDR            S12, [R0,#0x38]
446938:  VLDR            S14, [R0,#0x3C]
44693C:  VMUL.F32        S4, S4, S12
446940:  LDRB            R2, [R1,#4]
446942:  VMUL.F32        S6, S6, S14
446946:  VLDR            S1, [R0,#0x40]
44694A:  VMUL.F32        S10, S10, S1
44694E:  VADD.F32        S4, S4, S6
446952:  VMOV            S6, R2
446956:  VCVT.F32.U32    S6, S6
44695A:  VADD.F32        S4, S4, S10
44695E:  VMUL.F32        S6, S6, S8
446962:  VLDR            S8, =0.0
446966:  VABS.F32        S4, S4
44696A:  VADD.F32        S6, S6, S8
44696E:  VCMPE.F32       S4, S6
446972:  VMRS            APSR_nzcv, FPSCR
446976:  BLE             loc_4469BE
446978:  LDRSB.W         R1, [R1,#5]
44697C:  CMP             R1, #1
44697E:  BLT             loc_4469BA
446980:  ADDW            R1, R0, #0x404
446984:  ADD.W           R0, R0, #0x400
446988:  VLDR            S4, [R1]
44698C:  VLDR            S6, [R0]
446990:  VSUB.F32        S2, S2, S4
446994:  VSUB.F32        S0, S0, S6
446998:  VMUL.F32        S2, S2, S2
44699C:  VMUL.F32        S0, S0, S0
4469A0:  VADD.F32        S0, S0, S2
4469A4:  VLDR            S2, =0.0
4469A8:  VADD.F32        S0, S0, S2
4469AC:  VLDR            S2, =100.0
4469B0:  VCMPE.F32       S0, S2
4469B4:  VMRS            APSR_nzcv, FPSCR
4469B8:  BLT             loc_4469BE
4469BA:  MOVS            R0, #0
4469BC:  BX              LR
4469BE:  MOVS            R0, #1
4469C0:  BX              LR
