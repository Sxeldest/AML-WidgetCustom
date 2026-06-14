; =========================================================
; Game Engine Function: celt_pitch_xcorr_c
; Address            : 0xC201C - 0xC2372
; =========================================================

C201C:  PUSH            {R4-R7,LR}
C201E:  ADD             R7, SP, #0xC
C2020:  PUSH.W          {R8-R11}
C2024:  SUB             SP, SP, #0x64
C2026:  MOV             R12, R1
C2028:  LDR             R1, =(__stack_chk_guard_ptr - 0xC2032)
C202A:  LDR             R6, [R7,#arg_0]
C202C:  MOV             R4, R3
C202E:  ADD             R1, PC; __stack_chk_guard_ptr
C2030:  MOV.W           R11, #0
C2034:  CMP             R6, #4
C2036:  LDR             R1, [R1]; __stack_chk_guard
C2038:  LDR             R1, [R1]
C203A:  STR             R1, [SP,#0x80+var_20]
C203C:  BLT.W           loc_C2330
C2040:  SUBS            R1, R6, #3
C2042:  STR             R1, [SP,#0x80+var_6C]
C2044:  SUBS            R1, R4, #4
C2046:  STR             R0, [SP,#0x80+var_4C]
C2048:  BIC.W           R1, R1, #3
C204C:  ADD.W           R5, R12, #6
C2050:  ADDS            R6, R1, #4
C2052:  MOV.W           R9, #1
C2056:  STR             R6, [SP,#0x80+var_74]
C2058:  ADD.W           R0, R0, R6,LSL#1
C205C:  STR             R0, [SP,#0x80+var_78]
C205E:  SUBS            R0, R4, #3
C2060:  STR             R0, [SP,#0x80+var_50]
C2062:  ADDS            R0, R1, #7
C2064:  STR             R4, [SP,#0x80+var_5C]
C2066:  STR             R0, [SP,#0x80+var_7C]
C2068:  STRD.W          R12, R2, [SP,#0x80+var_68]
C206C:  MOVS            R0, #0
C206E:  ADD.W           R3, R12, R11,LSL#1
C2072:  STRD.W          R0, R0, [SP,#0x80+var_28]
C2076:  STRD.W          R0, R0, [SP,#0x80+var_30]
C207A:  LDRH.W          R4, [R12,R11,LSL#1]
C207E:  STR.W           R11, [SP,#0x80+var_60]
C2082:  LDR             R1, [SP,#0x80+var_5C]
C2084:  LDRH.W          R10, [R3,#4]
C2088:  LDRH.W          R11, [R3,#2]
C208C:  CMP             R1, #4
C208E:  STR             R5, [SP,#0x80+var_48]
C2090:  BLT             loc_C2172
C2092:  MOVS            R0, #0
C2094:  STR             R3, [SP,#0x80+var_54]
C2096:  STR             R0, [SP,#0x80+var_34]
C2098:  MOVS            R0, #0
C209A:  MOV.W           R8, #0
C209E:  MOVS            R6, #0
C20A0:  MOVS            R3, #0
C20A2:  STR.W           R9, [SP,#0x80+var_70]
C20A6:  STR             R0, [SP,#0x80+var_38]
C20A8:  STRD.W          R4, R6, [SP,#0x80+var_40]
C20AC:  SXTH.W          R10, R10
C20B0:  LDR             R0, [SP,#0x80+var_4C]
C20B2:  SXTH.W          R11, R11
C20B6:  ADD.W           R2, R0, R3,LSL#1
C20BA:  LDRSH.W         R1, [R0,R3,LSL#1]
C20BE:  LDRSH.W         R6, [R2,#2]
C20C2:  LDRSH.W         R0, [R2,#4]
C20C6:  LDRSH.W         R4, [R2,#6]
C20CA:  LDRSH.W         R2, [R5,R3,LSL#1]
C20CE:  ADD.W           R5, R5, R3,LSL#1
C20D2:  SMLABB.W        R8, R1, R10, R8
C20D6:  LDRSH.W         R9, [R5,#2]
C20DA:  ADDS            R3, #4
C20DC:  LDRSH.W         LR, [R5,#4]
C20E0:  SMLABB.W        R8, R6, R2, R8
C20E4:  LDRSH.W         R12, [R5,#6]
C20E8:  SMLABB.W        R5, R0, R9, R8
C20EC:  LDR.W           R8, [SP,#0x80+var_3C]
C20F0:  SMLABB.W        R5, R4, LR, R5
C20F4:  STR             R5, [SP,#0x80+var_44]
C20F6:  LDR             R5, [SP,#0x80+var_34]
C20F8:  SMLABB.W        R5, R2, R1, R5
C20FC:  SMLABB.W        R5, R9, R6, R5
C2100:  SMLABB.W        R5, LR, R0, R5
C2104:  SMLABB.W        R5, R12, R4, R5
C2108:  STR             R5, [SP,#0x80+var_34]
C210A:  LDR             R5, [SP,#0x80+var_38]
C210C:  SMLABB.W        R5, R1, R11, R5
C2110:  SMLABB.W        R5, R6, R10, R5
C2114:  SMLABB.W        R5, R0, R2, R5
C2118:  SMLABB.W        R5, R4, R9, R5
C211C:  STR             R5, [SP,#0x80+var_38]
C211E:  LDR             R5, [SP,#0x80+var_40]
C2120:  SXTH            R5, R5
C2122:  SMLABB.W        R1, R1, R5, R8
C2126:  LDR.W           R8, [SP,#0x80+var_44]
C212A:  SMLABB.W        R1, R6, R11, R1
C212E:  LDR             R5, [SP,#0x80+var_48]
C2130:  SMLABB.W        R0, R0, R10, R1
C2134:  UXTH.W          R10, R12
C2138:  SMLABB.W        R6, R4, R2, R0
C213C:  LDR             R0, [SP,#0x80+var_50]
C213E:  UXTH.W          R11, LR
C2142:  UXTH.W          R4, R9
C2146:  CMP             R3, R0
C2148:  BLT             loc_C20A8
C214A:  UXTH            R0, R2
C214C:  STR             R0, [SP,#0x80+var_58]
C214E:  LDR             R0, [SP,#0x80+var_38]
C2150:  STRD.W          R6, R0, [SP,#0x80+var_30]
C2154:  LDR             R0, [SP,#0x80+var_34]
C2156:  STR.W           R8, [SP,#0x80+var_28]
C215A:  STR             R0, [SP,#0x80+var_24]
C215C:  LDR             R0, [SP,#0x80+var_7C]
C215E:  LDR             R1, [SP,#0x80+var_54]
C2160:  ADD.W           R2, R1, R0,LSL#1
C2164:  LDRD.W          R1, R0, [SP,#0x80+var_78]
C2168:  STR             R1, [SP,#0x80+var_54]
C216A:  LDR.W           R9, [SP,#0x80+var_70]
C216E:  LDR             R1, [SP,#0x80+var_5C]
C2170:  B               loc_C218C
C2172:  MOVS            R0, #0
C2174:  ADDS            R2, R3, #6
C2176:  STR             R0, [SP,#0x80+var_34]
C2178:  MOVS            R0, #0
C217A:  STR             R0, [SP,#0x80+var_38]
C217C:  MOVS            R0, #0
C217E:  LDR             R3, [SP,#0x80+var_4C]
C2180:  MOV.W           R8, #0
C2184:  STR             R0, [SP,#0x80+var_58]
C2186:  MOVS            R6, #0
C2188:  MOVS            R0, #0
C218A:  STR             R3, [SP,#0x80+var_54]
C218C:  ORR.W           R3, R0, #1
C2190:  CMP             R0, R1
C2192:  STR             R4, [SP,#0x80+var_40]
C2194:  BGE             loc_C21DC
C2196:  LDRSH.W         R0, [R2],#2
C219A:  SXTH.W          R12, R10
C219E:  STR             R2, [SP,#0x80+var_44]
C21A0:  SXTH.W          R5, R11
C21A4:  LDR             R2, [SP,#0x80+var_54]
C21A6:  LDR.W           LR, [SP,#0x80+var_38]
C21AA:  LDRSH.W         R1, [R2],#2
C21AE:  STR             R2, [SP,#0x80+var_54]
C21B0:  MOV             R2, R6
C21B2:  SXTH            R6, R4
C21B4:  SMLABB.W        R2, R1, R6, R2
C21B8:  LDR             R6, [SP,#0x80+var_34]
C21BA:  SMLABB.W        LR, R1, R5, LR
C21BE:  SMLABB.W        R8, R1, R12, R8
C21C2:  SMLABB.W        R6, R0, R1, R6
C21C6:  LDR             R1, [SP,#0x80+var_5C]
C21C8:  UXTH            R0, R0
C21CA:  STRD.W          R2, LR, [SP,#0x80+var_3C]
C21CE:  STRD.W          LR, R8, [SP,#0x80+var_2C]
C21D2:  STRD.W          R6, R2, [SP,#0x80+var_34]
C21D6:  STR             R6, [SP,#0x80+var_24]
C21D8:  STR             R0, [SP,#0x80+var_58]
C21DA:  B               loc_C21E0
C21DC:  STR             R2, [SP,#0x80+var_44]
C21DE:  STR             R6, [SP,#0x80+var_3C]
C21E0:  ADD.W           R12, R3, #1
C21E4:  CMP             R3, R1
C21E6:  BGE             loc_C2238
C21E8:  LDR             R2, [SP,#0x80+var_44]
C21EA:  SXTH.W          R5, R10
C21EE:  LDR.W           LR, [SP,#0x80+var_34]
C21F2:  MOV             R3, R1
C21F4:  LDR             R1, [SP,#0x80+var_58]
C21F6:  SXTH.W          R6, R11
C21FA:  LDRSH.W         R0, [R2],#2
C21FE:  STR             R2, [SP,#0x80+var_44]
C2200:  LDR             R2, [SP,#0x80+var_54]
C2202:  SXTH            R1, R1
C2204:  LDRSH.W         R4, [R2],#2
C2208:  STR             R2, [SP,#0x80+var_54]
C220A:  LDR             R2, [SP,#0x80+var_38]
C220C:  SMLABB.W        LR, R0, R4, LR
C2210:  UXTH            R0, R0
C2212:  SMLABB.W        R2, R4, R5, R2
C2216:  LDR             R5, [SP,#0x80+var_3C]
C2218:  SMLABB.W        R8, R4, R1, R8
C221C:  MOV             R1, R3
C221E:  SMLABB.W        R5, R4, R6, R5
C2222:  MOV             R4, LR
C2224:  MOV             LR, R2
C2226:  MOV             R6, R5
C2228:  STRD.W          R6, LR, [SP,#0x80+var_30]
C222C:  STRD.W          R8, R4, [SP,#0x80+var_28]
C2230:  LDR.W           R11, [SP,#0x80+var_60]
C2234:  STR             R0, [SP,#0x80+var_40]
C2236:  B               loc_C2242
C2238:  LDR.W           R11, [SP,#0x80+var_60]
C223C:  LDR             R4, [SP,#0x80+var_34]
C223E:  LDRD.W          R6, LR, [SP,#0x80+var_3C]
C2242:  LDR             R2, [SP,#0x80+var_64]
C2244:  CMP             R12, R1
C2246:  BGE             loc_C227E
C2248:  LDR             R0, [SP,#0x80+var_40]
C224A:  MOV             R3, R6
C224C:  LDR             R6, [SP,#0x80+var_58]
C224E:  SXTH.W          R5, R10
C2252:  SXTH.W          R12, R0
C2256:  LDR             R0, [SP,#0x80+var_54]
C2258:  SXTH            R6, R6
C225A:  LDRSH.W         R1, [R0]
C225E:  LDR             R0, [SP,#0x80+var_44]
C2260:  SMLABB.W        LR, R1, R6, LR
C2264:  MOV             R6, R3
C2266:  LDRSH.W         R0, [R0]
C226A:  SMLABB.W        R6, R1, R5, R6
C226E:  SMLABB.W        R8, R1, R12, R8
C2272:  SMLABB.W        R4, R0, R1, R4
C2276:  STRD.W          R6, LR, [SP,#0x80+var_30]
C227A:  STRD.W          R8, R4, [SP,#0x80+var_28]
C227E:  ORR.W           R0, R11, #1
C2282:  LDR             R5, [SP,#0x80+var_48]
C2284:  LDR.W           R12, [SP,#0x80+var_68]
C2288:  CMP             R6, LR
C228A:  STR.W           R6, [R2,R11,LSL#2]
C228E:  ADD             R1, SP, #0x80+var_30
C2290:  ADD.W           R5, R5, #8
C2294:  STR.W           LR, [R2,R0,LSL#2]
C2298:  ORR.W           R0, R11, #2
C229C:  MOV             R6, R1
C229E:  STR.W           R8, [R2,R0,LSL#2]
C22A2:  ORR.W           R0, R11, #3
C22A6:  MOV.W           R1, #0xC
C22AA:  STR.W           R4, [R2,R0,LSL#2]
C22AE:  MOV.W           R0, #0
C22B2:  IT LE
C22B4:  MOVLE           R0, #1
C22B6:  CMP             R8, R4
C22B8:  ORR.W           R0, R6, R0,LSL#2
C22BC:  ADD.W           R11, R11, #4
C22C0:  LDR             R0, [R0]
C22C2:  STR             R0, [SP,#0x80+var_30]
C22C4:  IT GT
C22C6:  MOVGT           R1, #8
C22C8:  LDR             R1, [R6,R1]
C22CA:  STR             R1, [SP,#0x80+var_28]
C22CC:  CMP             R0, R1
C22CE:  MOV             R0, R6
C22D0:  IT LE
C22D2:  ADDLE           R0, #8
C22D4:  LDR             R0, [R0]
C22D6:  CMP             R9, R0
C22D8:  IT LE
C22DA:  MOVLE           R9, R0
C22DC:  LDR             R0, [SP,#0x80+var_6C]
C22DE:  CMP             R11, R0
C22E0:  BLT.W           loc_C206C
C22E4:  LDR             R6, [R7,#arg_0]
C22E6:  LDR             R0, [SP,#0x80+var_4C]
C22E8:  LDR             R4, [SP,#0x80+var_5C]
C22EA:  BIC.W           R11, R6, #3
C22EE:  CMP             R11, R6
C22F0:  BGE             loc_C2356
C22F2:  CMP             R4, #1
C22F4:  BLT             loc_C233A
C22F6:  ADD.W           R12, R12, R11,LSL#1
C22FA:  MOV             R3, R4
C22FC:  MOV.W           R8, #0
C2300:  MOV             R6, R0
C2302:  MOV             R1, R12
C2304:  MOV             R4, R3
C2306:  LDRSH.W         LR, [R6],#2
C230A:  SUBS            R4, #1
C230C:  LDRSH.W         R5, [R1],#2
C2310:  SMLABB.W        R8, R5, LR, R8
C2314:  BNE             loc_C2306
C2316:  LDR             R1, [R7,#arg_0]
C2318:  CMP             R9, R8
C231A:  STR.W           R8, [R2,R11,LSL#2]
C231E:  ADD.W           R12, R12, #2
C2322:  ADD.W           R11, R11, #1
C2326:  IT LE
C2328:  MOVLE           R9, R8
C232A:  CMP             R11, R1
C232C:  BNE             loc_C22FC
C232E:  B               loc_C2356
C2330:  MOV.W           R9, #1
C2334:  CMP             R11, R6
C2336:  BLT             loc_C22F2
C2338:  B               loc_C2356
C233A:  SUB.W           R4, R6, R11
C233E:  ADD.W           R0, R2, R11,LSL#2; int
C2342:  LSLS            R1, R4, #2; n
C2344:  BLX             sub_10967C
C2348:  CMP.W           R9, #0
C234C:  IT LE
C234E:  MOVLE.W         R9, #0
C2352:  SUBS            R4, #1
C2354:  BNE             loc_C2348
C2356:  LDR             R0, =(__stack_chk_guard_ptr - 0xC235E)
C2358:  LDR             R1, [SP,#0x80+var_20]
C235A:  ADD             R0, PC; __stack_chk_guard_ptr
C235C:  LDR             R0, [R0]; __stack_chk_guard
C235E:  LDR             R0, [R0]
C2360:  SUBS            R0, R0, R1
C2362:  ITTTT EQ
C2364:  MOVEQ           R0, R9
C2366:  ADDEQ           SP, SP, #0x64 ; 'd'
C2368:  POPEQ.W         {R8-R11}
C236C:  POPEQ           {R4-R7,PC}
C236E:  BLX             __stack_chk_fail
