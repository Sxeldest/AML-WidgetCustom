; =========================================================
; Game Engine Function: _Z11OS_FileReadPvS_i
; Address            : 0x26725A - 0x2673AE
; =========================================================

26725A:  PUSH            {R4-R7,LR}
26725C:  ADD             R7, SP, #0xC
26725E:  PUSH.W          {R8-R10}
267262:  MOV             R6, R2
267264:  MOV             R9, R1
267266:  MOV             R4, R0
267268:  CBZ             R6, loc_26727E
26726A:  LDRB            R0, [R4,#8]
26726C:  CBZ             R0, loc_267286
26726E:  LDR             R0, [R4,#0xC]
267270:  CMP             R0, #0
267272:  ITT NE
267274:  MOVNE           R0, R4; this
267276:  BLXNE           j__ZN11AndroidFile10AsyncFlushEv; AndroidFile::AsyncFlush(void)
26727A:  STRD.W          R9, R6, [R4,#0xC]
26727E:  MOVS            R0, #0
267280:  POP.W           {R8-R10}
267284:  POP             {R4-R7,PC}
267286:  LDR             R0, [R4,#0x18]
267288:  CMP             R0, #0
26728A:  BLT             loc_2672DA
26728C:  LDR             R0, [R4]
26728E:  LDRD.W          R1, R5, [R0]
267292:  CMP             R1, #1
267294:  BNE             loc_26729E
267296:  MOV             R0, R5; stream
267298:  BLX             ftell
26729C:  B               loc_2672B0
26729E:  MOV             R0, R5; asset
2672A0:  BLX             AAsset_getLength
2672A4:  MOV             R8, R0
2672A6:  MOV             R0, R5; asset
2672A8:  BLX             AAsset_getRemainingLength
2672AC:  SUB.W           R0, R8, R0
2672B0:  LDRD.W          R1, R2, [R4,#0x18]
2672B4:  SUBS            R0, R0, R2
2672B6:  ADDS            R2, R0, R6
2672B8:  CMP             R2, R1
2672BA:  BLE             loc_2672DA
2672BC:  SUBS            R6, R1, R0
2672BE:  CMP             R6, #1
2672C0:  BLT             loc_26739E
2672C2:  LDR             R0, [R4]
2672C4:  LDRD.W          R1, R4, [R0]
2672C8:  CMP             R1, #1
2672CA:  BNE             loc_267346
2672CC:  MOV             R0, R9; ptr
2672CE:  MOVS            R1, #1; size
2672D0:  MOV             R2, R6; n
2672D2:  MOV             R3, R4; stream
2672D4:  BLX             fread
2672D8:  B               loc_26739E
2672DA:  LDR             R0, [R4]
2672DC:  CBZ             R0, loc_2672F0
2672DE:  LDRD.W          R1, R8, [R0]
2672E2:  CMP             R1, #1
2672E4:  BNE             loc_267302
2672E6:  MOV             R0, R9
2672E8:  MOVS            R1, #1
2672EA:  MOV             R2, R6
2672EC:  MOV             R3, R8
2672EE:  B               loc_2672F8
2672F0:  LDR             R3, [R4,#4]; stream
2672F2:  MOV             R0, R9; ptr
2672F4:  MOVS            R1, #1; size
2672F6:  MOV             R2, R6; n
2672F8:  BLX             fread
2672FC:  CMP             R0, R6
2672FE:  BEQ             loc_26727E
267300:  B               loc_267330
267302:  MOV             R0, R8; asset
267304:  BLX             AAsset_getLength
267308:  MOV             R10, R0
26730A:  MOV             R0, R8; asset
26730C:  BLX             AAsset_getLength
267310:  MOV             R5, R0
267312:  MOV             R0, R8; asset
267314:  BLX             AAsset_getRemainingLength
267318:  SUBS            R0, R0, R5
26731A:  MOV             R1, R9; buf
26731C:  ADD.W           R2, R0, R10
267320:  MOV             R0, R8; asset
267322:  CMP             R2, R6
267324:  IT GE
267326:  MOVGE           R2, R6; count
267328:  BLX             AAsset_read
26732C:  CMP             R0, R6
26732E:  BEQ             loc_26727E
267330:  LDR             R0, [R4]
267332:  CBZ             R0, loc_267394
267334:  LDRD.W          R1, R5, [R0]
267338:  CMP             R1, #1
26733A:  BNE             loc_267372
26733C:  MOV             R0, R5; stream
26733E:  BLX             feof
267342:  CBNZ            R0, loc_26739E
267344:  B               loc_267394
267346:  MOV             R0, R4; asset
267348:  BLX             AAsset_getLength
26734C:  MOV             R8, R0
26734E:  MOV             R0, R4; asset
267350:  BLX             AAsset_getLength
267354:  MOV             R5, R0
267356:  MOV             R0, R4; asset
267358:  BLX             AAsset_getRemainingLength
26735C:  SUBS            R0, R0, R5
26735E:  MOV             R1, R9; buf
267360:  ADD             R0, R8
267362:  CMP             R6, R0
267364:  IT GT
267366:  MOVGT           R6, R0
267368:  MOV             R0, R4; asset
26736A:  MOV             R2, R6; count
26736C:  BLX             AAsset_read
267370:  B               loc_26739E
267372:  MOV             R0, R5; asset
267374:  BLX             AAsset_getLength
267378:  MOV             R6, R0
26737A:  MOV             R0, R5; asset
26737C:  BLX             AAsset_getRemainingLength
267380:  SUBS            R6, R6, R0
267382:  MOV             R0, R5; asset
267384:  BLX             AAsset_getLength
267388:  MOV             R1, R0
26738A:  MOVS            R0, #0
26738C:  CMP             R6, R1
26738E:  IT CS
267390:  MOVCS           R0, #1
267392:  CBNZ            R0, loc_26739E
267394:  LDR             R0, [R4,#4]; stream
267396:  CBZ             R0, loc_2673A6
267398:  BLX             feof
26739C:  CBZ             R0, loc_2673A6
26739E:  MOVS            R0, #2
2673A0:  POP.W           {R8-R10}
2673A4:  POP             {R4-R7,PC}
2673A6:  MOVS            R0, #3
2673A8:  POP.W           {R8-R10}
2673AC:  POP             {R4-R7,PC}
