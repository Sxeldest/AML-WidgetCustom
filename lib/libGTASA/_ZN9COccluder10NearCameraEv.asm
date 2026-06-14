; =========================================================
; Game Engine Function: _ZN9COccluder10NearCameraEv
; Address            : 0x5AEA8C - 0x5AEB36
; =========================================================

5AEA8C:  SUB             SP, SP, #8
5AEA8E:  LDRSH.W         R3, [R0]
5AEA92:  VMOV.F32        S0, #-0.25
5AEA96:  LDR.W           R2, [R0,#2]
5AEA9A:  STR             R2, [SP,#8+var_4]
5AEA9C:  ADD             R2, SP, #8+var_4
5AEA9E:  VMOV            S2, R3
5AEAA2:  LDR             R1, =(TheCamera_ptr - 0x5AEAAC)
5AEAA4:  VCVT.F32.S32    S2, S2
5AEAA8:  ADD             R1, PC; TheCamera_ptr
5AEAAA:  VLD1.32         {D16[0]}, [R2@32]
5AEAAE:  VMOVL.S16       Q8, D16
5AEAB2:  LDR             R1, [R1]; TheCamera
5AEAB4:  VMUL.F32        S0, S2, S0
5AEAB8:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
5AEABA:  VCVT.F32.S32    D16, D16
5AEABE:  VMOV.F32        D17, #0.25
5AEAC2:  ADD.W           R3, R2, #0x30 ; '0'
5AEAC6:  CMP             R2, #0
5AEAC8:  IT EQ
5AEACA:  ADDEQ           R3, R1, #4
5AEACC:  LDR.W           R0, [R0,#6]
5AEAD0:  VLDR            S2, [R3]
5AEAD4:  VMUL.F32        D16, D16, D17
5AEAD8:  VLDR            D18, [R3,#4]
5AEADC:  VADD.F32        S0, S2, S0
5AEAE0:  STR             R0, [SP,#8+var_8]
5AEAE2:  MOV             R0, SP
5AEAE4:  VSUB.F32        D16, D18, D16
5AEAE8:  VMUL.F32        S0, S0, S0
5AEAEC:  VMUL.F32        D1, D16, D16
5AEAF0:  VLD1.32         {D16[0]}, [R0@32,#8+var_8]
5AEAF4:  MOVS            R0, #0
5AEAF6:  VMOVL.S16       Q9, D16
5AEAFA:  VADD.F32        S0, S0, S2
5AEAFE:  VCVT.F32.S32    D16, D18
5AEB02:  VMUL.F32        D2, D16, D17
5AEB06:  VADD.F32        S0, S0, S3
5AEB0A:  VMOV.F32        S2, #-0.5
5AEB0E:  VMOV.F32        S6, S5
5AEB12:  VSQRT.F32       S0, S0
5AEB16:  VMAX.F32        D2, D2, D3
5AEB1A:  VMUL.F32        S2, S4, S2
5AEB1E:  VADD.F32        S0, S0, S2
5AEB22:  VLDR            S2, =250.0
5AEB26:  VCMPE.F32       S0, S2
5AEB2A:  VMRS            APSR_nzcv, FPSCR
5AEB2E:  IT LT
5AEB30:  MOVLT           R0, #1
5AEB32:  ADD             SP, SP, #8
5AEB34:  BX              LR
