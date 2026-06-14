; =========================================================
; Game Engine Function: INT123_frame_ins2outs
; Address            : 0x226210 - 0x2262D2
; =========================================================

226210:  PUSH            {R4-R7,LR}
226212:  ADD             R7, SP, #0xC
226214:  PUSH.W          {R11}
226218:  MOVW            R2, #0x92D0
22621C:  LDR             R3, [R0,R2]
22621E:  CMP             R3, #3
226220:  ITTT CC
226222:  ASRCC.W         R0, R1, R3
226226:  POPCC.W         {R11}
22622A:  POPCC           {R4-R7,PC}
22622C:  BNE             loc_226262
22622E:  MOVW            R2, #0x92D8
226232:  LDR             R2, [R0,R2]
226234:  CMP             R2, #1
226236:  BEQ             loc_226246
226238:  CMP             R2, #2
22623A:  BNE             loc_226250
22623C:  MOV.W           R4, #0x480
226240:  CMP             R1, #1
226242:  BGE             loc_226294
226244:  B               loc_226276
226246:  MOV.W           R4, #0x180
22624A:  CMP             R1, #1
22624C:  BGE             loc_226294
22624E:  B               loc_226276
226250:  MOVW            R2, #0x92C8
226254:  LDR             R2, [R0,R2]
226256:  CBZ             R2, loc_22627E
226258:  MOV.W           R4, #0x240
22625C:  CMP             R1, #1
22625E:  BGE             loc_226294
226260:  B               loc_226276
226262:  LDR             R0, =(off_677664 - 0x22626E)
226264:  MOV.W           R2, #0x2D4
226268:  LDR             R1, =(aCProjectsOswra_5 - 0x226270); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22626A:  ADD             R0, PC; off_677664
22626C:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22626E:  LDR             R0, [R0]
226270:  LDR             R0, [R0]; stream
226272:  BLX             fprintf
226276:  MOVS            R0, #0
226278:  POP.W           {R11}
22627C:  POP             {R4-R7,PC}
22627E:  MOVW            R2, #0x92CC
226282:  MOV.W           R4, #0x480
226286:  LDR             R3, [R0,R2]
226288:  CMP             R3, #0
22628A:  IT NE
22628C:  MOVNE.W         R4, #0x240
226290:  CMP             R1, #1
226292:  BLT             loc_226276
226294:  MOVW            R2, #0x9190
226298:  MOV.W           R3, #0x4000
22629C:  LDR.W           R12, [R0,R2]
2262A0:  MOVS            R0, #0
2262A2:  MOVW            LR, #0x7FFF
2262A6:  CMP             R1, R4
2262A8:  MOV             R2, R1
2262AA:  IT GT
2262AC:  MOVGT           R2, R4
2262AE:  MLA.W           R3, R2, R12, R3
2262B2:  SUBS            R1, R1, R2
2262B4:  CMP             R1, #0
2262B6:  MOV.W           R5, R3,ASR#31
2262BA:  ADD.W           R5, R3, R5,LSR#17
2262BE:  BIC.W           R6, R5, LR
2262C2:  SUB.W           R3, R3, R6
2262C6:  ADD.W           R0, R0, R5,ASR#15
2262CA:  BGT             loc_2262A6
2262CC:  POP.W           {R11}
2262D0:  POP             {R4-R7,PC}
