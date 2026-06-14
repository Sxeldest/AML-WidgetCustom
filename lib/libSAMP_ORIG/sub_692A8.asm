; =========================================================
; Game Engine Function: sub_692A8
; Address            : 0x692A8 - 0x6935A
; =========================================================

692A8:  PUSH            {R4,R6,R7,LR}
692AA:  ADD             R7, SP, #8
692AC:  MOV             R4, R0
692AE:  BL              sub_68E3C
692B2:  CBZ             R0, loc_692C0
692B4:  LDR             R1, [R4,#4]
692B6:  LDR             R2, [R4,#0x28]
692B8:  POP.W           {R4,R6,R7,LR}
692BC:  B.W             sub_69070
692C0:  LDR             R0, =(byte_1A4270 - 0x692C6)
692C2:  ADD             R0, PC; byte_1A4270
692C4:  LDRB            R0, [R0]
692C6:  DMB.W           ISH
692CA:  LDR             R4, =(dword_1A4268 - 0x692D0)
692CC:  ADD             R4, PC; dword_1A4268
692CE:  LSLS            R0, R0, #0x1F
692D0:  BEQ             loc_69322
692D2:  LDRB            R0, [R4,#(byte_1A426E - 0x1A4268)]
692D4:  CBZ             R0, loc_69310
692D6:  LDRB            R1, [R4]
692D8:  EOR.W           R0, R0, #0x5A ; 'Z'
692DC:  LDRB            R2, [R4,#(dword_1A4268+1 - 0x1A4268)]
692DE:  STRB            R0, [R4,#(byte_1A426E - 0x1A4268)]
692E0:  EOR.W           R1, R1, #0x5A ; 'Z'
692E4:  LDRB            R0, [R4,#(word_1A426C - 0x1A4268)]
692E6:  LDRB            R3, [R4,#(dword_1A4268+2 - 0x1A4268)]
692E8:  STRB            R1, [R4]
692EA:  EOR.W           R1, R2, #0x5A ; 'Z'
692EE:  LDRB.W          R12, [R4,#(dword_1A4268+3 - 0x1A4268)]
692F2:  EOR.W           R0, R0, #0x5A ; 'Z'
692F6:  LDRB.W          LR, [R4,#(word_1A426C+1 - 0x1A4268)]
692FA:  STRB            R1, [R4,#(dword_1A4268+1 - 0x1A4268)]
692FC:  EOR.W           R1, R3, #0x5A ; 'Z'
69300:  STRB            R1, [R4,#(dword_1A4268+2 - 0x1A4268)]
69302:  EOR.W           R1, R12, #0x5A ; 'Z'
69306:  STRB            R0, [R4,#(word_1A426C - 0x1A4268)]
69308:  EOR.W           R0, LR, #0x5A ; 'Z'
6930C:  STRB            R1, [R4,#(dword_1A4268+3 - 0x1A4268)]
6930E:  STRB            R0, [R4,#(word_1A426C+1 - 0x1A4268)]
69310:  LDR             R1, =(aSampOrig - 0x6931A); "SAMP_ORIG" ...
69312:  MOVS            R0, #4
69314:  LDR             R2, =(dword_1A4268 - 0x6931C)
69316:  ADD             R1, PC; "SAMP_ORIG"
69318:  ADD             R2, PC; dword_1A4268
6931A:  POP.W           {R4,R6,R7,LR}
6931E:  B.W             sub_10C158
69322:  LDR             R0, =(byte_1A4270 - 0x69328)
69324:  ADD             R0, PC; byte_1A4270 ; __guard *
69326:  BLX             j___cxa_guard_acquire
6932A:  CMP             R0, #0
6932C:  BEQ             loc_692D2
6932E:  MOVS            R1, #0x5A ; 'Z'
69330:  LDR             R0, =(sub_66E8E+1 - 0x69348)
69332:  LDR             R2, =(off_110560 - 0x6934A)
69334:  STRB            R1, [R4,#(byte_1A426E - 0x1A4268)]
69336:  MOVW            R1, #0x2C34
6933A:  STRH            R1, [R4,#(word_1A426C - 0x1A4268)]
6933C:  MOV             R1, #0x3F7A3514
69344:  ADD             R0, PC; sub_66E8E ; lpfunc
69346:  ADD             R2, PC; off_110560 ; lpdso_handle
69348:  STR             R1, [R4]
6934A:  MOV             R1, R4; obj
6934C:  BLX             __cxa_atexit
69350:  LDR             R0, =(byte_1A4270 - 0x69356)
69352:  ADD             R0, PC; byte_1A4270 ; __guard *
69354:  BLX             j___cxa_guard_release
69358:  B               loc_692D2
