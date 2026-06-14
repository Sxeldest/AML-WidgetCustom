; =========================================================
; Game Engine Function: celt_iir
; Address            : 0x1A10A8 - 0x1A13F4
; =========================================================

1A10A8:  PUSH            {R4-R7,LR}
1A10AA:  ADD             R7, SP, #0xC
1A10AC:  PUSH.W          {R8-R11}
1A10B0:  SUB             SP, SP, #0x44
1A10B2:  MOV             R8, R0
1A10B4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A10C0)
1A10B6:  STR.W           R2, [R7,#var_48]
1A10BA:  MOV             R9, R1
1A10BC:  ADD             R0, PC; __stack_chk_guard_ptr
1A10BE:  LDR             R2, [R7,#arg_0]
1A10C0:  MOV             R5, R3
1A10C2:  LDR.W           R12, [R7,#arg_4]
1A10C6:  LDR             R0, [R0]; __stack_chk_guard
1A10C8:  LDR             R0, [R0]
1A10CA:  STR.W           R0, [R7,#var_24]
1A10CE:  MOVS            R0, #7
1A10D0:  ADD.W           R1, R0, R2,LSL#1
1A10D4:  BIC.W           R1, R1, #7
1A10D8:  SUB.W           R6, SP, R1
1A10DC:  ADDS            R1, R2, R5
1A10DE:  ADD.W           R0, R0, R1,LSL#1
1A10E2:  BIC.W           R0, R0, #7
1A10E6:  MOV             SP, R6
1A10E8:  SUB.W           R4, SP, R0
1A10EC:  MOV             SP, R4
1A10EE:  CMP             R2, #1
1A10F0:  STR.W           R2, [R7,#var_38]
1A10F4:  BLT             loc_1A113A
1A10F6:  LDR             R0, [R7,#arg_0]
1A10F8:  MOVS            R2, #0
1A10FA:  ADD.W           R0, R9, R0,LSL#1
1A10FE:  SUBS            R0, #2
1A1100:  LDRH.W          R3, [R0],#-2
1A1104:  STRH.W          R3, [R6,R2,LSL#1]
1A1108:  ADDS            R2, #1
1A110A:  LDR             R3, [R7,#arg_0]
1A110C:  CMP             R3, R2
1A110E:  BNE             loc_1A1100
1A1110:  LDR             R0, [R7,#arg_0]
1A1112:  CMP             R0, #1
1A1114:  BLT             loc_1A113A
1A1116:  LDR             R0, [R7,#arg_0]
1A1118:  MOVS            R2, #0
1A111A:  ADD.W           R0, R12, R0,LSL#1
1A111E:  SUBS            R0, #2
1A1120:  LDRH.W          R3, [R0],#-2
1A1124:  NEGS            R3, R3
1A1126:  STRH.W          R3, [R4,R2,LSL#1]
1A112A:  ADDS            R2, #1
1A112C:  LDR             R3, [R7,#arg_0]
1A112E:  CMP             R3, R2
1A1130:  BNE             loc_1A1120
1A1132:  LDR             R2, [R7,#arg_0]
1A1134:  CMP             R1, R2
1A1136:  BGT             loc_1A1140
1A1138:  B               loc_1A114C
1A113A:  MOVS            R2, #0
1A113C:  CMP             R1, R2
1A113E:  BLE             loc_1A114C
1A1140:  SUBS            R1, R1, R2
1A1142:  ADD.W           R0, R4, R2,LSL#1; int
1A1146:  LSLS            R1, R1, #1; n
1A1148:  BLX             sub_22178C
1A114C:  STR.W           R6, [R7,#var_4C]
1A1150:  MOVW            R6, #0x8001
1A1154:  MOV             R0, R8
1A1156:  MOVT            R6, #0xFFFF
1A115A:  CMP             R5, #4
1A115C:  STR.W           R5, [R7,#var_60]
1A1160:  STRD.W          R0, R4, [R7,#var_54]
1A1164:  BLT.W           loc_1A12E4
1A1168:  SUBS            R1, R5, #3
1A116A:  STR.W           R1, [R7,#var_58]
1A116E:  LDR             R1, [R7,#arg_0]
1A1170:  MOVS            R5, #0
1A1172:  STR.W           R9, [R7,#var_3C]
1A1176:  MOV.W           R8, #0xC
1A117A:  MOV.W           R9, #0
1A117E:  ADD.W           R1, R4, R1,LSL#1
1A1182:  STR.W           R1, [R7,#var_5C]
1A1186:  LDR.W           R2, [R7,#var_54]
1A118A:  LDR             R3, [R7,#arg_0]
1A118C:  ADD.W           R0, R2, R8
1A1190:  LDR.W           R0, [R0,#-0xC]
1A1194:  STR.W           R0, [R7,#var_34]
1A1198:  ADD.W           R0, R2, R5,LSL#1
1A119C:  LDRD.W          R1, R0, [R0,#4]
1A11A0:  STRD.W          R1, R0, [R7,#var_30]
1A11A4:  LDR.W           R0, [R2,R8]
1A11A8:  SUB.W           R2, R7, #-var_34
1A11AC:  STR.W           R0, [R7,#var_28]
1A11B0:  LDR.W           R0, [R7,#var_50]
1A11B4:  ADDS            R1, R0, R5
1A11B6:  LDR.W           R0, [R7,#var_4C]
1A11BA:  BL              sub_1A0EB0
1A11BE:  LDR.W           R0, [R7,#var_34]
1A11C2:  ADD.W           R9, R9, #4
1A11C6:  ADD.W           R1, R0, #0x800
1A11CA:  ASRS            R2, R1, #0xC
1A11CC:  CMP             R2, R6
1A11CE:  MOV             R2, R6
1A11D0:  IT GT
1A11D2:  ASRGT           R2, R1, #0xC
1A11D4:  MOVW            R1, #0x7FFF
1A11D8:  CMP             R2, R1
1A11DA:  IT GE
1A11DC:  MOVGE           R2, R1
1A11DE:  LDR.W           R10, [R7,#var_48]
1A11E2:  LDR.W           LR, [R7,#var_5C]
1A11E6:  NEGS            R1, R2
1A11E8:  ADD.W           R2, R10, R8
1A11EC:  STRH.W          R1, [LR,R5]
1A11F0:  STR.W           R0, [R2,#-0xC]
1A11F4:  SXTH            R2, R1
1A11F6:  LDR.W           R1, [R7,#var_3C]
1A11FA:  MOVW            R0, #0x7FFF
1A11FE:  LDRSH.W         R12, [R1]
1A1202:  MOV             R11, R1
1A1204:  LDR.W           R1, [R7,#var_30]
1A1208:  STR.W           R2, [R7,#var_40]
1A120C:  SMLABB.W        R3, R2, R12, R1
1A1210:  ADD.W           R1, R3, #0x800
1A1214:  ASRS            R4, R1, #0xC
1A1216:  CMP             R4, R6
1A1218:  MOV             R4, R6
1A121A:  MOVW            R6, #0x8001
1A121E:  IT GT
1A1220:  ASRGT           R4, R1, #0xC
1A1222:  MOVT            R6, #0xFFFF
1A1226:  CMP             R4, R0
1A1228:  IT GE
1A122A:  MOVGE           R4, R0
1A122C:  ADD.W           R0, LR, R5
1A1230:  NEGS            R4, R4
1A1232:  STR.W           R0, [R7,#var_44]
1A1236:  STRH            R4, [R0,#2]
1A1238:  ADD.W           R0, R10, R5,LSL#1
1A123C:  STR.W           R3, [R7,#var_30]
1A1240:  MOVW            LR, #0x8001
1A1244:  STR             R3, [R0,#4]
1A1246:  SXTH            R3, R4
1A1248:  LDR.W           R4, [R7,#var_2C]
1A124C:  MOVT            LR, #0xFFFF
1A1250:  LDRSH.W         R1, [R11,#2]
1A1254:  ADDS            R5, #8
1A1256:  SMLABB.W        R4, R3, R12, R4
1A125A:  SMLABB.W        R4, R2, R1, R4
1A125E:  MOV             R2, R10
1A1260:  ADD.W           R11, R4, #0x800
1A1264:  MOV.W           R10, R11,ASR#12
1A1268:  CMP             R10, LR
1A126A:  IT GT
1A126C:  MOVGT.W         R6, R11,ASR#12
1A1270:  MOV             R11, R2
1A1272:  MOVW            R2, #0x7FFF
1A1276:  CMP             R6, R2
1A1278:  IT GE
1A127A:  MOVGE           R6, R2
1A127C:  LDR.W           R10, [R7,#var_44]
1A1280:  NEGS            R6, R6
1A1282:  STR.W           R4, [R7,#var_2C]
1A1286:  MOVW            LR, #0x7FFF
1A128A:  STRH.W          R6, [R10,#4]
1A128E:  STR             R4, [R0,#8]
1A1290:  SXTH            R0, R6
1A1292:  LDR.W           R4, [R7,#var_28]
1A1296:  MOVW            R6, #0x8001
1A129A:  LDR.W           R2, [R7,#var_40]
1A129E:  MOVT            R6, #0xFFFF
1A12A2:  SMLABB.W        R0, R0, R12, R4
1A12A6:  SMLABB.W        R0, R3, R1, R0
1A12AA:  LDR.W           R1, [R7,#var_3C]
1A12AE:  LDRSH.W         R1, [R1,#4]
1A12B2:  SMLABB.W        R0, R2, R1, R0
1A12B6:  ADD.W           R1, R0, #0x800
1A12BA:  ASRS            R2, R1, #0xC
1A12BC:  CMP             R2, R6
1A12BE:  MOV             R2, R6
1A12C0:  IT GT
1A12C2:  ASRGT           R2, R1, #0xC
1A12C4:  CMP             R2, LR
1A12C6:  IT GE
1A12C8:  MOVGE           R2, LR
1A12CA:  NEGS            R1, R2
1A12CC:  STRH.W          R1, [R10,#6]
1A12D0:  STR.W           R0, [R11,R8]
1A12D4:  ADD.W           R8, R8, #0x10
1A12D8:  LDR.W           R0, [R7,#var_58]
1A12DC:  CMP             R9, R0
1A12DE:  BLT.W           loc_1A1186
1A12E2:  B               loc_1A12E8
1A12E4:  MOV.W           R9, #0
1A12E8:  LDR.W           R0, [R7,#var_60]
1A12EC:  LDR.W           LR, [R7,#var_50]
1A12F0:  LDR.W           R8, [R7,#var_54]
1A12F4:  CMP             R9, R0
1A12F6:  BGE             loc_1A13AA
1A12F8:  LDR             R0, [R7,#arg_0]
1A12FA:  CMP             R0, #0
1A12FC:  BLE             loc_1A135E
1A12FE:  ADD.W           R6, LR, R9,LSL#1
1A1302:  MOVW            R12, #0x7FFF
1A1306:  LDR.W           R2, [R8,R9,LSL#2]
1A130A:  MOV             R0, R6
1A130C:  LDR.W           R3, [R7,#var_4C]
1A1310:  LDR             R4, [R7,#arg_0]
1A1312:  LDRSH.W         R5, [R3],#2
1A1316:  SUBS            R4, #1
1A1318:  LDRSH.W         R1, [R0],#2
1A131C:  MLS.W           R2, R1, R5, R2
1A1320:  BNE             loc_1A1312
1A1322:  ADD.W           R0, R2, #0x800
1A1326:  MOV             R3, #0xFFFF8001
1A132E:  ADDS            R6, #2
1A1330:  ASRS            R1, R0, #0xC
1A1332:  CMP             R1, R3
1A1334:  MOV             R1, R3
1A1336:  IT GT
1A1338:  ASRGT           R1, R0, #0xC
1A133A:  LDR             R0, [R7,#arg_0]
1A133C:  CMP             R1, R12
1A133E:  ADD             R0, R9
1A1340:  IT GE
1A1342:  MOVGE           R1, R12
1A1344:  STRH.W          R1, [LR,R0,LSL#1]
1A1348:  LDR.W           R0, [R7,#var_48]
1A134C:  STR.W           R2, [R0,R9,LSL#2]
1A1350:  ADD.W           R9, R9, #1
1A1354:  LDR.W           R0, [R7,#var_60]
1A1358:  CMP             R9, R0
1A135A:  BNE             loc_1A1306
1A135C:  B               loc_1A13AA
1A135E:  LDR             R3, [R7,#arg_0]
1A1360:  MOVW            R5, #0x8001
1A1364:  LDR.W           R0, [R7,#var_60]
1A1368:  ADD.W           R2, R8, R9,LSL#2
1A136C:  LDR.W           R1, [R7,#var_48]
1A1370:  ADD             R3, R9
1A1372:  SUB.W           R0, R0, R9
1A1376:  MOVW            R12, #0x7FFF
1A137A:  ADD.W           R1, R1, R9,LSL#2
1A137E:  ADD.W           R3, LR, R3,LSL#1
1A1382:  MOVT            R5, #0xFFFF
1A1386:  LDR.W           LR, [R2],#4
1A138A:  ADD.W           R4, LR, #0x800
1A138E:  ASRS            R6, R4, #0xC
1A1390:  CMP             R6, R5
1A1392:  MOV             R6, R5
1A1394:  IT GT
1A1396:  ASRGT           R6, R4, #0xC
1A1398:  CMP             R6, R12
1A139A:  IT GE
1A139C:  MOVGE           R6, R12
1A139E:  SUBS            R0, #1
1A13A0:  STRH.W          R6, [R3],#2
1A13A4:  STR.W           LR, [R1],#4
1A13A8:  BNE             loc_1A1386
1A13AA:  LDR             R0, [R7,#arg_0]
1A13AC:  LDR             R2, [R7,#arg_4]
1A13AE:  CMP             R0, #1
1A13B0:  BLT             loc_1A13D4
1A13B2:  LDR.W           R0, [R7,#var_60]
1A13B6:  LDR.W           R1, [R7,#var_48]
1A13BA:  ADD.W           R0, R1, R0,LSL#2
1A13BE:  SUBS            R0, #4
1A13C0:  LDR.W           R1, [R0],#-4
1A13C4:  STRH.W          R1, [R2],#2
1A13C8:  LDR.W           R1, [R7,#var_38]
1A13CC:  SUBS            R1, #1
1A13CE:  STR.W           R1, [R7,#var_38]
1A13D2:  BNE             loc_1A13C0
1A13D4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A13DE)
1A13D6:  LDR.W           R1, [R7,#var_24]
1A13DA:  ADD             R0, PC; __stack_chk_guard_ptr
1A13DC:  LDR             R0, [R0]; __stack_chk_guard
1A13DE:  LDR             R0, [R0]
1A13E0:  SUBS            R0, R0, R1
1A13E2:  ITTTT EQ
1A13E4:  SUBEQ.W         R4, R7, #-var_1C
1A13E8:  MOVEQ           SP, R4
1A13EA:  POPEQ.W         {R8-R11}
1A13EE:  POPEQ           {R4-R7,PC}
1A13F0:  BLX             __stack_chk_fail
