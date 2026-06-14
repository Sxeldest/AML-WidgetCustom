; =========================================================
; Game Engine Function: sub_10B208
; Address            : 0x10B208 - 0x10B2A8
; =========================================================

10B208:  PUSH            {R4-R7,LR}
10B20A:  ADD             R7, SP, #0xC
10B20C:  PUSH.W          {R11}
10B210:  SUB             SP, SP, #8
10B212:  LDR             R6, =(dword_263080 - 0x10B21A)
10B214:  MOV             R4, R0
10B216:  ADD             R6, PC; dword_263080
10B218:  LDR             R0, [R6,#(dword_263084 - 0x263080)]; this
10B21A:  CBZ             R0, loc_10B25A
10B21C:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
10B220:  STR             R0, [SP,#0x18+var_14]
10B222:  CBZ             R0, loc_10B25A
10B224:  LDR             R6, [R6]
10B226:  MOV             R5, R0
10B228:  STR             R6, [SP,#0x18+var_18]
10B22A:  CBZ             R6, loc_10B25E
10B22C:  BL              sub_10B314
10B230:  CBZ             R0, loc_10B25E
10B232:  BL              sub_10B380
10B236:  CBZ             R0, loc_10B25E
10B238:  BL              sub_10B4A0
10B23C:  LDR             R0, =(off_234A80 - 0x10B244)
10B23E:  LDR             R1, [R6]
10B240:  ADD             R0, PC; off_234A80
10B242:  LDR             R0, [R0]; dword_25C9C8
10B244:  LDR             R2, [R1,#0x44]
10B246:  LDR             R0, [R0]
10B248:  LDR             R0, [R0,#4]
10B24A:  LDR             R1, [R0,#0x30]
10B24C:  MOV             R0, R6
10B24E:  BLX             R2
10B250:  MOVS            R6, #0
10B252:  MOVS            R0, #0
10B254:  BL              sub_163C8C
10B258:  B               loc_10B260
10B25A:  MOVS            R6, #1
10B25C:  B               loc_10B288
10B25E:  MOVS            R6, #1
10B260:  ADDS            R0, R5, #4
10B262:  DMB.W           ISH
10B266:  LDREX.W         R1, [R0]
10B26A:  SUBS            R2, R1, #1
10B26C:  STREX.W         R3, R2, [R0]
10B270:  CMP             R3, #0
10B272:  BNE             loc_10B266
10B274:  DMB.W           ISH
10B278:  CBNZ            R1, loc_10B288
10B27A:  LDR             R0, [R5]
10B27C:  LDR             R1, [R0,#8]
10B27E:  MOV             R0, R5
10B280:  BLX             R1
10B282:  MOV             R0, R5; this
10B284:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10B288:  CBZ             R6, loc_10B2A0
10B28A:  LDR             R0, =(off_26306C - 0x10B290)
10B28C:  ADD             R0, PC; off_26306C
10B28E:  LDR             R1, [R0]
10B290:  CBZ             R1, loc_10B2A0
10B292:  MOV             R0, R4
10B294:  ADD             SP, SP, #8
10B296:  POP.W           {R11}
10B29A:  POP.W           {R4-R7,LR}
10B29E:  BX              R1
10B2A0:  ADD             SP, SP, #8
10B2A2:  POP.W           {R11}
10B2A6:  POP             {R4-R7,PC}
