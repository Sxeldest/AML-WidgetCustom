; =========================================================
; Game Engine Function: sub_209270
; Address            : 0x209270 - 0x209336
; =========================================================

209270:  PUSH            {R4-R7,LR}
209272:  ADD             R7, SP, #0xC
209274:  PUSH.W          {R8-R11}
209278:  STR             R0, [R2]
20927A:  LDRB            R0, [R7,#arg_C]
20927C:  LDR.W           R9, [R7,#arg_4]
209280:  LSLS            R0, R0, #0x1D
209282:  STR.W           R3, [R9]
209286:  BPL             loc_20929E
209288:  LDR             R0, [R2]
20928A:  SUBS            R3, R1, R0
20928C:  CMP             R3, #2
20928E:  BLT             loc_20929E
209290:  LDRB            R3, [R0]
209292:  CMP             R3, #0xFE
209294:  ITTTT EQ
209296:  LDRBEQ          R3, [R0,#1]
209298:  CMPEQ           R3, #0xFF
20929A:  ADDEQ           R0, #2
20929C:  STREQ           R0, [R2]
20929E:  LDR.W           R12, [R7,#arg_8]
2092A2:  SUB.W           R10, R1, #1
2092A6:  LDR.W           R8, [R7,#arg_0]
2092AA:  MOV.W           LR, #0xFC00
2092AE:  B               loc_209312
2092B0:  LDRB            R4, [R3]
2092B2:  LDRB.W          R11, [R3,#1]
2092B6:  AND.W           R6, LR, R4,LSL#8
2092BA:  ORR.W           R4, R11, R4,LSL#8
2092BE:  CMP.W           R6, #0xD800
2092C2:  BEQ             loc_2092D2
2092C4:  CMP.W           R6, #0xDC00
2092C8:  BEQ             loc_20932E
2092CA:  MOVS            R0, #2
2092CC:  CMP             R4, R12
2092CE:  BLS             loc_209302
2092D0:  B               loc_209328
2092D2:  SUBS            R6, R1, R3
2092D4:  CMP             R6, #4
2092D6:  BLT             loc_209332
2092D8:  LDRB            R6, [R3,#2]
2092DA:  AND.W           R0, R6, #0xFC
2092DE:  CMP             R0, #0xDC
2092E0:  BNE             loc_20932E
2092E2:  LDRB            R0, [R3,#3]
2092E4:  AND.W           R4, R4, #0x3C0
2092E8:  BFI.W           R0, R6, #8, #2
2092EC:  MOV.W           R6, R11,LSL#10
2092F0:  UXTH            R6, R6
2092F2:  ORR.W           R4, R6, R4,LSL#10
2092F6:  ADD             R0, R4
2092F8:  ADD.W           R4, R0, #0x10000
2092FC:  CMP             R4, R12
2092FE:  BHI             loc_20932E
209300:  MOVS            R0, #4
209302:  ADD             R0, R3
209304:  STR             R0, [R2]
209306:  LDR.W           R0, [R9]
20930A:  STR             R4, [R5]
20930C:  ADDS            R0, #4
20930E:  STR.W           R0, [R9]
209312:  LDR             R3, [R2]
209314:  CMP             R3, R10
209316:  ITT CC
209318:  LDRCC.W         R5, [R9]
20931C:  CMPCC           R5, R8
20931E:  BCC             loc_2092B0
209320:  MOVS            R0, #0
209322:  CMP             R3, R1
209324:  IT CC
209326:  MOVCC           R0, #1
209328:  POP.W           {R8-R11}
20932C:  POP             {R4-R7,PC}
20932E:  MOVS            R0, #2
209330:  B               loc_209328
209332:  MOVS            R0, #1
209334:  B               loc_209328
