; =========================================================
; Game Engine Function: sub_179E44
; Address            : 0x179E44 - 0x17A434
; =========================================================

179E44:  PUSH            {R4-R7,LR}
179E46:  ADD             R7, SP, #0xC
179E48:  PUSH.W          {R8-R11}
179E4C:  SUB             SP, SP, #4
179E4E:  VPUSH           {D8-D15}
179E52:  SUB             SP, SP, #0xA0
179E54:  MOV             R6, R0
179E56:  LDR             R0, [R0,#0x3C]
179E58:  MOV             R10, R2
179E5A:  MOV             R4, R1
179E5C:  CBZ             R0, loc_179EBE
179E5E:  VMOV.I32        Q8, #0
179E62:  ADD             R2, SP, #0x100+var_90
179E64:  ADDS            R0, R2, #4
179E66:  MOVS            R1, #0xC
179E68:  VST1.32         {D16-D17}, [R0]!
179E6C:  VST1.32         {D16-D17}, [R0],R1
179E70:  MOV             R1, R4
179E72:  VST1.32         {D16-D17}, [R0]
179E76:  MOVS            R0, #1
179E78:  STR             R0, [SP,#0x100+var_90]
179E7A:  ADD             R0, SP, #0x100+var_C0
179E7C:  VST1.64         {D16-D17}, [R0]!
179E80:  VST1.64         {D16-D17}, [R0]!
179E84:  VST1.64         {D16-D17}, [R0]
179E88:  MOV             R0, R6
179E8A:  BL              sub_1792C4
179E8E:  CBZ             R0, loc_179EB4
179E90:  LDR             R0, [SP,#0x100+var_64]
179E92:  RSB.W           R0, R0, R0,LSL#3
179E96:  LSLS            R0, R0, #1
179E98:  BL              sub_1654B0
179E9C:  ADD             R2, SP, #0x100+var_C0
179E9E:  STR.W           R0, [R10]
179EA2:  STR             R0, [SP,#0x100+var_98]
179EA4:  MOV             R0, R6
179EA6:  MOV             R1, R4
179EA8:  BL              sub_1792C4
179EAC:  CBZ             R0, loc_179EB4
179EAE:  LDR.W           R11, [SP,#0x100+var_94]
179EB2:  B               loc_17A424
179EB4:  MOV.W           R11, #0
179EB8:  STR.W           R11, [R10]
179EBC:  B               loc_17A424
179EBE:  MOV             R0, R6
179EC0:  MOV             R1, R4
179EC2:  LDR             R5, [R6,#4]
179EC4:  BL              sub_17926E
179EC8:  MOV.W           R11, #0
179ECC:  CMP             R0, #0
179ECE:  STR.W           R11, [R10]
179ED2:  BMI.W           loc_17A424
179ED6:  LDRH            R1, [R5,R0]
179ED8:  ADD             R0, R5
179EDA:  LSLS            R1, R1, #0x10
179EDC:  REV             R4, R1
179EDE:  SXTH            R1, R4
179EE0:  CMP             R1, #1
179EE2:  BLT.W           loc_17A184
179EE6:  ADD.W           R1, R0, #0xA
179EEA:  STR             R1, [SP,#0x100+var_E0]
179EEC:  ADD.W           R6, R1, R4,LSL#1
179EF0:  LDRB.W          R8, [R1,R4,LSL#1]
179EF4:  MOVS            R1, #0xE
179EF6:  LDRH.W          R0, [R6,#-2]
179EFA:  LDRB.W          R9, [R6,#1]
179EFE:  LSLS            R0, R0, #0x10
179F00:  REV.W           R11, R0
179F04:  ADD.W           R0, R11, R4,LSL#1
179F08:  RSB.W           R0, R0, R0,LSL#3
179F0C:  ADD.W           R0, R1, R0,LSL#1
179F10:  BL              sub_1654B0
179F14:  CMP             R0, #0
179F16:  BEQ.W           loc_17A420
179F1A:  LSLS            R1, R4, #1
179F1C:  MOVS            R3, #0
179F1E:  STR             R1, [SP,#0x100+var_C8]
179F20:  ORR.W           R1, R9, R8,LSL#8
179F24:  ADD             R1, R6
179F26:  MOV.W           R2, #0xFFFFFFFF
179F2A:  ADD.W           R12, R1, #2
179F2E:  RSB.W           R1, R4, R4,LSL#3
179F32:  MOVS            R4, #0
179F34:  MOV             R9, R0
179F36:  ADD.W           R1, R0, R1,LSL#2
179F3A:  ADD.W           R5, R1, #0xC
179F3E:  MOV             R6, R5
179F40:  LSLS            R1, R4, #0x18
179F42:  BEQ             loc_179F48
179F44:  SUBS            R4, #1
179F46:  B               loc_179F60
179F48:  MOV             R1, R12
179F4A:  LDRB.W          R3, [R1],#1
179F4E:  LSLS            R4, R3, #0x1C
179F50:  BMI             loc_179F58
179F52:  MOVS            R4, #0
179F54:  MOV             R12, R1
179F56:  B               loc_179F60
179F58:  LDRB.W          R4, [R12,#1]
179F5C:  ADD.W           R12, R12, #2
179F60:  ADDS            R2, #1
179F62:  STRB.W          R3, [R6],#0xE
179F66:  CMP             R11, R2
179F68:  BNE             loc_179F40
179F6A:  MOVS            R2, #0
179F6C:  MOV.W           R0, #0xFFFFFFFF
179F70:  MOV             R3, R5
179F72:  LDRB            R4, [R3]
179F74:  LSLS            R1, R4, #0x1E
179F76:  BMI             loc_179F86
179F78:  LSLS            R1, R4, #0x1B
179F7A:  BMI             loc_179F92
179F7C:  LDRH.W          R1, [R12],#2
179F80:  LSLS            R1, R1, #0x10
179F82:  REV             R1, R1
179F84:  B               loc_179F90
179F86:  LDRB.W          R1, [R12],#1
179F8A:  LSLS            R4, R4, #0x1B
179F8C:  IT PL
179F8E:  NEGPL           R1, R1
179F90:  ADD             R2, R1
179F92:  STRH.W          R2, [R3,#-0xC]
179F96:  ADDS            R0, #1
179F98:  ADDS            R3, #0xE
179F9A:  CMP             R11, R0
179F9C:  BNE             loc_179F72
179F9E:  MOVS            R2, #0
179FA0:  MOV.W           R0, #0xFFFFFFFF
179FA4:  STR.W           R10, [SP,#0x100+var_E4]
179FA8:  LDRB            R3, [R5]
179FAA:  LSLS            R1, R3, #0x1D
179FAC:  BMI             loc_179FBC
179FAE:  LSLS            R1, R3, #0x1A
179FB0:  BMI             loc_179FC8
179FB2:  LDRH.W          R1, [R12],#2
179FB6:  LSLS            R1, R1, #0x10
179FB8:  REV             R1, R1
179FBA:  B               loc_179FC6
179FBC:  LDRB.W          R1, [R12],#1
179FC0:  LSLS            R3, R3, #0x1A
179FC2:  IT PL
179FC4:  NEGPL           R1, R1
179FC6:  ADD             R2, R1
179FC8:  STRH.W          R2, [R5,#-0xA]
179FCC:  ADDS            R0, #1
179FCE:  ADDS            R5, #0xE
179FD0:  CMP             R11, R0
179FD2:  BNE             loc_179FA8
179FD4:  MOVS            R0, #0
179FD6:  STR.W           R11, [SP,#0x100+src]
179FDA:  STR             R0, [SP,#0x100+var_DC]
179FDC:  MOVS            R0, #0
179FDE:  STR             R0, [SP,#0x100+var_D8]
179FE0:  MOVS            R0, #0
179FE2:  STR             R0, [SP,#0x100+var_CC]
179FE4:  MOVS            R0, #0
179FE6:  STR             R0, [SP,#0x100+var_D0]
179FE8:  MOVS            R0, #0
179FEA:  MOVS            R1, #0
179FEC:  MOV.W           R11, #0
179FF0:  MOVS            R5, #0
179FF2:  MOV.W           R12, #0
179FF6:  MOVS            R3, #0
179FF8:  MOV.W           LR, #0
179FFC:  MOVS            R2, #0
179FFE:  STR             R0, [SP,#0x100+var_D4]
17A000:  LDR             R0, [SP,#0x100+var_C8]
17A002:  MOV             R4, R9
17A004:  CMP             R12, R11
17A006:  ADD.W           R10, R11, R0
17A00A:  RSB.W           R0, R10, R10,LSL#3
17A00E:  LDRSH.W         R8, [R9,R0,LSL#1]
17A012:  ADD.W           R0, R9, R0,LSL#1
17A016:  LDRSH.W         R6, [R0,#2]
17A01A:  LDRB.W          R9, [R0,#0xC]
17A01E:  BNE             loc_17A082
17A020:  CMP.W           R11, #0
17A024:  BEQ             loc_17A044
17A026:  LDR             R0, [SP,#0x100+var_D8]
17A028:  STR             R0, [SP,#0x100+var_F8]
17A02A:  LDR             R0, [SP,#0x100+var_DC]
17A02C:  STRD.W          LR, R3, [SP,#0x100+var_100]
17A030:  STR             R0, [SP,#0x100+var_F4]
17A032:  LDR             R0, [SP,#0x100+var_D0]
17A034:  LDR             R3, [SP,#0x100+var_D4]
17A036:  STR             R0, [SP,#0x100+var_F0]
17A038:  LDR             R0, [SP,#0x100+var_CC]
17A03A:  STR             R0, [SP,#0x100+var_EC]
17A03C:  MOV             R0, R4
17A03E:  BL              sub_17A43C
17A042:  MOV             R1, R0
17A044:  ANDS.W          R0, R9, #1
17A048:  EOR.W           R3, R0, #1
17A04C:  STR             R3, [SP,#0x100+var_D4]
17A04E:  BNE             loc_17A0C0
17A050:  ADD.W           R0, R10, #1
17A054:  MOV             R12, R5
17A056:  MOV             R9, R4
17A058:  RSB.W           R2, R0, R0,LSL#3
17A05C:  ADD.W           R0, R4, R2,LSL#1
17A060:  LDRSH.W         LR, [R4,R2,LSL#1]
17A064:  LDRB            R5, [R0,#0xC]
17A066:  LSLS            R2, R5, #0x1F
17A068:  BNE             loc_17A114
17A06A:  LDRSH.W         R0, [R0,#2]
17A06E:  ADD.W           R2, LR, R8
17A072:  STRD.W          R6, R8, [SP,#0x100+var_DC]
17A076:  ADD             R0, R6
17A078:  MOV.W           LR, R2,ASR#1
17A07C:  ASRS            R3, R0, #1
17A07E:  MOV             R0, R11
17A080:  B               loc_17A120
17A082:  MOVS.W          R0, R9,LSL#31
17A086:  BNE             loc_17A0CA
17A088:  CMP             R2, #0
17A08A:  BEQ             loc_17A158
17A08C:  MOV             R10, R3
17A08E:  LDR             R3, [SP,#0x100+var_D0]
17A090:  RSB.W           R2, R1, R1,LSL#3
17A094:  MOV             R9, R4
17A096:  ADD.W           R0, R3, R8
17A09A:  ADDS            R1, #1
17A09C:  LSRS            R0, R0, #1
17A09E:  STRH.W          R0, [R4,R2,LSL#1]
17A0A2:  ADD.W           R0, R4, R2,LSL#1
17A0A6:  LDR             R2, [SP,#0x100+var_CC]
17A0A8:  STRH            R2, [R0,#6]
17A0AA:  ADD             R2, R6
17A0AC:  STRH            R3, [R0,#4]
17A0AE:  MOV             R3, R10
17A0B0:  STRD.W          R8, R6, [SP,#0x100+var_D0]
17A0B4:  LSRS            R2, R2, #1
17A0B6:  STRH            R2, [R0,#2]
17A0B8:  MOVS            R2, #3
17A0BA:  STRB            R2, [R0,#0xC]
17A0BC:  MOVS            R2, #1
17A0BE:  B               loc_17A110
17A0C0:  MOV             LR, R8
17A0C2:  MOV             R3, R6
17A0C4:  MOV             R0, R11
17A0C6:  MOV             R9, R4
17A0C8:  B               loc_17A122
17A0CA:  UXTH.W          R0, R8
17A0CE:  MOV             R8, R3
17A0D0:  MOV             R3, R5
17A0D2:  UXTH            R5, R6
17A0D4:  RSB.W           R6, R1, R1,LSL#3
17A0D8:  MOV             R9, R4
17A0DA:  CMP             R2, #0
17A0DC:  ADD.W           R1, R1, #1
17A0E0:  STRH.W          R0, [R4,R6,LSL#1]
17A0E4:  ADD.W           R0, R4, R6,LSL#1
17A0E8:  MOV             R6, R2
17A0EA:  LDR             R4, [SP,#0x100+var_CC]
17A0EC:  IT NE
17A0EE:  MOVNE           R6, R4
17A0F0:  STRH            R6, [R0,#6]
17A0F2:  MOV             R6, R2
17A0F4:  LDR             R4, [SP,#0x100+var_D0]
17A0F6:  IT NE
17A0F8:  MOVNE           R6, R4
17A0FA:  CMP             R2, #0
17A0FC:  MOV.W           R2, #3
17A100:  STRH            R5, [R0,#2]
17A102:  MOV             R5, R3
17A104:  STRH            R6, [R0,#4]
17A106:  IT EQ
17A108:  MOVEQ           R2, #2
17A10A:  STRB            R2, [R0,#0xC]
17A10C:  MOV             R3, R8
17A10E:  MOVS            R2, #0
17A110:  MOV             R0, R11
17A112:  B               loc_17A14A
17A114:  LDRSH.W         R3, [R0,#2]
17A118:  ADD.W           R0, R11, #1
17A11C:  STRD.W          R6, R8, [SP,#0x100+var_DC]
17A120:  MOV             R5, R12
17A122:  RSB.W           R2, R1, R1,LSL#3
17A126:  MOVS            R6, #1
17A128:  ADDS            R1, #1
17A12A:  ADD.W           R4, R9, R2,LSL#1
17A12E:  STRH.W          LR, [R9,R2,LSL#1]
17A132:  MOVS            R2, #0
17A134:  STRB            R6, [R4,#0xC]
17A136:  LDR             R6, [SP,#0x100+var_E0]
17A138:  STR             R2, [R4,#4]
17A13A:  STRH            R3, [R4,#2]
17A13C:  LDRH.W          R4, [R6,R5,LSL#1]
17A140:  ADDS            R5, #1
17A142:  LSLS            R4, R4, #0x10
17A144:  REV             R4, R4
17A146:  ADD.W           R12, R4, #1
17A14A:  LDR             R4, [SP,#0x100+src]
17A14C:  ADD.W           R11, R0, #1
17A150:  CMP             R0, R4
17A152:  BLT.W           loc_17A000
17A156:  B               loc_17A164
17A158:  MOVS            R2, #1
17A15A:  STRD.W          R8, R6, [SP,#0x100+var_D0]
17A15E:  MOV             R0, R11
17A160:  MOV             R9, R4
17A162:  B               loc_17A14A
17A164:  LDR             R0, [SP,#0x100+var_D8]
17A166:  STR             R0, [SP,#0x100+var_F8]
17A168:  LDR             R0, [SP,#0x100+var_DC]
17A16A:  STRD.W          LR, R3, [SP,#0x100+var_100]
17A16E:  STR             R0, [SP,#0x100+var_F4]
17A170:  LDR             R0, [SP,#0x100+var_D0]
17A172:  LDR             R3, [SP,#0x100+var_D4]
17A174:  STR             R0, [SP,#0x100+var_F0]
17A176:  LDR             R0, [SP,#0x100+var_CC]
17A178:  STR             R0, [SP,#0x100+var_EC]
17A17A:  MOV             R0, R9
17A17C:  BL              sub_17A43C
17A180:  MOV             R11, R0
17A182:  B               loc_17A406
17A184:  MOVW            R1, #0xFFFF
17A188:  MOVS            R5, #0
17A18A:  CMP             R4, R1
17A18C:  STR.W           R10, [SP,#0x100+var_E4]
17A190:  BNE.W           loc_17A3FE
17A194:  VMOV.F32        S18, #1.0
17A198:  ADD.W           R8, R0, #0xA
17A19C:  VLDR            S16, =0.0
17A1A0:  MOV.W           R9, #0
17A1A4:  VLDR            S20, =0.000061035
17A1A8:  MOV.W           R11, #0
17A1AC:  STR             R6, [SP,#0x100+var_C8]
17A1AE:  STR             R5, [SP,#0x100+var_90]
17A1B0:  ADD.W           R1, R8, #4
17A1B4:  LDRB.W          R10, [R8,#1]
17A1B8:  LDRH.W          R0, [R8,#2]
17A1BC:  MOVS.W          R2, R10,LSL#30
17A1C0:  BMI             loc_17A1CE
17A1C2:  MOV             R8, R1
17A1C4:  VMOV.F32        S22, S16
17A1C8:  VMOV.F32        S24, S16
17A1CC:  B               loc_17A206
17A1CE:  LDRB            R1, [R1]
17A1D0:  MOVS.W          R2, R10,LSL#31
17A1D4:  BNE             loc_17A1E2
17A1D6:  LDRSB.W         R2, [R8,#5]
17A1DA:  SXTB            R1, R1
17A1DC:  ADD.W           R8, R8, #6
17A1E0:  B               loc_17A1F6
17A1E2:  LDRB.W          R2, [R8,#5]
17A1E6:  LDRH.W          R3, [R8,#6]
17A1EA:  ADD.W           R8, R8, #8
17A1EE:  ORR.W           R1, R2, R1,LSL#8
17A1F2:  REVSH           R2, R3
17A1F4:  SXTH            R1, R1
17A1F6:  VMOV            S0, R2
17A1FA:  VCVT.F32.S32    S22, S0
17A1FE:  VMOV            S0, R1
17A202:  VCVT.F32.S32    S24, S0
17A206:  MOVS.W          R1, R10,LSL#28
17A20A:  BMI             loc_17A22A
17A20C:  MOVS.W          R1, R10,LSL#25
17A210:  BMI             loc_17A24A
17A212:  MOVS.W          R1, R10,LSL#24
17A216:  BMI             loc_17A27C
17A218:  VMOV.F32        S26, S18
17A21C:  VMOV.F32        S28, S16
17A220:  VMOV.F32        S17, S16
17A224:  VMOV.F32        S30, S18
17A228:  B               loc_17A2C8
17A22A:  LDRH.W          R1, [R8],#2
17A22E:  VMOV.F32        S28, S16
17A232:  VMOV.F32        S17, S16
17A236:  REVSH           R1, R1
17A238:  VMOV            S0, R1
17A23C:  VCVT.F32.S32    S0, S0
17A240:  VMUL.F32        S26, S0, S20
17A244:  VMOV.F32        S30, S26
17A248:  B               loc_17A2C8
17A24A:  LDRH.W          R1, [R8,#2]
17A24E:  VMOV.F32        S28, S16
17A252:  LDRH.W          R2, [R8]
17A256:  ADD.W           R8, R8, #4
17A25A:  REVSH           R1, R1
17A25C:  VMOV.F32        S17, S16
17A260:  VMOV            S0, R1
17A264:  REVSH           R1, R2
17A266:  VMOV            S2, R1
17A26A:  VCVT.F32.S32    S0, S0
17A26E:  VCVT.F32.S32    S2, S2
17A272:  VMUL.F32        S26, S0, S20
17A276:  VMUL.F32        S30, S2, S20
17A27A:  B               loc_17A2C8
17A27C:  LDRH.W          R1, [R8,#4]
17A280:  LDRH.W          R2, [R8,#6]
17A284:  REVSH           R1, R1
17A286:  LDRH.W          R3, [R8]
17A28A:  LDRH.W          R6, [R8,#2]
17A28E:  REVSH           R2, R2
17A290:  VMOV            S2, R1
17A294:  REVSH           R1, R3
17A296:  VMOV            S0, R2
17A29A:  REVSH           R2, R6
17A29C:  VMOV            S6, R1
17A2A0:  ADD.W           R8, R8, #8
17A2A4:  VMOV            S4, R2
17A2A8:  VCVT.F32.S32    S0, S0
17A2AC:  VCVT.F32.S32    S2, S2
17A2B0:  VCVT.F32.S32    S4, S4
17A2B4:  VCVT.F32.S32    S6, S6
17A2B8:  VMUL.F32        S26, S0, S20
17A2BC:  VMUL.F32        S28, S2, S20
17A2C0:  VMUL.F32        S17, S4, S20
17A2C4:  VMUL.F32        S30, S6, S20
17A2C8:  LSLS            R0, R0, #0x10
17A2CA:  REV             R1, R0
17A2CC:  LDR             R0, [SP,#0x100+var_C8]
17A2CE:  ADD             R2, SP, #0x100+var_90
17A2D0:  BL              sub_179E44
17A2D4:  CMP             R0, #1
17A2D6:  BLT.W           loc_17A3F4
17A2DA:  VMUL.F32        S0, S26, S26
17A2DE:  MOV             R6, R0
17A2E0:  VMUL.F32        S2, S17, S17
17A2E4:  LDR             R0, [SP,#0x100+var_90]
17A2E6:  STR             R0, [SP,#0x100+src]
17A2E8:  MOV             R1, R6
17A2EA:  ADDS            R0, #4
17A2EC:  VMLA.F32        S0, S28, S28
17A2F0:  VMLA.F32        S2, S30, S30
17A2F4:  VSQRT.F32       S0, S0
17A2F8:  VSQRT.F32       S2, S2
17A2FC:  LDRSH.W         R2, [R0,#2]
17A300:  SUBS            R1, #1
17A302:  LDRSH.W         R3, [R0,#-2]
17A306:  VMOV            S4, R2
17A30A:  LDRSH.W         R2, [R0,#-4]
17A30E:  VMOV            S6, R3
17A312:  LDRSH.W         R3, [R0]
17A316:  VCVT.F32.S32    S4, S4
17A31A:  VCVT.F32.S32    S6, S6
17A31E:  VMOV            S8, R3
17A322:  VMOV            S12, R2
17A326:  VCVT.F32.S32    S8, S8
17A32A:  VCVT.F32.S32    S12, S12
17A32E:  VMUL.F32        S10, S28, S4
17A332:  VMUL.F32        S4, S26, S4
17A336:  VMUL.F32        S14, S26, S6
17A33A:  VMUL.F32        S6, S28, S6
17A33E:  VMLA.F32        S10, S30, S8
17A342:  VMLA.F32        S4, S17, S8
17A346:  VMLA.F32        S14, S17, S12
17A34A:  VMLA.F32        S6, S30, S12
17A34E:  VADD.F32        S8, S24, S10
17A352:  VADD.F32        S4, S22, S4
17A356:  VADD.F32        S10, S22, S14
17A35A:  VADD.F32        S6, S24, S6
17A35E:  VMUL.F32        S8, S2, S8
17A362:  VMUL.F32        S4, S0, S4
17A366:  VMUL.F32        S10, S0, S10
17A36A:  VMUL.F32        S6, S2, S6
17A36E:  VCVT.S32.F32    S8, S8
17A372:  VCVT.S32.F32    S4, S4
17A376:  VCVT.S32.F32    S6, S6
17A37A:  VMOV            R2, S8
17A37E:  STRH.W          R2, [R0],#0xE
17A382:  VMOV            R2, S4
17A386:  VCVT.S32.F32    S4, S10
17A38A:  STRH.W          R2, [R0,#-0xC]
17A38E:  VMOV            R2, S4
17A392:  STRH.W          R2, [R0,#-0x10]
17A396:  VMOV            R2, S6
17A39A:  STRH.W          R2, [R0,#-0x12]
17A39E:  BNE             loc_17A2FC
17A3A0:  ADD.W           R4, R6, R11
17A3A4:  RSB.W           R0, R4, R4,LSL#3
17A3A8:  LSLS            R0, R0, #1
17A3AA:  BL              sub_1654B0
17A3AE:  CBZ             R0, loc_17A40E
17A3B0:  MOV             R5, R0
17A3B2:  CMP.W           R11, #1
17A3B6:  BLT             loc_17A3C6
17A3B8:  RSB.W           R0, R11, R11,LSL#3
17A3BC:  MOV             R1, R9; src
17A3BE:  LSLS            R2, R0, #1; n
17A3C0:  MOV             R0, R5; dest
17A3C2:  BLX             j_memcpy
17A3C6:  RSB.W           R0, R11, R11,LSL#3
17A3CA:  RSB.W           R1, R6, R6,LSL#3
17A3CE:  LDR             R6, [SP,#0x100+src]
17A3D0:  ADD.W           R0, R5, R0,LSL#1; dest
17A3D4:  LSLS            R2, R1, #1; n
17A3D6:  MOV             R1, R6; src
17A3D8:  BLX             j_memcpy
17A3DC:  CMP.W           R9, #0
17A3E0:  ITT NE
17A3E2:  MOVNE           R0, R9
17A3E4:  BLNE            sub_165578
17A3E8:  MOV             R0, R6
17A3EA:  BL              sub_165578
17A3EE:  MOV             R9, R5
17A3F0:  MOV             R11, R4
17A3F2:  MOVS            R5, #0
17A3F4:  MOVS.W          R0, R10,LSL#26
17A3F8:  BMI.W           loc_17A1AE
17A3FC:  B               loc_17A406
17A3FE:  MOV.W           R11, #0
17A402:  MOV.W           R9, #0
17A406:  LDR             R0, [SP,#0x100+var_E4]
17A408:  STR.W           R9, [R0]
17A40C:  B               loc_17A424
17A40E:  CMP.W           R9, #0
17A412:  ITT NE
17A414:  MOVNE           R0, R9
17A416:  BLNE            sub_165578
17A41A:  LDR             R0, [SP,#0x100+src]
17A41C:  BL              sub_165578
17A420:  MOV.W           R11, #0
17A424:  MOV             R0, R11
17A426:  ADD             SP, SP, #0xA0
17A428:  VPOP            {D8-D15}
17A42C:  ADD             SP, SP, #4
17A42E:  POP.W           {R8-R11}
17A432:  POP             {R4-R7,PC}
