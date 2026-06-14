; =========================================================
; Game Engine Function: silk_Decode
; Address            : 0xB1F98 - 0xB296E
; =========================================================

B1F98:  PUSH            {R4-R7,LR}
B1F9A:  ADD             R7, SP, #0xC
B1F9C:  PUSH.W          {R8-R11}
B1FA0:  SUB.W           SP, SP, #0x2CC
B1FA4:  MOV             R9, R0
B1FA6:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xB1FB4)
B1FAA:  MOV             R6, SP
B1FAC:  ADD.W           R5, R6, #0x34 ; '4'
B1FB0:  ADD             R0, PC; __stack_chk_guard_ptr
B1FB2:  STR             R2, [R6,#0x2E8+var_2CC]
B1FB4:  MOV             R12, R1
B1FB6:  CMP             R3, #0
B1FB8:  LDR             R0, [R0]; __stack_chk_guard
B1FBA:  LDR             R0, [R0]
B1FBC:  STR             R0, [R6,#0x2E8+var_2BC]
B1FBE:  MOV.W           R0, #0
B1FC2:  STR.W           R0, [R5,#-4]
B1FC6:  STR             R0, [R5,#0xC]
B1FC8:  STR             R0, [R5]
B1FCA:  LDR.W           LR, [R12,#4]
B1FCE:  BEQ             loc_B1FEC
B1FD0:  CMP.W           LR, #1
B1FD4:  BLT             loc_B1FEC
B1FD6:  ADDW            R1, R9, #0x954
B1FDA:  MOVS            R2, #0
B1FDC:  MOVW            R3, #0x10A8
B1FE0:  MOVS            R5, #0
B1FE2:  STR             R2, [R1]
B1FE4:  ADDS            R5, #1
B1FE6:  ADD             R1, R3
B1FE8:  CMP             R5, LR
B1FEA:  BLT             loc_B1FE2
B1FEC:  MOVW            R1, #0x2160
B1FF0:  ADD.W           R4, R9, R1
B1FF4:  LDR.W           R2, [R9,R1]
B1FF8:  STR.W           R12, [R6,#0x24]
B1FFC:  CMP             LR, R2
B1FFE:  BLE             loc_B201C
B2000:  MOVW            R0, #0x10A8
B2004:  ADD             R0, R9
B2006:  BLX             j_silk_init_decoder
B200A:  LDR.W           R12, [R6,#0x24]
B200E:  LDR.W           LR, [R12,#4]
B2012:  CMP.W           LR, #1
B2016:  BEQ             loc_B2024
B2018:  MOVS            R3, #0
B201A:  B               loc_B2040
B201C:  MOVS            R0, #0
B201E:  CMP.W           LR, #1
B2022:  BNE             loc_B2018
B2024:  LDR             R1, [R4]
B2026:  MOVS            R3, #0
B2028:  CMP             R1, #2
B202A:  BNE             loc_B2040
B202C:  LDR.W           R1, [R9,#0x90C]
B2030:  MOV.W           R2, #0x3E8
B2034:  MULS            R1, R2
B2036:  LDR.W           R2, [R12,#0xC]
B203A:  CMP             R2, R1
B203C:  IT EQ
B203E:  MOVEQ           R3, #1
B2040:  LDR.W           R1, [R9,#0x954]
B2044:  STR             R0, [R6,#0x28]
B2046:  CMP             R1, #0
B2048:  STRD.W          R3, R4, [R6,#0xC]
B204C:  BNE             loc_B20E0
B204E:  CMP.W           LR, #1
B2052:  BLT             loc_B20E0
B2054:  MOVS            R5, #0
B2056:  MOV.W           R8, #1
B205A:  MOVW            R11, #0x8880
B205E:  MOVW            R10, #0x10A8
B2062:  MOV             R4, R9
B2064:  LDR.W           R3, [R12,#0x10]
B2068:  MOV             R0, #0xFFFFFF35
B206C:  CMP             R3, #0x13
B206E:  BLE             loc_B2084
B2070:  CMP             R3, #0x3C ; '<'
B2072:  BEQ             loc_B2092
B2074:  CMP             R3, #0x28 ; '('
B2076:  BEQ             loc_B2098
B2078:  CMP             R3, #0x14
B207A:  BNE.W           loc_B2950
B207E:  MOVS            R1, #4
B2080:  MOVS            R2, #1
B2082:  B               loc_B209C
B2084:  MOVS            R1, #2
B2086:  MOVS            R2, #1
B2088:  CBZ             R3, loc_B209C
B208A:  CMP             R3, #0xA
B208C:  BEQ             loc_B209C
B208E:  B.W             loc_B2950
B2092:  MOVS            R1, #4
B2094:  MOVS            R2, #3
B2096:  B               loc_B209C
B2098:  MOVS            R1, #4
B209A:  MOVS            R2, #2
B209C:  STR.W           R1, [R4,#0x914]
B20A0:  STR.W           R2, [R4,#0x958]
B20A4:  LDR.W           R0, [R12,#0xC]
B20A8:  ASRS            R1, R0, #0xA
B20AA:  MOV             R0, #0xFFFFFF38
B20AE:  CMP             R1, #0xF
B20B0:  BHI.W           loc_B2950
B20B4:  LSL.W           R2, R8, R1
B20B8:  TST.W           R2, R11
B20BC:  BEQ.W           loc_B2950
B20C0:  LDR.W           R2, [R12,#8]
B20C4:  ADDS            R1, #1
B20C6:  MOV             R0, R4
B20C8:  BLX             j_silk_decoder_set_fs
B20CC:  LDRD.W          R12, R1, [R6,#0x24]
B20D0:  ADD             R4, R10
B20D2:  ADD             R1, R0
B20D4:  STR             R1, [R6,#0x28]
B20D6:  ADDS            R5, #1
B20D8:  LDR.W           LR, [R12,#4]
B20DC:  CMP             R5, LR
B20DE:  BLT             loc_B2064
B20E0:  LDR.W           R1, [R12]
B20E4:  CMP             R1, #2
B20E6:  BNE             loc_B2130
B20E8:  LDR             R4, [R6,#0x10]
B20EA:  CMP.W           LR, #2
B20EE:  BNE             loc_B2138
B20F0:  MOVW            R0, #0x215C
B20F4:  LDR.W           R0, [R9,R0]
B20F8:  CMP             R0, #1
B20FA:  ITT NE
B20FC:  LDRNE           R0, [R4]
B20FE:  CMPNE           R0, #1
B2100:  BNE             loc_B2134
B2102:  MOVW            R0, #0x2158
B2106:  MOVS            R1, #0
B2108:  STR.W           R1, [R9,R0]
B210C:  MOVW            R0, #0x2150
B2110:  MOV.W           R2, #0x12C; n
B2114:  STR.W           R1, [R9,R0]
B2118:  MOVW            R0, #0x1A28
B211C:  ADD             R0, R9; dest
B211E:  ADD.W           R1, R9, #0x980; src
B2122:  BLX             j_memcpy
B2126:  LDR.W           R12, [R6,#0x24]
B212A:  LDRD.W          R1, LR, [R12]
B212E:  B               loc_B213A
B2130:  LDR             R4, [R6,#0x10]
B2132:  B               loc_B213A
B2134:  MOV.W           LR, #2
B2138:  MOVS            R1, #2
B213A:  MOVW            R2, #0x215C
B213E:  STR.W           R1, [R9,R2]
B2142:  MOVW            R2, #0x9C40
B2146:  STR.W           LR, [R4]
B214A:  LDR.W           R1, [R12,#8]
B214E:  SUB.W           R1, R1, #0x1F40
B2152:  CMP             R1, R2
B2154:  BLS             loc_B215C
B2156:  MOV             R0, #0xFFFFFF38
B215A:  B               loc_B2950
B215C:  LDR             R1, [R6,#0x1C]
B215E:  LDR.W           R8, [R7,#arg_0]
B2162:  CMP             R1, #1
B2164:  MOV             R1, R9
B2166:  STR             R1, [R6,#0x20]
B2168:  BEQ.W           loc_B23C6
B216C:  LDR.W           R1, [R9,#0x954]
B2170:  CMP             R1, #0
B2172:  BNE.W           loc_B23C6
B2176:  CMP.W           LR, #1
B217A:  BLT             loc_B226E
B217C:  LDR             R0, [R6,#0x20]
B217E:  MOV.W           R10, #0
B2182:  MOVW            R1, #0x10A8
B2186:  ADDW            R11, R0, #0x964
B218A:  LDR             R0, [R6,#0x20]
B218C:  MLA.W           R5, R10, R1, R0
B2190:  LDR             R0, [R7,#arg_0]
B2192:  MOVS            R1, #1
B2194:  LDR.W           R4, [R5,#0x958]
B2198:  BLX             j_ec_dec_bit_logp
B219C:  CMP             R4, #1
B219E:  STR             R5, [R6,#0x18]
B21A0:  BLT             loc_B21C2
B21A2:  LDR.W           R9, [R7,#arg_0]
B21A6:  ADDW            R5, R5, #0x958
B21AA:  MOVS            R4, #0
B21AC:  STR.W           R0, [R11,R4,LSL#2]
B21B0:  MOV             R0, R9
B21B2:  MOVS            R1, #1
B21B4:  LDR.W           R8, [R5]
B21B8:  BLX             j_ec_dec_bit_logp
B21BC:  ADDS            R4, #1
B21BE:  CMP             R4, R8
B21C0:  BLT             loc_B21AC
B21C2:  LDR             R1, [R6,#0x18]
B21C4:  ADD.W           R10, R10, #1
B21C8:  STR.W           R0, [R1,#0x970]
B21CC:  MOVW            R1, #0x10A8
B21D0:  LDR.W           R12, [R6,#0x24]
B21D4:  ADD             R11, R1
B21D6:  LDR.W           LR, [R12,#4]
B21DA:  CMP             R10, LR
B21DC:  BLT             loc_B218A
B21DE:  CMP.W           LR, #1
B21E2:  BLT             loc_B226E
B21E4:  LDR             R0, [R6,#0x20]
B21E6:  MOV.W           R9, #0
B21EA:  MOVW            R10, #0x10A8
B21EE:  MOV.W           R11, #0
B21F2:  ADDW            R4, R0, #0x974
B21F6:  LDR.W           R0, =(silk_LBRR_flags_iCDF_ptr_ptr - 0xB21FE)
B21FA:  ADD             R0, PC; silk_LBRR_flags_iCDF_ptr_ptr
B21FC:  LDR.W           R8, [R0]; silk_LBRR_flags_iCDF_ptr
B2200:  LDR             R0, [R6,#0x20]
B2202:  MLA.W           R0, R11, R10, R0
B2206:  STR.W           R9, [R0,#0x974]
B220A:  STR.W           R9, [R0,#0x978]
B220E:  STR.W           R9, [R0,#0x97C]
B2212:  LDR.W           R1, [R0,#0x970]
B2216:  CBZ             R1, loc_B2260
B2218:  LDR.W           R1, [R0,#0x958]
B221C:  CMP             R1, #1
B221E:  BNE             loc_B222A
B2220:  ADDW            R0, R0, #0x974
B2224:  MOVS            R1, #1
B2226:  STR             R1, [R0]
B2228:  B               loc_B2260
B222A:  ADDW            R5, R0, #0x958
B222E:  ADD.W           R0, R8, R1,LSL#2
B2232:  MOVS            R2, #8
B2234:  LDR.W           R1, [R0,#-8]
B2238:  LDR             R0, [R7,#arg_0]
B223A:  BLX             j_ec_dec_icdf
B223E:  LDR             R1, [R5]
B2240:  LDR.W           R12, [R6,#0x24]
B2244:  CMP             R1, #1
B2246:  BLT             loc_B2260
B2248:  ADDS            R0, #1
B224A:  MOVS            R1, #0
B224C:  LSR.W           R2, R0, R1
B2250:  AND.W           R2, R2, #1
B2254:  STR.W           R2, [R4,R1,LSL#2]
B2258:  ADDS            R1, #1
B225A:  LDR             R2, [R5]
B225C:  CMP             R1, R2
B225E:  BLT             loc_B224C
B2260:  LDR.W           LR, [R12,#4]
B2264:  ADD.W           R11, R11, #1
B2268:  ADD             R4, R10
B226A:  CMP             R11, LR
B226C:  BLT             loc_B2200
B226E:  LDR             R1, [R6,#0x1C]
B2270:  CBZ             R1, loc_B227C
B2272:  LDR.W           R9, [R6,#0x20]
B2276:  LDR.W           R8, [R7,#arg_0]
B227A:  B               loc_B23C6
B227C:  LDR.W           R9, [R6,#0x20]
B2280:  LDR.W           R1, [R9,#0x958]
B2284:  CMP             R1, #1
B2286:  BLT             loc_B2276
B2288:  LDR.W           R8, [R7,#arg_0]
B228C:  MOVW            R1, #0x1A1C
B2290:  ADD.W           R0, R9, R1
B2294:  STR             R0, [R6,#0x14]
B2296:  MOVW            R0, #0x974
B229A:  MOV.W           R10, #0
B229E:  MOV.W           R11, #0
B22A2:  STR             R0, [R6,#0x18]
B22A4:  CMP.W           LR, #1
B22A8:  BLT.W           loc_B23AE
B22AC:  MOVS            R5, #0
B22AE:  MOV             R4, R9
B22B0:  CMP.W           R11, #0
B22B4:  BLE             loc_B233E
B22B6:  ADD.W           R8, R4, R10
B22BA:  LDR.W           R1, [R8,#0x974]
B22BE:  CBZ             R1, loc_B232C
B22C0:  CMP             R5, #0
B22C2:  IT EQ
B22C4:  CMPEQ.W         LR, #2
B22C8:  BNE             loc_B22E6
B22CA:  LDR             R0, [R7,#arg_0]
B22CC:  ADD.W           R1, R6, #0x30 ; '0'
B22D0:  BLX             j_silk_stereo_decode_pred
B22D4:  LDR             R0, [R6,#0x14]
B22D6:  LDR.W           R0, [R0,R11,LSL#2]
B22DA:  CBNZ            R0, loc_B22E6
B22DC:  LDR             R0, [R7,#arg_0]
B22DE:  ADD.W           R1, R6, #0x40 ; '@'
B22E2:  BLX             j_silk_stereo_decode_mid_only
B22E6:  LDR.W           R0, [R8,#0x970]
B22EA:  CMP             R0, #0
B22EC:  IT NE
B22EE:  MOVNE           R0, #2
B22F0:  SUB             SP, SP, #8
B22F2:  LDR.W           R8, [R7,#arg_0]
B22F6:  MOV             R2, R11
B22F8:  STR             R0, [SP,#0x2F0+var_2F0]
B22FA:  MOV             R0, R4
B22FC:  MOVS            R3, #1
B22FE:  MOV             R1, R8
B2300:  BLX             j_silk_decode_indices
B2304:  ADD             SP, SP, #8
B2306:  LDRSB.W         R3, [R4,#0xACE]
B230A:  LDRSB.W         R2, [R4,#0xACD]
B230E:  LDR.W           R0, [R4,#0x918]
B2312:  SUB             SP, SP, #8
B2314:  ADD.W           R1, R6, #0x44 ; 'D'
B2318:  STR             R0, [SP,#0x2F0+var_2F0]
B231A:  MOV             R0, R8
B231C:  BLX             j_silk_decode_pulses
B2320:  ADD             SP, SP, #8
B2322:  LDR.W           R12, [R6,#0x24]
B2326:  LDR.W           LR, [R12,#4]
B232A:  B               loc_B2330
B232C:  LDR.W           R8, [R7,#arg_0]
B2330:  MOVW            R0, #0x10A8
B2334:  ADDS            R5, #1
B2336:  ADD             R4, R0
B2338:  CMP             R5, LR
B233A:  BLT             loc_B22B6
B233C:  B               loc_B23AE
B233E:  LDR             R0, [R6,#0x18]
B2340:  LDR             R1, [R4,R0]
B2342:  CBZ             R1, loc_B23A2
B2344:  CMP             R5, #0
B2346:  IT EQ
B2348:  CMPEQ.W         LR, #2
B234C:  BNE             loc_B236A
B234E:  ADD.W           R1, R6, #0x30 ; '0'
B2352:  MOV             R0, R8
B2354:  BLX             j_silk_stereo_decode_pred
B2358:  LDR             R0, [R6,#0x14]
B235A:  LDR.W           R0, [R0,R11,LSL#2]
B235E:  CBNZ            R0, loc_B236A
B2360:  ADD.W           R1, R6, #0x40 ; '@'
B2364:  MOV             R0, R8
B2366:  BLX             j_silk_stereo_decode_mid_only
B236A:  SUB             SP, SP, #8
B236C:  MOVS            R0, #0
B236E:  MOV             R1, R8
B2370:  STR             R0, [SP,#0x2F0+var_2F0]
B2372:  MOV             R0, R4
B2374:  MOV             R2, R11
B2376:  MOVS            R3, #1
B2378:  BLX             j_silk_decode_indices
B237C:  ADD             SP, SP, #8
B237E:  LDRSB.W         R3, [R4,#0xACE]
B2382:  LDRSB.W         R2, [R4,#0xACD]
B2386:  LDR.W           R0, [R4,#0x918]
B238A:  SUB             SP, SP, #8
B238C:  ADD.W           R1, R6, #0x44 ; 'D'
B2390:  STR             R0, [SP,#0x2F0+var_2F0]
B2392:  MOV             R0, R8
B2394:  BLX             j_silk_decode_pulses
B2398:  ADD             SP, SP, #8
B239A:  LDR.W           R12, [R6,#0x24]
B239E:  LDR.W           LR, [R12,#4]
B23A2:  MOVW            R0, #0x10A8
B23A6:  ADDS            R5, #1
B23A8:  ADD             R4, R0
B23AA:  CMP             R5, LR
B23AC:  BLT             loc_B233E
B23AE:  LDR             R0, [R6,#0x18]
B23B0:  ADD.W           R10, R10, #4
B23B4:  ADD.W           R11, R11, #1
B23B8:  ADDS            R0, #4
B23BA:  STR             R0, [R6,#0x18]
B23BC:  LDR.W           R1, [R9,#0x958]
B23C0:  CMP             R11, R1
B23C2:  BLT.W           loc_B22A4
B23C6:  ADD.W           R4, R6, #0x34 ; '4'
B23CA:  CMP.W           LR, #2
B23CE:  MOV             R10, R4
B23D0:  BNE             loc_B2444
B23D2:  LDR             R0, [R6,#0x1C]
B23D4:  CBZ             R0, loc_B2414
B23D6:  CMP             R0, #2
B23D8:  BNE             loc_B23FE
B23DA:  LDR.W           R0, [R9,#0x954]
B23DE:  ADD.W           R0, R9, R0,LSL#2
B23E2:  LDR.W           R0, [R0,#0x974]
B23E6:  CMP             R0, #1
B23E8:  BNE             loc_B23FE
B23EA:  ADD.W           R1, R6, #0x30 ; '0'
B23EE:  MOV             R0, R8
B23F0:  BLX             j_silk_stereo_decode_pred
B23F4:  LDR.W           R0, [R9,#0x954]
B23F8:  MOVW            R1, #0x1A1C
B23FC:  B               loc_B2426
B23FE:  MOVW            R1, #0x2152
B2402:  MOVW            R0, #0x2150
B2406:  LDRSH.W         R1, [R9,R1]
B240A:  LDRSH.W         R0, [R9,R0]
B240E:  STRD.W          R0, R1, [R10,#-4]
B2412:  B               loc_B2444
B2414:  ADD.W           R1, R6, #0x30 ; '0'
B2418:  MOV             R0, R8
B241A:  BLX             j_silk_stereo_decode_pred
B241E:  LDR.W           R0, [R9,#0x954]
B2422:  MOVW            R1, #0x1A0C
B2426:  ADD.W           R0, R9, R0,LSL#2
B242A:  LDR             R0, [R0,R1]
B242C:  CBZ             R0, loc_B2436
B242E:  MOVS            R0, #0
B2430:  STR.W           R0, [R10,#0xC]
B2434:  B               loc_B2440
B2436:  ADD.W           R1, R6, #0x40 ; '@'
B243A:  MOV             R0, R8
B243C:  BLX             j_silk_stereo_decode_mid_only
B2440:  LDR.W           R12, [R6,#0x24]
B2444:  LDR.W           R1, [R10,#0xC]
B2448:  MOV.W           R11, #0
B244C:  LDR.W           R0, [R12,#4]
B2450:  CMP             R1, #0
B2452:  IT EQ
B2454:  MOVEQ.W         R11, #1
B2458:  CMP             R0, #2
B245A:  IT EQ
B245C:  CMPEQ           R1, #0
B245E:  BNE             loc_B24AE
B2460:  MOVW            R0, #0x2164
B2464:  LDR.W           R0, [R9,R0]
B2468:  CMP             R0, #1
B246A:  BNE             loc_B24AC
B246C:  MOVW            R0, #0x15AC
B2470:  MOV.W           R1, #0x400; n
B2474:  ADD             R0, R9; int
B2476:  BLX             sub_10967C
B247A:  MOVW            R0, #0x19B0
B247E:  MOVS            R1, #0xA
B2480:  LDR.W           R12, [R6,#0x24]
B2484:  STRB.W          R1, [R9,R0]
B2488:  MOVW            R0, #0x19AC
B248C:  MOVS            R1, #0x64 ; 'd'
B248E:  STR.W           R1, [R9,R0]
B2492:  MOVW            R0, #0x20EC
B2496:  MOVS            R1, #0
B2498:  STR.W           R1, [R9,R0]
B249C:  MOVW            R0, #0x19F0
B24A0:  MOVS            R1, #1
B24A2:  STR.W           R1, [R9,R0]
B24A6:  LDR.W           R0, [R12,#4]
B24AA:  B               loc_B24AE
B24AC:  MOVS            R0, #2
B24AE:  LDR.W           R1, [R12]
B24B2:  LDRD.W          R2, R3, [R12,#8]
B24B6:  MUL.W           R8, R0, R3
B24BA:  LDR             R4, [R7,#src]
B24BC:  MULS            R1, R2
B24BE:  STR             R1, [R6,#0x18]
B24C0:  CMP             R8, R1
B24C2:  BGE             loc_B24D4
B24C4:  STR.W           R4, [R10,#0x10]
B24C8:  ADDW            R2, R9, #0x918
B24CC:  LDR.W           R5, [R9,#0x918]
B24D0:  MOV             R1, R4
B24D2:  B               loc_B24F4
B24D4:  LDR.W           R5, [R9,#0x918]
B24D8:  MOVS            R3, #7
B24DA:  ADDS            R2, R5, #2
B24DC:  MULS            R2, R0
B24DE:  ADD.W           R2, R3, R2,LSL#1
B24E2:  BIC.W           R2, R2, #7
B24E6:  SUB.W           R1, SP, R2
B24EA:  MOV             SP, R1
B24EC:  ADDW            R2, R9, #0x918
B24F0:  STR.W           R1, [R10,#0x10]
B24F4:  STR             R2, [R6,#0x14]
B24F6:  ADD.W           R2, R1, R5,LSL#1
B24FA:  ADDS            R3, R2, #4
B24FC:  LDR             R2, [R6,#0x1C]
B24FE:  STR.W           R3, [R10,#0x14]
B2502:  CMP             R2, #0
B2504:  BEQ             loc_B25C8
B2506:  MOVW            R2, #0x2164
B250A:  LDR.W           R2, [R9,R2]
B250E:  CMP             R2, #0
B2510:  BEQ             loc_B25C2
B2512:  LDR             R2, [R6,#0x1C]
B2514:  MOV.W           R11, #0
B2518:  CMP             R2, #2
B251A:  IT EQ
B251C:  CMPEQ           R0, #2
B251E:  BNE             loc_B25C8
B2520:  STR             R3, [R6]
B2522:  MOVW            R0, #0x19FC
B2526:  LDR.W           R0, [R9,R0]
B252A:  MOVW            R2, #0x1A1C
B252E:  MOVS            R4, #1
B2530:  ADD.W           R0, R9, R0,LSL#2
B2534:  LDR             R0, [R0,R2]
B2536:  CMP             R0, #1
B2538:  BEQ             loc_B25DC
B253A:  ADD.W           R11, R1, #4
B253E:  CMP             R4, #0
B2540:  STRD.W          R1, R8, [R6,#4]
B2544:  BEQ.W           loc_B267C
B2548:  ADDW            R4, R9, #0x954
B254C:  MOVS            R5, #0
B254E:  MOV.W           R8, #2
B2552:  MOVW            R10, #0x10A8
B2556:  CBZ             R5, loc_B2570
B2558:  ADD.W           R0, R6, #0x34 ; '4'
B255C:  LDR             R1, [R0,#8]
B255E:  ADD.W           R0, R6, #0x44 ; 'D'
B2562:  LDR.W           R0, [R0,R5,LSL#2]
B2566:  LSLS            R1, R1, #1; n
B2568:  ADDS            R0, #4; int
B256A:  BLX             sub_10967C
B256E:  B               loc_B25AA
B2570:  LDR.W           R0, [R9,#0x954]
B2574:  CMP             R0, #1
B2576:  BLT             loc_B2588
B2578:  ADD.W           R0, R9, R0,LSL#2
B257C:  LDR.W           R0, [R0,#0x970]
B2580:  CMP             R0, #0
B2582:  IT NE
B2584:  MOVNE           R0, #2
B2586:  B               loc_B258A
B2588:  MOVS            R0, #0
B258A:  LDR             R1, [R7,#arg_0]
B258C:  SUB             SP, SP, #0x10
B258E:  STRD.W          R8, R0, [SP,#0x2F8+var_2F8]
B2592:  ADD.W           R3, R6, #0x3C ; '<'
B2596:  LDR             R0, [R7,#arg_C]
B2598:  MOV             R2, R11
B259A:  STR             R0, [SP,#0x2F8+var_2F0]
B259C:  MOV             R0, R9
B259E:  BLX             j_silk_decode_frame
B25A2:  ADD             SP, SP, #0x10
B25A4:  LDR             R1, [R6,#0x28]
B25A6:  ADD             R1, R0
B25A8:  STR             R1, [R6,#0x28]
B25AA:  LDR             R0, [R4]
B25AC:  ADDS            R5, #1
B25AE:  ADDS            R0, #1
B25B0:  STR             R0, [R4]
B25B2:  LDR.W           R12, [R6,#0x24]
B25B6:  ADD             R4, R10
B25B8:  LDR.W           R0, [R12,#4]
B25BC:  CMP             R5, R0
B25BE:  BLT             loc_B2556
B25C0:  B               loc_B26E6
B25C2:  LDR             R2, [R6,#0x1C]
B25C4:  MOV.W           R11, #1
B25C8:  CMP             R0, #1
B25CA:  BLT             loc_B2678
B25CC:  MOVS            R4, #0
B25CE:  CMP             R2, #2
B25D0:  STR             R3, [R6]
B25D2:  IT EQ
B25D4:  MOVEQ           R4, #1
B25D6:  CMP.W           R11, #1
B25DA:  BNE             loc_B253A
B25DC:  STRD.W          R1, R8, [R6,#4]
B25E0:  MOVW            R0, #0x2164
B25E4:  ADD.W           R8, R9, R0
B25E8:  MOV.W           R11, #0
B25EC:  MOV.W           R10, #0xFFFFFFFF
B25F0:  MOV             R5, R9
B25F2:  LDR.W           R0, [R9,#0x954]
B25F6:  ADD             R0, R10
B25F8:  ADDS            R1, R0, #1
B25FA:  CMP             R1, #1
B25FC:  BLT             loc_B2610
B25FE:  CBZ             R4, loc_B2616
B2600:  ADD.W           R0, R5, R0,LSL#2
B2604:  LDR.W           R0, [R0,#0x974]
B2608:  CMP             R0, #0
B260A:  IT NE
B260C:  MOVNE           R0, #2
B260E:  B               loc_B2612
B2610:  MOVS            R0, #0
B2612:  LDR             R1, [R7,#arg_0]
B2614:  B               loc_B262A
B2616:  LDR             R1, [R7,#arg_0]
B2618:  CMP.W           R11, #1
B261C:  BLT             loc_B2628
B261E:  LDR.W           R0, [R8]
B2622:  CBZ             R0, loc_B2628
B2624:  MOVS            R0, #1
B2626:  B               loc_B262A
B2628:  MOVS            R0, #2
B262A:  ADD.W           R2, R6, #0x44 ; 'D'
B262E:  LDR.W           R3, [R2,R11,LSL#2]
B2632:  SUB             SP, SP, #0x10
B2634:  LDR             R2, [R6,#0x1C]
B2636:  STRD.W          R2, R0, [SP,#0x2F8+var_2F8]
B263A:  ADDS            R2, R3, #4
B263C:  LDR             R0, [R7,#arg_C]
B263E:  ADD.W           R3, R6, #0x3C ; '<'
B2642:  STR             R0, [SP,#0x2F8+var_2F0]
B2644:  MOV             R0, R5
B2646:  BLX             j_silk_decode_frame
B264A:  ADD             SP, SP, #0x10
B264C:  LDR.W           R1, [R5,#0x954]
B2650:  SUB.W           R10, R10, #1
B2654:  ADD.W           R11, R11, #1
B2658:  ADDS            R1, #1
B265A:  STR.W           R1, [R5,#0x954]
B265E:  MOVW            R1, #0x10A8
B2662:  ADD             R5, R1
B2664:  LDR             R1, [R6,#0x28]
B2666:  LDR.W           R12, [R6,#0x24]
B266A:  ADD             R1, R0
B266C:  STR             R1, [R6,#0x28]
B266E:  LDR.W           R0, [R12,#4]
B2672:  CMP             R11, R0
B2674:  BLT             loc_B25F2
B2676:  B               loc_B26E6
B2678:  LDR             R5, [R7,#src]
B267A:  B               loc_B2732
B267C:  ADDW            R5, R9, #0x954
B2680:  ADD.W           R8, R6, #0x44 ; 'D'
B2684:  MOVS            R4, #0
B2686:  MOVW            R10, #0x10A8
B268A:  CBZ             R4, loc_B26A0
B268C:  ADD.W           R0, R6, #0x34 ; '4'
B2690:  LDR             R1, [R0,#8]
B2692:  LDR.W           R0, [R8,R4,LSL#2]
B2696:  ADDS            R0, #4; int
B2698:  LSLS            R1, R1, #1; n
B269A:  BLX             sub_10967C
B269E:  B               loc_B26D0
B26A0:  LDR.W           R0, [R9,#0x954]
B26A4:  SUB             SP, SP, #0x10
B26A6:  CMP             R0, #0
B26A8:  MOV.W           R0, #0
B26AC:  IT GT
B26AE:  MOVGT           R0, #2
B26B0:  LDR             R1, [R6,#0x1C]
B26B2:  STRD.W          R1, R0, [SP,#0x2F8+var_2F8]
B26B6:  ADD.W           R3, R6, #0x3C ; '<'
B26BA:  LDR             R1, [R7,#arg_0]
B26BC:  MOV             R2, R11
B26BE:  LDR             R0, [R7,#arg_C]
B26C0:  STR             R0, [SP,#0x2F8+var_2F0]
B26C2:  MOV             R0, R9
B26C4:  BLX             j_silk_decode_frame
B26C8:  ADD             SP, SP, #0x10
B26CA:  LDR             R1, [R6,#0x28]
B26CC:  ADD             R1, R0
B26CE:  STR             R1, [R6,#0x28]
B26D0:  LDR             R0, [R5]
B26D2:  ADDS            R4, #1
B26D4:  ADDS            R0, #1
B26D6:  STR             R0, [R5]
B26D8:  LDR.W           R12, [R6,#0x24]
B26DC:  ADD             R5, R10
B26DE:  LDR.W           R0, [R12,#4]
B26E2:  CMP             R4, R0
B26E4:  BLT             loc_B268A
B26E6:  CMP             R0, #2
B26E8:  BNE             loc_B2726
B26EA:  LDR.W           R0, [R12]
B26EE:  ADD.W           R4, R6, #0x34 ; '4'
B26F2:  LDR             R5, [R7,#src]
B26F4:  LDRD.W          R1, R8, [R6,#4]
B26F8:  CMP             R0, #2
B26FA:  MOV             R10, R4
B26FC:  BNE             loc_B2732
B26FE:  LDR.W           R0, [R10,#8]
B2702:  LDR.W           R2, [R9,#0x90C]
B2706:  STRD.W          R2, R0, [SP,#0x2E8+var_2F0]!
B270A:  MOVW            R0, #0x2150
B270E:  LDR             R2, [R6]
B2710:  ADD             R0, R9
B2712:  ADD.W           R3, R6, #0x30 ; '0'
B2716:  BLX             j_silk_stereo_MS_to_LR
B271A:  LDR.W           R12, [R6,#0x24]
B271E:  ADD             SP, SP, #8
B2720:  LDR.W           R11, [R10,#8]
B2724:  B               loc_B2748
B2726:  ADD.W           R4, R6, #0x34 ; '4'
B272A:  LDR             R5, [R7,#src]
B272C:  LDRD.W          R1, R8, [R6,#4]
B2730:  MOV             R10, R4
B2732:  MOVW            R0, #0x2154
B2736:  LDR.W           R2, [R9,R0]
B273A:  STR             R2, [R1]
B273C:  LDR.W           R11, [R10,#8]
B2740:  LDR.W           R1, [R1,R11,LSL#1]
B2744:  STR.W           R1, [R9,R0]
B2748:  ADDW            R0, R9, #0x90C
B274C:  LDR.W           R1, [R12,#8]
B2750:  LDRSH.W         R2, [R0]
B2754:  MUL.W           R0, R1, R11
B2758:  MOV.W           R1, #0x3E8
B275C:  SMULBB.W        R1, R2, R1
B2760:  BLX             sub_108848
B2764:  LDR             R1, [R7,#arg_8]
B2766:  LDR.W           R12, [R6,#0x24]
B276A:  STR             R0, [R1]
B276C:  LDR.W           R10, [R12]
B2770:  CMP.W           R10, #2
B2774:  BNE             loc_B2786
B2776:  MOVS            R1, #7
B2778:  ADD.W           R0, R1, R0,LSL#1
B277C:  BIC.W           R0, R0, #7
B2780:  SUB.W           R5, SP, R0
B2784:  MOV             SP, R5
B2786:  LDR             R0, [R6,#0x18]
B2788:  LDR.W           R9, [R12,#4]
B278C:  CMP             R8, R0
B278E:  BGE             loc_B27CA
B2790:  LDR             R0, [R6,#0x14]
B2792:  MOVS            R1, #7
B2794:  LDR.W           R8, [R0]
B2798:  ADD.W           R0, R8, #2
B279C:  MUL.W           R0, R9, R0
B27A0:  ADD.W           R1, R1, R0,LSL#1
B27A4:  LSLS            R2, R0, #1; n
B27A6:  BIC.W           R1, R1, #7
B27AA:  SUB.W           R4, SP, R1
B27AE:  MOV             SP, R4
B27B0:  LDR             R1, [R7,#src]; src
B27B2:  MOV             R0, R4; dest
B27B4:  BLX             j_memcpy
B27B8:  ADD.W           R0, R4, R8,LSL#1
B27BC:  LDR.W           R12, [R6,#0x24]
B27C0:  ADDS            R0, #4
B27C2:  ADD.W           R1, R6, #0x34 ; '4'
B27C6:  STRD.W          R4, R0, [R1,#0x10]
B27CA:  CMP             R10, R9
B27CC:  MOV             R0, R9
B27CE:  IT LT
B27D0:  MOVLT           R0, R10
B27D2:  CMP             R0, #1
B27D4:  BLT             loc_B28AC
B27D6:  LDR.W           R8, [R7,#src]
B27DA:  MOVS            R4, #0
B27DC:  B               loc_B27EE
B27DE:  ADD.W           R0, R6, #0x34 ; '4'
B27E2:  STR.W           R11, [R6,#0x28]
B27E6:  ADD.W           R8, R8, #2
B27EA:  LDR.W           R11, [R0,#8]
B27EE:  LDR             R0, [R6,#0x20]
B27F0:  MOVW            R1, #0x10A8
B27F4:  MLA.W           R0, R4, R1, R0
B27F8:  ADD.W           R1, R6, #0x44 ; 'D'
B27FC:  MOV             R3, R11
B27FE:  LDR.W           R1, [R1,R4,LSL#2]
B2802:  ADDS            R2, R1, #2; src
B2804:  MOV             R1, R5; int
B2806:  ADD.W           R0, R0, #0x980; int
B280A:  BLX             j_silk_resampler
B280E:  LDR.W           R12, [R6,#0x24]
B2812:  LDR.W           R11, [R6,#0x28]
B2816:  LDR.W           R10, [R12]
B281A:  ADD             R11, R0
B281C:  CMP.W           R10, #2
B2820:  BNE             loc_B2844
B2822:  LDR             R0, [R7,#arg_8]
B2824:  LDR             R0, [R0]
B2826:  CMP             R0, #1
B2828:  BLT             loc_B2840
B282A:  MOVS            R1, #0
B282C:  LDRH.W          R2, [R5,R1,LSL#1]
B2830:  STRH.W          R2, [R8,R1,LSL#2]
B2834:  ADDS            R1, #1
B2836:  CMP             R1, R0
B2838:  BLT             loc_B282C
B283A:  LDR.W           R10, [R12]
B283E:  B               loc_B2844
B2840:  MOV.W           R10, #2
B2844:  LDR.W           R9, [R12,#4]
B2848:  ADDS            R4, #1
B284A:  CMP             R10, R9
B284C:  MOV             R0, R9
B284E:  IT LT
B2850:  MOVLT           R0, R10
B2852:  CMP             R4, R0
B2854:  BLT             loc_B27DE
B2856:  CMP.W           R10, #2
B285A:  BNE             loc_B28B6
B285C:  LDR.W           R10, [R6,#0x10]
B2860:  CMP.W           R9, #1
B2864:  ADD.W           R9, R6, #0x34 ; '4'
B2868:  BNE             loc_B28C6
B286A:  LDR             R0, [R6,#0xC]
B286C:  LDR.W           R8, [R6,#0x20]
B2870:  CBZ             R0, loc_B28CE
B2872:  LDR.W           R1, [R9,#0x10]
B2876:  MOVW            R0, #0x1A28
B287A:  LDR.W           R3, [R9,#8]
B287E:  ADD             R0, R8; int
B2880:  ADDS            R2, R1, #2; src
B2882:  MOV             R1, R5; int
B2884:  BLX             j_silk_resampler
B2888:  LDR             R1, [R7,#arg_8]
B288A:  ADD             R0, R11
B288C:  LDR             R1, [R1]
B288E:  CMP             R1, #1
B2890:  BLT             loc_B28EE
B2892:  LDR             R2, [R7,#src]
B2894:  MOVS            R3, #0
B2896:  LDR.W           R12, [R6,#0x24]
B289A:  ADDS            R2, #2
B289C:  LDRH.W          R4, [R5,R3,LSL#1]
B28A0:  STRH.W          R4, [R2,R3,LSL#2]
B28A4:  ADDS            R3, #1
B28A6:  CMP             R3, R1
B28A8:  BLT             loc_B289C
B28AA:  B               loc_B28F2
B28AC:  LDR.W           R11, [R6,#0x28]
B28B0:  CMP.W           R10, #2
B28B4:  BEQ             loc_B285C
B28B6:  MOV             R0, R11
B28B8:  LDR.W           R8, [R6,#0x20]
B28BC:  ADD.W           R9, R6, #0x34 ; '4'
B28C0:  LDR.W           R10, [R6,#0x10]
B28C4:  B               loc_B28F2
B28C6:  MOV             R0, R11
B28C8:  LDR.W           R8, [R6,#0x20]
B28CC:  B               loc_B28F2
B28CE:  LDR             R0, [R7,#arg_8]
B28D0:  LDR             R0, [R0]
B28D2:  CMP             R0, #1
B28D4:  BLT             loc_B28EA
B28D6:  LDR             R5, [R7,#src]
B28D8:  MOVS            R1, #0
B28DA:  LDRH.W          R2, [R5,R1,LSL#2]
B28DE:  ADD.W           R3, R5, R1,LSL#2
B28E2:  ADDS            R1, #1
B28E4:  CMP             R1, R0
B28E6:  STRH            R2, [R3,#2]
B28E8:  BLT             loc_B28DA
B28EA:  MOV             R0, R11
B28EC:  B               loc_B28F2
B28EE:  LDR.W           R12, [R6,#0x24]
B28F2:  MOVW            R1, #0x1044
B28F6:  LDR.W           R1, [R8,R1]
B28FA:  CMP             R1, #2
B28FC:  BNE             loc_B2914
B28FE:  LDR.W           R2, [R8,#0x90C]
B2902:  ADR             R3, dword_B2978
B2904:  LDR.W           R1, [R8,#0x904]
B2908:  SUBS            R2, #8
B290A:  BIC.W           R2, R2, #3
B290E:  LDR             R2, [R3,R2]
B2910:  MULS            R1, R2
B2912:  B               loc_B2916
B2914:  MOVS            R1, #0
B2916:  STR.W           R1, [R12,#0x14]
B291A:  LDR             R1, [R6,#0x1C]
B291C:  CMP             R1, #1
B291E:  BNE             loc_B2944
B2920:  LDR.W           R1, [R10]
B2924:  CMP             R1, #1
B2926:  BLT             loc_B2950
B2928:  ADDW            R1, R8, #0x908
B292C:  MOVS            R2, #0
B292E:  MOVS            R3, #0xA
B2930:  MOVW            R5, #0x10A8
B2934:  STRB            R3, [R1]
B2936:  ADD             R1, R5
B2938:  LDR.W           R4, [R10]
B293C:  ADDS            R2, #1
B293E:  CMP             R2, R4
B2940:  BLT             loc_B2934
B2942:  B               loc_B2950
B2944:  LDR.W           R1, [R9,#0xC]
B2948:  MOVW            R2, #0x2164
B294C:  STR.W           R1, [R8,R2]
B2950:  LDR             R1, =(__stack_chk_guard_ptr - 0xB2958)
B2952:  LDR             R2, [R6,#0x2C]
B2954:  ADD             R1, PC; __stack_chk_guard_ptr
B2956:  LDR             R1, [R1]; __stack_chk_guard
B2958:  LDR             R1, [R1]
B295A:  SUBS            R1, R1, R2
B295C:  ITTTT EQ
B295E:  SUBEQ.W         R4, R7, #-var_1C
B2962:  MOVEQ           SP, R4
B2964:  POPEQ.W         {R8-R11}
B2968:  POPEQ           {R4-R7,PC}
B296A:  BLX             __stack_chk_fail
