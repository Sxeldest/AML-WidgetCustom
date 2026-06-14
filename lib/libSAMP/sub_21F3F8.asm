; =========================================================
; Game Engine Function: sub_21F3F8
; Address            : 0x21F3F8 - 0x21F498
; =========================================================

21F3F8:  PUSH            {R4-R7,LR}
21F3FA:  ADD             R7, SP, #0xC
21F3FC:  PUSH.W          {R11}
21F400:  MOV             R4, R0
21F402:  LDR             R0, =(_ZTSDn_ptr - 0x21F40C)
21F404:  MOV             R6, R1
21F406:  LDR             R1, [R1,#4]
21F408:  ADD             R0, PC; _ZTSDn_ptr
21F40A:  LDR             R0, [R0]; "Dn" ...
21F40C:  CMP             R1, R0
21F40E:  BEQ             loc_21F44A
21F410:  MOV             R0, R4; int
21F412:  MOV             R1, R6; lpsrc
21F414:  BL              sub_21F0B4
21F418:  CBNZ            R0, loc_21F470
21F41A:  LDR             R0, =(_ZTIN10__cxxabiv116__shim_type_infoE_ptr - 0x21F424)
21F41C:  MOVS            R3, #0; s2d
21F41E:  MOVS            R5, #0
21F420:  ADD             R0, PC; _ZTIN10__cxxabiv116__shim_type_infoE_ptr
21F422:  LDR             R1, [R0]; lpstype
21F424:  LDR             R0, =(_ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr - 0x21F42A)
21F426:  ADD             R0, PC; _ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr
21F428:  LDR             R2, [R0]; lpdtype
21F42A:  MOV             R0, R6; lpsrc
21F42C:  BLX             j___dynamic_cast
21F430:  CBZ             R0, loc_21F472
21F432:  LDR             R1, [R4,#8]
21F434:  LDR             R2, [R0,#8]
21F436:  BIC.W           R3, R2, R1
21F43A:  LSLS            R3, R3, #0x1D
21F43C:  ITT EQ
21F43E:  BICEQ           R1, R2
21F440:  TSTEQ.W         R1, #0x60
21F444:  BEQ             loc_21F47A
21F446:  MOVS            R5, #0
21F448:  B               loc_21F472
21F44A:  LDR             R0, [R4,#0xC]; lpsrc
21F44C:  MOV             R5, R2
21F44E:  CBZ             R0, loc_21F46A
21F450:  LDR             R1, =(_ZTIN10__cxxabiv116__shim_type_infoE_ptr - 0x21F45A)
21F452:  MOVS            R3, #0; s2d
21F454:  LDR             R2, =(_ZTIN10__cxxabiv120__function_type_infoE_ptr - 0x21F45C)
21F456:  ADD             R1, PC; _ZTIN10__cxxabiv116__shim_type_infoE_ptr
21F458:  ADD             R2, PC; _ZTIN10__cxxabiv120__function_type_infoE_ptr
21F45A:  LDR             R1, [R1]; lpstype
21F45C:  LDR             R2, [R2]; lpdtype
21F45E:  BLX             j___dynamic_cast
21F462:  CBZ             R0, loc_21F46A
21F464:  LDR             R0, =(unk_DA134 - 0x21F46A)
21F466:  ADD             R0, PC; unk_DA134
21F468:  B               loc_21F46E
21F46A:  LDR             R0, =(unk_DA13C - 0x21F470)
21F46C:  ADD             R0, PC; unk_DA13C
21F46E:  STR             R0, [R5]
21F470:  MOVS            R5, #1
21F472:  MOV             R0, R5
21F474:  POP.W           {R11}
21F478:  POP             {R4-R7,PC}
21F47A:  LDR             R1, [R0,#0xC]
21F47C:  LDR             R2, [R4,#0xC]
21F47E:  LDR             R1, [R1,#4]
21F480:  LDR             R2, [R2,#4]
21F482:  CMP             R2, R1
21F484:  BNE             loc_21F446
21F486:  LDR             R0, [R0,#0x10]
21F488:  LDR             R1, [R4,#0x10]
21F48A:  LDR             R0, [R0,#4]
21F48C:  LDR             R1, [R1,#4]
21F48E:  SUBS            R0, R1, R0
21F490:  CLZ.W           R0, R0
21F494:  LSRS            R5, R0, #5
21F496:  B               loc_21F472
