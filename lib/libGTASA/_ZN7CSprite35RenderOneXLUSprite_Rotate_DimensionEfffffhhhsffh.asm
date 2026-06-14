; =========================================================
; Game Engine Function: _ZN7CSprite35RenderOneXLUSprite_Rotate_DimensionEfffffhhhsffh
; Address            : 0x5C6F84 - 0x5C71DA
; =========================================================

5C6F84:  PUSH            {R4-R7,LR}
5C6F86:  ADD             R7, SP, #0xC
5C6F88:  PUSH.W          {R8,R9,R11}
5C6F8C:  VPUSH           {D8-D10}
5C6F90:  LDR             R5, [R7,#x]
5C6F92:  MOV             R4, R0
5C6F94:  MOV             R6, R3
5C6F96:  MOV             R8, R2
5C6F98:  MOV             R9, R1
5C6F9A:  MOV             R0, R5; x
5C6F9C:  BLX.W           cosf
5C6FA0:  VMOV            S18, R0
5C6FA4:  MOV             R0, R5; x
5C6FA6:  VLDR            S16, [R7,#arg_0]
5C6FAA:  VMOV            S20, R6
5C6FAE:  BLX.W           sinf
5C6FB2:  VMUL.F32        S0, S18, S20
5C6FB6:  LDR             R2, [R7,#arg_10]
5C6FB8:  VMOV            S10, R0
5C6FBC:  LDR             R0, [R7,#arg_1C]
5C6FBE:  VMOV            S2, R4
5C6FC2:  LDR             R6, [R7,#arg_C]
5C6FC4:  VMUL.F32        S8, S10, S16
5C6FC8:  VADD.F32        S6, S0, S2
5C6FCC:  VSUB.F32        S12, S2, S0
5C6FD0:  VLDR            S0, [R7,#arg_14]
5C6FD4:  LDRD.W          R5, R3, [R7,#arg_4]
5C6FD8:  VSUB.F32        S4, S6, S8
5C6FDC:  VADD.F32        S2, S8, S6
5C6FE0:  VADD.F32        S6, S8, S12
5C6FE4:  VSUB.F32        S8, S12, S8
5C6FE8:  VCMPE.F32       S4, #0.0
5C6FEC:  VMRS            APSR_nzcv, FPSCR
5C6FF0:  BGE             loc_5C7010
5C6FF2:  VCMPE.F32       S2, #0.0
5C6FF6:  VMRS            APSR_nzcv, FPSCR
5C6FFA:  ITT LT
5C6FFC:  VCMPELT.F32     S8, #0.0
5C7000:  VMRSLT          APSR_nzcv, FPSCR
5C7004:  BGE             loc_5C7010
5C7006:  VCMPE.F32       S6, #0.0
5C700A:  VMRS            APSR_nzcv, FPSCR
5C700E:  BLT             loc_5C70C8
5C7010:  VMUL.F32        S12, S18, S16
5C7014:  VMOV            S14, R9
5C7018:  VMUL.F32        S1, S10, S20
5C701C:  VSUB.F32        S3, S14, S12
5C7020:  VADD.F32        S14, S12, S14
5C7024:  VSUB.F32        S12, S3, S1
5C7028:  VSUB.F32        S10, S14, S1
5C702C:  VADD.F32        S14, S1, S14
5C7030:  VADD.F32        S1, S1, S3
5C7034:  VCMPE.F32       S12, #0.0
5C7038:  VMRS            APSR_nzcv, FPSCR
5C703C:  BGE             loc_5C705C
5C703E:  VCMPE.F32       S10, #0.0
5C7042:  VMRS            APSR_nzcv, FPSCR
5C7046:  ITT LT
5C7048:  VCMPELT.F32     S1, #0.0
5C704C:  VMRSLT          APSR_nzcv, FPSCR
5C7050:  BGE             loc_5C705C
5C7052:  VCMPE.F32       S14, #0.0
5C7056:  VMRS            APSR_nzcv, FPSCR
5C705A:  BLT             loc_5C70C8
5C705C:  LDR             R1, =(RsGlobal_ptr - 0x5C7062)
5C705E:  ADD             R1, PC; RsGlobal_ptr
5C7060:  LDR             R1, [R1]; RsGlobal
5C7062:  VLDR            S3, [R1,#4]
5C7066:  VCVT.F32.S32    S3, S3
5C706A:  VCMPE.F32       S4, S3
5C706E:  VMRS            APSR_nzcv, FPSCR
5C7072:  BLE             loc_5C7092
5C7074:  VCMPE.F32       S2, S3
5C7078:  VMRS            APSR_nzcv, FPSCR
5C707C:  ITT GT
5C707E:  VCMPEGT.F32     S8, S3
5C7082:  VMRSGT          APSR_nzcv, FPSCR
5C7086:  BLE             loc_5C7092
5C7088:  VCMPE.F32       S6, S3
5C708C:  VMRS            APSR_nzcv, FPSCR
5C7090:  BGT             loc_5C70C8
5C7092:  LDR             R1, =(RsGlobal_ptr - 0x5C7098)
5C7094:  ADD             R1, PC; RsGlobal_ptr
5C7096:  LDR             R1, [R1]; RsGlobal
5C7098:  VLDR            S3, [R1,#8]
5C709C:  VCVT.F32.S32    S3, S3
5C70A0:  VCMPE.F32       S12, S3
5C70A4:  VMRS            APSR_nzcv, FPSCR
5C70A8:  ITT GT
5C70AA:  VCMPEGT.F32     S10, S3
5C70AE:  VMRSGT          APSR_nzcv, FPSCR
5C70B2:  BLE             loc_5C70D2
5C70B4:  VCMPE.F32       S1, S3
5C70B8:  VMRS            APSR_nzcv, FPSCR
5C70BC:  ITT GT
5C70BE:  VCMPEGT.F32     S14, S3
5C70C2:  VMRSGT          APSR_nzcv, FPSCR
5C70C6:  BLE             loc_5C70D2
5C70C8:  VPOP            {D8-D10}
5C70CC:  POP.W           {R8,R9,R11}
5C70D0:  POP             {R4-R7,PC}
5C70D2:  LDR             R1, =(_ZN5CDraw12ms_fFarClipZE_ptr - 0x5C70E2)
5C70D4:  VMOV            S3, R8
5C70D8:  LDR             R4, =(_ZN5CDraw13ms_fNearClipZE_ptr - 0x5C70E8)
5C70DA:  VMOV.F32        S13, #-1.0
5C70DE:  ADD             R1, PC; _ZN5CDraw12ms_fFarClipZE_ptr
5C70E0:  SMULBB.W        R6, R2, R6
5C70E4:  ADD             R4, PC; _ZN5CDraw13ms_fNearClipZE_ptr
5C70E6:  SMULBB.W        R5, R2, R5
5C70EA:  LDR             R1, [R1]; CDraw::ms_fFarClipZ ...
5C70EC:  SMULBB.W        R2, R2, R3
5C70F0:  LDR             R4, [R4]; CDraw::ms_fNearClipZ ...
5C70F2:  VLDR            S5, [R1]
5C70F6:  LSRS            R6, R6, #8
5C70F8:  VLDR            S7, [R4]
5C70FC:  LSRS            R3, R5, #8
5C70FE:  VADD.F32        S9, S5, S5
5C7102:  LDR             R1, =(dword_A7C1F4 - 0x5C7112)
5C7104:  VSUB.F32        S11, S5, S7
5C7108:  LSRS            R2, R2, #8
5C710A:  VADD.F32        S5, S5, S7
5C710E:  ADD             R1, PC; dword_A7C1F4
5C7110:  VSTR            S8, [R1]
5C7114:  VSTR            S1, [R1,#4]
5C7118:  VMUL.F32        S7, S9, S7
5C711C:  VLDR            S9, =0.95
5C7120:  VDIV.F32        S5, S5, S11
5C7124:  VMUL.F32        S3, S3, S9
5C7128:  VDIV.F32        S7, S7, S11
5C712C:  VADD.F32        S3, S3, S13
5C7130:  VMUL.F32        S5, S3, S5
5C7134:  VNEG.F32        S3, S3
5C7138:  VSUB.F32        S5, S7, S5
5C713C:  VDIV.F32        S3, S5, S3
5C7140:  VSTR            S3, [R1,#8]
5C7144:  VSTR            S0, [R1,#0xC]
5C7148:  VSTR            S6, [R1,#0x1C]
5C714C:  VSTR            S14, [R1,#0x20]
5C7150:  VSTR            S3, [R1,#0x24]
5C7154:  VSTR            S0, [R1,#0x28]
5C7158:  VSTR            S4, [R1,#0x38]
5C715C:  VSTR            S12, [R1,#0x3C]
5C7160:  VSTR            S3, [R1,#0x40]
5C7164:  VSTR            S0, [R1,#0x44]
5C7168:  VSTR            S2, [R1,#0x54]
5C716C:  VSTR            S10, [R1,#0x58]
5C7170:  VSTR            S3, [R1,#0x5C]
5C7174:  VSTR            S0, [R1,#0x60]
5C7178:  STRB            R2, [R1,#(byte_A7C205 - 0xA7C1F4)]
5C717A:  STRB            R3, [R1,#(byte_A7C204 - 0xA7C1F4)]
5C717C:  STRB            R6, [R1,#(byte_A7C206 - 0xA7C1F4)]
5C717E:  STRB            R0, [R1,#(byte_A7C207 - 0xA7C1F4)]
5C7180:  STRB.W          R2, [R1,#(byte_A7C221 - 0xA7C1F4)]
5C7184:  STRB.W          R3, [R1,#(byte_A7C220 - 0xA7C1F4)]
5C7188:  STRB.W          R6, [R1,#(byte_A7C222 - 0xA7C1F4)]
5C718C:  STRB.W          R0, [R1,#(byte_A7C223 - 0xA7C1F4)]
5C7190:  STRB.W          R2, [R1,#(byte_A7C23D - 0xA7C1F4)]
5C7194:  STRB.W          R3, [R1,#(byte_A7C23C - 0xA7C1F4)]
5C7198:  STRB.W          R6, [R1,#(byte_A7C23E - 0xA7C1F4)]
5C719C:  STRB.W          R0, [R1,#(byte_A7C23F - 0xA7C1F4)]
5C71A0:  STRB.W          R2, [R1,#(byte_A7C259 - 0xA7C1F4)]
5C71A4:  MOV.W           R2, #0x3F800000
5C71A8:  STRB.W          R3, [R1,#(byte_A7C258 - 0xA7C1F4)]
5C71AC:  STRB.W          R6, [R1,#(byte_A7C25A - 0xA7C1F4)]
5C71B0:  STRB.W          R0, [R1,#(byte_A7C25B - 0xA7C1F4)]
5C71B4:  MOVS            R0, #0
5C71B6:  STRD.W          R0, R0, [R1,#(dword_A7C208 - 0xA7C1F4)]
5C71BA:  STRD.W          R0, R2, [R1,#(dword_A7C224 - 0xA7C1F4)]
5C71BE:  STRD.W          R2, R0, [R1,#(dword_A7C240 - 0xA7C1F4)]
5C71C2:  MOVS            R0, #4
5C71C4:  STRD.W          R2, R2, [R1,#(dword_A7C25C - 0xA7C1F4)]
5C71C8:  MOVS            R2, #4
5C71CA:  VPOP            {D8-D10}
5C71CE:  POP.W           {R8,R9,R11}
5C71D2:  POP.W           {R4-R7,LR}
5C71D6:  B.W             j_j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; j_RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
