; =========================================================
; Game Engine Function: sub_F1FC0
; Address            : 0xF1FC0 - 0xF2320
; =========================================================

F1FC0:  PUSH            {R4-R7,LR}
F1FC2:  ADD             R7, SP, #0xC
F1FC4:  PUSH.W          {R8-R11}
F1FC8:  SUB             SP, SP, #4
F1FCA:  VPUSH           {D8-D12}
F1FCE:  SUB             SP, SP, #0x1A8
F1FD0:  LDR             R0, =(off_234970 - 0xF1FDC)
F1FD2:  MOV             R5, R3
F1FD4:  MOV             R11, R2
F1FD6:  MOV             R8, R1
F1FD8:  ADD             R0, PC; off_234970
F1FDA:  LDR             R0, [R0]; dword_23DEF0
F1FDC:  LDR             R0, [R0]
F1FDE:  BL              sub_E35A0
F1FE2:  MOV             R0, R5
F1FE4:  BL              sub_F8E1C
F1FE8:  VMOV.F32        S0, #20.0
F1FEC:  VMOV            S18, R0
F1FF0:  VCMP.F32        S18, S0
F1FF4:  VMRS            APSR_nzcv, FPSCR
F1FF8:  BGT.W           loc_F2312
F1FFC:  ADD             R1, SP, #0x1F0+var_88
F1FFE:  MOV             R0, R5
F2000:  BL              sub_F8910
F2004:  LDR             R0, =(off_23494C - 0xF2010)
F2006:  MOVS            R4, #0
F2008:  LDR             R1, [SP,#0x1F0+var_50]
F200A:  MOVS            R2, #0
F200C:  ADD             R0, PC; off_23494C
F200E:  STR             R1, [SP,#0x1F0+var_90]
F2010:  MOVW            R1, #0x5799
F2014:  VLDR            D16, [SP,#0x1F0+var_58]
F2018:  LDR             R0, [R0]; dword_23DF24
F201A:  MOVT            R1, #0x5C ; '\'
F201E:  MOVS            R3, #0
F2020:  VSTR            D16, [SP,#0x1F0+var_98]
F2024:  STRD.W          R4, R4, [SP,#0x1F0+var_1F0]
F2028:  LDR             R0, [R0]
F202A:  ADDS            R6, R0, R1
F202C:  ADD             R0, SP, #0x1F0+var_98
F202E:  ADD             R1, SP, #0x1F0+var_A4
F2030:  BLX             R6
F2032:  VMOV.F32        S0, #1.0
F2036:  VLDR            S2, [SP,#0x1F0+var_9C]
F203A:  VCMP.F32        S2, S0
F203E:  VMRS            APSR_nzcv, FPSCR
F2042:  BMI.W           loc_F2312
F2046:  MOV             R0, R5
F2048:  BL              sub_F8A2C
F204C:  MOV             R9, R0
F204E:  MOV             R0, R5
F2050:  BL              sub_109864
F2054:  MOV             R10, R0
F2056:  MOV             R0, R5
F2058:  BL              sub_109AB4
F205C:  VMOV            S16, R0
F2060:  MOV             R0, R5
F2062:  BL              sub_10A484
F2066:  MOV             R5, R0
F2068:  ADR             R0, dword_F2340
F206A:  VCVT.F64.F32    D18, S16
F206E:  LDR             R2, =(aIdDTypeDSubtyp - 0xF2078); "[id: %d, type: %d subtype: %d Health: %"... ...
F2070:  STR             R4, [SP,#0x1F0+var_1E0]
F2072:  ADD             R4, SP, #0x1F0+s
F2074:  ADD             R2, PC; "[id: %d, type: %d subtype: %d Health: %"...
F2076:  MOV             R3, R11
F2078:  STRD.W          R9, R10, [SP,#0x1F0+var_1F0]
F207C:  VLD1.64         {D16-D17}, [R0]
F2080:  LDRD.W          R0, R1, [SP,#0x1F0+var_A4]
F2084:  STRD.W          R0, R1, [SP,#0x1F0+var_1AC]
F2088:  ADD             R0, SP, #0x1F0+var_1C0
F208A:  VSTR            D18, [SP,#0x1F0+var_1E8]
F208E:  VST1.64         {D16-D17}, [R0]
F2092:  MOV             R0, R4
F2094:  BL              sub_F236C
F2098:  ADD             R6, SP, #0x1F0+var_1D4
F209A:  MOV             R1, R4; s
F209C:  MOV             R0, R6; int
F209E:  BL              sub_DC6DC
F20A2:  LDR             R0, =(off_234980 - 0xF20AC)
F20A4:  VMOV.F32        S16, #0.5
F20A8:  ADD             R0, PC; off_234980
F20AA:  LDR.W           R9, [R0]; dword_238EC0
F20AE:  VLDR            S0, [R9]
F20B2:  VMUL.F32        S0, S0, S16
F20B6:  VMOV            R3, S0
F20BA:  ADD             R0, SP, #0x1F0+var_1C8
F20BC:  MOV             R1, R8
F20BE:  MOV             R2, R6
F20C0:  BL              sub_12B090
F20C4:  LDRB.W          R0, [SP,#0x1F0+var_1D4]
F20C8:  VLDR            S22, [SP,#0x1F0+var_1C8]
F20CC:  VLDR            S20, [SP,#0x1F0+var_1C4]
F20D0:  LSLS            R0, R0, #0x1F
F20D2:  ITT NE
F20D4:  LDRNE           R0, [SP,#0x1F0+var_1CC]; void *
F20D6:  BLXNE           j__ZdlPv; operator delete(void *)
F20DA:  VLDR            S0, [SP,#0x1F0+var_A4]
F20DE:  ADD             R4, SP, #0x1F0+var_1D4
F20E0:  VMLS.F32        S0, S22, S16
F20E4:  ADD             R1, SP, #0x1F0+s; s
F20E6:  MOV             R0, R4; int
F20E8:  VSTR            S0, [SP,#0x1F0+var_1AC]
F20EC:  BL              sub_DC6DC
F20F0:  VLDR            S0, [R9]
F20F4:  VMUL.F32        S0, S0, S16
F20F8:  MOVS            R0, #1
F20FA:  ADD             R1, SP, #0x1F0+var_1AC; int
F20FC:  ADD             R2, SP, #0x1F0+var_1C0; int
F20FE:  STR             R0, [SP,#0x1F0+var_1F0]; int
F2100:  MOV             R0, R8; int
F2102:  MOV             R3, R4; int
F2104:  VSTR            S0, [SP,#0x1F0+var_1F0+4]
F2108:  BL              sub_12AE34
F210C:  LDRB.W          R0, [SP,#0x1F0+var_1D4]
F2110:  LSLS            R0, R0, #0x1F
F2112:  ITT NE
F2114:  LDRNE           R0, [SP,#0x1F0+var_1CC]; void *
F2116:  BLXNE           j__ZdlPv; operator delete(void *)
F211A:  VLDR            S0, [SP,#0x1F0+var_1A8]
F211E:  ADD             R4, SP, #0x1F0+s
F2120:  VCVT.F64.F32    D16, S18
F2124:  LDR             R2, =(aDistance2fmPas - 0xF212E); "Distance: %.2fm PassengerSeats: %u" ...
F2126:  MOV             R0, R4
F2128:  STR             R5, [SP,#0x1F0+var_1E8]
F212A:  ADD             R2, PC; "Distance: %.2fm PassengerSeats: %u"
F212C:  VADD.F32        S0, S20, S0
F2130:  VSTR            D16, [SP,#0x1F0+var_1F0]
F2134:  VSTR            S0, [SP,#0x1F0+var_1A8]
F2138:  BL              sub_F236C
F213C:  ADD             R5, SP, #0x1F0+var_1D4
F213E:  MOV             R1, R4; s
F2140:  MOV             R0, R5; int
F2142:  BL              sub_DC6DC
F2146:  VLDR            S0, [R9]
F214A:  VMUL.F32        S0, S0, S16
F214E:  VMOV            R3, S0
F2152:  ADD             R0, SP, #0x1F0+var_1C8
F2154:  MOV             R1, R8
F2156:  MOV             R2, R5
F2158:  BL              sub_12B090
F215C:  LDRB.W          R0, [SP,#0x1F0+var_1D4]
F2160:  VLDR            S20, [SP,#0x1F0+var_1C8]
F2164:  VLDR            S18, [SP,#0x1F0+var_1C4]
F2168:  LSLS            R0, R0, #0x1F
F216A:  ITT NE
F216C:  LDRNE           R0, [SP,#0x1F0+var_1CC]; void *
F216E:  BLXNE           j__ZdlPv; operator delete(void *)
F2172:  VLDR            S0, [SP,#0x1F0+var_A4]
F2176:  ADD             R4, SP, #0x1F0+var_1D4
F2178:  VMLS.F32        S0, S20, S16
F217C:  ADD             R1, SP, #0x1F0+s; s
F217E:  MOV             R0, R4; int
F2180:  VSTR            S0, [SP,#0x1F0+var_1AC]
F2184:  BL              sub_DC6DC
F2188:  VLDR            S0, [R9]
F218C:  VMUL.F32        S0, S0, S16
F2190:  MOVS            R0, #1
F2192:  ADD             R1, SP, #0x1F0+var_1AC; int
F2194:  ADD             R2, SP, #0x1F0+var_1C0; int
F2196:  STR             R0, [SP,#0x1F0+var_1F0]; int
F2198:  MOV             R0, R8; int
F219A:  MOV             R3, R4; int
F219C:  VSTR            S0, [SP,#0x1F0+var_1F0+4]
F21A0:  BL              sub_12AE34
F21A4:  LDRB.W          R0, [SP,#0x1F0+var_1D4]
F21A8:  LSLS            R0, R0, #0x1F
F21AA:  ITT NE
F21AC:  LDRNE           R0, [SP,#0x1F0+var_1CC]; void *
F21AE:  BLXNE           j__ZdlPv; operator delete(void *)
F21B2:  VLDR            S0, [SP,#0x1F0+var_1A8]
F21B6:  ADD             R4, SP, #0x1F0+s
F21B8:  VLDR            S2, [SP,#0x1F0+var_98]
F21BC:  VLDR            S4, [SP,#0x1F0+var_98+4]
F21C0:  VADD.F32        S0, S18, S0
F21C4:  VLDR            S6, [SP,#0x1F0+var_90]
F21C8:  MOV             R0, R4
F21CA:  VCVT.F64.F32    D17, S4
F21CE:  LDR             R2, =(aCpos3f3f3f - 0xF21D4); "cPos: %.3f,%.3f,%.3f" ...
F21D0:  ADD             R2, PC; "cPos: %.3f,%.3f,%.3f"
F21D2:  VCVT.F64.F32    D16, S6
F21D6:  VCVT.F64.F32    D18, S2
F21DA:  VSTR            S0, [SP,#0x1F0+var_1A8]
F21DE:  VSTR            D18, [SP,#0x1F0+var_1F0]
F21E2:  VSTR            D17, [SP,#0x1F0+var_1E8]
F21E6:  VSTR            D16, [SP,#0x1F0+var_1E0]
F21EA:  BL              sub_F236C
F21EE:  ADD             R5, SP, #0x1F0+var_1D4
F21F0:  MOV             R1, R4; s
F21F2:  MOV             R0, R5; int
F21F4:  BL              sub_DC6DC
F21F8:  VLDR            S0, [R9]
F21FC:  VMUL.F32        S0, S0, S16
F2200:  VMOV            R3, S0
F2204:  ADD             R0, SP, #0x1F0+var_1C8
F2206:  MOV             R1, R8
F2208:  MOV             R2, R5
F220A:  BL              sub_12B090
F220E:  LDRB.W          R0, [SP,#0x1F0+var_1D4]
F2212:  VLDR            S20, [SP,#0x1F0+var_1C8]
F2216:  VLDR            S18, [SP,#0x1F0+var_1C4]
F221A:  LSLS            R0, R0, #0x1F
F221C:  ITT NE
F221E:  LDRNE           R0, [SP,#0x1F0+var_1CC]; void *
F2220:  BLXNE           j__ZdlPv; operator delete(void *)
F2224:  VLDR            S0, [SP,#0x1F0+var_A4]
F2228:  ADD             R4, SP, #0x1F0+var_1D4
F222A:  VMLS.F32        S0, S20, S16
F222E:  ADD             R1, SP, #0x1F0+s; s
F2230:  MOV             R0, R4; int
F2232:  VSTR            S0, [SP,#0x1F0+var_1AC]
F2236:  BL              sub_DC6DC
F223A:  VLDR            S0, [R9]
F223E:  VMUL.F32        S0, S0, S16
F2242:  MOVS            R0, #1
F2244:  ADD             R1, SP, #0x1F0+var_1AC; int
F2246:  ADD             R2, SP, #0x1F0+var_1C0; int
F2248:  STR             R0, [SP,#0x1F0+var_1F0]; int
F224A:  MOV             R0, R8; int
F224C:  MOV             R3, R4; int
F224E:  VSTR            S0, [SP,#0x1F0+var_1F0+4]
F2252:  BL              sub_12AE34
F2256:  LDRB.W          R0, [SP,#0x1F0+var_1D4]
F225A:  VLDR            S24, [R7,#arg_8]
F225E:  VLDR            S22, [R7,#arg_4]
F2262:  LSLS            R0, R0, #0x1F
F2264:  VLDR            S20, [R7,#arg_0]
F2268:  ITT NE
F226A:  LDRNE           R0, [SP,#0x1F0+var_1CC]; void *
F226C:  BLXNE           j__ZdlPv; operator delete(void *)
F2270:  VLDR            S0, [SP,#0x1F0+var_1A8]
F2274:  ADD             R4, SP, #0x1F0+s
F2276:  VCVT.F64.F32    D16, S24
F227A:  LDR             R2, =(aSpos3f3f3f - 0xF2282); "sPos: %.3f,%.3f,%.3f" ...
F227C:  MOV             R0, R4
F227E:  ADD             R2, PC; "sPos: %.3f,%.3f,%.3f"
F2280:  VADD.F32        S0, S18, S0
F2284:  VSTR            D16, [SP,#0x1F0+var_1E0]
F2288:  VCVT.F64.F32    D17, S22
F228C:  VCVT.F64.F32    D18, S20
F2290:  VSTR            S0, [SP,#0x1F0+var_1A8]
F2294:  VSTR            D18, [SP,#0x1F0+var_1F0]
F2298:  VSTR            D17, [SP,#0x1F0+var_1E8]
F229C:  BL              sub_F236C
F22A0:  ADD             R5, SP, #0x1F0+var_1D4
F22A2:  MOV             R1, R4; s
F22A4:  MOV             R0, R5; int
F22A6:  BL              sub_DC6DC
F22AA:  VLDR            S0, [R9]
F22AE:  VMUL.F32        S0, S0, S16
F22B2:  VMOV            R3, S0
F22B6:  ADD             R0, SP, #0x1F0+var_1C8
F22B8:  MOV             R1, R8
F22BA:  MOV             R2, R5
F22BC:  BL              sub_12B090
F22C0:  LDRB.W          R0, [SP,#0x1F0+var_1D4]
F22C4:  VLDR            S18, [SP,#0x1F0+var_1C8]
F22C8:  LSLS            R0, R0, #0x1F
F22CA:  ITT NE
F22CC:  LDRNE           R0, [SP,#0x1F0+var_1CC]; void *
F22CE:  BLXNE           j__ZdlPv; operator delete(void *)
F22D2:  VLDR            S0, [SP,#0x1F0+var_A4]
F22D6:  ADD             R4, SP, #0x1F0+var_1D4
F22D8:  VMLS.F32        S0, S18, S16
F22DC:  ADD             R1, SP, #0x1F0+s; s
F22DE:  MOV             R0, R4; int
F22E0:  VSTR            S0, [SP,#0x1F0+var_1AC]
F22E4:  BL              sub_DC6DC
F22E8:  VLDR            S0, [R9]
F22EC:  VMUL.F32        S0, S0, S16
F22F0:  MOVS            R0, #1
F22F2:  ADD             R1, SP, #0x1F0+var_1AC; int
F22F4:  ADD             R2, SP, #0x1F0+var_1C0; int
F22F6:  STR             R0, [SP,#0x1F0+var_1F0]; int
F22F8:  MOV             R0, R8; int
F22FA:  MOV             R3, R4; int
F22FC:  VSTR            S0, [SP,#0x1F0+var_1F0+4]
F2300:  BL              sub_12AE34
F2304:  LDRB.W          R0, [SP,#0x1F0+var_1D4]
F2308:  LSLS            R0, R0, #0x1F
F230A:  ITT NE
F230C:  LDRNE           R0, [SP,#0x1F0+var_1CC]; void *
F230E:  BLXNE           j__ZdlPv; operator delete(void *)
F2312:  ADD             SP, SP, #0x1A8
F2314:  VPOP            {D8-D12}
F2318:  ADD             SP, SP, #4
F231A:  POP.W           {R8-R11}
F231E:  POP             {R4-R7,PC}
