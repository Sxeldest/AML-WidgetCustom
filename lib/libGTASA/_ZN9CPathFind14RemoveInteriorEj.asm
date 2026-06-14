; =========================================================
; Game Engine Function: _ZN9CPathFind14RemoveInteriorEj
; Address            : 0x31AF54 - 0x31B33C
; =========================================================

31AF54:  PUSH            {R4-R7,LR}
31AF56:  ADD             R7, SP, #0xC
31AF58:  PUSH.W          {R8-R11}
31AF5C:  SUB             SP, SP, #0x5C
31AF5E:  MOV             R5, R0
31AF60:  MOVW            R3, #0x3588
31AF64:  MOVS            R6, #0
31AF66:  STR             R1, [SP,#0x78+var_74]
31AF68:  ADD.W           R0, R5, R6,LSL#2
31AF6C:  LDR             R2, [R0,R3]
31AF6E:  CMP             R2, R1
31AF70:  BNE.W           loc_31B32C
31AF74:  ADD             R0, R3
31AF76:  MOV.W           R1, #0xFFFFFFFF
31AF7A:  STR             R1, [R0]
31AF7C:  ADD.W           R0, R6, #0x40 ; '@'
31AF80:  MOVS            R1, #0
31AF82:  STR             R6, [SP,#0x78+var_70]
31AF84:  ADD.W           R4, R5, R1,LSL#2
31AF88:  STR             R1, [SP,#0x78+var_28]
31AF8A:  LDR.W           R1, [R4,#0x804]
31AF8E:  CMP             R1, #0
31AF90:  BEQ.W           loc_31B2C8
31AF94:  MOVW            R2, #0x1104
31AF98:  LDR.W           R3, [R4,#0xFE4]
31AF9C:  LDR             R2, [R4,R2]
31AF9E:  CMP             R2, R3
31AFA0:  BGE.W           loc_31B2C8
31AFA4:  LDR             R3, [SP,#0x78+var_28]
31AFA6:  ADDW            LR, R4, #0x804
31AFAA:  ADDW            R8, R4, #0xFE4
31AFAE:  ADDW            R11, R4, #0xA44
31AFB2:  ADD.W           R6, R5, R3,LSL#6
31AFB6:  MOVW            R3, #0x25BC
31AFBA:  ADD             R3, R6
31AFBC:  STR             R3, [SP,#0x78+var_68]
31AFBE:  MOVW            R3, #0x25B8
31AFC2:  STR             R6, [SP,#0x78+var_30]
31AFC4:  ADD             R3, R6
31AFC6:  STR             R3, [SP,#0x78+var_64]
31AFC8:  MOVW            R3, #0x25B4
31AFCC:  ADD             R3, R6
31AFCE:  STR             R3, [SP,#0x78+var_60]
31AFD0:  MOVW            R3, #0x25B0
31AFD4:  ADD             R3, R6
31AFD6:  STR             R3, [SP,#0x78+var_5C]
31AFD8:  MOVW            R3, #0x25AC
31AFDC:  ADD             R3, R6
31AFDE:  STR             R3, [SP,#0x78+var_58]
31AFE0:  MOVW            R3, #0x25A8
31AFE4:  ADD             R3, R6
31AFE6:  STR             R3, [SP,#0x78+var_54]
31AFE8:  MOVW            R3, #0x25A4
31AFEC:  ADD             R3, R6
31AFEE:  STR             R3, [SP,#0x78+var_50]
31AFF0:  MOVW            R3, #0x25A0
31AFF4:  ADD             R3, R6
31AFF6:  STR             R3, [SP,#0x78+var_4C]
31AFF8:  MOVW            R3, #0x259C
31AFFC:  ADD             R3, R6
31AFFE:  STR             R3, [SP,#0x78+var_48]
31B000:  MOVW            R3, #0x2598
31B004:  ADD             R3, R6
31B006:  STR             R3, [SP,#0x78+var_44]
31B008:  MOVW            R3, #0x2594
31B00C:  ADD             R3, R6
31B00E:  STR             R3, [SP,#0x78+var_40]
31B010:  MOVW            R3, #0x2590
31B014:  ADD             R3, R6
31B016:  STR             R3, [SP,#0x78+var_3C]
31B018:  MOVW            R3, #0x258C
31B01C:  ADD             R3, R6
31B01E:  STR             R3, [SP,#0x78+var_38]
31B020:  MOVW            R3, #0x2588
31B024:  ADD             R3, R6
31B026:  STR             R3, [SP,#0x78+var_34]
31B028:  MOVW            R3, #0x2584
31B02C:  ADD             R3, R6
31B02E:  STR             R3, [SP,#0x78+var_2C]
31B030:  MOVW            R3, #0x1464
31B034:  ADD.W           R10, R4, R3
31B038:  ADD.W           R3, R6, #0x25C0
31B03C:  STR             R3, [SP,#0x78+var_6C]
31B03E:  STRD.W          R10, R8, [SP,#0x78+var_24]
31B042:  B               loc_31B048
31B044:  LDR.W           R1, [LR]
31B048:  RSB.W           R3, R2, R2,LSL#3
31B04C:  ADD.W           R9, R1, R3,LSL#2
31B050:  LDR.W           R1, [R10]
31B054:  MOV             R12, R9
31B056:  LDRSH.W         R3, [R12,#0x10]!
31B05A:  CMP             R1, R3
31B05C:  BGT.W           loc_31B2BC
31B060:  LDRH.W          R1, [R9,#0x18]!
31B064:  LDRB.W          R6, [R9,#2]
31B068:  ORR.W           R1, R1, R6,LSL#16
31B06C:  TST.W           R1, #0xF
31B070:  BEQ.W           loc_31B2BC
31B074:  MOV             R10, LR
31B076:  UXTH            R3, R3
31B078:  MOV.W           LR, #0
31B07C:  MOVS            R4, #0
31B07E:  MOV.W           R8, #0
31B082:  B               loc_31B088
31B084:  LDRH.W          R3, [R12]
31B088:  LDR.W           R6, [R11]
31B08C:  SXTAH.W         R3, LR, R3
31B090:  LDRH.W          R6, [R6,R3,LSL#2]
31B094:  CMP             R6, R0
31B096:  BNE             loc_31B10E
31B098:  AND.W           R6, R1, #0xF
31B09C:  SUBS            R6, #1
31B09E:  CMP             LR, R6
31B0A0:  BGE             loc_31B0F2
31B0A2:  ADD.W           R1, R5, R3,LSL#2
31B0A6:  LDR.W           R3, [R1,#0xA48]
31B0AA:  STR.W           R3, [R1,#0xA44]
31B0AE:  LDRB.W          R1, [R9,#2]
31B0B2:  LDRH.W          R3, [R9]
31B0B6:  ORR.W           R1, R3, R1,LSL#16
31B0BA:  AND.W           R3, R1, #0xF
31B0BE:  SUBS            R6, R3, #1
31B0C0:  ADD.W           R3, LR, #1
31B0C4:  CMP             R3, R6
31B0C6:  BGE             loc_31B0F2
31B0C8:  LDRSH.W         R1, [R12]
31B0CC:  ADD             R1, R3
31B0CE:  ADDS            R3, #1
31B0D0:  ADD.W           R1, R5, R1,LSL#2
31B0D4:  LDR.W           R6, [R1,#0xA48]
31B0D8:  STR.W           R6, [R1,#0xA44]
31B0DC:  LDRB.W          R1, [R9,#2]
31B0E0:  LDRH.W          R6, [R9]
31B0E4:  ORR.W           R1, R6, R1,LSL#16
31B0E8:  AND.W           R6, R1, #0xF
31B0EC:  SUBS            R6, #1
31B0EE:  CMP             R3, R6
31B0F0:  BLT             loc_31B0C8
31B0F2:  ADD.W           R3, R1, #0xF
31B0F6:  SUB.W           LR, LR, #1
31B0FA:  BFI.W           R1, R3, #0, #4
31B0FE:  STRH.W          R1, [R9]
31B102:  MOV.W           R8, #1
31B106:  LSRS            R3, R1, #0x10
31B108:  STRB.W          R3, [R9,#2]
31B10C:  B               loc_31B11A
31B10E:  CMP             R6, #0x3F ; '?'
31B110:  MOV.W           R3, #0
31B114:  IT HI
31B116:  MOVHI           R3, #1
31B118:  ORRS            R4, R3
31B11A:  ADD.W           LR, LR, #1
31B11E:  AND.W           R3, R1, #0xF
31B122:  CMP             LR, R3
31B124:  BLT             loc_31B084
31B126:  ORN.W           R1, R4, R8
31B12A:  MOV             LR, R10
31B12C:  LDRD.W          R10, R8, [SP,#0x78+var_24]
31B130:  LSLS            R1, R1, #0x1F
31B132:  BNE.W           loc_31B2BC
31B136:  LDRSH.W         R1, [R12]
31B13A:  MOVW            R6, #0xFFFF
31B13E:  LDR.W           R3, [R11]
31B142:  STRH.W          R6, [R3,R1,LSL#2]
31B146:  LDRSH.W         R1, [R12]
31B14A:  LDR.W           R3, [R11]
31B14E:  ADD.W           R1, R3, R1,LSL#2
31B152:  STRH            R6, [R1,#4]
31B154:  LDRSH.W         R1, [R12]
31B158:  LDR.W           R3, [R11]
31B15C:  ADD.W           R1, R3, R1,LSL#2
31B160:  STRH            R6, [R1,#8]
31B162:  LDRSH.W         R1, [R12]
31B166:  LDR.W           R3, [R11]
31B16A:  ADD.W           R1, R3, R1,LSL#2
31B16E:  STRH            R6, [R1,#0xC]
31B170:  LDRSH.W         R1, [R12]
31B174:  LDR.W           R3, [R11]
31B178:  ADD.W           R1, R3, R1,LSL#2
31B17C:  STRH            R6, [R1,#0x10]
31B17E:  LDRSH.W         R1, [R12]
31B182:  LDR.W           R3, [R11]
31B186:  ADD.W           R1, R3, R1,LSL#2
31B18A:  STRH            R6, [R1,#0x14]
31B18C:  LDRSH.W         R1, [R12]
31B190:  LDR.W           R3, [R11]
31B194:  ADD.W           R1, R3, R1,LSL#2
31B198:  STRH            R6, [R1,#0x18]
31B19A:  LDRSH.W         R1, [R12]
31B19E:  LDR.W           R3, [R11]
31B1A2:  ADD.W           R1, R3, R1,LSL#2
31B1A6:  STRH            R6, [R1,#0x1C]
31B1A8:  LDRSH.W         R1, [R12]
31B1AC:  LDR.W           R3, [R11]
31B1B0:  ADD.W           R1, R3, R1,LSL#2
31B1B4:  STRH            R6, [R1,#0x20]
31B1B6:  LDRSH.W         R1, [R12]
31B1BA:  LDR.W           R3, [R11]
31B1BE:  ADD.W           R1, R3, R1,LSL#2
31B1C2:  STRH            R6, [R1,#0x24]
31B1C4:  LDRSH.W         R1, [R12]
31B1C8:  LDR.W           R3, [R11]
31B1CC:  ADD.W           R1, R3, R1,LSL#2
31B1D0:  STRH            R6, [R1,#0x28]
31B1D2:  LDRSH.W         R1, [R12]
31B1D6:  LDR.W           R3, [R11]
31B1DA:  ADD.W           R1, R3, R1,LSL#2
31B1DE:  STRH            R6, [R1,#0x2C]
31B1E0:  LDR             R4, [SP,#0x78+var_2C]
31B1E2:  LDRSH.W         R1, [R12]
31B1E6:  LDR             R3, [R4]
31B1E8:  CMP             R3, R1
31B1EA:  BNE             loc_31B1F0
31B1EC:  MOVS            R1, #0
31B1EE:  B               loc_31B2A4
31B1F0:  LDR             R4, [SP,#0x78+var_34]
31B1F2:  LDR             R3, [R4]
31B1F4:  CMP             R3, R1
31B1F6:  BNE             loc_31B1FC
31B1F8:  MOVS            R1, #1
31B1FA:  B               loc_31B2A4
31B1FC:  LDR             R4, [SP,#0x78+var_38]
31B1FE:  LDR             R3, [R4]
31B200:  CMP             R3, R1
31B202:  BNE             loc_31B208
31B204:  MOVS            R1, #2
31B206:  B               loc_31B2A4
31B208:  LDR             R4, [SP,#0x78+var_3C]
31B20A:  LDR             R3, [R4]
31B20C:  CMP             R3, R1
31B20E:  BNE             loc_31B214
31B210:  MOVS            R1, #3
31B212:  B               loc_31B2A4
31B214:  LDR             R4, [SP,#0x78+var_40]
31B216:  LDR             R3, [R4]
31B218:  CMP             R3, R1
31B21A:  BNE             loc_31B220
31B21C:  MOVS            R1, #4
31B21E:  B               loc_31B2A4
31B220:  LDR             R4, [SP,#0x78+var_44]
31B222:  LDR             R3, [R4]
31B224:  CMP             R3, R1
31B226:  BNE             loc_31B22C
31B228:  MOVS            R1, #5
31B22A:  B               loc_31B2A4
31B22C:  LDR             R4, [SP,#0x78+var_48]
31B22E:  LDR             R3, [R4]
31B230:  CMP             R3, R1
31B232:  BNE             loc_31B238
31B234:  MOVS            R1, #6
31B236:  B               loc_31B2A4
31B238:  LDR             R4, [SP,#0x78+var_4C]
31B23A:  LDR             R3, [R4]
31B23C:  CMP             R3, R1
31B23E:  BNE             loc_31B244
31B240:  MOVS            R1, #7
31B242:  B               loc_31B2A4
31B244:  LDR             R4, [SP,#0x78+var_50]
31B246:  LDR             R3, [R4]
31B248:  CMP             R3, R1
31B24A:  BNE             loc_31B250
31B24C:  MOVS            R1, #8
31B24E:  B               loc_31B2A4
31B250:  LDR             R4, [SP,#0x78+var_54]
31B252:  LDR             R3, [R4]
31B254:  CMP             R3, R1
31B256:  BNE             loc_31B25C
31B258:  MOVS            R1, #9
31B25A:  B               loc_31B2A4
31B25C:  LDR             R4, [SP,#0x78+var_58]
31B25E:  LDR             R3, [R4]
31B260:  CMP             R3, R1
31B262:  BNE             loc_31B268
31B264:  MOVS            R1, #0xA
31B266:  B               loc_31B2A4
31B268:  LDR             R4, [SP,#0x78+var_5C]
31B26A:  LDR             R3, [R4]
31B26C:  CMP             R3, R1
31B26E:  BNE             loc_31B274
31B270:  MOVS            R1, #0xB
31B272:  B               loc_31B2A4
31B274:  LDR             R4, [SP,#0x78+var_60]
31B276:  LDR             R3, [R4]
31B278:  CMP             R3, R1
31B27A:  BNE             loc_31B280
31B27C:  MOVS            R1, #0xC
31B27E:  B               loc_31B2A4
31B280:  LDR             R4, [SP,#0x78+var_64]
31B282:  LDR             R3, [R4]
31B284:  CMP             R3, R1
31B286:  BNE             loc_31B28C
31B288:  MOVS            R1, #0xD
31B28A:  B               loc_31B2A4
31B28C:  LDR             R4, [SP,#0x78+var_68]
31B28E:  LDR             R3, [R4]
31B290:  CMP             R3, R1
31B292:  BNE             loc_31B298
31B294:  MOVS            R1, #0xE
31B296:  B               loc_31B2A4
31B298:  LDR             R3, [SP,#0x78+var_6C]
31B29A:  LDR             R3, [R3]
31B29C:  CMP             R3, R1
31B29E:  BNE             loc_31B2BC
31B2A0:  MOVS            R1, #0xF
31B2A2:  LDR             R4, [SP,#0x78+var_6C]
31B2A4:  LDR             R3, [SP,#0x78+var_30]
31B2A6:  MOVW            R6, #0x1584
31B2AA:  ADD.W           R1, R3, R1,LSL#2
31B2AE:  LDR             R3, [R1,R6]
31B2B0:  STRH.W          R3, [R12]
31B2B4:  MOV.W           R3, #0xFFFFFFFF
31B2B8:  STR             R3, [R1,R6]
31B2BA:  STR             R3, [R4]
31B2BC:  LDR.W           R1, [R8]
31B2C0:  ADDS            R2, #1
31B2C2:  CMP             R2, R1
31B2C4:  BLT.W           loc_31B044
31B2C8:  LDR             R1, [SP,#0x78+var_28]
31B2CA:  ADDS            R1, #1; void *
31B2CC:  CMP             R1, #0x40 ; '@'
31B2CE:  BNE.W           loc_31AF84
31B2D2:  ADD.W           R4, R5, R0,LSL#2
31B2D6:  LDR.W           R0, [R4,#0x804]; this
31B2DA:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
31B2DE:  LDR.W           R0, [R4,#0xA44]; this
31B2E2:  MOVS            R6, #0
31B2E4:  STR.W           R6, [R4,#0x804]
31B2E8:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
31B2EC:  LDR.W           R0, [R4,#0xB64]; this
31B2F0:  STR.W           R6, [R4,#0xA44]
31B2F4:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
31B2F8:  LDR.W           R0, [R4,#0xC84]; this
31B2FC:  STR.W           R6, [R4,#0xB64]
31B300:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
31B304:  MOVW            R0, #0x1104
31B308:  MOVW            R3, #0x3588
31B30C:  STR             R6, [R4,R0]
31B30E:  MOVW            R0, #0x1224
31B312:  STR             R6, [R4,R0]
31B314:  MOVW            R0, #0x1344
31B318:  STR             R6, [R4,R0]
31B31A:  MOVW            R0, #0x1464
31B31E:  STR             R6, [R4,R0]
31B320:  STR.W           R6, [R4,#0xFE4]
31B324:  STR.W           R6, [R4,#0xC84]
31B328:  LDR             R1, [SP,#0x78+var_74]
31B32A:  LDR             R6, [SP,#0x78+var_70]
31B32C:  ADDS            R6, #1
31B32E:  CMP             R6, #8
31B330:  BNE.W           loc_31AF68
31B334:  ADD             SP, SP, #0x5C ; '\'
31B336:  POP.W           {R8-R11}
31B33A:  POP             {R4-R7,PC}
