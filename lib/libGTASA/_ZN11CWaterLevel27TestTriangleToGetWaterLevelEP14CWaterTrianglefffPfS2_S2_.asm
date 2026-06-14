; =========================================================
; Game Engine Function: _ZN11CWaterLevel27TestTriangleToGetWaterLevelEP14CWaterTrianglefffPfS2_S2_
; Address            : 0x595D64 - 0x596060
; =========================================================

595D64:  PUSH            {R4-R7,LR}
595D66:  ADD             R7, SP, #0xC
595D68:  PUSH.W          {R8-R10}
595D6C:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595D7A)
595D6E:  VMOV            S4, R1
595D72:  LDRSH.W         R5, [R0]
595D76:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595D78:  LDR             R6, [R6]; CWaterLevel::m_aVertices ...
595D7A:  ADD.W           LR, R5, R5,LSL#2
595D7E:  LDRSH.W         R6, [R6,LR,LSL#2]
595D82:  VMOV            S0, R6
595D86:  VCVT.F32.S32    S2, S0
595D8A:  VCMPE.F32       S2, S4
595D8E:  VMRS            APSR_nzcv, FPSCR
595D92:  BGT             loc_595DB8
595D94:  LDR             R1, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595D9E)
595D96:  LDRSH.W         R5, [R0,#2]
595D9A:  ADD             R1, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595D9C:  LDR             R1, [R1]; CWaterLevel::m_aVertices ...
595D9E:  ADD.W           R10, R5, R5,LSL#2
595DA2:  LDRSH.W         R5, [R1,R10,LSL#2]
595DA6:  VMOV            S0, R5
595DAA:  VCVT.F32.S32    S0, S0
595DAE:  VCMPE.F32       S0, S4
595DB2:  VMRS            APSR_nzcv, FPSCR
595DB6:  BGE             loc_595DC2
595DB8:  MOVS            R1, #0
595DBA:  MOV             R0, R1
595DBC:  POP.W           {R8-R10}
595DC0:  POP             {R4-R7,PC}
595DC2:  LDR             R1, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595DD0)
595DC4:  VMOV            S6, R2
595DC8:  LDRSH.W         R2, [R0,#4]
595DCC:  ADD             R1, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595DCE:  LDR             R1, [R1]; CWaterLevel::m_aVertices ...
595DD0:  ADD.W           R9, R2, R2,LSL#2
595DD4:  ADD.W           R2, R1, R9,LSL#2
595DD8:  ADD.W           R1, R1, LR,LSL#2
595DDC:  LDRSH.W         R2, [R2,#2]
595DE0:  LDRSH.W         R4, [R1,#2]
595DE4:  CMP             R4, R2
595DE6:  MOV             R1, R2
595DE8:  IT LT
595DEA:  MOVLT           R1, R4
595DEC:  SXTH            R1, R1
595DEE:  VMOV            S0, R1
595DF2:  MOV             R1, R4
595DF4:  VCVT.F32.S32    S8, S0
595DF8:  IT LT
595DFA:  MOVLT           R1, R2
595DFC:  SXTH            R1, R1
595DFE:  VMOV            S0, R1
595E02:  MOVS            R1, #0
595E04:  VCVT.F32.S32    S0, S0
595E08:  VCMPE.F32       S8, S6
595E0C:  VMRS            APSR_nzcv, FPSCR
595E10:  BGT             loc_595DBA
595E12:  VCMPE.F32       S0, S6
595E16:  VMRS            APSR_nzcv, FPSCR
595E1A:  BLT             loc_595DBA
595E1C:  VSUB.F32        S2, S4, S2
595E20:  LDRD.W          R8, R1, [R7,#arg_0]
595E24:  VMOV            S4, R4
595E28:  SUBS            R5, R5, R6
595E2A:  SUBS            R2, R2, R4
595E2C:  LDR.W           R12, [R7,#arg_8]
595E30:  VCVT.F32.S32    S4, S4
595E34:  VMOV            S8, R5
595E38:  VMOV            S10, R2
595E3C:  LDR             R2, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595E4A)
595E3E:  VCVT.F32.S32    S8, S8
595E42:  VCVT.F32.S32    S10, S10
595E46:  ADD             R2, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595E48:  VMOV            S0, R3
595E4C:  UXTH            R3, R6
595E4E:  LDR             R2, [R2]; CWaterLevel::m_aVertices ...
595E50:  VSUB.F32        S6, S6, S4
595E54:  LDRH.W          R2, [R2,R9,LSL#2]
595E58:  VDIV.F32        S4, S2, S8
595E5C:  CMP             R3, R2
595E5E:  VDIV.F32        S2, S6, S10
595E62:  BNE             loc_595F3A
595E64:  VMOV.F32        S6, #1.0
595E68:  VADD.F32        S8, S4, S2
595E6C:  VCMPE.F32       S8, S6
595E70:  VMRS            APSR_nzcv, FPSCR
595E74:  BGT             loc_595DB8
595E76:  LDR             R2, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595E7E)
595E78:  CMP             R1, #0
595E7A:  ADD             R2, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595E7C:  LDR             R2, [R2]; CWaterLevel::m_aVertices ...
595E7E:  ADD.W           R3, R2, LR,LSL#2
595E82:  VLDR            S6, [R3,#4]
595E86:  ADD.W           R3, R2, R10,LSL#2
595E8A:  ADD.W           R2, R2, R9,LSL#2
595E8E:  VLDR            S8, [R3,#4]
595E92:  VLDR            S10, [R2,#4]
595E96:  VSUB.F32        S8, S8, S6
595E9A:  VSUB.F32        S10, S10, S6
595E9E:  VMUL.F32        S8, S4, S8
595EA2:  VMUL.F32        S10, S2, S10
595EA6:  VADD.F32        S6, S6, S8
595EAA:  VADD.F32        S6, S6, S10
595EAE:  VSTR            S6, [R8]
595EB2:  BEQ.W           loc_59602E
595EB6:  LDR             R2, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595EC0)
595EB8:  LDRSH.W         R3, [R0]
595EBC:  ADD             R2, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595EBE:  LDRSH.W         R6, [R0,#2]
595EC2:  LDRSH.W         R5, [R0,#4]
595EC6:  LDR             R2, [R2]; CWaterLevel::m_aVertices ...
595EC8:  ADD.W           R3, R3, R3,LSL#2
595ECC:  ADD.W           R6, R6, R6,LSL#2
595ED0:  ADD.W           R3, R2, R3,LSL#2
595ED4:  VLDR            S6, [R3,#8]
595ED8:  ADD.W           R3, R2, R6,LSL#2
595EDC:  VLDR            S8, [R3,#8]
595EE0:  ADD.W           R3, R5, R5,LSL#2
595EE4:  VSUB.F32        S8, S8, S6
595EE8:  ADD.W           R3, R2, R3,LSL#2
595EEC:  VLDR            S10, [R3,#8]
595EF0:  VSUB.F32        S10, S10, S6
595EF4:  VMUL.F32        S8, S4, S8
595EF8:  VMUL.F32        S10, S2, S10
595EFC:  VADD.F32        S6, S6, S8
595F00:  VADD.F32        S6, S6, S10
595F04:  VSTR            S6, [R1]
595F08:  LDRSH.W         R1, [R0]
595F0C:  LDRSH.W         R3, [R0,#2]
595F10:  LDRSH.W         R6, [R0,#4]
595F14:  ADD.W           R1, R1, R1,LSL#2
595F18:  ADD.W           R3, R3, R3,LSL#2
595F1C:  ADD.W           R1, R2, R1,LSL#2
595F20:  VLDR            S6, [R1,#0xC]
595F24:  ADD.W           R1, R2, R3,LSL#2
595F28:  VLDR            S8, [R1,#0xC]
595F2C:  ADD.W           R1, R6, R6,LSL#2
595F30:  VSUB.F32        S8, S8, S6
595F34:  ADD.W           R1, R2, R1,LSL#2
595F38:  B               loc_59600E
595F3A:  VCMPE.F32       S4, S2
595F3E:  VMRS            APSR_nzcv, FPSCR
595F42:  BLT.W           loc_595DB8
595F46:  LDR             R2, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595F52)
595F48:  VMOV.F32        S6, #1.0
595F4C:  CMP             R1, #0
595F4E:  ADD             R2, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595F50:  LDR             R2, [R2]; CWaterLevel::m_aVertices ...
595F52:  ADD.W           R3, R2, R10,LSL#2
595F56:  VSUB.F32        S4, S6, S4
595F5A:  VLDR            S8, [R3,#4]
595F5E:  ADD.W           R3, R2, LR,LSL#2
595F62:  ADD.W           R2, R2, R9,LSL#2
595F66:  VLDR            S10, [R3,#4]
595F6A:  VSUB.F32        S6, S10, S8
595F6E:  VLDR            S10, [R2,#4]
595F72:  VSUB.F32        S10, S10, S8
595F76:  VMUL.F32        S6, S4, S6
595F7A:  VMUL.F32        S10, S2, S10
595F7E:  VADD.F32        S6, S8, S6
595F82:  VADD.F32        S6, S6, S10
595F86:  VSTR            S6, [R8]
595F8A:  BEQ             loc_59602E
595F8C:  LDR             R2, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x595F9A)
595F8E:  LDRSH.W         R3, [R0]
595F92:  LDRSH.W         R6, [R0,#2]
595F96:  ADD             R2, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
595F98:  LDRSH.W         R5, [R0,#4]
595F9C:  LDR             R2, [R2]; CWaterLevel::m_aVertices ...
595F9E:  ADD.W           R3, R3, R3,LSL#2
595FA2:  ADD.W           R6, R6, R6,LSL#2
595FA6:  ADD.W           R3, R2, R3,LSL#2
595FAA:  ADD.W           R6, R2, R6,LSL#2
595FAE:  VLDR            S8, [R3,#8]
595FB2:  ADD.W           R3, R5, R5,LSL#2
595FB6:  VLDR            S6, [R6,#8]
595FBA:  ADD.W           R3, R2, R3,LSL#2
595FBE:  VSUB.F32        S8, S8, S6
595FC2:  VLDR            S10, [R3,#8]
595FC6:  VSUB.F32        S10, S10, S6
595FCA:  VMUL.F32        S8, S4, S8
595FCE:  VMUL.F32        S10, S2, S10
595FD2:  VADD.F32        S6, S6, S8
595FD6:  VADD.F32        S6, S6, S10
595FDA:  VSTR            S6, [R1]
595FDE:  LDRSH.W         R1, [R0]
595FE2:  LDRSH.W         R3, [R0,#2]
595FE6:  LDRSH.W         R6, [R0,#4]
595FEA:  ADD.W           R1, R1, R1,LSL#2
595FEE:  ADD.W           R3, R3, R3,LSL#2
595FF2:  ADD.W           R1, R2, R1,LSL#2
595FF6:  ADD.W           R3, R2, R3,LSL#2
595FFA:  VLDR            S8, [R1,#0xC]
595FFE:  ADD.W           R1, R6, R6,LSL#2
596002:  VLDR            S6, [R3,#0xC]
596006:  ADD.W           R1, R2, R1,LSL#2
59600A:  VSUB.F32        S8, S8, S6
59600E:  VLDR            S10, [R1,#0xC]
596012:  VSUB.F32        S10, S10, S6
596016:  VMUL.F32        S4, S4, S8
59601A:  VMUL.F32        S2, S2, S10
59601E:  VADD.F32        S4, S6, S4
596022:  VADD.F32        S2, S4, S2
596026:  VSTR            S2, [R12]
59602A:  VLDR            S6, [R8]
59602E:  VMOV.F32        S2, #-6.0
596032:  VADD.F32        S2, S6, S2
596036:  VCMPE.F32       S2, S0
59603A:  VMRS            APSR_nzcv, FPSCR
59603E:  BLE             loc_596048
596040:  LDRB            R0, [R0,#6]
596042:  LSLS            R0, R0, #0x1D
596044:  BMI.W           loc_595DB8
596048:  VMOV.F32        S2, #20.0
59604C:  MOVS            R1, #0
59604E:  VADD.F32        S2, S6, S2
596052:  VCMPE.F32       S2, S0
596056:  VMRS            APSR_nzcv, FPSCR
59605A:  IT GE
59605C:  MOVGE           R1, #1
59605E:  B               loc_595DBA
