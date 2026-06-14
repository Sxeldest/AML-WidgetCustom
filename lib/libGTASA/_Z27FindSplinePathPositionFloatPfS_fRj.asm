; =========================================================
; Game Engine Function: _Z27FindSplinePathPositionFloatPfS_fRj
; Address            : 0x462FE0 - 0x463112
; =========================================================

462FE0:  PUSH            {R4,R5,R7,LR}
462FE2:  ADD             R7, SP, #8
462FE4:  VLDR            S0, [R1]
462FE8:  MOV             R4, #0xFFFFFFFD
462FEC:  LDR.W           LR, [R3]
462FF0:  VMOV            S2, R2
462FF4:  VCVT.U32.F32    S0, S0
462FF8:  VLDR            S4, =1000.0
462FFC:  VMOV            R5, S0
463000:  ADD.W           R12, R4, R5,LSL#2
463004:  ADD.W           R4, R1, R12,LSL#2
463008:  VLDR            S0, [R4]
46300C:  VMUL.F32        S0, S0, S4
463010:  VCMPE.F32       S0, S2
463014:  VMRS            APSR_nzcv, FPSCR
463018:  BLE             loc_46304C
46301A:  SUB.W           R2, LR, #1
46301E:  LSRS            R2, R2, #2
463020:  CMP             R2, R5
463022:  BHI             loc_46305E
463024:  ADD.W           R2, R1, LR,LSL#2
463028:  VLDR            S6, [R2]
46302C:  VLDR            S8, [R2,#-0x10]
463030:  LDR             R2, =(MAX_CUTJUMP_TIME_ptr - 0x46303A)
463032:  VSUB.F32        S6, S6, S8
463036:  ADD             R2, PC; MAX_CUTJUMP_TIME_ptr
463038:  LDR             R2, [R2]; MAX_CUTJUMP_TIME
46303A:  VLDR            S8, [R2]
46303E:  VMUL.F32        S6, S6, S4
463042:  VCMPE.F32       S6, S8
463046:  VMRS            APSR_nzcv, FPSCR
46304A:  BLE             loc_463050
46304C:  MOV             R12, LR
46304E:  B               loc_463062
463050:  ADD.W           R2, LR, #3
463054:  LSRS            R2, R2, #2
463056:  CMP             R2, R5
463058:  IT LS
46305A:  ADDLS.W         R12, LR, #4
46305E:  STR.W           R12, [R3]
463062:  ADD.W           R1, R1, R12,LSL#2
463066:  VCMPE.F32       S0, S2
46306A:  VMRS            APSR_nzcv, FPSCR
46306E:  VLDR            S10, [R1]
463072:  VLDR            S12, [R1,#-0x10]
463076:  VLDR            S8, [R1,#-4]
46307A:  VSUB.F32        S10, S10, S12
46307E:  VLDR            S6, [R1,#-0xC]
463082:  VMUL.F32        S12, S12, S4
463086:  VCMP.F32        S8, S6
46308A:  VMUL.F32        S4, S10, S4
46308E:  VSUB.F32        S10, S2, S12
463092:  VLDR            S12, =0.0
463096:  VDIV.F32        S4, S10, S4
46309A:  VMOV.F32        S10, #1.0
46309E:  VMIN.F32        D16, D2, D5
4630A2:  VMAX.F32        D2, D16, D6
4630A6:  IT LT
4630A8:  VMOVLT.F32      S4, S10
4630AC:  VMRS            APSR_nzcv, FPSCR
4630B0:  BEQ             loc_4630FC
4630B2:  VSUB.F32        S0, S10, S4
4630B6:  VLDR            S1, [R1,#8]
4630BA:  VMOV.F32        S10, #3.0
4630BE:  VMUL.F32        S3, S4, S4
4630C2:  VMUL.F32        S2, S0, S0
4630C6:  VMUL.F32        S10, S4, S10
4630CA:  VMUL.F32        S14, S0, S2
4630CE:  VMUL.F32        S12, S4, S10
4630D2:  VMUL.F32        S2, S10, S2
4630D6:  VLDR            S10, [R1,#4]
4630DA:  VMUL.F32        S4, S4, S3
4630DE:  VMUL.F32        S6, S6, S14
4630E2:  VMUL.F32        S12, S12, S1
4630E6:  VMUL.F32        S2, S8, S2
4630EA:  VMUL.F32        S8, S0, S12
4630EE:  VADD.F32        S2, S6, S2
4630F2:  VMUL.F32        S0, S4, S10
4630F6:  VADD.F32        S6, S2, S8
4630FA:  B               loc_463108
4630FC:  VLDR            S0, [R1,#4]
463100:  VSUB.F32        S0, S0, S6
463104:  VMUL.F32        S0, S4, S0
463108:  VADD.F32        S0, S0, S6
46310C:  VSTR            S0, [R0]
463110:  POP             {R4,R5,R7,PC}
