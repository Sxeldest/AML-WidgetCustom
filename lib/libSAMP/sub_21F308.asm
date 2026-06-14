; =========================================================
; Game Engine Function: sub_21F308
; Address            : 0x21F308 - 0x21F394
; =========================================================

21F308:  PUSH            {R4-R7,LR}
21F30A:  ADD             R7, SP, #0xC
21F30C:  PUSH.W          {R8,R9,R11}
21F310:  MOV             R5, R0
21F312:  LDR             R0, =(_ZTIN10__cxxabiv116__shim_type_infoE_ptr - 0x21F31A)
21F314:  MOVS            R6, #0
21F316:  ADD             R0, PC; _ZTIN10__cxxabiv116__shim_type_infoE_ptr
21F318:  LDR.W           R8, [R0]; `typeinfo for'__cxxabiv1::__shim_type_info ...
21F31C:  LDR             R0, =(_ZTIN10__cxxabiv119__pointer_type_infoE_ptr - 0x21F322)
21F31E:  ADD             R0, PC; _ZTIN10__cxxabiv119__pointer_type_infoE_ptr
21F320:  LDR.W           R9, [R0]; `typeinfo for'__cxxabiv1::__pointer_type_info ...
21F324:  CBZ             R1, loc_21F38A
21F326:  MOV             R0, R1; lpsrc
21F328:  MOV             R1, R8; lpstype
21F32A:  MOV             R2, R9; lpdtype
21F32C:  MOVS            R3, #0; s2d
21F32E:  BLX             j___dynamic_cast
21F332:  CBZ             R0, loc_21F38C
21F334:  LDR             R1, [R5,#8]
21F336:  MOV             R4, R0
21F338:  LDR             R0, [R0,#8]
21F33A:  MVNS            R2, R1
21F33C:  TST             R0, R2
21F33E:  BNE             loc_21F38A
21F340:  LDR             R0, [R4,#0xC]
21F342:  LDR             R2, [R0,#4]
21F344:  LDR             R0, [R5,#0xC]; lpsrc
21F346:  LDR             R3, [R0,#4]
21F348:  CMP             R3, R2
21F34A:  BEQ             loc_21F362
21F34C:  LSLS            R1, R1, #0x1F
21F34E:  BEQ             loc_21F38A
21F350:  MOV             R1, R8; lpstype
21F352:  MOV             R2, R9; lpdtype
21F354:  MOVS            R3, #0; s2d
21F356:  BLX             j___dynamic_cast
21F35A:  CBZ             R0, loc_21F366
21F35C:  LDR             R1, [R4,#0xC]
21F35E:  MOV             R5, R0
21F360:  B               loc_21F324
21F362:  MOVS            R6, #1
21F364:  B               loc_21F38C
21F366:  LDR             R0, [R5,#0xC]; lpsrc
21F368:  CBZ             R0, loc_21F38A
21F36A:  LDR             R1, =(_ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr - 0x21F374)
21F36C:  MOVS            R3, #0; s2d
21F36E:  MOVS            R6, #0
21F370:  ADD             R1, PC; _ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr
21F372:  LDR             R2, [R1]; lpdtype
21F374:  MOV             R1, R8; lpstype
21F376:  BLX             j___dynamic_cast
21F37A:  CBZ             R0, loc_21F38C
21F37C:  LDR             R1, [R4,#0xC]; lpsrc
21F37E:  POP.W           {R8,R9,R11}
21F382:  POP.W           {R4-R7,LR}
21F386:  B.W             sub_21F3A0
21F38A:  MOVS            R6, #0
21F38C:  MOV             R0, R6
21F38E:  POP.W           {R8,R9,R11}
21F392:  POP             {R4-R7,PC}
