; =========================================================
; Game Engine Function: sub_178290
; Address            : 0x178290 - 0x1783BC
; =========================================================

178290:  PUSH            {R4-R7,LR}
178292:  ADD             R7, SP, #0xC
178294:  PUSH.W          {R8-R10}
178298:  VPUSH           {D8-D15}
17829C:  MOV             R4, R0
17829E:  LDRD.W          R6, R0, [R0,#0x20]
1782A2:  VLDR            S26, [R7,#arg_18]
1782A6:  VMOV            S30, R3
1782AA:  ADDS            R5, R6, #1
1782AC:  VLDR            S16, [R7,#arg_14]
1782B0:  VLDR            S20, [R7,#arg_10]
1782B4:  VMOV            S17, R2
1782B8:  VLDR            S18, [R7,#arg_C]
1782BC:  MOV             R9, R1
1782BE:  VLDR            S22, [R7,#arg_8]
1782C2:  MOV             R10, R5
1782C4:  VLDR            S24, [R7,#arg_4]
1782C8:  CMP             R0, R6
1782CA:  VLDR            S28, [R7,#arg_0]
1782CE:  BGT             loc_178310
1782D0:  CMP             R0, #0
1782D2:  ITTE NE
1782D4:  ADDNE.W         R1, R0, R0,LSR#31
1782D8:  ADDNE.W         R1, R0, R1,ASR#1
1782DC:  MOVEQ           R1, #8
1782DE:  CMP             R1, R5
1782E0:  IT GT
1782E2:  MOVGT           R5, R1
1782E4:  CMP             R0, R5
1782E6:  BGE             loc_178310
1782E8:  ADD.W           R0, R5, R5,LSL#2
1782EC:  LSLS            R0, R0, #3
1782EE:  BL              sub_1654B0
1782F2:  LDR             R1, [R4,#0x28]; src
1782F4:  MOV             R8, R0
1782F6:  CBZ             R1, loc_17830C
1782F8:  LDR             R0, [R4,#0x20]
1782FA:  ADD.W           R0, R0, R0,LSL#2
1782FE:  LSLS            R2, R0, #3; n
178300:  MOV             R0, R8; dest
178302:  BLX             j_memcpy
178306:  LDR             R0, [R4,#0x28]
178308:  BL              sub_165578
17830C:  STRD.W          R5, R8, [R4,#0x24]
178310:  LDR             R1, [R4,#0x3C]
178312:  ADD.W           R2, R6, R6,LSL#2
178316:  LDR             R0, [R4,#0x28]
178318:  STR.W           R10, [R4,#0x20]
17831C:  VLDR            S0, [R1,#0x20]
178320:  LDRB            R3, [R1,#0x1C]
178322:  VADD.F32        S0, S0, S26
178326:  STRH.W          R9, [R0,R2,LSL#3]
17832A:  ADD.W           R0, R0, R2,LSL#3
17832E:  VSTR            S16, [R0,#0x24]
178332:  VSTR            S17, [R0,#8]
178336:  VSTR            S30, [R0,#0xC]
17833A:  VSTR            S28, [R0,#0x10]
17833E:  VSTR            S0, [R0,#4]
178342:  VSTR            S24, [R0,#0x14]
178346:  VSTR            S22, [R0,#0x18]
17834A:  VSTR            S18, [R0,#0x1C]
17834E:  VSTR            S20, [R0,#0x20]
178352:  CBZ             R3, loc_17836A
178354:  VMOV.F32        S2, #0.5
178358:  ADDS            R0, #4
17835A:  VADD.F32        S0, S0, S2
17835E:  VCVT.S32.F32    S0, S0
178362:  VCVT.F32.S32    S0, S0
178366:  VSTR            S0, [R0]
17836A:  LDR             R0, [R4,#0x38]
17836C:  VSUB.F32        S4, S20, S22
178370:  VLDR            S8, =1.99
178374:  VSUB.F32        S6, S16, S18
178378:  LDR             R1, [R4,#0x50]
17837A:  VLDR            S0, [R0,#0x1C]
17837E:  VMOV.F32        S10, S8
178382:  VLDR            S2, [R0,#0x20]
178386:  VCVT.F32.S32    S0, S0
17838A:  VCVT.F32.S32    S2, S2
17838E:  VMLA.F32        S10, S4, S0
178392:  VMLA.F32        S8, S6, S2
178396:  VCVT.S32.F32    S0, S10
17839A:  VCVT.S32.F32    S2, S8
17839E:  VMOV            R0, S0
1783A2:  VMOV            R2, S2
1783A6:  MLA.W           R0, R2, R0, R1
1783AA:  MOVS            R1, #1
1783AC:  STRB.W          R1, [R4,#0x54]
1783B0:  STR             R0, [R4,#0x50]
1783B2:  VPOP            {D8-D15}
1783B6:  POP.W           {R8-R10}
1783BA:  POP             {R4-R7,PC}
