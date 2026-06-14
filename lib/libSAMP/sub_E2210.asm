; =========================================================
; Game Engine Function: sub_E2210
; Address            : 0xE2210 - 0xE22B0
; =========================================================

E2210:  PUSH            {R4-R7,LR}
E2212:  ADD             R7, SP, #0xC
E2214:  PUSH.W          {R11}
E2218:  MOV             R5, R0
E221A:  LDR             R0, [R0]
E221C:  MOV             R4, R1
E221E:  LDR             R1, [R0]
E2220:  CBZ             R1, loc_E2244
E2222:  LDR             R2, =(unk_91D45 - 0xE222C)
E2224:  LDRD.W          R0, R3, [R4,#8]
E2228:  ADD             R2, PC; unk_91D45
E222A:  LDRB            R6, [R2,R1]
E222C:  ADDS            R1, R0, #1
E222E:  CMP             R3, R1
E2230:  BCS             loc_E223E
E2232:  LDR             R0, [R4]
E2234:  LDR             R2, [R0]
E2236:  MOV             R0, R4
E2238:  BLX             R2
E223A:  LDR             R0, [R4,#8]
E223C:  ADDS            R1, R0, #1
E223E:  LDR             R2, [R4,#4]
E2240:  STR             R1, [R4,#8]
E2242:  STRB            R6, [R2,R0]
E2244:  LDRD.W          R0, R2, [R4,#8]
E2248:  LDR             R6, [R5,#4]
E224A:  ADDS            R1, R0, #1
E224C:  CMP             R2, R1
E224E:  BCS             loc_E225C
E2250:  LDR             R0, [R4]
E2252:  LDR             R2, [R0]
E2254:  MOV             R0, R4
E2256:  BLX             R2
E2258:  LDR             R0, [R4,#8]
E225A:  ADDS            R1, R0, #1
E225C:  LDR             R2, [R4,#4]
E225E:  LDRB            R3, [R6]
E2260:  STR             R1, [R4,#8]
E2262:  STRB            R3, [R2,R0]
E2264:  LDR             R0, [R5,#8]
E2266:  LDRB            R0, [R0]
E2268:  CBZ             R0, loc_E22A8
E226A:  LDRD.W          R0, R2, [R4,#8]
E226E:  LDR             R6, [R5,#0xC]
E2270:  ADDS            R1, R0, #1
E2272:  CMP             R2, R1
E2274:  BCS             loc_E2282
E2276:  LDR             R0, [R4]
E2278:  LDR             R2, [R0]
E227A:  MOV             R0, R4
E227C:  BLX             R2
E227E:  LDR             R0, [R4,#8]
E2280:  ADDS            R1, R0, #1
E2282:  LDR             R2, [R4,#4]
E2284:  LDRB            R3, [R6]
E2286:  STR             R1, [R4,#8]
E2288:  STRB            R3, [R2,R0]
E228A:  LDR             R0, [R5,#0x10]
E228C:  LDR             R2, [R5,#4]
E228E:  LDR             R1, [R0]
E2290:  MOV             R0, R4
E2292:  BL              sub_DE834
E2296:  MOV             R4, R0
E2298:  LDRD.W          R0, R1, [R5,#0x14]
E229C:  LDR             R2, [R1]
E229E:  LDR             R1, [R0]
E22A0:  MOV             R0, R4
E22A2:  ADD             R2, R1
E22A4:  BL              sub_DCF30
E22A8:  MOV             R0, R4
E22AA:  POP.W           {R11}
E22AE:  POP             {R4-R7,PC}
