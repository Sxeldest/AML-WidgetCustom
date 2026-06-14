; =========================================================
; Game Engine Function: silk_find_LPC_FIX
; Address            : 0xD2140 - 0xD2392
; =========================================================

D2140:  PUSH            {R4-R7,LR}
D2142:  ADD             R7, SP, #0xC
D2144:  PUSH.W          {R8-R11}
D2148:  SUB             SP, SP, #0x10C
D214A:  MOV             R10, R0
D214C:  LDR             R0, =(__stack_chk_guard_ptr - 0xD2156)
D214E:  MOV             R6, SP
D2150:  MOV             R12, R2
D2152:  ADD             R0, PC; __stack_chk_guard_ptr
D2154:  STR             R1, [R6,#0x128+var_10C]
D2156:  MOVW            R11, #0x129F
D215A:  MOVW            R8, #0x11E4
D215E:  LDR             R0, [R0]; __stack_chk_guard
D2160:  MOVS            R2, #4
D2162:  MOV             R5, R3
D2164:  MOVW            R9, #0x13E4
D2168:  LDR             R0, [R0]
D216A:  STR             R0, [R6,#0x128+var_108]
D216C:  MOVW            R0, #0x11EC
D2170:  LDR.W           R0, [R10,R0]
D2174:  LDR.W           R1, [R10,R8]
D2178:  STRB.W          R2, [R10,R11]
D217C:  MOV.W           R2, #0x1220
D2180:  LDR.W           R2, [R10,R2]
D2184:  LDR.W           R3, [R10,R9]
D2188:  SUB             SP, SP, #0x18
D218A:  ADDS            R4, R2, R0
D218C:  STR             R5, [SP,#0x140+var_140]
D218E:  MOV             R0, R4
D2190:  STR             R0, [R6,#0x18]
D2192:  SUB.W           R0, R7, #-var_F8
D2196:  STRD.W          R4, R1, [SP,#0x140+var_13C]
D219A:  ADD.W           R1, R6, #0x28 ; '('
D219E:  STRD.W          R2, R3, [SP,#0x140+var_134]
D21A2:  SUB.W           R2, R7, #-var_64
D21A6:  MOV             R3, R12
D21A8:  STR             R3, [R6,#0x14]
D21AA:  BLX             j_silk_burg_modified_c
D21AE:  ADD             SP, SP, #0x18
D21B0:  ADD.W           R0, R10, R11
D21B4:  STR             R0, [R6]
D21B6:  MOVW            R0, #0x1218
D21BA:  ADD.W           R11, R10, #0x1220
D21BE:  LDR.W           R0, [R10,R0]
D21C2:  CMP             R0, #0
D21C4:  BEQ.W           loc_D235E
D21C8:  MOVW            R0, #0x1238
D21CC:  LDR.W           R0, [R10,R0]
D21D0:  CMP             R0, #0
D21D2:  BNE.W           loc_D235E
D21D6:  ADD.W           R0, R10, R8
D21DA:  LDR             R0, [R0]
D21DC:  CMP             R0, #4
D21DE:  BNE.W           loc_D235E
D21E2:  ADD.W           R1, R10, R9
D21E6:  LDR.W           R0, [R11]
D21EA:  STR             R1, [R6,#8]
D21EC:  MOV             R3, R5
D21EE:  LDR             R1, [R1]
D21F0:  ADD.W           R5, R6, #0x24 ; '$'
D21F4:  SUB             SP, SP, #0x18
D21F6:  MOVS            R2, #2
D21F8:  LDR             R4, [R6,#0x18]
D21FA:  STR             R3, [SP,#0x140+var_140]
D21FC:  STRD.W          R4, R2, [SP,#0x140+var_13C]
D2200:  SUB.W           R2, R7, #-var_A4
D2204:  STRD.W          R0, R1, [SP,#0x140+var_134]
D2208:  ADD.W           R1, R6, #0x24 ; '$'
D220C:  LDR             R0, [R6,#0x14]
D220E:  ADD.W           R3, R0, R4,LSL#2
D2212:  SUB.W           R0, R7, #-var_FC
D2216:  BLX             j_silk_burg_modified_c
D221A:  ADD             SP, SP, #0x18
D221C:  LDRD.W          R1, R0, [R5]
D2220:  LSLS            R2, R4, #1
D2222:  STR             R2, [R6,#0x10]
D2224:  SUBS            R0, R1, R0
D2226:  CMP             R0, #0
D2228:  BLT             loc_D223A
D222A:  CMP             R0, #0x1F
D222C:  BGT             loc_D224A
D222E:  LDRD.W          R1, R2, [R5,#8]
D2232:  ASR.W           R0, R1, R0
D2236:  SUBS            R0, R2, R0
D2238:  B               loc_D2248
D223A:  NEGS            R0, R0
D223C:  LDRD.W          R2, R3, [R5,#8]
D2240:  STR             R1, [R5,#4]
D2242:  ASR.W           R0, R3, R0
D2246:  SUBS            R0, R0, R2
D2248:  STR             R0, [R5,#0xC]
D224A:  LDR.W           R2, [R11]
D224E:  SUB.W           R1, R7, #-var_A4
D2252:  LDR             R0, [R6,#0x1C]
D2254:  BLX             j_silk_A2NLSF
D2258:  LDR             R1, [R6,#0x18]
D225A:  MOVS            R0, #7
D225C:  ADD.W           R0, R0, R1,LSL#2
D2260:  BIC.W           R0, R0, #7
D2264:  SUB.W           R1, SP, R0
D2268:  MOVW            R0, #0x1194
D226C:  ADD             R0, R10
D226E:  STR             R0, [R6,#0xC]
D2270:  STR             R1, [R6,#4]
D2272:  MOV             SP, R1
D2274:  LDR.W           R10, [R6,#8]
D2278:  MOV.W           R8, #4
D227C:  LDR.W           R0, [R11]
D2280:  SUB             SP, SP, #8
D2282:  SUB.W           R8, R8, #1
D2286:  SUB.W           R9, R7, #-var_E4
D228A:  LDR             R1, [R6,#0xC]
D228C:  LDR             R2, [R6,#0x1C]
D228E:  MOV             R3, R8
D2290:  STR             R0, [SP,#0x130+var_130]
D2292:  MOV             R0, R9
D2294:  BLX             j_silk_interpolate
D2298:  ADD             SP, SP, #8
D229A:  SUB.W           R4, R7, #-var_C4
D229E:  LDR.W           R3, [R10]
D22A2:  LDR.W           R2, [R11]
D22A6:  MOV             R1, R9
D22A8:  MOV             R0, R4
D22AA:  BLX             j_silk_NLSF2A
D22AE:  LDR.W           R0, [R11]
D22B2:  LDR.W           R1, [R10]
D22B6:  STRD.W          R0, R1, [SP,#0x128+var_130]!
D22BA:  LDR.W           R9, [R6,#4]
D22BE:  MOV             R2, R4
D22C0:  LDR             R1, [R6,#0x14]
D22C2:  LDR             R3, [R6,#0x10]
D22C4:  MOV             R0, R9
D22C6:  BLX             j_silk_LPC_analysis_filter
D22CA:  ADD             SP, SP, #8
D22CC:  LDR.W           R0, [R11]
D22D0:  SUB.W           R1, R7, #-var_F0
D22D4:  LDR             R4, [R6,#0x18]
D22D6:  SUBS            R3, R4, R0
D22D8:  ADD.W           R2, R9, R0,LSL#1
D22DC:  SUB.W           R0, R7, #-var_E8
D22E0:  BLX             j_silk_sum_sqr_shift
D22E4:  LDR.W           R0, [R11]
D22E8:  SUB.W           R1, R7, #-var_F4
D22EC:  SUBS            R3, R4, R0
D22EE:  ADD.W           R0, R9, R0,LSL#1
D22F2:  ADD.W           R2, R0, R4,LSL#1
D22F6:  SUB.W           R0, R7, #-var_EC
D22FA:  BLX             j_silk_sum_sqr_shift
D22FE:  LDRD.W          R3, R0, [R5,#0x10]
D2302:  SUBS            R1, R0, R3
D2304:  CMP             R1, #0
D2306:  BLT             loc_D2314
D2308:  LDR             R2, [R5,#0x18]
D230A:  ASR.W           R1, R2, R1
D230E:  LDR             R2, [R5,#0x1C]
D2310:  STR             R1, [R5,#0x18]
D2312:  B               loc_D2322
D2314:  LDR             R0, [R5,#0x1C]
D2316:  NEGS            R1, R1
D2318:  ASR.W           R2, R0, R1
D231C:  LDR             R1, [R5,#0x18]
D231E:  MOV             R0, R3
D2320:  STR             R2, [R5,#0x1C]
D2322:  LDR             R3, [R5,#4]
D2324:  NEGS            R0, R0
D2326:  ADD             R1, R2
D2328:  SUBS            R2, R0, R3
D232A:  CMP.W           R2, #0xFFFFFFFF
D232E:  BLE             loc_D233C
D2330:  LDR             R3, [R5,#0xC]
D2332:  ASR.W           R2, R1, R2
D2336:  CMP             R2, R3
D2338:  BLT             loc_D234E
D233A:  B               loc_D2358
D233C:  CMN.W           R2, #0x1F
D2340:  BLT             loc_D2358
D2342:  LDR             R3, [R5,#0xC]
D2344:  NEGS            R2, R2
D2346:  ASR.W           R2, R3, R2
D234A:  CMP             R1, R2
D234C:  BGE             loc_D2358
D234E:  STR             R0, [R5,#4]
D2350:  LDR             R0, [R6]
D2352:  STR             R1, [R5,#0xC]
D2354:  STRB.W          R8, [R0]
D2358:  CMP.W           R8, #0
D235C:  BGT             loc_D227C
D235E:  LDR             R0, [R6]
D2360:  LDRB            R0, [R0]
D2362:  CMP             R0, #4
D2364:  BNE             loc_D2374
D2366:  LDR.W           R2, [R11]
D236A:  SUB.W           R1, R7, #-var_64
D236E:  LDR             R0, [R6,#0x1C]
D2370:  BLX             j_silk_A2NLSF
D2374:  LDR             R0, =(__stack_chk_guard_ptr - 0xD237C)
D2376:  LDR             R1, [R6,#0x20]
D2378:  ADD             R0, PC; __stack_chk_guard_ptr
D237A:  LDR             R0, [R0]; __stack_chk_guard
D237C:  LDR             R0, [R0]
D237E:  SUBS            R0, R0, R1
D2380:  ITTTT EQ
D2382:  SUBEQ.W         R4, R7, #-var_1C
D2386:  MOVEQ           SP, R4
D2388:  POPEQ.W         {R8-R11}
D238C:  POPEQ           {R4-R7,PC}
D238E:  BLX             __stack_chk_fail
