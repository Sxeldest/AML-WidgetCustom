; =========================================================
; Game Engine Function: sub_12731C
; Address            : 0x12731C - 0x1273D0
; =========================================================

12731C:  PUSH            {R4-R7,LR}
12731E:  ADD             R7, SP, #0xC
127320:  PUSH.W          {R8-R10}
127324:  SUB             SP, SP, #8
127326:  LDR             R2, =(byte_313AA8 - 0x127332)
127328:  MOV             R8, R1
12732A:  MOV             R9, R0
12732C:  MOVS            R5, #0
12732E:  ADD             R2, PC; byte_313AA8
127330:  MOV             R6, R2
127332:  CBZ             R5, loc_127338
127334:  LDRB            R0, [R6]
127336:  CBZ             R0, loc_12734A
127338:  ADDS            R5, #1
12733A:  ADDS            R6, #0x30 ; '0'
12733C:  CMP             R5, #0x20 ; ' '
12733E:  BNE             loc_127332
127340:  LDR             R1, =(aAxl - 0x127348); "AXL" ...
127342:  LDR             R2, =(aCanTLoadImgArc - 0x12734A); "Can't load IMG archive \"%s\". No free "... ...
127344:  ADD             R1, PC; "AXL"
127346:  ADD             R2, PC; "Can't load IMG archive \"%s\". No free "...
127348:  B               loc_1273BC
12734A:  LDR             R0, =(off_23494C - 0x12735A)
12734C:  MOV             R1, #0x2C9CC9
127354:  MOV             R10, R2
127356:  ADD             R0, PC; off_23494C
127358:  MOVS            R4, #0
12735A:  LDR             R0, [R0]; dword_23DF24
12735C:  LDR             R0, [R0]
12735E:  ADDS            R2, R0, R1
127360:  MOV             R0, R9
127362:  MOVS            R1, #0
127364:  BLX             R2
127366:  MOV             R2, R10
127368:  MOV             R10, R0
12736A:  MOV             R0, R5
12736C:  CMP             R5, #1
12736E:  IT LS
127370:  MOVLS           R0, #1
127372:  ADD.W           R0, R0, R0,LSL#1
127376:  LSLS            R0, R0, #4
127378:  CBZ             R4, loc_127382
12737A:  ADDS            R1, R2, R4
12737C:  LDR             R1, [R1,#0x2C]
12737E:  CMP             R1, R10
127380:  BEQ             loc_1273B0
127382:  ADDS            R4, #0x30 ; '0'
127384:  CMP             R0, R4
127386:  BNE             loc_127378
127388:  MOV             R0, R6
12738A:  MOV             R1, R9
12738C:  MOVS            R2, #0x28 ; '('
12738E:  BLX             __strcpy_chk
127392:  LDR             R1, =(aAxl - 0x12739E); "AXL" ...
127394:  MOVS            R0, #4; prio
127396:  LDR             R2, =(aLoadImgArchive - 0x1273A4); "Load IMG archive \"%s\"(%08X) at %d" ...
127398:  MOV             R3, R9
12739A:  ADD             R1, PC; "AXL"
12739C:  STR.W           R10, [R6,#0x2C]
1273A0:  ADD             R2, PC; "Load IMG archive \"%s\"(%08X) at %d"
1273A2:  STRB.W          R8, [R6,#0x28]
1273A6:  STRD.W          R10, R5, [SP,#0x20+var_20]
1273AA:  BLX             __android_log_print
1273AE:  B               loc_1273C6
1273B0:  LDR             R1, =(aAxl - 0x1273B8); "AXL" ...
1273B2:  LDR             R2, =(aCanTLoadImgArc_0 - 0x1273BE); "Can't load IMG archive \"%s\". Archive "... ...
1273B4:  ADD             R1, PC; "AXL"
1273B6:  STR.W           R10, [SP,#0x20+var_20]
1273BA:  ADD             R2, PC; "Can't load IMG archive \"%s\". Archive "...
1273BC:  MOVS            R0, #6; prio
1273BE:  MOV             R3, R9
1273C0:  BLX             __android_log_print
1273C4:  MOVS            R5, #0
1273C6:  MOV             R0, R5
1273C8:  ADD             SP, SP, #8
1273CA:  POP.W           {R8-R10}
1273CE:  POP             {R4-R7,PC}
