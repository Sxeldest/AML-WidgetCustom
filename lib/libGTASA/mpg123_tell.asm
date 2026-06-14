; =========================================================
; Game Engine Function: mpg123_tell
; Address            : 0x2310B4 - 0x2313AE
; =========================================================

2310B4:  PUSH            {R4-R7,LR}
2310B6:  ADD             R7, SP, #0xC
2310B8:  PUSH.W          {R8,R9,R11}
2310BC:  MOV             R4, R0
2310BE:  CBZ             R4, loc_23110A
2310C0:  MOVW            R0, #0xB2C8
2310C4:  LDR             R2, [R4,R0]
2310C6:  CBNZ            R2, loc_2310D6
2310C8:  LDR             R0, [R4]
2310CA:  CMP             R0, #0
2310CC:  ITTT NE
2310CE:  MOVNE           R0, #0
2310D0:  POPNE.W         {R8,R9,R11}
2310D4:  POPNE           {R4-R7,PC}
2310D6:  MOVW            R0, #0xB2D0
2310DA:  LDR             R1, [R4,R0]
2310DC:  MOVW            R0, #0x9314
2310E0:  LDR             R0, [R4,R0]
2310E2:  CMP             R0, R1
2310E4:  BLT             loc_2310EC
2310E6:  BNE             loc_231114
2310E8:  CMP             R2, #0
2310EA:  BEQ             loc_2311B0
2310EC:  MOVW            R0, #0x92D0
2310F0:  LDR             R3, [R4,R0]
2310F2:  CMP             R3, #3
2310F4:  BCS             loc_23113C
2310F6:  MOVW            R0, #0x92D8
2310FA:  LDR             R0, [R4,R0]
2310FC:  CMP             R0, #1
2310FE:  BEQ             loc_2311D4
231100:  CMP             R0, #2
231102:  BNE             loc_2311DA
231104:  MOV.W           R0, #0x480
231108:  B               loc_2311FE
23110A:  MOV.W           R0, #0xFFFFFFFF
23110E:  POP.W           {R8,R9,R11}
231112:  POP             {R4-R7,PC}
231114:  CMP             R2, #0
231116:  BEQ             loc_2311B0
231118:  MOVW            R1, #0x92D0
23111C:  LDR             R3, [R4,R1]
23111E:  CMP             R3, #3
231120:  BCS.W           loc_23127C
231124:  MOVW            R1, #0x92D8
231128:  LDR             R1, [R4,R1]
23112A:  CMP             R1, #1
23112C:  BEQ.W           loc_23131E
231130:  CMP             R1, #2
231132:  BNE.W           loc_231324
231136:  MOV.W           R1, #0x480
23113A:  B               loc_23135E
23113C:  BNE.W           loc_231306
231140:  CMP             R1, #1
231142:  BLT             loc_2311E8
231144:  MOVW            R0, #0x9190
231148:  MOVW            R8, #0x7FFF
23114C:  LDR             R2, [R4,R0]
23114E:  MOVW            R0, #0x92D8
231152:  LDR             R3, [R4,R0]
231154:  MOVW            R0, #0x92CC
231158:  ADD.W           R12, R4, R0
23115C:  MOVW            R0, #0x92C8
231160:  ADD.W           LR, R4, R0
231164:  MOVS            R0, #0
231166:  MOV.W           R4, #0x4000
23116A:  CMP             R3, #1
23116C:  BEQ             loc_231178
23116E:  CMP             R3, #2
231170:  BNE             loc_23117E
231172:  MOV.W           R6, #0x480
231176:  B               loc_231192
231178:  MOV.W           R6, #0x180
23117C:  B               loc_231192
23117E:  LDR.W           R6, [LR]
231182:  CMP             R6, #0
231184:  ITT EQ
231186:  LDREQ.W         R6, [R12]
23118A:  CMPEQ           R6, #0
23118C:  BEQ             loc_231172
23118E:  MOV.W           R6, #0x240
231192:  MLA.W           R4, R6, R2, R4
231196:  SUBS            R1, #1
231198:  MOV.W           R6, R4,ASR#31
23119C:  ADD.W           R6, R4, R6,LSR#17
2311A0:  BIC.W           R5, R6, R8
2311A4:  SUB.W           R4, R4, R5
2311A8:  ADD.W           R0, R0, R6,ASR#15
2311AC:  BNE             loc_23116A
2311AE:  B               loc_2313A2
2311B0:  MOVW            R1, #0x92D0
2311B4:  LDR             R3, [R4,R1]
2311B6:  ADDS            R1, R0, #1
2311B8:  CMP             R3, #3
2311BA:  BCS             loc_231204
2311BC:  MOVW            R0, #0x92D8
2311C0:  LDR             R0, [R4,R0]
2311C2:  CMP             R0, #1
2311C4:  BEQ.W           loc_2312F2
2311C8:  CMP             R0, #2
2311CA:  BNE.W           loc_2312F8
2311CE:  MOV.W           R0, #0x480
2311D2:  B               loc_231344
2311D4:  MOV.W           R0, #0x180
2311D8:  B               loc_2311FE
2311DA:  MOVW            R0, #0x92C8
2311DE:  LDR             R0, [R4,R0]
2311E0:  CBZ             R0, loc_2311EC
2311E2:  MOV.W           R0, #0x240
2311E6:  B               loc_2311FE
2311E8:  MOVS            R0, #0
2311EA:  B               loc_2313A2
2311EC:  MOVW            R0, #0x92CC
2311F0:  LDR             R2, [R4,R0]
2311F2:  MOV.W           R0, #0x480
2311F6:  CMP             R2, #0
2311F8:  IT NE
2311FA:  MOVNE.W         R0, #0x240
2311FE:  LSRS            R0, R3
231200:  MULS            R0, R1
231202:  B               loc_2313A2
231204:  BNE.W           loc_231366
231208:  CMP             R0, #0
23120A:  BLT.W           loc_231384
23120E:  MOVW            R2, #0x92D8
231212:  MOVW            R0, #0x9190
231216:  LDR.W           R9, [R4,R0]
23121A:  MOVW            R3, #0x92CC
23121E:  LDR             R2, [R4,R2]
231220:  ADD.W           R12, R4, R3
231224:  MOVW            R3, #0x92C8
231228:  ADD.W           LR, R4, R3
23122C:  MOVS            R5, #0
23122E:  MOV.W           R6, #0x4000
231232:  MOVW            R8, #0x7FFF
231236:  CMP             R2, #1
231238:  BEQ             loc_231244
23123A:  CMP             R2, #2
23123C:  BNE             loc_23124A
23123E:  MOV.W           R3, #0x480
231242:  B               loc_23125E
231244:  MOV.W           R3, #0x180
231248:  B               loc_23125E
23124A:  LDR.W           R3, [LR]
23124E:  CMP             R3, #0
231250:  ITT EQ
231252:  LDREQ.W         R3, [R12]
231256:  CMPEQ           R3, #0
231258:  BEQ             loc_23123E
23125A:  MOV.W           R3, #0x240
23125E:  MLA.W           R3, R3, R9, R6
231262:  SUBS            R1, #1
231264:  MOV.W           R6, R3,ASR#31
231268:  ADD.W           R0, R3, R6,LSR#17
23126C:  BIC.W           R6, R0, R8
231270:  SUB.W           R6, R3, R6
231274:  ADD.W           R5, R5, R0,ASR#15
231278:  BNE             loc_231236
23127A:  B               loc_231386
23127C:  BNE             loc_231370
23127E:  CMP             R0, #1
231280:  BLT.W           loc_231384
231284:  MOVW            R2, #0x92D8
231288:  MOVW            R1, #0x9190
23128C:  LDR.W           R9, [R4,R1]
231290:  MOVW            R3, #0x92CC
231294:  LDR             R2, [R4,R2]
231296:  ADD.W           R12, R4, R3
23129A:  MOVW            R3, #0x92C8
23129E:  ADD.W           LR, R4, R3
2312A2:  MOVS            R5, #0
2312A4:  MOV.W           R6, #0x4000
2312A8:  MOVW            R8, #0x7FFF
2312AC:  CMP             R2, #1
2312AE:  BEQ             loc_2312BA
2312B0:  CMP             R2, #2
2312B2:  BNE             loc_2312C0
2312B4:  MOV.W           R3, #0x480
2312B8:  B               loc_2312D4
2312BA:  MOV.W           R3, #0x180
2312BE:  B               loc_2312D4
2312C0:  LDR.W           R3, [LR]
2312C4:  CMP             R3, #0
2312C6:  ITT EQ
2312C8:  LDREQ.W         R3, [R12]
2312CC:  CMPEQ           R3, #0
2312CE:  BEQ             loc_2312B4
2312D0:  MOV.W           R3, #0x240
2312D4:  MLA.W           R3, R3, R9, R6
2312D8:  SUBS            R0, #1
2312DA:  MOV.W           R6, R3,ASR#31
2312DE:  ADD.W           R1, R3, R6,LSR#17
2312E2:  BIC.W           R6, R1, R8
2312E6:  SUB.W           R6, R3, R6
2312EA:  ADD.W           R5, R5, R1,ASR#15
2312EE:  BNE             loc_2312AC
2312F0:  B               loc_231386
2312F2:  MOV.W           R0, #0x180
2312F6:  B               loc_231344
2312F8:  MOVW            R0, #0x92C8
2312FC:  LDR             R0, [R4,R0]
2312FE:  CBZ             R0, loc_231332
231300:  MOV.W           R0, #0x240
231304:  B               loc_231344
231306:  LDR             R0, =(off_677664 - 0x231312)
231308:  MOV.W           R2, #0x2E8
23130C:  LDR             R1, =(aCProjectsOswra_5 - 0x231314); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23130E:  ADD             R0, PC; off_677664
231310:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
231312:  LDR             R0, [R0]
231314:  LDR             R0, [R0]; stream
231316:  BLX             fprintf
23131A:  MOVS            R0, #0
23131C:  B               loc_2313A2
23131E:  MOV.W           R1, #0x180
231322:  B               loc_23135E
231324:  MOVW            R1, #0x92C8
231328:  LDR             R1, [R4,R1]
23132A:  CBZ             R1, loc_23134C
23132C:  MOV.W           R1, #0x240
231330:  B               loc_23135E
231332:  MOVW            R0, #0x92CC
231336:  LDR             R2, [R4,R0]
231338:  MOV.W           R0, #0x480
23133C:  CMP             R2, #0
23133E:  IT NE
231340:  MOVNE.W         R0, #0x240
231344:  LSRS            R0, R3
231346:  MUL.W           R5, R0, R1
23134A:  B               loc_231386
23134C:  MOVW            R1, #0x92CC
231350:  LDR             R2, [R4,R1]
231352:  MOV.W           R1, #0x480
231356:  CMP             R2, #0
231358:  IT NE
23135A:  MOVNE.W         R1, #0x240
23135E:  LSRS            R1, R3
231360:  MUL.W           R5, R1, R0
231364:  B               loc_231386
231366:  LDR             R0, =(off_677664 - 0x23136E)
231368:  LDR             R1, =(aCProjectsOswra_5 - 0x231370); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23136A:  ADD             R0, PC; off_677664
23136C:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23136E:  B               loc_231378
231370:  LDR             R0, =(off_677664 - 0x231378)
231372:  LDR             R1, =(aCProjectsOswra_5 - 0x23137A); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
231374:  ADD             R0, PC; off_677664
231376:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
231378:  LDR             R0, [R0]
23137A:  LDR             R0, [R0]; stream
23137C:  MOV.W           R2, #0x2E8
231380:  BLX             fprintf
231384:  MOVS            R5, #0
231386:  MOVW            R0, #0xB2A8
23138A:  MOVW            R1, #0xB2B4
23138E:  LDR             R0, [R4,R0]
231390:  LDR             R1, [R4,R1]
231392:  BLX             __aeabi_idiv
231396:  MOVW            R1, #0xB2B8
23139A:  LDR             R1, [R4,R1]
23139C:  BLX             __aeabi_idiv
2313A0:  SUBS            R0, R5, R0
2313A2:  CMP             R0, #0
2313A4:  IT LE
2313A6:  MOVLE           R0, #0
2313A8:  POP.W           {R8,R9,R11}
2313AC:  POP             {R4-R7,PC}
