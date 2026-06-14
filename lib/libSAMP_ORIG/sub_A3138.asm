; =========================================================
; Game Engine Function: sub_A3138
; Address            : 0xA3138 - 0xA33B2
; =========================================================

A3138:  PUSH            {R4-R7,LR}
A313A:  ADD             R7, SP, #0xC
A313C:  PUSH.W          {R8-R11}
A3140:  SUB             SP, SP, #4
A3142:  MOV             R10, R0
A3144:  LDR             R0, [R0,#0x20]
A3146:  CBZ             R0, loc_A3162
A3148:  LDR.W           R2, [R10,#0x28]
A314C:  MOVS            R1, #0
A314E:  LDRH.W          R3, [R2],#0x28
A3152:  CMP             R1, R3
A3154:  IT CC
A3156:  MOVCC           R1, R3
A3158:  SUBS            R0, #1
A315A:  BNE             loc_A314E
A315C:  ADD.W           R9, R1, #1
A3160:  B               loc_A3166
A3162:  MOV.W           R9, #1
A3166:  LDR.W           R0, [R10,#8]
A316A:  CBZ             R0, loc_A317A
A316C:  MOVS            R5, #0
A316E:  STRD.W          R5, R5, [R10]
A3172:  BL              sub_88614
A3176:  STR.W           R5, [R10,#8]
A317A:  LDR.W           R0, [R10,#0x1C]
A317E:  CBZ             R0, loc_A318E
A3180:  MOVS            R5, #0
A3182:  STRD.W          R5, R5, [R10,#0x14]
A3186:  BL              sub_88614
A318A:  STR.W           R5, [R10,#0x1C]
A318E:  MOVS            R0, #0
A3190:  MOV             R1, R9
A3192:  STRB.W          R0, [R10,#0x54]
A3196:  MOV             R0, R10
A3198:  BL              sub_A36F6
A319C:  LDRD.W          R2, R5, [R10,#0x1C]
A31A0:  CMP             R5, #1
A31A2:  LDR.W           R0, [R10,#8]
A31A6:  LDR.W           R8, [R10,#0x28]
A31AA:  BLT             loc_A31C8
A31AC:  ADD.W           R1, R8, #4
A31B0:  MOVS            R3, #0
A31B2:  LDRH.W          R6, [R1,#-4]
A31B6:  LDR.W           R4, [R1],#0x28
A31BA:  STRH.W          R3, [R2,R6,LSL#1]
A31BE:  ADDS            R3, #1
A31C0:  CMP             R5, R3
A31C2:  STR.W           R4, [R0,R6,LSL#2]
A31C6:  BNE             loc_A31B2
A31C8:  LDR.W           R12, [R10,#0x14]
A31CC:  MOVW            R4, #0xFFFF
A31D0:  CMP.W           R12, #0x20 ; ' '
A31D4:  BLE             loc_A31EE
A31D6:  LDRH.W          R6, [R2,#0x40]
A31DA:  LDRD.W          R8, R3, [R10,#0x28]
A31DE:  CMP             R6, R4
A31E0:  ADD.W           R1, R6, R6,LSL#2
A31E4:  IT NE
A31E6:  ADDNE.W         R3, R8, R1,LSL#3
A31EA:  CBNZ            R3, loc_A31F6
A31EC:  B               loc_A32DA
A31EE:  LDR.W           R3, [R10,#0x2C]
A31F2:  CMP             R3, #0
A31F4:  BEQ             loc_A32DA
A31F6:  SUBS            R0, R5, #1
A31F8:  ADD.W           R1, R0, R0,LSL#2
A31FC:  LDRH.W          R1, [R8,R1,LSL#3]
A3200:  CMP             R1, #9
A3202:  BNE             loc_A3208
A3204:  MOV             R5, R0
A3206:  B               loc_A3268
A3208:  LDR.W           R0, [R10,#0x24]
A320C:  ADD.W           R11, R5, #1
A3210:  MOV             R6, R11
A3212:  CMP             R0, R5
A3214:  BGT             loc_A3264
A3216:  CMP             R0, #0
A3218:  ITTE NE
A321A:  ADDNE.W         R1, R0, R0,LSR#31
A321E:  ADDNE.W         R2, R0, R1,ASR#1
A3222:  MOVEQ           R2, #8
A3224:  CMP             R2, R11
A3226:  IT GT
A3228:  MOVGT           R11, R2
A322A:  CMP             R0, R11
A322C:  BGE             loc_A3264
A322E:  ADD.W           R0, R11, R11,LSL#2
A3232:  LSLS            R0, R0, #3
A3234:  BL              sub_885E4
A3238:  LDR.W           R1, [R10,#0x28]; src
A323C:  MOV             R8, R0
A323E:  CBZ             R1, loc_A3258
A3240:  LDR.W           R0, [R10,#0x20]
A3244:  ADD.W           R0, R0, R0,LSL#2
A3248:  LSLS            R2, R0, #3; n
A324A:  MOV             R0, R8; dest
A324C:  BLX             j_memcpy
A3250:  LDR.W           R0, [R10,#0x28]
A3254:  BL              sub_88614
A3258:  LDR.W           R12, [R10,#0x14]
A325C:  MOVW            R4, #0xFFFF
A3260:  STRD.W          R11, R8, [R10,#0x24]
A3264:  STR.W           R6, [R10,#0x20]
A3268:  ADD.W           R0, R5, R5,LSL#2
A326C:  CMP.W           R12, #0x20 ; ' '
A3270:  ADD.W           R3, R8, R0,LSL#3
A3274:  BLE             loc_A3290
A3276:  LDR.W           R1, [R10,#0x1C]
A327A:  LDRD.W          R2, R0, [R10,#0x28]
A327E:  LDRH.W          R1, [R1,#0x40]
A3282:  CMP             R1, R4
A3284:  ADD.W           R6, R1, R1,LSL#2
A3288:  IT NE
A328A:  ADDNE.W         R0, R2, R6,LSL#3
A328E:  B               loc_A3294
A3290:  LDR.W           R0, [R10,#0x2C]
A3294:  VLD1.32         {D16-D17}, [R0]!
A3298:  VMOV.F32        S0, #4.0
A329C:  MOVS            R6, #9
A329E:  VLD1.32         {D18-D19}, [R0]!
A32A2:  VLDR            D20, [R0]
A32A6:  MOV             R0, R3
A32A8:  VST1.32         {D16-D17}, [R0]!
A32AC:  VST1.32         {D18-D19}, [R0]!
A32B0:  VSTR            D20, [R0]
A32B4:  VLDR            S2, [R3,#4]
A32B8:  LDR.W           R0, [R10,#8]
A32BC:  VMUL.F32        S0, S2, S0
A32C0:  LDR.W           R12, [R10,#0x14]
A32C4:  LDR.W           R2, [R10,#0x1C]
A32C8:  LDRH.W          R1, [R10,#0x20]
A32CC:  STRH            R6, [R3]
A32CE:  SUBS            R1, #1
A32D0:  STRH            R1, [R2,#0x12]
A32D2:  VSTR            S0, [R3,#4]
A32D6:  VSTR            S0, [R0,#0x24]
A32DA:  LDRH.W          R3, [R10,#0x42]
A32DE:  CMP             R12, R3
A32E0:  BLE             loc_A32EA
A32E2:  LDRH.W          R1, [R2,R3,LSL#1]
A32E6:  CMP             R1, R4
A32E8:  BNE             loc_A32F6
A32EA:  MOVS            R1, #0
A32EC:  VLDR            S0, =0.0
A32F0:  STR.W           R1, [R10,#0x2C]
A32F4:  B               loc_A3312
A32F6:  LDR.W           R2, [R10,#0x28]
A32FA:  ADD.W           R1, R1, R1,LSL#2
A32FE:  ADD.W           R1, R2, R1,LSL#3
A3302:  STR.W           R1, [R10,#0x2C]
A3306:  CMP             R2, #0
A3308:  ITE NE
A330A:  VLDRNE          S0, [R1,#4]
A330E:  VLDREQ          S0, =0.0
A3312:  CMP.W           R9, #4
A3316:  VSTR            S0, [R10,#0xC]
A331A:  BCC             loc_A3386
A331C:  ADD.W           R1, R10, #0x10
A3320:  CMP             R0, R1
A3322:  ITTT CC
A3324:  ADDCC.W         R1, R0, R9,LSL#2
A3328:  ADDCC.W         R2, R10, #0xC
A332C:  CMPCC           R2, R1
A332E:  BCC             loc_A3386
A3330:  BIC.W           R1, R9, #3
A3334:  VLDR            S0, [R10,#0xC]
A3338:  MOV             R3, R0
A333A:  MOV             R2, R1
A333C:  VLD1.32         {D16-D17}, [R3]
A3340:  VCLT.F32        Q8, Q8, #0.0
A3344:  VMOVN.I32       D16, Q8
A3348:  VMOV.U16        R6, D16[0]
A334C:  LSLS            R6, R6, #0x1F
A334E:  IT NE
A3350:  VSTRNE          S0, [R3]
A3354:  VMOV.U16        R6, D16[1]
A3358:  LSLS            R6, R6, #0x1F
A335A:  IT NE
A335C:  VSTRNE          S0, [R3,#4]
A3360:  VMOV.U16        R6, D16[2]
A3364:  LSLS            R6, R6, #0x1F
A3366:  IT NE
A3368:  VSTRNE          S0, [R3,#8]
A336C:  VMOV.U16        R6, D16[3]
A3370:  LSLS            R6, R6, #0x1F
A3372:  IT NE
A3374:  VSTRNE          S0, [R3,#0xC]
A3378:  SUBS            R2, #4
A337A:  ADD.W           R3, R3, #0x10
A337E:  BNE             loc_A333C
A3380:  CMP             R9, R1
A3382:  BNE             loc_A3388
A3384:  B               loc_A33AA
A3386:  MOVS            R1, #0
A3388:  ADD.W           R0, R0, R1,LSL#2
A338C:  SUB.W           R1, R9, R1
A3390:  VLDR            S0, [R0]
A3394:  VCMP.F32        S0, #0.0
A3398:  VMRS            APSR_nzcv, FPSCR
A339C:  ITT MI
A339E:  LDRMI.W         R2, [R10,#0xC]
A33A2:  STRMI           R2, [R0]
A33A4:  ADDS            R0, #4
A33A6:  SUBS            R1, #1
A33A8:  BNE             loc_A3390
A33AA:  ADD             SP, SP, #4
A33AC:  POP.W           {R8-R11}
A33B0:  POP             {R4-R7,PC}
