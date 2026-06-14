; =========================================================
; Game Engine Function: INT123_parse_new_id3
; Address            : 0x2270E4 - 0x22842A
; =========================================================

2270E4:  PUSH            {R4-R7,LR}
2270E6:  ADD             R7, SP, #0xC
2270E8:  PUSH.W          {R8-R11}
2270EC:  SUB             SP, SP, #4
2270EE:  VPUSH           {D8-D10}
2270F2:  SUB             SP, SP, #0x120
2270F4:  MOV             R6, R1
2270F6:  MOV             R10, R0
2270F8:  UXTB.W          R11, R6
2270FC:  CMP.W           R11, #0xFF
227100:  BNE             loc_227106
227102:  MOVS            R5, #0
227104:  B               loc_2272FA
227106:  MOVW            R4, #0xB2E0
22710A:  SUB.W           R1, R7, #-var_5E
22710E:  LDR.W           R0, [R10,R4]
227112:  MOVS            R2, #6
227114:  LDR             R3, [R0,#0x18]
227116:  MOV             R0, R10
227118:  BLX             R3
22711A:  MOV             R5, R0
22711C:  CMP             R5, #0
22711E:  BLT.W           loc_2272FA
227122:  LDRB.W          R3, [R7,#var_5E]
227126:  CMP             R3, #0xFF
227128:  BEQ             loc_227102
22712A:  LDRB.W          R12, [R7,#var_5C]
22712E:  LDRB.W          R5, [R7,#var_5B]
227132:  LDRB.W          R2, [R7,#var_5A]
227136:  ORR.W           R0, R5, R12
22713A:  LDRB.W          LR, [R7,#var_59]
22713E:  ORRS            R0, R2
227140:  ORR.W           R0, R0, LR
227144:  SXTB            R0, R0
227146:  CMP             R0, #0
227148:  BLT             loc_227208
22714A:  ADD.W           R0, R10, R4
22714E:  STR             R0, [SP,#0x158+var_68]
227150:  MOVW            R0, #0xB33C
227154:  LDRB.W          R4, [R7,#var_5D]
227158:  LDR.W           R8, [R10,R0]
22715C:  ADD             R0, R10
22715E:  STR             R0, [SP,#0x158+var_70]
227160:  MOVW            R0, #0xB338
227164:  ADD.W           R1, R10, R0
227168:  LSLS            R0, R5, #0xE
22716A:  TST.W           R8, #0x20
22716E:  ORR.W           R0, R0, R12,LSL#21
227172:  STR             R1, [SP,#0x158+var_6C]
227174:  ORR.W           R0, R0, R2,LSL#7
227178:  ORR.W           R9, R0, LR
22717C:  BNE             loc_227186
22717E:  LDR             R0, [R1]
227180:  CMP             R0, #2
227182:  BGE.W           loc_227292
227186:  ANDS.W          R0, R8, #0x2000
22718A:  BNE.W           loc_2272B8
22718E:  SUB.W           R1, R11, #2
227192:  CMP             R1, #2
227194:  BHI.W           loc_2272B8
227198:  ANDS.W          R1, R4, #0xF
22719C:  BNE.W           loc_2272B8
2271A0:  STR             R4, [SP,#0x158+var_74]
2271A2:  MOV             R4, R9
2271A4:  ADDS            R0, R4, #1; byte_count
2271A6:  MOVW            R9, #0xB4FC
2271AA:  STRB.W          R6, [R10,R9]
2271AE:  BLX             malloc
2271B2:  MOV             R6, R0
2271B4:  CMP             R6, #0
2271B6:  BEQ             loc_22723C
2271B8:  LDR             R0, [SP,#0x158+var_68]
2271BA:  MOV             R1, R6
2271BC:  MOV             R2, R4
2271BE:  LDR             R0, [R0]
2271C0:  LDR             R3, [R0,#0x18]
2271C2:  MOV             R0, R10
2271C4:  BLX             R3
2271C6:  MOV             R5, R0
2271C8:  CMP             R5, #1
2271CA:  MOV             R8, R6
2271CC:  BLT             loc_227256
2271CE:  LDR             R1, [SP,#0x158+var_74]
2271D0:  MOVS            R0, #0
2271D2:  MOV.W           R12, #0
2271D6:  STRB.W          R0, [R8,R4]
2271DA:  LSLS            R1, R1, #0x19
2271DC:  BPL.W           loc_227334
2271E0:  LDRB.W          R3, [R8]
2271E4:  CMP.W           R11, #3
2271E8:  BNE.W           loc_22730A
2271EC:  LDRB.W          R1, [R8,#1]
2271F0:  LDRB.W          R2, [R8,#2]
2271F4:  LDRB.W          R6, [R8,#3]
2271F8:  LSLS            R1, R1, #0x10
2271FA:  ORR.W           R1, R1, R3,LSL#24
2271FE:  ORR.W           R1, R1, R2,LSL#8
227202:  ORR.W           R12, R1, R6
227206:  B               loc_227334
227208:  MOVW            R0, #0xB33C
22720C:  LDRB.W          R0, [R10,R0]
227210:  LSLS            R0, R0, #0x1A
227212:  BMI.W           loc_227102
227216:  LDR.W           R0, =(off_677664 - 0x227224)
22721A:  MOV             R3, R12
22721C:  LDR.W           R1, =(aCProjectsOswra_10 - 0x227226); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227220:  ADD             R0, PC; off_677664
227222:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227224:  LDR             R0, [R0]
227226:  LDR             R0, [R0]; stream
227228:  STRD.W          R5, R2, [SP,#0x158+var_158]
22722C:  MOVW            R2, #0x247
227230:  STR.W           LR, [SP,#0x158+var_150]
227234:  BLX             fprintf
227238:  MOVS            R5, #0
22723A:  B               loc_2272FA
22723C:  MOVS.W          R0, R8,LSL#26
227240:  BPL.W           loc_2283BA
227244:  LDR             R0, [SP,#0x158+var_68]
227246:  MOV             R1, R4
227248:  LDR             R0, [R0]
22724A:  LDR             R2, [R0,#0x14]
22724C:  MOV             R0, R10
22724E:  BLX             R2
227250:  AND.W           R5, R0, R0,ASR#31
227254:  B               loc_2272FA
227256:  CMP             R4, #0
227258:  MOV             R9, R4
22725A:  BEQ.W           loc_2283FE
22725E:  LDR             R4, [SP,#0x158+var_74]
227260:  ADDS.W          R0, R5, #0xA
227264:  LDR             R6, [SP,#0x158+var_68]
227266:  BEQ.W           loc_228402
22726A:  LDR             R0, [SP,#0x158+var_70]
22726C:  LDR             R0, [R0]
22726E:  ANDS.W          R0, R0, #0x20 ; ' '
227272:  BNE.W           loc_228402
227276:  LDR.W           R0, =(off_677664 - 0x227286)
22727A:  MOVW            R2, #0x327
22727E:  LDR.W           R1, =(aCProjectsOswra_11 - 0x227288); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227282:  ADD             R0, PC; off_677664
227284:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227286:  LDR             R0, [R0]
227288:  LDR             R0, [R0]; stream
22728A:  BLX             fprintf
22728E:  B.W             loc_228402
227292:  LDR.W           R0, =(off_677664 - 0x2272A4)
227296:  ADR.W           R1, aNoteId3v2IRevI; "Note: ID3v2.%i rev %i tag of %lu bytes"...
22729A:  MOV             R2, R11
22729C:  STR.W           R9, [SP,#0x158+var_158]
2272A0:  ADD             R0, PC; off_677664
2272A2:  LDR             R0, [R0]
2272A4:  LDR             R0, [R0]; stream
2272A6:  BLX             fprintf
2272AA:  LDR             R0, [SP,#0x158+var_70]
2272AC:  LDR.W           R8, [R0]
2272B0:  ANDS.W          R0, R8, #0x2000
2272B4:  BEQ.W           loc_22718E
2272B8:  MOVS.W          R1, R8,LSL#26
2272BC:  BMI             loc_2272CE
2272BE:  CMP             R0, #0
2272C0:  BEQ.W           loc_228378
2272C4:  LDR             R0, [SP,#0x158+var_6C]
2272C6:  LDR             R0, [R0]
2272C8:  CMP             R0, #3
2272CA:  BGE.W           loc_228394
2272CE:  LDR             R6, [SP,#0x158+var_68]
2272D0:  MOV             R1, R9
2272D2:  LDR             R0, [R6]
2272D4:  LDR             R2, [R0,#0x14]
2272D6:  MOV             R0, R10
2272D8:  BLX             R2
2272DA:  MOV             R5, R0
2272DC:  CMP             R5, #0
2272DE:  IT GE
2272E0:  MOVGE           R5, #1
2272E2:  LSLS            R0, R4, #0x1B
2272E4:  BPL             loc_2272FA
2272E6:  CMP             R5, #1
2272E8:  BLT             loc_2272FA
2272EA:  LDR             R0, [R6]
2272EC:  MOV             R1, R9
2272EE:  LDR             R2, [R0,#0x14]
2272F0:  MOV             R0, R10
2272F2:  BLX             R2
2272F4:  CMP             R0, #0
2272F6:  IT LT
2272F8:  MOVLT           R5, R0
2272FA:  MOV             R0, R5
2272FC:  ADD             SP, SP, #0x120
2272FE:  VPOP            {D8-D10}
227302:  ADD             SP, SP, #4
227304:  POP.W           {R8-R11}
227308:  POP             {R4-R7,PC}
22730A:  LDRB.W          R5, [R8,#1]
22730E:  LDRB.W          R6, [R8,#2]
227312:  ORR.W           R1, R5, R3
227316:  LDRB.W          R2, [R8,#3]
22731A:  ORRS            R1, R6
22731C:  ORRS            R1, R2
22731E:  SXTB            R1, R1
227320:  CMP             R1, #0
227322:  BLT.W           loc_2283AC
227326:  LSLS            R1, R5, #0xE
227328:  ORR.W           R1, R1, R3,LSL#21
22732C:  ORR.W           R1, R1, R6,LSL#7
227330:  ORR.W           R12, R1, R2
227334:  STR             R4, [SP,#0x158+var_78]
227336:  SUBS            R4, #0xA
227338:  CMP             R12, R4
22733A:  STRB.W          R0, [SP,#0x158+var_60]
22733E:  BCS.W           loc_2283F8
227342:  MOVW            R0, #0xB338
227346:  VMOV.I32        Q4, #0
22734A:  ADD             R0, R10
22734C:  STR             R0, [SP,#0x158+var_88]
22734E:  MOVW            R0, #0xB52C
227352:  ADD.W           LR, R10, R9
227356:  ADD             R0, R10
227358:  STR             R0, [SP,#0x158+var_B8]
22735A:  MOVW            R0, #0xB528
22735E:  ADD             R6, SP, #0x158+var_64
227360:  ADD             R0, R10
227362:  STR             R0, [SP,#0x158+var_BC]
227364:  MOVW            R0, #0xB51C
227368:  VLDR            S20, =0.0019531
22736C:  ADD             R0, R10
22736E:  STR             R0, [SP,#0x158+var_AC]
227370:  MOVW            R0, #0xB518
227374:  ADD             R0, R10
227376:  STR             R0, [SP,#0x158+var_B4]
227378:  MOVW            R0, #0xB524
22737C:  ADD             R0, R10
22737E:  STR             R0, [SP,#0x158+var_A0]
227380:  MOVW            R0, #0xB520
227384:  ADD             R0, R10
227386:  STR             R0, [SP,#0x158+var_A4]
227388:  ADD             R0, SP, #0x158+var_58
22738A:  ADD.W           R1, R0, #0x14
22738E:  ADDS            R0, #8
227390:  STR             R0, [SP,#0x158+var_C0]
227392:  LDR             R0, [SP,#0x158+var_74]
227394:  STR             R1, [SP,#0x158+var_D8]
227396:  AND.W           R0, R0, #0x80
22739A:  STR             R0, [SP,#0x158+var_90]
22739C:  LDR.W           R0, =(off_677664 - 0x2273A4)
2273A0:  ADD             R0, PC; off_677664
2273A2:  LDR             R0, [R0]
2273A4:  STR             R0, [SP,#0x158+var_A8]
2273A6:  LDR.W           R0, =(off_677664 - 0x2273AE)
2273AA:  ADD             R0, PC; off_677664
2273AC:  LDR             R0, [R0]
2273AE:  STR             R0, [SP,#0x158+var_C4]
2273B0:  LDR.W           R0, =(off_677664 - 0x2273B8)
2273B4:  ADD             R0, PC; off_677664
2273B6:  LDR             R0, [R0]
2273B8:  STR             R0, [SP,#0x158+var_C8]
2273BA:  LDR.W           R0, =(off_677664 - 0x2273C2)
2273BE:  ADD             R0, PC; off_677664
2273C0:  LDR             R0, [R0]
2273C2:  STR             R0, [SP,#0x158+var_D0]
2273C4:  LDR.W           R0, =(off_677664 - 0x2273CC)
2273C8:  ADD             R0, PC; off_677664
2273CA:  LDR             R0, [R0]
2273CC:  STR             R0, [SP,#0x158+var_DC]
2273CE:  LDR.W           R0, =(off_677664 - 0x2273D6)
2273D2:  ADD             R0, PC; off_677664
2273D4:  LDR             R0, [R0]
2273D6:  STR             R0, [SP,#0x158+var_E8]
2273D8:  LDR.W           R0, =(off_677664 - 0x2273E0)
2273DC:  ADD             R0, PC; off_677664
2273DE:  LDR             R0, [R0]
2273E0:  STR             R0, [SP,#0x158+var_F8]
2273E2:  LDR.W           R0, =(off_677664 - 0x2273EA)
2273E6:  ADD             R0, PC; off_677664
2273E8:  LDR             R0, [R0]
2273EA:  STR             R0, [SP,#0x158+var_D4]
2273EC:  LDR.W           R0, =(off_677664 - 0x2273F4)
2273F0:  ADD             R0, PC; off_677664
2273F2:  LDR             R0, [R0]
2273F4:  STR             R0, [SP,#0x158+var_E0]
2273F6:  LDR.W           R0, =(off_677664 - 0x2273FE)
2273FA:  ADD             R0, PC; off_677664
2273FC:  LDR             R0, [R0]
2273FE:  STR             R0, [SP,#0x158+var_EC]
227400:  LDR.W           R0, =(off_677664 - 0x227408)
227404:  ADD             R0, PC; off_677664
227406:  LDR             R0, [R0]
227408:  STR             R0, [SP,#0x158+var_F4]
22740A:  LDR.W           R0, =(off_677664 - 0x227412)
22740E:  ADD             R0, PC; off_677664
227410:  LDR             R0, [R0]
227412:  STR             R0, [SP,#0x158+var_114]
227414:  LDR.W           R0, =(off_677664 - 0x22741C)
227418:  ADD             R0, PC; off_677664
22741A:  LDR             R0, [R0]
22741C:  STR             R0, [SP,#0x158+var_108]
22741E:  LDR.W           R0, =(off_677664 - 0x227426)
227422:  ADD             R0, PC; off_677664
227424:  LDR             R0, [R0]
227426:  STR             R0, [SP,#0x158+var_11C]
227428:  LDR.W           R0, =(off_677664 - 0x227430)
22742C:  ADD             R0, PC; off_677664
22742E:  LDR             R0, [R0]
227430:  STR             R0, [SP,#0x158+var_118]
227432:  LDR.W           R0, =(off_677664 - 0x22743A)
227436:  ADD             R0, PC; off_677664
227438:  LDR             R0, [R0]
22743A:  STR             R0, [SP,#0x158+var_F0]
22743C:  LDR.W           R0, =(off_677664 - 0x227444)
227440:  ADD             R0, PC; off_677664
227442:  LDR             R0, [R0]
227444:  STR             R0, [SP,#0x158+var_FC]
227446:  LDR.W           R0, =(off_677664 - 0x22744E)
22744A:  ADD             R0, PC; off_677664
22744C:  LDR             R0, [R0]
22744E:  STR             R0, [SP,#0x158+var_104]
227450:  LDR.W           R0, =(off_677664 - 0x227458)
227454:  ADD             R0, PC; off_677664
227456:  LDR             R0, [R0]
227458:  STR             R0, [SP,#0x158+var_100]
22745A:  LDR.W           R0, =(off_677664 - 0x227462)
22745E:  ADD             R0, PC; off_677664
227460:  LDR             R0, [R0]
227462:  STR             R0, [SP,#0x158+var_120]
227464:  LDR.W           R0, =(off_677664 - 0x22746C)
227468:  ADD             R0, PC; off_677664
22746A:  LDR             R0, [R0]
22746C:  STR             R0, [SP,#0x158+var_130]
22746E:  LDR.W           R0, =(off_677664 - 0x227476)
227472:  ADD             R0, PC; off_677664
227474:  LDR             R0, [R0]
227476:  STR             R0, [SP,#0x158+var_12C]
227478:  LDR.W           R0, =(off_677664 - 0x227480)
22747C:  ADD             R0, PC; off_677664
22747E:  LDR             R0, [R0]
227480:  STR             R0, [SP,#0x158+var_128]
227482:  LDR.W           R0, =(off_677664 - 0x22748A)
227486:  ADD             R0, PC; off_677664
227488:  LDR             R0, [R0]
22748A:  STR             R0, [SP,#0x158+var_124]
22748C:  LDR.W           R0, =(off_677664 - 0x227494)
227490:  ADD             R0, PC; off_677664
227492:  LDR             R0, [R0]
227494:  STR             R0, [SP,#0x158+var_110]
227496:  LDR.W           R0, =(off_677664 - 0x22749E)
22749A:  ADD             R0, PC; off_677664
22749C:  LDR             R0, [R0]
22749E:  STR             R0, [SP,#0x158+var_E4]
2274A0:  LDR.W           R0, =(off_677664 - 0x2274A8)
2274A4:  ADD             R0, PC; off_677664
2274A6:  LDR             R0, [R0]
2274A8:  STR             R0, [SP,#0x158+var_10C]
2274AA:  LDR.W           R0, =(off_677664 - 0x2274B2)
2274AE:  ADD             R0, PC; off_677664
2274B0:  LDR             R0, [R0]
2274B2:  STR             R0, [SP,#0x158+var_CC]
2274B4:  LDR.W           R0, =(aComm - 0x2274BC); "COMM"
2274B8:  ADD             R0, PC; "COMM"
2274BA:  ADDS            R0, #5
2274BC:  STR             R0, [SP,#0x158+var_8C]
2274BE:  LDR.W           R0, =(aComm - 0x2274C6); "COMM"
2274C2:  ADD             R0, PC; "COMM"
2274C4:  ADDS            R0, #0xA
2274C6:  STR             R0, [SP,#0x158+var_98]
2274C8:  LDR.W           R0, =(aComm - 0x2274D0); "COMM"
2274CC:  ADD             R0, PC; "COMM"
2274CE:  ADDS            R0, #0xF
2274D0:  STR             R0, [SP,#0x158+var_9C]
2274D2:  LDR.W           R0, =(off_677664 - 0x2274DA)
2274D6:  ADD             R0, PC; off_677664
2274D8:  LDR             R0, [R0]
2274DA:  STR             R0, [SP,#0x158+var_B0]
2274DC:  B.W             loc_228296
2274E0:  LDRB.W          R0, [LR]
2274E4:  CMP             R0, #3
2274E6:  BCC             loc_2274FE
2274E8:  ADD.W           R1, R8, R6
2274EC:  LDRB.W          R0, [R8,R6]
2274F0:  ADD.W           R12, R12, #2
2274F4:  LDRB            R1, [R1,#1]
2274F6:  ADDS            R6, #2
2274F8:  ORR.W           R1, R1, R0,LSL#8
2274FC:  B               loc_227500
2274FE:  MOVS            R1, #0
227500:  CMP.W           R9, #2
227504:  STR.W           R12, [SP,#0x158+var_80]
227508:  BNE             loc_22758C
22750A:  STR             R4, [SP,#0x158+var_94]
22750C:  MOVS            R4, #0
22750E:  STR             R1, [SP,#0x158+var_134]
227510:  LDR.W           R0, =(off_660BF0 - 0x22751A); "COM" ...
227514:  MOVS            R2, #3; size_t
227516:  ADD             R0, PC; off_660BF0
227518:  LDR.W           R5, [R0,R4,LSL#2]
22751C:  ADD             R0, SP, #0x158+var_64; char *
22751E:  MOV             R1, R5; char *
227520:  BLX             strncmp
227524:  CBZ             R0, loc_227564
227526:  ADDS            R4, #1
227528:  CMP             R4, #0x25 ; '%'
22752A:  BCC             loc_227510
22752C:  LDR             R0, [SP,#0x158+var_70]
22752E:  LDR             R4, [SP,#0x158+var_94]
227530:  LDRB            R0, [R0]
227532:  LDRD.W          R12, LR, [SP,#0x158+var_80]
227536:  LSLS            R0, R0, #0x1A
227538:  BMI.W           loc_22823A
22753C:  LDR             R0, [SP,#0x158+var_88]
22753E:  LDR             R0, [R0]
227540:  CMP             R0, #3
227542:  BLT.W           loc_22823A
227546:  LDR             R0, [SP,#0x158+var_C8]
227548:  LDRB.W          R1, [SP,#0x158+var_64+2]
22754C:  LDRB.W          R2, [SP,#0x158+var_64]
227550:  LDRB.W          R3, [SP,#0x158+var_64+1]
227554:  LDR             R0, [R0]; stream
227556:  STR             R1, [SP,#0x158+var_158]
227558:  ADR.W           R1, aIgnoringUntran; "Ignoring untranslated ID3v2.2 frame %c%"...
22755C:  BLX             fprintf
227560:  B.W             loc_228236
227564:  LDR.W           R0, =(off_660C84 - 0x22756C); "COMM" ...
227568:  ADD             R0, PC; off_660C84
22756A:  LDR.W           R3, [R0,R4,LSL#2]
22756E:  LDR             R4, [SP,#0x158+var_94]
227570:  LDR             R0, [R3]
227572:  STR             R0, [SP,#0x158+var_64]
227574:  LDR             R0, [SP,#0x158+var_70]
227576:  LDRB            R0, [R0]
227578:  LDRD.W          R12, LR, [SP,#0x158+var_80]
22757C:  LDR             R1, [SP,#0x158+var_134]
22757E:  LSLS            R0, R0, #0x1A
227580:  BMI             loc_22758C
227582:  LDR             R0, [SP,#0x158+var_88]
227584:  LDR             R0, [R0]
227586:  CMP             R0, #3
227588:  BGE.W           loc_227920
22758C:  MOVW            R0, #0x8FBC
227590:  TST             R1, R0
227592:  BEQ             loc_2275B4
227594:  LDR             R0, [SP,#0x158+var_70]
227596:  LDRB            R0, [R0]
227598:  LSLS            R0, R0, #0x1A
22759A:  BMI.W           loc_22823A
22759E:  LDR             R0, [SP,#0x158+var_B0]
2275A0:  MOV.W           R2, #0x2BC
2275A4:  LDR.W           R1, =(aCProjectsOswra_12 - 0x2275AE); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2275A8:  LDR             R0, [R0]; stream
2275AA:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2275AC:  BLX             fprintf
2275B0:  B.W             loc_228236
2275B4:  LDR.W           R0, =(aComm - 0x2275C2); "COMM"
2275B8:  MOV             R9, R4
2275BA:  ADD             R4, SP, #0x158+var_64
2275BC:  MOV             R5, R1
2275BE:  ADD             R0, PC; "COMM"
2275C0:  MOVS            R2, #4; size_t
2275C2:  MOV             R1, R4; char *
2275C4:  BLX             strncmp
2275C8:  CBZ             R0, loc_2275F8
2275CA:  LDR             R0, [SP,#0x158+var_8C]; char *
2275CC:  MOV             R1, R4; char *
2275CE:  MOVS            R2, #4; size_t
2275D0:  BLX             strncmp
2275D4:  CBZ             R0, loc_2275FC
2275D6:  LDR             R0, [SP,#0x158+var_98]; char *
2275D8:  MOV             R1, R4; char *
2275DA:  MOVS            R2, #4; size_t
2275DC:  BLX             strncmp
2275E0:  CBZ             R0, loc_227600
2275E2:  LDR             R0, [SP,#0x158+var_9C]; char *
2275E4:  MOV             R1, R4; char *
2275E6:  MOVS            R2, #4; size_t
2275E8:  BLX             strncmp
2275EC:  CMP             R0, #0
2275EE:  MOV             R0, #0xFFFFFFFE
2275F2:  IT EQ
2275F4:  MOVEQ           R0, #3
2275F6:  B               loc_227602
2275F8:  MOVS            R0, #0
2275FA:  B               loc_227602
2275FC:  MOVS            R0, #1
2275FE:  B               loc_227602
227600:  MOVS            R0, #2
227602:  LDRB.W          R1, [SP,#0x158+var_64]
227606:  MOV             R2, R0
227608:  MOV             R4, R9
22760A:  CMP             R1, #0x54 ; 'T'
22760C:  IT EQ
22760E:  MOVEQ.W         R2, #0xFFFFFFFF
227612:  CMP             R0, #1
227614:  IT EQ
227616:  MOVEQ           R2, R0
227618:  LDRD.W          R12, LR, [SP,#0x158+var_80]
22761C:  ADDS            R0, R2, #2
22761E:  BEQ.W           loc_22823A
227622:  ADD.W           R0, R8, R6
227626:  LDR             R1, [SP,#0x158+var_90]
227628:  STR             R0, [SP,#0x158+var_134]
22762A:  AND.W           R0, R5, #2
22762E:  ORRS.W          R5, R0, R1
227632:  STR             R5, [SP,#0x158+var_138]
227634:  BEQ             loc_227682
227636:  LDR             R4, [SP,#0x158+byte_count]
227638:  MOV             R5, R2
22763A:  MOV             R0, R4; byte_count
22763C:  BLX             malloc
227640:  CMP             R0, #0
227642:  BEQ             loc_2276C0
227644:  LDR             R1, [SP,#0x158+var_134]
227646:  MOVS            R2, #1
227648:  STR             R2, [SP,#0x158+byte_count]
22764A:  LDRB            R1, [R1]
22764C:  STRB            R1, [R0]
22764E:  ADDS            R1, R6, R4
227650:  LDRD.W          R12, LR, [SP,#0x158+var_80]
227654:  MOV             R4, R9
227656:  B               loc_227662
227658:  LDR             R6, [SP,#0x158+byte_count]
22765A:  STRB            R3, [R0,R6]
22765C:  ADDS            R6, #1
22765E:  STR             R6, [SP,#0x158+byte_count]
227660:  MOV             R6, R2
227662:  ADDS            R2, R6, #1
227664:  CMP             R2, R1
227666:  BCS             loc_22767E
227668:  ADD.W           R3, R8, R6
22766C:  LDRB            R3, [R3,#1]
22766E:  CMP             R3, #0
227670:  BNE             loc_227658
227672:  LDRB.W          R6, [R8,R6]
227676:  CMP             R6, #0xFF
227678:  MOV             R6, R2
22767A:  BEQ             loc_227662
22767C:  B               loc_227658
22767E:  MOV             R2, R5
227680:  STR             R0, [SP,#0x158+var_134]
227682:  ADDS            R0, R2, #1
227684:  STR             R4, [SP,#0x158+var_94]
227686:  CMP             R0, #4; switch 5 cases
227688:  BHI             def_22768A; jumptable 0022768A default case
22768A:  TBB.W           [PC,R0]; switch jump
22768E:  DCB 0x4B; jump table for switch statement
22768F:  DCB 3
227690:  DCB 0x6F
227691:  DCB 0xC2
227692:  DCB 3
227693:  ALIGN 2
227694:  LDR             R0, [SP,#0x158+byte_count]; jumptable 0022768A cases 1,4
227696:  STR.W           R8, [SP,#0x158+var_13C]
22769A:  CMP             R0, #3
22769C:  BGT.W           loc_227858
2276A0:  LDR             R0, [SP,#0x158+var_70]
2276A2:  LDRB            R0, [R0]
2276A4:  LSLS            R0, R0, #0x1A
2276A6:  BMI.W           loc_227E68
2276AA:  LDR             R0, [SP,#0x158+var_D4]
2276AC:  MOVW            R2, #0x147
2276B0:  LDR.W           R1, =(aCProjectsOswra_13 - 0x2276BC); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2276B4:  LDR             R3, [SP,#0x158+byte_count]
2276B6:  LDR             R0, [R0]; stream
2276B8:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2276BA:  BLX             fprintf
2276BE:  B               loc_227BE0
2276C0:  LDR             R0, [SP,#0x158+var_70]
2276C2:  MOV             R4, R9
2276C4:  LDRB            R0, [R0]
2276C6:  LDRD.W          R12, LR, [SP,#0x158+var_80]
2276CA:  LSLS            R0, R0, #0x1A
2276CC:  BMI.W           loc_22823A
2276D0:  LDR             R0, [SP,#0x158+var_CC]
2276D2:  MOVW            R2, #0x2D5
2276D6:  LDR.W           R1, =(aCProjectsOswra_14 - 0x2276E0); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2276DA:  LDR             R0, [R0]; stream
2276DC:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2276DE:  BLX             fprintf
2276E2:  MOV             R4, R9
2276E4:  B.W             loc_228236
2276E8:  LDR             R0, [SP,#0x158+var_A8]
2276EA:  ADR.W           R1, aNoteId3v2SFram; "Note: ID3v2 %s frame of size %lu\n"
2276EE:  ADD             R2, SP, #0x158+var_64
2276F0:  STR             R4, [SP,#0x158+var_94]
2276F2:  LDR             R0, [R0]; stream
2276F4:  BLX             fprintf
2276F8:  LDR             R3, [SP,#0x158+byte_count]
2276FA:  LDR.W           LR, [SP,#0x158+var_7C]
2276FE:  LDR             R4, [SP,#0x158+var_94]
227700:  B.W             loc_22834C
227704:  DCFS 0.0019531
227708:  LDR             R0, [SP,#0x158+var_70]; jumptable 0022768A default case
22770A:  MOV             R3, R2
22770C:  LDRB            R0, [R0]
22770E:  LSLS            R0, R0, #0x1A
227710:  BMI.W           loc_22822A
227714:  LDR             R0, [SP,#0x158+var_D0]
227716:  MOVW            R2, #0x311
22771A:  LDR.W           R1, =(aCProjectsOswra_15 - 0x227724); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22771E:  LDR             R0, [R0]
227720:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227722:  B               loc_2279BA
227724:  LDR             R0, [SP,#0x158+var_A0]; jumptable 0022768A case 0
227726:  MOVS            R2, #0x20 ; ' '
227728:  LDR             R1, [R0]
22772A:  LDR             R0, [SP,#0x158+var_A4]
22772C:  ADD.W           R1, R2, R1,LSL#5; size
227730:  LDR             R0, [R0]; ptr
227732:  CMP             R0, #0
227734:  BEQ.W           loc_227938
227738:  BLX             realloc
22773C:  CMP             R0, #0
22773E:  BEQ.W           loc_227944
227742:  LDR             R1, [SP,#0x158+var_A4]
227744:  STR             R0, [R1]
227746:  LDR             R1, [SP,#0x158+var_A0]
227748:  MOV             R3, R1
22774A:  LDR             R1, [R3]
22774C:  ADDS            R2, R1, #1
22774E:  STR             R2, [R3]
227750:  ADD.W           R5, R0, R1,LSL#5
227754:  LSLS            R2, R1, #5
227756:  MOVS            R3, #0
227758:  STR             R3, [R0,R2]
22775A:  ADD.W           R0, R5, #8
22775E:  STRB            R3, [R5,#6]
227760:  STRH            R3, [R5,#4]
227762:  STRD.W          R3, R3, [R5,#0x18]
227766:  VST1.32         {D8-D9}, [R0]
22776A:  B               loc_227946
22776C:  LDR             R0, [SP,#0x158+byte_count]; jumptable 0022768A case 2
22776E:  STR.W           R8, [SP,#0x158+var_13C]
227772:  CMP             R0, #0
227774:  BLE.W           loc_2279C2
227778:  LDR.W           R9, [SP,#0x158+var_134]
22777C:  SUBS            R0, #1
22777E:  CMP             R0, #1
227780:  LDRSB.W         R1, [R9],#1
227784:  MOV             R5, R9
227786:  UXTB.W          R8, R1
22778A:  BLT             loc_2277CC
22778C:  LDR.W           R2, =(unk_5F58DC - 0x22779C)
227790:  SUB.W           R3, R8, #1
227794:  MOVS            R6, #0
227796:  MOV             R5, R9
227798:  ADD             R2, PC; unk_5F58DC
22779A:  LDR.W           R2, [R2,R8,LSL#2]
22779E:  LDRB            R4, [R5]
2277A0:  CBZ             R4, loc_2277A6
2277A2:  ADD             R5, R2
2277A4:  B               loc_2277C4
2277A6:  SUBS            R6, R0, R6
2277A8:  CMP             R2, R6
2277AA:  BHI.W           loc_227EAC
2277AE:  MOVS            R6, #1
2277B0:  CMP             R3, #1
2277B2:  BHI             loc_2277BE
2277B4:  LDRB            R4, [R5,R6]
2277B6:  CBNZ            R4, loc_2277BE
2277B8:  ADDS            R6, #1
2277BA:  CMP             R6, R2
2277BC:  BCC             loc_2277B4
2277BE:  ADD             R5, R2
2277C0:  CMP             R6, R2
2277C2:  BEQ             loc_2277CC
2277C4:  SUB.W           R6, R5, R9
2277C8:  CMP             R6, R0
2277CA:  BLT             loc_22779E
2277CC:  SUB.W           R2, R5, R9
2277D0:  CMP             R2, R0
2277D2:  MOV.W           R0, #0
2277D6:  IT CS
2277D8:  MOVCS           R5, R0
2277DA:  LDR             R0, [SP,#0x158+var_70]
2277DC:  LDRB            R0, [R0]
2277DE:  LSLS            R0, R0, #0x1A
2277E0:  BMI             loc_2277EC
2277E2:  LDR             R0, [SP,#0x158+var_6C]
2277E4:  LDR             R0, [R0]
2277E6:  CMP             R0, #4
2277E8:  BGE.W           loc_227F68
2277EC:  CMP             R5, #0
2277EE:  BEQ.W           loc_227FE0
2277F2:  LDR             R0, [SP,#0x158+var_B8]
2277F4:  MOVS            R2, #0x20 ; ' '
2277F6:  LDR             R1, [R0]
2277F8:  LDR             R0, [SP,#0x158+var_BC]
2277FA:  ADD.W           R1, R2, R1,LSL#5; size
2277FE:  LDR             R0, [R0]; ptr
227800:  CMP             R0, #0
227802:  BEQ.W           loc_227C5A
227806:  BLX             realloc
22780A:  CMP             R0, #0
22780C:  BNE.W           loc_227C66
227810:  B               loc_227D90
227812:  LDR             R0, [SP,#0x158+var_70]; jumptable 0022768A case 3
227814:  STR.W           R8, [SP,#0x158+var_13C]
227818:  LDRB            R0, [R0]
22781A:  LSLS            R0, R0, #0x1A
22781C:  BMI             loc_227828
22781E:  LDR             R0, [SP,#0x158+var_6C]
227820:  LDR             R0, [R0]
227822:  CMP             R0, #3
227824:  BGE.W           loc_227F0E
227828:  LDR             R0, [SP,#0x158+var_134]; char *
22782A:  ADR.W           R1, aAlbum; "album"
22782E:  MOVS            R2, #5; size_t
227830:  BLX             strncasecmp
227834:  CBZ             R0, loc_227886
227836:  LDR.W           R1, =(aRvaAudiophile+4 - 0x227842); "audiophile"
22783A:  MOVS            R2, #0xA; size_t
22783C:  LDR             R0, [SP,#0x158+var_134]; char *
22783E:  ADD             R1, PC; char *
227840:  BLX             strncasecmp
227844:  CBZ             R0, loc_227886
227846:  LDR             R0, [SP,#0x158+var_134]; char *
227848:  ADR.W           R1, aUser; "user"
22784C:  MOVS            R2, #4; size_t
22784E:  BLX             strncasecmp
227852:  CBZ             R0, loc_227886
227854:  MOVS            R0, #0
227856:  B               loc_227888
227858:  LDR             R0, [SP,#0x158+var_134]
22785A:  CMP             R2, #3
22785C:  LDRB.W          R9, [R0],#4
227860:  STRD.W          R2, R0, [SP,#0x158+var_144]
227864:  BNE             loc_227904
227866:  LDR             R0, [SP,#0x158+var_A0]
227868:  MOVS            R2, #0x20 ; ' '
22786A:  LDR             R1, [R0]
22786C:  LDR             R0, [SP,#0x158+var_A4]
22786E:  ADD.W           R1, R2, R1,LSL#5; size
227872:  LDR             R0, [R0]; ptr
227874:  CMP             R0, #0
227876:  BEQ.W           loc_2279E4
22787A:  BLX             realloc
22787E:  CMP             R0, #0
227880:  BNE.W           loc_2279EC
227884:  B               loc_227A26
227886:  MOVS            R0, #1
227888:  ADD.W           R5, R10, R0,LSL#2
22788C:  MOVW            R0, #0x9350
227890:  LDR.W           R8, [SP,#0x158+var_13C]
227894:  LDR             R0, [R5,R0]
227896:  LDRD.W          R12, LR, [SP,#0x158+var_80]
22789A:  CMP             R0, #3
22789C:  BGT.W           loc_22822A
2278A0:  LDR.W           R9, [SP,#0x158+var_134]
2278A4:  MOV             R0, R9; char *
2278A6:  BLX             strlen
2278AA:  ADD             R0, R9
2278AC:  LDRD.W          R12, LR, [SP,#0x158+var_80]
2278B0:  LDRB            R1, [R0,#1]
2278B2:  CMP             R1, #1
2278B4:  BNE.W           loc_22822A
2278B8:  MOVW            R1, #0x9350
2278BC:  ADD.W           R8, R5, R1
2278C0:  LDRSB.W         R1, [R0,#2]
2278C4:  LDRB            R0, [R0,#3]
2278C6:  ORR.W           R0, R0, R1,LSL#8
2278CA:  VMOV            S0, R0
2278CE:  MOVW            R0, #0x9358
2278D2:  ADD             R0, R5
2278D4:  VCVT.F32.S32    S0, S0
2278D8:  VMUL.F32        S0, S0, S20
2278DC:  VSTR            S0, [R0]
2278E0:  LDR             R0, [SP,#0x158+var_70]
2278E2:  LDRB            R0, [R0]
2278E4:  LSLS            R0, R0, #0x1A
2278E6:  BMI             loc_2278F2
2278E8:  LDR             R0, [SP,#0x158+var_6C]
2278EA:  LDR             R0, [R0]
2278EC:  CMP             R0, #3
2278EE:  BGE.W           loc_2280C2
2278F2:  MOVS            R0, #0
2278F4:  MOVW            R1, #0x9360
2278F8:  STR             R0, [R5,R1]
2278FA:  MOVS            R0, #3
2278FC:  STR.W           R0, [R8]
227900:  B.W             loc_228222
227904:  LDR             R0, [SP,#0x158+var_AC]
227906:  MOVS            R2, #0x20 ; ' '
227908:  LDR             R1, [R0]
22790A:  LDR             R0, [SP,#0x158+var_B4]
22790C:  ADD.W           R1, R2, R1,LSL#5; size
227910:  LDR             R0, [R0]; ptr
227912:  CMP             R0, #0
227914:  BEQ             loc_2279F4
227916:  BLX             realloc
22791A:  CMP             R0, #0
22791C:  BNE             loc_2279FC
22791E:  B               loc_227A26
227920:  LDR             R0, [SP,#0x158+var_C4]
227922:  MOV             R2, R5
227924:  LDR.W           R1, =(aTranslatedId3v - 0x22792E); "Translated ID3v2.2 frame %s to %s\n"
227928:  LDR             R0, [R0]; stream
22792A:  ADD             R1, PC; "Translated ID3v2.2 frame %s to %s\n"
22792C:  BLX             fprintf
227930:  LDR             R1, [SP,#0x158+var_134]
227932:  LDRD.W          R12, LR, [SP,#0x158+var_80]
227936:  B               loc_22758C
227938:  MOV             R0, R1; byte_count
22793A:  BLX             malloc
22793E:  CMP             R0, #0
227940:  BNE.W           loc_227742
227944:  MOVS            R5, #0
227946:  LDR             R0, [SP,#0x158+var_70]
227948:  LDRB            R0, [R0]
22794A:  LSLS            R0, R0, #0x1A
22794C:  BMI             loc_227958
22794E:  LDR             R0, [SP,#0x158+var_6C]
227950:  LDR             R0, [R0]
227952:  CMP             R0, #4
227954:  BGE.W           loc_227F20
227958:  CMP             R5, #0
22795A:  BEQ.W           loc_227F92
22795E:  LDR             R0, [SP,#0x158+var_64]
227960:  STR.W           R0, [R5,#3]
227964:  ADDS            R5, #0x14
227966:  LDR             R0, [SP,#0x158+var_70]
227968:  LDR             R2, [SP,#0x158+byte_count]; byte_count
22796A:  MOV             R6, R0
22796C:  LDR             R0, [R6]
22796E:  AND.W           R1, R0, #0x800
227972:  STR             R1, [SP,#0x158+var_158]; int
227974:  MOVS            R1, #1
227976:  BIC.W           R3, R1, R0,LSR#5; int
22797A:  LDR             R1, [SP,#0x158+var_134]; void *
22797C:  MOV             R0, R5; int
22797E:  BL              sub_23B1C4
227982:  LDRB            R0, [R6]
227984:  LDRD.W          R12, LR, [SP,#0x158+var_80]
227988:  LSLS            R0, R0, #0x1A
22798A:  BMI.W           loc_22822A
22798E:  LDR             R0, [SP,#0x158+var_6C]
227990:  LDR             R0, [R0]
227992:  CMP             R0, #4
227994:  BLT.W           loc_22822A
227998:  LDR             R0, [SP,#0x158+var_F8]
22799A:  LDRB.W          R6, [SP,#0x158+var_64+3]
22799E:  LDRB.W          R1, [SP,#0x158+var_64+2]
2279A2:  LDRB.W          R2, [SP,#0x158+var_64]
2279A6:  LDRB.W          R3, [SP,#0x158+var_64+1]
2279AA:  LDR             R5, [R5]
2279AC:  LDR             R0, [R0]; stream
2279AE:  STRD.W          R1, R6, [SP,#0x158+var_158]
2279B2:  LDR.W           R1, =(aNoteId3v2CCCCT - 0x2279BC); "Note: ID3v2 %c%c%c%c text frame: %s\n"
2279B6:  STR             R5, [SP,#0x158+var_150]
2279B8:  ADD             R1, PC; "Note: ID3v2 %c%c%c%c text frame: %s\n"
2279BA:  BLX             fprintf
2279BE:  B.W             loc_228226
2279C2:  LDR             R0, [SP,#0x158+var_70]
2279C4:  LDRB            R0, [R0]
2279C6:  LSLS            R0, R0, #0x1A
2279C8:  BMI.W           loc_228222
2279CC:  LDR             R0, [SP,#0x158+var_F0]
2279CE:  MOVW            R2, #0x199
2279D2:  LDR.W           R1, =(aCProjectsOswra_13 - 0x2279DE); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2279D6:  LDR             R3, [SP,#0x158+byte_count]
2279D8:  LDR             R0, [R0]; stream
2279DA:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2279DC:  BLX             fprintf
2279E0:  B.W             loc_228222
2279E4:  MOV             R0, R1; byte_count
2279E6:  BLX             malloc
2279EA:  CBZ             R0, loc_227A26
2279EC:  LDR             R1, [SP,#0x158+var_A4]
2279EE:  STR             R0, [R1]
2279F0:  LDR             R1, [SP,#0x158+var_A0]
2279F2:  B               loc_227A02
2279F4:  MOV             R0, R1; byte_count
2279F6:  BLX             malloc
2279FA:  CBZ             R0, loc_227A26
2279FC:  LDR             R1, [SP,#0x158+var_B4]
2279FE:  STR             R0, [R1]
227A00:  LDR             R1, [SP,#0x158+var_AC]
227A02:  MOV             R3, R1
227A04:  LDR             R1, [R3]
227A06:  ADDS            R2, R1, #1
227A08:  STR             R2, [R3]
227A0A:  LSLS            R2, R1, #5
227A0C:  MOVS            R3, #0
227A0E:  STR             R3, [R0,R2]
227A10:  ADD.W           R0, R0, R1,LSL#5
227A14:  STRB            R3, [R0,#6]
227A16:  MOV             R8, R0
227A18:  STRH            R3, [R0,#4]
227A1A:  STR             R3, [R0,#0x18]
227A1C:  STR             R3, [R0,#0x1C]
227A1E:  ADDS            R0, #8
227A20:  VST1.32         {D8-D9}, [R0]
227A24:  B               loc_227A2A
227A26:  MOV.W           R8, #0
227A2A:  LDR             R0, [SP,#0x158+var_70]
227A2C:  LDRB            R0, [R0]
227A2E:  LSLS            R0, R0, #0x1A
227A30:  BMI             loc_227A3C
227A32:  LDR             R0, [SP,#0x158+var_6C]
227A34:  LDR             R0, [R0]
227A36:  CMP             R0, #4
227A38:  BGE.W           loc_227F3A
227A3C:  MOV             R3, R8
227A3E:  CMP             R3, #0
227A40:  BEQ.W           loc_227BC0
227A44:  LDR             R5, [SP,#0x158+var_134]
227A46:  ADDS            R0, R5, #1
227A48:  LDRH            R1, [R0]
227A4A:  LDRB            R0, [R0,#2]
227A4C:  STRB            R0, [R3,#2]
227A4E:  STRH            R1, [R3]
227A50:  LDR             R0, [SP,#0x158+var_64]
227A52:  STR.W           R0, [R3,#3]
227A56:  LDR             R0, [SP,#0x158+byte_count]
227A58:  LDR             R2, [SP,#0x158+var_140]
227A5A:  SUBS            R0, #4
227A5C:  STRB.W          R9, [R5,#3]!
227A60:  CMP             R0, #1
227A62:  MOV             R4, R2
227A64:  BLT             loc_227AA8
227A66:  LDR.W           R1, =(unk_5F58DC - 0x227A76)
227A6A:  MOV             R3, R9
227A6C:  SUB.W           R12, R3, #1
227A70:  MOV             R4, R2
227A72:  ADD             R1, PC; unk_5F58DC
227A74:  LDR.W           R1, [R1,R3,LSL#2]
227A78:  MOVS            R3, #0
227A7A:  LDRB            R6, [R4]
227A7C:  CBZ             R6, loc_227A82
227A7E:  ADD             R4, R1
227A80:  B               loc_227AA2
227A82:  SUBS            R3, R0, R3
227A84:  CMP             R1, R3
227A86:  BHI.W           loc_227BEA
227A8A:  MOVS            R3, #1
227A8C:  CMP.W           R12, #1
227A90:  BHI             loc_227A9C
227A92:  LDRB            R6, [R4,R3]
227A94:  CBNZ            R6, loc_227A9C
227A96:  ADDS            R3, #1
227A98:  CMP             R3, R1
227A9A:  BCC             loc_227A92
227A9C:  ADD             R4, R1
227A9E:  CMP             R3, R1
227AA0:  BEQ             loc_227AA8
227AA2:  SUBS            R3, R4, R2
227AA4:  CMP             R3, R0
227AA6:  BLT             loc_227A7A
227AA8:  CMP             R4, #0
227AAA:  BEQ.W           loc_227BEA
227AAE:  SUBS            R6, R4, R2
227AB0:  CMP             R6, R0
227AB2:  BCS.W           loc_227BEA
227AB6:  LDR             R0, [SP,#0x158+var_C0]
227AB8:  MOVS            R1, #0
227ABA:  STRB.W          R1, [SP,#0x158+var_52]
227ABE:  STRH.W          R1, [SP,#0x158+var_54]
227AC2:  STR             R1, [SP,#0x158+var_58]
227AC4:  STR             R1, [R0,#0x14]
227AC6:  VST1.64         {D8-D9}, [R0]!
227ACA:  STR             R1, [R0]
227ACC:  LDR             R0, [SP,#0x158+var_70]
227ACE:  STR             R4, [SP,#0x158+var_148]
227AD0:  ADDS            R4, R6, #1
227AD2:  LDR             R0, [R0]
227AD4:  MOV             R2, R4; byte_count
227AD6:  AND.W           R1, R0, #0x800
227ADA:  STR             R1, [SP,#0x158+var_158]; int
227ADC:  MOVS            R1, #1
227ADE:  BIC.W           R3, R1, R0,LSR#5; int
227AE2:  ADD.W           R0, R8, #8; int
227AE6:  MOV             R1, R5; void *
227AE8:  BL              sub_23B1C4
227AEC:  LDR             R0, [SP,#0x158+var_144]
227AEE:  CMP             R0, #0
227AF0:  BEQ.W           loc_227E6E
227AF4:  LDR             R6, [SP,#0x158+var_148]
227AF6:  LDR             R0, [SP,#0x158+var_70]
227AF8:  MOV             R1, R6
227AFA:  STRB.W          R9, [R1,#-1]!; void *
227AFE:  MOV             R4, R0
227B00:  LDR             R0, [R4]
227B02:  AND.W           R2, R0, #0x800
227B06:  STR             R2, [SP,#0x158+var_158]; int
227B08:  MOVS            R2, #1
227B0A:  BIC.W           R3, R2, R0,LSR#5; int
227B0E:  LDR             R0, [SP,#0x158+var_134]
227B10:  LDR             R2, [SP,#0x158+byte_count]
227B12:  SUBS            R0, R0, R6
227B14:  ADD.W           R9, R2, R0
227B18:  ADD.W           R0, R8, #0x14; int
227B1C:  ADD.W           R6, R9, #1
227B20:  MOV             R2, R6; byte_count
227B22:  BL              sub_23B1C4
227B26:  LDRB            R0, [R4]
227B28:  LSLS            R0, R0, #0x1A
227B2A:  BMI             loc_227B36
227B2C:  LDR             R0, [SP,#0x158+var_6C]
227B2E:  LDR             R0, [R0]
227B30:  CMP             R0, #4
227B32:  BGE.W           loc_22809E
227B36:  LDR             R0, [SP,#0x158+var_48]
227B38:  CMP             R0, #0
227B3A:  BEQ.W           loc_227E30
227B3E:  LDR             R0, [SP,#0x158+var_144]
227B40:  CMP             R0, #0
227B42:  BNE.W           loc_227E30
227B46:  LDR             R5, [SP,#0x158+var_50]
227B48:  ADR.W           R1, aRva; "rva"
227B4C:  MOV             R0, R5; char *
227B4E:  BLX             strcasecmp
227B52:  CMP             R0, #0
227B54:  BEQ.W           loc_227DAE
227B58:  LDR.W           R1, =(aRvaMix - 0x227B62); "rva_mix"
227B5C:  MOV             R0, R5; char *
227B5E:  ADD             R1, PC; "rva_mix"
227B60:  BLX             strcasecmp
227B64:  CMP             R0, #0
227B66:  BEQ.W           loc_227DAE
227B6A:  LDR.W           R1, =(aRvaTrack - 0x227B74); "rva_track"
227B6E:  MOV             R0, R5; char *
227B70:  ADD             R1, PC; "rva_track"
227B72:  BLX             strcasecmp
227B76:  CMP             R0, #0
227B78:  BEQ.W           loc_227DAE
227B7C:  LDR.W           R1, =(aRvaRadio - 0x227B86); "rva_radio"
227B80:  MOV             R0, R5; char *
227B82:  ADD             R1, PC; "rva_radio"
227B84:  BLX             strcasecmp
227B88:  CMP             R0, #0
227B8A:  BEQ.W           loc_227DAE
227B8E:  LDR.W           R1, =(aRvaAlbum - 0x227B98); "rva_album"
227B92:  MOV             R0, R5; char *
227B94:  ADD             R1, PC; "rva_album"
227B96:  BLX             strcasecmp
227B9A:  CBZ             R0, loc_227BBC
227B9C:  LDR.W           R1, =(aRvaAudiophile - 0x227BA6); "rva_audiophile"
227BA0:  MOV             R0, R5; char *
227BA2:  ADD             R1, PC; "rva_audiophile"
227BA4:  BLX             strcasecmp
227BA8:  CBZ             R0, loc_227BBC
227BAA:  LDR.W           R1, =(aRvaUser - 0x227BB4); "rva_user"
227BAE:  MOV             R0, R5; char *
227BB0:  ADD             R1, PC; "rva_user"
227BB2:  BLX             strcasecmp
227BB6:  CMP             R0, #0
227BB8:  BNE.W           loc_227E30
227BBC:  MOVS            R0, #1
227BBE:  B               loc_227DB0
227BC0:  LDR             R0, [SP,#0x158+var_70]
227BC2:  LDRB            R0, [R0]
227BC4:  LDRD.W          R12, LR, [SP,#0x158+var_80]
227BC8:  LSLS            R0, R0, #0x1A
227BCA:  BMI.W           loc_227E68
227BCE:  LDR             R0, [SP,#0x158+var_EC]
227BD0:  MOV.W           R2, #0x14E
227BD4:  LDR.W           R1, =(aCProjectsOswra_16 - 0x227BDE); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227BD8:  LDR             R0, [R0]; stream
227BDA:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227BDC:  BLX             fprintf
227BE0:  LDRD.W          R12, LR, [SP,#0x158+var_80]
227BE4:  LDR.W           R8, [SP,#0x158+var_13C]
227BE8:  B               loc_22822A
227BEA:  LDR             R0, [SP,#0x158+var_70]
227BEC:  LDRB            R0, [R0]
227BEE:  LSLS            R0, R0, #0x1A
227BF0:  BPL.W           loc_227F54
227BF4:  LDR             R0, [SP,#0x158+var_AC]
227BF6:  LDR             R0, [R0]
227BF8:  LDRD.W          R12, LR, [SP,#0x158+var_80]
227BFC:  CMP             R0, #0
227BFE:  BEQ.W           loc_227E68
227C02:  LDR             R1, [SP,#0x158+var_B4]
227C04:  SUBS            R0, #1
227C06:  LDR             R1, [R1]
227C08:  ADD.W           R5, R1, R0,LSL#5
227C0C:  MOV             R4, R5
227C0E:  LDR.W           R0, [R4,#0x14]!; p
227C12:  CMP             R0, #0
227C14:  IT NE
227C16:  BLXNE           free
227C1A:  MOVS            R1, #0
227C1C:  STR             R1, [R4]
227C1E:  MOV             R4, R5
227C20:  LDR.W           R0, [R4,#8]!; p
227C24:  CMP             R0, #0
227C26:  STRD.W          R1, R1, [R4,#0x10]
227C2A:  IT NE
227C2C:  BLXNE           free
227C30:  MOVS            R0, #0
227C32:  STR             R0, [R4]
227C34:  STRD.W          R0, R0, [R5,#0xC]
227C38:  LDR             R0, [SP,#0x158+var_B4]
227C3A:  LDR             R1, [SP,#0x158+var_AC]
227C3C:  LDR             R0, [R0]; p
227C3E:  LDR             R1, [R1]
227C40:  CMP             R1, #2
227C42:  BCC.W           loc_227E56
227C46:  MOV             R2, #0xFFFFFFE0
227C4A:  ADD.W           R1, R2, R1,LSL#5; size
227C4E:  CMP             R0, #0
227C50:  BEQ.W           loc_227EB0
227C54:  BLX             realloc
227C58:  B               loc_227EB6
227C5A:  MOV             R0, R1; byte_count
227C5C:  BLX             malloc
227C60:  CMP             R0, #0
227C62:  BEQ.W           loc_227D90
227C66:  LDR             R1, [SP,#0x158+var_BC]
227C68:  STR             R0, [R1]
227C6A:  LDR             R1, [SP,#0x158+var_B8]
227C6C:  MOV             R3, R1
227C6E:  LDR             R1, [R3]
227C70:  ADDS            R2, R1, #1
227C72:  STR             R2, [R3]
227C74:  ADD.W           R6, R0, R1,LSL#5
227C78:  LSLS            R2, R1, #5
227C7A:  MOVS            R3, #0
227C7C:  CMP             R6, #0
227C7E:  STR             R3, [R0,R2]
227C80:  ADD.W           R0, R6, #8; int
227C84:  STRB            R3, [R6,#6]
227C86:  STRH            R3, [R6,#4]
227C88:  STRD.W          R3, R3, [R6,#0x18]
227C8C:  VST1.32         {D8-D9}, [R0]
227C90:  BEQ             loc_227D90
227C92:  LDR             R1, [SP,#0x158+var_64]
227C94:  MOVS            R2, #0
227C96:  STR.W           R1, [R6,#3]
227C9A:  LDR             R1, [SP,#0x158+var_C0]
227C9C:  STRB.W          R2, [SP,#0x158+var_52]
227CA0:  STRH.W          R2, [SP,#0x158+var_54]
227CA4:  STR             R2, [SP,#0x158+var_58]
227CA6:  STR             R2, [R1,#0x14]
227CA8:  VST1.64         {D8-D9}, [R1]!
227CAC:  STR             R2, [R1]
227CAE:  LDR             R1, [SP,#0x158+var_70]
227CB0:  LDR             R1, [R1]
227CB2:  AND.W           R2, R1, #0x800
227CB6:  STR             R2, [SP,#0x158+var_158]; int
227CB8:  MOVS            R2, #1
227CBA:  BIC.W           R3, R2, R1,LSR#5; int
227CBE:  SUB.W           R1, R5, R9
227CC2:  STR             R1, [SP,#0x158+var_140]
227CC4:  ADDS            R4, R1, #1
227CC6:  LDR             R1, [SP,#0x158+var_134]; void *
227CC8:  MOV             R2, R4; byte_count
227CCA:  BL              sub_23B1C4
227CCE:  CBZ             R4, loc_227CF4
227CD0:  LDR             R0, [SP,#0x158+var_70]
227CD2:  MOVS            R1, #1
227CD4:  LDR             R3, [SP,#0x158+var_140]
227CD6:  MOV             R2, R9
227CD8:  LDR             R0, [R0]
227CDA:  BIC.W           R4, R1, R0,LSR#5
227CDE:  LDR             R0, [SP,#0x158+var_134]
227CE0:  STR             R4, [SP,#0x158+var_158]
227CE2:  LDRB            R1, [R0]
227CE4:  LDR             R0, [SP,#0x158+var_C0]
227CE6:  BLX             j_INT123_id3_to_utf8
227CEA:  CBZ             R4, loc_227CF4
227CEC:  LDR             R0, [SP,#0x158+var_48]
227CEE:  CMP             R0, #0
227CF0:  BEQ.W           loc_2280DC
227CF4:  MOV             R1, R5
227CF6:  STRB.W          R8, [R1,#-1]!; void *
227CFA:  LDR             R0, [SP,#0x158+var_70]
227CFC:  LDR             R0, [R0]
227CFE:  AND.W           R2, R0, #0x800
227D02:  STR             R2, [SP,#0x158+var_158]; int
227D04:  MOVS            R2, #1
227D06:  BIC.W           R3, R2, R0,LSR#5; int
227D0A:  LDR             R2, [SP,#0x158+var_134]
227D0C:  ADD.W           R0, R6, #0x14; int
227D10:  LDR             R6, [SP,#0x158+byte_count]
227D12:  SUBS            R2, R2, R5
227D14:  ADD.W           R9, R2, R6
227D18:  ADD.W           R4, R9, #1
227D1C:  MOV             R2, R4; byte_count
227D1E:  BL              sub_23B1C4
227D22:  LDR             R0, [SP,#0x158+var_48]
227D24:  CMP             R0, #0
227D26:  BEQ.W           loc_2281FE
227D2A:  LDR.W           R1, =(aReplaygainTrac - 0x227D36); "replaygain_track_"
227D2E:  MOVS            R2, #0x11; size_t
227D30:  LDR             R6, [SP,#0x158+var_50]
227D32:  ADD             R1, PC; "replaygain_track_"
227D34:  MOV             R0, R6; char *
227D36:  BLX             strncasecmp
227D3A:  CMP             R0, #0
227D3C:  BEQ.W           loc_227ED2
227D40:  LDR.W           R1, =(aReplaygainAlbu - 0x227D4C); "replaygain_album_"
227D44:  MOV             R0, R6; char *
227D46:  MOVS            R2, #0x11; size_t
227D48:  ADD             R1, PC; "replaygain_album_"
227D4A:  BLX             strncasecmp
227D4E:  CMP             R0, #0
227D50:  BNE.W           loc_2281FE
227D54:  LDR             R0, [SP,#0x158+var_70]
227D56:  LDRB            R0, [R0]
227D58:  LSLS            R0, R0, #0x1A
227D5A:  BMI             loc_227D66
227D5C:  LDR             R0, [SP,#0x158+var_6C]
227D5E:  LDR             R0, [R0]
227D60:  CMP             R0, #3
227D62:  BGE.W           loc_22826C
227D66:  LDR.W           R1, =(aReplaygainAlbu_0 - 0x227D70); "replaygain_album_peak"
227D6A:  MOV             R0, R6; char *
227D6C:  ADD             R1, PC; "replaygain_album_peak"
227D6E:  BLX             strcasecmp
227D72:  CMP             R0, #0
227D74:  BEQ.W           loc_227FFE
227D78:  LDR.W           R1, =(aReplaygainAlbu_1 - 0x227D82); "replaygain_album_gain"
227D7C:  MOV             R0, R6; char *
227D7E:  ADD             R1, PC; "replaygain_album_gain"
227D80:  BLX             strcasecmp
227D84:  CMP             R0, #0
227D86:  BNE.W           loc_2281FE
227D8A:  MOVS            R0, #1
227D8C:  MOVS            R1, #0
227D8E:  B               loc_227FC8
227D90:  LDR             R0, [SP,#0x158+var_70]
227D92:  LDRB            R0, [R0]
227D94:  LSLS            R0, R0, #0x1A
227D96:  BMI.W           loc_228222
227D9A:  LDR             R0, [SP,#0x158+var_100]
227D9C:  MOV.W           R2, #0x1A6
227DA0:  LDR.W           R1, =(aCProjectsOswra_17 - 0x227DAA); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227DA4:  LDR             R0, [R0]; stream
227DA6:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227DA8:  BLX             fprintf
227DAC:  B               loc_228222
227DAE:  MOVS            R0, #0
227DB0:  ADD.W           R5, R10, R0,LSL#2
227DB4:  MOVW            R0, #0x9350
227DB8:  LDR             R0, [R5,R0]
227DBA:  CMP             R0, #1
227DBC:  BGT             loc_227E30
227DBE:  CBZ             R6, loc_227DF0
227DC0:  LDR             R0, [SP,#0x158+var_70]
227DC2:  MOVS            R1, #1
227DC4:  LDR             R2, [SP,#0x158+var_148]
227DC6:  MOV             R3, R9
227DC8:  LDR             R0, [R0]
227DCA:  BIC.W           R4, R1, R0,LSR#5
227DCE:  LDRB.W          R1, [R2,#-1]
227DD2:  LDR             R0, [SP,#0x158+var_D8]
227DD4:  STR             R4, [SP,#0x158+var_158]
227DD6:  BLX             j_INT123_id3_to_utf8
227DDA:  LDR             R0, [SP,#0x158+var_3C]
227DDC:  CBZ             R4, loc_227DF2
227DDE:  CBNZ            R0, loc_227DF2
227DE0:  LDR             R0, [SP,#0x158+var_118]
227DE2:  MOVS            R2, #0xD7
227DE4:  LDR.W           R1, =(aCProjectsOswra_18 - 0x227DEE); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227DE8:  LDR             R0, [R0]; stream
227DEA:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227DEC:  BLX             fprintf
227DF0:  LDR             R0, [SP,#0x158+var_3C]
227DF2:  CBZ             R0, loc_227E30
227DF4:  MOVW            R0, #0x9350
227DF8:  ADDS            R6, R5, R0
227DFA:  LDR             R0, [SP,#0x158+var_44]; char *
227DFC:  BLX             atof
227E00:  VMOV            D16, R0, R1
227E04:  MOVW            R0, #0x9358
227E08:  ADD             R0, R5
227E0A:  VCVT.F32.F64    S0, D16
227E0E:  VSTR            S0, [R0]
227E12:  LDR             R0, [SP,#0x158+var_70]
227E14:  LDRB            R0, [R0]
227E16:  LSLS            R0, R0, #0x1A
227E18:  BMI             loc_227E24
227E1A:  LDR             R0, [SP,#0x158+var_6C]
227E1C:  LDR             R0, [R0]
227E1E:  CMP             R0, #3
227E20:  BGE.W           loc_228242
227E24:  MOVW            R0, #0x9360
227E28:  MOVS            R1, #0
227E2A:  STR             R1, [R5,R0]
227E2C:  MOVS            R0, #1
227E2E:  STR             R0, [R6]
227E30:  LDR             R0, [SP,#0x158+var_44]; p
227E32:  CMP             R0, #0
227E34:  IT NE
227E36:  BLXNE           free
227E3A:  LDR             R0, [SP,#0x158+var_50]; p
227E3C:  MOVS            R1, #0
227E3E:  STRD.W          R1, R1, [SP,#0x158+var_44]
227E42:  CMP             R0, #0
227E44:  STR             R1, [SP,#0x158+var_3C]
227E46:  IT NE
227E48:  BLXNE           free
227E4C:  MOVS            R0, #0
227E4E:  STRD.W          R0, R0, [SP,#0x158+var_50]
227E52:  STR             R0, [SP,#0x158+var_48]
227E54:  B               loc_227E64
227E56:  BLX             free
227E5A:  LDR             R0, [SP,#0x158+var_B4]
227E5C:  MOVS            R1, #0
227E5E:  STR             R1, [R0]
227E60:  LDR             R0, [SP,#0x158+var_AC]
227E62:  STR             R1, [R0]
227E64:  LDRD.W          R12, LR, [SP,#0x158+var_80]
227E68:  LDR.W           R8, [SP,#0x158+var_13C]
227E6C:  B               loc_22822A
227E6E:  CMP             R4, #0
227E70:  BEQ.W           loc_227AF4
227E74:  LDR             R0, [SP,#0x158+var_70]
227E76:  MOVS            R1, #1
227E78:  LDR             R2, [SP,#0x158+var_140]
227E7A:  MOV             R3, R6
227E7C:  LDR             R0, [R0]
227E7E:  BIC.W           R4, R1, R0,LSR#5
227E82:  LDRB            R1, [R5]
227E84:  LDR             R0, [SP,#0x158+var_C0]
227E86:  STR             R4, [SP,#0x158+var_158]
227E88:  BLX             j_INT123_id3_to_utf8
227E8C:  CMP             R4, #0
227E8E:  BEQ.W           loc_227AF4
227E92:  LDR             R0, [SP,#0x158+var_48]
227E94:  CMP             R0, #0
227E96:  BNE.W           loc_227AF4
227E9A:  LDR             R0, [SP,#0x158+var_114]
227E9C:  MOVS            R2, #0xD7
227E9E:  LDR.W           R1, =(aCProjectsOswra_18 - 0x227EA8); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227EA2:  LDR             R0, [R0]; stream
227EA4:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227EA6:  BLX             fprintf
227EAA:  B               loc_227AF4
227EAC:  MOVS            R5, #0
227EAE:  B               loc_2277DA
227EB0:  MOV             R0, R1; byte_count
227EB2:  BLX             malloc
227EB6:  LDRD.W          R12, LR, [SP,#0x158+var_80]
227EBA:  CMP             R0, #0
227EBC:  BEQ             loc_227E68
227EBE:  LDR             R1, [SP,#0x158+var_B4]
227EC0:  STR             R0, [R1]
227EC2:  LDR             R0, [SP,#0x158+var_AC]
227EC4:  MOV             R1, R0
227EC6:  LDR             R0, [R1]
227EC8:  SUBS            R0, #1
227ECA:  STR             R0, [R1]
227ECC:  LDR.W           R8, [SP,#0x158+var_13C]
227ED0:  B               loc_22822A
227ED2:  LDR             R0, [SP,#0x158+var_70]
227ED4:  LDRB            R0, [R0]
227ED6:  LSLS            R0, R0, #0x1A
227ED8:  BMI             loc_227EE4
227EDA:  LDR             R0, [SP,#0x158+var_6C]
227EDC:  LDR             R0, [R0]
227EDE:  CMP             R0, #3
227EE0:  BGE.W           loc_228258
227EE4:  LDR.W           R1, =(aReplaygainTrac_0 - 0x227EEE); "replaygain_track_peak"
227EE8:  MOV             R0, R6; char *
227EEA:  ADD             R1, PC; "replaygain_track_peak"
227EEC:  BLX             strcasecmp
227EF0:  CMP             R0, #0
227EF2:  BEQ             loc_227FC4
227EF4:  LDR.W           R1, =(aReplaygainTrac_1 - 0x227EFE); "replaygain_track_gain"
227EF8:  MOV             R0, R6; char *
227EFA:  ADD             R1, PC; "replaygain_track_gain"
227EFC:  BLX             strcasecmp
227F00:  CMP             R0, #0
227F02:  BNE.W           loc_2281FE
227F06:  MOVS            R0, #0
227F08:  STR             R0, [SP,#0x158+byte_count]
227F0A:  MOVS            R0, #0
227F0C:  B               loc_228004
227F0E:  LDR             R0, [SP,#0x158+var_E4]
227F10:  LDR.W           R1, =(aNoteRva2Identi - 0x227F1C); "Note: RVA2 identification \"%s\"\n"
227F14:  LDR             R2, [SP,#0x158+var_134]
227F16:  LDR             R0, [R0]; stream
227F18:  ADD             R1, PC; "Note: RVA2 identification \"%s\"\n"
227F1A:  BLX             fprintf
227F1E:  B               loc_227828
227F20:  LDR             R0, [SP,#0x158+var_134]
227F22:  LDRSB.W         R1, [R0]
227F26:  LDR             R0, [SP,#0x158+var_DC]
227F28:  CMP             R1, #3
227F2A:  LDR             R0, [R0]; stream
227F2C:  BHI             loc_227F7E
227F2E:  LDR.W           R2, =(off_660E6C - 0x227F36); "Latin 1" ...
227F32:  ADD             R2, PC; off_660E6C
227F34:  LDR.W           R2, [R2,R1,LSL#2]
227F38:  B               loc_227F82
227F3A:  LDR             R0, [SP,#0x158+var_134]
227F3C:  LDRSB.W         R1, [R0]
227F40:  LDR             R0, [SP,#0x158+var_E0]
227F42:  CMP             R1, #3
227F44:  LDR             R0, [R0]; stream
227F46:  BHI             loc_227FB4
227F48:  LDR.W           R2, =(off_660E6C - 0x227F50); "Latin 1" ...
227F4C:  ADD             R2, PC; off_660E6C
227F4E:  LDR.W           R2, [R2,R1,LSL#2]
227F52:  B               loc_227FB8
227F54:  LDR             R0, [SP,#0x158+var_F4]
227F56:  MOVW            R2, #0x159
227F5A:  LDR.W           R1, =(aCProjectsOswra_19 - 0x227F64); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227F5E:  LDR             R0, [R0]; stream
227F60:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227F62:  BLX             fprintf
227F66:  B               loc_227BF4
227F68:  LDR             R0, [SP,#0x158+var_FC]
227F6A:  CMP.W           R8, #3
227F6E:  LDR             R0, [R0]; stream
227F70:  BHI             loc_227FCC
227F72:  LDR.W           R2, =(off_660E6C - 0x227F7A); "Latin 1" ...
227F76:  ADD             R2, PC; off_660E6C
227F78:  LDR.W           R2, [R2,R1,LSL#2]
227F7C:  B               loc_227FD0
227F7E:  ADR.W           R2, aUnknown_0; "unknown!"
227F82:  LDR.W           R1, =(aNoteStoringTex - 0x227F8A); "Note: Storing text from %s encoding\n"
227F86:  ADD             R1, PC; "Note: Storing text from %s encoding\n"
227F88:  BLX             fprintf
227F8C:  CMP             R5, #0
227F8E:  BNE.W           loc_22795E
227F92:  LDR             R0, [SP,#0x158+var_70]
227F94:  LDRB            R0, [R0]
227F96:  LDRD.W          R12, LR, [SP,#0x158+var_80]
227F9A:  LSLS            R0, R0, #0x1A
227F9C:  BMI.W           loc_22822A
227FA0:  LDR             R0, [SP,#0x158+var_E8]
227FA2:  MOV.W           R2, #0x12E
227FA6:  LDR.W           R1, =(aCProjectsOswra_20 - 0x227FB0); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227FAA:  LDR             R0, [R0]; stream
227FAC:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227FAE:  BLX             fprintf
227FB2:  B               loc_228226
227FB4:  ADR.W           R2, aUnknown_0; "unknown!"
227FB8:  LDR.W           R1, =(aNoteStoringCom - 0x227FC0); "Note: Storing comment from %s encoding"...
227FBC:  ADD             R1, PC; "Note: Storing comment from %s encoding"...
227FBE:  BLX             fprintf
227FC2:  B               loc_227A3C
227FC4:  MOVS            R0, #0
227FC6:  MOVS            R1, #1
227FC8:  STR             R1, [SP,#0x158+byte_count]
227FCA:  B               loc_228004
227FCC:  ADR.W           R2, aUnknown_0; "unknown!"
227FD0:  LDR.W           R1, =(aNoteStoringExt - 0x227FD8); "Note: Storing extra from %s encoding\n"
227FD4:  ADD             R1, PC; "Note: Storing extra from %s encoding\n"
227FD6:  BLX             fprintf
227FDA:  CMP             R5, #0
227FDC:  BNE.W           loc_2277F2
227FE0:  LDR             R0, [SP,#0x158+var_70]
227FE2:  LDRB            R0, [R0]
227FE4:  LSLS            R0, R0, #0x1A
227FE6:  BMI.W           loc_228222
227FEA:  LDR             R0, [SP,#0x158+var_104]
227FEC:  MOV.W           R2, #0x1A0
227FF0:  LDR.W           R1, =(aCProjectsOswra_21 - 0x227FFA); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227FF4:  LDR             R0, [R0]; stream
227FF6:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227FF8:  BLX             fprintf
227FFC:  B               loc_228222
227FFE:  MOVS            R0, #1
228000:  STR             R0, [SP,#0x158+byte_count]
228002:  MOVS            R0, #1
228004:  ADD.W           R6, R10, R0,LSL#2
228008:  MOVW            R0, #0x9350
22800C:  LDR             R0, [R6,R0]
22800E:  CMP             R0, #2
228010:  BGT.W           loc_2281FE
228014:  CBZ             R4, loc_22804C
228016:  LDR             R0, [SP,#0x158+var_70]
228018:  MOVS            R1, #1
22801A:  MOV             R2, R5
22801C:  MOV             R3, R9
22801E:  LDR             R0, [R0]
228020:  BIC.W           R8, R1, R0,LSR#5
228024:  LDRB.W          R1, [R5,#-1]
228028:  LDR             R0, [SP,#0x158+var_D8]
22802A:  STR.W           R8, [SP,#0x158+var_158]
22802E:  BLX             j_INT123_id3_to_utf8
228032:  LDR             R0, [SP,#0x158+var_3C]
228034:  CMP.W           R8, #0
228038:  BEQ             loc_22804E
22803A:  CBNZ            R0, loc_22804E
22803C:  LDR             R0, [SP,#0x158+var_128]
22803E:  MOVS            R2, #0xD7
228040:  LDR.W           R1, =(aCProjectsOswra_18 - 0x22804A); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
228044:  LDR             R0, [R0]; stream
228046:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
228048:  BLX             fprintf
22804C:  LDR             R0, [SP,#0x158+var_3C]
22804E:  CMP             R0, #0
228050:  BEQ.W           loc_2281FE
228054:  MOVW            R0, #0x9350
228058:  ADDS            R5, R6, R0
22805A:  LDR             R0, [SP,#0x158+var_44]; char *
22805C:  BLX             atof
228060:  VMOV            D16, R0, R1
228064:  LDR             R0, [SP,#0x158+byte_count]
228066:  VCVT.F32.F64    S0, D16
22806A:  CMP             R0, #0
22806C:  BEQ.W           loc_2281E0
228070:  MOVW            R0, #0x9360
228074:  ADD             R0, R6
228076:  VSTR            S0, [R0]
22807A:  LDR             R0, [SP,#0x158+var_70]
22807C:  LDRB            R0, [R0]
22807E:  LSLS            R0, R0, #0x1A
228080:  BMI.W           loc_2281FA
228084:  LDR             R0, [SP,#0x158+var_6C]
228086:  LDR             R0, [R0]
228088:  CMP             R0, #3
22808A:  BLT.W           loc_2281FA
22808E:  VCVT.F64.F32    D16, S0
228092:  LDR             R0, [SP,#0x158+var_12C]
228094:  LDR.W           R1, =(aNoteRvaPeakF - 0x22809E); "Note: RVA peak %f\n"
228098:  LDR             R0, [R0]
22809A:  ADD             R1, PC; "Note: RVA peak %f\n"
22809C:  B               loc_22828C
22809E:  LDR             R4, [SP,#0x158+var_108]
2280A0:  LDR.W           R1, =(aNoteId3CommUsl - 0x2280AE); "Note: ID3 comm/uslt desc of length %lu."...
2280A4:  LDR.W           R2, [R8,#0x10]
2280A8:  LDR             R0, [R4]; stream
2280AA:  ADD             R1, PC; "Note: ID3 comm/uslt desc of length %lu."...
2280AC:  BLX             fprintf
2280B0:  LDR.W           R1, =(aNoteId3CommUsl_0 - 0x2280BE); "Note: ID3 comm/uslt text of length %lu."...
2280B4:  LDR.W           R2, [R8,#0x1C]
2280B8:  LDR             R0, [R4]; stream
2280BA:  ADD             R1, PC; "Note: ID3 comm/uslt text of length %lu."...
2280BC:  BLX             fprintf
2280C0:  B               loc_227B36
2280C2:  VCVT.F64.F32    D16, S0
2280C6:  LDR             R0, [SP,#0x158+var_10C]
2280C8:  LDR.W           R1, =(aNoteRvaValueFd - 0x2280D2); "Note: RVA value %fdB\n"
2280CC:  LDR             R0, [R0]; stream
2280CE:  ADD             R1, PC; "Note: RVA value %fdB\n"
2280D0:  VMOV            R2, R3, D16
2280D4:  BLX             fprintf
2280D8:  B.W             loc_2278F2
2280DC:  LDR             R0, [SP,#0x158+var_110]
2280DE:  MOVS            R2, #0xD7
2280E0:  LDR.W           R1, =(aCProjectsOswra_18 - 0x2280EA); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2280E4:  LDR             R0, [R0]; stream
2280E6:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2280E8:  BLX             fprintf
2280EC:  B               loc_227CF4
2280EE:  ALIGN 0x10
2280F0:  DCD off_677664 - 0x227224
2280F4:  DCD aCProjectsOswra_10 - 0x227226
2280F8:  DCD off_677664 - 0x227286
2280FC:  DCD aCProjectsOswra_11 - 0x227288
228100:  DCD off_677664 - 0x2272A4
228104:  DCB "Note: ID3v2.%i rev %i tag of %lu b"
22812C:  DCD off_677664 - 0x2273A4
228130:  DCD off_677664 - 0x2273AE
228134:  DCD off_677664 - 0x2273B8
228138:  DCD off_677664 - 0x2273C2
22813C:  DCD off_677664 - 0x2273CC
228140:  DCD off_677664 - 0x2273D6
228144:  DCD off_677664 - 0x2273E0
228148:  DCD off_677664 - 0x2273EA
22814C:  DCD off_677664 - 0x2273F4
228150:  DCD off_677664 - 0x2273FE
228154:  DCD off_677664 - 0x227408
228158:  DCD off_677664 - 0x227412
22815C:  DCD off_677664 - 0x22741C
228160:  DCD off_677664 - 0x227426
228164:  DCD off_677664 - 0x227430
228168:  DCD off_677664 - 0x22743A
22816C:  DCD off_677664 - 0x227444
228170:  DCD off_677664 - 0x22744E
228174:  DCD off_677664 - 0x227458
228178:  DCD off_677664 - 0x227462
22817C:  DCD off_677664 - 0x22746C
228180:  DCD off_677664 - 0x227476
228184:  DCD off_677664 - 0x227480
228188:  DCD off_677664 - 0x22748A
22818C:  DCD off_677664 - 0x227494
228190:  DCD off_677664 - 0x22749E
228194:  DCD off_677664 - 0x2274A8
228198:  DCD off_677664 - 0x2274B2
22819C:  DCD aComm - 0x2274BC
2281A0:  DCD aComm - 0x2274C6
2281A4:  DCD aComm - 0x2274D0
2281A8:  DCD off_677664 - 0x2274DA
2281AC:  DCD off_660BF0 - 0x22751A
2281B0:  DCB "Ignoring untranslated ID3v2.2 fram"
2281DC:  DCD off_660C84 - 0x22756C
2281E0:  MOVW            R0, #0x9358
2281E4:  ADD             R0, R6
2281E6:  VSTR            S0, [R0]
2281EA:  LDR             R0, [SP,#0x158+var_70]
2281EC:  LDRB            R0, [R0]
2281EE:  LSLS            R0, R0, #0x1A
2281F0:  BMI             loc_2281FA
2281F2:  LDR             R0, [SP,#0x158+var_6C]
2281F4:  LDR             R0, [R0]
2281F6:  CMP             R0, #3
2281F8:  BGE             loc_228280
2281FA:  MOVS            R0, #2
2281FC:  STR             R0, [R5]
2281FE:  LDR             R0, [SP,#0x158+var_44]; p
228200:  CMP             R0, #0
228202:  IT NE
228204:  BLXNE           free
228208:  LDR             R0, [SP,#0x158+var_50]; p
22820A:  MOVS            R1, #0
22820C:  STRD.W          R1, R1, [SP,#0x158+var_44]
228210:  CMP             R0, #0
228212:  STR             R1, [SP,#0x158+var_3C]
228214:  IT NE
228216:  BLXNE           free
22821A:  MOVS            R0, #0
22821C:  STRD.W          R0, R0, [SP,#0x158+var_50]
228220:  STR             R0, [SP,#0x158+var_48]
228222:  LDR.W           R8, [SP,#0x158+var_13C]
228226:  LDRD.W          R12, LR, [SP,#0x158+var_80]
22822A:  LDR             R0, [SP,#0x158+var_138]
22822C:  LDR             R4, [SP,#0x158+var_94]
22822E:  CBZ             R0, loc_22823A
228230:  LDR             R0, [SP,#0x158+var_134]; p
228232:  BLX             free
228236:  LDRD.W          R12, LR, [SP,#0x158+var_80]
22823A:  ADD             R6, SP, #0x158+var_64
22823C:  CMP             R12, R4
22823E:  BCC             loc_228296
228240:  B               loc_2283F8
228242:  VCVT.F64.F32    D16, S0
228246:  LDR             R0, [SP,#0x158+var_11C]
228248:  LDR             R1, =(aNoteRvaValueFd - 0x228250); "Note: RVA value %fdB\n"
22824A:  LDR             R0, [R0]; stream
22824C:  ADD             R1, PC; "Note: RVA value %fdB\n"
22824E:  VMOV            R2, R3, D16
228252:  BLX             fprintf
228256:  B               loc_227E24
228258:  LDR             R0, [SP,#0x158+var_120]
22825A:  MOVS            R1, #0x25 ; '%'; size
22825C:  MOVS            R2, #1; n
22825E:  LDR             R3, [R0]; s
228260:  LDR             R0, =(aNoteRvaReplayg - 0x228266); "Note: RVA ReplayGain track gain/peak\n"
228262:  ADD             R0, PC; "Note: RVA ReplayGain track gain/peak\n"
228264:  BLX             fwrite
228268:  LDR             R6, [SP,#0x158+var_50]
22826A:  B               loc_227EE4
22826C:  LDR             R0, [SP,#0x158+var_124]
22826E:  MOVS            R1, #0x25 ; '%'; size
228270:  MOVS            R2, #1; n
228272:  LDR             R3, [R0]; s
228274:  LDR             R0, =(aNoteRvaReplayg_0 - 0x22827A); "Note: RVA ReplayGain album gain/peak\n"
228276:  ADD             R0, PC; "Note: RVA ReplayGain album gain/peak\n"
228278:  BLX             fwrite
22827C:  LDR             R6, [SP,#0x158+var_50]
22827E:  B               loc_227D66
228280:  VCVT.F64.F32    D16, S0
228284:  LDR             R0, [SP,#0x158+var_130]
228286:  LDR             R1, =(aNoteRvaGainFdb - 0x22828E); "Note: RVA gain %fdB\n"
228288:  LDR             R0, [R0]; stream
22828A:  ADD             R1, PC; "Note: RVA gain %fdB\n"
22828C:  VMOV            R2, R3, D16
228290:  BLX             fprintf
228294:  B               loc_2281FA
228296:  LDRB.W          R9, [LR]
22829A:  MOVS            R5, #4
22829C:  ADD.W           R1, R8, R12; char *
2282A0:  MOVS            R0, #0
2282A2:  CMP.W           R9, #2
2282A6:  IT EQ
2282A8:  MOVEQ           R5, #3
2282AA:  LDRB            R2, [R1,R0]
2282AC:  SUB.W           R3, R2, #0x30 ; '0'
2282B0:  UXTB            R3, R3
2282B2:  CMP             R3, #0xA
2282B4:  BCC             loc_2282C0
2282B6:  SUBS            R2, #0x41 ; 'A'
2282B8:  UXTB            R2, R2
2282BA:  CMP             R2, #0x1A
2282BC:  BCS.W           loc_2283F8
2282C0:  ADDS            R0, #1
2282C2:  CMP             R0, R5
2282C4:  BLT             loc_2282AA
2282C6:  MOV             R0, R6; char *
2282C8:  MOV             R2, R5; size_t
2282CA:  STR.W           LR, [SP,#0x158+var_7C]
2282CE:  MOV             R6, R12
2282D0:  BLX             strncpy
2282D4:  ADD             R6, R5
2282D6:  LDR.W           LR, [SP,#0x158+var_7C]
2282DA:  ADD.W           R1, R8, R6
2282DE:  LDRB.W          R0, [R8,R6]
2282E2:  LDRB.W          R2, [LR]
2282E6:  CMP             R2, #2
2282E8:  BNE             loc_2282F6
2282EA:  LDRB            R2, [R1,#1]
2282EC:  LDRB            R1, [R1,#2]
2282EE:  LSLS            R2, R2, #8
2282F0:  ORR.W           R0, R2, R0,LSL#16
2282F4:  B               loc_228334
2282F6:  CMP.W           R11, #3
2282FA:  BNE             loc_22830E
2282FC:  LDRB            R2, [R1,#1]
2282FE:  LDRB            R3, [R1,#2]
228300:  LDRB            R1, [R1,#3]
228302:  LSLS            R2, R2, #0x10
228304:  ORR.W           R0, R2, R0,LSL#24
228308:  ORR.W           R0, R0, R3,LSL#8
22830C:  B               loc_228334
22830E:  LDRB            R3, [R1,#1]
228310:  MOV             LR, R4
228312:  LDRB            R2, [R1,#2]
228314:  ORR.W           R4, R3, R0
228318:  LDRB            R1, [R1,#3]
22831A:  ORRS            R4, R2
22831C:  ORRS            R4, R1
22831E:  SXTB            R4, R4
228320:  CMP             R4, #0
228322:  BLT             loc_2283F0
228324:  LSLS            R3, R3, #0xE
228326:  ORR.W           R0, R3, R0,LSL#21
22832A:  ORR.W           R0, R0, R2,LSL#7
22832E:  MOV             R4, LR
228330:  LDR.W           LR, [SP,#0x158+var_7C]
228334:  ORR.W           R3, R0, R1
228338:  LDR             R0, [SP,#0x158+var_70]
22833A:  LDR             R1, [SP,#0x158+var_6C]
22833C:  LDRB            R0, [R0]
22833E:  STR             R3, [SP,#0x158+byte_count]
228340:  LSLS            R0, R0, #0x1A
228342:  BMI             loc_22834C
228344:  LDR             R0, [R1]
228346:  CMP             R0, #3
228348:  BGE.W           loc_2276E8
22834C:  ADD             R6, R5
22834E:  LDR             R0, [SP,#0x158+var_78]
228350:  ADD.W           R12, R6, R3
228354:  CMP             R12, R0
228356:  BLS.W           loc_2274E0
22835A:  LDR             R0, [SP,#0x158+var_70]
22835C:  LDRB            R0, [R0]
22835E:  LSLS            R0, R0, #0x1A
228360:  BMI             loc_2283F8
228362:  LDR             R0, =(off_677664 - 0x22836E)
228364:  MOV.W           R2, #0x2A0
228368:  LDR             R1, =(aCProjectsOswra_22 - 0x228370); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22836A:  ADD             R0, PC; off_677664
22836C:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22836E:  LDR             R0, [R0]
228370:  LDR             R0, [R0]; stream
228372:  BLX             fprintf
228376:  B               loc_2283F8
228378:  LDR             R0, =(off_677664 - 0x228386)
22837A:  MOVW            R2, #0x257
22837E:  LDR             R1, =(aCProjectsOswra_23 - 0x22838A); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
228380:  MOV             R3, R11
228382:  ADD             R0, PC; off_677664
228384:  STR             R4, [SP,#0x158+var_158]
228386:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
228388:  LDR             R0, [R0]
22838A:  LDR             R0, [R0]; stream
22838C:  BLX             fprintf
228390:  B.W             loc_2272CE
228394:  LDR             R0, =(off_677664 - 0x22839E)
228396:  MOVS            R1, #0x2B ; '+'; size
228398:  MOVS            R2, #1; n
22839A:  ADD             R0, PC; off_677664
22839C:  LDR             R0, [R0]
22839E:  LDR             R3, [R0]; s
2283A0:  LDR             R0, =(aNoteSkippingId - 0x2283A6); "Note: Skipping ID3v2 tag per user reque"...
2283A2:  ADD             R0, PC; "Note: Skipping ID3v2 tag per user reque"...
2283A4:  BLX             fwrite
2283A8:  B.W             loc_2272CE
2283AC:  LDR             R0, [SP,#0x158+var_70]
2283AE:  LDRB            R0, [R0]
2283B0:  LSLS            R0, R0, #0x1A
2283B2:  BPL             loc_2283D4
2283B4:  MOVS            R5, #0
2283B6:  MOV             R9, R4
2283B8:  B               loc_2283FE
2283BA:  LDR             R0, =(off_677664 - 0x2283C8)
2283BC:  MOVW            R2, #0x32F
2283C0:  LDR             R1, =(aCProjectsOswra_24 - 0x2283CA); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2283C2:  MOV             R3, R4
2283C4:  ADD             R0, PC; off_677664
2283C6:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2283C8:  LDR             R0, [R0]
2283CA:  LDR             R0, [R0]; stream
2283CC:  BLX             fprintf
2283D0:  B.W             loc_227244
2283D4:  LDR             R0, =(off_677664 - 0x2283DC)
2283D6:  LDR             R1, =(aCProjectsOswra_25 - 0x2283DE); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2283D8:  ADD             R0, PC; off_677664
2283DA:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2283DC:  LDR             R0, [R0]
2283DE:  LDR             R0, [R0]; stream
2283E0:  STRD.W          R5, R6, [SP,#0x158+var_158]
2283E4:  STR             R2, [SP,#0x158+var_150]
2283E6:  MOVW            R2, #0x272
2283EA:  BLX             fprintf
2283EE:  B               loc_2283B4
2283F0:  LDR             R0, [SP,#0x158+var_70]
2283F2:  LDRB            R0, [R0]
2283F4:  LSLS            R0, R0, #0x1A
2283F6:  BPL             loc_228412
2283F8:  MOVS            R5, #1
2283FA:  LDR.W           R9, [SP,#0x158+var_78]
2283FE:  LDR             R4, [SP,#0x158+var_74]
228400:  LDR             R6, [SP,#0x158+var_68]
228402:  MOV             R0, R8; p
228404:  BLX             free
228408:  LSLS            R0, R4, #0x1B
22840A:  BMI.W           loc_2272E6
22840E:  B.W             loc_2272FA
228412:  LDR             R0, =(off_677664 - 0x228420)
228414:  ADD             R3, SP, #0x158+var_64
228416:  LDR             R1, =(aCProjectsOswra_26 - 0x228422); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
228418:  MOVW            R2, #0x299
22841C:  ADD             R0, PC; off_677664
22841E:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
228420:  LDR             R0, [R0]
228422:  LDR             R0, [R0]; stream
228424:  BLX             fprintf
228428:  B               loc_2283F8
