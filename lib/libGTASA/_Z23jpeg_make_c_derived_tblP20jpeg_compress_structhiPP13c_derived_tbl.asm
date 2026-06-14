; =========================================================
; Game Engine Function: _Z23jpeg_make_c_derived_tblP20jpeg_compress_structhiPP13c_derived_tbl
; Address            : 0x477344 - 0x47750E
; =========================================================

477344:  PUSH            {R4-R7,LR}
477346:  ADD             R7, SP, #0xC
477348:  PUSH.W          {R8-R11}
47734C:  SUB.W           SP, SP, #0x518
477350:  SUB             SP, SP, #4
477352:  MOV             R9, R0
477354:  LDR             R0, =(__stack_chk_guard_ptr - 0x47735E)
477356:  MOV             R5, R2
477358:  MOV             R6, R3
47735A:  ADD             R0, PC; __stack_chk_guard_ptr
47735C:  MOV             R4, R1
47735E:  CMP             R5, #4
477360:  LDR             R0, [R0]; __stack_chk_guard
477362:  LDR             R0, [R0]
477364:  STR.W           R0, [R7,#var_20]
477368:  BCC             loc_477382
47736A:  LDR.W           R0, [R9]
47736E:  MOVS            R1, #0x32 ; '2'
477370:  STR             R1, [R0,#0x14]
477372:  LDR.W           R0, [R9]
477376:  STR             R5, [R0,#0x18]
477378:  LDR.W           R0, [R9]
47737C:  LDR             R1, [R0]
47737E:  MOV             R0, R9
477380:  BLX             R1
477382:  ADD.W           R0, R9, R5,LSL#2
477386:  CMP             R4, #0
477388:  ADD.W           R1, R0, #0x68 ; 'h'
47738C:  IT NE
47738E:  ADDNE.W         R1, R0, #0x58 ; 'X'
477392:  LDR.W           R10, [R1]
477396:  CMP.W           R10, #0
47739A:  BNE             loc_4773B4
47739C:  LDR.W           R0, [R9]
4773A0:  MOVS            R1, #0x32 ; '2'
4773A2:  STR             R1, [R0,#0x14]
4773A4:  LDR.W           R0, [R9]
4773A8:  STR             R5, [R0,#0x18]
4773AA:  LDR.W           R0, [R9]
4773AE:  LDR             R1, [R0]
4773B0:  MOV             R0, R9
4773B2:  BLX             R1
4773B4:  LDR             R0, [R6]
4773B6:  STR             R4, [SP,#0x538+var_538]
4773B8:  CBNZ            R0, loc_4773CC
4773BA:  LDR.W           R0, [R9,#4]
4773BE:  MOVS            R1, #1
4773C0:  MOV.W           R2, #0x500
4773C4:  LDR             R3, [R0]
4773C6:  MOV             R0, R9
4773C8:  BLX             R3
4773CA:  STR             R0, [R6]
4773CC:  ADDW            R8, SP, #0x538+var_121
4773D0:  MOVS            R5, #1
4773D2:  MOV.W           R11, #0
4773D6:  STR             R0, [SP,#0x538+var_534]
4773D8:  LDRB.W          R6, [R10,R5]
4773DC:  ADD.W           R4, R11, R6
4773E0:  CMP.W           R4, #0x100
4773E4:  BLE             loc_4773F8
4773E6:  LDR.W           R0, [R9]
4773EA:  MOVS            R1, #8
4773EC:  STR             R1, [R0,#0x14]
4773EE:  LDR.W           R0, [R9]
4773F2:  LDR             R1, [R0]
4773F4:  MOV             R0, R9
4773F6:  BLX             R1
4773F8:  CBZ             R6, loc_477408
4773FA:  ADD.W           R0, R8, R11
4773FE:  UXTB            R2, R5
477400:  MOV             R1, R6
477402:  BLX             j___aeabi_memset8
477406:  MOV             R11, R4
477408:  ADDS            R5, #1
47740A:  CMP             R5, #0x11
47740C:  BNE             loc_4773D8
47740E:  MOVS            R0, #0
477410:  MOV             R5, R8
477412:  STRB.W          R0, [R5,R11]
477416:  MOV             R4, R10
477418:  STR.W           R9, [SP,#0x538+var_530]
47741C:  LDRB.W          R9, [SP,#0x538+var_121]
477420:  STR.W           R11, [SP,#0x538+var_52C]
477424:  CMP.W           R9, #0
477428:  BEQ             loc_47747A
47742A:  ADD.W           R8, SP, #0x538+var_528
47742E:  MOVS            R6, #0
477430:  MOVS            R1, #1
477432:  MOV.W           R10, #0
477436:  MOV             R11, R9
477438:  UXTB.W          R0, R9
47743C:  CMP             R11, R0
47743E:  BNE             loc_477456
477440:  ADD.W           R0, R5, R10
477444:  STR.W           R6, [R8,R10,LSL#2]
477448:  ADDS            R6, #1
47744A:  LDRB.W          R9, [R0,#1]
47744E:  ADD.W           R10, R10, #1
477452:  CMP             R11, R9
477454:  BEQ             loc_477440
477456:  LSL.W           R0, R1, R11
47745A:  CMP             R6, R0
47745C:  BLT             loc_47746E
47745E:  LDR             R0, [SP,#0x538+var_530]
477460:  MOVS            R2, #8
477462:  LDR             R1, [R0]
477464:  STR             R2, [R1,#0x14]
477466:  LDR             R1, [R0]
477468:  LDR             R1, [R1]
47746A:  BLX             R1
47746C:  MOVS            R1, #1
47746E:  ADD.W           R11, R11, #1
477472:  LSLS            R6, R6, #1
477474:  MOVS.W          R0, R9,LSL#24
477478:  BNE             loc_477438
47747A:  LDR.W           R10, [SP,#0x538+var_534]
47747E:  MOV.W           R1, #0x100
477482:  ADD.W           R0, R10, #0x400
477486:  BLX             j___aeabi_memclr8_1
47748A:  LDR             R0, [SP,#0x538+var_538]
47748C:  MOV.W           R8, #0xFF
477490:  CMP             R0, #0
477492:  IT NE
477494:  MOVNE.W         R8, #0xF
477498:  LDR             R0, [SP,#0x538+var_52C]
47749A:  CMP             R0, #1
47749C:  BLT             loc_4774EE
47749E:  ADD.W           R6, R4, #0x11
4774A2:  ADD.W           R11, SP, #0x538+var_528
4774A6:  ADDW            R5, SP, #0x538+var_121
4774AA:  MOV.W           R9, #8
4774AE:  LDRB            R4, [R6]
4774B0:  ADD.W           R0, R10, R4
4774B4:  CMP             R8, R4
4774B6:  ADD.W           R10, R0, #0x400
4774BA:  BCC             loc_4774C2
4774BC:  LDRB.W          R0, [R10]
4774C0:  CBZ             R0, loc_4774D0
4774C2:  LDR             R0, [SP,#0x538+var_530]
4774C4:  LDR             R1, [R0]
4774C6:  STR.W           R9, [R1,#0x14]
4774CA:  LDR             R1, [R0]
4774CC:  LDR             R1, [R1]
4774CE:  BLX             R1
4774D0:  LDR             R1, [SP,#0x538+var_534]
4774D2:  ADDS            R6, #1
4774D4:  LDR.W           R0, [R11],#4
4774D8:  STR.W           R0, [R1,R4,LSL#2]
4774DC:  LDRB.W          R0, [R5],#1
4774E0:  STRB.W          R0, [R10]
4774E4:  MOV             R10, R1
4774E6:  LDR             R0, [SP,#0x538+var_52C]
4774E8:  SUBS            R0, #1
4774EA:  STR             R0, [SP,#0x538+var_52C]
4774EC:  BNE             loc_4774AE
4774EE:  LDR             R0, =(__stack_chk_guard_ptr - 0x4774F8)
4774F0:  LDR.W           R1, [R7,#var_20]
4774F4:  ADD             R0, PC; __stack_chk_guard_ptr
4774F6:  LDR             R0, [R0]; __stack_chk_guard
4774F8:  LDR             R0, [R0]
4774FA:  SUBS            R0, R0, R1
4774FC:  ITTTT EQ
4774FE:  ADDEQ.W         SP, SP, #0x518
477502:  ADDEQ           SP, SP, #4
477504:  POPEQ.W         {R8-R11}
477508:  POPEQ           {R4-R7,PC}
47750A:  BLX             __stack_chk_fail
