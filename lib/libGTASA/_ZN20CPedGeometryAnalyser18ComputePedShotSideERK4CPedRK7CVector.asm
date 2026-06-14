; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser18ComputePedShotSideERK4CPedRK7CVector
; Address            : 0x4ADE1C - 0x4ADE96
; =========================================================

4ADE1C:  PUSH            {R4,R6,R7,LR}
4ADE1E:  ADD             R7, SP, #8
4ADE20:  MOV             R4, R0
4ADE22:  VLDR            S0, [R1]
4ADE26:  LDR             R0, [R4,#0x14]
4ADE28:  VLDR            S2, [R1,#4]
4ADE2C:  ADD.W           R1, R0, #0x30 ; '0'
4ADE30:  CMP             R0, #0
4ADE32:  IT EQ
4ADE34:  ADDEQ           R1, R4, #4
4ADE36:  VLDR            S4, [R1]
4ADE3A:  VLDR            S6, [R1,#4]
4ADE3E:  VSUB.F32        S0, S0, S4
4ADE42:  VSUB.F32        S2, S2, S6
4ADE46:  VMOV            R0, S0
4ADE4A:  VMOV            R1, S2; x
4ADE4E:  EOR.W           R0, R0, #0x80000000; y
4ADE52:  BLX             atan2f
4ADE56:  ADDW            R1, R4, #0x55C
4ADE5A:  VMOV            S0, R0
4ADE5E:  VLDR            S2, [R1]
4ADE62:  VSUB.F32        S0, S0, S2
4ADE66:  VLDR            S2, =0.7854
4ADE6A:  VADD.F32        S0, S0, S2
4ADE6E:  VLDR            S2, =6.2832
4ADE72:  VCMPE.F32       S0, #0.0
4ADE76:  VMRS            APSR_nzcv, FPSCR
4ADE7A:  VADD.F32        S2, S0, S2
4ADE7E:  IT LT
4ADE80:  VMOVLT.F32      S0, S2
4ADE84:  VLDR            S2, =1.5708
4ADE88:  VDIV.F32        S0, S0, S2
4ADE8C:  VCVT.S32.F32    S0, S0
4ADE90:  VMOV            R0, S0
4ADE94:  POP             {R4,R6,R7,PC}
