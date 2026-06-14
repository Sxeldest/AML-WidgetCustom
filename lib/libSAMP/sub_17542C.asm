; =========================================================
; Game Engine Function: sub_17542C
; Address            : 0x17542C - 0x1754DC
; =========================================================

17542C:  PUSH            {R4-R7,LR}
17542E:  ADD             R7, SP, #0xC
175430:  PUSH.W          {R8-R10}
175434:  VPUSH           {D8}
175438:  SUB             SP, SP, #0xF8
17543A:  MOV             R6, R1
17543C:  LDR             R1, =(aRb_0 - 0x175446); "rb" ...
17543E:  MOV             R10, R2
175440:  ADD             R2, SP, #0x118+var_9C
175442:  ADD             R1, PC; "rb"
175444:  MOV             R5, R3
175446:  MOV             R8, R0
175448:  MOVS            R4, #0
17544A:  MOV             R0, R6
17544C:  MOVS            R3, #0
17544E:  STR             R4, [SP,#0x118+var_9C]
175450:  BL              sub_165694
175454:  CBZ             R0, loc_1754CE
175456:  MOV             R9, R0
175458:  ADD             R0, SP, #0x118+dest; dest
17545A:  CBZ             R5, loc_175466
17545C:  MOV             R1, R5; src
17545E:  MOVS            R2, #0x74 ; 't'; n
175460:  BLX             j_memcpy
175464:  B               loc_17546A
175466:  BL              sub_174FC6
17546A:  LDRB.W          R0, [SP,#0x118+var_C8]
17546E:  VMOV            S16, R10
175472:  LDR             R5, [R7,#arg_0]
175474:  CBNZ            R0, loc_1754AC
175476:  ADD             R0, SP, #0x118+dest
175478:  ADD.W           R4, R0, #0x48 ; 'H'
17547C:  MOV             R0, R6; s
17547E:  BLX             strlen
175482:  ADD             R0, R6
175484:  MOV             R3, R0
175486:  CMP             R0, R6
175488:  BLS             loc_175498
17548A:  MOV             R0, R3
17548C:  LDRB.W          R1, [R0,#-1]!
175490:  CMP             R1, #0x5C ; '\'
175492:  IT NE
175494:  CMPNE           R1, #0x2F ; '/'
175496:  BNE             loc_175484
175498:  VCVT.F64.F32    D16, S16
17549C:  LDR             R2, =(aS0fpx - 0x1754A6); "%s, %.0fpx" ...
17549E:  MOV             R0, R4
1754A0:  MOVS            R1, #0x28 ; '('
1754A2:  ADD             R2, PC; "%s, %.0fpx"
1754A4:  VSTR            D16, [SP,#0x118+var_118]
1754A8:  BL              sub_1655A8
1754AC:  ADD             R0, SP, #0x118+src; dest
1754AE:  ADD             R1, SP, #0x118+dest; src
1754B0:  MOVS            R2, #0x74 ; 't'; n
1754B2:  LDR             R4, [SP,#0x118+var_9C]
1754B4:  BLX             j_memcpy
1754B8:  VSTR            S16, [SP,#0x118+var_88]
1754BC:  STRD.W          R9, R4, [SP,#0x118+src]
1754C0:  CBZ             R5, loc_1754C4
1754C2:  STR             R5, [SP,#0x118+var_68]
1754C4:  ADD             R1, SP, #0x118+src; src
1754C6:  MOV             R0, R8; int
1754C8:  BL              sub_1751CE
1754CC:  MOV             R4, R0
1754CE:  MOV             R0, R4
1754D0:  ADD             SP, SP, #0xF8
1754D2:  VPOP            {D8}
1754D6:  POP.W           {R8-R10}
1754DA:  POP             {R4-R7,PC}
