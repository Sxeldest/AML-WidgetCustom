; =========================================================
; Game Engine Function: _ZN10CCollision16ProcessSphereBoxERK10CColSphereRK7CColBoxR9CColPointRf
; Address            : 0x2D9CA0 - 0x2DA174
; =========================================================

2D9CA0:  PUSH            {R4-R7,LR}
2D9CA2:  ADD             R7, SP, #0xC
2D9CA4:  PUSH.W          {R8}
2D9CA8:  MOV             R4, R0
2D9CAA:  MOV             R6, R1
2D9CAC:  VLDR            S2, [R4]
2D9CB0:  MOV             R8, R3
2D9CB2:  VLDR            S0, [R4,#0xC]
2D9CB6:  MOV             R5, R2
2D9CB8:  VLDR            S8, [R6]
2D9CBC:  VADD.F32        S4, S2, S0
2D9CC0:  VCMPE.F32       S4, S8
2D9CC4:  VMRS            APSR_nzcv, FPSCR
2D9CC8:  BLT.W           loc_2DA088
2D9CCC:  VSUB.F32        S4, S2, S0
2D9CD0:  VLDR            S14, [R6,#0xC]
2D9CD4:  VCMPE.F32       S4, S14
2D9CD8:  VMRS            APSR_nzcv, FPSCR
2D9CDC:  BGT.W           loc_2DA088
2D9CE0:  VCMPE.F32       S2, S8
2D9CE4:  VMRS            APSR_nzcv, FPSCR
2D9CE8:  BGE             loc_2D9D5C
2D9CEA:  VLDR            S4, [R4,#4]
2D9CEE:  VLDR            S12, [R6,#4]
2D9CF2:  VADD.F32        S6, S0, S4
2D9CF6:  VCMPE.F32       S6, S12
2D9CFA:  VMRS            APSR_nzcv, FPSCR
2D9CFE:  BLT.W           loc_2DA088
2D9D02:  VSUB.F32        S6, S4, S0
2D9D06:  VLDR            S14, [R6,#0x10]
2D9D0A:  VCMPE.F32       S6, S14
2D9D0E:  VMRS            APSR_nzcv, FPSCR
2D9D12:  BGT.W           loc_2DA088
2D9D16:  VCMPE.F32       S4, S12
2D9D1A:  VMRS            APSR_nzcv, FPSCR
2D9D1E:  BGE.W           loc_2D9E42
2D9D22:  VLDR            S6, [R4,#8]
2D9D26:  VLDR            S10, [R6,#8]
2D9D2A:  VADD.F32        S14, S0, S6
2D9D2E:  VCMPE.F32       S14, S10
2D9D32:  VMRS            APSR_nzcv, FPSCR
2D9D36:  BLT.W           loc_2DA088
2D9D3A:  VSUB.F32        S1, S6, S0
2D9D3E:  VLDR            S14, [R6,#0x14]
2D9D42:  VCMPE.F32       S1, S14
2D9D46:  VMRS            APSR_nzcv, FPSCR
2D9D4A:  BGT.W           loc_2DA088
2D9D4E:  VCMPE.F32       S6, S10
2D9D52:  VMRS            APSR_nzcv, FPSCR
2D9D56:  BLT.W           loc_2DA04C
2D9D5A:  B               loc_2D9FD6
2D9D5C:  VLDR            S4, [R4,#4]
2D9D60:  VCMPE.F32       S2, S14
2D9D64:  VLDR            S12, [R6,#4]
2D9D68:  VADD.F32        S6, S0, S4
2D9D6C:  VMRS            APSR_nzcv, FPSCR
2D9D70:  BLE             loc_2D9DDA
2D9D72:  VCMPE.F32       S6, S12
2D9D76:  VMRS            APSR_nzcv, FPSCR
2D9D7A:  BLT.W           loc_2DA088
2D9D7E:  VSUB.F32        S6, S4, S0
2D9D82:  VLDR            S1, [R6,#0x10]
2D9D86:  VCMPE.F32       S6, S1
2D9D8A:  VMRS            APSR_nzcv, FPSCR
2D9D8E:  BGT.W           loc_2DA088
2D9D92:  VCMPE.F32       S4, S12
2D9D96:  VMRS            APSR_nzcv, FPSCR
2D9D9A:  BGE             loc_2D9E92
2D9D9C:  VLDR            S6, [R4,#8]
2D9DA0:  VLDR            S10, [R6,#8]
2D9DA4:  VADD.F32        S8, S0, S6
2D9DA8:  VCMPE.F32       S8, S10
2D9DAC:  VMRS            APSR_nzcv, FPSCR
2D9DB0:  BLT.W           loc_2DA088
2D9DB4:  VSUB.F32        S8, S6, S0
2D9DB8:  VLDR            S1, [R6,#0x14]
2D9DBC:  VCMPE.F32       S8, S1
2D9DC0:  VMRS            APSR_nzcv, FPSCR
2D9DC4:  BGT.W           loc_2DA088
2D9DC8:  VCMPE.F32       S6, S10
2D9DCC:  VMRS            APSR_nzcv, FPSCR
2D9DD0:  BGE.W           loc_2D9FBE
2D9DD4:  VMOV.F32        S8, S14
2D9DD8:  B               loc_2DA04C
2D9DDA:  VCMPE.F32       S6, S12
2D9DDE:  VMRS            APSR_nzcv, FPSCR
2D9DE2:  BLT.W           loc_2DA088
2D9DE6:  VSUB.F32        S6, S4, S0
2D9DEA:  VLDR            S14, [R6,#0x10]
2D9DEE:  VCMPE.F32       S6, S14
2D9DF2:  VMRS            APSR_nzcv, FPSCR
2D9DF6:  BGT.W           loc_2DA088
2D9DFA:  VCMPE.F32       S4, S12
2D9DFE:  VMRS            APSR_nzcv, FPSCR
2D9E02:  BGE             loc_2D9EDE
2D9E04:  VLDR            S6, [R4,#8]
2D9E08:  VLDR            S10, [R6,#8]
2D9E0C:  VADD.F32        S8, S0, S6
2D9E10:  VCMPE.F32       S8, S10
2D9E14:  VMRS            APSR_nzcv, FPSCR
2D9E18:  BLT.W           loc_2DA088
2D9E1C:  VSUB.F32        S8, S6, S0
2D9E20:  VLDR            S14, [R6,#0x14]
2D9E24:  VCMPE.F32       S8, S14
2D9E28:  VMRS            APSR_nzcv, FPSCR
2D9E2C:  BGT.W           loc_2DA088
2D9E30:  VCMPE.F32       S6, S10
2D9E34:  VMRS            APSR_nzcv, FPSCR
2D9E38:  BGE.W           loc_2D9FD2
2D9E3C:  VMOV.F32        S8, S2
2D9E40:  B               loc_2DA04C
2D9E42:  VLDR            S6, [R4,#8]
2D9E46:  VCMPE.F32       S4, S14
2D9E4A:  VLDR            S10, [R6,#8]
2D9E4E:  VADD.F32        S12, S0, S6
2D9E52:  VMRS            APSR_nzcv, FPSCR
2D9E56:  BLE             loc_2D9F2C
2D9E58:  VCMPE.F32       S12, S10
2D9E5C:  VMRS            APSR_nzcv, FPSCR
2D9E60:  BLT.W           loc_2DA088
2D9E64:  VSUB.F32        S12, S6, S0
2D9E68:  VLDR            S1, [R6,#0x14]
2D9E6C:  VCMPE.F32       S12, S1
2D9E70:  VMRS            APSR_nzcv, FPSCR
2D9E74:  BGT.W           loc_2DA088
2D9E78:  VCMPE.F32       S6, S10
2D9E7C:  VMRS            APSR_nzcv, FPSCR
2D9E80:  BLT.W           loc_2DA020
2D9E84:  VCMPE.F32       S6, S1
2D9E88:  VMRS            APSR_nzcv, FPSCR
2D9E8C:  BLE.W           loc_2DA026
2D9E90:  B               loc_2D9F22
2D9E92:  VLDR            S6, [R4,#8]
2D9E96:  VCMPE.F32       S4, S1
2D9E9A:  VLDR            S10, [R6,#8]
2D9E9E:  VADD.F32        S8, S0, S6
2D9EA2:  VMRS            APSR_nzcv, FPSCR
2D9EA6:  BLE             loc_2D9F5C
2D9EA8:  VCMPE.F32       S8, S10
2D9EAC:  VMRS            APSR_nzcv, FPSCR
2D9EB0:  BLT.W           loc_2DA088
2D9EB4:  VSUB.F32        S8, S6, S0
2D9EB8:  VLDR            S3, [R6,#0x14]
2D9EBC:  VCMPE.F32       S8, S3
2D9EC0:  VMRS            APSR_nzcv, FPSCR
2D9EC4:  BGT.W           loc_2DA088
2D9EC8:  VCMPE.F32       S6, S10
2D9ECC:  VMRS            APSR_nzcv, FPSCR
2D9ED0:  BGE.W           loc_2D9FFA
2D9ED4:  VMOV.F32        S8, S14
2D9ED8:  VMOV.F32        S12, S1
2D9EDC:  B               loc_2DA04C
2D9EDE:  VLDR            S6, [R4,#8]
2D9EE2:  VCMPE.F32       S4, S14
2D9EE6:  VLDR            S1, [R6,#8]
2D9EEA:  VADD.F32        S8, S0, S6
2D9EEE:  VMRS            APSR_nzcv, FPSCR
2D9EF2:  BLE             loc_2D9F90
2D9EF4:  VCMPE.F32       S8, S1
2D9EF8:  VMRS            APSR_nzcv, FPSCR
2D9EFC:  BLT.W           loc_2DA088
2D9F00:  VSUB.F32        S8, S6, S0
2D9F04:  VLDR            S10, [R6,#0x14]
2D9F08:  VCMPE.F32       S8, S10
2D9F0C:  VMRS            APSR_nzcv, FPSCR
2D9F10:  BGT.W           loc_2DA088
2D9F14:  VCMPE.F32       S6, S1
2D9F18:  VMRS            APSR_nzcv, FPSCR
2D9F1C:  BGE             loc_2DA012
2D9F1E:  VMOV.F32        S8, S2
2D9F22:  VMOV.F32        S12, S14
2D9F26:  VMOV.F32        S10, S1
2D9F2A:  B               loc_2DA04C
2D9F2C:  VCMPE.F32       S12, S10
2D9F30:  VMRS            APSR_nzcv, FPSCR
2D9F34:  BLT.W           loc_2DA088
2D9F38:  VSUB.F32        S12, S6, S0
2D9F3C:  VLDR            S14, [R6,#0x14]
2D9F40:  VCMPE.F32       S12, S14
2D9F44:  VMRS            APSR_nzcv, FPSCR
2D9F48:  BGT.W           loc_2DA088
2D9F4C:  VCMPE.F32       S6, S10
2D9F50:  VMRS            APSR_nzcv, FPSCR
2D9F54:  BGE             loc_2D9FE6
2D9F56:  VMOV.F32        S12, S4
2D9F5A:  B               loc_2DA04C
2D9F5C:  VCMPE.F32       S8, S10
2D9F60:  VMRS            APSR_nzcv, FPSCR
2D9F64:  BLT.W           loc_2DA088
2D9F68:  VSUB.F32        S8, S6, S0
2D9F6C:  VLDR            S1, [R6,#0x14]
2D9F70:  VCMPE.F32       S8, S1
2D9F74:  VMRS            APSR_nzcv, FPSCR
2D9F78:  BGT.W           loc_2DA088
2D9F7C:  VCMPE.F32       S6, S10
2D9F80:  VMRS            APSR_nzcv, FPSCR
2D9F84:  BGE             loc_2DA02C
2D9F86:  VMOV.F32        S8, S14
2D9F8A:  VMOV.F32        S12, S4
2D9F8E:  B               loc_2DA04C
2D9F90:  VCMPE.F32       S8, S1
2D9F94:  VMRS            APSR_nzcv, FPSCR
2D9F98:  BLT             loc_2DA088
2D9F9A:  VSUB.F32        S8, S6, S0
2D9F9E:  VLDR            S10, [R6,#0x14]
2D9FA2:  VCMPE.F32       S8, S10
2D9FA6:  VMRS            APSR_nzcv, FPSCR
2D9FAA:  BGT             loc_2DA088
2D9FAC:  VCMPE.F32       S6, S1
2D9FB0:  VMRS            APSR_nzcv, FPSCR
2D9FB4:  BGE.W           loc_2DA0EA
2D9FB8:  VMOV.F32        S8, S2
2D9FBC:  B               loc_2DA03A
2D9FBE:  VMOV.F32        S8, S14
2D9FC2:  VCMPE.F32       S6, S1
2D9FC6:  VMRS            APSR_nzcv, FPSCR
2D9FCA:  BLE             loc_2DA048
2D9FCC:  VMOV.F32        S10, S1
2D9FD0:  B               loc_2DA04C
2D9FD2:  VMOV.F32        S8, S2
2D9FD6:  VCMPE.F32       S6, S14
2D9FDA:  VMRS            APSR_nzcv, FPSCR
2D9FDE:  BLE             loc_2DA048
2D9FE0:  VMOV.F32        S10, S14
2D9FE4:  B               loc_2DA04C
2D9FE6:  VCMPE.F32       S6, S14
2D9FEA:  VMRS            APSR_nzcv, FPSCR
2D9FEE:  BLE             loc_2DA044
2D9FF0:  VMOV.F32        S12, S4
2D9FF4:  VMOV.F32        S10, S14
2D9FF8:  B               loc_2DA04C
2D9FFA:  VMOV.F32        S8, S14
2D9FFE:  VMOV.F32        S12, S1
2DA002:  VCMPE.F32       S6, S3
2DA006:  VMRS            APSR_nzcv, FPSCR
2DA00A:  BLE             loc_2DA048
2DA00C:  VMOV.F32        S10, S3
2DA010:  B               loc_2DA04C
2DA012:  VMOV.F32        S8, S2
2DA016:  VCMPE.F32       S6, S10
2DA01A:  VMRS            APSR_nzcv, FPSCR
2DA01E:  BLE             loc_2DA026
2DA020:  VMOV.F32        S12, S14
2DA024:  B               loc_2DA04C
2DA026:  VMOV.F32        S12, S14
2DA02A:  B               loc_2DA048
2DA02C:  VMOV.F32        S8, S14
2DA030:  VCMPE.F32       S6, S1
2DA034:  VMRS            APSR_nzcv, FPSCR
2DA038:  BLE             loc_2DA044
2DA03A:  VMOV.F32        S12, S4
2DA03E:  VMOV.F32        S10, S1
2DA042:  B               loc_2DA04C
2DA044:  VMOV.F32        S12, S4
2DA048:  VMOV.F32        S10, S6
2DA04C:  VSUB.F32        S1, S4, S12
2DA050:  VSUB.F32        S14, S2, S8
2DA054:  VSUB.F32        S6, S6, S10
2DA058:  VMUL.F32        S2, S1, S1
2DA05C:  VMUL.F32        S4, S14, S14
2DA060:  VMUL.F32        S3, S6, S6
2DA064:  VADD.F32        S2, S4, S2
2DA068:  VLDR            S4, [R8]
2DA06C:  VADD.F32        S2, S2, S3
2DA070:  VCMPE.F32       S2, S4
2DA074:  VMRS            APSR_nzcv, FPSCR
2DA078:  BGE             loc_2DA088
2DA07A:  VSQRT.F32       S4, S2
2DA07E:  VCMPE.F32       S4, S0
2DA082:  VMRS            APSR_nzcv, FPSCR
2DA086:  BLE             loc_2DA090
2DA088:  MOVS            R0, #0
2DA08A:  POP.W           {R8}
2DA08E:  POP             {R4-R7,PC}
2DA090:  VMOV.F32        S0, #1.0
2DA094:  VSTR            S8, [R5]
2DA098:  VSTR            S12, [R5,#4]
2DA09C:  VSTR            S10, [R5,#8]
2DA0A0:  VDIV.F32        S0, S0, S4
2DA0A4:  VMUL.F32        S6, S6, S0
2DA0A8:  VMUL.F32        S1, S1, S0
2DA0AC:  VMUL.F32        S0, S14, S0
2DA0B0:  VSTR            S0, [R5,#0x10]
2DA0B4:  VSTR            S1, [R5,#0x14]
2DA0B8:  VSTR            S6, [R5,#0x18]
2DA0BC:  LDRB            R0, [R4,#0x12]
2DA0BE:  LDRH            R1, [R4,#0x10]
2DA0C0:  STRB.W          R0, [R5,#0x22]
2DA0C4:  STRH            R1, [R5,#0x20]
2DA0C6:  LDRB            R0, [R6,#0x1A]
2DA0C8:  LDRH            R1, [R6,#0x18]
2DA0CA:  STRB.W          R0, [R5,#0x25]
2DA0CE:  STRH.W          R1, [R5,#0x23]
2DA0D2:  VLDR            S0, [R4,#0xC]
2DA0D6:  VSUB.F32        S0, S0, S4
2DA0DA:  VSTR            S0, [R5,#0x28]
2DA0DE:  VSTR            S2, [R8]
2DA0E2:  MOVS            R0, #1
2DA0E4:  POP.W           {R8}
2DA0E8:  POP             {R4-R7,PC}
2DA0EA:  VMOV.F32        S8, S2
2DA0EE:  VMOV.F32        S12, S4
2DA0F2:  VCMPE.F32       S6, S10
2DA0F6:  VMRS            APSR_nzcv, FPSCR
2DA0FA:  BGT             loc_2DA04C
2DA0FC:  MOV             R0, R6
2DA0FE:  MOV             R1, R4
2DA100:  MOV             R2, R5
2DA102:  BLX             j__Z26CalculateColPointInsideBoxRK4CBoxRK7CVectorR9CColPoint; CalculateColPointInsideBox(CBox const&,CVector const&,CColPoint &)
2DA106:  VLDR            S0, [R4,#0xC]
2DA10A:  VLDR            S2, [R5,#0x28]
2DA10E:  VLDR            S4, [R5,#4]
2DA112:  VADD.F32        S0, S2, S0
2DA116:  VLDR            S2, [R5]
2DA11A:  VLDR            S6, [R5,#8]
2DA11E:  VLDR            S8, [R5,#0x10]
2DA122:  VSTR            S0, [R5,#0x28]
2DA126:  VLDR            S0, [R4,#0xC]
2DA12A:  VLDR            S10, [R5,#0x14]
2DA12E:  VLDR            S12, [R5,#0x18]
2DA132:  VMUL.F32        S8, S0, S8
2DA136:  VMUL.F32        S10, S0, S10
2DA13A:  VMUL.F32        S0, S0, S12
2DA13E:  VSUB.F32        S2, S2, S8
2DA142:  VSUB.F32        S4, S4, S10
2DA146:  VSUB.F32        S0, S6, S0
2DA14A:  VSTR            S2, [R5]
2DA14E:  VSTR            S4, [R5,#4]
2DA152:  VSTR            S0, [R5,#8]
2DA156:  LDRB            R0, [R4,#0x12]
2DA158:  LDRH            R1, [R4,#0x10]
2DA15A:  STRB.W          R0, [R5,#0x22]
2DA15E:  STRH            R1, [R5,#0x20]
2DA160:  LDRB            R0, [R6,#0x1A]
2DA162:  LDRH            R1, [R6,#0x18]
2DA164:  STRB.W          R0, [R5,#0x25]
2DA168:  MOVS            R0, #0
2DA16A:  STRH.W          R1, [R5,#0x23]
2DA16E:  STR.W           R0, [R8]
2DA172:  B               loc_2DA0E2
