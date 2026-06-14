; =========================================================
; Game Engine Function: _ZN15CClothesBuilder13BlendGeometryEP7RpClumpPKcS3_S3_fff
; Address            : 0x459DCC - 0x45AE00
; =========================================================

459DCC:  PUSH            {R4-R7,LR}
459DCE:  ADD             R7, SP, #0xC
459DD0:  PUSH.W          {R8-R11}
459DD4:  SUB             SP, SP, #4
459DD6:  VPUSH           {D8-D13}
459DDA:  SUB             SP, SP, #0x98
459DDC:  MOV             R6, R0
459DDE:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x459DEC)
459DE2:  MOV             R5, R2
459DE4:  LDR.W           R2, =(_Z20FindAtomicFromNameCBP8RpAtomicPv_ptr - 0x459DF2)
459DE8:  ADD             R0, PC; __stack_chk_guard_ptr
459DEA:  MOV.W           R11, #0
459DEE:  ADD             R2, PC; _Z20FindAtomicFromNameCBP8RpAtomicPv_ptr
459DF0:  MOV             R8, R3
459DF2:  LDR             R0, [R0]; __stack_chk_guard
459DF4:  LDR             R4, [R2]; FindAtomicFromNameCB(RpAtomic *,void *)
459DF6:  ADD             R2, SP, #0xE8+var_D0
459DF8:  LDR             R0, [R0]
459DFA:  STR             R0, [SP,#0xE8+var_54]
459DFC:  MOV             R0, R6
459DFE:  STR             R1, [SP,#0xE8+var_D0]
459E00:  MOV             R1, R4
459E02:  STR.W           R11, [SP,#0xE8+var_CC]
459E06:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
459E0A:  ADD             R2, SP, #0xE8+var_D0
459E0C:  MOV             R0, R6
459E0E:  MOV             R1, R4
459E10:  LDR.W           R10, [SP,#0xE8+var_CC]
459E14:  STRD.W          R5, R11, [SP,#0xE8+var_D0]
459E18:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
459E1C:  ADD             R2, SP, #0xE8+var_D0
459E1E:  MOV             R0, R6
459E20:  MOV             R1, R4
459E22:  LDR.W           R9, [SP,#0xE8+var_CC]
459E26:  STRD.W          R8, R11, [SP,#0xE8+var_D0]
459E2A:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
459E2E:  LDR.W           R5, [R10,#0x18]
459E32:  STR             R5, [SP,#0xE8+var_6C]
459E34:  LDR.W           R8, [SP,#0xE8+var_CC]
459E38:  MOV             R0, R5
459E3A:  LDR             R6, [R5,#0x60]
459E3C:  BLX             j_RpSkinGeometryGetSkin
459E40:  MOV             R4, R0
459E42:  LDRD.W          R10, R0, [R6,#0x14]
459E46:  STR.W           R10, [SP,#0xE8+var_78]
459E4A:  STR             R0, [SP,#0xE8+var_84]
459E4C:  LDR             R0, [R5,#0x34]
459E4E:  STR             R0, [SP,#0xE8+var_90]
459E50:  MOV             R0, R4
459E52:  BLX             j_RpSkinGetVertexBoneIndices
459E56:  STR             R0, [SP,#0xE8+var_9C]
459E58:  MOV             R0, R4
459E5A:  BLX             j_RpSkinGetVertexBoneWeights
459E5E:  STR             R0, [SP,#0xE8+var_A8]
459E60:  LDR.W           R4, [R9,#0x18]
459E64:  STR             R4, [SP,#0xE8+var_68]
459E66:  MOV             R0, R4
459E68:  LDR             R6, [R4,#0x60]
459E6A:  BLX             j_RpSkinGeometryGetSkin
459E6E:  MOV             R9, R0
459E70:  LDRD.W          R11, R0, [R6,#0x14]
459E74:  STR.W           R11, [SP,#0xE8+var_74]
459E78:  STR             R0, [SP,#0xE8+var_80]
459E7A:  LDR             R0, [R4,#0x34]
459E7C:  STR             R0, [SP,#0xE8+var_8C]
459E7E:  MOV             R0, R9
459E80:  BLX             j_RpSkinGetVertexBoneIndices
459E84:  STR             R0, [SP,#0xE8+var_98]
459E86:  MOV             R0, R9
459E88:  BLX             j_RpSkinGetVertexBoneWeights
459E8C:  STR             R0, [SP,#0xE8+var_A4]
459E8E:  LDR.W           R4, [R8,#0x18]
459E92:  STR             R4, [SP,#0xE8+var_64]
459E94:  MOV             R0, R4
459E96:  LDR             R6, [R4,#0x60]
459E98:  BLX             j_RpSkinGeometryGetSkin
459E9C:  MOV             R9, R0
459E9E:  LDRD.W          R8, R0, [R6,#0x14]
459EA2:  STR.W           R8, [SP,#0xE8+var_70]
459EA6:  STR             R0, [SP,#0xE8+var_7C]
459EA8:  LDR             R0, [R4,#0x34]
459EAA:  STR             R0, [SP,#0xE8+var_88]
459EAC:  MOV             R0, R9
459EAE:  BLX             j_RpSkinGetVertexBoneIndices
459EB2:  STR             R0, [SP,#0xE8+var_94]
459EB4:  MOV             R0, R9
459EB6:  BLX             j_RpSkinGetVertexBoneWeights
459EBA:  STR             R0, [SP,#0xE8+var_A0]
459EBC:  MOV             R0, R5
459EBE:  MOVW            R1, #0xFFF
459EC2:  BLX             j__Z14RpGeometryLockP10RpGeometryi; RpGeometryLock(RpGeometry *,int)
459EC6:  LDR             R0, [R5,#0x14]
459EC8:  CMP             R0, #0
459ECA:  BLE.W           loc_45ADCE
459ECE:  VMOV.I32        Q6, #0
459ED2:  VLDR            S16, [R7,#arg_8]
459ED6:  VLDR            S18, [R7,#arg_4]
459EDA:  MOVS            R1, #0
459EDC:  VLDR            S20, [R7,#arg_0]
459EE0:  VLDR            S22, =0.0
459EE4:  B.W             loc_45A84C
459EE8:  LDRB.W          R2, [SP,#0xE8+var_60]
459EEC:  CMP             R2, R1
459EEE:  BNE             loc_459F74
459EF0:  MOVS            R6, #0
459EF2:  B.W             loc_45AA5E
459EF6:  LDRB.W          R2, [SP,#0xE8+var_60]
459EFA:  CMP             R2, R1
459EFC:  BNE             loc_459F88
459EFE:  MOVS            R6, #0
459F00:  B.W             loc_45AAA0
459F04:  LDRB.W          R2, [SP,#0xE8+var_60]
459F08:  CMP             R2, R6
459F0A:  BNE             loc_459F9C
459F0C:  MOVS            R2, #0
459F0E:  B.W             loc_45AAE6
459F12:  LDRB.W          R2, [SP,#0xE8+var_60]
459F16:  CMP             R2, R6
459F18:  BNE             loc_459FB0
459F1A:  MOVS            R2, #0
459F1C:  B.W             loc_45AB28
459F20:  LDRB.W          R2, [SP,#0xE8+var_60]
459F24:  CMP             R2, R6
459F26:  BNE             loc_459FC4
459F28:  MOVS            R2, #0
459F2A:  B.W             loc_45AB6A
459F2E:  LDRB.W          R2, [SP,#0xE8+var_60]
459F32:  CMP             R2, R6
459F34:  BNE             loc_459FD8
459F36:  MOVS            R2, #0
459F38:  B.W             loc_45ABAC
459F3C:  LDRB.W          R2, [SP,#0xE8+var_60]
459F40:  CMP             R2, R6
459F42:  BNE             loc_459FEC
459F44:  MOVS            R2, #0
459F46:  B.W             loc_45ABFA
459F4A:  LDRB.W          R2, [SP,#0xE8+var_60]
459F4E:  CMP             R2, R6
459F50:  BNE             loc_45A000
459F52:  MOVS            R2, #0
459F54:  B.W             loc_45AC3E
459F58:  LDRB.W          R2, [SP,#0xE8+var_60]
459F5C:  CMP             R2, R6
459F5E:  BNE             loc_45A014
459F60:  MOVS            R2, #0
459F62:  B.W             loc_45AC82
459F66:  LDRB.W          R2, [SP,#0xE8+var_60]
459F6A:  CMP             R2, R6
459F6C:  BNE             loc_45A028
459F6E:  MOVS            R2, #0
459F70:  B.W             loc_45ACC6
459F74:  VLDR            S2, [SP,#0xE8+var_CC]
459F78:  VCMP.F32        S2, #0.0
459F7C:  VMRS            APSR_nzcv, FPSCR
459F80:  BNE             loc_45A03C
459F82:  MOVS            R6, #1
459F84:  B.W             loc_45AA52
459F88:  VLDR            S2, [SP,#0xE8+var_CC]
459F8C:  VCMP.F32        S2, #0.0
459F90:  VMRS            APSR_nzcv, FPSCR
459F94:  BNE             loc_45A04A
459F96:  MOVS            R6, #1
459F98:  B.W             loc_45AA94
459F9C:  VLDR            S2, [SP,#0xE8+var_CC]
459FA0:  VCMP.F32        S2, #0.0
459FA4:  VMRS            APSR_nzcv, FPSCR
459FA8:  BNE             loc_45A058
459FAA:  MOVS            R2, #1
459FAC:  B.W             loc_45AADA
459FB0:  VLDR            S2, [SP,#0xE8+var_CC]
459FB4:  VCMP.F32        S2, #0.0
459FB8:  VMRS            APSR_nzcv, FPSCR
459FBC:  BNE             loc_45A066
459FBE:  MOVS            R2, #1
459FC0:  B.W             loc_45AB1C
459FC4:  VLDR            S2, [SP,#0xE8+var_CC]
459FC8:  VCMP.F32        S2, #0.0
459FCC:  VMRS            APSR_nzcv, FPSCR
459FD0:  BNE             loc_45A074
459FD2:  MOVS            R2, #1
459FD4:  B.W             loc_45AB5E
459FD8:  VLDR            S2, [SP,#0xE8+var_CC]
459FDC:  VCMP.F32        S2, #0.0
459FE0:  VMRS            APSR_nzcv, FPSCR
459FE4:  BNE             loc_45A082
459FE6:  MOVS            R2, #1
459FE8:  B.W             loc_45ABA0
459FEC:  VLDR            S2, [SP,#0xE8+var_CC]
459FF0:  VCMP.F32        S2, #0.0
459FF4:  VMRS            APSR_nzcv, FPSCR
459FF8:  BNE             loc_45A090
459FFA:  MOVS            R2, #1
459FFC:  B.W             loc_45ABEE
45A000:  VLDR            S2, [SP,#0xE8+var_CC]
45A004:  VCMP.F32        S2, #0.0
45A008:  VMRS            APSR_nzcv, FPSCR
45A00C:  BNE             loc_45A09E
45A00E:  MOVS            R2, #1
45A010:  B.W             loc_45AC32
45A014:  VLDR            S2, [SP,#0xE8+var_CC]
45A018:  VCMP.F32        S2, #0.0
45A01C:  VMRS            APSR_nzcv, FPSCR
45A020:  BNE             loc_45A0AC
45A022:  MOVS            R2, #1
45A024:  B.W             loc_45AC76
45A028:  VLDR            S2, [SP,#0xE8+var_CC]
45A02C:  VCMP.F32        S2, #0.0
45A030:  VMRS            APSR_nzcv, FPSCR
45A034:  BNE             loc_45A0BA
45A036:  MOVS            R2, #1
45A038:  B.W             loc_45ACBA
45A03C:  LDRB.W          R2, [SP,#0xE8+var_60+1]
45A040:  CMP             R2, R1
45A042:  BNE             loc_45A0C8
45A044:  MOVS            R6, #1
45A046:  B.W             loc_45AA5E
45A04A:  LDRB.W          R2, [SP,#0xE8+var_60+1]
45A04E:  CMP             R2, R1
45A050:  BNE             loc_45A0DC
45A052:  MOVS            R6, #1
45A054:  B.W             loc_45AAA0
45A058:  LDRB.W          R2, [SP,#0xE8+var_60+1]
45A05C:  CMP             R2, R6
45A05E:  BNE             loc_45A0F0
45A060:  MOVS            R2, #1
45A062:  B.W             loc_45AAE6
45A066:  LDRB.W          R2, [SP,#0xE8+var_60+1]
45A06A:  CMP             R2, R6
45A06C:  BNE             loc_45A104
45A06E:  MOVS            R2, #1
45A070:  B.W             loc_45AB28
45A074:  LDRB.W          R2, [SP,#0xE8+var_60+1]
45A078:  CMP             R2, R6
45A07A:  BNE             loc_45A118
45A07C:  MOVS            R2, #1
45A07E:  B.W             loc_45AB6A
45A082:  LDRB.W          R2, [SP,#0xE8+var_60+1]
45A086:  CMP             R2, R6
45A088:  BNE             loc_45A12C
45A08A:  MOVS            R2, #1
45A08C:  B.W             loc_45ABAC
45A090:  LDRB.W          R2, [SP,#0xE8+var_60+1]
45A094:  CMP             R2, R6
45A096:  BNE             loc_45A140
45A098:  MOVS            R2, #1
45A09A:  B.W             loc_45ABFA
45A09E:  LDRB.W          R2, [SP,#0xE8+var_60+1]
45A0A2:  CMP             R2, R6
45A0A4:  BNE             loc_45A154
45A0A6:  MOVS            R2, #1
45A0A8:  B.W             loc_45AC3E
45A0AC:  LDRB.W          R2, [SP,#0xE8+var_60+1]
45A0B0:  CMP             R2, R6
45A0B2:  BNE             loc_45A168
45A0B4:  MOVS            R2, #1
45A0B6:  B.W             loc_45AC82
45A0BA:  LDRB.W          R2, [SP,#0xE8+var_60+1]
45A0BE:  CMP             R2, R6
45A0C0:  BNE             loc_45A17C
45A0C2:  MOVS            R2, #1
45A0C4:  B.W             loc_45ACC6
45A0C8:  VLDR            S2, [SP,#0xE8+var_C8]
45A0CC:  VCMP.F32        S2, #0.0
45A0D0:  VMRS            APSR_nzcv, FPSCR
45A0D4:  BNE             loc_45A190
45A0D6:  MOVS            R6, #2
45A0D8:  B.W             loc_45AA52
45A0DC:  VLDR            S2, [SP,#0xE8+var_C8]
45A0E0:  VCMP.F32        S2, #0.0
45A0E4:  VMRS            APSR_nzcv, FPSCR
45A0E8:  BNE             loc_45A19E
45A0EA:  MOVS            R6, #2
45A0EC:  B.W             loc_45AA94
45A0F0:  VLDR            S2, [SP,#0xE8+var_C8]
45A0F4:  VCMP.F32        S2, #0.0
45A0F8:  VMRS            APSR_nzcv, FPSCR
45A0FC:  BNE             loc_45A1AC
45A0FE:  MOVS            R2, #2
45A100:  B.W             loc_45AADA
45A104:  VLDR            S2, [SP,#0xE8+var_C8]
45A108:  VCMP.F32        S2, #0.0
45A10C:  VMRS            APSR_nzcv, FPSCR
45A110:  BNE             loc_45A1BA
45A112:  MOVS            R2, #2
45A114:  B.W             loc_45AB1C
45A118:  VLDR            S2, [SP,#0xE8+var_C8]
45A11C:  VCMP.F32        S2, #0.0
45A120:  VMRS            APSR_nzcv, FPSCR
45A124:  BNE             loc_45A1C8
45A126:  MOVS            R2, #2
45A128:  B.W             loc_45AB5E
45A12C:  VLDR            S2, [SP,#0xE8+var_C8]
45A130:  VCMP.F32        S2, #0.0
45A134:  VMRS            APSR_nzcv, FPSCR
45A138:  BNE             loc_45A1D6
45A13A:  MOVS            R2, #2
45A13C:  B.W             loc_45ABA0
45A140:  VLDR            S2, [SP,#0xE8+var_C8]
45A144:  VCMP.F32        S2, #0.0
45A148:  VMRS            APSR_nzcv, FPSCR
45A14C:  BNE             loc_45A1E4
45A14E:  MOVS            R2, #2
45A150:  B.W             loc_45ABEE
45A154:  VLDR            S2, [SP,#0xE8+var_C8]
45A158:  VCMP.F32        S2, #0.0
45A15C:  VMRS            APSR_nzcv, FPSCR
45A160:  BNE             loc_45A1F2
45A162:  MOVS            R2, #2
45A164:  B.W             loc_45AC32
45A168:  VLDR            S2, [SP,#0xE8+var_C8]
45A16C:  VCMP.F32        S2, #0.0
45A170:  VMRS            APSR_nzcv, FPSCR
45A174:  BNE             loc_45A200
45A176:  MOVS            R2, #2
45A178:  B.W             loc_45AC76
45A17C:  VLDR            S2, [SP,#0xE8+var_C8]
45A180:  VCMP.F32        S2, #0.0
45A184:  VMRS            APSR_nzcv, FPSCR
45A188:  BNE             loc_45A20E
45A18A:  MOVS            R2, #2
45A18C:  B.W             loc_45ACBA
45A190:  LDRB.W          R2, [SP,#0xE8+var_60+2]
45A194:  CMP             R2, R1
45A196:  BNE             loc_45A21C
45A198:  MOVS            R6, #2
45A19A:  B.W             loc_45AA5E
45A19E:  LDRB.W          R2, [SP,#0xE8+var_60+2]
45A1A2:  CMP             R2, R1
45A1A4:  BNE             loc_45A230
45A1A6:  MOVS            R6, #2
45A1A8:  B.W             loc_45AAA0
45A1AC:  LDRB.W          R2, [SP,#0xE8+var_60+2]
45A1B0:  CMP             R2, R6
45A1B2:  BNE             loc_45A244
45A1B4:  MOVS            R2, #2
45A1B6:  B.W             loc_45AAE6
45A1BA:  LDRB.W          R2, [SP,#0xE8+var_60+2]
45A1BE:  CMP             R2, R6
45A1C0:  BNE             loc_45A258
45A1C2:  MOVS            R2, #2
45A1C4:  B.W             loc_45AB28
45A1C8:  LDRB.W          R2, [SP,#0xE8+var_60+2]
45A1CC:  CMP             R2, R6
45A1CE:  BNE             loc_45A270
45A1D0:  MOVS            R2, #2
45A1D2:  B.W             loc_45AB6A
45A1D6:  LDRB.W          R2, [SP,#0xE8+var_60+2]
45A1DA:  CMP             R2, R6
45A1DC:  BNE             loc_45A284
45A1DE:  MOVS            R2, #2
45A1E0:  B.W             loc_45ABAC
45A1E4:  LDRB.W          R2, [SP,#0xE8+var_60+2]
45A1E8:  CMP             R2, R6
45A1EA:  BNE             loc_45A298
45A1EC:  MOVS            R2, #2
45A1EE:  B.W             loc_45ABFA
45A1F2:  LDRB.W          R2, [SP,#0xE8+var_60+2]
45A1F6:  CMP             R2, R6
45A1F8:  BNE             loc_45A2AC
45A1FA:  MOVS            R2, #2
45A1FC:  B.W             loc_45AC3E
45A200:  LDRB.W          R2, [SP,#0xE8+var_60+2]
45A204:  CMP             R2, R6
45A206:  BNE             loc_45A2C0
45A208:  MOVS            R2, #2
45A20A:  B.W             loc_45AC82
45A20E:  LDRB.W          R2, [SP,#0xE8+var_60+2]
45A212:  CMP             R2, R6
45A214:  BNE             loc_45A2D4
45A216:  MOVS            R2, #2
45A218:  B.W             loc_45ACC6
45A21C:  VLDR            S2, [SP,#0xE8+var_C4]
45A220:  VCMP.F32        S2, #0.0
45A224:  VMRS            APSR_nzcv, FPSCR
45A228:  BNE             loc_45A2E8
45A22A:  MOVS            R6, #3
45A22C:  B.W             loc_45AA52
45A230:  VLDR            S2, [SP,#0xE8+var_C4]
45A234:  VCMP.F32        S2, #0.0
45A238:  VMRS            APSR_nzcv, FPSCR
45A23C:  BNE             loc_45A2F4
45A23E:  MOVS            R6, #3
45A240:  B.W             loc_45AA94
45A244:  VLDR            S2, [SP,#0xE8+var_C4]
45A248:  VCMP.F32        S2, #0.0
45A24C:  VMRS            APSR_nzcv, FPSCR
45A250:  BNE             loc_45A300
45A252:  MOVS            R2, #3
45A254:  B.W             loc_45AADA
45A258:  VLDR            S2, [SP,#0xE8+var_C4]
45A25C:  VCMP.F32        S2, #0.0
45A260:  VMRS            APSR_nzcv, FPSCR
45A264:  BNE             loc_45A30C
45A266:  MOVS            R2, #3
45A268:  B.W             loc_45AB1C
45A26C:  DCFS 0.0
45A270:  VLDR            S2, [SP,#0xE8+var_C4]
45A274:  VCMP.F32        S2, #0.0
45A278:  VMRS            APSR_nzcv, FPSCR
45A27C:  BNE             loc_45A31A
45A27E:  MOVS            R2, #3
45A280:  B.W             loc_45AB5E
45A284:  VLDR            S2, [SP,#0xE8+var_C4]
45A288:  VCMP.F32        S2, #0.0
45A28C:  VMRS            APSR_nzcv, FPSCR
45A290:  BNE             loc_45A328
45A292:  MOVS            R2, #3
45A294:  B.W             loc_45ABA0
45A298:  VLDR            S2, [SP,#0xE8+var_C4]
45A29C:  VCMP.F32        S2, #0.0
45A2A0:  VMRS            APSR_nzcv, FPSCR
45A2A4:  BNE             loc_45A336
45A2A6:  MOVS            R2, #3
45A2A8:  B.W             loc_45ABEE
45A2AC:  VLDR            S2, [SP,#0xE8+var_C4]
45A2B0:  VCMP.F32        S2, #0.0
45A2B4:  VMRS            APSR_nzcv, FPSCR
45A2B8:  BNE             loc_45A344
45A2BA:  MOVS            R2, #3
45A2BC:  B.W             loc_45AC32
45A2C0:  VLDR            S2, [SP,#0xE8+var_C4]
45A2C4:  VCMP.F32        S2, #0.0
45A2C8:  VMRS            APSR_nzcv, FPSCR
45A2CC:  BNE             loc_45A352
45A2CE:  MOVS            R2, #3
45A2D0:  B.W             loc_45AC76
45A2D4:  VLDR            S2, [SP,#0xE8+var_C4]
45A2D8:  VCMP.F32        S2, #0.0
45A2DC:  VMRS            APSR_nzcv, FPSCR
45A2E0:  BNE             loc_45A360
45A2E2:  MOVS            R2, #3
45A2E4:  B.W             loc_45ACBA
45A2E8:  LDRB.W          R2, [SP,#0xE8+var_60+3]
45A2EC:  CMP             R2, R1
45A2EE:  BNE             loc_45A36E
45A2F0:  MOVS            R6, #3
45A2F2:  B               loc_45AA5E
45A2F4:  LDRB.W          R2, [SP,#0xE8+var_60+3]
45A2F8:  CMP             R2, R1
45A2FA:  BNE             loc_45A380
45A2FC:  MOVS            R6, #3
45A2FE:  B               loc_45AAA0
45A300:  LDRB.W          R2, [SP,#0xE8+var_60+3]
45A304:  CMP             R2, R6
45A306:  BNE             loc_45A392
45A308:  MOVS            R2, #3
45A30A:  B               loc_45AAE6
45A30C:  LDRB.W          R2, [SP,#0xE8+var_60+3]
45A310:  CMP             R2, R6
45A312:  BNE             loc_45A3A4
45A314:  MOVS            R2, #3
45A316:  B.W             loc_45AB28
45A31A:  LDRB.W          R2, [SP,#0xE8+var_60+3]
45A31E:  CMP             R2, R6
45A320:  BNE             loc_45A3B6
45A322:  MOVS            R2, #3
45A324:  B.W             loc_45AB6A
45A328:  LDRB.W          R2, [SP,#0xE8+var_60+3]
45A32C:  CMP             R2, R6
45A32E:  BNE             loc_45A3C8
45A330:  MOVS            R2, #3
45A332:  B.W             loc_45ABAC
45A336:  LDRB.W          R2, [SP,#0xE8+var_60+3]
45A33A:  CMP             R2, R6
45A33C:  BNE             loc_45A3DA
45A33E:  MOVS            R2, #3
45A340:  B.W             loc_45ABFA
45A344:  LDRB.W          R2, [SP,#0xE8+var_60+3]
45A348:  CMP             R2, R6
45A34A:  BNE             loc_45A3EE
45A34C:  MOVS            R2, #3
45A34E:  B.W             loc_45AC3E
45A352:  LDRB.W          R2, [SP,#0xE8+var_60+3]
45A356:  CMP             R2, R6
45A358:  BNE             loc_45A402
45A35A:  MOVS            R2, #3
45A35C:  B.W             loc_45AC82
45A360:  LDRB.W          R2, [SP,#0xE8+var_60+3]
45A364:  CMP             R2, R6
45A366:  BNE             loc_45A416
45A368:  MOVS            R2, #3
45A36A:  B.W             loc_45ACC6
45A36E:  VLDR            S2, [SP,#0xE8+var_C0]
45A372:  VCMP.F32        S2, #0.0
45A376:  VMRS            APSR_nzcv, FPSCR
45A37A:  BNE             loc_45A42A
45A37C:  MOVS            R6, #4
45A37E:  B               loc_45AA52
45A380:  VLDR            S2, [SP,#0xE8+var_C0]
45A384:  VCMP.F32        S2, #0.0
45A388:  VMRS            APSR_nzcv, FPSCR
45A38C:  BNE             loc_45A436
45A38E:  MOVS            R6, #4
45A390:  B               loc_45AA94
45A392:  VLDR            S2, [SP,#0xE8+var_C0]
45A396:  VCMP.F32        S2, #0.0
45A39A:  VMRS            APSR_nzcv, FPSCR
45A39E:  BNE             loc_45A442
45A3A0:  MOVS            R2, #4
45A3A2:  B               loc_45AADA
45A3A4:  VLDR            S2, [SP,#0xE8+var_C0]
45A3A8:  VCMP.F32        S2, #0.0
45A3AC:  VMRS            APSR_nzcv, FPSCR
45A3B0:  BNE             loc_45A44E
45A3B2:  MOVS            R2, #4
45A3B4:  B               loc_45AB1C
45A3B6:  VLDR            S2, [SP,#0xE8+var_C0]
45A3BA:  VCMP.F32        S2, #0.0
45A3BE:  VMRS            APSR_nzcv, FPSCR
45A3C2:  BNE             loc_45A45A
45A3C4:  MOVS            R2, #4
45A3C6:  B               loc_45AB5E
45A3C8:  VLDR            S2, [SP,#0xE8+var_C0]
45A3CC:  VCMP.F32        S2, #0.0
45A3D0:  VMRS            APSR_nzcv, FPSCR
45A3D4:  BNE             loc_45A466
45A3D6:  MOVS            R2, #4
45A3D8:  B               loc_45ABA0
45A3DA:  VLDR            S2, [SP,#0xE8+var_C0]
45A3DE:  VCMP.F32        S2, #0.0
45A3E2:  VMRS            APSR_nzcv, FPSCR
45A3E6:  BNE             loc_45A472
45A3E8:  MOVS            R2, #4
45A3EA:  B.W             loc_45ABEE
45A3EE:  VLDR            S2, [SP,#0xE8+var_C0]
45A3F2:  VCMP.F32        S2, #0.0
45A3F6:  VMRS            APSR_nzcv, FPSCR
45A3FA:  BNE             loc_45A47E
45A3FC:  MOVS            R2, #4
45A3FE:  B.W             loc_45AC32
45A402:  VLDR            S2, [SP,#0xE8+var_C0]
45A406:  VCMP.F32        S2, #0.0
45A40A:  VMRS            APSR_nzcv, FPSCR
45A40E:  BNE             loc_45A48A
45A410:  MOVS            R2, #4
45A412:  B.W             loc_45AC76
45A416:  VLDR            S2, [SP,#0xE8+var_C0]
45A41A:  VCMP.F32        S2, #0.0
45A41E:  VMRS            APSR_nzcv, FPSCR
45A422:  BNE             loc_45A496
45A424:  MOVS            R2, #4
45A426:  B.W             loc_45ACBA
45A42A:  LDRB.W          R2, [SP,#0xE8+var_5C]
45A42E:  CMP             R2, R1
45A430:  BNE             loc_45A4A4
45A432:  MOVS            R6, #4
45A434:  B               loc_45AA5E
45A436:  LDRB.W          R2, [SP,#0xE8+var_5C]
45A43A:  CMP             R2, R1
45A43C:  BNE             loc_45A4B6
45A43E:  MOVS            R6, #4
45A440:  B               loc_45AAA0
45A442:  LDRB.W          R2, [SP,#0xE8+var_5C]
45A446:  CMP             R2, R6
45A448:  BNE             loc_45A4C8
45A44A:  MOVS            R2, #4
45A44C:  B               loc_45AAE6
45A44E:  LDRB.W          R2, [SP,#0xE8+var_5C]
45A452:  CMP             R2, R6
45A454:  BNE             loc_45A4DA
45A456:  MOVS            R2, #4
45A458:  B               loc_45AB28
45A45A:  LDRB.W          R2, [SP,#0xE8+var_5C]
45A45E:  CMP             R2, R6
45A460:  BNE             loc_45A4EC
45A462:  MOVS            R2, #4
45A464:  B               loc_45AB6A
45A466:  LDRB.W          R2, [SP,#0xE8+var_5C]
45A46A:  CMP             R2, R6
45A46C:  BNE             loc_45A4FE
45A46E:  MOVS            R2, #4
45A470:  B               loc_45ABAC
45A472:  LDRB.W          R2, [SP,#0xE8+var_5C]
45A476:  CMP             R2, R6
45A478:  BNE             loc_45A510
45A47A:  MOVS            R2, #4
45A47C:  B               loc_45ABFA
45A47E:  LDRB.W          R2, [SP,#0xE8+var_5C]
45A482:  CMP             R2, R6
45A484:  BNE             loc_45A522
45A486:  MOVS            R2, #4
45A488:  B               loc_45AC3E
45A48A:  LDRB.W          R2, [SP,#0xE8+var_5C]
45A48E:  CMP             R2, R6
45A490:  BNE             loc_45A534
45A492:  MOVS            R2, #4
45A494:  B               loc_45AC82
45A496:  LDRB.W          R2, [SP,#0xE8+var_5C]
45A49A:  CMP             R2, R6
45A49C:  BNE             loc_45A546
45A49E:  MOVS            R2, #4
45A4A0:  B.W             loc_45ACC6
45A4A4:  VLDR            S2, [SP,#0xE8+var_BC]
45A4A8:  VCMP.F32        S2, #0.0
45A4AC:  VMRS            APSR_nzcv, FPSCR
45A4B0:  BNE             loc_45A558
45A4B2:  MOVS            R6, #5
45A4B4:  B               loc_45AA52
45A4B6:  VLDR            S2, [SP,#0xE8+var_BC]
45A4BA:  VCMP.F32        S2, #0.0
45A4BE:  VMRS            APSR_nzcv, FPSCR
45A4C2:  BNE             loc_45A564
45A4C4:  MOVS            R6, #5
45A4C6:  B               loc_45AA94
45A4C8:  VLDR            S2, [SP,#0xE8+var_BC]
45A4CC:  VCMP.F32        S2, #0.0
45A4D0:  VMRS            APSR_nzcv, FPSCR
45A4D4:  BNE             loc_45A570
45A4D6:  MOVS            R2, #5
45A4D8:  B               loc_45AADA
45A4DA:  VLDR            S2, [SP,#0xE8+var_BC]
45A4DE:  VCMP.F32        S2, #0.0
45A4E2:  VMRS            APSR_nzcv, FPSCR
45A4E6:  BNE             loc_45A57C
45A4E8:  MOVS            R2, #5
45A4EA:  B               loc_45AB1C
45A4EC:  VLDR            S2, [SP,#0xE8+var_BC]
45A4F0:  VCMP.F32        S2, #0.0
45A4F4:  VMRS            APSR_nzcv, FPSCR
45A4F8:  BNE             loc_45A588
45A4FA:  MOVS            R2, #5
45A4FC:  B               loc_45AB5E
45A4FE:  VLDR            S2, [SP,#0xE8+var_BC]
45A502:  VCMP.F32        S2, #0.0
45A506:  VMRS            APSR_nzcv, FPSCR
45A50A:  BNE             loc_45A594
45A50C:  MOVS            R2, #5
45A50E:  B               loc_45ABA0
45A510:  VLDR            S2, [SP,#0xE8+var_BC]
45A514:  VCMP.F32        S2, #0.0
45A518:  VMRS            APSR_nzcv, FPSCR
45A51C:  BNE             loc_45A5A0
45A51E:  MOVS            R2, #5
45A520:  B               loc_45ABEE
45A522:  VLDR            S2, [SP,#0xE8+var_BC]
45A526:  VCMP.F32        S2, #0.0
45A52A:  VMRS            APSR_nzcv, FPSCR
45A52E:  BNE             loc_45A5AC
45A530:  MOVS            R2, #5
45A532:  B               loc_45AC32
45A534:  VLDR            S2, [SP,#0xE8+var_BC]
45A538:  VCMP.F32        S2, #0.0
45A53C:  VMRS            APSR_nzcv, FPSCR
45A540:  BNE             loc_45A5B8
45A542:  MOVS            R2, #5
45A544:  B               loc_45AC76
45A546:  VLDR            S2, [SP,#0xE8+var_BC]
45A54A:  VCMP.F32        S2, #0.0
45A54E:  VMRS            APSR_nzcv, FPSCR
45A552:  BNE             loc_45A5C4
45A554:  MOVS            R2, #5
45A556:  B               loc_45ACBA
45A558:  LDRB.W          R2, [SP,#0xE8+var_5B]
45A55C:  CMP             R2, R1
45A55E:  BNE             loc_45A5D0
45A560:  MOVS            R6, #5
45A562:  B               loc_45AA5E
45A564:  LDRB.W          R2, [SP,#0xE8+var_5B]
45A568:  CMP             R2, R1
45A56A:  BNE             loc_45A5E2
45A56C:  MOVS            R6, #5
45A56E:  B               loc_45AAA0
45A570:  LDRB.W          R2, [SP,#0xE8+var_5B]
45A574:  CMP             R2, R6
45A576:  BNE             loc_45A5F4
45A578:  MOVS            R2, #5
45A57A:  B               loc_45AAE6
45A57C:  LDRB.W          R2, [SP,#0xE8+var_5B]
45A580:  CMP             R2, R6
45A582:  BNE             loc_45A606
45A584:  MOVS            R2, #5
45A586:  B               loc_45AB28
45A588:  LDRB.W          R2, [SP,#0xE8+var_5B]
45A58C:  CMP             R2, R6
45A58E:  BNE             loc_45A618
45A590:  MOVS            R2, #5
45A592:  B               loc_45AB6A
45A594:  LDRB.W          R2, [SP,#0xE8+var_5B]
45A598:  CMP             R2, R6
45A59A:  BNE             loc_45A62A
45A59C:  MOVS            R2, #5
45A59E:  B               loc_45ABAC
45A5A0:  LDRB.W          R2, [SP,#0xE8+var_5B]
45A5A4:  CMP             R2, R6
45A5A6:  BNE             loc_45A63C
45A5A8:  MOVS            R2, #5
45A5AA:  B               loc_45ABFA
45A5AC:  LDRB.W          R2, [SP,#0xE8+var_5B]
45A5B0:  CMP             R2, R6
45A5B2:  BNE             loc_45A64E
45A5B4:  MOVS            R2, #5
45A5B6:  B               loc_45AC3E
45A5B8:  LDRB.W          R2, [SP,#0xE8+var_5B]
45A5BC:  CMP             R2, R6
45A5BE:  BNE             loc_45A660
45A5C0:  MOVS            R2, #5
45A5C2:  B               loc_45AC82
45A5C4:  LDRB.W          R2, [SP,#0xE8+var_5B]
45A5C8:  CMP             R2, R6
45A5CA:  BNE             loc_45A672
45A5CC:  MOVS            R2, #5
45A5CE:  B               loc_45ACC6
45A5D0:  VLDR            S2, [SP,#0xE8+var_B8]
45A5D4:  VCMP.F32        S2, #0.0
45A5D8:  VMRS            APSR_nzcv, FPSCR
45A5DC:  BNE             loc_45A684
45A5DE:  MOVS            R6, #6
45A5E0:  B               loc_45AA52
45A5E2:  VLDR            S2, [SP,#0xE8+var_B8]
45A5E6:  VCMP.F32        S2, #0.0
45A5EA:  VMRS            APSR_nzcv, FPSCR
45A5EE:  BNE             loc_45A690
45A5F0:  MOVS            R6, #6
45A5F2:  B               loc_45AA94
45A5F4:  VLDR            S2, [SP,#0xE8+var_B8]
45A5F8:  VCMP.F32        S2, #0.0
45A5FC:  VMRS            APSR_nzcv, FPSCR
45A600:  BNE             loc_45A69C
45A602:  MOVS            R2, #6
45A604:  B               loc_45AADA
45A606:  VLDR            S2, [SP,#0xE8+var_B8]
45A60A:  VCMP.F32        S2, #0.0
45A60E:  VMRS            APSR_nzcv, FPSCR
45A612:  BNE             loc_45A6A8
45A614:  MOVS            R2, #6
45A616:  B               loc_45AB1C
45A618:  VLDR            S2, [SP,#0xE8+var_B8]
45A61C:  VCMP.F32        S2, #0.0
45A620:  VMRS            APSR_nzcv, FPSCR
45A624:  BNE             loc_45A6B4
45A626:  MOVS            R2, #6
45A628:  B               loc_45AB5E
45A62A:  VLDR            S2, [SP,#0xE8+var_B8]
45A62E:  VCMP.F32        S2, #0.0
45A632:  VMRS            APSR_nzcv, FPSCR
45A636:  BNE             loc_45A6C0
45A638:  MOVS            R2, #6
45A63A:  B               loc_45ABA0
45A63C:  VLDR            S2, [SP,#0xE8+var_B8]
45A640:  VCMP.F32        S2, #0.0
45A644:  VMRS            APSR_nzcv, FPSCR
45A648:  BNE             loc_45A6CC
45A64A:  MOVS            R2, #6
45A64C:  B               loc_45ABEE
45A64E:  VLDR            S2, [SP,#0xE8+var_B8]
45A652:  VCMP.F32        S2, #0.0
45A656:  VMRS            APSR_nzcv, FPSCR
45A65A:  BNE             loc_45A6D8
45A65C:  MOVS            R2, #6
45A65E:  B               loc_45AC32
45A660:  VLDR            S2, [SP,#0xE8+var_B8]
45A664:  VCMP.F32        S2, #0.0
45A668:  VMRS            APSR_nzcv, FPSCR
45A66C:  BNE             loc_45A6E4
45A66E:  MOVS            R2, #6
45A670:  B               loc_45AC76
45A672:  VLDR            S2, [SP,#0xE8+var_B8]
45A676:  VCMP.F32        S2, #0.0
45A67A:  VMRS            APSR_nzcv, FPSCR
45A67E:  BNE             loc_45A6F0
45A680:  MOVS            R2, #6
45A682:  B               loc_45ACBA
45A684:  LDRB.W          R2, [SP,#0xE8+var_5A]
45A688:  CMP             R2, R1
45A68A:  BNE             loc_45A6FC
45A68C:  MOVS            R6, #6
45A68E:  B               loc_45AA5E
45A690:  LDRB.W          R2, [SP,#0xE8+var_5A]
45A694:  CMP             R2, R1
45A696:  BNE             loc_45A70E
45A698:  MOVS            R6, #6
45A69A:  B               loc_45AAA0
45A69C:  LDRB.W          R2, [SP,#0xE8+var_5A]
45A6A0:  CMP             R2, R6
45A6A2:  BNE             loc_45A720
45A6A4:  MOVS            R2, #6
45A6A6:  B               loc_45AAE6
45A6A8:  LDRB.W          R2, [SP,#0xE8+var_5A]
45A6AC:  CMP             R2, R6
45A6AE:  BNE             loc_45A732
45A6B0:  MOVS            R2, #6
45A6B2:  B               loc_45AB28
45A6B4:  LDRB.W          R2, [SP,#0xE8+var_5A]
45A6B8:  CMP             R2, R6
45A6BA:  BNE             loc_45A744
45A6BC:  MOVS            R2, #6
45A6BE:  B               loc_45AB6A
45A6C0:  LDRB.W          R2, [SP,#0xE8+var_5A]
45A6C4:  CMP             R2, R6
45A6C6:  BNE             loc_45A756
45A6C8:  MOVS            R2, #6
45A6CA:  B               loc_45ABAC
45A6CC:  LDRB.W          R2, [SP,#0xE8+var_5A]
45A6D0:  CMP             R2, R6
45A6D2:  BNE             loc_45A768
45A6D4:  MOVS            R2, #6
45A6D6:  B               loc_45ABFA
45A6D8:  LDRB.W          R2, [SP,#0xE8+var_5A]
45A6DC:  CMP             R2, R6
45A6DE:  BNE             loc_45A77A
45A6E0:  MOVS            R2, #6
45A6E2:  B               loc_45AC3E
45A6E4:  LDRB.W          R2, [SP,#0xE8+var_5A]
45A6E8:  CMP             R2, R6
45A6EA:  BNE             loc_45A78C
45A6EC:  MOVS            R2, #6
45A6EE:  B               loc_45AC82
45A6F0:  LDRB.W          R2, [SP,#0xE8+var_5A]
45A6F4:  CMP             R2, R6
45A6F6:  BNE             loc_45A79E
45A6F8:  MOVS            R2, #6
45A6FA:  B               loc_45ACC6
45A6FC:  VLDR            S2, [SP,#0xE8+var_B4]
45A700:  VCMP.F32        S2, #0.0
45A704:  VMRS            APSR_nzcv, FPSCR
45A708:  BNE             loc_45A7B0
45A70A:  MOVS            R6, #7
45A70C:  B               loc_45AA52
45A70E:  VLDR            S2, [SP,#0xE8+var_B4]
45A712:  VCMP.F32        S2, #0.0
45A716:  VMRS            APSR_nzcv, FPSCR
45A71A:  BNE             loc_45A7BE
45A71C:  MOVS            R6, #7
45A71E:  B               loc_45AA94
45A720:  VLDR            S2, [SP,#0xE8+var_B4]
45A724:  VCMP.F32        S2, #0.0
45A728:  VMRS            APSR_nzcv, FPSCR
45A72C:  BNE             loc_45A7CC
45A72E:  MOVS            R2, #7
45A730:  B               loc_45AADA
45A732:  VLDR            S2, [SP,#0xE8+var_B4]
45A736:  VCMP.F32        S2, #0.0
45A73A:  VMRS            APSR_nzcv, FPSCR
45A73E:  BNE             loc_45A7DC
45A740:  MOVS            R2, #7
45A742:  B               loc_45AB1C
45A744:  VLDR            S2, [SP,#0xE8+var_B4]
45A748:  VCMP.F32        S2, #0.0
45A74C:  VMRS            APSR_nzcv, FPSCR
45A750:  BNE             loc_45A7EC
45A752:  MOVS            R2, #7
45A754:  B               loc_45AB5E
45A756:  VLDR            S2, [SP,#0xE8+var_B4]
45A75A:  VCMP.F32        S2, #0.0
45A75E:  VMRS            APSR_nzcv, FPSCR
45A762:  BNE             loc_45A7FC
45A764:  MOVS            R2, #7
45A766:  B               loc_45ABA0
45A768:  VLDR            S2, [SP,#0xE8+var_B4]
45A76C:  VCMP.F32        S2, #0.0
45A770:  VMRS            APSR_nzcv, FPSCR
45A774:  BNE             loc_45A80C
45A776:  MOVS            R2, #7
45A778:  B               loc_45ABEE
45A77A:  VLDR            S2, [SP,#0xE8+var_B4]
45A77E:  VCMP.F32        S2, #0.0
45A782:  VMRS            APSR_nzcv, FPSCR
45A786:  BNE             loc_45A81C
45A788:  MOVS            R2, #7
45A78A:  B               loc_45AC32
45A78C:  VLDR            S2, [SP,#0xE8+var_B4]
45A790:  VCMP.F32        S2, #0.0
45A794:  VMRS            APSR_nzcv, FPSCR
45A798:  BNE             loc_45A82C
45A79A:  MOVS            R2, #7
45A79C:  B               loc_45AC76
45A79E:  VLDR            S2, [SP,#0xE8+var_B4]
45A7A2:  VCMP.F32        S2, #0.0
45A7A6:  VMRS            APSR_nzcv, FPSCR
45A7AA:  BNE             loc_45A83C
45A7AC:  MOVS            R2, #7
45A7AE:  B               loc_45ACBA
45A7B0:  LDRB.W          R2, [SP,#0xE8+var_59]
45A7B4:  MOVS            R6, #8
45A7B6:  CMP             R2, R1
45A7B8:  IT EQ
45A7BA:  MOVEQ           R6, #7
45A7BC:  B               loc_45AA5E
45A7BE:  LDRB.W          R2, [SP,#0xE8+var_59]
45A7C2:  MOVS            R6, #8
45A7C4:  CMP             R2, R1
45A7C6:  IT EQ
45A7C8:  MOVEQ           R6, #7
45A7CA:  B               loc_45AAA0
45A7CC:  LDRB.W          R2, [SP,#0xE8+var_59]
45A7D0:  CMP             R2, R6
45A7D2:  MOV.W           R2, #8
45A7D6:  IT EQ
45A7D8:  MOVEQ           R2, #7
45A7DA:  B               loc_45AAE6
45A7DC:  LDRB.W          R2, [SP,#0xE8+var_59]
45A7E0:  CMP             R2, R6
45A7E2:  MOV.W           R2, #8
45A7E6:  IT EQ
45A7E8:  MOVEQ           R2, #7
45A7EA:  B               loc_45AB28
45A7EC:  LDRB.W          R2, [SP,#0xE8+var_59]
45A7F0:  CMP             R2, R6
45A7F2:  MOV.W           R2, #8
45A7F6:  IT EQ
45A7F8:  MOVEQ           R2, #7
45A7FA:  B               loc_45AB6A
45A7FC:  LDRB.W          R2, [SP,#0xE8+var_59]
45A800:  CMP             R2, R6
45A802:  MOV.W           R2, #8
45A806:  IT EQ
45A808:  MOVEQ           R2, #7
45A80A:  B               loc_45ABAC
45A80C:  LDRB.W          R2, [SP,#0xE8+var_59]
45A810:  CMP             R2, R6
45A812:  MOV.W           R2, #8
45A816:  IT EQ
45A818:  MOVEQ           R2, #7
45A81A:  B               loc_45ABFA
45A81C:  LDRB.W          R2, [SP,#0xE8+var_59]
45A820:  CMP             R2, R6
45A822:  MOV.W           R2, #8
45A826:  IT EQ
45A828:  MOVEQ           R2, #7
45A82A:  B               loc_45AC3E
45A82C:  LDRB.W          R2, [SP,#0xE8+var_59]
45A830:  CMP             R2, R6
45A832:  MOV.W           R2, #8
45A836:  IT EQ
45A838:  MOVEQ           R2, #7
45A83A:  B               loc_45AC82
45A83C:  LDRB.W          R2, [SP,#0xE8+var_59]
45A840:  CMP             R2, R6
45A842:  MOV.W           R2, #8
45A846:  IT EQ
45A848:  MOVEQ           R2, #7
45A84A:  B               loc_45ACC6
45A84C:  STR             R1, [SP,#0xE8+var_D4]
45A84E:  ADD             R2, SP, #0xE8+var_78
45A850:  VLDR            S0, [R11]
45A854:  VLDR            S2, [R10]
45A858:  VMUL.F32        S0, S0, S18
45A85C:  VLDR            S4, [R8]
45A860:  VMUL.F32        S2, S2, S20
45A864:  VMUL.F32        S4, S4, S16
45A868:  VADD.F32        S0, S2, S0
45A86C:  VADD.F32        S0, S0, S4
45A870:  VSTR            S0, [R10]
45A874:  LDM             R2, {R0-R2}
45A876:  VLDR            S0, [R1,#4]
45A87A:  VLDR            S2, [R0,#4]
45A87E:  VMUL.F32        S0, S0, S18
45A882:  VLDR            S6, [R2,#4]
45A886:  VMUL.F32        S2, S2, S20
45A88A:  VLDR            S4, [R0,#8]
45A88E:  VMUL.F32        S6, S6, S16
45A892:  VADD.F32        S0, S2, S0
45A896:  VMUL.F32        S2, S4, S20
45A89A:  VADD.F32        S0, S0, S6
45A89E:  VSTR            S0, [R0,#4]
45A8A2:  VLDR            S0, [R1,#8]
45A8A6:  VLDR            S4, [R2,#8]
45A8AA:  VMUL.F32        S0, S0, S18
45A8AE:  VMUL.F32        S4, S4, S16
45A8B2:  VADD.F32        S0, S2, S0
45A8B6:  VADD.F32        S0, S0, S4
45A8BA:  VSTR            S0, [R0,#8]
45A8BE:  LDRD.W          R5, R2, [SP,#0xE8+var_84]
45A8C2:  VLDR            S0, [R2]
45A8C6:  MOV             R0, R2
45A8C8:  LDR             R1, [SP,#0xE8+var_7C]
45A8CA:  VLDR            S2, [R5]
45A8CE:  VMUL.F32        S0, S0, S18
45A8D2:  VLDR            S4, [R5,#4]
45A8D6:  VMUL.F32        S2, S2, S20
45A8DA:  VLDR            S8, [R1]
45A8DE:  VLDR            S6, [R5,#8]
45A8E2:  VMUL.F32        S8, S8, S16
45A8E6:  VADD.F32        S0, S2, S0
45A8EA:  VMUL.F32        S2, S4, S20
45A8EE:  VADD.F32        S0, S0, S8
45A8F2:  VSTR            S0, [R5]
45A8F6:  VLDR            S0, [R2,#4]
45A8FA:  VLDR            S4, [R1,#4]
45A8FE:  VMUL.F32        S0, S0, S18
45A902:  VMUL.F32        S4, S4, S16
45A906:  VADD.F32        S0, S2, S0
45A90A:  VMUL.F32        S2, S6, S20
45A90E:  VADD.F32        S0, S0, S4
45A912:  VSTR            S0, [R5,#4]
45A916:  STR             R0, [SP,#0xE8+var_DC]
45A918:  MOV             R0, R1
45A91A:  VLDR            S0, [R2,#8]
45A91E:  STR             R0, [SP,#0xE8+var_D8]
45A920:  MOV             R0, R5
45A922:  VMUL.F32        S0, S0, S18
45A926:  VLDR            S4, [R1,#8]
45A92A:  MOV             R1, R5
45A92C:  VMUL.F32        S4, S4, S16
45A930:  VADD.F32        S0, S2, S0
45A934:  VADD.F32        S0, S0, S4
45A938:  VSTR            S0, [R5,#8]
45A93C:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
45A940:  LDRD.W          R12, R2, [SP,#0xE8+var_90]
45A944:  ADD             R4, SP, #0xE8+var_D0
45A946:  VLDR            S0, [R2]
45A94A:  MOV             R0, R2
45A94C:  LDR             R1, [SP,#0xE8+var_88]
45A94E:  MOV             R11, R4
45A950:  VLDR            S2, [R12]
45A954:  VMUL.F32        S0, S0, S18
45A958:  VLDR            S4, [R12,#4]
45A95C:  MOV.W           R8, #0
45A960:  VMUL.F32        S2, S2, S20
45A964:  VLDR            S6, [R1]
45A968:  VMUL.F32        S6, S6, S16
45A96C:  VADD.F32        S0, S2, S0
45A970:  VMUL.F32        S2, S4, S20
45A974:  VADD.F32        S0, S0, S6
45A978:  VSTR            S0, [R12]
45A97C:  STR             R0, [SP,#0xE8+var_E4]
45A97E:  MOV             R0, R1
45A980:  VLDR            S0, [R2,#4]
45A984:  STR             R0, [SP,#0xE8+var_E0]
45A986:  MOV             R0, R11
45A988:  VMUL.F32        S0, S0, S18
45A98C:  VLDR            S4, [R1,#4]
45A990:  MOVS            R1, #0
45A992:  VMUL.F32        S4, S4, S16
45A996:  VADD.F32        S0, S2, S0
45A99A:  VADD.F32        S0, S0, S4
45A99E:  VSTR            S0, [R12,#4]
45A9A2:  VST1.64         {D12-D13}, [R0]!
45A9A6:  LDR             R3, [SP,#0xE8+var_A8]
45A9A8:  STR             R1, [R0]
45A9AA:  STR             R1, [SP,#0xE8+var_60]
45A9AC:  VLDR            S0, [R3]
45A9B0:  LDR             R0, [SP,#0xE8+var_9C]
45A9B2:  VMUL.F32        S2, S0, S20
45A9B6:  VMOV.F32        S0, S22
45A9BA:  VCMP.F32        S2, #0.0
45A9BE:  VMRS            APSR_nzcv, FPSCR
45A9C2:  BEQ             loc_45A9D6
45A9C4:  VADD.F32        S0, S2, S22
45A9C8:  LDRB            R1, [R0]
45A9CA:  STR.W           R8, [SP,#0xE8+var_CC]
45A9CE:  STRB.W          R1, [SP,#0xE8+var_60]
45A9D2:  VSTR            S0, [SP,#0xE8+var_D0]
45A9D6:  VLDR            S2, [R3,#4]
45A9DA:  ADD.W           R10, SP, #0xE8+var_60
45A9DE:  VMUL.F32        S2, S2, S20
45A9E2:  VCMP.F32        S2, #0.0
45A9E6:  VMRS            APSR_nzcv, FPSCR
45A9EA:  BEQ             loc_45AA2C
45A9EC:  LDRB            R2, [R0,#1]
45A9EE:  VCMP.F32        S0, #0.0
45A9F2:  VMRS            APSR_nzcv, FPSCR
45A9F6:  BNE             loc_45A9FC
45A9F8:  MOVS            R1, #0
45A9FA:  B               loc_45AA12
45A9FC:  CMP             R1, R2
45A9FE:  BNE             loc_45AA0C
45AA00:  MOVS            R1, #0
45AA02:  B               loc_45AA20
45AA04:  DCD __stack_chk_guard_ptr - 0x459DEC
45AA08:  DCD _Z20FindAtomicFromNameCBP8RpAtomicPv_ptr - 0x459DF2
45AA0C:  MOVS            R1, #1
45AA0E:  VMOV.F32        S0, S22
45AA12:  ORR.W           R6, R10, R1
45AA16:  STRB            R2, [R6]
45AA18:  ORR.W           R2, R11, R1,LSL#2
45AA1C:  STR.W           R8, [R2,#4]
45AA20:  VADD.F32        S0, S2, S0
45AA24:  ORR.W           R1, R11, R1,LSL#2
45AA28:  VSTR            S0, [R1]
45AA2C:  VLDR            S0, [R3,#8]
45AA30:  VMUL.F32        S0, S0, S20
45AA34:  VCMP.F32        S0, #0.0
45AA38:  VMRS            APSR_nzcv, FPSCR
45AA3C:  BEQ             loc_45AA6E
45AA3E:  VLDR            S2, [SP,#0xE8+var_D0]
45AA42:  LDRB            R1, [R0,#2]
45AA44:  VCMP.F32        S2, #0.0
45AA48:  VMRS            APSR_nzcv, FPSCR
45AA4C:  BNE.W           loc_459EE8
45AA50:  MOVS            R6, #0
45AA52:  STRB.W          R1, [R10,R6]
45AA56:  ADD.W           R1, R11, R6,LSL#2
45AA5A:  STR.W           R8, [R1,#4]
45AA5E:  ADD.W           R1, R11, R6,LSL#2
45AA62:  VLDR            S2, [R1]
45AA66:  VADD.F32        S0, S0, S2
45AA6A:  VSTR            S0, [R1]
45AA6E:  VLDR            S0, [R3,#0xC]
45AA72:  VMUL.F32        S0, S0, S20
45AA76:  VCMP.F32        S0, #0.0
45AA7A:  VMRS            APSR_nzcv, FPSCR
45AA7E:  BEQ             loc_45AAB0
45AA80:  VLDR            S2, [SP,#0xE8+var_D0]
45AA84:  LDRB            R1, [R0,#3]
45AA86:  VCMP.F32        S2, #0.0
45AA8A:  VMRS            APSR_nzcv, FPSCR
45AA8E:  BNE.W           loc_459EF6
45AA92:  MOVS            R6, #0
45AA94:  STRB.W          R1, [R10,R6]
45AA98:  ADD.W           R1, R11, R6,LSL#2
45AA9C:  STR.W           R8, [R1,#4]
45AAA0:  ADD.W           R1, R11, R6,LSL#2
45AAA4:  VLDR            S2, [R1]
45AAA8:  VADD.F32        S0, S0, S2
45AAAC:  VSTR            S0, [R1]
45AAB0:  LDR             R1, [SP,#0xE8+var_A4]
45AAB2:  LDR             R4, [SP,#0xE8+var_98]
45AAB4:  VLDR            S0, [R1]
45AAB8:  VMUL.F32        S0, S0, S18
45AABC:  VCMP.F32        S0, #0.0
45AAC0:  VMRS            APSR_nzcv, FPSCR
45AAC4:  BEQ             loc_45AAF6
45AAC6:  VLDR            S2, [SP,#0xE8+var_D0]
45AACA:  LDRB            R6, [R4]
45AACC:  VCMP.F32        S2, #0.0
45AAD0:  VMRS            APSR_nzcv, FPSCR
45AAD4:  BNE.W           loc_459F04
45AAD8:  MOVS            R2, #0
45AADA:  STRB.W          R6, [R10,R2]
45AADE:  ADD.W           R6, R11, R2,LSL#2
45AAE2:  STR.W           R8, [R6,#4]
45AAE6:  ADD.W           R2, R11, R2,LSL#2
45AAEA:  VLDR            S2, [R2]
45AAEE:  VADD.F32        S0, S0, S2
45AAF2:  VSTR            S0, [R2]
45AAF6:  VLDR            S0, [R1,#4]
45AAFA:  VMUL.F32        S0, S0, S18
45AAFE:  VCMP.F32        S0, #0.0
45AB02:  VMRS            APSR_nzcv, FPSCR
45AB06:  BEQ             loc_45AB38
45AB08:  VLDR            S2, [SP,#0xE8+var_D0]
45AB0C:  LDRB            R6, [R4,#1]
45AB0E:  VCMP.F32        S2, #0.0
45AB12:  VMRS            APSR_nzcv, FPSCR
45AB16:  BNE.W           loc_459F12
45AB1A:  MOVS            R2, #0
45AB1C:  STRB.W          R6, [R10,R2]
45AB20:  ADD.W           R6, R11, R2,LSL#2
45AB24:  STR.W           R8, [R6,#4]
45AB28:  ADD.W           R2, R11, R2,LSL#2
45AB2C:  VLDR            S2, [R2]
45AB30:  VADD.F32        S0, S0, S2
45AB34:  VSTR            S0, [R2]
45AB38:  VLDR            S0, [R1,#8]
45AB3C:  VMUL.F32        S0, S0, S18
45AB40:  VCMP.F32        S0, #0.0
45AB44:  VMRS            APSR_nzcv, FPSCR
45AB48:  BEQ             loc_45AB7A
45AB4A:  VLDR            S2, [SP,#0xE8+var_D0]
45AB4E:  LDRB            R6, [R4,#2]
45AB50:  VCMP.F32        S2, #0.0
45AB54:  VMRS            APSR_nzcv, FPSCR
45AB58:  BNE.W           loc_459F20
45AB5C:  MOVS            R2, #0
45AB5E:  STRB.W          R6, [R10,R2]
45AB62:  ADD.W           R6, R11, R2,LSL#2
45AB66:  STR.W           R8, [R6,#4]
45AB6A:  ADD.W           R2, R11, R2,LSL#2
45AB6E:  VLDR            S2, [R2]
45AB72:  VADD.F32        S0, S0, S2
45AB76:  VSTR            S0, [R2]
45AB7A:  VLDR            S0, [R1,#0xC]
45AB7E:  VMUL.F32        S0, S0, S18
45AB82:  VCMP.F32        S0, #0.0
45AB86:  VMRS            APSR_nzcv, FPSCR
45AB8A:  BEQ             loc_45ABBC
45AB8C:  VLDR            S2, [SP,#0xE8+var_D0]
45AB90:  LDRB            R6, [R4,#3]
45AB92:  VCMP.F32        S2, #0.0
45AB96:  VMRS            APSR_nzcv, FPSCR
45AB9A:  BNE.W           loc_459F2E
45AB9E:  MOVS            R2, #0
45ABA0:  STRB.W          R6, [R10,R2]
45ABA4:  ADD.W           R6, R11, R2,LSL#2
45ABA8:  STR.W           R8, [R6,#4]
45ABAC:  ADD.W           R2, R11, R2,LSL#2
45ABB0:  VLDR            S2, [R2]
45ABB4:  VADD.F32        S0, S0, S2
45ABB8:  VSTR            S0, [R2]
45ABBC:  LDR.W           R9, [SP,#0xE8+var_A0]
45ABC0:  STR             R4, [SP,#0xE8+var_E8]
45ABC2:  LDR.W           LR, [SP,#0xE8+var_94]
45ABC6:  VLDR            S0, [R9]
45ABCA:  VMUL.F32        S0, S0, S16
45ABCE:  VCMP.F32        S0, #0.0
45ABD2:  VMRS            APSR_nzcv, FPSCR
45ABD6:  BEQ             loc_45AC0A
45ABD8:  VLDR            S2, [SP,#0xE8+var_D0]
45ABDC:  LDRB.W          R6, [LR]
45ABE0:  VCMP.F32        S2, #0.0
45ABE4:  VMRS            APSR_nzcv, FPSCR
45ABE8:  BNE.W           loc_459F3C
45ABEC:  MOVS            R2, #0
45ABEE:  STRB.W          R6, [R10,R2]
45ABF2:  ADD.W           R6, R11, R2,LSL#2
45ABF6:  STR.W           R8, [R6,#4]
45ABFA:  ADD.W           R2, R11, R2,LSL#2
45ABFE:  VLDR            S2, [R2]
45AC02:  VADD.F32        S0, S0, S2
45AC06:  VSTR            S0, [R2]
45AC0A:  VLDR            S0, [R9,#4]
45AC0E:  VMUL.F32        S0, S0, S16
45AC12:  VCMP.F32        S0, #0.0
45AC16:  VMRS            APSR_nzcv, FPSCR
45AC1A:  BEQ             loc_45AC4E
45AC1C:  VLDR            S2, [SP,#0xE8+var_D0]
45AC20:  LDRB.W          R6, [LR,#1]
45AC24:  VCMP.F32        S2, #0.0
45AC28:  VMRS            APSR_nzcv, FPSCR
45AC2C:  BNE.W           loc_459F4A
45AC30:  MOVS            R2, #0
45AC32:  STRB.W          R6, [R10,R2]
45AC36:  ADD.W           R6, R11, R2,LSL#2
45AC3A:  STR.W           R8, [R6,#4]
45AC3E:  ADD.W           R2, R11, R2,LSL#2
45AC42:  VLDR            S2, [R2]
45AC46:  VADD.F32        S0, S0, S2
45AC4A:  VSTR            S0, [R2]
45AC4E:  VLDR            S0, [R9,#8]
45AC52:  VMUL.F32        S0, S0, S16
45AC56:  VCMP.F32        S0, #0.0
45AC5A:  VMRS            APSR_nzcv, FPSCR
45AC5E:  BEQ             loc_45AC92
45AC60:  VLDR            S2, [SP,#0xE8+var_D0]
45AC64:  LDRB.W          R6, [LR,#2]
45AC68:  VCMP.F32        S2, #0.0
45AC6C:  VMRS            APSR_nzcv, FPSCR
45AC70:  BNE.W           loc_459F58
45AC74:  MOVS            R2, #0
45AC76:  STRB.W          R6, [R10,R2]
45AC7A:  ADD.W           R6, R11, R2,LSL#2
45AC7E:  STR.W           R8, [R6,#4]
45AC82:  ADD.W           R2, R11, R2,LSL#2
45AC86:  VLDR            S2, [R2]
45AC8A:  VADD.F32        S0, S0, S2
45AC8E:  VSTR            S0, [R2]
45AC92:  VLDR            S0, [R9,#0xC]
45AC96:  VMUL.F32        S0, S0, S16
45AC9A:  VCMP.F32        S0, #0.0
45AC9E:  VMRS            APSR_nzcv, FPSCR
45ACA2:  BEQ             loc_45ACD6
45ACA4:  VLDR            S2, [SP,#0xE8+var_D0]
45ACA8:  LDRB.W          R6, [LR,#3]
45ACAC:  VCMP.F32        S2, #0.0
45ACB0:  VMRS            APSR_nzcv, FPSCR
45ACB4:  BNE.W           loc_459F66
45ACB8:  MOVS            R2, #0
45ACBA:  STRB.W          R6, [R10,R2]
45ACBE:  ADD.W           R6, R11, R2,LSL#2
45ACC2:  STR.W           R8, [R6,#4]
45ACC6:  ADD.W           R2, R11, R2,LSL#2
45ACCA:  VLDR            S2, [R2]
45ACCE:  VADD.F32        S0, S0, S2
45ACD2:  VSTR            S0, [R2]
45ACD6:  LDRB.W          R2, [SP,#0xE8+var_60]
45ACDA:  STRB            R2, [R0]
45ACDC:  LDR             R2, [SP,#0xE8+var_D0]
45ACDE:  STR             R2, [R3]
45ACE0:  LDRB.W          R2, [SP,#0xE8+var_60+1]
45ACE4:  STRB            R2, [R0,#1]
45ACE6:  LDR             R2, [SP,#0xE8+var_CC]
45ACE8:  STR             R2, [R3,#4]
45ACEA:  LDRB.W          R2, [SP,#0xE8+var_60+2]
45ACEE:  STRB            R2, [R0,#2]
45ACF0:  LDR             R2, [SP,#0xE8+var_C8]
45ACF2:  STR             R2, [R3,#8]
45ACF4:  LDRB.W          R2, [SP,#0xE8+var_60+3]
45ACF8:  STRB            R2, [R0,#3]
45ACFA:  LDR             R2, [SP,#0xE8+var_C4]
45ACFC:  STR             R2, [R3,#0xC]
45ACFE:  VLDR            S0, [SP,#0xE8+var_C0]
45AD02:  VCMP.F32        S0, #0.0
45AD06:  VMRS            APSR_nzcv, FPSCR
45AD0A:  BEQ             loc_45AD58
45AD0C:  VLDR            S0, [SP,#0xE8+var_D0]
45AD10:  VMOV            S8, R2
45AD14:  VLDR            S2, [SP,#0xE8+var_CC]
45AD18:  VLDR            S4, [SP,#0xE8+var_C8]
45AD1C:  VADD.F32        S0, S0, S2
45AD20:  VLDR            S6, [SP,#0xE8+var_C4]
45AD24:  VLDR            S2, [R3]
45AD28:  VADD.F32        S0, S0, S4
45AD2C:  VLDR            S4, [R3,#4]
45AD30:  VADD.F32        S0, S0, S6
45AD34:  VLDR            S6, [R3,#8]
45AD38:  VDIV.F32        S2, S2, S0
45AD3C:  VDIV.F32        S4, S4, S0
45AD40:  VDIV.F32        S6, S6, S0
45AD44:  VDIV.F32        S0, S8, S0
45AD48:  VSTR            S2, [R3]
45AD4C:  VSTR            S4, [R3,#4]
45AD50:  VSTR            S6, [R3,#8]
45AD54:  VSTR            S0, [R3,#0xC]
45AD58:  LDRD.W          R2, R6, [SP,#0xE8+var_78]
45AD5C:  ADDS            R0, #4
45AD5E:  STR             R0, [SP,#0xE8+var_9C]
45AD60:  ADD.W           R11, R6, #0xC
45AD64:  ADD.W           R10, R2, #0xC
45AD68:  ADD.W           R2, R5, #0xC
45AD6C:  STR             R2, [SP,#0xE8+var_84]
45AD6E:  LDR             R2, [SP,#0xE8+var_DC]
45AD70:  LDR             R0, [SP,#0xE8+var_E8]
45AD72:  ADDS            R2, #0xC
45AD74:  STR             R2, [SP,#0xE8+var_80]
45AD76:  LDR             R2, [SP,#0xE8+var_D8]
45AD78:  ADDS            R0, #4
45AD7A:  STR             R0, [SP,#0xE8+var_98]
45AD7C:  ADD.W           R0, LR, #4
45AD80:  ADDS            R2, #0xC
45AD82:  STR             R2, [SP,#0xE8+var_7C]
45AD84:  ADD.W           R2, R12, #8
45AD88:  STR             R2, [SP,#0xE8+var_90]
45AD8A:  LDR             R2, [SP,#0xE8+var_E4]
45AD8C:  LDR             R4, [SP,#0xE8+var_70]
45AD8E:  ADDS            R2, #8
45AD90:  STR             R2, [SP,#0xE8+var_8C]
45AD92:  LDR             R2, [SP,#0xE8+var_E0]
45AD94:  ADD.W           R8, R4, #0xC
45AD98:  STR             R0, [SP,#0xE8+var_94]
45AD9A:  ADD.W           R0, R3, #0x10
45AD9E:  LDR             R6, [SP,#0xE8+var_6C]
45ADA0:  ADDS            R2, #8
45ADA2:  STR             R0, [SP,#0xE8+var_A8]
45ADA4:  ADD.W           R0, R1, #0x10
45ADA8:  LDR             R1, [SP,#0xE8+var_D4]
45ADAA:  STR.W           R10, [SP,#0xE8+var_78]
45ADAE:  MOV             R5, R6
45ADB0:  STR.W           R11, [SP,#0xE8+var_74]
45ADB4:  ADDS            R1, #1
45ADB6:  STR             R0, [SP,#0xE8+var_A4]
45ADB8:  ADD.W           R0, R9, #0x10
45ADBC:  STR.W           R8, [SP,#0xE8+var_70]
45ADC0:  STR             R2, [SP,#0xE8+var_88]
45ADC2:  STR             R0, [SP,#0xE8+var_A0]
45ADC4:  LDR             R0, [R6,#0x14]
45ADC6:  CMP             R1, R0
45ADC8:  BLT.W           loc_45A84C
45ADCC:  B               loc_45ADD0
45ADCE:  LDR             R6, [SP,#0xE8+var_6C]
45ADD0:  MOV             R0, R5
45ADD2:  BLX             j__Z16RpGeometryUnlockP10RpGeometry; RpGeometryUnlock(RpGeometry *)
45ADD6:  MOV             R0, R6
45ADD8:  BLX             j__Z17_rpGeometryAddRefP10RpGeometry; _rpGeometryAddRef(RpGeometry *)
45ADDC:  LDR             R0, =(__stack_chk_guard_ptr - 0x45ADE4)
45ADDE:  LDR             R1, [SP,#0xE8+var_54]
45ADE0:  ADD             R0, PC; __stack_chk_guard_ptr
45ADE2:  LDR             R0, [R0]; __stack_chk_guard
45ADE4:  LDR             R0, [R0]
45ADE6:  SUBS            R0, R0, R1
45ADE8:  ITTTT EQ
45ADEA:  MOVEQ           R0, R6
45ADEC:  ADDEQ           SP, SP, #0x98
45ADEE:  VPOPEQ          {D8-D13}
45ADF2:  ADDEQ           SP, SP, #4
45ADF4:  ITT EQ
45ADF6:  POPEQ.W         {R8-R11}
45ADFA:  POPEQ           {R4-R7,PC}
45ADFC:  BLX             __stack_chk_fail
