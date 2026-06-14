; =========================================================
; Game Engine Function: sub_AF604
; Address            : 0xAF604 - 0xAF6EE
; =========================================================

AF604:  PUSH            {R4-R7,LR}
AF606:  ADD             R7, SP, #0xC
AF608:  PUSH.W          {R8}
AF60C:  SUB             SP, SP, #0x50
AF60E:  MOV             R5, R2
AF610:  MOV             R2, R0
AF612:  LDR             R0, =(__stack_chk_guard_ptr - 0xAF618)
AF614:  ADD             R0, PC; __stack_chk_guard_ptr
AF616:  LDR             R0, [R0]; __stack_chk_guard
AF618:  LDR             R0, [R0]
AF61A:  STR             R0, [SP,#0x60+var_14]
AF61C:  LDRB            R0, [R2]
AF61E:  CMP             R0, #0
AF620:  BEQ             loc_AF6CE
AF622:  MOV             R6, R1
AF624:  B               loc_AF634
AF626:  CMP             R0, #0x25 ; '%'
AF628:  IT EQ
AF62A:  ADDEQ           R2, #1
AF62C:  LDRB.W          R0, [R2,#1]!
AF630:  CMP             R0, #0
AF632:  BEQ             loc_AF6CE
AF634:  CMP             R0, #0x25 ; '%'
AF636:  BNE             loc_AF626
AF638:  LDRB            R1, [R2,#1]
AF63A:  CMP             R1, #0x25 ; '%'
AF63C:  BEQ             loc_AF626
AF63E:  ADD             R4, SP, #0x60+s
AF640:  MOVS            R1, #0x40 ; '@'
AF642:  STRD.W          R5, R3, [SP,#0x60+var_60]
AF646:  MOV             R0, R4; s
AF648:  BL              sub_886C0
AF64C:  SUBS            R0, R4, #1
AF64E:  LDRB.W          R1, [R0,#1]!; nptr
AF652:  CMP             R1, #0x20 ; ' '
AF654:  BEQ             loc_AF64E
AF656:  BIC.W           R2, R6, #1
AF65A:  CMP             R2, #8
AF65C:  BNE             loc_AF66C
AF65E:  BLX             atof
AF662:  BLX             sub_108A44
AF666:  MOV             R5, R0
AF668:  MOV             R3, R1
AF66A:  B               loc_AF6CE
AF66C:  SUB.W           R2, R1, #0x2D ; '-'
AF670:  MOV.W           R12, #0
AF674:  CLZ.W           R2, R2
AF678:  LSRS            R2, R2, #5
AF67A:  LDRB            R3, [R0,R2]
AF67C:  SUBS            R3, #0x2B ; '+'
AF67E:  CLZ.W           R3, R3
AF682:  LSRS            R3, R3, #5
AF684:  ADD             R3, R2
AF686:  LDRB            R5, [R0,R3]
AF688:  SUB.W           R2, R5, #0x30 ; '0'
AF68C:  CMP             R2, #9
AF68E:  BHI             loc_AF6BC
AF690:  MOVS            R6, #0
AF692:  MOV.W           LR, #0xA
AF696:  MOVS            R2, #0
AF698:  ADD.W           R2, R2, R2,LSL#2
AF69C:  SUB.W           R4, R5, #0x30 ; '0'
AF6A0:  ADD.W           R8, R0, R3
AF6A4:  ADDS            R3, #1
AF6A6:  LSLS            R2, R2, #1
AF6A8:  UMLAL.W         R4, R2, R6, LR
AF6AC:  LDRB.W          R5, [R8,#1]
AF6B0:  SUB.W           R6, R5, #0x30 ; '0'
AF6B4:  CMP             R6, #0xA
AF6B6:  MOV             R6, R4
AF6B8:  BCC             loc_AF698
AF6BA:  B               loc_AF6C0
AF6BC:  MOVS            R4, #0
AF6BE:  MOVS            R2, #0
AF6C0:  NEGS            R5, R4
AF6C2:  SBC.W           R3, R12, R2
AF6C6:  CMP             R1, #0x2D ; '-'
AF6C8:  ITT NE
AF6CA:  MOVNE           R5, R4
AF6CC:  MOVNE           R3, R2
AF6CE:  LDR             R0, [SP,#0x60+var_14]
AF6D0:  LDR             R1, =(__stack_chk_guard_ptr - 0xAF6D6)
AF6D2:  ADD             R1, PC; __stack_chk_guard_ptr
AF6D4:  LDR             R1, [R1]; __stack_chk_guard
AF6D6:  LDR             R1, [R1]
AF6D8:  CMP             R1, R0
AF6DA:  ITTTT EQ
AF6DC:  MOVEQ           R0, R5
AF6DE:  MOVEQ           R1, R3
AF6E0:  ADDEQ           SP, SP, #0x50 ; 'P'
AF6E2:  POPEQ.W         {R8}
AF6E6:  IT EQ
AF6E8:  POPEQ           {R4-R7,PC}
AF6EA:  BLX             __stack_chk_fail
