; =========================================================
; Game Engine Function: sub_20823C
; Address            : 0x20823C - 0x2083AC
; =========================================================

20823C:  PUSH            {R4-R7,LR}
20823E:  ADD             R7, SP, #0xC
208240:  PUSH.W          {R8-R11}
208244:  LDRB            R4, [R7,#arg_C]
208246:  STR             R0, [R2]
208248:  LDR             R0, [R7,#arg_4]
20824A:  LSLS            R4, R4, #0x1E
20824C:  LDR.W           R10, [R7,#arg_0]
208250:  STR             R3, [R0]
208252:  BPL             loc_20827C
208254:  SUB.W           R4, R10, R3
208258:  CMP             R4, #3
20825A:  BGE             loc_208260
20825C:  MOVS            R0, #1
20825E:  B               loc_2083A6
208260:  ADDS            R4, R3, #1
208262:  STR             R4, [R0]
208264:  MOVS            R4, #0xEF
208266:  STRB            R4, [R3]
208268:  LDR             R3, [R0]
20826A:  ADDS            R4, R3, #1
20826C:  STR             R4, [R0]
20826E:  MOVS            R4, #0xBB
208270:  STRB            R4, [R3]
208272:  LDR             R3, [R0]
208274:  ADDS            R4, R3, #1
208276:  STR             R4, [R0]
208278:  MOVS            R4, #0xBF
20827A:  STRB            R4, [R3]
20827C:  LDR.W           R11, [R7,#arg_8]
208280:  MOV.W           R8, #0
208284:  LDR             R6, [R2]
208286:  MOV.W           R12, #0xC0
20828A:  MOV.W           R9, #2
20828E:  CMP             R6, R1
208290:  BCS.W           loc_2083A4
208294:  LDRH            R5, [R6]
208296:  CMP             R5, R11
208298:  BHI.W           loc_2083A0
20829C:  CMP             R5, #0x7F
20829E:  BHI             loc_2082AC
2082A0:  LDR             R3, [R0]
2082A2:  SUB.W           R4, R10, R3
2082A6:  CMP             R4, #1
2082A8:  BGE             loc_208392
2082AA:  B               loc_20825C
2082AC:  CMP.W           R8, R5,LSR#11
2082B0:  BNE             loc_2082C6
2082B2:  LDR             R3, [R0]
2082B4:  SUB.W           R4, R10, R3
2082B8:  CMP             R4, #2
2082BA:  BLT             loc_20825C
2082BC:  ADDS            R4, R3, #1
2082BE:  STR             R4, [R0]
2082C0:  ORR.W           R4, R12, R5,LSR#6
2082C4:  B               loc_20838A
2082C6:  LSRS            R3, R5, #0xB
2082C8:  CMP             R3, #0x1A
2082CA:  BLS             loc_208368
2082CC:  LSRS            R3, R5, #0xA
2082CE:  CMP             R3, #0x36 ; '6'
2082D0:  BHI             loc_208362
2082D2:  SUBS            R3, R1, R6
2082D4:  CMP             R3, #4
2082D6:  BLT             loc_20825C
2082D8:  LDRH.W          R12, [R6,#2]!
2082DC:  AND.W           R3, R12, #0xFC00
2082E0:  CMP.W           R3, #0xDC00
2082E4:  BNE             loc_2083A0
2082E6:  LDR             R3, [R0]
2082E8:  SUB.W           R3, R10, R3
2082EC:  CMP             R3, #4
2082EE:  BLT             loc_20825C
2082F0:  MOV.W           LR, R5,LSL#10
2082F4:  AND.W           R3, R5, #0x3C0
2082F8:  UXTH.W          R4, LR
2082FC:  ORR.W           LR, R4, R3,LSL#10
208300:  MOV             R4, R12
208302:  BFC.W           R4, #0xA, #0x16
208306:  ADD             R4, LR
208308:  ADD.W           R4, R4, #0x10000
20830C:  CMP             R4, R11
20830E:  BHI             loc_2083A0
208310:  STR             R6, [R2]
208312:  LDR             R4, [R0]
208314:  ADDS            R6, R4, #1
208316:  STR             R6, [R0]
208318:  MOVS            R6, #1
20831A:  ADD.W           R3, R6, R3,LSR#6
20831E:  LSRS            R6, R3, #2
208320:  ADDS            R6, #0xF0
208322:  STRB            R6, [R4]
208324:  LDR             R4, [R0]
208326:  ADDS            R6, R4, #1
208328:  STR             R6, [R0]
20832A:  UBFX.W          R6, R5, #2, #4
20832E:  BFI.W           R6, R3, #4, #2
208332:  ADD.W           R3, R6, #0x80
208336:  STRB            R3, [R4]
208338:  LDR             R3, [R0]
20833A:  ADDS            R4, R3, #1
20833C:  STR             R4, [R0]
20833E:  AND.W           R4, R5, #3
208342:  UBFX.W          R5, R12, #6, #4
208346:  BFI.W           R12, R9, #6, #0x1A
20834A:  ORR.W           R4, R5, R4,LSL#4
20834E:  ADDS            R4, #0x80
208350:  STRB            R4, [R3]
208352:  LDR             R3, [R0]
208354:  ADDS            R4, R3, #1
208356:  STR             R4, [R0]
208358:  STRB.W          R12, [R3]
20835C:  MOV.W           R12, #0xC0
208360:  B               loc_208398
208362:  CMP.W           R5, #0xE000
208366:  BCC             loc_2083A0
208368:  LDR             R3, [R0]
20836A:  SUB.W           R4, R10, R3
20836E:  CMP             R4, #3
208370:  BLT.W           loc_20825C
208374:  ADDS            R4, R3, #1
208376:  STR             R4, [R0]
208378:  LSRS            R4, R5, #0xC
20837A:  ADDS            R4, #0xE0
20837C:  STRB            R4, [R3]
20837E:  LDR             R3, [R0]
208380:  ADDS            R4, R3, #1
208382:  STR             R4, [R0]
208384:  LSRS            R4, R5, #6
208386:  BFI.W           R4, R9, #6, #0x1A
20838A:  STRB            R4, [R3]
20838C:  BFI.W           R5, R9, #6, #0x1A
208390:  LDR             R3, [R0]
208392:  ADDS            R4, R3, #1
208394:  STR             R4, [R0]
208396:  STRB            R5, [R3]
208398:  LDR             R3, [R2]
20839A:  ADDS            R6, R3, #2
20839C:  STR             R6, [R2]
20839E:  B               loc_20828E
2083A0:  MOVS            R0, #2
2083A2:  B               loc_2083A6
2083A4:  MOVS            R0, #0
2083A6:  POP.W           {R8-R11}
2083AA:  POP             {R4-R7,PC}
