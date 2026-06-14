; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRoute8SetRouteERK11CPointRouteffb
; Address            : 0x51E3B0 - 0x51E4AA
; =========================================================

51E3B0:  PUSH            {R4,R6,R7,LR}
51E3B2:  ADD             R7, SP, #8
51E3B4:  LDR             R4, [R7,#arg_0]
51E3B6:  VMOV            S0, R3
51E3BA:  LDR.W           LR, [R0,#0x20]
51E3BE:  VMOV            S2, R2
51E3C2:  CMP             R4, #1
51E3C4:  BNE             loc_51E3CA
51E3C6:  LDR             R2, [R1]
51E3C8:  B               loc_51E434
51E3CA:  LDR             R2, [R1]
51E3CC:  LDR.W           R12, [LR]
51E3D0:  CMP             R12, R2
51E3D2:  BNE             loc_51E434
51E3D4:  CMP.W           R12, #1
51E3D8:  BLT             loc_51E424
51E3DA:  ADD.W           R2, LR, #8
51E3DE:  ADD.W           R3, R1, #8
51E3E2:  MOVS            R4, #0
51E3E4:  VLDR            S4, [R3,#-4]
51E3E8:  VLDR            S6, [R2,#-4]
51E3EC:  VCMP.F32        S6, S4
51E3F0:  VMRS            APSR_nzcv, FPSCR
51E3F4:  BNE             loc_51E432
51E3F6:  VLDR            S4, [R3]
51E3FA:  VLDR            S6, [R2]
51E3FE:  VCMP.F32        S6, S4
51E402:  VMRS            APSR_nzcv, FPSCR
51E406:  BNE             loc_51E432
51E408:  VLDR            S4, [R3,#4]
51E40C:  VLDR            S6, [R2,#4]
51E410:  VCMP.F32        S6, S4
51E414:  VMRS            APSR_nzcv, FPSCR
51E418:  BNE             loc_51E432
51E41A:  ADDS            R4, #1
51E41C:  ADDS            R2, #0xC
51E41E:  ADDS            R3, #0xC
51E420:  CMP             R4, R12
51E422:  BLT             loc_51E3E4
51E424:  VLDR            S4, [R0,#0x18]
51E428:  VCMP.F32        S4, S2
51E42C:  VMRS            APSR_nzcv, FPSCR
51E430:  BEQ             loc_51E498
51E432:  MOV             R2, R12
51E434:  CMP             R2, #1
51E436:  STR.W           R2, [LR]
51E43A:  BLT             loc_51E45E
51E43C:  ADDS            R1, #4
51E43E:  ADD.W           R2, LR, #4
51E442:  MOVS            R3, #0
51E444:  VLDR            D16, [R1]
51E448:  ADDS            R3, #1
51E44A:  LDR             R4, [R1,#8]
51E44C:  ADDS            R1, #0xC
51E44E:  STR             R4, [R2,#8]
51E450:  VSTR            D16, [R2]
51E454:  ADDS            R2, #0xC
51E456:  LDR.W           R4, [LR]
51E45A:  CMP             R3, R4
51E45C:  BLT             loc_51E444
51E45E:  VSTR            S2, [R0,#0x18]
51E462:  MOVS            R1, #0
51E464:  VSTR            S0, [R0,#0x1C]
51E468:  LDRB.W          R2, [R0,#0x28]
51E46C:  STR             R1, [R0,#0x24]
51E46E:  TST.W           R2, #8
51E472:  STR             R1, [R0,#0x10]
51E474:  ORR.W           R1, R2, #2
51E478:  STRB.W          R1, [R0,#0x28]
51E47C:  IT EQ
51E47E:  POPEQ           {R4,R6,R7,PC}
51E480:  AND.W           R1, R1, #0x9F
51E484:  VMOV.I32        Q8, #0
51E488:  ORR.W           R1, R1, #0x40 ; '@'
51E48C:  STRB.W          R1, [R0,#0x28]
51E490:  ADDS            R0, #0x2C ; ','
51E492:  VST1.32         {D16-D17}, [R0]
51E496:  POP             {R4,R6,R7,PC}
51E498:  VLDR            S4, [R0,#0x1C]
51E49C:  MOV             R2, R12
51E49E:  VCMP.F32        S4, S0
51E4A2:  VMRS            APSR_nzcv, FPSCR
51E4A6:  BNE             loc_51E434
51E4A8:  B               locret_51E496
