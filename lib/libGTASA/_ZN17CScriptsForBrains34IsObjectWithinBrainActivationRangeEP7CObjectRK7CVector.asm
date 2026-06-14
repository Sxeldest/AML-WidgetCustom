; =========================================================
; Game Engine Function: _ZN17CScriptsForBrains34IsObjectWithinBrainActivationRangeEP7CObjectRK7CVector
; Address            : 0x32FD66 - 0x32FDC8
; =========================================================

32FD66:  LDRSH.W         R3, [R1,#0x16C]
32FD6A:  ADD.W           R3, R3, R3,LSL#2
32FD6E:  ADD.W           R12, R0, R3,LSL#2
32FD72:  LDRB.W          R3, [R12,#2]
32FD76:  CMP             R3, #1
32FD78:  BNE             loc_32FDC4
32FD7A:  LDR             R3, [R1,#0x14]
32FD7C:  VLDR            S0, [R2]
32FD80:  ADD.W           R0, R3, #0x30 ; '0'
32FD84:  CMP             R3, #0
32FD86:  IT EQ
32FD88:  ADDEQ           R0, R1, #4
32FD8A:  VLDR            D16, [R2,#4]
32FD8E:  VLDR            S2, [R0]
32FD92:  VLDR            D17, [R0,#4]
32FD96:  VSUB.F32        S0, S0, S2
32FD9A:  VSUB.F32        D16, D16, D17
32FD9E:  VMUL.F32        D1, D16, D16
32FDA2:  VMUL.F32        S0, S0, S0
32FDA6:  VADD.F32        S0, S0, S2
32FDAA:  VADD.F32        S0, S0, S3
32FDAE:  VLDR            S2, [R12,#8]
32FDB2:  VSQRT.F32       S0, S0
32FDB6:  VCMPE.F32       S0, S2
32FDBA:  VMRS            APSR_nzcv, FPSCR
32FDBE:  ITT LT
32FDC0:  MOVLT           R0, #1
32FDC2:  BXLT            LR
32FDC4:  MOVS            R0, #0
32FDC6:  BX              LR
