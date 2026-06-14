; =========================================================
; Game Engine Function: _ZN15CClothesBuilder13BlendGeometryEP7RpClumpPKcS3_ff
; Address            : 0x45AE04 - 0x45B8A4
; =========================================================

45AE04:  PUSH            {R4-R7,LR}
45AE06:  ADD             R7, SP, #0xC
45AE08:  PUSH.W          {R8-R11}
45AE0C:  SUB             SP, SP, #4
45AE0E:  VPUSH           {D8-D12}
45AE12:  SUB             SP, SP, #0x68
45AE14:  MOV             R5, R0
45AE16:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x45AE24)
45AE1A:  MOV             R8, R2
45AE1C:  LDR.W           R2, =(_Z20FindAtomicFromNameCBP8RpAtomicPv_ptr - 0x45AE28)
45AE20:  ADD             R0, PC; __stack_chk_guard_ptr
45AE22:  STR             R3, [SP,#0xB0+var_8C]
45AE24:  ADD             R2, PC; _Z20FindAtomicFromNameCBP8RpAtomicPv_ptr
45AE26:  MOV.W           R9, #0
45AE2A:  LDR             R0, [R0]; __stack_chk_guard
45AE2C:  LDR             R6, [R2]; FindAtomicFromNameCB(RpAtomic *,void *)
45AE2E:  ADD             R2, SP, #0xB0+var_88
45AE30:  LDR             R0, [R0]
45AE32:  STR             R0, [SP,#0xB0+var_4C]
45AE34:  MOV             R0, R5
45AE36:  STR             R1, [SP,#0xB0+var_88]
45AE38:  MOV             R1, R6
45AE3A:  STR.W           R9, [SP,#0xB0+var_84]
45AE3E:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
45AE42:  ADD             R2, SP, #0xB0+var_88
45AE44:  MOV             R0, R5
45AE46:  MOV             R1, R6
45AE48:  LDR             R4, [SP,#0xB0+var_84]
45AE4A:  STRD.W          R8, R9, [SP,#0xB0+var_88]
45AE4E:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
45AE52:  LDR.W           R11, [R4,#0x18]
45AE56:  STR.W           R11, [SP,#0xB0+var_60]
45AE5A:  LDR.W           R8, [SP,#0xB0+var_84]
45AE5E:  MOV             R0, R11
45AE60:  LDR.W           R4, [R11,#0x60]
45AE64:  BLX             j_RpSkinGeometryGetSkin
45AE68:  MOV             R5, R0
45AE6A:  LDR             R0, [R4,#0x14]
45AE6C:  STR             R0, [SP,#0xB0+var_98]
45AE6E:  LDR             R0, [R4,#0x18]
45AE70:  STR             R0, [SP,#0xB0+var_9C]
45AE72:  MOV             R0, R5
45AE74:  LDR.W           R10, [R11,#0x34]
45AE78:  BLX             j_RpSkinGetVertexBoneIndices
45AE7C:  STR             R0, [SP,#0xB0+var_A0]
45AE7E:  MOV             R0, R5
45AE80:  BLX             j_RpSkinGetVertexBoneWeights
45AE84:  STR             R0, [SP,#0xB0+var_AC]
45AE86:  LDR.W           R5, [R8,#0x18]
45AE8A:  STR             R5, [SP,#0xB0+var_5C]
45AE8C:  MOV             R0, R5
45AE8E:  LDR             R4, [R5,#0x60]
45AE90:  BLX             j_RpSkinGeometryGetSkin
45AE94:  MOV             R8, R0
45AE96:  LDR             R0, [R4,#0x14]
45AE98:  STR             R0, [SP,#0xB0+var_A4]
45AE9A:  LDR             R0, [R4,#0x18]
45AE9C:  STR             R0, [SP,#0xB0+var_A8]
45AE9E:  MOV             R0, R8
45AEA0:  LDR.W           R9, [R5,#0x34]
45AEA4:  BLX             j_RpSkinGetVertexBoneIndices
45AEA8:  STR             R0, [SP,#0xB0+var_90]
45AEAA:  MOV             R0, R8
45AEAC:  BLX             j_RpSkinGetVertexBoneWeights
45AEB0:  MOV             R5, R0
45AEB2:  MOV             R0, R11
45AEB4:  MOVW            R1, #0xFFF
45AEB8:  BLX             j__Z14RpGeometryLockP10RpGeometryi; RpGeometryLock(RpGeometry *,int)
45AEBC:  LDR.W           R0, [R11,#0x14]
45AEC0:  STR.W           R11, [SP,#0xB0+var_94]
45AEC4:  CMP             R0, #1
45AEC6:  BLT.W           loc_45B874
45AECA:  LDR             R0, [SP,#0xB0+var_8C]
45AECC:  VMOV.I32        Q5, #0
45AED0:  LDR             R4, [SP,#0xB0+var_AC]
45AED2:  MOVS            R6, #0
45AED4:  VLDR            S18, [R7,#arg_0]
45AED8:  MOV.W           R11, #0
45AEDC:  VMOV            S16, R0
45AEE0:  VLDR            S24, =0.0
45AEE4:  MOVS            R1, #0
45AEE6:  B               loc_45B48A
45AEE8:  LDRB.W          R3, [R7,#var_55]
45AEEC:  CMP             R3, R2
45AEEE:  BNE             loc_45AF36
45AEF0:  MOVS            R3, #0
45AEF2:  B               loc_45B638
45AEF4:  LDRB.W          R3, [R7,#var_55]
45AEF8:  CMP             R3, R2
45AEFA:  BNE             loc_45AF4A
45AEFC:  MOVS            R3, #0
45AEFE:  B               loc_45B682
45AF00:  LDRB.W          R3, [R7,#var_55]
45AF04:  CMP             R3, R2
45AF06:  BNE             loc_45AF5E
45AF08:  MOVS            R3, #0
45AF0A:  B               loc_45B6CE
45AF0C:  LDRB.W          R4, [R7,#var_55]
45AF10:  CMP             R4, R3
45AF12:  BNE             loc_45AF72
45AF14:  MOVS            R4, #0
45AF16:  B.W             loc_45B71A
45AF1A:  LDRB.W          R4, [R7,#var_55]
45AF1E:  CMP             R4, R3
45AF20:  BNE             loc_45AF84
45AF22:  MOVS            R4, #0
45AF24:  B.W             loc_45B762
45AF28:  LDRB.W          R3, [R7,#var_55]
45AF2C:  CMP             R3, R2
45AF2E:  BNE             loc_45AF96
45AF30:  MOVS            R3, #0
45AF32:  B.W             loc_45B7B6
45AF36:  VLDR            S2, [SP,#0xB0+var_84]
45AF3A:  VCMP.F32        S2, #0.0
45AF3E:  VMRS            APSR_nzcv, FPSCR
45AF42:  BNE             loc_45AFB0
45AF44:  MOV             R1, R4
45AF46:  MOVS            R3, #1
45AF48:  B               loc_45B628
45AF4A:  VLDR            S2, [SP,#0xB0+var_84]
45AF4E:  VCMP.F32        S2, #0.0
45AF52:  VMRS            APSR_nzcv, FPSCR
45AF56:  BNE             loc_45AFBC
45AF58:  MOV             R1, R4
45AF5A:  MOVS            R3, #1
45AF5C:  B               loc_45B672
45AF5E:  VLDR            S2, [SP,#0xB0+var_84]
45AF62:  VCMP.F32        S2, #0.0
45AF66:  VMRS            APSR_nzcv, FPSCR
45AF6A:  BNE             loc_45AFC8
45AF6C:  MOV             R1, R4
45AF6E:  MOVS            R3, #1
45AF70:  B               loc_45B6BE
45AF72:  VLDR            S2, [SP,#0xB0+var_84]
45AF76:  VCMP.F32        S2, #0.0
45AF7A:  VMRS            APSR_nzcv, FPSCR
45AF7E:  BNE             loc_45AFD4
45AF80:  MOVS            R4, #1
45AF82:  B               loc_45B70C
45AF84:  VLDR            S2, [SP,#0xB0+var_84]
45AF88:  VCMP.F32        S2, #0.0
45AF8C:  VMRS            APSR_nzcv, FPSCR
45AF90:  BNE             loc_45AFE0
45AF92:  MOVS            R4, #1
45AF94:  B               loc_45B754
45AF96:  VLDR            S2, [SP,#0xB0+var_84]
45AF9A:  MOV.W           R12, #0
45AF9E:  VCMP.F32        S2, #0.0
45AFA2:  VMRS            APSR_nzcv, FPSCR
45AFA6:  BNE             loc_45AFEC
45AFA8:  MOV             R1, LR
45AFAA:  MOV             LR, R4
45AFAC:  MOVS            R3, #1
45AFAE:  B               loc_45B7A4
45AFB0:  LDRB.W          R3, [R7,#var_54]
45AFB4:  CMP             R3, R2
45AFB6:  BNE             loc_45AFF8
45AFB8:  MOVS            R3, #1
45AFBA:  B               loc_45B638
45AFBC:  LDRB.W          R3, [R7,#var_54]
45AFC0:  CMP             R3, R2
45AFC2:  BNE             loc_45B00C
45AFC4:  MOVS            R3, #1
45AFC6:  B               loc_45B682
45AFC8:  LDRB.W          R3, [R7,#var_54]
45AFCC:  CMP             R3, R2
45AFCE:  BNE             loc_45B020
45AFD0:  MOVS            R3, #1
45AFD2:  B               loc_45B6CE
45AFD4:  LDRB.W          R4, [R7,#var_54]
45AFD8:  CMP             R4, R3
45AFDA:  BNE             loc_45B034
45AFDC:  MOVS            R4, #1
45AFDE:  B               loc_45B71A
45AFE0:  LDRB.W          R4, [R7,#var_54]
45AFE4:  CMP             R4, R3
45AFE6:  BNE             loc_45B046
45AFE8:  MOVS            R4, #1
45AFEA:  B               loc_45B762
45AFEC:  LDRB.W          R3, [R7,#var_54]
45AFF0:  CMP             R3, R2
45AFF2:  BNE             loc_45B058
45AFF4:  MOVS            R3, #1
45AFF6:  B               loc_45B7B6
45AFF8:  VLDR            S2, [SP,#0xB0+var_80]
45AFFC:  VCMP.F32        S2, #0.0
45B000:  VMRS            APSR_nzcv, FPSCR
45B004:  BNE             loc_45B06E
45B006:  MOV             R1, R4
45B008:  MOVS            R3, #2
45B00A:  B               loc_45B628
45B00C:  VLDR            S2, [SP,#0xB0+var_80]
45B010:  VCMP.F32        S2, #0.0
45B014:  VMRS            APSR_nzcv, FPSCR
45B018:  BNE             loc_45B07A
45B01A:  MOV             R1, R4
45B01C:  MOVS            R3, #2
45B01E:  B               loc_45B672
45B020:  VLDR            S2, [SP,#0xB0+var_80]
45B024:  VCMP.F32        S2, #0.0
45B028:  VMRS            APSR_nzcv, FPSCR
45B02C:  BNE             loc_45B086
45B02E:  MOV             R1, R4
45B030:  MOVS            R3, #2
45B032:  B               loc_45B6BE
45B034:  VLDR            S2, [SP,#0xB0+var_80]
45B038:  VCMP.F32        S2, #0.0
45B03C:  VMRS            APSR_nzcv, FPSCR
45B040:  BNE             loc_45B092
45B042:  MOVS            R4, #2
45B044:  B               loc_45B70C
45B046:  VLDR            S2, [SP,#0xB0+var_80]
45B04A:  VCMP.F32        S2, #0.0
45B04E:  VMRS            APSR_nzcv, FPSCR
45B052:  BNE             loc_45B09E
45B054:  MOVS            R4, #2
45B056:  B               loc_45B754
45B058:  VLDR            S2, [SP,#0xB0+var_80]
45B05C:  VCMP.F32        S2, #0.0
45B060:  VMRS            APSR_nzcv, FPSCR
45B064:  BNE             loc_45B0AA
45B066:  MOV             R1, LR
45B068:  MOV             LR, R4
45B06A:  MOVS            R3, #2
45B06C:  B               loc_45B7A4
45B06E:  LDRB.W          R3, [R7,#var_53]
45B072:  CMP             R3, R2
45B074:  BNE             loc_45B0B6
45B076:  MOVS            R3, #2
45B078:  B               loc_45B638
45B07A:  LDRB.W          R3, [R7,#var_53]
45B07E:  CMP             R3, R2
45B080:  BNE             loc_45B0CA
45B082:  MOVS            R3, #2
45B084:  B               loc_45B682
45B086:  LDRB.W          R3, [R7,#var_53]
45B08A:  CMP             R3, R2
45B08C:  BNE             loc_45B0DE
45B08E:  MOVS            R3, #2
45B090:  B               loc_45B6CE
45B092:  LDRB.W          R4, [R7,#var_53]
45B096:  CMP             R4, R3
45B098:  BNE             loc_45B0F2
45B09A:  MOVS            R4, #2
45B09C:  B               loc_45B71A
45B09E:  LDRB.W          R4, [R7,#var_53]
45B0A2:  CMP             R4, R3
45B0A4:  BNE             loc_45B104
45B0A6:  MOVS            R4, #2
45B0A8:  B               loc_45B762
45B0AA:  LDRB.W          R3, [R7,#var_53]
45B0AE:  CMP             R3, R2
45B0B0:  BNE             loc_45B116
45B0B2:  MOVS            R3, #2
45B0B4:  B               loc_45B7B6
45B0B6:  VLDR            S2, [SP,#0xB0+var_7C]
45B0BA:  VCMP.F32        S2, #0.0
45B0BE:  VMRS            APSR_nzcv, FPSCR
45B0C2:  BNE             loc_45B12C
45B0C4:  MOV             R1, R4
45B0C6:  MOVS            R3, #3
45B0C8:  B               loc_45B628
45B0CA:  VLDR            S2, [SP,#0xB0+var_7C]
45B0CE:  VCMP.F32        S2, #0.0
45B0D2:  VMRS            APSR_nzcv, FPSCR
45B0D6:  BNE             loc_45B138
45B0D8:  MOV             R1, R4
45B0DA:  MOVS            R3, #3
45B0DC:  B               loc_45B672
45B0DE:  VLDR            S2, [SP,#0xB0+var_7C]
45B0E2:  VCMP.F32        S2, #0.0
45B0E6:  VMRS            APSR_nzcv, FPSCR
45B0EA:  BNE             loc_45B144
45B0EC:  MOV             R1, R4
45B0EE:  MOVS            R3, #3
45B0F0:  B               loc_45B6BE
45B0F2:  VLDR            S2, [SP,#0xB0+var_7C]
45B0F6:  VCMP.F32        S2, #0.0
45B0FA:  VMRS            APSR_nzcv, FPSCR
45B0FE:  BNE             loc_45B150
45B100:  MOVS            R4, #3
45B102:  B               loc_45B70C
45B104:  VLDR            S2, [SP,#0xB0+var_7C]
45B108:  VCMP.F32        S2, #0.0
45B10C:  VMRS            APSR_nzcv, FPSCR
45B110:  BNE             loc_45B15C
45B112:  MOVS            R4, #3
45B114:  B               loc_45B754
45B116:  VLDR            S2, [SP,#0xB0+var_7C]
45B11A:  VCMP.F32        S2, #0.0
45B11E:  VMRS            APSR_nzcv, FPSCR
45B122:  BNE             loc_45B168
45B124:  MOV             R1, LR
45B126:  MOV             LR, R4
45B128:  MOVS            R3, #3
45B12A:  B               loc_45B7A4
45B12C:  LDRB.W          R3, [R7,#var_52]
45B130:  CMP             R3, R2
45B132:  BNE             loc_45B174
45B134:  MOVS            R3, #3
45B136:  B               loc_45B638
45B138:  LDRB.W          R3, [R7,#var_52]
45B13C:  CMP             R3, R2
45B13E:  BNE             loc_45B188
45B140:  MOVS            R3, #3
45B142:  B               loc_45B682
45B144:  LDRB.W          R3, [R7,#var_52]
45B148:  CMP             R3, R2
45B14A:  BNE             loc_45B19C
45B14C:  MOVS            R3, #3
45B14E:  B               loc_45B6CE
45B150:  LDRB.W          R4, [R7,#var_52]
45B154:  CMP             R4, R3
45B156:  BNE             loc_45B1B0
45B158:  MOVS            R4, #3
45B15A:  B               loc_45B71A
45B15C:  LDRB.W          R4, [R7,#var_52]
45B160:  CMP             R4, R3
45B162:  BNE             loc_45B1C2
45B164:  MOVS            R4, #3
45B166:  B               loc_45B762
45B168:  LDRB.W          R3, [R7,#var_52]
45B16C:  CMP             R3, R2
45B16E:  BNE             loc_45B1D4
45B170:  MOVS            R3, #3
45B172:  B               loc_45B7B6
45B174:  VLDR            S2, [SP,#0xB0+var_78]
45B178:  VCMP.F32        S2, #0.0
45B17C:  VMRS            APSR_nzcv, FPSCR
45B180:  BNE             loc_45B1EA
45B182:  MOV             R1, R4
45B184:  MOVS            R3, #4
45B186:  B               loc_45B628
45B188:  VLDR            S2, [SP,#0xB0+var_78]
45B18C:  VCMP.F32        S2, #0.0
45B190:  VMRS            APSR_nzcv, FPSCR
45B194:  BNE             loc_45B1F6
45B196:  MOV             R1, R4
45B198:  MOVS            R3, #4
45B19A:  B               loc_45B672
45B19C:  VLDR            S2, [SP,#0xB0+var_78]
45B1A0:  VCMP.F32        S2, #0.0
45B1A4:  VMRS            APSR_nzcv, FPSCR
45B1A8:  BNE             loc_45B202
45B1AA:  MOV             R1, R4
45B1AC:  MOVS            R3, #4
45B1AE:  B               loc_45B6BE
45B1B0:  VLDR            S2, [SP,#0xB0+var_78]
45B1B4:  VCMP.F32        S2, #0.0
45B1B8:  VMRS            APSR_nzcv, FPSCR
45B1BC:  BNE             loc_45B214
45B1BE:  MOVS            R4, #4
45B1C0:  B               loc_45B70C
45B1C2:  VLDR            S2, [SP,#0xB0+var_78]
45B1C6:  VCMP.F32        S2, #0.0
45B1CA:  VMRS            APSR_nzcv, FPSCR
45B1CE:  BNE             loc_45B220
45B1D0:  MOVS            R4, #4
45B1D2:  B               loc_45B754
45B1D4:  VLDR            S2, [SP,#0xB0+var_78]
45B1D8:  VCMP.F32        S2, #0.0
45B1DC:  VMRS            APSR_nzcv, FPSCR
45B1E0:  BNE             loc_45B22C
45B1E2:  MOV             R1, LR
45B1E4:  MOV             LR, R4
45B1E6:  MOVS            R3, #4
45B1E8:  B               loc_45B7A4
45B1EA:  LDRB.W          R3, [R7,#var_51]
45B1EE:  CMP             R3, R2
45B1F0:  BNE             loc_45B238
45B1F2:  MOVS            R3, #4
45B1F4:  B               loc_45B638
45B1F6:  LDRB.W          R3, [R7,#var_51]
45B1FA:  CMP             R3, R2
45B1FC:  BNE             loc_45B24C
45B1FE:  MOVS            R3, #4
45B200:  B               loc_45B682
45B202:  LDRB.W          R3, [R7,#var_51]
45B206:  CMP             R3, R2
45B208:  BNE             loc_45B260
45B20A:  MOVS            R3, #4
45B20C:  B               loc_45B6CE
45B20E:  ALIGN 0x10
45B210:  DCFS 0.0
45B214:  LDRB.W          R4, [R7,#var_51]
45B218:  CMP             R4, R3
45B21A:  BNE             loc_45B274
45B21C:  MOVS            R4, #4
45B21E:  B               loc_45B71A
45B220:  LDRB.W          R4, [R7,#var_51]
45B224:  CMP             R4, R3
45B226:  BNE             loc_45B286
45B228:  MOVS            R4, #4
45B22A:  B               loc_45B762
45B22C:  LDRB.W          R3, [R7,#var_51]
45B230:  CMP             R3, R2
45B232:  BNE             loc_45B298
45B234:  MOVS            R3, #4
45B236:  B               loc_45B7B6
45B238:  VLDR            S2, [SP,#0xB0+var_74]
45B23C:  VCMP.F32        S2, #0.0
45B240:  VMRS            APSR_nzcv, FPSCR
45B244:  BNE             loc_45B2AE
45B246:  MOV             R1, R4
45B248:  MOVS            R3, #5
45B24A:  B               loc_45B628
45B24C:  VLDR            S2, [SP,#0xB0+var_74]
45B250:  VCMP.F32        S2, #0.0
45B254:  VMRS            APSR_nzcv, FPSCR
45B258:  BNE             loc_45B2BA
45B25A:  MOV             R1, R4
45B25C:  MOVS            R3, #5
45B25E:  B               loc_45B672
45B260:  VLDR            S2, [SP,#0xB0+var_74]
45B264:  VCMP.F32        S2, #0.0
45B268:  VMRS            APSR_nzcv, FPSCR
45B26C:  BNE             loc_45B2C6
45B26E:  MOV             R1, R4
45B270:  MOVS            R3, #5
45B272:  B               loc_45B6BE
45B274:  VLDR            S2, [SP,#0xB0+var_74]
45B278:  VCMP.F32        S2, #0.0
45B27C:  VMRS            APSR_nzcv, FPSCR
45B280:  BNE             loc_45B2D2
45B282:  MOVS            R4, #5
45B284:  B               loc_45B70C
45B286:  VLDR            S2, [SP,#0xB0+var_74]
45B28A:  VCMP.F32        S2, #0.0
45B28E:  VMRS            APSR_nzcv, FPSCR
45B292:  BNE             loc_45B2DE
45B294:  MOVS            R4, #5
45B296:  B               loc_45B754
45B298:  VLDR            S2, [SP,#0xB0+var_74]
45B29C:  VCMP.F32        S2, #0.0
45B2A0:  VMRS            APSR_nzcv, FPSCR
45B2A4:  BNE             loc_45B2EA
45B2A6:  MOV             R1, LR
45B2A8:  MOV             LR, R4
45B2AA:  MOVS            R3, #5
45B2AC:  B               loc_45B7A4
45B2AE:  LDRB.W          R3, [R7,#var_50]
45B2B2:  CMP             R3, R2
45B2B4:  BNE             loc_45B2F6
45B2B6:  MOVS            R3, #5
45B2B8:  B               loc_45B638
45B2BA:  LDRB.W          R3, [R7,#var_50]
45B2BE:  CMP             R3, R2
45B2C0:  BNE             loc_45B30A
45B2C2:  MOVS            R3, #5
45B2C4:  B               loc_45B682
45B2C6:  LDRB.W          R3, [R7,#var_50]
45B2CA:  CMP             R3, R2
45B2CC:  BNE             loc_45B31E
45B2CE:  MOVS            R3, #5
45B2D0:  B               loc_45B6CE
45B2D2:  LDRB.W          R4, [R7,#var_50]
45B2D6:  CMP             R4, R3
45B2D8:  BNE             loc_45B332
45B2DA:  MOVS            R4, #5
45B2DC:  B               loc_45B71A
45B2DE:  LDRB.W          R4, [R7,#var_50]
45B2E2:  CMP             R4, R3
45B2E4:  BNE             loc_45B344
45B2E6:  MOVS            R4, #5
45B2E8:  B               loc_45B762
45B2EA:  LDRB.W          R3, [R7,#var_50]
45B2EE:  CMP             R3, R2
45B2F0:  BNE             loc_45B356
45B2F2:  MOVS            R3, #5
45B2F4:  B               loc_45B7B6
45B2F6:  VLDR            S2, [SP,#0xB0+var_70]
45B2FA:  VCMP.F32        S2, #0.0
45B2FE:  VMRS            APSR_nzcv, FPSCR
45B302:  BNE             loc_45B36C
45B304:  MOV             R1, R4
45B306:  MOVS            R3, #6
45B308:  B               loc_45B628
45B30A:  VLDR            S2, [SP,#0xB0+var_70]
45B30E:  VCMP.F32        S2, #0.0
45B312:  VMRS            APSR_nzcv, FPSCR
45B316:  BNE             loc_45B378
45B318:  MOV             R1, R4
45B31A:  MOVS            R3, #6
45B31C:  B               loc_45B672
45B31E:  VLDR            S2, [SP,#0xB0+var_70]
45B322:  VCMP.F32        S2, #0.0
45B326:  VMRS            APSR_nzcv, FPSCR
45B32A:  BNE             loc_45B384
45B32C:  MOV             R1, R4
45B32E:  MOVS            R3, #6
45B330:  B               loc_45B6BE
45B332:  VLDR            S2, [SP,#0xB0+var_70]
45B336:  VCMP.F32        S2, #0.0
45B33A:  VMRS            APSR_nzcv, FPSCR
45B33E:  BNE             loc_45B390
45B340:  MOVS            R4, #6
45B342:  B               loc_45B70C
45B344:  VLDR            S2, [SP,#0xB0+var_70]
45B348:  VCMP.F32        S2, #0.0
45B34C:  VMRS            APSR_nzcv, FPSCR
45B350:  BNE             loc_45B39C
45B352:  MOVS            R4, #6
45B354:  B               loc_45B754
45B356:  VLDR            S2, [SP,#0xB0+var_70]
45B35A:  VCMP.F32        S2, #0.0
45B35E:  VMRS            APSR_nzcv, FPSCR
45B362:  BNE             loc_45B3A8
45B364:  MOV             R1, LR
45B366:  MOV             LR, R4
45B368:  MOVS            R3, #6
45B36A:  B               loc_45B7A4
45B36C:  LDRB.W          R3, [R7,#var_4F]
45B370:  CMP             R3, R2
45B372:  BNE             loc_45B3B4
45B374:  MOVS            R3, #6
45B376:  B               loc_45B638
45B378:  LDRB.W          R3, [R7,#var_4F]
45B37C:  CMP             R3, R2
45B37E:  BNE             loc_45B3C8
45B380:  MOVS            R3, #6
45B382:  B               loc_45B682
45B384:  LDRB.W          R3, [R7,#var_4F]
45B388:  CMP             R3, R2
45B38A:  BNE             loc_45B3DC
45B38C:  MOVS            R3, #6
45B38E:  B               loc_45B6CE
45B390:  LDRB.W          R4, [R7,#var_4F]
45B394:  CMP             R4, R3
45B396:  BNE             loc_45B3F0
45B398:  MOVS            R4, #6
45B39A:  B               loc_45B71A
45B39C:  LDRB.W          R4, [R7,#var_4F]
45B3A0:  CMP             R4, R3
45B3A2:  BNE             loc_45B402
45B3A4:  MOVS            R4, #6
45B3A6:  B               loc_45B762
45B3A8:  LDRB.W          R3, [R7,#var_4F]
45B3AC:  CMP             R3, R2
45B3AE:  BNE             loc_45B414
45B3B0:  MOVS            R3, #6
45B3B2:  B               loc_45B7B6
45B3B4:  VLDR            S2, [SP,#0xB0+var_6C]
45B3B8:  MOV             R1, R4
45B3BA:  VCMP.F32        S2, #0.0
45B3BE:  VMRS            APSR_nzcv, FPSCR
45B3C2:  BNE             loc_45B42A
45B3C4:  MOVS            R3, #7
45B3C6:  B               loc_45B628
45B3C8:  VLDR            S2, [SP,#0xB0+var_6C]
45B3CC:  MOV             R1, R4
45B3CE:  VCMP.F32        S2, #0.0
45B3D2:  VMRS            APSR_nzcv, FPSCR
45B3D6:  BNE             loc_45B43A
45B3D8:  MOVS            R3, #7
45B3DA:  B               loc_45B672
45B3DC:  VLDR            S2, [SP,#0xB0+var_6C]
45B3E0:  MOV             R1, R4
45B3E2:  VCMP.F32        S2, #0.0
45B3E6:  VMRS            APSR_nzcv, FPSCR
45B3EA:  BNE             loc_45B44A
45B3EC:  MOVS            R3, #7
45B3EE:  B               loc_45B6BE
45B3F0:  VLDR            S2, [SP,#0xB0+var_6C]
45B3F4:  VCMP.F32        S2, #0.0
45B3F8:  VMRS            APSR_nzcv, FPSCR
45B3FC:  BNE             loc_45B45A
45B3FE:  MOVS            R4, #7
45B400:  B               loc_45B70C
45B402:  VLDR            S2, [SP,#0xB0+var_6C]
45B406:  VCMP.F32        S2, #0.0
45B40A:  VMRS            APSR_nzcv, FPSCR
45B40E:  BNE             loc_45B46A
45B410:  MOVS            R4, #7
45B412:  B               loc_45B754
45B414:  VLDR            S2, [SP,#0xB0+var_6C]
45B418:  MOV             R1, LR
45B41A:  MOV             LR, R4
45B41C:  VCMP.F32        S2, #0.0
45B420:  VMRS            APSR_nzcv, FPSCR
45B424:  BNE             loc_45B47A
45B426:  MOVS            R3, #7
45B428:  B               loc_45B7A0
45B42A:  LDRB.W          R3, [R7,#var_4E]
45B42E:  CMP             R3, R2
45B430:  MOV.W           R3, #8
45B434:  IT EQ
45B436:  MOVEQ           R3, #7
45B438:  B               loc_45B636
45B43A:  LDRB.W          R3, [R7,#var_4E]
45B43E:  CMP             R3, R2
45B440:  MOV.W           R3, #8
45B444:  IT EQ
45B446:  MOVEQ           R3, #7
45B448:  B               loc_45B680
45B44A:  LDRB.W          R3, [R7,#var_4E]
45B44E:  CMP             R3, R2
45B450:  MOV.W           R3, #8
45B454:  IT EQ
45B456:  MOVEQ           R3, #7
45B458:  B               loc_45B6CC
45B45A:  LDRB.W          R4, [R7,#var_4E]
45B45E:  CMP             R4, R3
45B460:  MOV.W           R4, #8
45B464:  IT EQ
45B466:  MOVEQ           R4, #7
45B468:  B               loc_45B71A
45B46A:  LDRB.W          R4, [R7,#var_4E]
45B46E:  CMP             R4, R3
45B470:  MOV.W           R4, #8
45B474:  IT EQ
45B476:  MOVEQ           R4, #7
45B478:  B               loc_45B762
45B47A:  LDRB.W          R3, [R7,#var_4E]
45B47E:  CMP             R3, R2
45B480:  MOV.W           R3, #8
45B484:  IT EQ
45B486:  MOVEQ           R3, #7
45B488:  B               loc_45B7B2
45B48A:  LDR             R0, [SP,#0xB0+var_A4]
45B48C:  STR             R1, [SP,#0xB0+var_8C]
45B48E:  LDR             R1, [SP,#0xB0+var_98]
45B490:  ADD             R0, R6
45B492:  ADD             R1, R6
45B494:  VLDR            S0, [R0]
45B498:  VLDR            S2, [R1]
45B49C:  VMUL.F32        S0, S0, S18
45B4A0:  VLDR            S4, [R1,#4]
45B4A4:  VMUL.F32        S2, S2, S16
45B4A8:  VLDR            S6, [R1,#8]
45B4AC:  VADD.F32        S0, S2, S0
45B4B0:  VMUL.F32        S2, S4, S16
45B4B4:  VSTR            S0, [R1]
45B4B8:  VLDR            S0, [R0,#4]
45B4BC:  VMUL.F32        S0, S0, S18
45B4C0:  VADD.F32        S0, S2, S0
45B4C4:  VMUL.F32        S2, S6, S16
45B4C8:  VSTR            S0, [R1,#4]
45B4CC:  VLDR            S0, [R0,#8]
45B4D0:  VMUL.F32        S0, S0, S18
45B4D4:  VADD.F32        S0, S2, S0
45B4D8:  VSTR            S0, [R1,#8]
45B4DC:  LDR             R0, [SP,#0xB0+var_A8]
45B4DE:  ADDS            R1, R0, R6
45B4E0:  LDR             R0, [SP,#0xB0+var_9C]
45B4E2:  ADD             R0, R6
45B4E4:  VLDR            S0, [R1]
45B4E8:  VLDR            S2, [R0]
45B4EC:  VMUL.F32        S0, S0, S18
45B4F0:  VLDR            S4, [R0,#4]
45B4F4:  VMUL.F32        S2, S2, S16
45B4F8:  VLDR            S6, [R0,#8]
45B4FC:  VADD.F32        S0, S2, S0
45B500:  VMUL.F32        S2, S4, S16
45B504:  VSTR            S0, [R0]
45B508:  VLDR            S0, [R1,#4]
45B50C:  VMUL.F32        S0, S0, S18
45B510:  VADD.F32        S0, S2, S0
45B514:  VMUL.F32        S2, S6, S16
45B518:  VSTR            S0, [R0,#4]
45B51C:  VLDR            S0, [R1,#8]
45B520:  MOV             R1, R0
45B522:  VMUL.F32        S0, S0, S18
45B526:  VADD.F32        S0, S2, S0
45B52A:  VSTR            S0, [R0,#8]
45B52E:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
45B532:  VLDR            S0, [R9]
45B536:  ADD.W           LR, SP, #0xB0+var_88
45B53A:  VLDR            S2, [R10]
45B53E:  MOV.W           R12, #0
45B542:  VMUL.F32        S0, S0, S18
45B546:  VLDR            S4, [R10,#4]
45B54A:  VMUL.F32        S2, S2, S16
45B54E:  MOV             R0, LR
45B550:  VADD.F32        S0, S2, S0
45B554:  VMUL.F32        S2, S4, S16
45B558:  VSTR            S0, [R10]
45B55C:  VLDR            S0, [R9,#4]
45B560:  VMUL.F32        S0, S0, S18
45B564:  VADD.F32        S0, S2, S0
45B568:  VSTR            S0, [R10,#4]
45B56C:  VST1.64         {D10-D11}, [R0]!
45B570:  STR.W           R12, [R0]
45B574:  ADD.W           R0, R4, R11,LSL#2
45B578:  LDR             R1, [SP,#0xB0+var_A0]
45B57A:  VLDR            S0, [R0]
45B57E:  ADD.W           R8, R1, R11
45B582:  VMUL.F32        S2, S0, S16
45B586:  VMOV.F32        S0, S24
45B58A:  VCMP.F32        S2, #0.0
45B58E:  VMRS            APSR_nzcv, FPSCR
45B592:  BEQ             loc_45B5A8
45B594:  VADD.F32        S0, S2, S24
45B598:  LDRB.W          R2, [R8]
45B59C:  STR.W           R12, [SP,#0xB0+var_84]
45B5A0:  STRB.W          R2, [R7,#var_55]
45B5A4:  VSTR            S0, [SP,#0xB0+var_88]
45B5A8:  VLDR            S2, [R0,#4]
45B5AC:  VMUL.F32        S2, S2, S16
45B5B0:  VCMP.F32        S2, #0.0
45B5B4:  VMRS            APSR_nzcv, FPSCR
45B5B8:  BEQ             loc_45B5FE
45B5BA:  LDRB.W          R3, [R8,#1]
45B5BE:  VCMP.F32        S0, #0.0
45B5C2:  VMRS            APSR_nzcv, FPSCR
45B5C6:  BNE             loc_45B5CC
45B5C8:  MOVS            R2, #0
45B5CA:  B               loc_45B5DE
45B5CC:  LDRB.W          R2, [R7,#var_55]
45B5D0:  CMP             R2, R3
45B5D2:  BNE             loc_45B5D8
45B5D4:  MOVS            R2, #0
45B5D6:  B               loc_45B5F2
45B5D8:  MOVS            R2, #1
45B5DA:  VMOV.F32        S0, S24
45B5DE:  SUB.W           R12, R7, #-var_55
45B5E2:  STRB.W          R3, [R12,R2]
45B5E6:  ORR.W           R3, LR, R2,LSL#2
45B5EA:  MOV.W           R12, #0
45B5EE:  STR.W           R12, [R3,#4]
45B5F2:  VADD.F32        S0, S2, S0
45B5F6:  ORR.W           R2, LR, R2,LSL#2
45B5FA:  VSTR            S0, [R2]
45B5FE:  VLDR            S0, [R0,#8]
45B602:  VMUL.F32        S0, S0, S16
45B606:  VCMP.F32        S0, #0.0
45B60A:  VMRS            APSR_nzcv, FPSCR
45B60E:  BEQ             loc_45B648
45B610:  VLDR            S2, [SP,#0xB0+var_88]
45B614:  LDRB.W          R2, [R8,#2]
45B618:  VCMP.F32        S2, #0.0
45B61C:  VMRS            APSR_nzcv, FPSCR
45B620:  BNE.W           loc_45AEE8
45B624:  MOV             R1, R4
45B626:  MOVS            R3, #0
45B628:  SUB.W           R4, R7, #-var_55
45B62C:  STRB            R2, [R4,R3]
45B62E:  ADD.W           R2, LR, R3,LSL#2
45B632:  STR.W           R12, [R2,#4]
45B636:  MOV             R4, R1
45B638:  ADD.W           R2, LR, R3,LSL#2
45B63C:  VLDR            S2, [R2]
45B640:  VADD.F32        S0, S0, S2
45B644:  VSTR            S0, [R2]
45B648:  VLDR            S0, [R0,#0xC]
45B64C:  VMUL.F32        S0, S0, S16
45B650:  VCMP.F32        S0, #0.0
45B654:  VMRS            APSR_nzcv, FPSCR
45B658:  BEQ             loc_45B692
45B65A:  VLDR            S2, [SP,#0xB0+var_88]
45B65E:  LDRB.W          R2, [R8,#3]
45B662:  VCMP.F32        S2, #0.0
45B666:  VMRS            APSR_nzcv, FPSCR
45B66A:  BNE.W           loc_45AEF4
45B66E:  MOV             R1, R4
45B670:  MOVS            R3, #0
45B672:  SUB.W           R4, R7, #-var_55
45B676:  STRB            R2, [R4,R3]
45B678:  ADD.W           R2, LR, R3,LSL#2
45B67C:  STR.W           R12, [R2,#4]
45B680:  MOV             R4, R1
45B682:  ADD.W           R2, LR, R3,LSL#2
45B686:  VLDR            S2, [R2]
45B68A:  VADD.F32        S0, S0, S2
45B68E:  VSTR            S0, [R2]
45B692:  VLDR            S0, [R5]
45B696:  VMUL.F32        S0, S0, S18
45B69A:  VCMP.F32        S0, #0.0
45B69E:  VMRS            APSR_nzcv, FPSCR
45B6A2:  BEQ             loc_45B6DE
45B6A4:  LDR             R2, [SP,#0xB0+var_90]
45B6A6:  VLDR            S2, [SP,#0xB0+var_88]
45B6AA:  LDRB.W          R2, [R2,R11]
45B6AE:  VCMP.F32        S2, #0.0
45B6B2:  VMRS            APSR_nzcv, FPSCR
45B6B6:  BNE.W           loc_45AF00
45B6BA:  MOV             R1, R4
45B6BC:  MOVS            R3, #0
45B6BE:  SUB.W           R4, R7, #-var_55
45B6C2:  STRB            R2, [R4,R3]
45B6C4:  ADD.W           R2, LR, R3,LSL#2
45B6C8:  STR.W           R12, [R2,#4]
45B6CC:  MOV             R4, R1
45B6CE:  ADD.W           R2, LR, R3,LSL#2
45B6D2:  VLDR            S2, [R2]
45B6D6:  VADD.F32        S0, S0, S2
45B6DA:  VSTR            S0, [R2]
45B6DE:  VLDR            S0, [R5,#4]
45B6E2:  LDR             R2, [SP,#0xB0+var_90]
45B6E4:  VMUL.F32        S0, S0, S18
45B6E8:  ADD.W           R12, R2, R11
45B6EC:  VCMP.F32        S0, #0.0
45B6F0:  VMRS            APSR_nzcv, FPSCR
45B6F4:  BEQ             loc_45B72C
45B6F6:  VLDR            S2, [SP,#0xB0+var_88]
45B6FA:  LDRB.W          R3, [R12,#1]
45B6FE:  VCMP.F32        S2, #0.0
45B702:  VMRS            APSR_nzcv, FPSCR
45B706:  BNE.W           loc_45AF0C
45B70A:  MOVS            R4, #0
45B70C:  SUB.W           R2, R7, #-var_55
45B710:  STRB            R3, [R2,R4]
45B712:  ADD.W           R3, LR, R4,LSL#2
45B716:  MOVS            R2, #0
45B718:  STR             R2, [R3,#4]
45B71A:  ADD.W           R3, LR, R4,LSL#2
45B71E:  LDR             R4, [SP,#0xB0+var_AC]
45B720:  VLDR            S2, [R3]
45B724:  VADD.F32        S0, S0, S2
45B728:  VSTR            S0, [R3]
45B72C:  VLDR            S0, [R5,#8]
45B730:  VMUL.F32        S0, S0, S18
45B734:  VCMP.F32        S0, #0.0
45B738:  VMRS            APSR_nzcv, FPSCR
45B73C:  BEQ             loc_45B774
45B73E:  VLDR            S2, [SP,#0xB0+var_88]
45B742:  LDRB.W          R3, [R12,#2]
45B746:  VCMP.F32        S2, #0.0
45B74A:  VMRS            APSR_nzcv, FPSCR
45B74E:  BNE.W           loc_45AF1A
45B752:  MOVS            R4, #0
45B754:  SUB.W           R2, R7, #-var_55
45B758:  STRB            R3, [R2,R4]
45B75A:  ADD.W           R3, LR, R4,LSL#2
45B75E:  MOVS            R2, #0
45B760:  STR             R2, [R3,#4]
45B762:  ADD.W           R3, LR, R4,LSL#2
45B766:  LDR             R4, [SP,#0xB0+var_AC]
45B768:  VLDR            S2, [R3]
45B76C:  VADD.F32        S0, S0, S2
45B770:  VSTR            S0, [R3]
45B774:  VLDR            S0, [R5,#0xC]
45B778:  VMUL.F32        S0, S0, S18
45B77C:  VCMP.F32        S0, #0.0
45B780:  VMRS            APSR_nzcv, FPSCR
45B784:  BEQ             loc_45B7C6
45B786:  VLDR            S2, [SP,#0xB0+var_88]
45B78A:  LDRB.W          R2, [R12,#3]
45B78E:  VCMP.F32        S2, #0.0
45B792:  VMRS            APSR_nzcv, FPSCR
45B796:  BNE.W           loc_45AF28
45B79A:  MOV             R1, LR
45B79C:  MOV             LR, R4
45B79E:  MOVS            R3, #0
45B7A0:  MOV.W           R12, #0
45B7A4:  SUB.W           R4, R7, #-var_55
45B7A8:  STRB            R2, [R4,R3]
45B7AA:  ADD.W           R2, R1, R3,LSL#2
45B7AE:  STR.W           R12, [R2,#4]
45B7B2:  MOV             R4, LR
45B7B4:  MOV             LR, R1
45B7B6:  ADD.W           R2, LR, R3,LSL#2
45B7BA:  VLDR            S2, [R2]
45B7BE:  VADD.F32        S0, S0, S2
45B7C2:  VSTR            S0, [R2]
45B7C6:  LDRB.W          R2, [R7,#var_55]
45B7CA:  STRB.W          R2, [R8]
45B7CE:  LDR             R2, [SP,#0xB0+var_88]
45B7D0:  STR.W           R2, [R4,R11,LSL#2]
45B7D4:  LDRB.W          R2, [R7,#var_54]
45B7D8:  STRB.W          R2, [R8,#1]
45B7DC:  LDR             R2, [SP,#0xB0+var_84]
45B7DE:  STR             R2, [R0,#4]
45B7E0:  LDRB.W          R2, [R7,#var_53]
45B7E4:  STRB.W          R2, [R8,#2]
45B7E8:  LDR             R2, [SP,#0xB0+var_80]
45B7EA:  STR             R2, [R0,#8]
45B7EC:  LDRB.W          R2, [R7,#var_52]
45B7F0:  STRB.W          R2, [R8,#3]
45B7F4:  LDR             R1, [SP,#0xB0+var_7C]
45B7F6:  STR             R1, [R0,#0xC]
45B7F8:  VLDR            S0, [SP,#0xB0+var_78]
45B7FC:  VCMP.F32        S0, #0.0
45B800:  VMRS            APSR_nzcv, FPSCR
45B804:  BEQ             loc_45B852
45B806:  VLDR            S0, [SP,#0xB0+var_88]
45B80A:  VLDR            S2, [SP,#0xB0+var_84]
45B80E:  VLDR            S4, [SP,#0xB0+var_80]
45B812:  VADD.F32        S0, S0, S2
45B816:  VLDR            S6, [SP,#0xB0+var_7C]
45B81A:  VLDR            S2, [R0]
45B81E:  VADD.F32        S0, S0, S4
45B822:  VMOV            S4, R1
45B826:  VADD.F32        S0, S0, S6
45B82A:  VDIV.F32        S2, S2, S0
45B82E:  VSTR            S2, [R0]
45B832:  VLDR            S2, [R0,#4]
45B836:  VDIV.F32        S2, S2, S0
45B83A:  VSTR            S2, [R0,#4]
45B83E:  VLDR            S2, [R0,#8]
45B842:  VDIV.F32        S2, S2, S0
45B846:  VDIV.F32        S0, S4, S0
45B84A:  VSTR            S2, [R0,#8]
45B84E:  VSTR            S0, [R0,#0xC]
45B852:  LDR             R0, [SP,#0xB0+var_94]
45B854:  ADD.W           R9, R9, #8
45B858:  LDR             R1, [SP,#0xB0+var_8C]
45B85A:  ADD.W           R10, R10, #8
45B85E:  ADDS            R6, #0xC
45B860:  ADD.W           R11, R11, #4
45B864:  LDR             R0, [R0,#0x14]
45B866:  ADDS            R1, #1
45B868:  ADDS            R5, #0x10
45B86A:  CMP             R1, R0
45B86C:  BLT.W           loc_45B48A
45B870:  LDR.W           R11, [SP,#0xB0+var_60]
45B874:  LDR             R0, [SP,#0xB0+var_94]
45B876:  BLX             j__Z16RpGeometryUnlockP10RpGeometry; RpGeometryUnlock(RpGeometry *)
45B87A:  MOV             R0, R11
45B87C:  BLX             j__Z17_rpGeometryAddRefP10RpGeometry; _rpGeometryAddRef(RpGeometry *)
45B880:  LDR             R0, =(__stack_chk_guard_ptr - 0x45B888)
45B882:  LDR             R1, [SP,#0xB0+var_4C]
45B884:  ADD             R0, PC; __stack_chk_guard_ptr
45B886:  LDR             R0, [R0]; __stack_chk_guard
45B888:  LDR             R0, [R0]
45B88A:  SUBS            R0, R0, R1
45B88C:  ITTTT EQ
45B88E:  MOVEQ           R0, R11
45B890:  ADDEQ           SP, SP, #0x68 ; 'h'
45B892:  VPOPEQ          {D8-D12}
45B896:  ADDEQ           SP, SP, #4
45B898:  ITT EQ
45B89A:  POPEQ.W         {R8-R11}
45B89E:  POPEQ           {R4-R7,PC}
45B8A0:  BLX             __stack_chk_fail
