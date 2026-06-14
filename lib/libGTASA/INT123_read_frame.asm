; =========================================================
; Game Engine Function: INT123_read_frame
; Address            : 0x232120 - 0x233266
; =========================================================

232120:  PUSH            {R4-R7,LR}
232122:  ADD             R7, SP, #0xC
232124:  PUSH.W          {R8-R11}
232128:  SUB             SP, SP, #4
23212A:  VPUSH           {D8-D11}
23212E:  SUB             SP, SP, #0x120
232130:  MOV             R4, R0
232132:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x232142)
232136:  MOVW            R1, #0x9308
23213A:  MOVW            R3, #0x937C
23213E:  ADD             R0, PC; __stack_chk_guard_ptr
232140:  LDR             R0, [R0]; __stack_chk_guard
232142:  LDR             R0, [R0]
232144:  STR             R0, [SP,#0x160+var_44]
232146:  MOVW            R0, #0xB34C
23214A:  LDR             R5, [R4,R1]
23214C:  LDR             R2, [R4,R0]
23214E:  STR             R5, [R4,R3]
232150:  MOVW            R3, #0x4A74
232154:  ADDS            R6, R4, R3
232156:  LDR             R3, [R4,R3]
232158:  CMP             R2, #0
23215A:  BEQ             loc_2321EE
23215C:  CMP             R3, #0
23215E:  BEQ             loc_2321EA
232160:  MOVW            R0, #0xB2C8
232164:  MOVS            R1, #1
232166:  STR             R1, [R4,R0]
232168:  MOVW            R0, #0xB2CC
23216C:  MOVW            R5, #0x9330
232170:  STR             R1, [R4,R0]
232172:  SUBS            R0, R3, #1
232174:  STR             R0, [R6]
232176:  MOVW            R0, #0x92D8
23217A:  LDR             R1, [R4,R0]
23217C:  MOVS            R0, #0
23217E:  STR             R0, [R4,R5]
232180:  MOVW            R0, #0xB288
232184:  LDR             R0, [R4,R0]; void *
232186:  MOVW            R6, #0x9334
23218A:  CMP             R1, #3
23218C:  STR             R0, [R4,R6]
23218E:  BNE             loc_2321A0
232190:  MOVW            R2, #0x9380
232194:  MOVW            R1, #0x4A50
232198:  LDR             R2, [R4,R2]; size_t
23219A:  ADD             R1, R4; void *
23219C:  BLX             memcpy_1
2321A0:  MOVW            R0, #0x92E0
2321A4:  LDR             R0, [R4,R0]
2321A6:  CMP             R0, #0
2321A8:  BEQ.W           loc_232414
2321AC:  ADDS            R0, R4, R6
2321AE:  ADDS            R1, R4, R5
2321B0:  LDR             R2, [R0]
2321B2:  MOV.W           R8, #1
2321B6:  LDR             R3, [R1]
2321B8:  LDRB.W          R12, [R2]
2321BC:  ADD.W           R5, R3, #0x10
2321C0:  LDRB.W          LR, [R2,#1]
2321C4:  LDRB            R6, [R2,#2]
2321C6:  ADD.W           R2, R2, R5,ASR#3
2321CA:  STR             R2, [R0]
2321CC:  AND.W           R0, R5, #7
2321D0:  STR             R0, [R1]
2321D2:  ORR.W           R0, LR, R12,LSL#8
2321D6:  MOVW            R1, #0xB2DC
2321DA:  ORR.W           R0, R6, R0,LSL#8
2321DE:  LSLS            R0, R3
2321E0:  UBFX.W          R0, R0, #8, #0x10
2321E4:  STR             R0, [R4,R1]
2321E6:  B.W             loc_232FAE
2321EA:  SUBS            R2, #1
2321EC:  STR             R2, [R6]
2321EE:  ADD             R0, R4
2321F0:  STRD.W          R5, R3, [SP,#0x160+var_7C]
2321F4:  STR             R0, [SP,#0x160+var_E8]
2321F6:  ADDS            R0, R4, R1
2321F8:  STR             R0, [SP,#0x160+var_70]
2321FA:  MOVW            R0, #0x958A
2321FE:  ADD             R0, R4
232200:  STR             R0, [SP,#0x160+var_D8]
232202:  MOVW            R0, #0x9368
232206:  STR             R6, [SP,#0x160+var_74]
232208:  ADD             R0, R4
23220A:  STR             R0, [SP,#0x160+var_F4]
23220C:  MOVW            R0, #0xB2E4
232210:  VMOV.F64        D8, #1.0
232214:  ADD             R0, R4
232216:  STR             R0, [SP,#0x160+var_C8]
232218:  MOVW            R0, #0x9324
23221C:  MOV.W           R11, #0
232220:  ADD             R0, R4
232222:  STR             R0, [SP,#0x160+var_E4]
232224:  MOVW            R0, #0xB29C
232228:  VMOV.I32        D9, #0
23222C:  ADD             R0, R4
23222E:  STR             R0, [SP,#0x160+var_EC]
232230:  MOVW            R0, #0x935C
232234:  VLDR            S20, =0.0
232238:  ADD             R0, R4
23223A:  STR             R0, [SP,#0x160+var_F8]
23223C:  MOVW            R0, #0x9364
232240:  ADD             R0, R4
232242:  STR             R0, [SP,#0x160+var_FC]
232244:  MOVW            R0, #0x9354
232248:  ADD             R0, R4
23224A:  STR             R0, [SP,#0x160+var_DC]
23224C:  MOVW            R0, #0x9358
232250:  ADD             R0, R4
232252:  STR             R0, [SP,#0x160+var_100]
232254:  MOVW            R0, #0x9360
232258:  ADD             R0, R4
23225A:  STR             R0, [SP,#0x160+var_104]
23225C:  MOVW            R0, #0x9350
232260:  ADD             R0, R4
232262:  STR             R0, [SP,#0x160+var_E0]
232264:  MOVW            R0, #0x9310
232268:  ADD             R0, R4
23226A:  STR             R0, [SP,#0x160+var_A0]
23226C:  MOVW            R0, #0x92C8
232270:  ADD             R0, R4
232272:  STR             R0, [SP,#0x160+var_C0]
232274:  MOVW            R0, #0x92B4
232278:  ADD             R0, R4
23227A:  STR             R0, [SP,#0x160+var_D4]
23227C:  MOVW            R0, #0x92D8
232280:  ADD             R0, R4
232282:  STR             R0, [SP,#0x160+var_A4]
232284:  MOVW            R0, #0x931C
232288:  ADD             R0, R4
23228A:  STR             R0, [SP,#0x160+var_CC]
23228C:  MOVW            R0, #0x9314
232290:  ADD             R0, R4
232292:  STR             R0, [SP,#0x160+var_A8]
232294:  MOVW            R0, #0xB28C
232298:  ADD             R0, R4
23229A:  STR             R0, [SP,#0x160+var_C4]
23229C:  MOVW            R0, #0xB288
2322A0:  ADD             R0, R4
2322A2:  STR             R0, [SP,#0x160+var_9C]
2322A4:  MOVW            R0, #0xB290
2322A8:  ADD             R0, R4
2322AA:  STR             R0, [SP,#0x160+var_98]
2322AC:  MOVW            R0, #0xB480
2322B0:  ADD             R0, R4
2322B2:  STR             R0, [SP,#0x160+var_AC]
2322B4:  MOVW            R0, #0xB47F
2322B8:  ADD             R0, R4
2322BA:  STR             R0, [SP,#0x160+var_B0]
2322BC:  MOVW            R0, #0xB47E
2322C0:  ADD             R0, R4
2322C2:  STR             R0, [SP,#0x160+var_B4]
2322C4:  MOVW            R0, #0xB47D
2322C8:  ADD             R0, R4
2322CA:  STR             R0, [SP,#0x160+var_B8]
2322CC:  MOVW            R0, #0xB47C
2322D0:  ADD             R0, R4
2322D2:  STR             R0, [SP,#0x160+var_BC]
2322D4:  MOVW            R0, #0xB478
2322D8:  ADD             R0, R4
2322DA:  STR             R0, [SP,#0x160+var_88]
2322DC:  MOVW            R0, #0x9384
2322E0:  ADD             R0, R4
2322E2:  STR             R0, [SP,#0x160+var_64]
2322E4:  MOVW            R0, #0xB458
2322E8:  ADD             R0, R4
2322EA:  STR             R0, [SP,#0x160+var_68]
2322EC:  MOVW            R0, #0xB2F4
2322F0:  ADD             R0, R4
2322F2:  STR             R0, [SP,#0x160+var_80]
2322F4:  MOVW            R0, #0x9321
2322F8:  ADDS            R6, R4, R0
2322FA:  MOVW            R0, #0xB338
2322FE:  STR             R6, [SP,#0x160+var_5C]
232300:  ADD             R0, R4
232302:  STR             R0, [SP,#0x160+var_84]
232304:  MOVW            R0, #0xB33C
232308:  ADD             R0, R4
23230A:  STR             R0, [SP,#0x160+var_58]
23230C:  MOVW            R0, #0xB298
232310:  ADDS            R5, R4, R0
232312:  MOVW            R0, #0xB294
232316:  ADD.W           R9, R4, R0
23231A:  MOVW            R0, #0x92D4
23231E:  STR             R5, [SP,#0x160+var_6C]
232320:  ADD             R0, R4
232322:  STR             R0, [SP,#0x160+var_60]
232324:  MOVW            R0, #0xB2E0
232328:  ADD.W           R10, R4, R0
23232C:  LDR.W           R0, =(off_677664 - 0x232334)
232330:  ADD             R0, PC; off_677664
232332:  LDR             R0, [R0]
232334:  STR             R0, [SP,#0x160+var_F0]
232336:  LDR.W           R0, =(off_677664 - 0x23233E)
23233A:  ADD             R0, PC; off_677664
23233C:  LDR             R0, [R0]
23233E:  STR             R0, [SP,#0x160+var_130]
232340:  LDR.W           R0, =(off_677664 - 0x232348)
232344:  ADD             R0, PC; off_677664
232346:  LDR             R0, [R0]
232348:  STR             R0, [SP,#0x160+var_14C]
23234A:  LDR.W           R0, =(off_677664 - 0x232352)
23234E:  ADD             R0, PC; off_677664
232350:  LDR             R0, [R0]
232352:  STR             R0, [SP,#0x160+var_108]
232354:  LDR.W           R0, =(off_677664 - 0x23235C)
232358:  ADD             R0, PC; off_677664
23235A:  LDR             R0, [R0]
23235C:  STR             R0, [SP,#0x160+var_10C]
23235E:  LDR.W           R0, =(off_677664 - 0x232366)
232362:  ADD             R0, PC; off_677664
232364:  LDR             R0, [R0]
232366:  STR             R0, [SP,#0x160+var_8C]
232368:  LDR.W           R0, =(off_677664 - 0x232370)
23236C:  ADD             R0, PC; off_677664
23236E:  LDR             R0, [R0]
232370:  STR             R0, [SP,#0x160+var_90]
232372:  LDR.W           R0, =(off_677664 - 0x23237A)
232376:  ADD             R0, PC; off_677664
232378:  LDR             R0, [R0]
23237A:  STR             R0, [SP,#0x160+var_94]
23237C:  LDR.W           R0, =(off_677664 - 0x232384)
232380:  ADD             R0, PC; off_677664
232382:  LDR             R0, [R0]
232384:  STR             R0, [SP,#0x160+var_D0]
232386:  LDR.W           R0, =(off_677664 - 0x23238E)
23238A:  ADD             R0, PC; off_677664
23238C:  LDR             R0, [R0]
23238E:  STR             R0, [SP,#0x160+var_114]
232390:  LDR.W           R0, =(off_677664 - 0x232398)
232394:  ADD             R0, PC; off_677664
232396:  LDR             R0, [R0]
232398:  STR             R0, [SP,#0x160+var_118]
23239A:  LDR.W           R0, =(off_677664 - 0x2323A2)
23239E:  ADD             R0, PC; off_677664
2323A0:  LDR             R0, [R0]
2323A2:  STR             R0, [SP,#0x160+var_110]
2323A4:  LDR.W           R0, =(off_677664 - 0x2323AC)
2323A8:  ADD             R0, PC; off_677664
2323AA:  LDR             R0, [R0]
2323AC:  STR             R0, [SP,#0x160+var_11C]
2323AE:  LDR.W           R0, =(off_677664 - 0x2323B6)
2323B2:  ADD             R0, PC; off_677664
2323B4:  LDR             R0, [R0]
2323B6:  STR             R0, [SP,#0x160+var_120]
2323B8:  LDR.W           R0, =(off_677664 - 0x2323C0)
2323BC:  ADD             R0, PC; off_677664
2323BE:  LDR             R0, [R0]
2323C0:  STR             R0, [SP,#0x160+var_12C]
2323C2:  LDR.W           R0, =(off_677664 - 0x2323CA)
2323C6:  ADD             R0, PC; off_677664
2323C8:  LDR             R0, [R0]
2323CA:  STR             R0, [SP,#0x160+var_124]
2323CC:  LDR.W           R0, =(off_677664 - 0x2323D4)
2323D0:  ADD             R0, PC; off_677664
2323D2:  LDR             R0, [R0]
2323D4:  STR             R0, [SP,#0x160+var_128]
2323D6:  LDR.W           R0, =(off_677664 - 0x2323DE)
2323DA:  ADD             R0, PC; off_677664
2323DC:  LDR             R0, [R0]
2323DE:  STR             R0, [SP,#0x160+var_134]
2323E0:  LDR.W           R0, =(off_677664 - 0x2323E8)
2323E4:  ADD             R0, PC; off_677664
2323E6:  LDR             R0, [R0]
2323E8:  STR             R0, [SP,#0x160+var_144]
2323EA:  LDR.W           R0, =(off_677664 - 0x2323F2)
2323EE:  ADD             R0, PC; off_677664
2323F0:  LDR             R0, [R0]
2323F2:  STR             R0, [SP,#0x160+var_148]
2323F4:  LDR.W           R0, =(off_677664 - 0x2323FC)
2323F8:  ADD             R0, PC; off_677664
2323FA:  LDR             R0, [R0]
2323FC:  STR             R0, [SP,#0x160+var_138]
2323FE:  LDR.W           R0, =(off_677664 - 0x232406)
232402:  ADD             R0, PC; off_677664
232404:  LDR             R0, [R0]
232406:  STR             R0, [SP,#0x160+var_13C]
232408:  LDR.W           R0, =(off_677664 - 0x232410)
23240C:  ADD             R0, PC; off_677664
23240E:  LDR             R0, [R0]
232410:  STR             R0, [SP,#0x160+var_140]
232412:  B               loc_232A98
232414:  MOV.W           R8, #1
232418:  B.W             loc_232FAE
23241C:  ADDS            R0, R2, #2
23241E:  CMP             R0, R5
232420:  BEQ.W           loc_23257C
232424:  B.W             loc_233066
232428:  MOV             R0, R4
23242A:  MOV             R1, R5
23242C:  BLX             j_INT123_parse_new_id3
232430:  MOV             R8, R0
232432:  CMP.W           R8, #0
232436:  BGE             loc_2324F4
232438:  B.W             loc_232F80
23243C:  LDR             R0, [SP,#0x160+var_58]
23243E:  LDRB            R0, [R0]
232440:  LSLS            R0, R0, #0x1A
232442:  BMI             loc_232452
232444:  LDR             R0, [SP,#0x160+var_84]
232446:  LDR             R0, [R0]
232448:  CMP             R0, #2
23244A:  BLT             loc_232452
23244C:  LDRB            R0, [R6]
23244E:  CMP             R0, #0
232450:  BEQ             loc_2324E0
232452:  LDR.W           R0, [R10]
232456:  LDR             R2, [R0,#0xC]
232458:  B               loc_23245C
23245A:  LDR             R2, [R0,#0x10]
23245C:  ADD             R1, SP, #0x160+var_54
23245E:  MOV             R0, R4
232460:  BLX             R2
232462:  MOV             R8, R0
232464:  CMP.W           R8, #1
232468:  BLT.W           loc_232F80
23246C:  LDR             R1, [SP,#0x160+var_54]
23246E:  MOVW            R2, #0x7461
232472:  LDR.W           R0, [R10]
232476:  MOVT            R2, #0x6461
23247A:  CMP             R1, R2
23247C:  BNE             loc_23245A
23247E:  LDR             R2, [R0,#0xC]
232480:  ADD             R1, SP, #0x160+var_54
232482:  MOV             R0, R4
232484:  BLX             R2
232486:  MOV             R8, R0
232488:  CMP.W           R8, #1
23248C:  BLT.W           loc_232F80
232490:  LDR             R0, [SP,#0x160+var_58]
232492:  LDRB            R0, [R0]
232494:  LSLS            R0, R0, #0x1A
232496:  BMI.W           loc_232A92
23249A:  LDR             R0, [SP,#0x160+var_84]
23249C:  LDR             R0, [R0]
23249E:  CMP             R0, #2
2324A0:  BLT.W           loc_232A92
2324A4:  LDRB            R0, [R6]
2324A6:  CMP             R0, #0
2324A8:  BNE.W           loc_232A92
2324AC:  LDR             R0, [SP,#0x160+var_14C]
2324AE:  MOVS            R1, #0x1B; size
2324B0:  MOVS            R2, #1; n
2324B2:  LDR             R3, [R0]; s
2324B4:  LDR.W           R0, =(aNoteSkippedRif - 0x2324BC); "Note: Skipped RIFF header!\n"
2324B8:  ADD             R0, PC; "Note: Skipped RIFF header!\n"
2324BA:  BLX             fwrite
2324BE:  B               loc_232A92
2324C0:  MOVS            R0, #0
2324C2:  MOVS            R1, #3
2324C4:  STR.W           R0, [R9]
2324C8:  LDR.W           R0, [R10]
2324CC:  LDR             R2, [R0,#0x1C]
2324CE:  MOV             R0, R4
2324D0:  BLX             R2
2324D2:  MOV             R8, R0
2324D4:  CMP.W           R8, #0xFFFFFFFF
2324D8:  BLE.W           loc_233230
2324DC:  LDR             R5, [SP,#0x160+var_6C]
2324DE:  B               loc_232A98
2324E0:  LDR             R0, [SP,#0x160+var_130]
2324E2:  MOVS            R1, #0x20 ; ' '; size
2324E4:  MOVS            R2, #1; n
2324E6:  LDR             R3, [R0]; s
2324E8:  LDR.W           R0, =(aNoteLooksLikeA - 0x2324F0); "Note: Looks like a RIFF header.\n"
2324EC:  ADD             R0, PC; "Note: Looks like a RIFF header.\n"
2324EE:  BLX             fwrite
2324F2:  B               loc_232452
2324F4:  LDR             R0, [SP,#0x160+var_88]
2324F6:  MOV             R1, R0
2324F8:  LDR             R0, [R1]
2324FA:  ORR.W           R0, R0, #3
2324FE:  STR             R0, [R1]
232500:  LDR             R5, [SP,#0x160+var_6C]
232502:  B               loc_232A98
232504:  LDR             R1, [SP,#0x160+var_BC]
232506:  LSRS            R0, R5, #0x18
232508:  MOVS            R2, #0x7C ; '|'
23250A:  STRB            R0, [R1]
23250C:  LSRS            R0, R5, #0x10
23250E:  LDR             R1, [SP,#0x160+var_B8]
232510:  STRB            R0, [R1]
232512:  LSRS            R0, R5, #8
232514:  LDR             R1, [SP,#0x160+var_B4]
232516:  STRB            R0, [R1]
232518:  LDR             R0, [SP,#0x160+var_B0]
23251A:  STRB            R5, [R0]
23251C:  LDR.W           R0, [R10]
232520:  LDR             R1, [SP,#0x160+var_AC]
232522:  LDR             R3, [R0,#8]
232524:  MOV             R0, R4
232526:  BLX             R3
232528:  MOV             R8, R0
23252A:  CMP.W           R8, #0
23252E:  BLT.W           loc_232F80
232532:  LDR             R0, [SP,#0x160+var_88]
232534:  MOV             R1, R0
232536:  LDR             R0, [R1]
232538:  ORR.W           R0, R0, #3
23253C:  STR             R0, [R1]
23253E:  LDR             R0, [SP,#0x160+var_80]
232540:  MOV             R1, R0
232542:  LDR             R0, [R1]
232544:  ORR.W           R0, R0, #2
232548:  STR             R0, [R1]
23254A:  LDR             R0, [SP,#0x160+var_58]
23254C:  LDR             R5, [SP,#0x160+var_6C]
23254E:  LDRB            R0, [R0]
232550:  LSLS            R0, R0, #0x1A
232552:  BMI.W           loc_232A98
232556:  LDR             R0, [SP,#0x160+var_84]
232558:  LDR             R0, [R0]
23255A:  CMP             R0, #3
23255C:  BLT.W           loc_232A98
232560:  LDR             R0, [SP,#0x160+var_10C]
232562:  MOVS            R1, #0x19; size
232564:  MOVS            R2, #1; n
232566:  LDR             R3, [R0]; s
232568:  LDR.W           R0, =(aNoteSkippedId3 - 0x232570); "Note: Skipped ID3v1 tag.\n"
23256C:  ADD             R0, PC; "Note: Skipped ID3v1 tag.\n"
23256E:  BLX             fwrite
232572:  B               loc_232A98
232574:  ADDS            R0, R1, #2
232576:  CMP             R0, R5
232578:  BNE.W           loc_233066
23257C:  LDRB.W          R0, [R8,R5]
232580:  CMP             R0, #0x58 ; 'X'
232582:  BEQ             loc_2325B0
232584:  CMP             R0, #0x49 ; 'I'
232586:  BNE.W           loc_233066
23258A:  ADD.W           R0, R8, R5
23258E:  LDRB            R1, [R0,#1]
232590:  CMP             R1, #0x6E ; 'n'
232592:  ITTT EQ
232594:  ORREQ.W         R1, R5, #2
232598:  LDRBEQ.W        R1, [R8,R1]
23259C:  CMPEQ           R1, #0x66 ; 'f'
23259E:  BNE.W           loc_233066
2325A2:  LDRB            R0, [R0,#3]
2325A4:  CMP             R0, #0x6F ; 'o'
2325A6:  BEQ             loc_2325D6
2325A8:  B.W             loc_233066
2325AC:  DCFS 0.0
2325B0:  ADD.W           R0, R8, R5
2325B4:  LDRB            R1, [R0,#1]
2325B6:  CMP             R1, #0x69 ; 'i'
2325B8:  BNE.W           loc_233066
2325BC:  ORR.W           R1, R5, #2
2325C0:  LDRB.W          R1, [R8,R1]
2325C4:  CMP             R1, #0x6E ; 'n'
2325C6:  ITT EQ
2325C8:  LDRBEQ          R0, [R0,#3]
2325CA:  CMPEQ           R0, #0x67 ; 'g'
2325CC:  BNE.W           loc_233066
2325D0:  LDR             R0, [SP,#0x160+var_A0]
2325D2:  MOVS            R1, #1
2325D4:  STR             R1, [R0]
2325D6:  LDR             R0, [SP,#0x160+var_58]
2325D8:  LDRB            R0, [R0]
2325DA:  LSLS            R0, R0, #0x1A
2325DC:  BMI             loc_2325E8
2325DE:  LDR             R0, [SP,#0x160+var_84]
2325E0:  LDR             R0, [R0]
2325E2:  CMP             R0, #2
2325E4:  BGE.W           loc_23291C
2325E8:  ORR.W           R6, R5, #4
2325EC:  MOV             R2, R8
2325EE:  ADD.W           R1, R8, R6
2325F2:  ADDS            R5, R6, #4
2325F4:  LDRB.W          R8, [R1,#3]
2325F8:  TST.W           R8, #1
2325FC:  BEQ             loc_23265C
2325FE:  LDR             R0, [SP,#0x160+var_58]
232600:  LDR             R0, [R0]
232602:  TST.W           R0, #0x1000
232606:  BNE             loc_23264A
232608:  LDRB            R3, [R1,#5]
23260A:  LDRB            R2, [R2,R5]
23260C:  LDRB            R5, [R1,#6]
23260E:  LSLS            R3, R3, #0x10
232610:  LDRB            R1, [R1,#7]
232612:  ORR.W           R2, R3, R2,LSL#24
232616:  LDR             R3, [SP,#0x160+var_98]
232618:  ORR.W           R2, R2, R5,LSL#8
23261C:  ORRS            R2, R1
23261E:  MOV             R1, #0xE38E3
232626:  CMP             R2, R1
232628:  IT HI
23262A:  MOVHI           R2, #0
23262C:  LDR             R1, [SP,#0x160+var_F4]
23262E:  LSLS            R0, R0, #0x1A
232630:  STR             R2, [R1]
232632:  BMI             loc_232658
232634:  LDR             R0, [SP,#0x160+var_84]
232636:  LDR             R0, [R0]
232638:  CMP             R0, #3
23263A:  BLT             loc_232658
23263C:  LDR             R0, [SP,#0x160+var_13C]
23263E:  ADR.W           R1, aNoteXingLuFram; "Note: Xing: %lu frames\n"
232642:  LDR             R0, [R0]; stream
232644:  BLX             fprintf
232648:  B               loc_232A36
23264A:  LSLS            R0, R0, #0x1A
23264C:  BMI             loc_232658
23264E:  LDR             R0, [SP,#0x160+var_84]
232650:  LDR             R0, [R0]
232652:  CMP             R0, #3
232654:  BGE.W           loc_232A24
232658:  ADD.W           R5, R6, #8
23265C:  LDR             R6, [SP,#0x160+var_5C]
23265E:  MOVS.W          R0, R8,LSL#30
232662:  BMI             loc_232672
232664:  MOVS.W          R0, R8,LSL#29
232668:  BMI             loc_23271C
23266A:  MOVS.W          R0, R8,LSL#28
23266E:  BMI             loc_23274A
232670:  B               loc_23275E
232672:  LDR             R0, [SP,#0x160+var_58]
232674:  LDR             R1, [R0]
232676:  TST.W           R1, #0x1000
23267A:  BNE             loc_2326DE
23267C:  LDR.W           R0, [LR]
232680:  LDR             R2, [R0,R5]
232682:  LDR.W           R0, [R12]
232686:  REV             R2, R2
232688:  CMP             R0, #0
23268A:  BLE             loc_2326FE
23268C:  LSLS            R1, R1, #0x1A
23268E:  BMI             loc_232702
232690:  CMP             R0, R2
232692:  BEQ             loc_232702
232694:  VMOV            S0, R0
232698:  SUBS            R0, R0, R2
23269A:  VCVT.F64.S32    D16, S0
23269E:  VDIV.F64        D16, D8, D16
2326A2:  VMOV            S0, R0
2326A6:  VCVT.F64.S32    D17, S0
2326AA:  LDR             R0, [SP,#0x160+var_84]
2326AC:  LDR             R0, [R0]
2326AE:  CMP             R0, #3
2326B0:  VMUL.F64        D16, D16, D17
2326B4:  VABS.F64        D11, D16
2326B8:  BGE.W           loc_232A52
2326BC:  VCMPE.F64       D11, D8
2326C0:  VMRS            APSR_nzcv, FPSCR
2326C4:  BLE             loc_232702
2326C6:  LDR             R0, [SP,#0x160+var_148]
2326C8:  LDR.W           R1, =(aWarningXingStr - 0x2326D4); "Warning: Xing stream size off by more t"...
2326CC:  STR             R2, [SP,#0x160+var_150]
2326CE:  LDR             R0, [R0]; stream
2326D0:  ADD             R1, PC; "Warning: Xing stream size off by more t"...
2326D2:  BLX             fprintf
2326D6:  LDR             R2, [SP,#0x160+var_150]
2326D8:  LDRD.W          LR, R3, [SP,#0x160+var_9C]
2326DC:  B               loc_232702
2326DE:  LSLS            R0, R1, #0x1A
2326E0:  BMI             loc_232714
2326E2:  LDR             R0, [SP,#0x160+var_84]
2326E4:  LDR             R0, [R0]
2326E6:  CMP             R0, #3
2326E8:  BLT             loc_232714
2326EA:  LDR             R0, [SP,#0x160+var_138]
2326EC:  MOVS            R1, #0x40 ; '@'; size
2326EE:  MOVS            R2, #1; n
2326F0:  LDR             R3, [R0]; s
2326F2:  LDR.W           R0, =(aNoteIgnoringXi - 0x2326FA); "Note: Ignoring Xing bytes because of MP"...
2326F6:  ADD             R0, PC; "Note: Ignoring Xing bytes because of MP"...
2326F8:  BLX             fwrite
2326FC:  B               loc_232A4C
2326FE:  STR.W           R2, [R12]
232702:  LDR             R0, [SP,#0x160+var_58]
232704:  LDRB            R0, [R0]
232706:  LSLS            R0, R0, #0x1A
232708:  BMI             loc_232714
23270A:  LDR             R0, [SP,#0x160+var_84]
23270C:  LDR             R0, [R0]
23270E:  CMP             R0, #3
232710:  BGE.W           loc_232A40
232714:  ADDS            R5, #4
232716:  MOVS.W          R0, R8,LSL#29
23271A:  BPL             loc_23266A
23271C:  LDR             R0, [SP,#0x160+var_E4]
23271E:  LDR.W           R6, [LR]
232722:  LDR             R0, [R0]
232724:  CBNZ            R0, loc_232734
232726:  MOVS            R0, #0x64 ; 'd'; byte_count
232728:  BLX             malloc
23272C:  LDR             R1, [SP,#0x160+var_E4]
23272E:  CMP             R0, #0
232730:  STR             R0, [R1]
232732:  BEQ             loc_23273C
232734:  ADDS            R1, R6, R5; void *
232736:  MOVS            R2, #0x64 ; 'd'; size_t
232738:  BLX             memcpy_1
23273C:  LDR             R6, [SP,#0x160+var_5C]
23273E:  ADDS            R5, #0x64 ; 'd'
232740:  LDRD.W          LR, R3, [SP,#0x160+var_9C]
232744:  MOVS.W          R0, R8,LSL#28
232748:  BPL             loc_23275E
23274A:  LDR             R0, [SP,#0x160+var_58]
23274C:  LDRB            R0, [R0]
23274E:  LSLS            R0, R0, #0x1A
232750:  BMI             loc_23275C
232752:  LDR             R0, [SP,#0x160+var_84]
232754:  LDR             R0, [R0]
232756:  CMP             R0, #3
232758:  BGE.W           loc_2329F4
23275C:  ADDS            R5, #4
23275E:  LDR.W           R0, [LR]
232762:  LDRB            R1, [R0,R5]
232764:  CMP             R1, #0
232766:  BEQ.W           loc_2328E8
23276A:  ADDS            R1, R0, R5
23276C:  VLD1.8          {D16}, [R1]
232770:  LDRB            R1, [R1,#8]
232772:  STRB.W          R1, [SP,#0x160+var_48]
232776:  MOVS            R1, #0
232778:  STRB.W          R1, [SP,#0x160+var_47]
23277C:  LDR             R1, [SP,#0x160+var_58]
23277E:  VSTR            D16, [SP,#0x160+var_50]
232782:  LDR             R1, [R1]
232784:  TST.W           R1, #0x20
232788:  BNE             loc_232794
23278A:  LDR             R2, [SP,#0x160+var_84]
23278C:  LDR             R2, [R2]
23278E:  CMP             R2, #3
232790:  BGE.W           loc_23293A
232794:  ADD             R0, R5
232796:  LDRB            R2, [R0,#9]
232798:  LSLS            R0, R1, #0x1A
23279A:  AND.W           R8, R2, #0xF
23279E:  BMI             loc_2327AA
2327A0:  LDR             R0, [SP,#0x160+var_84]
2327A2:  LDR             R0, [R0]
2327A4:  CMP             R0, #3
2327A6:  BGE.W           loc_232958
2327AA:  SUB.W           R1, R8, #1; switch 9 cases
2327AE:  CMP             R1, #8
2327B0:  BHI             def_2327B4; jumptable 002327B4 default case, cases 3-7
2327B2:  MOVS            R0, #0
2327B4:  TBB.W           [PC,R1]; switch jump
2327B8:  DCB 8; jump table for switch statement
2327B9:  DCB 5
2327BA:  DCB 7
2327BB:  DCB 7
2327BC:  DCB 7
2327BD:  DCB 7
2327BE:  DCB 7
2327BF:  DCB 8
2327C0:  DCB 5
2327C1:  ALIGN 2
2327C2:  MOVS            R0, #2; jumptable 002327B4 cases 2,9
2327C4:  B               loc_2327C8; jumptable 002327B4 cases 1,8
2327C6:  MOVS            R0, #1; jumptable 002327B4 default case, cases 3-7
2327C8:  LDR             R1, [SP,#0x160+var_A0]; jumptable 002327B4 cases 1,8
2327CA:  STR             R0, [R1]
2327CC:  LDR             R0, [SP,#0x160+var_58]
2327CE:  LDRB            R0, [R0]
2327D0:  LSLS            R0, R0, #0x1A
2327D2:  BMI             loc_2327DE
2327D4:  LDR             R0, [SP,#0x160+var_84]
2327D6:  LDR             R0, [R0]
2327D8:  CMP             R0, #3
2327DA:  BGE.W           loc_23297E
2327DE:  LDR.W           R0, [LR]
2327E2:  VMOV.F32        S22, S20
2327E6:  ADD.W           R8, R5, #0xF
2327EA:  LDRB.W          R1, [R0,R8]
2327EE:  TST.W           R1, #0x1C
2327F2:  BEQ             loc_232824
2327F4:  MOV.W           R2, #0xFFFFFFFF
2327F8:  ADD.W           R2, R2, R1,LSR#5
2327FC:  UXTB            R2, R2
2327FE:  CMP             R2, #1
232800:  BHI             loc_232834
232802:  ADDS            R2, R0, R5
232804:  LSLS            R1, R1, #0x1E
232806:  ADR.W           R1, loc_233330
23280A:  LDRB            R2, [R2,#0x10]
23280C:  AND.W           R2, R2, #0x1F
232810:  VMOV            S0, R2
232814:  VCVT.F32.U32    S0, S0
232818:  IT MI
23281A:  ADDMI           R1, #4
23281C:  VLDR            S2, [R1]
232820:  VMUL.F32        S22, S2, S0
232824:  ADD.W           R8, R5, #0x11
232828:  LDRB.W          R1, [R0,R8]
23282C:  TST.W           R1, #0x1C
232830:  BNE             loc_23283E
232832:  B               loc_23286E
232834:  VMOV.F32        S22, S20
232838:  TST.W           R1, #0x1C
23283C:  BEQ             loc_23286E
23283E:  MOV.W           R2, #0xFFFFFFFF
232842:  ADD.W           R2, R2, R1,LSR#5
232846:  UXTB            R2, R2
232848:  CMP             R2, #1
23284A:  BHI             loc_232872
23284C:  ADD             R0, R8
23284E:  LDRB            R0, [R0,#1]
232850:  AND.W           R0, R0, #0x1F
232854:  VMOV            S0, R0
232858:  LSLS            R0, R1, #0x1E
23285A:  ADR.W           R0, loc_233330
23285E:  VCVT.F32.U32    S0, S0
232862:  IT MI
232864:  ADDMI           R0, #4
232866:  VLDR            S2, [R0]
23286A:  VMUL.F32        S22, S2, S0
23286E:  ADD.W           R8, R8, #2
232872:  LDR             R0, [SP,#0x160+var_58]
232874:  LDRB            R0, [R0]
232876:  LSLS            R0, R0, #0x1A
232878:  BMI             loc_232884
23287A:  LDR             R0, [SP,#0x160+var_84]
23287C:  LDR             R0, [R0]
23287E:  CMP             R0, #3
232880:  BGE.W           loc_232996
232884:  LDR             R0, [SP,#0x160+var_E0]
232886:  LDR             R0, [R0]
232888:  CMP             R0, #0
23288A:  BGT             loc_23289C
23288C:  LDR             R0, [SP,#0x160+var_104]
23288E:  MOVS            R1, #0
232890:  STR             R1, [R0]
232892:  LDR             R0, [SP,#0x160+var_100]
232894:  VSTR            S22, [R0]
232898:  LDR             R0, [SP,#0x160+var_E0]
23289A:  STR             R1, [R0]
23289C:  LDR             R0, [SP,#0x160+var_DC]
23289E:  LDR             R0, [R0]
2328A0:  CMP             R0, #1
2328A2:  BGE             loc_2328B2
2328A4:  LDR             R0, [SP,#0x160+var_FC]
2328A6:  MOVS            R1, #0
2328A8:  STR             R1, [R0]
2328AA:  LDR             R0, [SP,#0x160+var_F8]
2328AC:  STR             R1, [R0]
2328AE:  LDR             R0, [SP,#0x160+var_DC]
2328B0:  STR             R1, [R0]
2328B2:  LDR             R0, [SP,#0x160+var_A0]
2328B4:  LDR             R0, [R0]
2328B6:  CMP             R0, #2
2328B8:  BNE             loc_2328D8
2328BA:  LDR.W           R0, [LR]
2328BE:  ADD             R0, R8
2328C0:  LDRB            R2, [R0,#1]
2328C2:  LDR             R0, [SP,#0x160+var_EC]
2328C4:  STR             R2, [R0]
2328C6:  LDR             R0, [SP,#0x160+var_58]
2328C8:  LDRB            R0, [R0]
2328CA:  LSLS            R0, R0, #0x1A
2328CC:  BMI             loc_2328D8
2328CE:  LDR             R0, [SP,#0x160+var_84]
2328D0:  LDR             R0, [R0]
2328D2:  CMP             R0, #3
2328D4:  BGE.W           loc_232A10
2328D8:  LDR             R0, [SP,#0x160+var_58]
2328DA:  LDRB            R0, [R0]
2328DC:  LSLS            R0, R0, #0x1A
2328DE:  BMI             loc_2328E8
2328E0:  LDR             R0, [SP,#0x160+var_84]
2328E2:  LDR             R0, [R0]
2328E4:  CMP             R0, #3
2328E6:  BGE             loc_2329C2
2328E8:  LDR             R0, [R3]
2328EA:  MOVW            R2, #0x9588
2328EE:  RSB.W           R1, R0, R0,LSL#5
2328F2:  ADD.W           R1, R4, R1,LSL#7
2328F6:  ADD             R1, R2
2328F8:  STR.W           R1, [LR]
2328FC:  MOVS            R1, #1
2328FE:  BIC.W           R0, R1, R0
232902:  STR             R0, [R3]
232904:  LDR.W           R0, [R10]
232908:  LDR             R1, [R0,#0x2C]
23290A:  CMP             R1, #0
23290C:  ITT NE
23290E:  MOVNE           R0, R4
232910:  BLXNE           R1
232912:  MOVS            R0, #0
232914:  STR.W           R0, [R9]
232918:  LDR             R5, [SP,#0x160+var_6C]
23291A:  B               loc_232A98
23291C:  LDR             R0, [SP,#0x160+var_114]
23291E:  MOVS            R1, #0x25 ; '%'; size
232920:  MOVS            R2, #1; n
232922:  LDR             R3, [R0]; s
232924:  ADR.W           R0, aNoteXingLameIn; "Note: Xing/Lame/Info header detected\n"
232928:  BLX             fwrite
23292C:  LDRD.W          LR, R3, [SP,#0x160+var_9C]
232930:  LDR.W           R12, [SP,#0x160+var_C8]
232934:  LDR.W           R8, [LR]
232938:  B               loc_2325E8
23293A:  LDR             R0, [SP,#0x160+var_118]
23293C:  ADD             R2, SP, #0x160+var_50
23293E:  LDR.W           R1, =(aNoteInfoEncode - 0x232948); "Note: Info: Encoder: %s\n"
232942:  LDR             R0, [R0]; stream
232944:  ADD             R1, PC; "Note: Info: Encoder: %s\n"
232946:  BLX             fprintf
23294A:  LDRD.W          LR, R3, [SP,#0x160+var_9C]
23294E:  LDR             R0, [SP,#0x160+var_58]
232950:  LDR             R1, [R0]
232952:  LDR.W           R0, [LR]
232956:  B               loc_232794
232958:  LDR             R0, [SP,#0x160+var_110]
23295A:  LSRS            R2, R2, #4
23295C:  LDR.W           R1, =(aNoteInfoRevU - 0x232966); "Note: Info: rev %u\n"
232960:  LDR             R0, [R0]; stream
232962:  ADD             R1, PC; "Note: Info: rev %u\n"
232964:  BLX             fprintf
232968:  LDR             R0, [SP,#0x160+var_110]
23296A:  MOV             R2, R8
23296C:  LDR.W           R1, =(aNoteInfoVbrMod - 0x232976); "Note: Info: vbr mode %u\n"
232970:  LDR             R0, [R0]; stream
232972:  ADD             R1, PC; "Note: Info: vbr mode %u\n"
232974:  BLX             fprintf
232978:  LDRD.W          LR, R3, [SP,#0x160+var_9C]
23297C:  B               loc_2327AA
23297E:  VMOV            R2, R3, D9
232982:  LDR             R0, [SP,#0x160+var_11C]
232984:  LDR.W           R1, =(aNoteInfoPeakFI - 0x23298E); "Note: Info: peak = %f (I won't use this"...
232988:  LDR             R0, [R0]; stream
23298A:  ADD             R1, PC; "Note: Info: peak = %f (I won't use this"...
23298C:  BLX             fprintf
232990:  LDRD.W          LR, R3, [SP,#0x160+var_9C]
232994:  B               loc_2327DE
232996:  VCVT.F64.F32    D16, S22
23299A:  LDR             R5, [SP,#0x160+var_120]
23299C:  LDR.W           R1, =(aNoteInfoRadioG - 0x2329A6); "Note: Info: Radio Gain = %03.1fdB\n"
2329A0:  LDR             R0, [R5]; stream
2329A2:  ADD             R1, PC; "Note: Info: Radio Gain = %03.1fdB\n"
2329A4:  VMOV            R2, R3, D16
2329A8:  BLX             fprintf
2329AC:  VMOV            R2, R3, D9
2329B0:  LDR.W           R1, =(aNoteInfoAudiop - 0x2329BA); "Note: Info: Audiophile Gain = %03.1fdB"...
2329B4:  LDR             R0, [R5]; stream
2329B6:  ADD             R1, PC; "Note: Info: Audiophile Gain = %03.1fdB"...
2329B8:  BLX             fprintf
2329BC:  LDRD.W          LR, R3, [SP,#0x160+var_9C]
2329C0:  B               loc_232884
2329C2:  LDR.W           R1, [LR]
2329C6:  ADD.W           R0, R8, #2
2329CA:  LDRB            R2, [R1,R0]
2329CC:  ADD.W           R0, R1, R8
2329D0:  LDRB            R1, [R0,#3]
2329D2:  LDRB            R3, [R0,#4]
2329D4:  LDR             R0, [SP,#0x160+var_124]
2329D6:  LSRS            R6, R1, #4
2329D8:  BFI.W           R3, R1, #8, #4
2329DC:  LDR.W           R1, =(aNoteEncoderDel - 0x2329EA); "Note: Encoder delay = %i; padding = %i"...
2329E0:  ORR.W           R2, R6, R2,LSL#4
2329E4:  LDR             R0, [R0]; stream
2329E6:  ADD             R1, PC; "Note: Encoder delay = %i; padding = %i"...
2329E8:  LDR             R6, [SP,#0x160+var_5C]
2329EA:  BLX             fprintf
2329EE:  LDRD.W          LR, R3, [SP,#0x160+var_9C]
2329F2:  B               loc_2328E8
2329F4:  LDR.W           R0, [LR]
2329F8:  LDR             R1, [R0,R5]
2329FA:  LDR             R0, [SP,#0x160+var_128]
2329FC:  REV             R2, R1
2329FE:  LDR.W           R1, =(aNoteXingQualit - 0x232A08); "Note: Xing: quality = %lu\n"
232A02:  LDR             R0, [R0]; stream
232A04:  ADD             R1, PC; "Note: Xing: quality = %lu\n"
232A06:  BLX             fprintf
232A0A:  LDRD.W          LR, R3, [SP,#0x160+var_9C]
232A0E:  B               loc_23275C
232A10:  LDR             R0, [SP,#0x160+var_12C]
232A12:  LDR.W           R1, =(aNoteInfoAbrRat - 0x232A1C); "Note: Info: ABR rate = %u\n"
232A16:  LDR             R0, [R0]; stream
232A18:  ADD             R1, PC; "Note: Info: ABR rate = %u\n"
232A1A:  BLX             fprintf
232A1E:  LDRD.W          LR, R3, [SP,#0x160+var_9C]
232A22:  B               loc_2328D8
232A24:  LDR             R0, [SP,#0x160+var_140]
232A26:  MOVS            R1, #0x41 ; 'A'; size
232A28:  MOVS            R2, #1; n
232A2A:  LDR             R3, [R0]; s
232A2C:  LDR.W           R0, =(aNoteIgnoringXi_0 - 0x232A34); "Note: Ignoring Xing frames because of M"...
232A30:  ADD             R0, PC; "Note: Ignoring Xing frames because of M"...
232A32:  BLX             fwrite
232A36:  LDRD.W          LR, R3, [SP,#0x160+var_9C]
232A3A:  LDR.W           R12, [SP,#0x160+var_C8]
232A3E:  B               loc_232658
232A40:  LDR             R0, [SP,#0x160+var_134]
232A42:  ADR.W           R1, aNoteXingLuByte; "Note: Xing: %lu bytes\n"
232A46:  LDR             R0, [R0]; stream
232A48:  BLX             fprintf
232A4C:  LDRD.W          LR, R3, [SP,#0x160+var_9C]
232A50:  B               loc_232714
232A52:  LDR             R0, [SP,#0x160+var_144]
232A54:  LDR.W           R1, =(aNoteXingStream - 0x232A60); "Note: Xing stream size %lu differs by %"...
232A58:  STR             R2, [SP,#0x160+var_150]
232A5A:  LDR             R0, [R0]; stream
232A5C:  ADD             R1, PC; "Note: Xing stream size %lu differs by %"...
232A5E:  LDR             R2, [SP,#0x160+var_150]
232A60:  VSTR            D11, [SP,#0x160+var_160]
232A64:  BLX             fprintf
232A68:  LDR             R2, [SP,#0x160+var_150]
232A6A:  LDRD.W          LR, R3, [SP,#0x160+var_9C]
232A6E:  B               loc_2326BC
232A70:  MOV             R0, R4
232A72:  MOV             R1, R2
232A74:  BLX             j_INT123_parse_new_id3
232A78:  MOV             R8, R0
232A7A:  CMP.W           R8, #0
232A7E:  BLT.W           loc_232F80
232A82:  ITTTT NE
232A84:  LDRNE           R0, [SP,#0x160+var_88]
232A86:  MOVNE           R1, R0
232A88:  LDRNE           R0, [R1]
232A8A:  ORRNE.W         R0, R0, #3
232A8E:  IT NE
232A90:  STRNE           R0, [R1]
232A92:  MOVS            R0, #0
232A94:  STR.W           R0, [R9]
232A98:  LDR.W           R0, [R10]
232A9C:  LDR             R1, [R0,#0x2C]
232A9E:  CBZ             R1, loc_232AA8
232AA0:  MOV             R0, R4
232AA2:  BLX             R1
232AA4:  LDR.W           R0, [R10]
232AA8:  LDR             R2, [R0,#0xC]
232AAA:  ADD             R1, SP, #0x160+var_54
232AAC:  MOV             R0, R4
232AAE:  BLX             R2
232AB0:  MOV             R8, R0
232AB2:  CMP.W           R8, #1
232AB6:  BGE             loc_232AF0
232AB8:  B               loc_232F80
232ABA:  MOVS            R6, #1
232ABC:  B               loc_232AC0
232ABE:  MOVS            R6, #0
232AC0:  LDR             R0, [SP,#0x160+var_58]
232AC2:  LDRB            R0, [R0]
232AC4:  LSLS            R0, R0, #0x1A
232AC6:  BMI             loc_232ACE
232AC8:  LDR             R0, [SP,#0x160+var_5C]
232ACA:  LDRB            R0, [R0]
232ACC:  CBZ             R0, loc_232AD2
232ACE:  CBNZ            R6, loc_232AE8
232AD0:  B               loc_232FE2
232AD2:  LDR             R0, [SP,#0x160+var_D0]
232AD4:  MOV             R2, R5
232AD6:  LDR.W           R1, =(aNoteSkippedLiB - 0x232AE0); "Note: Skipped %li bytes in input.\n"
232ADA:  LDR             R0, [R0]; stream
232ADC:  ADD             R1, PC; "Note: Skipped %li bytes in input.\n"
232ADE:  BLX             fprintf
232AE2:  CMP             R6, #0
232AE4:  BEQ.W           loc_232FE2
232AE8:  LDR             R5, [SP,#0x160+var_6C]
232AEA:  MOVS            R0, #0
232AEC:  STR             R0, [R5]
232AEE:  LDR             R6, [SP,#0x160+var_5C]
232AF0:  LDR.W           R0, [R9]
232AF4:  B               loc_232C8C
232AF6:  LDR             R0, [SP,#0x160+var_80]
232AF8:  LDRB            R0, [R0]
232AFA:  TST.W           R0, #0xC
232AFE:  BEQ.W           loc_232DAA
232B02:  LDR             R1, [SP,#0x160+var_54]
232B04:  AND.W           R0, R1, #0xC00
232B08:  CMP.W           R0, #0xC00
232B0C:  ITT NE
232B0E:  ANDNE.W         R0, R1, #0xF000
232B12:  CMPNE.W         R0, #0xF000
232B16:  BEQ.W           loc_232DAA
232B1A:  MOVS            R0, #0xFFE00000
232B20:  CMP             R1, R0
232B22:  BCC.W           loc_232DAA
232B26:  ANDS.W          R0, R1, #0x60000
232B2A:  BEQ.W           loc_232DAA
232B2E:  MOV             R0, R4
232B30:  BL              sub_233E10
232B34:  MOV             R8, R0
232B36:  CMP.W           R8, #0
232B3A:  BEQ.W           loc_232DAA
232B3E:  MOVS            R0, #0
232B40:  STR             R0, [SP,#0x160+var_50]
232B42:  LDR.W           R0, [R10]
232B46:  LDR             R1, [R0,#0x24]
232B48:  MOV             R0, R4
232B4A:  BLX             R1
232B4C:  MOV             R5, R0
232B4E:  CMP.W           R8, #0
232B52:  BLT.W           loc_232F80
232B56:  LDR             R1, [SP,#0x160+var_70]
232B58:  LDR.W           R0, [R10]
232B5C:  LDR             R1, [R1]
232B5E:  LDR             R2, [R0,#0x14]
232B60:  MOV             R0, R4
232B62:  BLX             R2
232B64:  MOV             R8, R0
232B66:  CMP.W           R8, #0xFFFFFFFF
232B6A:  BLE.W           loc_2331DA
232B6E:  LDR.W           R0, [R10]
232B72:  ADD             R1, SP, #0x160+var_50
232B74:  MOV             R6, R5
232B76:  LDR             R2, [R0,#0xC]
232B78:  MOV             R0, R4
232B7A:  BLX             R2
232B7C:  MOV             R5, R0
232B7E:  ADDS.W          R0, R5, #0xA
232B82:  BEQ.W           loc_2331F8
232B86:  LDR.W           R0, [R10]
232B8A:  LDR             R1, [R0,#0x24]
232B8C:  LDR.W           R8, [R0,#0x1C]
232B90:  MOV             R0, R4
232B92:  BLX             R1
232B94:  SUBS            R1, R0, R6
232B96:  MOV             R0, R4
232B98:  BLX             R8
232B9A:  MOV             R8, R0
232B9C:  CMP.W           R8, #0xFFFFFFFF
232BA0:  BLE.W           loc_2331FE
232BA4:  LDR             R6, [SP,#0x160+var_5C]
232BA6:  CMP             R5, #0
232BA8:  BEQ             loc_232C58
232BAA:  LDR             R0, [SP,#0x160+var_50]
232BAC:  AND.W           R1, R0, #0xC00
232BB0:  CMP.W           R1, #0xC00
232BB4:  ITT NE
232BB6:  ANDNE.W         R1, R0, #0xF000
232BBA:  CMPNE.W         R1, #0xF000
232BBE:  BEQ.W           loc_2324C0
232BC2:  MOVS            R1, #0xFFE00000
232BC8:  CMP             R0, R1
232BCA:  BCC.W           loc_2324C0
232BCE:  ANDS.W          R1, R0, #0x60000
232BD2:  BEQ.W           loc_2324C0
232BD6:  LDR             R1, [SP,#0x160+var_54]
232BD8:  EORS            R0, R1
232BDA:  MOV             R1, #0xFFFE0C00
232BE2:  TST             R0, R1
232BE4:  BEQ.W           loc_232DAA
232BE8:  B               loc_2324C0
232BEA:  LDR             R0, [SP,#0x160+var_60]
232BEC:  MOVS            R1, #1
232BEE:  B               loc_232CA0
232BF0:  LDR.W           R0, [R10]
232BF4:  LDR             R1, [R0,#0x24]
232BF6:  LDR             R0, [SP,#0x160+var_8C]
232BF8:  LDR.W           R8, [R0]
232BFC:  MOV             R0, R4
232BFE:  BLX             R1
232C00:  LDR.W           R1, =(aNoteIllegalAud - 0x232C0E); "Note: Illegal Audio-MPEG-Header 0x%08lx"...
232C04:  SUBS            R3, R0, #4
232C06:  MOV             R0, R8; stream
232C08:  MOV             R2, R5
232C0A:  ADD             R1, PC; "Note: Illegal Audio-MPEG-Header 0x%08lx"...
232C0C:  BLX             fprintf
232C10:  LDR             R0, [SP,#0x160+var_58]
232C12:  LDR             R0, [R0]
232C14:  LSLS            R1, R0, #0x1A
232C16:  BPL.W           loc_232E1C
232C1A:  B               loc_232E2E
232C1C:  LDR             R0, [SP,#0x160+var_90]
232C1E:  MOVS            R1, #0x20 ; ' '; size
232C20:  MOVS            R2, #1; n
232C22:  LDR             R3, [R0]; s
232C24:  LDR.W           R0, =(aNoteCouldBeABm - 0x232C2C); "Note: Could be a BMP album art.\n"
232C28:  ADD             R0, PC; "Note: Could be a BMP album art.\n"
232C2A:  BLX             fwrite
232C2E:  LDR             R0, [SP,#0x160+var_58]
232C30:  LDR             R0, [R0]
232C32:  LSLS            R1, R0, #0x18
232C34:  BPL.W           loc_232E34
232C38:  B               loc_232FD4
232C3A:  LDR             R0, [SP,#0x160+var_94]
232C3C:  MOVS            R1, #0x1A; size
232C3E:  MOVS            R2, #1; n
232C40:  LDR             R3, [R0]; s
232C42:  LDR.W           R0, =(aNoteTryingToRe - 0x232C4A); "Note: Trying to resync...\n"
232C46:  ADD             R0, PC; "Note: Trying to resync...\n"
232C48:  BLX             fwrite
232C4C:  B               loc_232E4C
232C4E:  MOV             R11, R5
232C50:  LDR             R5, [SP,#0x160+var_6C]
232C52:  BGE.W           loc_232DA2
232C56:  B               loc_232F80
232C58:  LDR             R0, [SP,#0x160+var_58]
232C5A:  LDRB            R0, [R0]
232C5C:  LSLS            R0, R0, #0x1A
232C5E:  BMI.W           loc_232DAA
232C62:  LDR             R0, [SP,#0x160+var_108]
232C64:  MOVW            R2, #0x23F
232C68:  LDR.W           R1, =(aCProjectsOswra_45 - 0x232C72); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
232C6C:  LDR             R0, [R0]; stream
232C6E:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
232C70:  BLX             fprintf
232C74:  B               loc_232DAA
232C76:  LDR             R0, [SP,#0x160+var_F0]
232C78:  ADR.W           R1, aNoteJunkAtTheB; "Note: Junk at the beginning (0x%08lx)\n"
232C7C:  LDR             R0, [R0]; stream
232C7E:  BLX             fprintf
232C82:  LDR             R2, [SP,#0x160+var_54]
232C84:  B               loc_232D2A
232C86:  MOVS            R0, #0
232C88:  LDR             R6, [SP,#0x160+var_5C]
232C8A:  LDR             R5, [SP,#0x160+var_6C]
232C8C:  LDR             R1, [SP,#0x160+var_60]
232C8E:  MOVS            R2, #2
232C90:  CMP             R0, #0
232C92:  STR             R2, [R1]
232C94:  BEQ             loc_232CD8
232C96:  LDR             R1, [SP,#0x160+var_54]
232C98:  CMP             R0, R1
232C9A:  BNE             loc_232CA4
232C9C:  LDR             R0, [SP,#0x160+var_60]
232C9E:  MOVS            R1, #0
232CA0:  STR             R1, [R0]
232CA2:  B               loc_232CD8
232CA4:  MOVW            R3, #:lower16:stru_180BFC.r_info
232CA8:  EOR.W           R2, R1, R0
232CAC:  MOVT            R3, #:upper16:stru_180BFC.r_info
232CB0:  TST             R2, R3
232CB2:  BNE             loc_232CD8
232CB4:  AND.W           R1, R1, #0xC0
232CB8:  AND.W           R0, R0, #0xC0
232CBC:  CMP             R1, #0xC0
232CBE:  MOV.W           R1, #0
232CC2:  IT EQ
232CC4:  MOVEQ           R1, #1
232CC6:  CMP             R0, #0xC0
232CC8:  MOV.W           R0, #0
232CCC:  IT EQ
232CCE:  MOVEQ           R0, #1
232CD0:  TEQ.W           R0, R1
232CD4:  BEQ.W           loc_232BEA
232CD8:  LDR             R0, [R5]
232CDA:  CMP             R0, #0
232CDC:  BNE             loc_232DAA
232CDE:  LDR             R2, [SP,#0x160+var_54]
232CE0:  AND.W           R0, R2, #0xC00
232CE4:  CMP.W           R0, #0xC00
232CE8:  ITT NE
232CEA:  ANDNE.W         R0, R2, #0xF000
232CEE:  CMPNE.W         R0, #0xF000
232CF2:  BEQ             loc_232D04
232CF4:  MOVS            R0, #0xFFE00000
232CFA:  CMP             R2, R0
232CFC:  BCC             loc_232D04
232CFE:  ANDS.W          R0, R2, #0x60000
232D02:  BNE             loc_232DA2
232D04:  MOV             R0, #0x494433
232D0C:  CMP.W           R0, R2,LSR#8
232D10:  BEQ.W           loc_232A70
232D14:  LDR             R0, [SP,#0x160+var_58]
232D16:  LDRB            R0, [R0]
232D18:  LSLS            R0, R0, #0x1A
232D1A:  BMI             loc_232D2A
232D1C:  LDR             R0, [SP,#0x160+var_84]
232D1E:  LDR             R0, [R0]
232D20:  CMP             R0, #2
232D22:  BLT             loc_232D2A
232D24:  LDRB            R0, [R6]
232D26:  CMP             R0, #0
232D28:  BEQ             loc_232C76
232D2A:  MOV             R0, #0x52494646
232D32:  CMP             R2, R0
232D34:  BEQ.W           loc_23243C
232D38:  CMP.W           R11, #0x10000
232D3C:  BGE             loc_232D98
232D3E:  LDR.W           R0, [R10]
232D42:  ADD             R1, SP, #0x160+var_54
232D44:  MOV             R5, R11
232D46:  LDR             R2, [R0,#0x10]
232D48:  MOV             R0, R4
232D4A:  BLX             R2
232D4C:  MOV             R8, R0
232D4E:  CMP.W           R8, #1
232D52:  BLT.W           loc_232F80
232D56:  LDR             R1, [SP,#0x160+var_54]
232D58:  AND.W           R0, R1, #0xC00
232D5C:  CMP.W           R0, #0xC00
232D60:  ITT NE
232D62:  ANDNE.W         R0, R1, #0xF000
232D66:  CMPNE.W         R0, #0xF000
232D6A:  BEQ             loc_232D8C
232D6C:  MOVS            R0, #0xFFE00000
232D72:  CMP             R1, R0
232D74:  BCC             loc_232D8C
232D76:  ANDS.W          R0, R1, #0x60000
232D7A:  BEQ             loc_232D8C
232D7C:  MOV             R0, R4
232D7E:  BL              sub_233E10
232D82:  MOV             R8, R0
232D84:  CMP.W           R8, #0
232D88:  BNE.W           loc_232C4E
232D8C:  ADD.W           R11, R5, #1
232D90:  MOVW            R0, #0xFFFF
232D94:  CMP             R5, R0
232D96:  BLT             loc_232D3E
232D98:  LDR             R5, [SP,#0x160+var_6C]
232D9A:  CMP.W           R11, #0x10000
232D9E:  BEQ.W           loc_233056
232DA2:  LDR             R0, [R5]
232DA4:  CMP             R0, #0
232DA6:  BEQ.W           loc_232AF6
232DAA:  LDR             R5, [SP,#0x160+var_54]
232DAC:  AND.W           R0, R5, #0xC00
232DB0:  CMP.W           R0, #0xC00
232DB4:  ITT NE
232DB6:  ANDNE.W         R0, R5, #0xF000
232DBA:  CMPNE.W         R0, #0xF000
232DBE:  BEQ             loc_232DE6
232DC0:  MOVS            R0, #0xFFE00000
232DC6:  CMP             R5, R0
232DC8:  BCC             loc_232DE6
232DCA:  ANDS.W          R0, R5, #0x60000
232DCE:  BEQ             loc_232DE6
232DD0:  MOV             R0, R4
232DD2:  MOV             R1, R5
232DD4:  BL              sub_233E10
232DD8:  MOV             R8, R0
232DDA:  CMP.W           R8, #0
232DDE:  BLT.W           loc_232F80
232DE2:  BNE             loc_232EA4
232DE4:  LDR             R5, [SP,#0x160+var_54]
232DE6:  MOVW            R1, #0x3300
232DEA:  BIC.W           R0, R5, #0xFF
232DEE:  MOVT            R1, #0x4944
232DF2:  CMP             R0, R1
232DF4:  BEQ.W           loc_232428
232DF8:  MOV             R1, #0x54414700
232E00:  CMP             R0, R1
232E02:  BEQ.W           loc_232504
232E06:  LDR             R0, [SP,#0x160+var_58]
232E08:  LDR             R0, [R0]
232E0A:  TST.W           R0, #0x20
232E0E:  ITT EQ
232E10:  LDRBEQ          R1, [R6]
232E12:  CMPEQ           R1, #0
232E14:  BEQ.W           loc_232BF0
232E18:  LSLS            R1, R0, #0x1A
232E1A:  BMI             loc_232E2E
232E1C:  LDR             R1, [SP,#0x160+var_54]
232E1E:  MOV             R2, #unk_626D70
232E26:  CMP.W           R2, R1,LSR#8
232E2A:  BEQ.W           loc_232C1C
232E2E:  LSLS            R1, R0, #0x18
232E30:  BMI.W           loc_232FD4
232E34:  LDR             R1, [SP,#0x160+var_68]
232E36:  MOVS            R2, #0
232E38:  LSLS            R0, R0, #0x1A
232E3A:  LDR             R6, [R1]
232E3C:  LDR             R1, [SP,#0x160+var_64]
232E3E:  STR             R2, [R1]
232E40:  BMI             loc_232E4C
232E42:  LDR             R0, [SP,#0x160+var_5C]
232E44:  LDRB            R0, [R0]
232E46:  CMP             R0, #0
232E48:  BEQ.W           loc_232C3A
232E4C:  MOVS            R0, #1
232E4E:  CMP             R6, #0
232E50:  MOV             R5, R0
232E52:  IT GE
232E54:  CMPGE           R5, R6
232E56:  BGE.W           loc_232ABE
232E5A:  LDR.W           R0, [R10]
232E5E:  ADD             R1, SP, #0x160+var_54
232E60:  LDR             R2, [R0,#0x10]
232E62:  MOV             R0, R4
232E64:  BLX             R2
232E66:  MOV             R8, R0
232E68:  CMP.W           R8, #0
232E6C:  BLE.W           loc_232F76
232E70:  LDR.W           R0, [R9]
232E74:  CMP             R0, #0
232E76:  BEQ.W           loc_232C86
232E7A:  LDR             R1, [SP,#0x160+var_54]
232E7C:  ADDS            R0, R5, #1
232E7E:  AND.W           R2, R1, #0xC00
232E82:  CMP.W           R2, #0xC00
232E86:  ITT NE
232E88:  ANDNE.W         R2, R1, #0xF000
232E8C:  CMPNE.W         R2, #0xF000
232E90:  BEQ             loc_232E4E
232E92:  MOVS            R2, #0xFFE00000
232E98:  CMP             R1, R2
232E9A:  BCC             loc_232E4E
232E9C:  ANDS.W          R1, R1, #0x60000
232EA0:  BEQ             loc_232E4E
232EA2:  B               loc_232ABA
232EA4:  LDR.W           R0, [R10]
232EA8:  LDR             R1, [R0,#0x24]
232EAA:  MOV             R0, R4
232EAC:  BLX             R1
232EAE:  LDR             R6, [SP,#0x160+var_98]
232EB0:  STR             R0, [SP,#0x160+var_150]
232EB2:  LDR.W           R0, [R10]
232EB6:  LDR             R1, [R6]
232EB8:  LDR             R2, [SP,#0x160+var_70]
232EBA:  LDR             R3, [R0,#0x18]
232EBC:  RSB.W           R0, R1, R1,LSL#5
232EC0:  MOVW            R1, #0x9588
232EC4:  LDR             R2, [R2]
232EC6:  STR             R0, [SP,#0x160+var_154]
232EC8:  ADD.W           R0, R4, R0,LSL#7
232ECC:  ADDS            R5, R0, R1
232ECE:  MOV             R0, R4
232ED0:  MOV             R1, R5
232ED2:  BLX             R3
232ED4:  MOV             R8, R0
232ED6:  CMP.W           R8, #0
232EDA:  BLT             loc_232F7E
232EDC:  LDR.W           LR, [SP,#0x160+var_9C]
232EE0:  MOV             R3, R6
232EE2:  LDR             R1, [SP,#0x160+var_C4]
232EE4:  MOV             R8, R5
232EE6:  LDR.W           R0, [LR]
232EEA:  STR             R0, [R1]
232EEC:  MOVS            R1, #1
232EEE:  STR.W           R5, [LR]
232EF2:  LDR             R0, [R6]
232EF4:  BIC.W           R0, R1, R0
232EF8:  STR             R0, [R6]
232EFA:  LDR             R1, [SP,#0x160+var_6C]
232EFC:  LDR             R0, [R1]
232EFE:  CMP             R0, #0
232F00:  BNE.W           loc_233072
232F04:  LDR             R0, [SP,#0x160+var_54]
232F06:  STR             R0, [R1]
232F08:  LDR             R0, [SP,#0x160+var_A8]
232F0A:  LDR             R0, [R0]
232F0C:  CMP.W           R0, #0xFFFFFFFF
232F10:  BGT.W           loc_233072
232F14:  LDR             R1, [SP,#0x160+var_CC]
232F16:  LDR             R0, [SP,#0x160+var_150]
232F18:  SUBS            R0, #4
232F1A:  STR             R0, [R1]
232F1C:  LDR             R0, [SP,#0x160+var_A4]
232F1E:  LDR.W           R12, [SP,#0x160+var_C8]
232F22:  LDR             R0, [R0]
232F24:  CMP             R0, #3
232F26:  BNE.W           loc_233066
232F2A:  LDR             R1, [SP,#0x160+var_C0]
232F2C:  MOVS            R5, #0x11
232F2E:  LDR             R2, [SP,#0x160+var_D4]
232F30:  LDR             R0, [SP,#0x160+var_70]
232F32:  LDR             R1, [R1]
232F34:  LDR             R2, [R2]
232F36:  CMP             R1, #0
232F38:  MOV.W           R1, #0x20 ; ' '
232F3C:  LDR             R0, [R0]
232F3E:  IT NE
232F40:  MOVNE           R1, #0x11
232F42:  IT NE
232F44:  MOVNE           R5, #9
232F46:  CMP             R2, #2
232F48:  IT EQ
232F4A:  MOVEQ           R5, R1
232F4C:  ADD.W           R1, R5, #0x78 ; 'x'
232F50:  CMP             R0, R1
232F52:  BLT.W           loc_233066
232F56:  LDR             R1, [SP,#0x160+var_154]
232F58:  LDR             R0, [SP,#0x160+var_D8]
232F5A:  ADD.W           R0, R0, R1,LSL#7
232F5E:  MOVS            R1, #0
232F60:  LDRB            R2, [R0,R1]
232F62:  CMP             R2, #0
232F64:  BNE.W           loc_232574
232F68:  ADDS            R2, R1, #1
232F6A:  ADDS            R1, #3
232F6C:  CMP             R1, R5
232F6E:  MOV             R1, R2
232F70:  BLT             loc_232F60
232F72:  B.W             loc_23241C
232F76:  LDR             R0, [SP,#0x160+var_58]
232F78:  LDRB            R0, [R0]
232F7A:  LSLS            R0, R0, #0x1A
232F7C:  BPL             loc_233040
232F7E:  LDR             R6, [SP,#0x160+var_5C]
232F80:  LDR.W           R0, [R10]
232F84:  LDR             R1, [R0,#0x2C]
232F86:  CMP             R1, #0
232F88:  ITT NE
232F8A:  MOVNE           R0, R4
232F8C:  BLXNE           R1
232F8E:  MOVS            R0, #0
232F90:  STRB            R0, [R6]
232F92:  MOVW            R0, #0xB468
232F96:  LDR             R1, [R4,R0]
232F98:  CMP             R1, #0
232F9A:  ITTT EQ
232F9C:  ADDEQ           R0, R4
232F9E:  MOVEQ           R1, #0x12
232FA0:  STREQ           R1, [R0]
232FA2:  LDR             R1, [SP,#0x160+var_70]
232FA4:  LDR             R0, [SP,#0x160+var_7C]
232FA6:  STR             R0, [R1]
232FA8:  LDRD.W          R1, R0, [SP,#0x160+var_78]
232FAC:  STR             R1, [R0]
232FAE:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x232FB8)
232FB2:  LDR             R1, [SP,#0x160+var_44]
232FB4:  ADD             R0, PC; __stack_chk_guard_ptr
232FB6:  LDR             R0, [R0]; __stack_chk_guard
232FB8:  LDR             R0, [R0]
232FBA:  SUBS            R0, R0, R1
232FBC:  ITTTT EQ
232FBE:  MOVEQ           R0, R8
232FC0:  ADDEQ           SP, SP, #0x120
232FC2:  VPOPEQ          {D8-D11}
232FC6:  ADDEQ           SP, SP, #4
232FC8:  ITT EQ
232FCA:  POPEQ.W         {R8-R11}
232FCE:  POPEQ           {R4-R7,PC}
232FD0:  BLX             __stack_chk_fail
232FD4:  LSLS            R0, R0, #0x1A
232FD6:  BPL.W           loc_2330DA
232FDA:  MOVW            R0, #0xB468
232FDE:  MOVS            R1, #0x1B
232FE0:  B               loc_232FF2
232FE2:  LDR             R0, [SP,#0x160+var_58]
232FE4:  LDRB            R0, [R0]
232FE6:  LSLS            R0, R0, #0x1A
232FE8:  BPL.W           loc_2331C2
232FEC:  MOVW            R0, #0xB468
232FF0:  MOVS            R1, #0x1C
232FF2:  STR             R1, [R4,R0]
232FF4:  MOV.W           R8, #0xFFFFFFFF
232FF8:  B               loc_232FAE
232FFA:  ALIGN 4
232FFC:  DCD __stack_chk_guard_ptr - 0x232142
233000:  DCD off_677664 - 0x232334
233004:  DCD off_677664 - 0x23233E
233008:  DCD off_677664 - 0x232348
23300C:  DCD off_677664 - 0x232352
233010:  DCD off_677664 - 0x23235C
233014:  DCD off_677664 - 0x232366
233018:  DCD off_677664 - 0x232370
23301C:  DCD off_677664 - 0x23237A
233020:  DCD off_677664 - 0x232384
233024:  DCD off_677664 - 0x23238E
233028:  DCD off_677664 - 0x232398
23302C:  DCD off_677664 - 0x2323A2
233030:  DCD off_677664 - 0x2323AC
233034:  DCD off_677664 - 0x2323B6
233038:  DCD off_677664 - 0x2323C0
23303C:  DCD off_677664 - 0x2323CA
233040:  LDR             R0, =(off_677664 - 0x23304A)
233042:  MOVS            R1, #0x31 ; '1'; size
233044:  MOVS            R2, #1; n
233046:  ADD             R0, PC; off_677664
233048:  LDR             R0, [R0]
23304A:  LDR             R3, [R0]; s
23304C:  LDR             R0, =(aNoteHitEndOfAv - 0x233052); "Note: Hit end of (available) data durin"...
23304E:  ADD             R0, PC; "Note: Hit end of (available) data durin"...
233050:  BLX             fwrite
233054:  B               loc_232F7E
233056:  LDR             R0, [SP,#0x160+var_58]
233058:  LDRB            R0, [R0]
23305A:  LSLS            R0, R0, #0x1A
23305C:  BPL.W           loc_233216
233060:  MOV.W           R8, #0
233064:  B               loc_232FAE
233066:  MOV             R0, R4
233068:  MOV             R5, LR
23306A:  BLX             j_INT123_do_rva
23306E:  LDR.W           R8, [R5]
233072:  MOVW            R9, #0x9334
233076:  MOVW            R2, #0x9378
23307A:  STR.W           R8, [R4,R9]
23307E:  MOVW            R11, #0x9330
233082:  MOVS            R0, #0
233084:  LDR             R1, [R4,R2]
233086:  STR.W           R0, [R4,R11]
23308A:  ADDS            R0, R1, #1
23308C:  STR             R0, [R4,R2]
23308E:  LDR             R5, [SP,#0x160+var_5C]
233090:  BEQ             loc_233154
233092:  VMOV            S0, R1
233096:  MOVW            R1, #0x9370
23309A:  ADD             R1, R4
23309C:  VCVT.F64.S32    D16, S0
2330A0:  LDR             R2, [SP,#0x160+var_A4]
2330A2:  LDR             R3, [R2]
2330A4:  SUBS            R2, R3, #2
2330A6:  CMP             R2, #2
2330A8:  VLDR            D17, [R1]
2330AC:  VMUL.F64        D16, D17, D16
2330B0:  BCS             loc_2330F0
2330B2:  LDR             R2, [SP,#0x160+var_C0]
2330B4:  MOVW            R6, #0x92E4
2330B8:  LDR.W           R12, =(unk_5F1040 - 0x2330C4)
2330BC:  LDR             R6, [R4,R6]
2330BE:  LDR             R2, [R2]
2330C0:  ADD             R12, PC; unk_5F1040
2330C2:  VLDR            D17, =144000.0
2330C6:  ADD.W           R5, R2, R2,LSL#1
2330CA:  ADD.W           R5, R12, R5,LSL#6
2330CE:  ADD.W           R3, R5, R3,LSL#6
2330D2:  ADD.W           R3, R3, R6,LSL#2
2330D6:  SUBS            R3, #0x40 ; '@'
2330D8:  B               loc_233114
2330DA:  LDR             R0, =(off_677664 - 0x2330E6)
2330DC:  MOV.W           R2, #0x2C8
2330E0:  LDR             R1, =(aCProjectsOswra_46 - 0x2330E8); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2330E2:  ADD             R0, PC; off_677664
2330E4:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2330E6:  LDR             R0, [R0]
2330E8:  LDR             R0, [R0]; stream
2330EA:  BLX             fprintf
2330EE:  B               loc_232FDA
2330F0:  CMP             R3, #1
2330F2:  BNE             loc_233140
2330F4:  LDR             R2, [SP,#0x160+var_C0]
2330F6:  MOVW            R3, #0x92E4
2330FA:  LDR.W           R12, =(unk_5F1040 - 0x233106)
2330FE:  LDR             R3, [R4,R3]
233100:  LDR             R2, [R2]
233102:  ADD             R12, PC; unk_5F1040
233104:  VLDR            D17, =48000.0
233108:  ADD.W           R5, R2, R2,LSL#1
23310C:  ADD.W           R5, R12, R5,LSL#6
233110:  ADD.W           R3, R5, R3,LSL#2
233114:  VLDR            S0, [R3]
233118:  MOVW            R6, #0x92E8
23311C:  LDR             R3, =(unk_5F11C0 - 0x233128)
23311E:  VCVT.F64.S32    D18, S0
233122:  LDR             R6, [R4,R6]
233124:  ADD             R3, PC; unk_5F11C0
233126:  LDR.W           R3, [R3,R6,LSL#2]
23312A:  LSL.W           R2, R3, R2
23312E:  VMUL.F64        D17, D17, D18
233132:  VMOV            S0, R2
233136:  VCVT.F64.S32    D18, S0
23313A:  LDR             R5, [SP,#0x160+var_5C]
23313C:  VDIV.F64        D8, D17, D18
233140:  VMOV            S0, R0
233144:  VADD.F64        D16, D16, D8
233148:  VCVT.F64.S32    D17, S0
23314C:  VDIV.F64        D16, D16, D17
233150:  VSTR            D16, [R1]
233154:  LDR             R0, [SP,#0x160+var_A8]
233156:  MOV             R1, R0
233158:  LDR             R0, [R1]
23315A:  ADDS            R0, #1
23315C:  STR             R0, [R1]
23315E:  LDR             R0, [SP,#0x160+var_E8]
233160:  LDR             R0, [R0]
233162:  CBZ             R0, loc_23317E
233164:  LDR             R0, [SP,#0x160+var_A4]
233166:  LDR             R0, [R0]
233168:  CMP             R0, #3
23316A:  BNE             loc_23317E
23316C:  MOVW            R1, #0x9380
233170:  MOVW            R0, #0x4A50
233174:  LDR             R2, [R4,R1]; size_t
233176:  ADD             R0, R4; void *
233178:  MOV             R1, R8; void *
23317A:  BLX             memcpy_1
23317E:  LDRB            R0, [R5]
233180:  CMP             R0, #0
233182:  ITT NE
233184:  SUBNE           R0, #1
233186:  STRBNE          R0, [R5]
233188:  LDR.W           R0, [R10]
23318C:  LDR             R1, [R0,#0x2C]
23318E:  CMP             R1, #0
233190:  ITT NE
233192:  MOVNE           R0, R4
233194:  BLXNE           R1
233196:  MOVW            R0, #0xB2C8
23319A:  MOV.W           R8, #1
23319E:  STR.W           R8, [R4,R0]
2331A2:  MOVW            R0, #0x92E0
2331A6:  MOVW            R1, #0xB2CC
2331AA:  LDR             R0, [R4,R0]
2331AC:  STR.W           R8, [R4,R1]
2331B0:  CMP             R0, #0
2331B2:  BEQ.W           loc_232FAE
2331B6:  ADD.W           R0, R4, R9
2331BA:  ADD.W           R1, R4, R11
2331BE:  B.W             loc_2321B0
2331C2:  LDR             R0, =(off_677664 - 0x2331D0)
2331C4:  MOVW            R2, #0x2BA
2331C8:  LDR             R1, =(aCProjectsOswra_47 - 0x2331D2); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2331CA:  MOV             R3, R5
2331CC:  ADD             R0, PC; off_677664
2331CE:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2331D0:  LDR             R0, [R0]
2331D2:  LDR             R0, [R0]; stream
2331D4:  BLX             fprintf
2331D8:  B               loc_232FEC
2331DA:  ADDS.W          R0, R8, #1
2331DE:  BNE.W           loc_232F80
2331E2:  LDR             R0, [SP,#0x160+var_58]
2331E4:  LDRB            R0, [R0]
2331E6:  LSLS            R0, R0, #0x1A
2331E8:  BMI             loc_233210
2331EA:  LDR             R0, =(off_677664 - 0x2331F6)
2331EC:  MOVW            R2, #0x231
2331F0:  LDR             R1, =(aCProjectsOswra_48 - 0x2331F8); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2331F2:  ADD             R0, PC; off_677664
2331F4:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2331F6:  B               loc_23325C
2331F8:  MOV             R8, #0xFFFFFFF6
2331FC:  B               loc_232F7E
2331FE:  LDR             R6, [SP,#0x160+var_5C]
233200:  ADDS.W          R0, R8, #1
233204:  BNE.W           loc_232F80
233208:  LDR             R0, [SP,#0x160+var_58]
23320A:  LDRB            R0, [R0]
23320C:  LSLS            R0, R0, #0x1A
23320E:  BPL             loc_233250
233210:  MOV.W           R8, #0xFFFFFFFF
233214:  B               loc_232F80
233216:  LDR             R0, =(off_677664 - 0x233222)
233218:  MOVW            R2, #0x219
23321C:  LDR             R1, =(aCProjectsOswra_49 - 0x233224); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23321E:  ADD             R0, PC; off_677664
233220:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
233222:  LDR             R0, [R0]
233224:  LDR             R0, [R0]; stream
233226:  BLX             fprintf
23322A:  MOV.W           R8, #0
23322E:  B               loc_232FAE
233230:  LDR             R0, [SP,#0x160+var_58]
233232:  LDRB            R0, [R0]
233234:  LSLS            R0, R0, #0x1A
233236:  BMI.W           loc_232F7E
23323A:  LDR             R0, =(off_677664 - 0x233246)
23323C:  MOV.W           R2, #0x24C
233240:  LDR             R1, =(aCProjectsOswra_48 - 0x233248); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
233242:  ADD             R0, PC; off_677664
233244:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
233246:  LDR             R0, [R0]
233248:  LDR             R0, [R0]; stream
23324A:  BLX             fprintf
23324E:  B               loc_232F7E
233250:  LDR             R0, =(off_677664 - 0x23325C)
233252:  MOV.W           R2, #0x238
233256:  LDR             R1, =(aCProjectsOswra_48 - 0x23325E); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
233258:  ADD             R0, PC; off_677664
23325A:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23325C:  LDR             R0, [R0]
23325E:  LDR             R0, [R0]; stream
233260:  BLX             fprintf
233264:  B               loc_233210
