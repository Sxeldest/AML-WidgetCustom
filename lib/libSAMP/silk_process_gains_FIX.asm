; =========================================================
; Game Engine Function: silk_process_gains_FIX
; Address            : 0x1B1FB4 - 0x1B22D4
; =========================================================

1B1FB4:  PUSH            {R4-R7,LR}
1B1FB6:  ADD             R7, SP, #0xC
1B1FB8:  PUSH.W          {R8-R11}
1B1FBC:  SUB             SP, SP, #0x14
1B1FBE:  MOV             R5, R0
1B1FC0:  STR             R2, [SP,#0x30+var_28]
1B1FC2:  MOVW            R0, #0x129D
1B1FC6:  MOV             R4, R1
1B1FC8:  LDRB            R1, [R5,R0]
1B1FCA:  ADD             R0, R5
1B1FCC:  STR             R0, [SP,#0x30+var_24]
1B1FCE:  CMP             R1, #2
1B1FD0:  BNE             loc_1B201A
1B1FD2:  LDR.W           R0, [R4,#0x18C]
1B1FD6:  MOVS            R1, #1
1B1FD8:  SUB.W           R0, R0, #0x600
1B1FDC:  ADD.W           R0, R1, R0,ASR#3
1B1FE0:  ASRS            R0, R0, #1
1B1FE2:  BLX             j_silk_sigm_Q15
1B1FE6:  MOVW            R1, #0x11E4
1B1FEA:  ADD.W           R8, R5, R1
1B1FEE:  LDR             R2, [R5,R1]
1B1FF0:  CMP             R2, #1
1B1FF2:  BLT             loc_1B2022
1B1FF4:  NEGS            R0, R0
1B1FF6:  MOVS            R1, #0
1B1FF8:  SXTH            R0, R0
1B1FFA:  LDR.W           R2, [R4,R1,LSL#2]
1B1FFE:  UXTH            R3, R2
1B2000:  SMLABT.W        R2, R0, R2, R2
1B2004:  MULS            R3, R0
1B2006:  ADD.W           R2, R2, R3,ASR#16
1B200A:  STR.W           R2, [R4,R1,LSL#2]
1B200E:  ADDS            R1, #1
1B2010:  LDR.W           R2, [R8]
1B2014:  CMP             R1, R2
1B2016:  BLT             loc_1B1FFA
1B2018:  B               loc_1B2022
1B201A:  MOVW            R0, #0x11E4
1B201E:  ADD.W           R8, R5, R0
1B2022:  MOVW            R0, #0x126C
1B2026:  MOVW            R1, #0x22BE
1B202A:  LDR             R0, [R5,R0]
1B202C:  MOVW            R2, #0x547B
1B2030:  SUBS            R0, R1, R0
1B2032:  UXTH            R1, R0
1B2034:  MULS            R1, R2
1B2036:  LSRS            R1, R1, #0x10
1B2038:  SMLATB.W        R0, R0, R2, R1
1B203C:  BLX             j_silk_log2lin
1B2040:  MOVW            R1, #0x11EC
1B2044:  STR             R5, [SP,#0x30+var_20]
1B2046:  LDR             R1, [R5,R1]
1B2048:  BLX             sub_220A40
1B204C:  LDR.W           R1, [R8]
1B2050:  CMP             R1, #1
1B2052:  BLT.W           loc_1B21F0
1B2056:  MOVS            R1, #1
1B2058:  MOVW            R10, #0
1B205C:  ADD.W           R1, R1, R0,ASR#15
1B2060:  MOVW            R12, #0xFFFF
1B2064:  SXTH            R0, R0
1B2066:  MOVS            R3, #0
1B2068:  MOV.W           R11, R1,ASR#1
1B206C:  MOVT            R10, #0xFF80
1B2070:  MOVT            R12, #0x7F
1B2074:  MOVW            LR, #0x7FFF
1B2078:  ADD.W           R1, R4, R3,LSL#2
1B207C:  LDR.W           R2, [R1,#0x190]
1B2080:  LDR.W           R1, [R1,#0x1A0]
1B2084:  UXTH            R6, R2
1B2086:  MUL.W           R5, R2, R11
1B208A:  CMP             R1, #1
1B208C:  MUL.W           R6, R0, R6
1B2090:  SMLABT.W        R2, R0, R2, R5
1B2094:  ADD.W           R2, R2, R6,ASR#16
1B2098:  BLT             loc_1B20A6
1B209A:  BNE             loc_1B20BC
1B209C:  AND.W           R1, R2, #1
1B20A0:  ADD.W           R1, R1, R2,ASR#1
1B20A4:  B               loc_1B20C6
1B20A6:  NEGS            R5, R1
1B20A8:  MOV             R1, #0x7FFFFFFF
1B20AC:  LSRS            R1, R5
1B20AE:  CMP             R2, R1
1B20B0:  MOV             R1, #0x7FFFFFFF
1B20B4:  IT LT
1B20B6:  LSLLT.W         R1, R2, R5
1B20BA:  B               loc_1B20C6
1B20BC:  SUBS            R1, #1
1B20BE:  ASR.W           R1, R2, R1
1B20C2:  ADDS            R1, #1
1B20C4:  ASRS            R1, R1, #1
1B20C6:  LDR.W           R2, [R4,R3,LSL#2]
1B20CA:  CMP.W           R1, #0xFFFFFFFF
1B20CE:  SMMLA.W         R6, R2, R2, R1
1B20D2:  MOV             R5, R6
1B20D4:  IT GT
1B20D6:  MOVGT           R5, #0x7FFFFFFF
1B20DA:  CMP.W           R6, #0xFFFFFFFF
1B20DE:  IT GT
1B20E0:  MOVGT           R5, R6
1B20E2:  MOVW            R6, #0x7FFE
1B20E6:  CMP             R5, R6
1B20E8:  BGT             loc_1B211E
1B20EA:  UXTH            R5, R2
1B20EC:  SXTH            R6, R2
1B20EE:  MULS            R5, R6
1B20F0:  LSLS            R1, R1, #0x10
1B20F2:  SMLABT.W        R1, R2, R2, R1
1B20F6:  ADD.W           R1, R1, R5,ASR#16
1B20FA:  MOVS            R5, #1
1B20FC:  ADD.W           R5, R5, R2,ASR#15
1B2100:  ASRS            R5, R5, #1
1B2102:  MLA.W           R5, R5, R2, R1
1B2106:  CMP             R5, #1
1B2108:  BLT             loc_1B2132
1B210A:  CLZ.W           R1, R5
1B210E:  RSBS.W          R2, R1, #0x18
1B2112:  BEQ             loc_1B219C
1B2114:  CMP.W           R2, #0xFFFFFFFF
1B2118:  BLE             loc_1B218C
1B211A:  RORS            R5, R2
1B211C:  B               loc_1B219C
1B211E:  CLZ.W           R1, R5
1B2122:  RSBS.W          R2, R1, #0x18
1B2126:  BEQ             loc_1B2148
1B2128:  CMP.W           R2, #0xFFFFFFFF
1B212C:  BLE             loc_1B2138
1B212E:  RORS            R5, R2
1B2130:  B               loc_1B2148
1B2132:  MOV.W           R9, #0
1B2136:  B               loc_1B21CC
1B2138:  NEGS            R6, R2
1B213A:  ADDS            R2, #0x20 ; ' '
1B213C:  LSL.W           R6, R5, R6
1B2140:  LSR.W           R2, R5, R2
1B2144:  ORR.W           R5, R2, R6
1B2148:  AND.W           R2, R5, #0x7F
1B214C:  MOV.W           R5, #0xD50000
1B2150:  TST.W           R1, #1
1B2154:  MOV.W           R1, R1,LSR#1
1B2158:  MUL.W           R2, R5, R2
1B215C:  MOV.W           R5, #0x8000
1B2160:  IT EQ
1B2162:  MOVWEQ          R5, #0xB486
1B2166:  LSR.W           R1, R5, R1
1B216A:  UXTH            R5, R1
1B216C:  LSRS            R2, R2, #0x10
1B216E:  MULS            R5, R2
1B2170:  SMLABT.W        R1, R2, R1, R1
1B2174:  ADD.W           R9, R1, R5,LSR#16
1B2178:  ADD.W           R1, R10, #0x7F8000
1B217C:  CMP             R9, LR
1B217E:  IT GE
1B2180:  MOVGE           R9, LR
1B2182:  CMP             R9, R1
1B2184:  IT LE
1B2186:  MOVLE           R9, R1
1B2188:  MOVS            R1, #0x10
1B218A:  B               loc_1B21DC
1B218C:  NEGS            R6, R2
1B218E:  ADDS            R2, #0x20 ; ' '
1B2190:  LSL.W           R6, R5, R6
1B2194:  LSR.W           R2, R5, R2
1B2198:  ORR.W           R5, R2, R6
1B219C:  AND.W           R2, R5, #0x7F
1B21A0:  MOV.W           R5, #0xD50000
1B21A4:  TST.W           R1, #1
1B21A8:  MOV.W           R1, R1,LSR#1
1B21AC:  MUL.W           R2, R5, R2
1B21B0:  MOV.W           R5, #0x8000
1B21B4:  IT EQ
1B21B6:  MOVWEQ          R5, #0xB486
1B21BA:  LSR.W           R1, R5, R1
1B21BE:  UXTH            R5, R1
1B21C0:  LSRS            R2, R2, #0x10
1B21C2:  MULS            R5, R2
1B21C4:  SMLABT.W        R1, R2, R1, R1
1B21C8:  ADD.W           R9, R1, R5,LSR#16
1B21CC:  CMP             R9, R12
1B21CE:  MOV.W           R1, #8
1B21D2:  IT GE
1B21D4:  MOVGE           R9, R12
1B21D6:  CMP             R9, R10
1B21D8:  IT LE
1B21DA:  MOVLE           R9, R10
1B21DC:  LSL.W           R1, R9, R1
1B21E0:  STR.W           R1, [R4,R3,LSL#2]
1B21E4:  ADDS            R3, #1
1B21E6:  LDR.W           R1, [R8]
1B21EA:  CMP             R3, R1
1B21EC:  BLT.W           loc_1B2078
1B21F0:  ADD.W           R0, R4, #0x1B0; dest
1B21F4:  LSLS            R2, R1, #2; n
1B21F6:  MOV             R1, R4; src
1B21F8:  BLX             j_memcpy
1B21FC:  LDR             R5, [SP,#0x30+var_20]
1B21FE:  MOV.W           R0, #0x1C00
1B2202:  MOVS            R3, #0
1B2204:  MOV             R1, R4
1B2206:  ADD.W           R2, R5, #0x1C00
1B220A:  LDRB            R0, [R5,R0]
1B220C:  STRB.W          R0, [R4,#0x1C0]
1B2210:  LDR.W           R0, [R8]
1B2214:  MOV.W           R8, #0
1B2218:  STR             R0, [SP,#0x30+var_30]
1B221A:  LDR             R0, [SP,#0x30+var_28]
1B221C:  CMP             R0, #2
1B221E:  ADD.W           R0, R5, #0x1280
1B2222:  IT EQ
1B2224:  MOVEQ           R3, #1
1B2226:  BLX             j_silk_gains_quant
1B222A:  LDR             R0, [SP,#0x30+var_24]
1B222C:  LDRSB.W         R0, [R0]
1B2230:  CMP             R0, #2
1B2232:  BNE             loc_1B2254
1B2234:  MOVW            R1, #0x1268
1B2238:  LDR.W           R2, [R4,#0x18C]
1B223C:  LDR             R1, [R5,R1]
1B223E:  ADD.W           R1, R2, R1,ASR#8
1B2242:  CMP             R1, #0x81
1B2244:  MOVW            R1, #0x129E
1B2248:  IT LT
1B224A:  MOVLT.W         R8, #1
1B224E:  STRB.W          R8, [R5,R1]
1B2252:  B               loc_1B225C
1B2254:  MOVW            R1, #0x129E
1B2258:  LDRB.W          R8, [R5,R1]
1B225C:  LDRSH.W         R1, [R4,#0x180]
1B2260:  MOVW            R3, #0xFE67
1B2264:  LDRSH.W         R2, [R4,#0x184]
1B2268:  MOVW            R6, #0x11B4
1B226C:  LDRSH           R6, [R5,R6]
1B226E:  MUL.W           R12, R1, R3
1B2272:  MOVW            R3, #0xFCCE
1B2276:  MUL.W           LR, R2, R3
1B227A:  MOV             R3, #0xFFFFFFFC
1B227E:  AND.W           R0, R3, R0,LSL#1
1B2282:  LDR             R3, =(silk_Quantization_Offsets_Q10_ptr - 0x1B2288)
1B2284:  ADD             R3, PC; silk_Quantization_Offsets_Q10_ptr
1B2286:  LDR             R3, [R3]; silk_Quantization_Offsets_Q10
1B2288:  ADD             R0, R3
1B228A:  SXTB.W          R3, R8
1B228E:  LDRSH.W         R0, [R0,R3,LSL#1]
1B2292:  MOVW            R3, #0xCCCD
1B2296:  MULS            R0, R3
1B2298:  MOVW            R3, #0x1214
1B229C:  LDRSH           R3, [R5,R3]
1B229E:  MOV             R5, #0xFFFFFFCE
1B22A2:  SMULBB.W        R3, R3, R5
1B22A6:  ADD.W           R0, R3, R0,ASR#16
1B22AA:  MOVW            R3, #0x3334
1B22AE:  SMULBB.W        R3, R6, R3
1B22B2:  ADDW            R0, R0, #0x4CD
1B22B6:  SUBS            R0, R0, R6
1B22B8:  SUBS            R0, R0, R1
1B22BA:  ADD.W           R0, R0, R3,ASR#16
1B22BE:  SUBS            R0, R0, R2
1B22C0:  ADD.W           R0, R0, R12,ASR#16
1B22C4:  ADD.W           R0, R0, LR,ASR#16
1B22C8:  STR.W           R0, [R4,#0x17C]
1B22CC:  ADD             SP, SP, #0x14
1B22CE:  POP.W           {R8-R11}
1B22D2:  POP             {R4-R7,PC}
