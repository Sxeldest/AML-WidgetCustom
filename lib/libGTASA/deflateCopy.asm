; =========================================================
; Game Engine Function: deflateCopy
; Address            : 0x20B2CC - 0x20B41C
; =========================================================

20B2CC:  PUSH            {R4-R7,LR}
20B2CE:  ADD             R7, SP, #0xC
20B2D0:  PUSH.W          {R8,R9,R11}
20B2D4:  MOV             R6, R0
20B2D6:  CMP             R6, #0
20B2D8:  MOV             R0, #0xFFFFFFFE
20B2DC:  IT NE
20B2DE:  CMPNE           R1, #0
20B2E0:  BEQ.W           loc_20B3FC
20B2E4:  LDR             R4, [R1,#0x1C]
20B2E6:  CMP             R4, #0
20B2E8:  BEQ.W           loc_20B402
20B2EC:  MOV             R0, R1
20B2EE:  VLDR            D20, [R1,#0x30]
20B2F2:  VLD1.32         {D16-D17}, [R0]!
20B2F6:  MOVW            R2, #0x16B8
20B2FA:  VLD1.32         {D18-D19}, [R0]
20B2FE:  ADD.W           R0, R1, #0x20 ; ' '
20B302:  MOV             R1, R6
20B304:  VLD1.32         {D22-D23}, [R0]
20B308:  ADD.W           R0, R6, #0x20 ; ' '
20B30C:  VST1.32         {D22-D23}, [R0]
20B310:  LDR             R3, [R6,#0x20]
20B312:  LDR             R0, [R6,#0x28]
20B314:  VSTR            D20, [R6,#0x30]
20B318:  VST1.32         {D16-D17}, [R1]!
20B31C:  VST1.32         {D18-D19}, [R1]
20B320:  MOVS            R1, #1
20B322:  BLX             R3
20B324:  MOV             R5, R0
20B326:  CMP             R5, #0
20B328:  BEQ             loc_20B412
20B32A:  MOV             R0, R5; void *
20B32C:  MOV             R1, R4; void *
20B32E:  MOVW            R2, #0x16B8; size_t
20B332:  STR             R5, [R6,#0x1C]
20B334:  BLX             memcpy_0
20B338:  LDR             R1, [R5,#0x24]
20B33A:  MOVS            R2, #2
20B33C:  STR             R6, [R5]
20B33E:  LDR             R3, [R6,#0x20]
20B340:  LDR             R0, [R6,#0x28]
20B342:  BLX             R3
20B344:  LDR             R1, [R5,#0x24]
20B346:  MOVS            R2, #2
20B348:  STR             R0, [R5,#0x30]
20B34A:  LDR             R3, [R6,#0x20]
20B34C:  LDR             R0, [R6,#0x28]
20B34E:  BLX             R3
20B350:  LDR             R1, [R5,#0x44]
20B352:  MOVS            R2, #2
20B354:  STR             R0, [R5,#0x38]
20B356:  LDR             R3, [R6,#0x20]
20B358:  LDR             R0, [R6,#0x28]
20B35A:  BLX             R3
20B35C:  MOVW            R9, #0x1694
20B360:  MOVS            R2, #4
20B362:  LDR.W           R1, [R5,R9]
20B366:  STR             R0, [R5,#0x3C]
20B368:  LDR             R3, [R6,#0x20]
20B36A:  LDR             R0, [R6,#0x28]
20B36C:  BLX             R3
20B36E:  MOV             R8, R0
20B370:  STR.W           R8, [R5,#8]
20B374:  LDR             R0, [R5,#0x30]; void *
20B376:  CMP             R0, #0
20B378:  BEQ             loc_20B40C
20B37A:  LDR             R1, [R5,#0x38]
20B37C:  CMP             R1, #0
20B37E:  IT NE
20B380:  CMPNE.W         R8, #0
20B384:  BEQ             loc_20B40C
20B386:  LDR             R1, [R5,#0x3C]
20B388:  CMP             R1, #0
20B38A:  BEQ             loc_20B40C
20B38C:  LDR             R2, [R5,#0x24]
20B38E:  ADD.W           R6, R5, R9
20B392:  LDR             R1, [R4,#0x30]; void *
20B394:  LSLS            R2, R2, #1; size_t
20B396:  BLX             memcpy_1
20B39A:  LDR             R2, [R5,#0x24]
20B39C:  LDR             R0, [R5,#0x38]; void *
20B39E:  LDR             R1, [R4,#0x38]; void *
20B3A0:  LSLS            R2, R2, #1; size_t
20B3A2:  BLX             memcpy_1
20B3A6:  LDR             R2, [R5,#0x44]
20B3A8:  LDR             R0, [R5,#0x3C]; void *
20B3AA:  LDR             R1, [R4,#0x3C]; void *
20B3AC:  LSLS            R2, R2, #1; size_t
20B3AE:  BLX             memcpy_1
20B3B2:  LDRD.W          R0, R2, [R5,#8]; size_t
20B3B6:  LDR             R1, [R4,#8]; void *
20B3B8:  BLX             memcpy_1
20B3BC:  LDR             R0, [R4,#8]
20B3BE:  MOVW            R3, #0x169C
20B3C2:  LDR             R1, [R4,#0x10]
20B3C4:  LDR             R2, [R5,#8]
20B3C6:  SUBS            R0, R1, R0
20B3C8:  ADD             R0, R2
20B3CA:  STR             R0, [R5,#0x10]
20B3CC:  LDR             R0, [R6]
20B3CE:  BIC.W           R1, R0, #1
20B3D2:  ADD.W           R0, R0, R0,LSL#1
20B3D6:  ADD             R1, R8
20B3D8:  STR             R1, [R5,R3]
20B3DA:  ADD             R0, R2
20B3DC:  MOVW            R1, #0x1690
20B3E0:  STR             R0, [R5,R1]
20B3E2:  ADD.W           R0, R5, #0x8C
20B3E6:  STR.W           R0, [R5,#0xB10]
20B3EA:  ADD.W           R0, R5, #0x980
20B3EE:  STR.W           R0, [R5,#0xB1C]
20B3F2:  ADDW            R0, R5, #0xA74
20B3F6:  STR.W           R0, [R5,#0xB28]
20B3FA:  MOVS            R0, #0
20B3FC:  POP.W           {R8,R9,R11}
20B400:  POP             {R4-R7,PC}
20B402:  MOV             R0, #0xFFFFFFFE
20B406:  POP.W           {R8,R9,R11}
20B40A:  POP             {R4-R7,PC}
20B40C:  MOV             R0, R6
20B40E:  BLX             j_deflateEnd
20B412:  MOV             R0, #0xFFFFFFFC
20B416:  POP.W           {R8,R9,R11}
20B41A:  POP             {R4-R7,PC}
