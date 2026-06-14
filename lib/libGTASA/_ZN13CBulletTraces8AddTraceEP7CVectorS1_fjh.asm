; =========================================================
; Game Engine Function: _ZN13CBulletTraces8AddTraceEP7CVectorS1_fjh
; Address            : 0x5C1DA8 - 0x5C2246
; =========================================================

5C1DA8:  PUSH            {R4-R7,LR}
5C1DAA:  ADD             R7, SP, #0xC
5C1DAC:  PUSH.W          {R8-R11}
5C1DB0:  SUB             SP, SP, #4
5C1DB2:  VPUSH           {D8}
5C1DB6:  SUB             SP, SP, #0x28
5C1DB8:  STR             R1, [SP,#0x50+var_2C]
5C1DBA:  STRD.W          R2, R0, [SP,#0x50+var_34]
5C1DBE:  LDR.W           R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C1DC6)
5C1DC2:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C1DC4:  LDR             R6, [R0]; CBulletTraces::aTraces ...
5C1DC6:  LDRB.W          R9, [R6,#(byte_A56358 - 0xA56340)]
5C1DCA:  LDRB.W          R8, [R6,#(byte_A56384 - 0xA56340)]
5C1DCE:  LDRB.W          R0, [R6,#(byte_A563B0 - 0xA56340)]
5C1DD2:  ADD.W           R2, R9, R8
5C1DD6:  LDRB.W          R1, [R6,#(byte_A563DC - 0xA56340)]
5C1DDA:  ADD             R2, R0
5C1DDC:  LDRB.W          LR, [R6,#(byte_A56408 - 0xA56340)]
5C1DE0:  ADD             R2, R1
5C1DE2:  LDRB.W          R12, [R6,#(byte_A56434 - 0xA56340)]
5C1DE6:  ADD             R2, LR
5C1DE8:  LDRB.W          R11, [R6,#(byte_A56460 - 0xA56340)]
5C1DEC:  ADD             R2, R12
5C1DEE:  LDRB.W          R5, [R6,#(byte_A564B8 - 0xA56340)]
5C1DF2:  ADD.W           R4, R2, R11
5C1DF6:  LDRB.W          R2, [R6,#(byte_A5648C - 0xA56340)]
5C1DFA:  STR             R5, [SP,#0x50+var_38]
5C1DFC:  UXTAB.W         R4, R2, R4
5C1E00:  ADD             R4, R5
5C1E02:  LDRB.W          R5, [R6,#(byte_A564E4 - 0xA56340)]
5C1E06:  STR             R5, [SP,#0x50+var_3C]
5C1E08:  ADD             R4, R5
5C1E0A:  LDRB.W          R5, [R6,#(byte_A56510 - 0xA56340)]
5C1E0E:  STR             R5, [SP,#0x50+var_40]
5C1E10:  ADD             R4, R5
5C1E12:  LDRB.W          R5, [R6,#(byte_A5653C - 0xA56340)]
5C1E16:  STR             R5, [SP,#0x50+var_44]
5C1E18:  ADD             R4, R5
5C1E1A:  LDRB.W          R5, [R6,#(byte_A56568 - 0xA56340)]
5C1E1E:  STR             R5, [SP,#0x50+var_48]
5C1E20:  ADD             R4, R5
5C1E22:  LDRB.W          R5, [R6,#(byte_A56594 - 0xA56340)]
5C1E26:  STR             R5, [SP,#0x50+var_4C]
5C1E28:  ADD             R4, R5
5C1E2A:  LDRB.W          R5, [R6,#(byte_A565C0 - 0xA56340)]
5C1E2E:  STR             R5, [SP,#0x50+var_50]
5C1E30:  LDRB.W          R6, [R6,#(byte_A565EC - 0xA56340)]
5C1E34:  ADD             R4, R5
5C1E36:  ADD.W           R10, R4, R6
5C1E3A:  LDR             R4, [R7,#arg_0]
5C1E3C:  CMP.W           R10, #0xA
5C1E40:  BLT             loc_5C1E48
5C1E42:  VMOV.F32        S0, #0.25
5C1E46:  B               loc_5C1E52
5C1E48:  CMP.W           R10, #5
5C1E4C:  BLT             loc_5C1EE2
5C1E4E:  VMOV.F32        S0, #0.5
5C1E52:  VMOV            S2, R3
5C1E56:  VCVT.F32.U32    S2, S2
5C1E5A:  VMUL.F32        S0, S2, S0
5C1E5E:  VCVT.U32.F32    S0, S0
5C1E62:  VMOV            R10, S0
5C1E66:  CMP.W           R9, #0
5C1E6A:  BEQ             loc_5C1EEA
5C1E6C:  CMP.W           R8, #0
5C1E70:  BEQ             loc_5C1EFA
5C1E72:  CMP             R0, #0
5C1E74:  BEQ             loc_5C1F0A
5C1E76:  CMP             R1, #0
5C1E78:  BEQ             loc_5C1F1A
5C1E7A:  CMP.W           LR, #0
5C1E7E:  BEQ             loc_5C1F2A
5C1E80:  CMP.W           R12, #0
5C1E84:  BEQ             loc_5C1F3A
5C1E86:  CMP.W           R11, #0
5C1E8A:  BEQ             loc_5C1F4A
5C1E8C:  CMP             R2, #0
5C1E8E:  BEQ             loc_5C1F5A
5C1E90:  LDR             R0, [SP,#0x50+var_38]
5C1E92:  CMP             R0, #0
5C1E94:  BEQ             loc_5C1F6A
5C1E96:  LDR             R1, [SP,#0x50+var_3C]
5C1E98:  MOV             R0, R6
5C1E9A:  LDRD.W          R5, R6, [SP,#0x50+var_30]
5C1E9E:  CMP             R1, #0
5C1EA0:  BEQ.W           loc_5C21E6
5C1EA4:  LDR             R1, [SP,#0x50+var_40]
5C1EA6:  CMP             R1, #0
5C1EA8:  BEQ.W           loc_5C21F6
5C1EAC:  LDR             R1, [SP,#0x50+var_44]
5C1EAE:  CMP             R1, #0
5C1EB0:  BEQ.W           loc_5C2206
5C1EB4:  LDR             R1, [SP,#0x50+var_48]
5C1EB6:  CMP             R1, #0
5C1EB8:  BEQ.W           loc_5C2216
5C1EBC:  LDR             R1, [SP,#0x50+var_4C]
5C1EBE:  CMP             R1, #0
5C1EC0:  BEQ.W           loc_5C2226
5C1EC4:  LDR             R1, [SP,#0x50+var_50]
5C1EC6:  CMP             R1, #0
5C1EC8:  BEQ.W           loc_5C2236
5C1ECC:  CMP             R0, #0
5C1ECE:  BNE             loc_5C1FC0
5C1ED0:  LDR.W           R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C1EDC)
5C1ED4:  MOV             R12, R4
5C1ED6:  MOVS            R4, #0xF
5C1ED8:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C1EDA:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C1EDC:  ADD.W           LR, R0, #0x2AC
5C1EE0:  B               loc_5C1F7C
5C1EE2:  MOV             R10, R3
5C1EE4:  CMP.W           R9, #0
5C1EE8:  BNE             loc_5C1E6C
5C1EEA:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C1EF4)
5C1EEC:  MOV             R12, R4
5C1EEE:  MOVS            R4, #0
5C1EF0:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C1EF2:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C1EF4:  ADD.W           LR, R0, #0x18
5C1EF8:  B               loc_5C1F78
5C1EFA:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C1F04)
5C1EFC:  MOV             R12, R4
5C1EFE:  MOVS            R4, #1
5C1F00:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C1F02:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C1F04:  ADD.W           LR, R0, #0x44 ; 'D'
5C1F08:  B               loc_5C1F78
5C1F0A:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C1F14)
5C1F0C:  MOV             R12, R4
5C1F0E:  MOVS            R4, #2
5C1F10:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C1F12:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C1F14:  ADD.W           LR, R0, #0x70 ; 'p'
5C1F18:  B               loc_5C1F78
5C1F1A:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C1F24)
5C1F1C:  MOV             R12, R4
5C1F1E:  MOVS            R4, #3
5C1F20:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C1F22:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C1F24:  ADD.W           LR, R0, #0x9C
5C1F28:  B               loc_5C1F78
5C1F2A:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C1F34)
5C1F2C:  MOV             R12, R4
5C1F2E:  MOVS            R4, #4
5C1F30:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C1F32:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C1F34:  ADD.W           LR, R0, #0xC8
5C1F38:  B               loc_5C1F78
5C1F3A:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C1F44)
5C1F3C:  MOV             R12, R4
5C1F3E:  MOVS            R4, #5
5C1F40:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C1F42:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C1F44:  ADD.W           LR, R0, #0xF4
5C1F48:  B               loc_5C1F78
5C1F4A:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C1F54)
5C1F4C:  MOV             R12, R4
5C1F4E:  MOVS            R4, #6
5C1F50:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C1F52:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C1F54:  ADD.W           LR, R0, #0x120
5C1F58:  B               loc_5C1F78
5C1F5A:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C1F64)
5C1F5C:  MOV             R12, R4
5C1F5E:  MOVS            R4, #7
5C1F60:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C1F62:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C1F64:  ADD.W           LR, R0, #0x14C
5C1F68:  B               loc_5C1F78
5C1F6A:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C1F74)
5C1F6C:  MOV             R12, R4
5C1F6E:  MOVS            R4, #8
5C1F70:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C1F72:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C1F74:  ADD.W           LR, R0, #0x178
5C1F78:  LDRD.W          R5, R6, [SP,#0x50+var_30]
5C1F7C:  LDR             R0, [SP,#0x50+var_34]
5C1F7E:  MOVS            R1, #0x2C ; ','
5C1F80:  VLDR            D16, [R5]
5C1F84:  MOVS            R3, #1
5C1F86:  LDR             R2, [R5,#8]
5C1F88:  VMOV            S0, R0
5C1F8C:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C1F92)
5C1F8E:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C1F90:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C1F92:  SMLABB.W        R0, R4, R1, R0
5C1F96:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5C1F9C)
5C1F98:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5C1F9A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5C1F9C:  STR             R2, [R0,#8]
5C1F9E:  VSTR            D16, [R0]
5C1FA2:  VLDR            D16, [R6]
5C1FA6:  LDR             R2, [R6,#8]
5C1FA8:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5C1FAA:  STR             R2, [R0,#0x14]
5C1FAC:  VSTR            D16, [R0,#0xC]
5C1FB0:  STRB.W          R3, [LR]
5C1FB4:  STRB.W          R12, [R0,#0x28]
5C1FB8:  VSTR            S0, [R0,#0x24]
5C1FBC:  STRD.W          R1, R10, [R0,#0x1C]
5C1FC0:  LDR             R0, =(TheCamera_ptr - 0x5C1FCA)
5C1FC2:  VLDR            S4, [R5]
5C1FC6:  ADD             R0, PC; TheCamera_ptr
5C1FC8:  VLDR            S0, [R5,#4]
5C1FCC:  VLDR            S8, [R5,#8]
5C1FD0:  LDR             R0, [R0]; TheCamera
5C1FD2:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
5C1FD4:  ADD.W           R2, R1, #0x30 ; '0'
5C1FD8:  CMP             R1, #0
5C1FDA:  IT EQ
5C1FDC:  ADDEQ           R2, R0, #4
5C1FDE:  VLDR            S14, [R6]
5C1FE2:  VLDR            S2, [R2,#4]
5C1FE6:  ADDW            R1, R0, #0x90C
5C1FEA:  VLDR            S10, [R2]
5C1FEE:  VLDR            S1, [R6,#4]
5C1FF2:  VSUB.F32        S6, S0, S2
5C1FF6:  VLDR            S12, [R2,#8]
5C1FFA:  ADD.W           R2, R0, #0x910
5C1FFE:  VSUB.F32        S0, S1, S2
5C2002:  VLDR            S1, [R1]
5C2006:  VSUB.F32        S2, S14, S10
5C200A:  VLDR            S3, [R6,#8]
5C200E:  VSUB.F32        S10, S4, S10
5C2012:  VLDR            S14, [R2]
5C2016:  VSUB.F32        S4, S3, S12
5C201A:  ADDW            R1, R0, #0x914
5C201E:  VSUB.F32        S8, S8, S12
5C2022:  VMUL.F32        S12, S6, S14
5C2026:  VLDR            S5, [R1]
5C202A:  VMUL.F32        S14, S14, S0
5C202E:  VMUL.F32        S3, S1, S2
5C2032:  VMUL.F32        S1, S10, S1
5C2036:  VMUL.F32        S7, S8, S5
5C203A:  VMUL.F32        S5, S5, S4
5C203E:  VADD.F32        S14, S3, S14
5C2042:  VADD.F32        S1, S1, S12
5C2046:  VADD.F32        S12, S14, S5
5C204A:  VADD.F32        S16, S1, S7
5C204E:  VMUL.F32        S14, S16, S12
5C2052:  VCMPE.F32       S14, #0.0
5C2056:  VMRS            APSR_nzcv, FPSCR
5C205A:  BGE             loc_5C214C
5C205C:  ADD.W           R2, R0, #0x920
5C2060:  ADDW            R1, R0, #0x8FC
5C2064:  ADD.W           R3, R0, #0x900
5C2068:  VLDR            S14, [R2]
5C206C:  ADDW            R2, R0, #0x91C
5C2070:  VLDR            S7, [R1]
5C2074:  ADDW            R1, R0, #0x924
5C2078:  VLDR            S5, [R2]
5C207C:  VMUL.F32        S1, S6, S14
5C2080:  VLDR            S3, [R3]
5C2084:  ADDW            R0, R0, #0x904
5C2088:  VMUL.F32        S9, S10, S5
5C208C:  VLDR            S11, [R1]
5C2090:  VMUL.F32        S6, S6, S3
5C2094:  VLDR            S13, [R0]
5C2098:  VMUL.F32        S10, S10, S7
5C209C:  VMUL.F32        S15, S8, S11
5C20A0:  VMUL.F32        S8, S8, S13
5C20A4:  VMUL.F32        S14, S14, S0
5C20A8:  VMUL.F32        S0, S3, S0
5C20AC:  VADD.F32        S1, S9, S1
5C20B0:  VMUL.F32        S3, S11, S4
5C20B4:  VADD.F32        S6, S10, S6
5C20B8:  VMUL.F32        S4, S13, S4
5C20BC:  VADD.F32        S10, S1, S15
5C20C0:  VMUL.F32        S1, S5, S2
5C20C4:  VADD.F32        S6, S6, S8
5C20C8:  VABS.F32        S8, S12
5C20CC:  VABS.F32        S12, S16
5C20D0:  VMUL.F32        S2, S7, S2
5C20D4:  VADD.F32        S14, S1, S14
5C20D8:  VADD.F32        S8, S12, S8
5C20DC:  VADD.F32        S0, S2, S0
5C20E0:  VDIV.F32        S2, S12, S8
5C20E4:  VADD.F32        S0, S0, S4
5C20E8:  VADD.F32        S8, S14, S3
5C20EC:  VSUB.F32        S0, S0, S6
5C20F0:  VSUB.F32        S4, S8, S10
5C20F4:  VMUL.F32        S0, S0, S2
5C20F8:  VMUL.F32        S4, S4, S2
5C20FC:  VADD.F32        S2, S6, S0
5C2100:  VADD.F32        S4, S10, S4
5C2104:  VMUL.F32        S0, S4, S4
5C2108:  VMUL.F32        S4, S2, S2
5C210C:  VADD.F32        S0, S4, S0
5C2110:  VMOV.F32        S4, #2.0
5C2114:  VSQRT.F32       S0, S0
5C2118:  VCMPE.F32       S0, S4
5C211C:  VMRS            APSR_nzcv, FPSCR
5C2120:  BGE             loc_5C214C
5C2122:  VMOV.F32        S4, #-0.5
5C2126:  VMOV.F32        S6, #1.0
5C212A:  VCMPE.F32       S2, #0.0
5C212E:  VMRS            APSR_nzcv, FPSCR
5C2132:  VMUL.F32        S0, S0, S4
5C2136:  VADD.F32        S0, S0, S6
5C213A:  BGE             loc_5C215A
5C213C:  VCMP.F32        S0, #0.0
5C2140:  VMRS            APSR_nzcv, FPSCR
5C2144:  BNE             loc_5C216A
5C2146:  VLDR            S0, =-100.0
5C214A:  B               loc_5C217E
5C214C:  ADD             SP, SP, #0x28 ; '('
5C214E:  VPOP            {D8}
5C2152:  ADD             SP, SP, #4
5C2154:  POP.W           {R8-R11}
5C2158:  POP             {R4-R7,PC}
5C215A:  VCMP.F32        S0, #0.0
5C215E:  VMRS            APSR_nzcv, FPSCR
5C2162:  BNE             loc_5C219C
5C2164:  VLDR            S0, =-100.0
5C2168:  B               loc_5C21B0
5C216A:  VMOV            R0, S0; x
5C216E:  BLX.W           log10f
5C2172:  VMOV.F32        S0, #20.0
5C2176:  VMOV            S2, R0
5C217A:  VMUL.F32        S0, S2, S0
5C217E:  VMOV            R2, S0
5C2182:  VCMPE.F32       S16, #0.0
5C2186:  VMRS            APSR_nzcv, FPSCR
5C218A:  BLE             loc_5C2194
5C218C:  LDR             R0, =(AudioEngine_ptr - 0x5C2194)
5C218E:  MOVS            R1, #0x1E
5C2190:  ADD             R0, PC; AudioEngine_ptr
5C2192:  B               loc_5C21CC
5C2194:  LDR             R0, =(AudioEngine_ptr - 0x5C219C)
5C2196:  MOVS            R1, #0x1D
5C2198:  ADD             R0, PC; AudioEngine_ptr
5C219A:  B               loc_5C21CC
5C219C:  VMOV            R0, S0; x
5C21A0:  BLX.W           log10f
5C21A4:  VMOV.F32        S0, #20.0
5C21A8:  VMOV            S2, R0
5C21AC:  VMUL.F32        S0, S2, S0
5C21B0:  VMOV            R2, S0; float
5C21B4:  VCMPE.F32       S16, #0.0
5C21B8:  VMRS            APSR_nzcv, FPSCR
5C21BC:  BLE             loc_5C21C6
5C21BE:  LDR             R0, =(AudioEngine_ptr - 0x5C21C6)
5C21C0:  MOVS            R1, #0x1C
5C21C2:  ADD             R0, PC; AudioEngine_ptr
5C21C4:  B               loc_5C21CC
5C21C6:  LDR             R0, =(AudioEngine_ptr - 0x5C21CE)
5C21C8:  MOVS            R1, #0x1B; int
5C21CA:  ADD             R0, PC; AudioEngine_ptr
5C21CC:  LDR             R0, [R0]; AudioEngine ; this
5C21CE:  MOV.W           R3, #0x3F800000; float
5C21D2:  ADD             SP, SP, #0x28 ; '('
5C21D4:  VPOP            {D8}
5C21D8:  ADD             SP, SP, #4
5C21DA:  POP.W           {R8-R11}
5C21DE:  POP.W           {R4-R7,LR}
5C21E2:  B.W             j_j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; j_CAudioEngine::ReportFrontendAudioEvent(int,float,float)
5C21E6:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C21F0)
5C21E8:  MOV             R12, R4
5C21EA:  MOVS            R4, #9
5C21EC:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C21EE:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C21F0:  ADD.W           LR, R0, #0x1A4
5C21F4:  B               loc_5C1F7C
5C21F6:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C2200)
5C21F8:  MOV             R12, R4
5C21FA:  MOVS            R4, #0xA
5C21FC:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C21FE:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C2200:  ADD.W           LR, R0, #0x1D0
5C2204:  B               loc_5C1F7C
5C2206:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C2210)
5C2208:  MOV             R12, R4
5C220A:  MOVS            R4, #0xB
5C220C:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C220E:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C2210:  ADD.W           LR, R0, #0x1FC
5C2214:  B               loc_5C1F7C
5C2216:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C2220)
5C2218:  MOV             R12, R4
5C221A:  MOVS            R4, #0xC
5C221C:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C221E:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C2220:  ADD.W           LR, R0, #0x228
5C2224:  B               loc_5C1F7C
5C2226:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C2230)
5C2228:  MOV             R12, R4
5C222A:  MOVS            R4, #0xD
5C222C:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C222E:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C2230:  ADD.W           LR, R0, #0x254
5C2234:  B               loc_5C1F7C
5C2236:  LDR             R0, =(_ZN13CBulletTraces7aTracesE_ptr - 0x5C2240)
5C2238:  MOV             R12, R4
5C223A:  MOVS            R4, #0xE
5C223C:  ADD             R0, PC; _ZN13CBulletTraces7aTracesE_ptr
5C223E:  LDR             R0, [R0]; CBulletTraces::aTraces ...
5C2240:  ADD.W           LR, R0, #0x280
5C2244:  B               loc_5C1F7C
