; =========================================================
; Game Engine Function: sub_9D43C
; Address            : 0x9D43C - 0x9D568
; =========================================================

9D43C:  CMP.W           R3, #0x1000000
9D440:  IT CC
9D442:  BXCC            LR
9D444:  PUSH            {R4-R7,LR}
9D446:  ADD             R7, SP, #0x14+var_8
9D448:  PUSH.W          {R8,R9,R11}
9D44C:  VPUSH           {D8-D9}
9D450:  SUB             SP, SP, #0x10
9D452:  VMOV.F32        S18, #0.5
9D456:  VLDR            S0, [R1]
9D45A:  VLDR            S2, [R1,#4]
9D45E:  MOV             R4, R0
9D460:  LDR             R0, [R0,#0x58]
9D462:  MOV             R9, R3
9D464:  LDR             R1, [R4,#0x5C]
9D466:  MOV             R6, R2
9D468:  CMP             R0, R1
9D46A:  VADD.F32        S2, S2, S18
9D46E:  VADD.F32        S0, S0, S18
9D472:  VSTR            S2, [SP,#0x40+var_34]
9D476:  VSTR            S0, [SP,#0x40+var_38]
9D47A:  BNE             loc_9D4BA
9D47C:  CMP             R0, #0
9D47E:  ADD.W           R5, R0, #1
9D482:  ITTE NE
9D484:  ADDNE.W         R1, R0, R0,LSR#31
9D488:  ADDNE.W         R1, R0, R1,ASR#1
9D48C:  MOVEQ           R1, #8
9D48E:  CMP             R1, R5
9D490:  IT GT
9D492:  MOVGT           R5, R1
9D494:  CMP             R0, R5
9D496:  BGE             loc_9D4BA
9D498:  LSLS            R0, R5, #3
9D49A:  BL              sub_885E4
9D49E:  LDR             R1, [R4,#0x60]; src
9D4A0:  MOV             R8, R0
9D4A2:  CBZ             R1, loc_9D4B4
9D4A4:  LDR             R0, [R4,#0x58]
9D4A6:  LSLS            R2, R0, #3; n
9D4A8:  MOV             R0, R8; dest
9D4AA:  BLX             j_memcpy
9D4AE:  LDR             R0, [R4,#0x60]
9D4B0:  BL              sub_88614
9D4B4:  LDR             R0, [R4,#0x58]
9D4B6:  STRD.W          R5, R8, [R4,#0x5C]
9D4BA:  LDR             R1, [R4,#0x60]
9D4BC:  LDRD.W          R2, R3, [SP,#0x40+var_38]
9D4C0:  VLDR            S16, [R7,#8]
9D4C4:  STR.W           R2, [R1,R0,LSL#3]
9D4C8:  ADD.W           R0, R1, R0,LSL#3
9D4CC:  STR             R3, [R0,#4]
9D4CE:  LDR             R1, [R4,#0x58]
9D4D0:  LDR             R2, [R4,#0x5C]
9D4D2:  ADDS            R0, R1, #1
9D4D4:  STR             R0, [R4,#0x58]
9D4D6:  VLDR            S0, [R6]
9D4DA:  CMP             R0, R2
9D4DC:  VLDR            S2, [R6,#4]
9D4E0:  VADD.F32        S0, S0, S18
9D4E4:  VADD.F32        S2, S2, S18
9D4E8:  VSTR            S0, [SP,#0x40+var_38]
9D4EC:  VSTR            S2, [SP,#0x40+var_34]
9D4F0:  BNE             loc_9D52E
9D4F2:  ADDS            R5, R1, #2
9D4F4:  CMP             R0, #0
9D4F6:  ITTE NE
9D4F8:  ADDNE.W         R1, R0, R0,LSR#31
9D4FC:  ADDNE.W         R1, R0, R1,ASR#1
9D500:  MOVEQ           R1, #8
9D502:  CMP             R1, R5
9D504:  IT GT
9D506:  MOVGT           R5, R1
9D508:  CMP             R0, R5
9D50A:  BGE             loc_9D52E
9D50C:  LSLS            R0, R5, #3
9D50E:  BL              sub_885E4
9D512:  LDR             R1, [R4,#0x60]; src
9D514:  MOV             R6, R0
9D516:  CBZ             R1, loc_9D528
9D518:  LDR             R0, [R4,#0x58]
9D51A:  LSLS            R2, R0, #3; n
9D51C:  MOV             R0, R6; dest
9D51E:  BLX             j_memcpy
9D522:  LDR             R0, [R4,#0x60]
9D524:  BL              sub_88614
9D528:  LDR             R0, [R4,#0x58]
9D52A:  STRD.W          R5, R6, [R4,#0x5C]
9D52E:  LDR             R1, [R4,#0x60]
9D530:  MOVS            R5, #0
9D532:  LDRD.W          R2, R3, [SP,#0x40+var_38]
9D536:  STR.W           R2, [R1,R0,LSL#3]
9D53A:  ADD.W           R0, R1, R0,LSL#3
9D53E:  STR             R3, [R0,#4]
9D540:  MOV             R3, R9; int
9D542:  LDR             R0, [R4,#0x58]
9D544:  LDR             R1, [R4,#0x60]; int
9D546:  ADDS            R2, R0, #1; int
9D548:  MOV             R0, R4; int
9D54A:  STR             R2, [R4,#0x58]
9D54C:  VSTR            S16, [SP,#0x40+var_3C]
9D550:  STR             R5, [SP,#0x40+var_40]; int
9D552:  BL              sub_9C2AC
9D556:  STR             R5, [R4,#0x58]
9D558:  ADD             SP, SP, #0x10
9D55A:  VPOP            {D8-D9}
9D55E:  POP.W           {R8,R9,R11}
9D562:  POP.W           {R4-R7,LR}
9D566:  BX              LR
