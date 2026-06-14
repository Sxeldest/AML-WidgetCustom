; =========================================================
; Game Engine Function: sub_21767C
; Address            : 0x21767C - 0x2176F0
; =========================================================

21767C:  PUSH            {R2-R4,R6,R7,LR}
21767E:  ADD             R7, SP, #0x10
217680:  MOV             R4, R0
217682:  LDR             R0, =(__stack_chk_guard_ptr - 0x217688)
217684:  ADD             R0, PC; __stack_chk_guard_ptr
217686:  LDR             R0, [R0]; __stack_chk_guard
217688:  LDR             R0, [R0]
21768A:  STR             R0, [SP,#0x10+var_C]
21768C:  LDRD.W          R0, R1, [R4]
217690:  CMP             R0, R1
217692:  BEQ             loc_2176DA
217694:  LDRB            R2, [R0]
217696:  CMP             R2, #0x44 ; 'D'
217698:  BNE             loc_2176DA
21769A:  ADDS            R2, R0, #1
21769C:  STR             R2, [R4]
21769E:  CMP             R2, R1
2176A0:  BEQ             loc_2176DA
2176A2:  LDRB            R1, [R2]
2176A4:  ORR.W           R1, R1, #0x20 ; ' '
2176A8:  CMP             R1, #0x74 ; 't'
2176AA:  BNE             loc_2176DA
2176AC:  ADDS            R0, #2
2176AE:  STR             R0, [R4]
2176B0:  MOV             R0, R4
2176B2:  BL              sub_217B38
2176B6:  STR             R0, [SP,#0x10+var_10]
2176B8:  CBZ             R0, loc_2176DA
2176BA:  LDRD.W          R0, R1, [R4]
2176BE:  CMP             R0, R1
2176C0:  BEQ             loc_2176DA
2176C2:  LDRB            R1, [R0]
2176C4:  CMP             R1, #0x45 ; 'E'
2176C6:  BNE             loc_2176DA
2176C8:  ADDS            R0, #1
2176CA:  STR             R0, [R4]
2176CC:  LDR             R1, =(aDecltype - 0x2176D6); "decltype(" ...
2176CE:  MOV             R2, SP
2176D0:  MOV             R0, R4
2176D2:  ADD             R1, PC; "decltype("
2176D4:  BL              sub_21934C
2176D8:  B               loc_2176DC
2176DA:  MOVS            R0, #0
2176DC:  LDR             R1, [SP,#0x10+var_C]
2176DE:  LDR             R2, =(__stack_chk_guard_ptr - 0x2176E4)
2176E0:  ADD             R2, PC; __stack_chk_guard_ptr
2176E2:  LDR             R2, [R2]; __stack_chk_guard
2176E4:  LDR             R2, [R2]
2176E6:  CMP             R2, R1
2176E8:  IT EQ
2176EA:  POPEQ           {R2-R4,R6,R7,PC}
2176EC:  BLX             __stack_chk_fail
