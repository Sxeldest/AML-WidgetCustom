; =========================================================
; Game Engine Function: _ZNK10CColSphere13IntersectEdgeERK7CVectorS2_RS0_S3_
; Address            : 0x2E1D92 - 0x2E1F84
; =========================================================

2E1D92:  PUSH            {R4-R7,LR}
2E1D94:  ADD             R7, SP, #0xC
2E1D96:  PUSH.W          {R11}
2E1D9A:  VPUSH           {D8-D15}
2E1D9E:  SUB             SP, SP, #0x10
2E1DA0:  MOV             R6, R2
2E1DA2:  MOV             R5, R1
2E1DA4:  VLDR            S30, [R5]
2E1DA8:  MOV             R4, R3
2E1DAA:  VLDR            S0, [R6]
2E1DAE:  VLDR            S17, [R5,#4]
2E1DB2:  VLDR            S2, [R6,#4]
2E1DB6:  VSUB.F32        S16, S0, S30
2E1DBA:  VLDR            S19, [R5,#8]
2E1DBE:  VLDR            S4, [R6,#8]
2E1DC2:  VSUB.F32        S18, S2, S17
2E1DC6:  VLDR            S22, [R0]
2E1DCA:  VSUB.F32        S20, S4, S19
2E1DCE:  VLDR            S24, [R0,#4]
2E1DD2:  VLDR            S26, [R0,#8]
2E1DD6:  VLDR            S28, [R0,#0xC]
2E1DDA:  MOV             R0, SP; this
2E1DDC:  VSTR            S16, [SP,#0x60+var_60]
2E1DE0:  VSTR            S18, [SP,#0x60+var_60+4]
2E1DE4:  VSTR            S20, [SP,#0x60+var_58]
2E1DE8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2E1DEC:  VSUB.F32        S0, S17, S24
2E1DF0:  VLDR            S6, [SP,#0x60+var_60]
2E1DF4:  VSUB.F32        S2, S30, S22
2E1DF8:  VLDR            S8, [SP,#0x60+var_60+4]
2E1DFC:  VSUB.F32        S4, S19, S26
2E1E00:  VLDR            S10, [SP,#0x60+var_58]
2E1E04:  VMUL.F32        S12, S0, S0
2E1E08:  VMUL.F32        S14, S2, S2
2E1E0C:  VMUL.F32        S0, S0, S8
2E1E10:  VMUL.F32        S2, S2, S6
2E1E14:  VMUL.F32        S6, S4, S4
2E1E18:  VMUL.F32        S4, S4, S10
2E1E1C:  VADD.F32        S8, S14, S12
2E1E20:  VADD.F32        S0, S2, S0
2E1E24:  VMUL.F32        S2, S28, S28
2E1E28:  VADD.F32        S6, S8, S6
2E1E2C:  VADD.F32        S0, S0, S4
2E1E30:  VMOV.F32        S4, #-4.0
2E1E34:  VSUB.F32        S6, S6, S2
2E1E38:  VADD.F32        S2, S0, S0
2E1E3C:  VMUL.F32        S0, S6, S4
2E1E40:  VMUL.F32        S4, S2, S2
2E1E44:  VADD.F32        S0, S4, S0
2E1E48:  VCMPE.F32       S0, #0.0
2E1E4C:  VMRS            APSR_nzcv, FPSCR
2E1E50:  BGE             loc_2E1E56
2E1E52:  MOVS            R0, #0
2E1E54:  B               loc_2E1F78
2E1E56:  VMUL.F32        S4, S16, S16
2E1E5A:  MOVS            R0, #0
2E1E5C:  VMUL.F32        S6, S18, S18
2E1E60:  VMOV.F32        S8, #0.5
2E1E64:  VADD.F32        S4, S4, S6
2E1E68:  VMUL.F32        S6, S20, S20
2E1E6C:  VADD.F32        S4, S6, S4
2E1E70:  VSQRT.F32       S6, S0
2E1E74:  VNEG.F32        S0, S2
2E1E78:  VSQRT.F32       S4, S4
2E1E7C:  VSUB.F32        S0, S0, S6
2E1E80:  VMUL.F32        S0, S0, S8
2E1E84:  VCMPE.F32       S0, S4
2E1E88:  VMRS            APSR_nzcv, FPSCR
2E1E8C:  BGT             loc_2E1F78
2E1E8E:  VSUB.F32        S2, S6, S2
2E1E92:  VMUL.F32        S2, S2, S8
2E1E96:  VCMPE.F32       S2, #0.0
2E1E9A:  VMRS            APSR_nzcv, FPSCR
2E1E9E:  BLT             loc_2E1F78
2E1EA0:  LDR             R0, [R7,#arg_0]
2E1EA2:  VCMPE.F32       S2, S4
2E1EA6:  VLDR            D16, [R6]
2E1EAA:  LDR             R1, [R6,#8]
2E1EAC:  VMRS            APSR_nzcv, FPSCR
2E1EB0:  STR             R1, [R0,#8]
2E1EB2:  VSTR            D16, [R0]
2E1EB6:  BGE             loc_2E1F0C
2E1EB8:  VLDR            D16, [SP,#0x60+var_60]
2E1EBC:  LDR             R1, [SP,#0x60+var_58]
2E1EBE:  STR             R1, [R0,#8]
2E1EC0:  VLDR            S4, [R0,#8]
2E1EC4:  VSTR            D16, [R0]
2E1EC8:  VLDR            S6, [R0]
2E1ECC:  VMUL.F32        S4, S2, S4
2E1ED0:  VLDR            S8, [R0,#4]
2E1ED4:  VMUL.F32        S6, S2, S6
2E1ED8:  VMUL.F32        S2, S2, S8
2E1EDC:  VSTR            S6, [R0]
2E1EE0:  VSTR            S2, [R0,#4]
2E1EE4:  VSTR            S4, [R0,#8]
2E1EE8:  VLDR            S8, [R5]
2E1EEC:  VADD.F32        S6, S8, S6
2E1EF0:  VSTR            S6, [R0]
2E1EF4:  VLDR            S6, [R5,#4]
2E1EF8:  VADD.F32        S2, S6, S2
2E1EFC:  VSTR            S2, [R0,#4]
2E1F00:  VLDR            S2, [R5,#8]
2E1F04:  VADD.F32        S2, S2, S4
2E1F08:  VSTR            S2, [R0,#8]
2E1F0C:  VCMPE.F32       S0, #0.0
2E1F10:  VLDR            D16, [R5]
2E1F14:  LDR             R0, [R5,#8]
2E1F16:  VMRS            APSR_nzcv, FPSCR
2E1F1A:  STR             R0, [R4,#8]
2E1F1C:  VSTR            D16, [R4]
2E1F20:  BLE             loc_2E1F76
2E1F22:  VLDR            D16, [SP,#0x60+var_60]
2E1F26:  LDR             R0, [SP,#0x60+var_58]
2E1F28:  STR             R0, [R4,#8]
2E1F2A:  VLDR            S2, [R4,#8]
2E1F2E:  VSTR            D16, [R4]
2E1F32:  VLDR            S4, [R4]
2E1F36:  VMUL.F32        S2, S0, S2
2E1F3A:  VLDR            S6, [R4,#4]
2E1F3E:  VMUL.F32        S4, S0, S4
2E1F42:  VMUL.F32        S0, S0, S6
2E1F46:  VSTR            S4, [R4]
2E1F4A:  VSTR            S0, [R4,#4]
2E1F4E:  VSTR            S2, [R4,#8]
2E1F52:  VLDR            S6, [R5]
2E1F56:  VADD.F32        S4, S6, S4
2E1F5A:  VSTR            S4, [R4]
2E1F5E:  VLDR            S4, [R5,#4]
2E1F62:  VADD.F32        S0, S4, S0
2E1F66:  VSTR            S0, [R4,#4]
2E1F6A:  VLDR            S0, [R5,#8]
2E1F6E:  VADD.F32        S0, S0, S2
2E1F72:  VSTR            S0, [R4,#8]
2E1F76:  MOVS            R0, #1
2E1F78:  ADD             SP, SP, #0x10
2E1F7A:  VPOP            {D8-D15}
2E1F7E:  POP.W           {R11}
2E1F82:  POP             {R4-R7,PC}
