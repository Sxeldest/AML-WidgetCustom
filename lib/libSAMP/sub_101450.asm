; =========================================================
; Game Engine Function: sub_101450
; Address            : 0x101450 - 0x10157E
; =========================================================

101450:  PUSH            {R4-R7,LR}
101452:  ADD             R7, SP, #0xC
101454:  PUSH.W          {R8-R11}
101458:  SUB             SP, SP, #4
10145A:  VPUSH           {D8}
10145E:  SUB             SP, SP, #0x28
101460:  LDR             R0, =(off_234A24 - 0x101466)
101462:  ADD             R0, PC; off_234A24
101464:  LDR             R6, [R0]; dword_23DEEC
101466:  LDR             R0, [R6]
101468:  CMP             R0, #0
10146A:  BEQ.W           loc_101570
10146E:  MOV             R11, R3
101470:  MOV             R10, R2
101472:  MOV             R9, R1
101474:  LDR.W           R8, [R7,#arg_8]
101478:  BL              sub_168738
10147C:  LDR             R0, [R6]
10147E:  MOVS            R1, #0
101480:  STRD.W          R1, R1, [SP,#0x50+var_3C]
101484:  MOV.W           R1, #0x3F800000
101488:  MOVS            R2, #1
10148A:  MOV             R3, R8; int
10148C:  LDR             R0, [R0,#0x54]
10148E:  LDR             R0, [R0,#0x18]; int
101490:  STRD.W          R2, R1, [SP,#0x50+var_50]; int
101494:  ADD             R1, SP, #0x50+var_3C; int
101496:  MOV             R2, R10; int
101498:  BL              sub_12AB98
10149C:  LDR             R0, [R6]
10149E:  ADD             R5, SP, #0x50+var_3C
1014A0:  MOV             R1, R9; s
1014A2:  LDR             R0, [R0,#0x54]
1014A4:  LDR             R4, [R0,#0x18]
1014A6:  MOV             R0, R5; int
1014A8:  BL              sub_DC6DC
1014AC:  VMOV            S0, R11
1014B0:  VCVT.F32.S32    S16, S0
1014B4:  VMOV            R3, S16
1014B8:  ADD             R0, SP, #0x50+var_30
1014BA:  MOV             R1, R4
1014BC:  MOV             R2, R5
1014BE:  BL              sub_12B090
1014C2:  LDRB.W          R0, [SP,#0x50+var_3C]
1014C6:  LDR             R4, [R7,#arg_C]
1014C8:  LSLS            R0, R0, #0x1F
1014CA:  ITT NE
1014CC:  LDRNE           R0, [SP,#0x50+var_34]; void *
1014CE:  BLXNE           j__ZdlPv; operator delete(void *)
1014D2:  LDR.W           R8, [R7,#arg_4]
1014D6:  MOVS            R0, #0
1014D8:  STRD.W          R0, R0, [SP,#0x50+var_48]
1014DC:  CBZ             R4, loc_101526
1014DE:  CMP             R4, #1
1014E0:  BEQ             loc_1014F8
1014E2:  CMP             R4, #2
1014E4:  BNE             loc_10152A
1014E6:  VLDR            S0, [SP,#0x50+var_30]
1014EA:  MOVS            R0, #0
1014EC:  VLDR            S2, [R10]
1014F0:  STR             R0, [SP,#0x50+var_44]
1014F2:  VSUB.F32        S0, S2, S0
1014F6:  B               loc_101520
1014F8:  VLDR            S0, [SP,#0x50+var_30]
1014FC:  VMOV.F32        S8, #0.5
101500:  VLDR            S4, [R10]
101504:  VLDR            S2, [SP,#0x50+var_2C]
101508:  VLDR            S6, [R10,#4]
10150C:  VSUB.F32        S0, S4, S0
101510:  VSUB.F32        S2, S6, S2
101514:  VMUL.F32        S0, S0, S8
101518:  VMUL.F32        S2, S2, S8
10151C:  VSTR            S2, [SP,#0x50+var_44]
101520:  VSTR            S0, [SP,#0x50+var_48]
101524:  B               loc_10152A
101526:  STRD.W          R0, R0, [SP,#0x50+var_48]
10152A:  LDR             R0, [R6]
10152C:  ADD             R5, SP, #0x50+var_3C
10152E:  MOV             R1, R9; s
101530:  LDR             R0, [R0,#0x54]
101532:  LDR             R4, [R0,#0x18]
101534:  MOV             R0, R5; int
101536:  BL              sub_DC6DC
10153A:  MOVS            R0, #0
10153C:  ADD             R1, SP, #0x50+var_48; int
10153E:  STR             R0, [SP,#0x50+var_50]; int
101540:  MOV             R0, R4; int
101542:  MOV             R2, R8; int
101544:  MOV             R3, R5; int
101546:  VSTR            S16, [SP,#0x50+var_4C]
10154A:  BL              sub_12AE34
10154E:  LDRB.W          R0, [SP,#0x50+var_3C]
101552:  LSLS            R0, R0, #0x1F
101554:  ITT NE
101556:  LDRNE           R0, [SP,#0x50+var_34]; void *
101558:  BLXNE           j__ZdlPv; operator delete(void *)
10155C:  BL              sub_16E5BC
101560:  LDR             R0, [R6]
101562:  LDR             R4, [R0,#0x54]
101564:  BL              sub_167F70
101568:  MOV             R1, R0
10156A:  MOV             R0, R4
10156C:  BL              sub_12B5D0
101570:  ADD             SP, SP, #0x28 ; '('
101572:  VPOP            {D8}
101576:  ADD             SP, SP, #4
101578:  POP.W           {R8-R11}
10157C:  POP             {R4-R7,PC}
