; =========================================================
; Game Engine Function: _ZN13CEmergencyPed7InRangeEP4CPed
; Address            : 0x49EDDC - 0x49EE40
; =========================================================

49EDDC:  LDR.W           R0, [R0,#0x590]
49EDE0:  CBZ             R0, loc_49EE3C
49EDE2:  LDR             R2, [R1,#0x14]
49EDE4:  LDR.W           R12, [R0,#0x14]
49EDE8:  ADD.W           R3, R2, #0x30 ; '0'
49EDEC:  CMP             R2, #0
49EDEE:  IT EQ
49EDF0:  ADDEQ           R3, R1, #4
49EDF2:  ADD.W           R1, R12, #0x30 ; '0'
49EDF6:  CMP.W           R12, #0
49EDFA:  VLDR            S0, [R3]
49EDFE:  IT EQ
49EE00:  ADDEQ           R1, R0, #4
49EE02:  VLDR            D16, [R3,#4]
49EE06:  VLDR            S2, [R1]
49EE0A:  VLDR            D17, [R1,#4]
49EE0E:  VSUB.F32        S0, S2, S0
49EE12:  VSUB.F32        D16, D17, D16
49EE16:  VMUL.F32        D1, D16, D16
49EE1A:  VMUL.F32        S0, S0, S0
49EE1E:  VADD.F32        S0, S0, S2
49EE22:  VADD.F32        S0, S0, S3
49EE26:  VMOV.F32        S2, #30.0
49EE2A:  VSQRT.F32       S0, S0
49EE2E:  VCMPE.F32       S0, S2
49EE32:  VMRS            APSR_nzcv, FPSCR
49EE36:  ITT GT
49EE38:  MOVGT           R0, #0
49EE3A:  BXGT            LR
49EE3C:  MOVS            R0, #1
49EE3E:  BX              LR
