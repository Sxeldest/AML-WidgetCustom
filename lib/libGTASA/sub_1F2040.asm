; =========================================================
; Game Engine Function: sub_1F2040
; Address            : 0x1F2040 - 0x1F23B6
; =========================================================

1F2040:  PUSH            {R4-R7,LR}
1F2042:  ADD             R7, SP, #0xC
1F2044:  PUSH.W          {R8-R11}
1F2048:  SUB             SP, SP, #0xC
1F204A:  MOV             R5, R1
1F204C:  MOV             R4, R0
1F204E:  LDM.W           R5, {R0-R2}
1F2052:  ADD             R1, R0
1F2054:  ADDS            R6, R1, R2
1F2056:  BEQ.W           loc_1F2340
1F205A:  CBZ             R0, loc_1F20B8
1F205C:  VMOV            S0, R0
1F2060:  VLDR            D17, =100000.0
1F2064:  VCVT.F64.S32    D16, S0
1F2068:  VMUL.F64        D16, D16, D17
1F206C:  VMOV            S0, R6
1F2070:  VCVT.F64.S32    D17, S0
1F2074:  VDIV.F64        D16, D16, D17
1F2078:  VMOV.F64        D17, #0.5
1F207C:  VADD.F64        D16, D16, D17
1F2080:  VMOV            R0, R1, D16; x
1F2084:  BLX             floor
1F2088:  VLDR            D17, =2.14748365e9
1F208C:  VMOV            D16, R0, R1
1F2090:  MOVS            R0, #1
1F2092:  VCMPE.F64       D16, D17
1F2096:  VMRS            APSR_nzcv, FPSCR
1F209A:  BGT.W           loc_1F2342
1F209E:  VLDR            D17, =-2.14748365e9
1F20A2:  VCMPE.F64       D16, D17
1F20A6:  VMRS            APSR_nzcv, FPSCR
1F20AA:  BLT.W           loc_1F2342
1F20AE:  VCVT.S32.F64    S0, D16
1F20B2:  VMOV            R0, S0
1F20B6:  B               loc_1F20BA
1F20B8:  MOVS            R0, #0
1F20BA:  STR             R0, [R4]
1F20BC:  LDR             R0, [R5,#4]
1F20BE:  CBZ             R0, loc_1F211C
1F20C0:  VMOV            S0, R0
1F20C4:  VLDR            D17, =100000.0
1F20C8:  VCVT.F64.S32    D16, S0
1F20CC:  VMUL.F64        D16, D16, D17
1F20D0:  VMOV            S0, R6
1F20D4:  VCVT.F64.S32    D17, S0
1F20D8:  VDIV.F64        D16, D16, D17
1F20DC:  VMOV.F64        D17, #0.5
1F20E0:  VADD.F64        D16, D16, D17
1F20E4:  VMOV            R0, R1, D16; x
1F20E8:  BLX             floor
1F20EC:  VLDR            D17, =2.14748365e9
1F20F0:  VMOV            D16, R0, R1
1F20F4:  MOVS            R0, #1
1F20F6:  VCMPE.F64       D16, D17
1F20FA:  VMRS            APSR_nzcv, FPSCR
1F20FE:  BGT.W           loc_1F2342
1F2102:  VLDR            D17, =-2.14748365e9
1F2106:  VCMPE.F64       D16, D17
1F210A:  VMRS            APSR_nzcv, FPSCR
1F210E:  BLT.W           loc_1F2342
1F2112:  VCVT.S32.F64    S0, D16
1F2116:  VMOV            R0, S0
1F211A:  B               loc_1F211E
1F211C:  MOVS            R0, #0
1F211E:  ADD.W           R2, R5, #0xC
1F2122:  STR             R0, [R4,#4]
1F2124:  LDM             R2, {R0-R2}
1F2126:  ADD             R1, R0
1F2128:  ADDS.W          R10, R1, R2
1F212C:  BEQ.W           loc_1F2340
1F2130:  LDRD.W          R9, R8, [R5]
1F2134:  CBZ             R0, loc_1F2192
1F2136:  VMOV            S0, R0
1F213A:  VLDR            D17, =100000.0
1F213E:  VCVT.F64.S32    D16, S0
1F2142:  VMUL.F64        D16, D16, D17
1F2146:  VMOV            S0, R10
1F214A:  VCVT.F64.S32    D17, S0
1F214E:  VDIV.F64        D16, D16, D17
1F2152:  VMOV.F64        D17, #0.5
1F2156:  VADD.F64        D16, D16, D17
1F215A:  VMOV            R0, R1, D16; x
1F215E:  BLX             floor
1F2162:  VLDR            D17, =2.14748365e9
1F2166:  VMOV            D16, R0, R1
1F216A:  MOVS            R0, #1
1F216C:  VCMPE.F64       D16, D17
1F2170:  VMRS            APSR_nzcv, FPSCR
1F2174:  BGT.W           loc_1F2342
1F2178:  VLDR            D17, =-2.14748365e9
1F217C:  VCMPE.F64       D16, D17
1F2180:  VMRS            APSR_nzcv, FPSCR
1F2184:  BLT.W           loc_1F2342
1F2188:  VCVT.S32.F64    S0, D16
1F218C:  VMOV            R0, S0
1F2190:  B               loc_1F2194
1F2192:  MOVS            R0, #0
1F2194:  STR             R0, [R4,#8]
1F2196:  LDR             R0, [R5,#0x10]
1F2198:  CBZ             R0, loc_1F21F6
1F219A:  VMOV            S0, R0
1F219E:  VLDR            D17, =100000.0
1F21A2:  VCVT.F64.S32    D16, S0
1F21A6:  VMUL.F64        D16, D16, D17
1F21AA:  VMOV            S0, R10
1F21AE:  VCVT.F64.S32    D17, S0
1F21B2:  VDIV.F64        D16, D16, D17
1F21B6:  VMOV.F64        D17, #0.5
1F21BA:  VADD.F64        D16, D16, D17
1F21BE:  VMOV            R0, R1, D16; x
1F21C2:  BLX             floor
1F21C6:  VLDR            D17, =2.14748365e9
1F21CA:  VMOV            D16, R0, R1
1F21CE:  MOVS            R0, #1
1F21D0:  VCMPE.F64       D16, D17
1F21D4:  VMRS            APSR_nzcv, FPSCR
1F21D8:  BGT.W           loc_1F2342
1F21DC:  VLDR            D17, =-2.14748365e9
1F21E0:  VCMPE.F64       D16, D17
1F21E4:  VMRS            APSR_nzcv, FPSCR
1F21E8:  BLT.W           loc_1F2342
1F21EC:  VCVT.S32.F64    S0, D16
1F21F0:  VMOV            R0, S0
1F21F4:  B               loc_1F21F8
1F21F6:  MOVS            R0, #0
1F21F8:  ADD.W           R2, R5, #0x18
1F21FC:  STR             R0, [R4,#0xC]
1F21FE:  LDM             R2, {R0-R2}
1F2200:  ADD             R1, R0
1F2202:  ADDS.W          R11, R1, R2
1F2206:  BEQ.W           loc_1F2340
1F220A:  LDR             R1, [R5,#0xC]
1F220C:  CMP             R0, #0
1F220E:  STR             R1, [SP,#0x28+var_20]
1F2210:  LDR             R1, [R5,#0x10]
1F2212:  STR             R1, [SP,#0x28+var_24]
1F2214:  BEQ             loc_1F226E
1F2216:  VMOV            S0, R0
1F221A:  VLDR            D17, =100000.0
1F221E:  VCVT.F64.S32    D16, S0
1F2222:  VMUL.F64        D16, D16, D17
1F2226:  VMOV            S0, R11
1F222A:  VCVT.F64.S32    D17, S0
1F222E:  VDIV.F64        D16, D16, D17
1F2232:  VMOV.F64        D17, #0.5
1F2236:  VADD.F64        D16, D16, D17
1F223A:  VMOV            R0, R1, D16; x
1F223E:  BLX             floor
1F2242:  VLDR            D17, =2.14748365e9
1F2246:  VMOV            D16, R0, R1
1F224A:  MOVS            R0, #1
1F224C:  VCMPE.F64       D16, D17
1F2250:  VMRS            APSR_nzcv, FPSCR
1F2254:  BGT             loc_1F2342
1F2256:  VLDR            D17, =-2.14748365e9
1F225A:  VCMPE.F64       D16, D17
1F225E:  VMRS            APSR_nzcv, FPSCR
1F2262:  BLT             loc_1F2342
1F2264:  VCVT.S32.F64    S0, D16
1F2268:  VMOV            R0, S0
1F226C:  B               loc_1F2270
1F226E:  MOVS            R0, #0
1F2270:  STR             R0, [R4,#0x10]
1F2272:  LDR             R0, [R5,#0x1C]
1F2274:  CBZ             R0, loc_1F22CE
1F2276:  VMOV            S0, R0
1F227A:  VLDR            D17, =100000.0
1F227E:  VCVT.F64.S32    D16, S0
1F2282:  VMUL.F64        D16, D16, D17
1F2286:  VMOV            S0, R11
1F228A:  VCVT.F64.S32    D17, S0
1F228E:  VDIV.F64        D16, D16, D17
1F2292:  VMOV.F64        D17, #0.5
1F2296:  VADD.F64        D16, D16, D17
1F229A:  VMOV            R0, R1, D16; x
1F229E:  BLX             floor
1F22A2:  VLDR            D17, =2.14748365e9
1F22A6:  VMOV            D16, R0, R1
1F22AA:  MOVS            R0, #1
1F22AC:  VCMPE.F64       D16, D17
1F22B0:  VMRS            APSR_nzcv, FPSCR
1F22B4:  BGT             loc_1F2342
1F22B6:  VLDR            D17, =-2.14748365e9
1F22BA:  VCMPE.F64       D16, D17
1F22BE:  VMRS            APSR_nzcv, FPSCR
1F22C2:  BLT             loc_1F2342
1F22C4:  VCVT.S32.F64    S0, D16
1F22C8:  VMOV            R0, S0
1F22CC:  B               loc_1F22D0
1F22CE:  MOVS            R0, #0
1F22D0:  ADD.W           R1, R10, R6
1F22D4:  STR             R0, [R4,#0x14]
1F22D6:  ADDS.W          R6, R1, R11
1F22DA:  BEQ             loc_1F2340
1F22DC:  LDR             R0, [SP,#0x28+var_20]
1F22DE:  LDRD.W          R1, R5, [R5,#0x18]
1F22E2:  ADD             R0, R9
1F22E4:  ADDS            R0, R0, R1
1F22E6:  BEQ             loc_1F234A
1F22E8:  VMOV            S0, R0
1F22EC:  VLDR            D17, =100000.0
1F22F0:  VCVT.F64.S32    D16, S0
1F22F4:  VMUL.F64        D16, D16, D17
1F22F8:  VMOV            S0, R6
1F22FC:  VCVT.F64.S32    D17, S0
1F2300:  VDIV.F64        D16, D16, D17
1F2304:  VMOV.F64        D17, #0.5
1F2308:  VADD.F64        D16, D16, D17
1F230C:  VMOV            R0, R1, D16; x
1F2310:  BLX             floor
1F2314:  VLDR            D17, =2.14748365e9
1F2318:  VMOV            D16, R0, R1
1F231C:  MOVS            R0, #1
1F231E:  VCMPE.F64       D16, D17
1F2322:  VMRS            APSR_nzcv, FPSCR
1F2326:  BGT             loc_1F2342
1F2328:  VLDR            D17, =-2.14748365e9
1F232C:  VCMPE.F64       D16, D17
1F2330:  VMRS            APSR_nzcv, FPSCR
1F2334:  BLT             loc_1F2342
1F2336:  VCVT.S32.F64    S0, D16
1F233A:  VMOV            R0, S0
1F233E:  B               loc_1F234C
1F2340:  MOVS            R0, #1
1F2342:  ADD             SP, SP, #0xC
1F2344:  POP.W           {R8-R11}
1F2348:  POP             {R4-R7,PC}
1F234A:  MOVS            R0, #0
1F234C:  LDR             R1, [SP,#0x28+var_24]
1F234E:  STR             R0, [R4,#0x18]
1F2350:  ADD             R1, R8
1F2352:  ADDS            R0, R1, R5
1F2354:  BEQ             loc_1F23AE
1F2356:  VMOV            S0, R0
1F235A:  VLDR            D17, =100000.0
1F235E:  VCVT.F64.S32    D16, S0
1F2362:  VMUL.F64        D16, D16, D17
1F2366:  VMOV            S0, R6
1F236A:  VCVT.F64.S32    D17, S0
1F236E:  VDIV.F64        D16, D16, D17
1F2372:  VMOV.F64        D17, #0.5
1F2376:  VADD.F64        D16, D16, D17
1F237A:  VMOV            R0, R1, D16; x
1F237E:  BLX             floor
1F2382:  VLDR            D17, =2.14748365e9
1F2386:  VMOV            D16, R0, R1
1F238A:  MOVS            R0, #1
1F238C:  VCMPE.F64       D16, D17
1F2390:  VMRS            APSR_nzcv, FPSCR
1F2394:  BGT             loc_1F2342
1F2396:  VLDR            D17, =-2.14748365e9
1F239A:  VCMPE.F64       D16, D17
1F239E:  VMRS            APSR_nzcv, FPSCR
1F23A2:  BLT             loc_1F2342
1F23A4:  VCVT.S32.F64    S0, D16
1F23A8:  VMOV            R0, S0
1F23AC:  B               loc_1F23B0
1F23AE:  MOVS            R0, #0
1F23B0:  STR             R0, [R4,#0x1C]
1F23B2:  MOVS            R0, #0
1F23B4:  B               loc_1F2342
