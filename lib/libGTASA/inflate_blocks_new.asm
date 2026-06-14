; =========================================================
; Game Engine Function: inflate_blocks_new
; Address            : 0x20D2F8 - 0x20D378
; =========================================================

20D2F8:  PUSH            {R4-R7,LR}
20D2FA:  ADD             R7, SP, #0xC
20D2FC:  PUSH.W          {R8}
20D300:  MOV             R5, R0
20D302:  MOV             R6, R2
20D304:  LDR             R3, [R5,#0x20]
20D306:  MOV             R8, R1
20D308:  LDR             R0, [R5,#0x28]
20D30A:  MOVS            R1, #1
20D30C:  MOVS            R2, #0x40 ; '@'
20D30E:  BLX             R3
20D310:  MOV             R4, R0
20D312:  CBZ             R4, loc_20D370
20D314:  LDR             R3, [R5,#0x20]
20D316:  MOVS            R1, #8
20D318:  LDR             R0, [R5,#0x28]
20D31A:  MOV.W           R2, #0x5A0
20D31E:  BLX             R3
20D320:  CMP             R0, #0
20D322:  STR             R0, [R4,#0x24]
20D324:  BEQ             loc_20D366
20D326:  LDR             R3, [R5,#0x20]
20D328:  MOVS            R1, #1
20D32A:  LDR             R0, [R5,#0x28]
20D32C:  MOV             R2, R6
20D32E:  BLX             R3
20D330:  CMP             R0, #0
20D332:  STR             R0, [R4,#0x28]
20D334:  BEQ             loc_20D35E
20D336:  MOVS            R2, #0
20D338:  CMP.W           R8, #0
20D33C:  STR             R2, [R4]
20D33E:  ADD.W           R1, R0, R6
20D342:  STRD.W          R2, R2, [R4,#0x1C]
20D346:  STRD.W          R1, R0, [R4,#0x2C]
20D34A:  STRD.W          R0, R8, [R4,#0x34]
20D34E:  BEQ             loc_20D370
20D350:  MOVS            R0, #0
20D352:  MOVS            R1, #0
20D354:  MOVS            R2, #0
20D356:  BLX             R8
20D358:  STR             R0, [R4,#0x3C]
20D35A:  STR             R0, [R5,#0x30]
20D35C:  B               loc_20D370
20D35E:  LDRD.W          R2, R0, [R5,#0x24]
20D362:  LDR             R1, [R4,#0x24]
20D364:  BLX             R2
20D366:  LDR             R2, [R5,#0x24]
20D368:  MOV             R1, R4
20D36A:  LDR             R0, [R5,#0x28]
20D36C:  BLX             R2
20D36E:  MOVS            R4, #0
20D370:  MOV             R0, R4
20D372:  POP.W           {R8}
20D376:  POP             {R4-R7,PC}
