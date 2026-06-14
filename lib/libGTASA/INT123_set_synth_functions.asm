; =========================================================
; Game Engine Function: INT123_set_synth_functions
; Address            : 0x2302B4 - 0x230626
; =========================================================

2302B4:  PUSH            {R4-R7,LR}
2302B6:  ADD             R7, SP, #0xC
2302B8:  PUSH.W          {R8-R11}
2302BC:  SUB             SP, SP, #4
2302BE:  VPUSH           {D8-D9}
2302C2:  MOV             R8, R0
2302C4:  MOVW            R0, #0xB2B0
2302C8:  LDR.W           R0, [R8,R0]
2302CC:  TST.W           R0, #0x40
2302D0:  BNE             loc_2302DE
2302D2:  LSLS            R1, R0, #0x1C
2302D4:  BEQ.W           loc_230462
2302D8:  MOV.W           R9, #1
2302DC:  B               loc_2302E2
2302DE:  MOV.W           R9, #0
2302E2:  MOVW            R0, #0x92D0
2302E6:  LDR.W           R0, [R8,R0]
2302EA:  CMP             R0, #4
2302EC:  BCS.W           loc_2303FE
2302F0:  ADD.W           R0, R8, R0,LSL#4
2302F4:  MOVW            R1, #0x9194
2302F8:  ADD.W           R3, R0, R9,LSL#2
2302FC:  MOVW            R6, #0xB2B8
230300:  MOVW            R5, #0x92A4
230304:  LDR             R2, =(INT123_synth_1to1_8bit_wrap_ptr - 0x230318)
230306:  LDR             R0, [R3,R1]
230308:  MOVW            R4, #0x91D4
23030C:  LDR.W           R6, [R8,R6]
230310:  STR.W           R0, [R8,R5]
230314:  ADD             R2, PC; INT123_synth_1to1_8bit_wrap_ptr
230316:  LDR             R5, [R3,R4]
230318:  MOVW            R4, #0x92A8
23031C:  STR.W           R5, [R8,R4]
230320:  MOVW            R5, #0x9254
230324:  CMP             R6, #2
230326:  ADD             R5, R3
230328:  MOVW            R4, #0x9214
23032C:  IT EQ
23032E:  ADDEQ           R5, R3, R4
230330:  LDR             R2, [R2]; INT123_synth_1to1_8bit_wrap
230332:  MOVW            R6, #0x92AC
230336:  LDR             R3, [R5]
230338:  STR.W           R3, [R8,R6]
23033C:  CMP             R0, R2
23033E:  IT EQ
230340:  LDREQ.W         R0, [R8,R1]
230344:  LDR             R1, =(INT123_synth_ntom_s32_ptr_0 - 0x23034A)
230346:  ADD             R1, PC; INT123_synth_ntom_s32_ptr_0
230348:  LDR             R1, [R1]; INT123_synth_ntom_s32
23034A:  CMP             R0, R1
23034C:  BEQ             loc_23041A
23034E:  LDR             R1, =(INT123_synth_ntom_real_ptr_0 - 0x230354)
230350:  ADD             R1, PC; INT123_synth_ntom_real_ptr_0
230352:  LDR             R1, [R1]; INT123_synth_ntom_real
230354:  CMP             R0, R1
230356:  BEQ             loc_23041A
230358:  LDR             R1, =(INT123_synth_ntom_8bit_ptr_0 - 0x23035E)
23035A:  ADD             R1, PC; INT123_synth_ntom_8bit_ptr_0
23035C:  LDR             R1, [R1]; INT123_synth_ntom_8bit
23035E:  CMP             R0, R1
230360:  BEQ             loc_23041A
230362:  LDR             R1, =(INT123_synth_ntom_ptr_0 - 0x230368)
230364:  ADD             R1, PC; INT123_synth_ntom_ptr_0
230366:  LDR             R1, [R1]; INT123_synth_ntom
230368:  CMP             R0, R1
23036A:  BEQ             loc_23041A
23036C:  LDR             R1, =(INT123_synth_4to1_s32_ptr - 0x230372)
23036E:  ADD             R1, PC; INT123_synth_4to1_s32_ptr
230370:  LDR             R1, [R1]; INT123_synth_4to1_s32
230372:  CMP             R0, R1
230374:  BEQ             loc_23041A
230376:  LDR             R1, =(INT123_synth_4to1_real_ptr - 0x23037C)
230378:  ADD             R1, PC; INT123_synth_4to1_real_ptr
23037A:  LDR             R1, [R1]; INT123_synth_4to1_real
23037C:  CMP             R0, R1
23037E:  BEQ             loc_23041A
230380:  LDR             R1, =(INT123_synth_4to1_8bit_ptr - 0x230386)
230382:  ADD             R1, PC; INT123_synth_4to1_8bit_ptr
230384:  LDR             R1, [R1]; INT123_synth_4to1_8bit
230386:  CMP             R0, R1
230388:  BEQ             loc_23041A
23038A:  LDR             R1, =(INT123_synth_4to1_ptr - 0x230390)
23038C:  ADD             R1, PC; INT123_synth_4to1_ptr
23038E:  LDR             R1, [R1]; INT123_synth_4to1
230390:  CMP             R0, R1
230392:  BEQ             loc_23041A
230394:  LDR             R1, =(INT123_synth_2to1_s32_ptr - 0x23039A)
230396:  ADD             R1, PC; INT123_synth_2to1_s32_ptr
230398:  LDR             R1, [R1]; INT123_synth_2to1_s32
23039A:  CMP             R0, R1
23039C:  BEQ             loc_23041A
23039E:  LDR             R1, =(INT123_synth_2to1_real_ptr - 0x2303A4)
2303A0:  ADD             R1, PC; INT123_synth_2to1_real_ptr
2303A2:  LDR             R1, [R1]; INT123_synth_2to1_real
2303A4:  CMP             R0, R1
2303A6:  BEQ             loc_23041A
2303A8:  LDR             R1, =(INT123_synth_2to1_8bit_ptr - 0x2303AE)
2303AA:  ADD             R1, PC; INT123_synth_2to1_8bit_ptr
2303AC:  LDR             R1, [R1]; INT123_synth_2to1_8bit
2303AE:  CMP             R0, R1
2303B0:  BEQ             loc_23041A
2303B2:  LDR             R1, =(INT123_synth_2to1_ptr - 0x2303B8)
2303B4:  ADD             R1, PC; INT123_synth_2to1_ptr
2303B6:  LDR             R1, [R1]; INT123_synth_2to1
2303B8:  CMP             R0, R1
2303BA:  BEQ             loc_23041A
2303BC:  LDR             R1, =(INT123_synth_1to1_s32_ptr - 0x2303C2)
2303BE:  ADD             R1, PC; INT123_synth_1to1_s32_ptr
2303C0:  LDR             R1, [R1]; INT123_synth_1to1_s32
2303C2:  CMP             R0, R1
2303C4:  BEQ             loc_23041A
2303C6:  LDR             R1, =(INT123_synth_1to1_real_ptr - 0x2303CC)
2303C8:  ADD             R1, PC; INT123_synth_1to1_real_ptr
2303CA:  LDR             R1, [R1]; INT123_synth_1to1_real
2303CC:  CMP             R0, R1
2303CE:  BEQ             loc_23041A
2303D0:  LDR             R1, =(INT123_synth_1to1_ptr - 0x2303D6)
2303D2:  ADD             R1, PC; INT123_synth_1to1_ptr
2303D4:  LDR             R1, [R1]; INT123_synth_1to1
2303D6:  CMP             R0, R1
2303D8:  BEQ             loc_23041A
2303DA:  LDR             R1, =(INT123_synth_1to1_8bit_ptr - 0x2303E0)
2303DC:  ADD             R1, PC; INT123_synth_1to1_8bit_ptr
2303DE:  LDR             R1, [R1]; INT123_synth_1to1_8bit
2303E0:  CMP             R0, R1
2303E2:  BEQ             loc_23041A
2303E4:  MOVW            R0, #0xB33C
2303E8:  LDRB.W          R0, [R8,R0]
2303EC:  LSLS            R0, R0, #0x1A
2303EE:  BPL.W           loc_230602
2303F2:  MOVW            R0, #0xB468
2303F6:  MOVS            R1, #0x25 ; '%'
2303F8:  STR.W           R1, [R8,R0]
2303FC:  B               loc_2305F2
2303FE:  MOVW            R0, #0xB33C
230402:  LDRB.W          R0, [R8,R0]
230406:  LSLS            R0, R0, #0x1A
230408:  BMI.W           loc_2305F2
23040C:  LDR             R0, =(off_677664 - 0x230418)
23040E:  MOVW            R2, #0x167
230412:  LDR             R1, =(aCProjectsOswra_39 - 0x23041A); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230414:  ADD             R0, PC; off_677664
230416:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230418:  B               loc_230458
23041A:  MOVW            R0, #0x9298
23041E:  MOVS            R1, #1
230420:  STR.W           R1, [R8,R0]
230424:  MOVW            R0, #0x9294
230428:  STR.W           R1, [R8,R0]
23042C:  MOV             R0, R8
23042E:  BLX             j_INT123_frame_buffers
230432:  CBZ             R0, loc_23046E
230434:  MOVW            R1, #0xB33C
230438:  MOVW            R0, #0xB468
23043C:  LDRB.W          R1, [R8,R1]
230440:  MOVS            R2, #0xB
230442:  STR.W           R2, [R8,R0]
230446:  LSLS            R0, R1, #0x1A
230448:  BMI.W           loc_2305F2
23044C:  LDR             R0, =(off_677664 - 0x230458)
23044E:  MOVW            R2, #0x17D
230452:  LDR             R1, =(aCProjectsOswra_40 - 0x23045A); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230454:  ADD             R0, PC; off_677664
230456:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230458:  LDR             R0, [R0]
23045A:  LDR             R0, [R0]; stream
23045C:  BLX             fprintf
230460:  B               loc_2305F2
230462:  TST.W           R0, #0xE00
230466:  BEQ             loc_230498
230468:  MOV.W           R9, #2
23046C:  B               loc_2302E2
23046E:  CMP.W           R9, #1
230472:  BNE             loc_2304A6
230474:  MOV             R0, R8
230476:  BLX             j_INT123_make_conv16to8_table
23047A:  CBZ             R0, loc_2304A6
23047C:  MOVW            R0, #0xB33C
230480:  LDRB.W          R0, [R8,R0]
230484:  LSLS            R0, R0, #0x1A
230486:  BMI.W           loc_2305F2
23048A:  LDR             R0, =(off_677664 - 0x230496)
23048C:  MOVW            R2, #0x187
230490:  LDR             R1, =(aCProjectsOswra_41 - 0x230498); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230492:  ADD             R0, PC; off_677664
230494:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230496:  B               loc_230458
230498:  TST.W           R0, #0x4100
23049C:  BEQ.W           loc_2305E6
2304A0:  MOV.W           R9, #3
2304A4:  B               loc_2302E2
2304A6:  VMOV.F64        D8, #-0.25
2304AA:  MOVW            R0, #0x4FB8
2304AE:  ADD.W           R4, R8, R0
2304B2:  MOV             R5, #0xFFFFFFD2
2304B6:  VMOV            S0, R5
2304BA:  VCVT.F64.S32    D16, S0
2304BE:  VMUL.F64        D16, D16, D8
2304C2:  VMOV            R0, R1, D16
2304C6:  BLX             exp2
2304CA:  ADDS            R5, #1
2304CC:  STRD.W          R0, R1, [R4],#8
2304D0:  CMP.W           R5, #0x14C
2304D4:  BNE             loc_2304B6
2304D6:  LDR             R0, =(unk_5F0C60 - 0x2304E8)
2304D8:  MOVW            R1, #0x4DBC
2304DC:  MOVW            R9, #0x8E39
2304E0:  MOVW            R2, #0x92C4
2304E4:  ADD             R0, PC; unk_5F0C60
2304E6:  ADD             R1, R8
2304E8:  ADD.W           R10, R8, R2
2304EC:  ADD.W           R3, R8, #0x4A80
2304F0:  MOV.W           R12, #0
2304F4:  MOVT            R9, #0x38E3
2304F8:  MOV.W           LR, #1
2304FC:  MOVS            R5, #0
2304FE:  LDRH.W          R6, [R0,R5,LSL#1]
230502:  ADDS            R6, #7
230504:  UMULL.W         R6, R4, R6, R9
230508:  ADD.W           R6, LR, R4,LSR#2
23050C:  STR.W           R6, [R3,R5,LSL#2]
230510:  LSRS            R4, R4, #2
230512:  LDR.W           R2, [R10]
230516:  CMP             R4, R2
230518:  IT LT
23051A:  MOVLT           R2, R6
23051C:  STR.W           R2, [R3,R5,LSL#2]
230520:  ADDS            R5, #1
230522:  CMP             R5, #0x17
230524:  BNE             loc_2304FE
230526:  MOVS            R5, #0
230528:  ADD.W           R2, R0, R5,LSL#1
23052C:  LDRH.W          R2, [R2,#0x44]
230530:  SUBS            R2, #1
230532:  SMMUL.W         R2, R2, R9
230536:  ASRS            R4, R2, #2
230538:  ADD.W           R2, R4, R2,LSR#31
23053C:  ADDS            R4, R2, #1
23053E:  STR.W           R4, [R1,R5,LSL#2]
230542:  LDR.W           R6, [R10]
230546:  CMP             R2, R6
230548:  IT LT
23054A:  MOVLT           R6, R4
23054C:  STR.W           R6, [R1,R5,LSL#2]
230550:  ADDS            R5, #1
230552:  CMP             R5, #0xE
230554:  BNE             loc_230528
230556:  ADD.W           R12, R12, #1
23055A:  ADDS            R1, #0x38 ; '8'
23055C:  ADDS            R0, #0x6E ; 'n'
23055E:  ADDS            R3, #0x5C ; '\'
230560:  CMP.W           R12, #9
230564:  BNE             loc_2304FC
230566:  VMOV.F64        D8, #3.0
23056A:  MOVS            R4, #0
23056C:  MOV.W           R6, #0x5D80
230570:  MOVS            R5, #0
230572:  ADD.W           R9, R8, R5,LSL#9
230576:  MOVW            R0, #0x5B88
23057A:  ADD.W           R10, R9, R0
23057E:  LDR             R0, =(unk_5F0B88 - 0x230588)
230580:  MOV.W           R11, #0x3F ; '?'
230584:  ADD             R0, PC; unk_5F0B88
230586:  ADD.W           R0, R0, R5,LSL#3
23058A:  VLDR            D9, [R0]
23058E:  SUB.W           R0, R11, #0x3C ; '<'
230592:  VMOV            S0, R0
230596:  VCVT.F64.S32    D16, S0
23059A:  VDIV.F64        D16, D16, D8
23059E:  VMOV            R0, R1, D16
2305A2:  BLX             exp2
2305A6:  VMOV            D16, R0, R1
2305AA:  SUBS.W          R11, R11, #1
2305AE:  VMUL.F64        D16, D9, D16
2305B2:  VSTR            D16, [R10]
2305B6:  ADD.W           R10, R10, #8
2305BA:  BNE             loc_23058E
2305BC:  ADDS            R5, #1
2305BE:  MOVW            R0, #0x5D84
2305C2:  CMP             R5, #0x1B
2305C4:  STR.W           R4, [R9,R0]
2305C8:  STR.W           R4, [R9,R6]
2305CC:  BNE             loc_230572
2305CE:  LDR             R0, =(INT123_make_decode_tables_ptr_0 - 0x2305D8)
2305D0:  MOVW            R1, #0x92B0
2305D4:  ADD             R0, PC; INT123_make_decode_tables_ptr_0
2305D6:  LDR             R0, [R0]; INT123_make_decode_tables
2305D8:  STR.W           R0, [R8,R1]
2305DC:  MOV             R0, R8
2305DE:  BLX             j_INT123_make_decode_tables
2305E2:  MOVS            R0, #0
2305E4:  B               loc_2305F6
2305E6:  MOVW            R0, #0xB33C
2305EA:  LDRB.W          R0, [R8,R0]
2305EE:  LSLS            R0, R0, #0x1A
2305F0:  BPL             loc_230618
2305F2:  MOV.W           R0, #0xFFFFFFFF
2305F6:  VPOP            {D8-D9}
2305FA:  ADD             SP, SP, #4
2305FC:  POP.W           {R8-R11}
230600:  POP             {R4-R7,PC}
230602:  LDR             R0, =(off_677664 - 0x23060E)
230604:  MOVW            R2, #0x12F
230608:  LDR             R1, =(aCProjectsOswra_42 - 0x230610); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23060A:  ADD             R0, PC; off_677664
23060C:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23060E:  LDR             R0, [R0]
230610:  LDR             R0, [R0]; stream
230612:  BLX             fprintf
230616:  B               loc_2303F2
230618:  LDR             R0, =(off_677664 - 0x230624)
23061A:  MOVW            R2, #0x153
23061E:  LDR             R1, =(aCProjectsOswra_43 - 0x230626); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230620:  ADD             R0, PC; off_677664
230622:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230624:  B               loc_230458
