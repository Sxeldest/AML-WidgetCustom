; =========================================================
; Game Engine Function: postprocess_buffer
; Address            : 0x225222 - 0x225322
; =========================================================

225222:  PUSH            {R4-R7,LR}
225224:  ADD             R7, SP, #0xC
225226:  PUSH.W          {R11}
22522A:  MOVW            R2, #0xB2B0
22522E:  ADD.W           R12, R0, R2
225232:  LDR             R1, [R0,R2]
225234:  CMP.W           R1, #0x6000
225238:  BEQ             loc_225246
22523A:  CMP.W           R1, #0x5080
22523E:  BEQ             loc_2252AA
225240:  CMP.W           R1, #0x2100
225244:  BNE             loc_2252EE
225246:  MOVW            R2, #0xB2A8
22524A:  MOVW            LR, #0xB2A0
22524E:  LDR             R4, [R0,R2]
225250:  ADD             R2, R0
225252:  CMP             R4, #4
225254:  BCC             loc_225276
225256:  LDR.W           R1, [R0,LR]
22525A:  MOVS            R3, #0
22525C:  LDR.W           R4, [R1,R3,LSL#2]
225260:  EOR.W           R4, R4, #0x80000000
225264:  STR.W           R4, [R1,R3,LSL#2]
225268:  ADDS            R3, #1
22526A:  LDR             R4, [R2]
22526C:  CMP.W           R3, R4,LSR#2
225270:  BCC             loc_22525C
225272:  LDR.W           R1, [R12]
225276:  CMP.W           R1, #0x6000
22527A:  BNE             loc_2252EE
22527C:  ADD             LR, R0
22527E:  CMP             R4, #4
225280:  LDR.W           R3, [LR]
225284:  BCC             loc_2252BC
225286:  ADDS            R4, R3, #2
225288:  LDRB.W          R1, [R4,#-1]
22528C:  ADDS            R5, R4, #6
22528E:  STRB            R1, [R3]
225290:  LDRB            R1, [R4]
225292:  STRB            R1, [R3,#1]
225294:  LDRB            R1, [R4,#1]
225296:  ADDS            R4, #4
225298:  STRB            R1, [R3,#2]
22529A:  ADDS            R3, #3
22529C:  LDR.W           R1, [LR]
2252A0:  LDR             R6, [R2]
2252A2:  SUBS            R5, R5, R1
2252A4:  CMP             R5, R6
2252A6:  BLS             loc_225288
2252A8:  B               loc_2252E6
2252AA:  MOVW            R1, #0xB2A0
2252AE:  MOVW            R2, #0xB2A8
2252B2:  LDR             R3, [R0,R1]
2252B4:  LDR             R6, [R0,R2]
2252B6:  ADD             R2, R0
2252B8:  CMP             R6, #4
2252BA:  BCS             loc_2252C0
2252BC:  MOV             R1, R3
2252BE:  B               loc_2252E6
2252C0:  ADD.W           LR, R0, R1
2252C4:  ADDS            R4, R3, #2
2252C6:  LDRB.W          R1, [R4,#-1]
2252CA:  ADDS            R5, R4, #6
2252CC:  STRB            R1, [R3]
2252CE:  LDRB            R1, [R4]
2252D0:  STRB            R1, [R3,#1]
2252D2:  LDRB            R1, [R4,#1]
2252D4:  ADDS            R4, #4
2252D6:  STRB            R1, [R3,#2]
2252D8:  ADDS            R3, #3
2252DA:  LDR.W           R1, [LR]
2252DE:  LDR             R6, [R2]
2252E0:  SUBS            R5, R5, R1
2252E2:  CMP             R5, R6
2252E4:  BLS             loc_2252C6
2252E6:  SUBS            R1, R3, R1
2252E8:  STR             R1, [R2]
2252EA:  LDR.W           R1, [R12]
2252EE:  CMP             R1, #0x60 ; '`'
2252F0:  BNE             loc_22531C
2252F2:  MOVW            R2, #0xB2A8
2252F6:  LDR             R1, [R0,R2]
2252F8:  CMP             R1, #2
2252FA:  BCC             loc_22531C
2252FC:  MOVW            R1, #0xB2A0
225300:  LDR             R1, [R0,R1]
225302:  ADD             R0, R2
225304:  MOVS            R2, #0
225306:  LDRH.W          R3, [R1,R2,LSL#1]
22530A:  ADD.W           R3, R3, #0x8000
22530E:  STRH.W          R3, [R1,R2,LSL#1]
225312:  ADDS            R2, #1
225314:  LDR             R3, [R0]
225316:  CMP.W           R2, R3,LSR#1
22531A:  BCC             loc_225306
22531C:  POP.W           {R11}
225320:  POP             {R4-R7,PC}
