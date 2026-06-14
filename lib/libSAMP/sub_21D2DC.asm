; =========================================================
; Game Engine Function: sub_21D2DC
; Address            : 0x21D2DC - 0x21D382
; =========================================================

21D2DC:  PUSH            {R4,R5,R7,LR}
21D2DE:  ADD             R7, SP, #8
21D2E0:  MOV             R4, R1
21D2E2:  LDR             R1, =(aQjk+6 - 0x21D2EC); "(" ...
21D2E4:  MOV             R5, R0
21D2E6:  MOV             R0, R4
21D2E8:  ADD             R1, PC; "("
21D2EA:  ADDS            R2, R1, #1
21D2EC:  BL              sub_216F98
21D2F0:  ADD.W           R0, R5, #0xC
21D2F4:  MOV             R1, R4
21D2F6:  BL              sub_21AC38
21D2FA:  LDR             R1, =(unk_901C1 - 0x21D302)
21D2FC:  MOV             R0, R4
21D2FE:  ADD             R1, PC; unk_901C1
21D300:  ADDS            R2, R1, #1
21D302:  BL              sub_216F98
21D306:  LDR             R0, [R5,#8]
21D308:  LDR             R1, [R0]
21D30A:  LDR             R2, [R1,#0x14]
21D30C:  MOV             R1, R4
21D30E:  BLX             R2
21D310:  LDR             R0, [R5,#0x14]
21D312:  LSLS            R1, R0, #0x1F
21D314:  BEQ             loc_21D324
21D316:  LDR             R1, =(aConst - 0x21D31E); " const" ...
21D318:  MOV             R0, R4
21D31A:  ADD             R1, PC; " const"
21D31C:  ADDS            R2, R1, #6
21D31E:  BL              sub_216F98
21D322:  LDR             R0, [R5,#0x14]
21D324:  LSLS            R1, R0, #0x1E
21D326:  BPL             loc_21D338
21D328:  LDR             R1, =(aVolatile - 0x21D330); " volatile" ...
21D32A:  MOV             R0, R4
21D32C:  ADD             R1, PC; " volatile"
21D32E:  ADD.W           R2, R1, #9
21D332:  BL              sub_216F98
21D336:  LDR             R0, [R5,#0x14]
21D338:  LSLS            R0, R0, #0x1D
21D33A:  BPL             loc_21D34A
21D33C:  LDR             R1, =(aRestrict - 0x21D344); " restrict" ...
21D33E:  MOV             R0, R4
21D340:  ADD             R1, PC; " restrict"
21D342:  ADD.W           R2, R1, #9
21D346:  BL              sub_216F98
21D34A:  LDRB            R0, [R5,#0x18]
21D34C:  CMP             R0, #1
21D34E:  BEQ             loc_21D35C
21D350:  CMP             R0, #2
21D352:  BNE             loc_21D368
21D354:  LDR             R1, =(asc_8B00E - 0x21D35A); " &&" ...
21D356:  ADD             R1, PC; " &&"
21D358:  ADDS            R2, R1, #3
21D35A:  B               loc_21D362
21D35C:  LDR             R1, =(asc_8CCDA - 0x21D362); " &" ...
21D35E:  ADD             R1, PC; " &"
21D360:  ADDS            R2, R1, #2
21D362:  MOV             R0, R4
21D364:  BL              sub_216F98
21D368:  LDR             R0, [R5,#0x1C]
21D36A:  CBZ             R0, locret_21D380
21D36C:  MOV             R0, R4
21D36E:  MOVS            R1, #0x20 ; ' '
21D370:  BL              sub_2154F2
21D374:  LDR             R0, [R5,#0x1C]
21D376:  MOV             R1, R4
21D378:  POP.W           {R4,R5,R7,LR}
21D37C:  B.W             sub_2154CC
21D380:  POP             {R4,R5,R7,PC}
