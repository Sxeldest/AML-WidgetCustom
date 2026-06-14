; =========================================================
; Game Engine Function: INT123_ntom_ins2outs
; Address            : 0x2262DC - 0x226372
; =========================================================

2262DC:  PUSH            {R4-R7,LR}
2262DE:  ADD             R7, SP, #0xC
2262E0:  PUSH.W          {R11}
2262E4:  MOVW            R2, #0x92D8
2262E8:  LDR             R2, [R0,R2]
2262EA:  CMP             R2, #1
2262EC:  BEQ             loc_226338
2262EE:  CMP             R2, #2
2262F0:  BNE             loc_226348
2262F2:  MOV.W           R4, #0x480
2262F6:  CMP             R1, #1
2262F8:  BLT             loc_226340
2262FA:  MOVW            R2, #0x9190
2262FE:  MOV.W           R3, #0x4000
226302:  LDR.W           R12, [R0,R2]
226306:  MOVS            R0, #0
226308:  MOVW            LR, #0x7FFF
22630C:  CMP             R1, R4
22630E:  MOV             R2, R1
226310:  IT GT
226312:  MOVGT           R2, R4
226314:  MLA.W           R3, R2, R12, R3
226318:  SUBS            R1, R1, R2
22631A:  CMP             R1, #0
22631C:  MOV.W           R5, R3,ASR#31
226320:  ADD.W           R5, R3, R5,LSR#17
226324:  BIC.W           R6, R5, LR
226328:  SUB.W           R3, R3, R6
22632C:  ADD.W           R0, R0, R5,ASR#15
226330:  BGT             loc_22630C
226332:  POP.W           {R11}
226336:  POP             {R4-R7,PC}
226338:  MOV.W           R4, #0x180
22633C:  CMP             R1, #1
22633E:  BGE             loc_2262FA
226340:  MOVS            R0, #0
226342:  POP.W           {R11}
226346:  POP             {R4-R7,PC}
226348:  MOVW            R2, #0x92C8
22634C:  LDR             R2, [R0,R2]
22634E:  CBZ             R2, loc_22635A
226350:  MOV.W           R4, #0x240
226354:  CMP             R1, #1
226356:  BGE             loc_2262FA
226358:  B               loc_226340
22635A:  MOVW            R2, #0x92CC
22635E:  MOV.W           R4, #0x480
226362:  LDR             R3, [R0,R2]
226364:  CMP             R3, #0
226366:  IT NE
226368:  MOVNE.W         R4, #0x240
22636C:  CMP             R1, #1
22636E:  BGE             loc_2262FA
226370:  B               loc_226340
