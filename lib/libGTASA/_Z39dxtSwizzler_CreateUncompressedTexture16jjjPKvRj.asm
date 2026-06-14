; =========================================================
; Game Engine Function: _Z39dxtSwizzler_CreateUncompressedTexture16jjjPKvRj
; Address            : 0x1B1EF8 - 0x1B23AE
; =========================================================

1B1EF8:  PUSH            {R4-R7,LR}
1B1EFA:  ADD             R7, SP, #0xC
1B1EFC:  PUSH.W          {R8-R11}
1B1F00:  SUB             SP, SP, #0x6C
1B1F02:  MOV             R8, R0
1B1F04:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1B1F10)
1B1F08:  MOV             R6, R1
1B1F0A:  MOV             R11, R2
1B1F0C:  ADD             R0, PC; __stack_chk_guard_ptr
1B1F0E:  MOV             R4, R3
1B1F10:  LDR             R1, [R0]; __stack_chk_guard
1B1F12:  LSLS            R0, R6, #1
1B1F14:  STR             R0, [SP,#0x88+var_7C]
1B1F16:  MUL.W           R0, R0, R11; byte_count
1B1F1A:  LDR             R1, [R1]
1B1F1C:  STR             R1, [SP,#0x88+var_20]
1B1F1E:  BLX             malloc
1B1F22:  LDR.W           R10, [R7,#arg_0]
1B1F26:  MOV             R5, R0
1B1F28:  ORR.W           R0, R11, R6
1B1F2C:  ANDS.W          R0, R0, #3
1B1F30:  STR             R0, [SP,#0x88+var_74]
1B1F32:  BEQ             loc_1B1F5A
1B1F34:  CMP.W           R11, #4
1B1F38:  MOV.W           R0, #4
1B1F3C:  IT HI
1B1F3E:  MOVHI           R0, R11
1B1F40:  MOVS            R1, #4
1B1F42:  CMP             R6, #4
1B1F44:  IT HI
1B1F46:  MOVHI           R1, R6
1B1F48:  MULS            R0, R1
1B1F4A:  STR             R1, [SP,#0x88+var_38]
1B1F4C:  LSLS            R0, R0, #1; byte_count
1B1F4E:  BLX             malloc
1B1F52:  MOV             R9, R0
1B1F54:  MOV             R1, R9
1B1F56:  STR             R1, [SP,#0x88+p]
1B1F58:  B               loc_1B1F62
1B1F5A:  MOVS            R0, #0
1B1F5C:  STR             R6, [SP,#0x88+var_38]
1B1F5E:  STR             R0, [SP,#0x88+p]
1B1F60:  MOV             R9, R5
1B1F62:  MOVW            R1, #0x83F0
1B1F66:  MOVW            R0, #0x8363
1B1F6A:  SUB.W           R1, R8, R1
1B1F6E:  STR.W           R0, [R10]
1B1F72:  CMP             R1, #3; switch 4 cases
1B1F74:  BHI             def_1B1F94; jumptable 001B1F94 default case
1B1F76:  ADDS            R2, R6, #3
1B1F78:  ADD.W           R3, R11, #3
1B1F7C:  STR             R5, [SP,#0x88+var_78]
1B1F7E:  LDR             R5, [SP,#0x88+var_38]
1B1F80:  LSRS            R2, R2, #2
1B1F82:  LSRS            R3, R3, #2
1B1F84:  STR             R6, [SP,#0x88+var_80]
1B1F86:  MULS            R3, R2
1B1F88:  ADD.W           R2, R5, R5,LSL#1
1B1F8C:  STR             R2, [SP,#0x88+var_2C]
1B1F8E:  LSLS            R2, R5, #1
1B1F90:  STR             R2, [SP,#0x88+var_34]
1B1F92:  STR             R3, [SP,#0x88+var_30]
1B1F94:  TBB.W           [PC,R1]; switch jump
1B1F98:  DCB 6; jump table for switch statement
1B1F99:  DCB 2
1B1F9A:  DCB 0x37
1B1F9B:  DCB 0xBC
1B1F9C:  MOVW            R0, #0x8034; jumptable 001B1F94 case 1
1B1FA0:  STR.W           R0, [R10]
1B1FA4:  CMP             R3, #0; jumptable 001B1F94 case 0
1B1FA6:  BEQ.W           loc_1B2352
1B1FAA:  STR             R0, [SP,#0x88+var_88]; unsigned int
1B1FAC:  MOV             R0, R4; unsigned __int8 *
1B1FAE:  MOV             R1, R9; unsigned __int16 *
1B1FB0:  MOV             R2, R5; unsigned int
1B1FB2:  MOVS            R3, #1; bool
1B1FB4:  BLX             j__Z31dxtSwizzler_DecodeDXTColorBlockPKhPtjbj; dxtSwizzler_DecodeDXTColorBlock(uchar const*,ushort *,uint,bool,uint)
1B1FB8:  LDR             R0, [SP,#0x88+var_30]
1B1FBA:  CMP             R0, #1
1B1FBC:  BEQ.W           loc_1B2352
1B1FC0:  ADDS            R0, R5, #3
1B1FC2:  ADDS            R4, #8
1B1FC4:  MOVS            R6, #1
1B1FC6:  MOV.W           R8, R0,LSR#2
1B1FCA:  MOV             R0, R6
1B1FCC:  MOV             R1, R8
1B1FCE:  BLX             __aeabi_uidivmod
1B1FD2:  LDR.W           R0, [R10]
1B1FD6:  ADD.W           R9, R9, #8
1B1FDA:  STR             R0, [SP,#0x88+var_88]; unsigned int
1B1FDC:  CMP             R1, #0
1B1FDE:  LDR             R0, [SP,#0x88+var_2C]
1B1FE0:  MOV             R2, R5; unsigned int
1B1FE2:  MOV.W           R3, #1; bool
1B1FE6:  IT EQ
1B1FE8:  ADDEQ.W         R9, R9, R0,LSL#1
1B1FEC:  MOV             R0, R4; unsigned __int8 *
1B1FEE:  MOV             R1, R9; unsigned __int16 *
1B1FF0:  BLX             j__Z31dxtSwizzler_DecodeDXTColorBlockPKhPtjbj; dxtSwizzler_DecodeDXTColorBlock(uchar const*,ushort *,uint,bool,uint)
1B1FF4:  LDR             R0, [SP,#0x88+var_30]
1B1FF6:  ADDS            R6, #1
1B1FF8:  ADDS            R4, #8
1B1FFA:  CMP             R0, R6
1B1FFC:  BNE             loc_1B1FCA
1B1FFE:  B               loc_1B2352
1B2000:  MOV.W           R8, #0; jumptable 001B1F94 default case
1B2004:  B               loc_1B2392
1B2006:  MOVW            R0, #0x8033; jumptable 001B1F94 case 2
1B200A:  CMP             R3, #0
1B200C:  STR.W           R0, [R10]
1B2010:  LDR             R3, [SP,#0x88+var_2C]
1B2012:  BEQ.W           loc_1B2352
1B2016:  ADDS            R0, R3, #3
1B2018:  STR             R0, [SP,#0x88+var_3C]
1B201A:  ADDS            R0, R3, #2
1B201C:  STR             R0, [SP,#0x88+var_40]
1B201E:  ADDS            R0, R3, #1
1B2020:  STR             R0, [SP,#0x88+var_44]
1B2022:  LDR             R0, [SP,#0x88+var_34]
1B2024:  MOVS            R6, #0
1B2026:  ADDS            R1, R0, #3
1B2028:  STR             R1, [SP,#0x88+var_48]
1B202A:  ADDS            R1, R0, #2
1B202C:  ORR.W           R0, R0, #1
1B2030:  STR             R0, [SP,#0x88+var_50]
1B2032:  ADDS            R0, R5, #2
1B2034:  STR             R0, [SP,#0x88+var_54]
1B2036:  ADDS            R0, R5, #1
1B2038:  STR             R0, [SP,#0x88+var_58]
1B203A:  ADDS            R0, R5, #3
1B203C:  STR             R1, [SP,#0x88+var_4C]
1B203E:  MOV.W           R8, R0,LSR#2
1B2042:  STR             R0, [SP,#0x88+var_5C]
1B2044:  LDRB            R0, [R4]
1B2046:  LDR             R2, [SP,#0x88+var_54]
1B2048:  AND.W           R1, R0, #0xF
1B204C:  STRH.W          R1, [R9]
1B2050:  LSRS            R0, R0, #4
1B2052:  STRH.W          R0, [R9,#2]
1B2056:  LDRB            R0, [R4,#1]
1B2058:  AND.W           R1, R0, #0xF
1B205C:  STRH.W          R1, [R9,#4]
1B2060:  LSRS            R0, R0, #4
1B2062:  STRH.W          R0, [R9,#6]
1B2066:  LDRB            R0, [R4,#2]
1B2068:  AND.W           R1, R0, #0xF
1B206C:  STRH.W          R1, [R9,R5,LSL#1]
1B2070:  LSRS            R0, R0, #4
1B2072:  LDR             R1, [SP,#0x88+var_58]
1B2074:  STRH.W          R0, [R9,R1,LSL#1]
1B2078:  LDRB            R0, [R4,#3]
1B207A:  AND.W           R1, R0, #0xF
1B207E:  STRH.W          R1, [R9,R2,LSL#1]
1B2082:  LSRS            R0, R0, #4
1B2084:  LDR             R1, [SP,#0x88+var_5C]
1B2086:  LDR             R2, [SP,#0x88+var_34]
1B2088:  STRH.W          R0, [R9,R1,LSL#1]
1B208C:  LDRB            R0, [R4,#4]
1B208E:  AND.W           R1, R0, #0xF
1B2092:  STRH.W          R1, [R9,R2,LSL#1]
1B2096:  LSRS            R0, R0, #4
1B2098:  LDR             R1, [SP,#0x88+var_50]
1B209A:  LDR             R2, [SP,#0x88+var_4C]
1B209C:  STRH.W          R0, [R9,R1,LSL#1]
1B20A0:  LDRB            R0, [R4,#5]
1B20A2:  AND.W           R1, R0, #0xF
1B20A6:  STRH.W          R1, [R9,R2,LSL#1]
1B20AA:  LSRS            R0, R0, #4
1B20AC:  LDR             R1, [SP,#0x88+var_48]
1B20AE:  LDR             R2, [SP,#0x88+var_40]
1B20B0:  STRH.W          R0, [R9,R1,LSL#1]
1B20B4:  LDRB            R0, [R4,#6]
1B20B6:  AND.W           R1, R0, #0xF
1B20BA:  STRH.W          R1, [R9,R3,LSL#1]
1B20BE:  LSRS            R0, R0, #4
1B20C0:  LDR             R1, [SP,#0x88+var_44]
1B20C2:  MOVS            R3, #0; bool
1B20C4:  STRH.W          R0, [R9,R1,LSL#1]
1B20C8:  LDRB            R0, [R4,#7]
1B20CA:  AND.W           R1, R0, #0xF
1B20CE:  STRH.W          R1, [R9,R2,LSL#1]
1B20D2:  LSRS            R0, R0, #4
1B20D4:  LDR             R1, [SP,#0x88+var_3C]
1B20D6:  MOV             R2, R5; unsigned int
1B20D8:  STRH.W          R0, [R9,R1,LSL#1]
1B20DC:  MOV             R1, R9; unsigned __int16 *
1B20DE:  LDR.W           R0, [R10]
1B20E2:  STR             R0, [SP,#0x88+var_88]; unsigned int
1B20E4:  ADD.W           R0, R4, #8; unsigned __int8 *
1B20E8:  BLX             j__Z31dxtSwizzler_DecodeDXTColorBlockPKhPtjbj; dxtSwizzler_DecodeDXTColorBlock(uchar const*,ushort *,uint,bool,uint)
1B20EC:  ADDS            R6, #1
1B20EE:  MOV             R1, R8
1B20F0:  MOV             R0, R6
1B20F2:  BLX             __aeabi_uidivmod
1B20F6:  LDR             R3, [SP,#0x88+var_2C]
1B20F8:  ADD.W           R9, R9, #8
1B20FC:  CMP             R1, #0
1B20FE:  ADD.W           R4, R4, #0x10
1B2102:  IT EQ
1B2104:  ADDEQ.W         R9, R9, R3,LSL#1
1B2108:  LDR             R0, [SP,#0x88+var_30]
1B210A:  CMP             R0, R6
1B210C:  BNE             loc_1B2044
1B210E:  B               loc_1B2352
1B2110:  MOVW            R0, #0x8033; jumptable 001B1F94 case 3
1B2114:  CMP             R3, #0
1B2116:  STR.W           R0, [R10]
1B211A:  LDR             R0, [SP,#0x88+var_2C]
1B211C:  BEQ.W           loc_1B2352
1B2120:  ADDS            R1, R0, #3
1B2122:  STR             R1, [SP,#0x88+var_3C]
1B2124:  ADDS            R1, R0, #2
1B2126:  ADDS            R0, #1
1B2128:  STR             R0, [SP,#0x88+var_44]
1B212A:  ADD             R6, SP, #0x88+var_28
1B212C:  LDR             R0, [SP,#0x88+var_34]
1B212E:  MOV.W           R8, #0
1B2132:  STR             R1, [SP,#0x88+var_40]
1B2134:  ADDS            R1, R0, #3
1B2136:  STR             R1, [SP,#0x88+var_48]
1B2138:  ADDS            R1, R0, #2
1B213A:  ORR.W           R0, R0, #1
1B213E:  STR             R0, [SP,#0x88+var_50]
1B2140:  ADDS            R0, R5, #2
1B2142:  STR             R0, [SP,#0x88+var_54]
1B2144:  ADDS            R0, R5, #1
1B2146:  STR             R0, [SP,#0x88+var_58]
1B2148:  ADDS            R0, R5, #3
1B214A:  STR             R0, [SP,#0x88+var_5C]
1B214C:  LSRS            R0, R0, #2
1B214E:  STR             R1, [SP,#0x88+var_4C]
1B2150:  STR             R0, [SP,#0x88+var_60]
1B2152:  STR.W           R11, [SP,#0x88+var_6C]
1B2156:  LDRB            R0, [R4]
1B2158:  STRB.W          R0, [SP,#0x88+var_28]
1B215C:  LDRB            R1, [R4,#1]
1B215E:  STRB.W          R1, [SP,#0x88+var_27]
1B2162:  CMP             R0, R1
1B2164:  BLS             loc_1B21E4
1B2166:  ADD.W           R2, R0, R0,LSL#1
1B216A:  ADD.W           LR, R1, R1,LSL#2
1B216E:  ADD.W           R3, R2, R1,LSL#2
1B2172:  ADD.W           R2, R1, R2,LSL#1
1B2176:  MOV.W           R12, R3,LSR#4
1B217A:  MOV             R3, #0x24924925
1B2182:  LSRS            R2, R2, #4
1B2184:  MOV             R11, R3
1B2186:  UMULL.W         R3, R5, R12, R11
1B218A:  ADD.W           R3, LR, R0,LSL#1
1B218E:  MOV             LR, R10
1B2190:  LSRS            R3, R3, #4
1B2192:  STR             R5, [SP,#0x88+var_64]
1B2194:  UMULL.W         R3, R5, R3, R11
1B2198:  ADD.W           R3, R1, R1,LSL#1
1B219C:  STR             R5, [SP,#0x88+var_68]
1B219E:  UMULL.W         R2, R5, R2, R11
1B21A2:  ADD.W           R2, R3, R0,LSL#2
1B21A6:  LSRS            R2, R2, #4
1B21A8:  UMULL.W         R2, R10, R2, R11
1B21AC:  ADD.W           R2, R0, R0,LSL#2
1B21B0:  ADD.W           R2, R2, R1,LSL#1
1B21B4:  LSRS            R2, R2, #4
1B21B6:  UMULL.W         R2, R12, R2, R11
1B21BA:  ADD.W           R2, R0, R3,LSL#1
1B21BE:  LSRS            R2, R2, #4
1B21C0:  UMULL.W         R3, R2, R2, R11
1B21C4:  STRB.W          R12, [SP,#0x88+var_25]
1B21C8:  LDR             R3, [SP,#0x88+var_64]
1B21CA:  STRB.W          R10, [SP,#0x88+var_24]
1B21CE:  STRB.W          R3, [SP,#0x88+var_23]
1B21D2:  MOV             R10, LR
1B21D4:  LDR             R3, [SP,#0x88+var_68]
1B21D6:  STRB.W          R3, [SP,#0x88+var_22]
1B21DA:  LDR.W           R11, [SP,#0x88+var_6C]
1B21DE:  STRB.W          R5, [SP,#0x88+var_26]
1B21E2:  B               loc_1B2238
1B21E4:  MOVW            R3, #0xCCCD
1B21E8:  ADD.W           R2, R0, R1,LSL#2
1B21EC:  MOVT            R3, #0xCCCC
1B21F0:  UMULL.W         R2, R12, R2, R3
1B21F4:  ADD.W           R2, R1, R0,LSL#2
1B21F8:  UMULL.W         R2, R5, R2, R3
1B21FC:  ADD.W           R2, R0, R0,LSL#1
1B2200:  ADD.W           R2, R2, R1,LSL#1
1B2204:  UMULL.W         R2, LR, R2, R3
1B2208:  ADD.W           R2, R1, R1,LSL#1
1B220C:  ADD.W           R2, R2, R0,LSL#1
1B2210:  UMULL.W         R2, R3, R2, R3
1B2214:  MOVS            R2, #0
1B2216:  STRB.W          R2, [SP,#0x88+var_22]
1B221A:  LSRS            R2, R5, #6
1B221C:  STRB.W          R2, [SP,#0x88+var_26]
1B2220:  MOV.W           R2, R12,LSR#6
1B2224:  STRB.W          R2, [SP,#0x88+var_23]
1B2228:  MOV.W           R2, LR,LSR#6
1B222C:  STRB.W          R2, [SP,#0x88+var_25]
1B2230:  LSRS            R2, R3, #6
1B2232:  STRB.W          R2, [SP,#0x88+var_24]
1B2236:  MOVS            R2, #0xF
1B2238:  LSRS            R0, R0, #4
1B223A:  STRB.W          R2, [SP,#0x88+var_21]
1B223E:  STRB.W          R0, [SP,#0x88+var_28]
1B2242:  LSRS            R0, R1, #4
1B2244:  STRB.W          R0, [SP,#0x88+var_27]
1B2248:  MOVS            R5, #4
1B224A:  LDRB            R0, [R4,#2]
1B224C:  MOV.W           R12, #6
1B2250:  AND.W           R1, R0, #7
1B2254:  LDRB            R1, [R6,R1]
1B2256:  STRH.W          R1, [R9]
1B225A:  UBFX.W          R1, R0, #3, #3
1B225E:  LDRB            R1, [R6,R1]
1B2260:  STRH.W          R1, [R9,#2]
1B2264:  LDRB            R1, [R4,#3]
1B2266:  AND.W           R2, R5, R1,LSL#2
1B226A:  ORR.W           R0, R2, R0,LSR#6
1B226E:  LDRB            R0, [R6,R0]
1B2270:  STRH.W          R0, [R9,#4]
1B2274:  UBFX.W          R0, R1, #1, #3
1B2278:  LDRB            R0, [R6,R0]
1B227A:  STRH.W          R0, [R9,#6]
1B227E:  UBFX.W          R0, R1, #4, #3
1B2282:  LDR             R2, [SP,#0x88+var_38]; unsigned int
1B2284:  LDRB            R0, [R6,R0]
1B2286:  STRH.W          R0, [R9,R2,LSL#1]
1B228A:  LDRB            R0, [R4,#4]
1B228C:  AND.W           R3, R12, R0,LSL#1
1B2290:  ORR.W           R1, R3, R1,LSR#7
1B2294:  LDR             R3, [SP,#0x88+var_58]
1B2296:  LDRB            R1, [R6,R1]
1B2298:  STRH.W          R1, [R9,R3,LSL#1]
1B229C:  UBFX.W          R1, R0, #2, #3
1B22A0:  LDR             R3, [SP,#0x88+var_54]
1B22A2:  LSRS            R0, R0, #5
1B22A4:  LDRB            R1, [R6,R1]
1B22A6:  LDRB            R0, [R6,R0]
1B22A8:  STRH.W          R1, [R9,R3,LSL#1]
1B22AC:  LDR             R1, [SP,#0x88+var_5C]
1B22AE:  LDR             R3, [SP,#0x88+var_34]
1B22B0:  STRH.W          R0, [R9,R1,LSL#1]
1B22B4:  LDRB            R0, [R4,#5]
1B22B6:  AND.W           R1, R0, #7
1B22BA:  LDRB            R1, [R6,R1]
1B22BC:  STRH.W          R1, [R9,R3,LSL#1]
1B22C0:  UBFX.W          R1, R0, #3, #3
1B22C4:  LDR             R3, [SP,#0x88+var_50]
1B22C6:  LDRB            R1, [R6,R1]
1B22C8:  STRH.W          R1, [R9,R3,LSL#1]
1B22CC:  LDRB            R1, [R4,#6]
1B22CE:  AND.W           R3, R5, R1,LSL#2
1B22D2:  ORR.W           R0, R3, R0,LSR#6
1B22D6:  LDR             R3, [SP,#0x88+var_4C]
1B22D8:  LDRB            R0, [R6,R0]
1B22DA:  STRH.W          R0, [R9,R3,LSL#1]
1B22DE:  UBFX.W          R0, R1, #1, #3
1B22E2:  LDR             R3, [SP,#0x88+var_48]
1B22E4:  LDRB            R0, [R6,R0]
1B22E6:  STRH.W          R0, [R9,R3,LSL#1]
1B22EA:  UBFX.W          R0, R1, #4, #3
1B22EE:  LDR             R5, [SP,#0x88+var_2C]
1B22F0:  LDRB            R0, [R6,R0]
1B22F2:  STRH.W          R0, [R9,R5,LSL#1]
1B22F6:  LDRB            R0, [R4,#7]
1B22F8:  AND.W           R3, R12, R0,LSL#1
1B22FC:  ORR.W           R1, R3, R1,LSR#7
1B2300:  LDR             R3, [SP,#0x88+var_44]
1B2302:  LDRB            R1, [R6,R1]
1B2304:  STRH.W          R1, [R9,R3,LSL#1]
1B2308:  UBFX.W          R1, R0, #2, #3
1B230C:  LDR             R3, [SP,#0x88+var_40]
1B230E:  LSRS            R0, R0, #5
1B2310:  LDRB            R1, [R6,R1]
1B2312:  LDRB            R0, [R6,R0]
1B2314:  STRH.W          R1, [R9,R3,LSL#1]
1B2318:  MOVS            R3, #0; bool
1B231A:  LDR             R1, [SP,#0x88+var_3C]
1B231C:  STRH.W          R0, [R9,R1,LSL#1]
1B2320:  MOV             R1, R9; unsigned __int16 *
1B2322:  LDR.W           R0, [R10]
1B2326:  STR             R0, [SP,#0x88+var_88]; unsigned int
1B2328:  ADD.W           R0, R4, #8; unsigned __int8 *
1B232C:  BLX             j__Z31dxtSwizzler_DecodeDXTColorBlockPKhPtjbj; dxtSwizzler_DecodeDXTColorBlock(uchar const*,ushort *,uint,bool,uint)
1B2330:  ADD.W           R8, R8, #1
1B2334:  LDR             R1, [SP,#0x88+var_60]
1B2336:  MOV             R0, R8
1B2338:  BLX             __aeabi_uidivmod
1B233C:  ADD.W           R9, R9, #8
1B2340:  CMP             R1, #0
1B2342:  IT EQ
1B2344:  ADDEQ.W         R9, R9, R5,LSL#1
1B2348:  LDR             R0, [SP,#0x88+var_30]
1B234A:  ADDS            R4, #0x10
1B234C:  CMP             R0, R8
1B234E:  BNE.W           loc_1B2156
1B2352:  LDR             R0, [SP,#0x88+var_74]
1B2354:  CBZ             R0, loc_1B238E
1B2356:  LDR.W           R8, [SP,#0x88+var_78]
1B235A:  CMP.W           R11, #0
1B235E:  LDRD.W          R9, R5, [SP,#0x88+var_80]
1B2362:  LDR.W           R10, [SP,#0x88+var_34]
1B2366:  BEQ             loc_1B2386
1B2368:  LDR             R6, [SP,#0x88+p]
1B236A:  MOV             R4, R8
1B236C:  CMP.W           R9, #0
1B2370:  BEQ             loc_1B237C
1B2372:  MOV             R0, R4; void *
1B2374:  MOV             R1, R6; void *
1B2376:  MOV             R2, R5; size_t
1B2378:  BLX             memcpy_1
1B237C:  ADD             R4, R5
1B237E:  ADD             R6, R10
1B2380:  SUBS.W          R11, R11, #1
1B2384:  BNE             loc_1B236C
1B2386:  LDR             R0, [SP,#0x88+p]; p
1B2388:  BLX             free
1B238C:  B               loc_1B2392
1B238E:  LDR.W           R8, [SP,#0x88+var_78]
1B2392:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B239A)
1B2394:  LDR             R1, [SP,#0x88+var_20]
1B2396:  ADD             R0, PC; __stack_chk_guard_ptr
1B2398:  LDR             R0, [R0]; __stack_chk_guard
1B239A:  LDR             R0, [R0]
1B239C:  SUBS            R0, R0, R1
1B239E:  ITTTT EQ
1B23A0:  MOVEQ           R0, R8
1B23A2:  ADDEQ           SP, SP, #0x6C ; 'l'
1B23A4:  POPEQ.W         {R8-R11}
1B23A8:  POPEQ           {R4-R7,PC}
1B23AA:  BLX             __stack_chk_fail
