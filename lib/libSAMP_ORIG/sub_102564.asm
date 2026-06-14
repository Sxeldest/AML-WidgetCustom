; =========================================================
; Game Engine Function: sub_102564
; Address            : 0x102564 - 0x102602
; =========================================================

102564:  PUSH            {R0-R5,R7,LR}
102566:  ADD             R7, SP, #0x18
102568:  MOV             R4, R0
10256A:  LDR             R0, =(__stack_chk_guard_ptr - 0x102570)
10256C:  ADD             R0, PC; __stack_chk_guard_ptr
10256E:  LDR             R0, [R0]; __stack_chk_guard
102570:  LDR             R0, [R0]
102572:  STR             R0, [SP,#0x18+var_C]
102574:  MOV             R0, R4
102576:  LDR             R1, =(aFp - 0x10257C); "fp" ...
102578:  ADD             R1, PC; "fp"
10257A:  ADDS            R2, R1, #2
10257C:  BL              sub_FE18C
102580:  CBZ             R0, loc_1025B2
102582:  MOV             R0, R4
102584:  BL              sub_FFF94
102588:  ADD             R0, SP, #0x18+var_14
10258A:  MOV             R1, R4
10258C:  MOVS            R2, #0
10258E:  MOVS            R5, #0
102590:  BL              sub_FE75C
102594:  LDRD.W          R0, R1, [R4]
102598:  CMP             R0, R1
10259A:  BEQ             loc_1025EA
10259C:  LDRB            R1, [R0]
10259E:  CMP             R1, #0x5F ; '_'
1025A0:  BNE             loc_1025E8
1025A2:  ADDS            R0, #1
1025A4:  STR             R0, [R4]
1025A6:  ADD             R1, SP, #0x18+var_14
1025A8:  MOV             R0, R4
1025AA:  BL              sub_1039B4
1025AE:  MOV             R5, R0
1025B0:  B               loc_1025EA
1025B2:  LDR             R1, =(aFl - 0x1025BA); "fL" ...
1025B4:  MOV             R0, R4
1025B6:  ADD             R1, PC; "fL"
1025B8:  ADDS            R2, R1, #2
1025BA:  BL              sub_FE18C
1025BE:  CBZ             R0, loc_1025E8
1025C0:  ADD             R0, SP, #0x18+var_14
1025C2:  MOV             R1, R4
1025C4:  MOVS            R2, #0
1025C6:  MOVS            R5, #0
1025C8:  BL              sub_FE75C
1025CC:  LDRD.W          R0, R1, [SP,#0x18+var_14]
1025D0:  CMP             R0, R1
1025D2:  BEQ             loc_1025EA
1025D4:  LDRD.W          R0, R1, [R4]
1025D8:  CMP             R0, R1
1025DA:  BEQ             loc_1025E8
1025DC:  LDRB            R1, [R0]
1025DE:  CMP             R1, #0x70 ; 'p'
1025E0:  BNE             loc_1025E8
1025E2:  ADDS            R0, #1
1025E4:  STR             R0, [R4]
1025E6:  B               loc_102582
1025E8:  MOVS            R5, #0
1025EA:  LDR             R0, [SP,#0x18+var_C]
1025EC:  LDR             R1, =(__stack_chk_guard_ptr - 0x1025F2)
1025EE:  ADD             R1, PC; __stack_chk_guard_ptr
1025F0:  LDR             R1, [R1]; __stack_chk_guard
1025F2:  LDR             R1, [R1]
1025F4:  CMP             R1, R0
1025F6:  ITTT EQ
1025F8:  MOVEQ           R0, R5
1025FA:  ADDEQ           SP, SP, #0x10
1025FC:  POPEQ           {R4,R5,R7,PC}
1025FE:  BLX             __stack_chk_fail
