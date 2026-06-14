; =========================================================
; Game Engine Function: sub_20A528
; Address            : 0x20A528 - 0x20A590
; =========================================================

20A528:  PUSH            {R4-R7,LR}
20A52A:  ADD             R7, SP, #0xC
20A52C:  PUSH.W          {R11}
20A530:  SUB             SP, SP, #8
20A532:  MOV             R4, R0
20A534:  LDR             R0, =(__stack_chk_guard_ptr - 0x20A53A)
20A536:  ADD             R0, PC; __stack_chk_guard_ptr
20A538:  LDR             R0, [R0]; __stack_chk_guard
20A53A:  LDR             R0, [R0]
20A53C:  STR             R0, [SP,#0x18+var_14]
20A53E:  LDRB            R0, [R1]
20A540:  CBZ             R0, loc_20A574
20A542:  MOV             R5, R2
20A544:  LDRB            R2, [R1,#1]
20A546:  CBZ             R2, loc_20A56E
20A548:  MOV             R0, SP; int
20A54A:  MOV             R2, R5
20A54C:  BL              sub_20A6E8
20A550:  CBZ             R0, loc_20A574
20A552:  LDR             R6, [SP,#0x18+var_18]
20A554:  MOV             R1, R5
20A556:  MOV             R0, R6
20A558:  BL              sub_2079D8
20A55C:  ADDS            R1, R0, #1
20A55E:  BNE             loc_20A56E
20A560:  MOVS            R0, #0x20 ; ' '
20A562:  MOVW            R1, #0x202F
20A566:  CMP             R6, R1
20A568:  IT NE
20A56A:  CMPNE           R6, #0xA0
20A56C:  BNE             loc_20A574
20A56E:  STRB            R0, [R4]
20A570:  MOVS            R0, #1
20A572:  B               loc_20A576
20A574:  MOVS            R0, #0
20A576:  LDR             R1, [SP,#0x18+var_14]
20A578:  LDR             R2, =(__stack_chk_guard_ptr - 0x20A57E)
20A57A:  ADD             R2, PC; __stack_chk_guard_ptr
20A57C:  LDR             R2, [R2]; __stack_chk_guard
20A57E:  LDR             R2, [R2]
20A580:  CMP             R2, R1
20A582:  ITTT EQ
20A584:  ADDEQ           SP, SP, #8
20A586:  POPEQ.W         {R11}
20A58A:  POPEQ           {R4-R7,PC}
20A58C:  BLX             __stack_chk_fail
