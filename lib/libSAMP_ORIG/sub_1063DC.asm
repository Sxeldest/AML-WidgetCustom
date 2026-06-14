; =========================================================
; Game Engine Function: sub_1063DC
; Address            : 0x1063DC - 0x1064A4
; =========================================================

1063DC:  PUSH            {R4-R7,LR}
1063DE:  ADD             R7, SP, #0xC
1063E0:  PUSH.W          {R8}
1063E4:  SUB             SP, SP, #0x10
1063E6:  MOV             R8, R0
1063E8:  LDR             R0, =(__stack_chk_guard_ptr - 0x1063EE)
1063EA:  ADD             R0, PC; __stack_chk_guard_ptr
1063EC:  LDR             R0, [R0]; __stack_chk_guard
1063EE:  LDR             R0, [R0]
1063F0:  STR             R0, [SP,#0x20+var_14]
1063F2:  LDRB.W          R0, [R8,#0x10]
1063F6:  CMP             R0, #0
1063F8:  BNE             loc_10648A
1063FA:  MOVS            R0, #1
1063FC:  MOV             R5, R1
1063FE:  STRB.W          R0, [R8,#0x10]
106402:  ADD             R0, SP, #0x20+var_1C
106404:  MOV             R1, R8
106406:  MOV             R2, R5
106408:  BL              sub_106564
10640C:  LDR             R6, [SP,#0x20+var_18]
10640E:  LDR             R0, [R6]
106410:  LDR             R2, [R0,#0x10]
106412:  MOV             R0, R6
106414:  MOV             R1, R5
106416:  BLX             R2
106418:  MOV             R0, R6
10641A:  MOV             R1, R5
10641C:  BL              sub_10069E
106420:  CBZ             R0, loc_106438
106422:  LDR             R4, =(asc_4B4F4 - 0x10642A); " " ...
106424:  MOVS            R1, #2; size_t
106426:  ADD             R4, PC; " "
106428:  MOV             R0, R4; char *
10642A:  BLX             __strlen_chk
10642E:  ADDS            R2, R4, R0
106430:  MOV             R0, R5
106432:  MOV             R1, R4
106434:  BL              sub_FFB40
106438:  MOV             R0, R6
10643A:  MOV             R1, R5
10643C:  BL              sub_10069E
106440:  CBNZ            R0, loc_10644C
106442:  MOV             R0, R6
106444:  MOV             R1, R5
106446:  BL              sub_1006B2
10644A:  CBZ             R0, loc_106462
10644C:  LDR             R4, =(asc_4F675 - 0x106454); "(" ...
10644E:  MOVS            R1, #2; size_t
106450:  ADD             R4, PC; "("
106452:  MOV             R0, R4; char *
106454:  BLX             __strlen_chk
106458:  ADDS            R2, R4, R0
10645A:  MOV             R0, R5
10645C:  MOV             R1, R4
10645E:  BL              sub_FFB40
106462:  LDR             R0, [SP,#0x20+var_1C]
106464:  LDR             R1, =(asc_4FC4B - 0x10646E); "&" ...
106466:  LDR             R6, =(asc_4FAB9 - 0x106470); "&&" ...
106468:  CMP             R0, #0
10646A:  ADD             R1, PC; "&"
10646C:  ADD             R6, PC; "&&"
10646E:  IT EQ
106470:  MOVEQ           R6, R1
106472:  MOV             R0, R6; char *
106474:  MOVS            R1, #3; size_t
106476:  BLX             __strlen_chk
10647A:  ADDS            R2, R6, R0
10647C:  MOV             R0, R5
10647E:  MOV             R1, R6
106480:  BL              sub_FFB40
106484:  MOVS            R0, #0
106486:  STRB.W          R0, [R8,#0x10]
10648A:  LDR             R0, [SP,#0x20+var_14]
10648C:  LDR             R1, =(__stack_chk_guard_ptr - 0x106492)
10648E:  ADD             R1, PC; __stack_chk_guard_ptr
106490:  LDR             R1, [R1]; __stack_chk_guard
106492:  LDR             R1, [R1]
106494:  CMP             R1, R0
106496:  ITTT EQ
106498:  ADDEQ           SP, SP, #0x10
10649A:  POPEQ.W         {R8}
10649E:  POPEQ           {R4-R7,PC}
1064A0:  BLX             __stack_chk_fail
