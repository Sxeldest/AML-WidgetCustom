; =========================================================
; Game Engine Function: alSourceQueueBuffers
; Address            : 0x25AE18 - 0x25B36C
; =========================================================

25AE18:  PUSH            {R4-R7,LR}
25AE1A:  ADD             R7, SP, #0xC
25AE1C:  PUSH.W          {R8-R11}
25AE20:  SUB             SP, SP, #0x4C
25AE22:  MOV             R10, R1
25AE24:  CMP.W           R10, #0
25AE28:  STR             R2, [SP,#0x68+var_24]
25AE2A:  STR             R0, [SP,#0x68+var_64]
25AE2C:  BEQ.W           loc_25B21E
25AE30:  BLX             j_GetContextRef
25AE34:  CMP             R0, #0
25AE36:  STR             R0, [SP,#0x68+var_30]
25AE38:  BEQ.W           loc_25B21E
25AE3C:  LDR             R0, [SP,#0x68+var_30]
25AE3E:  MOV.W           R11, #0
25AE42:  MOVS            R5, #1
25AE44:  MOVS            R4, #0
25AE46:  ADD.W           R6, R0, #0x50 ; 'P'
25AE4A:  ADD.W           R1, R0, #8
25AE4E:  LDR.W           R0, =(CalcNonAttnSourceParams_ptr - 0x25AE58)
25AE52:  MOVS            R2, #0
25AE54:  ADD             R0, PC; CalcNonAttnSourceParams_ptr
25AE56:  LDR             R0, [R0]; CalcNonAttnSourceParams
25AE58:  STR             R0, [SP,#0x68+var_60]
25AE5A:  LDR.W           R0, =(TrapALError_ptr - 0x25AE62)
25AE5E:  ADD             R0, PC; TrapALError_ptr
25AE60:  LDR             R0, [R0]; TrapALError
25AE62:  STR             R0, [SP,#0x68+var_50]
25AE64:  LDR.W           R0, =(TrapALError_ptr - 0x25AE6C)
25AE68:  ADD             R0, PC; TrapALError_ptr
25AE6A:  LDR             R0, [R0]; TrapALError
25AE6C:  STR             R0, [SP,#0x68+var_54]
25AE6E:  MOVS            R0, #0
25AE70:  STRD.W          R10, R6, [SP,#0x68+var_44]
25AE74:  STR             R1, [SP,#0x68+var_68]
25AE76:  CMP             R2, #0
25AE78:  BNE.W           loc_25B334
25AE7C:  CMP.W           R10, #0xFFFFFFFF
25AE80:  BLE.W           loc_25B278
25AE84:  STR             R0, [SP,#0x68+var_48]
25AE86:  LDR             R0, [SP,#0x68+var_30]
25AE88:  LDR.W           R9, [R0,#0x88]
25AE8C:  MOV             R0, R1
25AE8E:  LDR             R1, [SP,#0x68+var_64]
25AE90:  BLX             j_LookupUIntMapKey
25AE94:  MOV             R8, R0
25AE96:  CMP.W           R8, #0
25AE9A:  BEQ.W           loc_25B2B8
25AE9E:  STR             R4, [SP,#0x68+var_28]
25AEA0:  MOVW            R1, #:lower16:(elf_hash_chain+0x6044)
25AEA4:  LDR             R0, [SP,#0x68+var_30]
25AEA6:  MOVT            R1, #:upper16:(elf_hash_chain+0x6044)
25AEAA:  MOV             R4, R0
25AEAC:  LDR.W           R0, [R0,#0x88]
25AEB0:  LDR             R1, [R0,R1]
25AEB2:  LDR             R1, [R1,#0x2C]
25AEB4:  BLX             R1
25AEB6:  LDR.W           R0, [R8,#0x7C]
25AEBA:  MOVW            R1, #0x1028
25AEBE:  CMP             R0, R1
25AEC0:  BEQ.W           loc_25B2E8
25AEC4:  LDR.W           R0, [R8,#0x90]
25AEC8:  LDR             R4, [SP,#0x68+var_28]
25AECA:  CMP             R0, #0
25AECC:  MOV             R2, R0
25AECE:  BEQ             loc_25AEDA
25AED0:  LDR             R3, [R2]
25AED2:  CBNZ            R3, loc_25AEDE
25AED4:  LDR             R2, [R2,#4]
25AED6:  CMP             R2, #0
25AED8:  BNE             loc_25AED0
25AEDA:  MOVS            R2, #0
25AEDC:  MOVS            R3, #0
25AEDE:  CMP.W           R10, #1
25AEE2:  STR             R3, [SP,#0x68+var_34]
25AEE4:  STR.W           R8, [SP,#0x68+var_4C]
25AEE8:  BLT.W           loc_25B368
25AEEC:  MOVW            R0, #0x5984
25AEF0:  MOVS            R1, #0
25AEF2:  ADD             R0, R8
25AEF4:  STR             R0, [SP,#0x68+var_58]
25AEF6:  ADD.W           R0, R9, #0x40 ; '@'
25AEFA:  STR             R0, [SP,#0x68+var_38]
25AEFC:  ADD.W           R0, R8, #0x5980
25AF00:  STR             R0, [SP,#0x68+var_5C]
25AF02:  MOVS            R0, #0
25AF04:  STR             R0, [SP,#0x68+var_3C]
25AF06:  LDR             R0, [SP,#0x68+var_24]
25AF08:  MOV             R8, R2
25AF0A:  STR             R1, [SP,#0x68+var_20]
25AF0C:  LDR.W           R1, [R0,R1,LSL#2]
25AF10:  CBZ             R1, loc_25AF6E
25AF12:  LDR             R0, [SP,#0x68+var_38]
25AF14:  BLX             j_LookupUIntMapKey
25AF18:  MOV             R9, R0
25AF1A:  CMP.W           R9, #0
25AF1E:  BNE             loc_25AF72
25AF20:  LDR             R0, [SP,#0x68+var_30]
25AF22:  MOV             R1, #0x161AC
25AF2A:  LDR.W           R0, [R0,#0x88]
25AF2E:  LDR             R1, [R0,R1]
25AF30:  LDR             R1, [R1,#0x30]
25AF32:  BLX             R1
25AF34:  LDR             R0, [SP,#0x68+var_54]
25AF36:  LDRB            R0, [R0]
25AF38:  CMP             R0, #0
25AF3A:  ITT NE
25AF3C:  MOVNE           R0, #5; sig
25AF3E:  BLXNE           raise
25AF42:  LDREX.W         R0, [R6]
25AF46:  MOVW            R1, #0xA001
25AF4A:  MOV             R2, R8
25AF4C:  CBNZ            R0, loc_25AF60
25AF4E:  DMB.W           ISH
25AF52:  STREX.W         R0, R1, [R6]
25AF56:  CBZ             R0, loc_25AF64
25AF58:  LDREX.W         R0, [R6]
25AF5C:  CMP             R0, #0
25AF5E:  BEQ             loc_25AF52
25AF60:  CLREX.W
25AF64:  MOVW            R0, #0xA001
25AF68:  DMB.W           ISH
25AF6C:  B               loc_25B15C
25AF6E:  MOV.W           R9, #0
25AF72:  MOVS            R0, #0xC; byte_count
25AF74:  BLX             malloc
25AF78:  CMP             R4, #0
25AF7A:  BEQ.W           loc_25B0BE
25AF7E:  MOV             R2, R8
25AF80:  STR             R0, [R2,#4]
25AF82:  STR.W           R9, [R0]
25AF86:  LDR             R0, [R2,#4]
25AF88:  STR.W           R11, [R0,#4]
25AF8C:  LDR             R0, [R2,#4]
25AF8E:  STR             R2, [R0,#8]
25AF90:  LDR             R2, [R2,#4]
25AF92:  CMP.W           R9, #0
25AF96:  BEQ.W           loc_25B0D4
25AF9A:  ADD.W           R0, R9, #0x2C ; ','
25AF9E:  STR             R2, [SP,#0x68+var_2C]
25AFA0:  DMB.W           ISH
25AFA4:  LDREX.W         R1, [R0]
25AFA8:  ADDS            R1, #1
25AFAA:  STREX.W         R2, R1, [R0]
25AFAE:  CMP             R2, #0
25AFB0:  BNE             loc_25AFA4
25AFB2:  ADD.W           R10, R9, #0x3C ; '<'
25AFB6:  DMB.W           ISH
25AFBA:  DMB.W           ISH
25AFBE:  LDREX.W         R0, [R10]
25AFC2:  STREX.W         R1, R5, [R10]
25AFC6:  CMP             R1, #0
25AFC8:  BNE             loc_25AFBE
25AFCA:  B               loc_25AFE0
25AFCC:  BLX             sched_yield
25AFD0:  DMB.W           ISH
25AFD4:  LDREX.W         R0, [R10]
25AFD8:  STREX.W         R1, R5, [R10]
25AFDC:  CMP             R1, #0
25AFDE:  BNE             loc_25AFD4
25AFE0:  CMP             R0, #1
25AFE2:  DMB.W           ISH
25AFE6:  BEQ             loc_25AFCC
25AFE8:  ADD.W           R6, R9, #0x38 ; '8'
25AFEC:  DMB.W           ISH
25AFF0:  LDREX.W         R0, [R6]
25AFF4:  STREX.W         R1, R5, [R6]
25AFF8:  CMP             R1, #0
25AFFA:  BNE             loc_25AFF0
25AFFC:  B               loc_25B012
25AFFE:  BLX             sched_yield
25B002:  DMB.W           ISH
25B006:  LDREX.W         R0, [R6]
25B00A:  STREX.W         R1, R5, [R6]
25B00E:  CMP             R1, #0
25B010:  BNE             loc_25B006
25B012:  CMP             R0, #1
25B014:  DMB.W           ISH
25B018:  BEQ             loc_25AFFE
25B01A:  ADD.W           R8, R9, #0x30 ; '0'
25B01E:  STR             R4, [SP,#0x68+var_28]
25B020:  DMB.W           ISH
25B024:  LDREX.W         R0, [R8]
25B028:  ADDS            R1, R0, #1
25B02A:  STREX.W         R2, R1, [R8]
25B02E:  CMP             R2, #0
25B030:  BNE             loc_25B024
25B032:  CMP             R0, #0
25B034:  DMB.W           ISH
25B038:  BNE             loc_25B06C
25B03A:  ADD.W           R4, R9, #0x40 ; '@'
25B03E:  DMB.W           ISH
25B042:  LDREX.W         R0, [R4]
25B046:  STREX.W         R1, R5, [R4]
25B04A:  CMP             R1, #0
25B04C:  BNE             loc_25B042
25B04E:  B               loc_25B064
25B050:  BLX             sched_yield
25B054:  DMB.W           ISH
25B058:  LDREX.W         R0, [R4]
25B05C:  STREX.W         R1, R5, [R4]
25B060:  CMP             R1, #0
25B062:  BNE             loc_25B058
25B064:  CMP             R0, #1
25B066:  DMB.W           ISH
25B06A:  BEQ             loc_25B050
25B06C:  DMB.W           ISH
25B070:  LDREX.W         R0, [R6]
25B074:  STREX.W         R0, R11, [R6]
25B078:  CMP             R0, #0
25B07A:  BNE             loc_25B070
25B07C:  DMB.W           ISH
25B080:  DMB.W           ISH
25B084:  LDR             R2, [SP,#0x68+var_34]
25B086:  LDREX.W         R0, [R10]
25B08A:  STREX.W         R0, R11, [R10]
25B08E:  CMP             R0, #0
25B090:  BNE             loc_25B086
25B092:  CMP             R2, #0
25B094:  DMB.W           ISH
25B098:  BEQ             loc_25B162
25B09A:  LDR.W           R0, [R9,#4]
25B09E:  LDR             R1, [R2,#4]
25B0A0:  CMP             R1, R0
25B0A2:  BNE             loc_25B0D8
25B0A4:  LDR.W           R0, [R9,#0x18]
25B0A8:  LDR             R1, [R2,#0x18]
25B0AA:  CMP             R1, R0
25B0AC:  BNE             loc_25B0D8
25B0AE:  LDR.W           R0, [R9,#0x1C]
25B0B2:  LDR             R1, [R2,#0x1C]
25B0B4:  CMP             R1, R0
25B0B6:  BNE             loc_25B0D8
25B0B8:  LDRD.W          R10, R6, [SP,#0x68+var_44]
25B0BC:  B               loc_25B1C0
25B0BE:  STRD.W          R9, R11, [R0]
25B0C2:  MOV             R4, R0
25B0C4:  STR.W           R11, [R0,#8]
25B0C8:  MOV             R2, R0
25B0CA:  STR             R0, [SP,#0x68+var_48]
25B0CC:  CMP.W           R9, #0
25B0D0:  BNE.W           loc_25AF9A
25B0D4:  MOVS            R0, #0x17
25B0D6:  B               loc_25B1F8
25B0D8:  DMB.W           ISH
25B0DC:  LDREX.W         R0, [R8]
25B0E0:  SUBS            R1, R0, #1
25B0E2:  STREX.W         R2, R1, [R8]
25B0E6:  CMP             R2, #0
25B0E8:  BNE             loc_25B0DC
25B0EA:  DMB.W           ISH
25B0EE:  CMP             R0, #1
25B0F0:  LDR             R4, [SP,#0x68+var_28]
25B0F2:  LDRD.W          R10, R6, [SP,#0x68+var_44]
25B0F6:  BNE             loc_25B110
25B0F8:  ADD.W           R0, R9, #0x40 ; '@'
25B0FC:  DMB.W           ISH
25B100:  LDREX.W         R1, [R0]
25B104:  STREX.W         R1, R11, [R0]
25B108:  CMP             R1, #0
25B10A:  BNE             loc_25B100
25B10C:  DMB.W           ISH
25B110:  LDR             R0, [SP,#0x68+var_30]
25B112:  MOV             R1, #0x161AC
25B11A:  LDR.W           R0, [R0,#0x88]
25B11E:  LDR             R1, [R0,R1]
25B120:  LDR             R1, [R1,#0x30]
25B122:  BLX             R1
25B124:  LDR             R0, [SP,#0x68+var_50]
25B126:  LDRB            R0, [R0]
25B128:  CMP             R0, #0
25B12A:  ITT NE
25B12C:  MOVNE           R0, #5; sig
25B12E:  BLXNE           raise
25B132:  LDREX.W         R0, [R6]
25B136:  MOVW            R1, #0xA004
25B13A:  LDR             R2, [SP,#0x68+var_2C]
25B13C:  CBNZ            R0, loc_25B150
25B13E:  DMB.W           ISH
25B142:  STREX.W         R0, R1, [R6]
25B146:  CBZ             R0, loc_25B154
25B148:  LDREX.W         R0, [R6]
25B14C:  CMP             R0, #0
25B14E:  BEQ             loc_25B142
25B150:  CLREX.W
25B154:  DMB.W           ISH
25B158:  MOVW            R0, #0xA004
25B15C:  STR             R0, [SP,#0x68+var_3C]
25B15E:  MOVS            R0, #4
25B160:  B               loc_25B1F8
25B162:  LDR.W           R0, [R9,#0x10]
25B166:  SUB.W           R0, R0, #0x1500
25B16A:  CMP             R0, #6
25B16C:  BHI             loc_25B178
25B16E:  LDR             R1, =(unk_60A680 - 0x25B174)
25B170:  ADD             R1, PC; unk_60A680
25B172:  LDR.W           R0, [R1,R0,LSL#2]
25B176:  B               loc_25B17A
25B178:  MOVS            R0, #0
25B17A:  LDRD.W          R10, R6, [SP,#0x68+var_44]
25B17E:  LDR             R1, [SP,#0x68+var_4C]
25B180:  STR.W           R0, [R1,#0x9C]
25B184:  LDR.W           R0, [R9,#0x14]
25B188:  SUB.W           R0, R0, #0x1400
25B18C:  CMP             R0, #6
25B18E:  BHI             loc_25B19C
25B190:  LDR             R1, =(unk_60A580 - 0x25B196)
25B192:  ADD             R1, PC; unk_60A580
25B194:  LDR.W           R0, [R1,R0,LSL#2]
25B198:  LDR             R1, [SP,#0x68+var_4C]
25B19A:  B               loc_25B19E
25B19C:  MOVS            R0, #0
25B19E:  STR.W           R0, [R1,#0xA0]
25B1A2:  LDR             R1, =(CalcSourceParams_ptr - 0x25B1AC)
25B1A4:  LDR.W           R0, [R9,#0x10]
25B1A8:  ADD             R1, PC; CalcSourceParams_ptr
25B1AA:  CMP.W           R0, #0x1500
25B1AE:  LDR             R0, [SP,#0x68+var_60]
25B1B0:  IT EQ
25B1B2:  LDREQ           R0, [R1]; CalcSourceParams
25B1B4:  LDR             R1, [SP,#0x68+var_58]
25B1B6:  STR             R0, [R1]
25B1B8:  LDR             R0, [SP,#0x68+var_5C]
25B1BA:  STR             R5, [R0]
25B1BC:  STR.W           R9, [SP,#0x68+var_34]
25B1C0:  DMB.W           ISH
25B1C4:  LDREX.W         R0, [R8]
25B1C8:  SUBS            R1, R0, #1
25B1CA:  STREX.W         R2, R1, [R8]
25B1CE:  CMP             R2, #0
25B1D0:  BNE             loc_25B1C4
25B1D2:  CMP             R0, #1
25B1D4:  DMB.W           ISH
25B1D8:  BNE             loc_25B1F2
25B1DA:  ADD.W           R0, R9, #0x40 ; '@'
25B1DE:  DMB.W           ISH
25B1E2:  LDREX.W         R1, [R0]
25B1E6:  STREX.W         R1, R11, [R0]
25B1EA:  CMP             R1, #0
25B1EC:  BNE             loc_25B1E2
25B1EE:  DMB.W           ISH
25B1F2:  MOVS            R0, #0
25B1F4:  LDRD.W          R2, R4, [SP,#0x68+var_2C]
25B1F8:  AND.W           R1, R0, #0x1F
25B1FC:  CMP             R1, #0x17
25B1FE:  IT NE
25B200:  CMPNE           R1, #0
25B202:  BNE             loc_25B210
25B204:  LDR             R1, [SP,#0x68+var_20]
25B206:  ADDS            R1, #1
25B208:  CMP             R1, R10
25B20A:  BLT.W           loc_25AF06
25B20E:  B               loc_25B226
25B210:  CMP             R0, #0
25B212:  LDR             R0, [SP,#0x68+var_48]
25B214:  LDR             R1, [SP,#0x68+var_68]
25B216:  LDR             R2, [SP,#0x68+var_3C]
25B218:  BNE.W           loc_25AE76
25B21C:  B               loc_25B268
25B21E:  ADD             SP, SP, #0x4C ; 'L'
25B220:  POP.W           {R8-R11}
25B224:  POP             {R4-R7,PC}
25B226:  LDR             R2, [SP,#0x68+var_4C]
25B228:  LDR.W           R0, [R2,#0x90]
25B22C:  MOVW            R1, #0x1029
25B230:  CMP             R0, #0
25B232:  STR             R1, [R2,#0x7C]
25B234:  BEQ             loc_25B246
25B236:  MOV             R1, R0
25B238:  LDR             R0, [R1,#4]
25B23A:  CMP             R0, #0
25B23C:  BNE             loc_25B236
25B23E:  STR             R1, [R4,#8]
25B240:  STR             R4, [R1,#4]
25B242:  LDR             R2, [SP,#0x68+var_4C]
25B244:  B               loc_25B24A
25B246:  STR.W           R4, [R2,#0x90]
25B24A:  LDR.W           R0, [R2,#0x94]
25B24E:  MOV             R1, #0x161AC
25B256:  ADD             R0, R10
25B258:  STR.W           R0, [R2,#0x94]
25B25C:  LDR             R0, [SP,#0x68+var_30]
25B25E:  LDR.W           R0, [R0,#0x88]
25B262:  LDR             R1, [R0,R1]
25B264:  LDR             R1, [R1,#0x30]
25B266:  BLX             R1
25B268:  LDR             R0, [SP,#0x68+var_30]
25B26A:  ADD             SP, SP, #0x4C ; 'L'
25B26C:  POP.W           {R8-R11}
25B270:  POP.W           {R4-R7,LR}
25B274:  B.W             ALCcontext_DecRef
25B278:  MOV             R5, R0
25B27A:  LDR             R0, =(TrapALError_ptr - 0x25B280)
25B27C:  ADD             R0, PC; TrapALError_ptr
25B27E:  LDR             R0, [R0]; TrapALError
25B280:  LDRB            R0, [R0]
25B282:  CMP             R0, #0
25B284:  ITT NE
25B286:  MOVNE           R0, #5; sig
25B288:  BLXNE           raise
25B28C:  LDREX.W         R0, [R6]
25B290:  CBNZ            R0, loc_25B2A8
25B292:  MOVW            R0, #0xA003
25B296:  DMB.W           ISH
25B29A:  STREX.W         R1, R0, [R6]
25B29E:  CBZ             R1, loc_25B2AC
25B2A0:  LDREX.W         R1, [R6]
25B2A4:  CMP             R1, #0
25B2A6:  BEQ             loc_25B29A
25B2A8:  CLREX.W
25B2AC:  MOV             R0, R5
25B2AE:  DMB.W           ISH
25B2B2:  CMP             R4, #0
25B2B4:  BNE             loc_25B338
25B2B6:  B               loc_25B268
25B2B8:  LDR             R0, =(TrapALError_ptr - 0x25B2BE)
25B2BA:  ADD             R0, PC; TrapALError_ptr
25B2BC:  LDR             R0, [R0]; TrapALError
25B2BE:  LDRB            R0, [R0]
25B2C0:  CMP             R0, #0
25B2C2:  ITT NE
25B2C4:  MOVNE           R0, #5; sig
25B2C6:  BLXNE           raise
25B2CA:  LDREX.W         R0, [R6]
25B2CE:  CBNZ            R0, loc_25B32A
25B2D0:  MOVW            R0, #0xA001
25B2D4:  DMB.W           ISH
25B2D8:  STREX.W         R1, R0, [R6]
25B2DC:  CBZ             R1, loc_25B32E
25B2DE:  LDREX.W         R1, [R6]
25B2E2:  CMP             R1, #0
25B2E4:  BEQ             loc_25B2D8
25B2E6:  B               loc_25B32A
25B2E8:  LDR.W           R0, [R4,#0x88]
25B2EC:  MOV             R1, #0x161AC
25B2F4:  LDR             R1, [R0,R1]
25B2F6:  LDR             R1, [R1,#0x30]
25B2F8:  BLX             R1
25B2FA:  LDR             R0, =(TrapALError_ptr - 0x25B300)
25B2FC:  ADD             R0, PC; TrapALError_ptr
25B2FE:  LDR             R0, [R0]; TrapALError
25B300:  LDRB            R0, [R0]
25B302:  CMP             R0, #0
25B304:  ITT NE
25B306:  MOVNE           R0, #5; sig
25B308:  BLXNE           raise
25B30C:  LDREX.W         R0, [R6]
25B310:  LDR             R4, [SP,#0x68+var_28]
25B312:  CBNZ            R0, loc_25B32A
25B314:  MOVW            R0, #0xA004
25B318:  DMB.W           ISH
25B31C:  STREX.W         R1, R0, [R6]
25B320:  CBZ             R1, loc_25B32E
25B322:  LDREX.W         R1, [R6]
25B326:  CMP             R1, #0
25B328:  BEQ             loc_25B31C
25B32A:  CLREX.W
25B32E:  DMB.W           ISH
25B332:  LDR             R0, [SP,#0x68+var_48]
25B334:  CMP             R4, #0
25B336:  BEQ             loc_25B268
25B338:  LDRD.W          R1, R4, [R4]
25B33C:  CBZ             R1, loc_25B35C
25B33E:  MOV             R3, R0
25B340:  ADD.W           R0, R1, #0x2C ; ','
25B344:  DMB.W           ISH
25B348:  LDREX.W         R1, [R0]
25B34C:  SUBS            R1, #1
25B34E:  STREX.W         R2, R1, [R0]
25B352:  CMP             R2, #0
25B354:  BNE             loc_25B348
25B356:  MOV             R0, R3; p
25B358:  DMB.W           ISH
25B35C:  BLX             free
25B360:  CMP             R4, #0
25B362:  MOV             R0, R4
25B364:  BNE             loc_25B338
25B366:  B               loc_25B268
25B368:  MOV             R2, R8
25B36A:  B               loc_25B22C
