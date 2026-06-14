; =========================================================
; Game Engine Function: _ZN11CWaterLevel23TestQuadToGetWaterLevelEP10CWaterQuadfffPfS2_S2_
; Address            : 0x595A54 - 0x595D42
; =========================================================

595A54:  PUSH            {R4-R7,LR}
595A56:  ADD             R7, SP, #0xC
595A58:  PUSH.W          {R8-R11}
595A5C:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595A6A)
595A5E:  VMOV            S4, R1
595A62:  LDRSH.W         R5, [R0]
595A66:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595A68:  LDR             R6, [R6]; CWaterLevel::m_aVertices ...
595A6A:  ADD.W           R4, R5, R5,LSL#2
595A6E:  LDRSH.W         R5, [R6,R4,LSL#2]
595A72:  VMOV            S0, R5
595A76:  VCVT.F32.S32    S2, S0
595A7A:  VCMPE.F32       S2, S4
595A7E:  VMRS            APSR_nzcv, FPSCR
595A82:  BGT             loc_595AF8
595A84:  LDR             R1, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595A8E)
595A86:  LDRSH.W         R6, [R0,#2]
595A8A:  ADD             R1, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595A8C:  LDR             R1, [R1]; CWaterLevel::m_aVertices ...
595A8E:  ADD.W           R11, R6, R6,LSL#2
595A92:  LDRSH.W         R6, [R1,R11,LSL#2]
595A96:  VMOV            S0, R6
595A9A:  VCVT.F32.S32    S0, S0
595A9E:  VCMPE.F32       S0, S4
595AA2:  VMRS            APSR_nzcv, FPSCR
595AA6:  BLT             loc_595AF8
595AA8:  LDR             R1, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595AB2)
595AAA:  VMOV            S6, R2
595AAE:  ADD             R1, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595AB0:  LDR             R1, [R1]; CWaterLevel::m_aVertices ...
595AB2:  ADD.W           R1, R1, R4,LSL#2
595AB6:  LDRSH.W         R2, [R1,#2]
595ABA:  VMOV            S0, R2
595ABE:  VCVT.F32.S32    S8, S0
595AC2:  VCMPE.F32       S8, S6
595AC6:  VMRS            APSR_nzcv, FPSCR
595ACA:  BGT             loc_595AF8
595ACC:  LDR.W           R12, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595AD8)
595AD0:  LDRSH.W         R1, [R0,#4]
595AD4:  ADD             R12, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595AD6:  LDR.W           R12, [R12]; CWaterLevel::m_aVertices ...
595ADA:  ADD.W           R9, R1, R1,LSL#2
595ADE:  ADD.W           R1, R12, R9,LSL#2
595AE2:  LDRSH.W         R10, [R1,#2]
595AE6:  VMOV            S0, R10
595AEA:  VCVT.F32.S32    S0, S0
595AEE:  VCMPE.F32       S0, S6
595AF2:  VMRS            APSR_nzcv, FPSCR
595AF6:  BGE             loc_595B00
595AF8:  MOVS            R0, #0
595AFA:  POP.W           {R8-R11}
595AFE:  POP             {R4-R7,PC}
595B00:  SUB.W           R1, R10, R2
595B04:  VSUB.F32        S6, S6, S8
595B08:  VSUB.F32        S4, S4, S2
595B0C:  LDRD.W          LR, R8, [R7,#arg_0]
595B10:  VMOV            S8, R1
595B14:  SUBS            R1, R6, R5
595B16:  LDR.W           R12, [R7,#arg_8]
595B1A:  VMOV            S0, R3
595B1E:  VMOV            S2, R1
595B22:  VCVT.F32.S32    S8, S8
595B26:  VCVT.F32.S32    S10, S2
595B2A:  VDIV.F32        S2, S6, S8
595B2E:  VDIV.F32        S4, S4, S10
595B32:  VMOV.F32        S6, #1.0
595B36:  VADD.F32        S8, S4, S2
595B3A:  VCMPE.F32       S8, S6
595B3E:  VMRS            APSR_nzcv, FPSCR
595B42:  BLE             loc_595C12
595B44:  LDR             R1, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595B56)
595B46:  VSUB.F32        S4, S6, S4
595B4A:  LDRSH.W         R2, [R0,#6]
595B4E:  VSUB.F32        S2, S6, S2
595B52:  ADD             R1, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595B54:  CMP.W           R8, #0
595B58:  LDR             R1, [R1]; CWaterLevel::m_aVertices ...
595B5A:  ADD.W           R2, R2, R2,LSL#2
595B5E:  ADD.W           R2, R1, R2,LSL#2
595B62:  VLDR            S8, [R2,#4]
595B66:  ADD.W           R2, R1, R9,LSL#2
595B6A:  ADD.W           R1, R1, R11,LSL#2
595B6E:  VLDR            S10, [R2,#4]
595B72:  VLDR            S12, [R1,#4]
595B76:  VSUB.F32        S10, S10, S8
595B7A:  VSUB.F32        S6, S12, S8
595B7E:  VMUL.F32        S10, S4, S10
595B82:  VMUL.F32        S6, S2, S6
595B86:  VADD.F32        S8, S8, S10
595B8A:  VADD.F32        S6, S8, S6
595B8E:  VSTR            S6, [LR]
595B92:  BEQ.W           loc_595D3A
595B96:  LDR             R1, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595BA4)
595B98:  LDRSH.W         R3, [R0,#4]
595B9C:  LDRSH.W         R4, [R0,#6]
595BA0:  ADD             R1, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595BA2:  LDRSH.W         R2, [R0,#2]
595BA6:  LDR             R1, [R1]; CWaterLevel::m_aVertices ...
595BA8:  ADD.W           R3, R3, R3,LSL#2
595BAC:  ADD.W           R4, R4, R4,LSL#2
595BB0:  ADD.W           R3, R1, R3,LSL#2
595BB4:  ADD.W           R2, R2, R2,LSL#2
595BB8:  ADD.W           R4, R1, R4,LSL#2
595BBC:  VLDR            S8, [R3,#8]
595BC0:  ADD.W           R2, R1, R2,LSL#2
595BC4:  VLDR            S6, [R4,#8]
595BC8:  VLDR            S10, [R2,#8]
595BCC:  VSUB.F32        S8, S8, S6
595BD0:  VSUB.F32        S10, S10, S6
595BD4:  VMUL.F32        S8, S4, S8
595BD8:  VMUL.F32        S10, S2, S10
595BDC:  VADD.F32        S6, S6, S8
595BE0:  VADD.F32        S6, S6, S10
595BE4:  VSTR            S6, [R8]
595BE8:  LDRSH.W         R3, [R0,#4]
595BEC:  LDRSH.W         R4, [R0,#6]
595BF0:  LDRSH.W         R2, [R0,#2]
595BF4:  ADD.W           R3, R3, R3,LSL#2
595BF8:  ADD.W           R4, R4, R4,LSL#2
595BFC:  ADD.W           R3, R1, R3,LSL#2
595C00:  ADD.W           R2, R2, R2,LSL#2
595C04:  ADD.W           R4, R1, R4,LSL#2
595C08:  VLDR            S8, [R3,#0xC]
595C0C:  VLDR            S6, [R4,#0xC]
595C10:  B               loc_595CCC
595C12:  LDR             R1, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595C1C)
595C14:  CMP.W           R8, #0
595C18:  ADD             R1, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595C1A:  LDR             R1, [R1]; CWaterLevel::m_aVertices ...
595C1C:  ADD.W           R2, R1, R4,LSL#2
595C20:  VLDR            S6, [R2,#4]
595C24:  ADD.W           R2, R1, R11,LSL#2
595C28:  ADD.W           R1, R1, R9,LSL#2
595C2C:  VLDR            S8, [R2,#4]
595C30:  VLDR            S10, [R1,#4]
595C34:  VSUB.F32        S8, S8, S6
595C38:  VSUB.F32        S10, S10, S6
595C3C:  VMUL.F32        S8, S4, S8
595C40:  VMUL.F32        S10, S2, S10
595C44:  VADD.F32        S6, S6, S8
595C48:  VADD.F32        S6, S6, S10
595C4C:  VSTR            S6, [LR]
595C50:  BEQ             loc_595D3A
595C52:  LDR             R1, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595C5C)
595C54:  LDRSH.W         R2, [R0]
595C58:  ADD             R1, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595C5A:  LDRSH.W         R3, [R0,#2]
595C5E:  LDRSH.W         R4, [R0,#4]
595C62:  LDR             R1, [R1]; CWaterLevel::m_aVertices ...
595C64:  ADD.W           R2, R2, R2,LSL#2
595C68:  ADD.W           R3, R3, R3,LSL#2
595C6C:  ADD.W           R2, R1, R2,LSL#2
595C70:  VLDR            S6, [R2,#8]
595C74:  ADD.W           R2, R1, R3,LSL#2
595C78:  VLDR            S8, [R2,#8]
595C7C:  ADD.W           R2, R4, R4,LSL#2
595C80:  VSUB.F32        S8, S8, S6
595C84:  ADD.W           R2, R1, R2,LSL#2
595C88:  VLDR            S10, [R2,#8]
595C8C:  VSUB.F32        S10, S10, S6
595C90:  VMUL.F32        S8, S4, S8
595C94:  VMUL.F32        S10, S2, S10
595C98:  VADD.F32        S6, S6, S8
595C9C:  VADD.F32        S6, S6, S10
595CA0:  VSTR            S6, [R8]
595CA4:  LDRSH.W         R2, [R0]
595CA8:  LDRSH.W         R3, [R0,#2]
595CAC:  LDRSH.W         R4, [R0,#4]
595CB0:  ADD.W           R2, R2, R2,LSL#2
595CB4:  ADD.W           R3, R3, R3,LSL#2
595CB8:  ADD.W           R2, R1, R2,LSL#2
595CBC:  VLDR            S6, [R2,#0xC]
595CC0:  ADD.W           R2, R1, R3,LSL#2
595CC4:  VLDR            S8, [R2,#0xC]
595CC8:  ADD.W           R2, R4, R4,LSL#2
595CCC:  VSUB.F32        S8, S8, S6
595CD0:  ADD.W           R1, R1, R2,LSL#2
595CD4:  VMUL.F32        S4, S4, S8
595CD8:  VLDR            S10, [R1,#0xC]
595CDC:  VSUB.F32        S10, S10, S6
595CE0:  VADD.F32        S4, S6, S4
595CE4:  VMUL.F32        S2, S2, S10
595CE8:  VADD.F32        S2, S4, S2
595CEC:  VMOV.F32        S4, #-6.0
595CF0:  VSTR            S2, [R12]
595CF4:  VLDR            S2, [LR]
595CF8:  VADD.F32        S4, S2, S4
595CFC:  VCMPE.F32       S4, S0
595D00:  VMRS            APSR_nzcv, FPSCR
595D04:  BLE             loc_595D26
595D06:  LDRB            R0, [R0,#8]
595D08:  LSLS            R0, R0, #0x1D
595D0A:  MOV.W           R0, #0
595D0E:  BMI.W           loc_595AFA
595D12:  VMOV.F32        S4, #20.0
595D16:  VADD.F32        S2, S2, S4
595D1A:  VCMPE.F32       S2, S0
595D1E:  VMRS            APSR_nzcv, FPSCR
595D22:  BGE             loc_595D3A
595D24:  B               loc_595AFA
595D26:  VMOV.F32        S4, #20.0
595D2A:  VADD.F32        S2, S2, S4
595D2E:  VCMPE.F32       S2, S0
595D32:  VMRS            APSR_nzcv, FPSCR
595D36:  BLT.W           loc_595AF8
595D3A:  MOVS            R0, #1
595D3C:  POP.W           {R8-R11}
595D40:  POP             {R4-R7,PC}
