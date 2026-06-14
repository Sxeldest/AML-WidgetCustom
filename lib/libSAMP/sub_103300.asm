; =========================================================
; Game Engine Function: sub_103300
; Address            : 0x103300 - 0x10336C
; =========================================================

103300:  PUSH            {R4,R5,R7,LR}
103302:  ADD             R7, SP, #8
103304:  SUB             SP, SP, #8
103306:  LDR             R4, =(off_234A74 - 0x10330C)
103308:  ADD             R4, PC; off_234A74
10330A:  LDR             R4, [R4]; dword_2402E4
10330C:  LDR             R4, [R4]
10330E:  LDR.W           R12, [R4]
103312:  CMP.W           R12, #0
103316:  BEQ             loc_10332E
103318:  LDR             R0, =(unk_25B22C - 0x103322)
10331A:  RSB.W           R1, R12, R12,LSL#3
10331E:  ADD             R0, PC; unk_25B22C
103320:  ADD.W           R0, R0, R1,LSL#2
103324:  LDRB            R1, [R0,#0xF]
103326:  CBNZ            R1, loc_10334C
103328:  LDRB            R0, [R0,#0x10]
10332A:  LSLS            R0, R0, #7
10332C:  B               loc_103368
10332E:  LDR             R5, =(off_25C9B4 - 0x103336)
103330:  LDR             R4, [R7,#arg_0]
103332:  ADD             R5, PC; off_25C9B4
103334:  STR             R4, [SP,#0x10+var_10]
103336:  LDR             R5, [R5]
103338:  BLX             R5
10333A:  CMP             R0, #0x80
10333C:  BEQ             loc_103352
10333E:  ADDS.W          R1, R0, #0x80
103342:  BNE             loc_10335E
103344:  LDR             R0, =(word_25B210 - 0x10334C)
103346:  MOVS            R1, #1
103348:  ADD             R0, PC; word_25B210
10334A:  STRB            R1, [R0,#(word_25B21F - 0x25B210)]
10334C:  MOV             R0, #0xFFFFFF80
103350:  B               loc_103368
103352:  LDR             R0, =(word_25B210 - 0x10335A)
103354:  MOVS            R1, #1
103356:  ADD             R0, PC; word_25B210
103358:  STRB            R1, [R0,#(word_25B21F+1 - 0x25B210)]
10335A:  MOVS            R0, #0x80
10335C:  B               loc_103368
10335E:  LDR             R1, =(word_25B210 - 0x103366)
103360:  MOVS            R2, #0
103362:  ADD             R1, PC; word_25B210
103364:  STRH.W          R2, [R1,#(word_25B21F - 0x25B210)]
103368:  ADD             SP, SP, #8
10336A:  POP             {R4,R5,R7,PC}
