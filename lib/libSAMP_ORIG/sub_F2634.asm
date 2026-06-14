; =========================================================
; Game Engine Function: sub_F2634
; Address            : 0xF2634 - 0xF269C
; =========================================================

F2634:  PUSH            {R4-R7,LR}
F2636:  ADD             R7, SP, #0xC
F2638:  PUSH.W          {R11}
F263C:  SUB             SP, SP, #8
F263E:  MOV             R4, R0
F2640:  LDR             R0, =(__stack_chk_guard_ptr - 0xF2646)
F2642:  ADD             R0, PC; __stack_chk_guard_ptr
F2644:  LDR             R0, [R0]; __stack_chk_guard
F2646:  LDR             R0, [R0]
F2648:  STR             R0, [SP,#0x18+var_14]
F264A:  LDRB            R0, [R1]
F264C:  CBZ             R0, loc_F2680
F264E:  MOV             R5, R2
F2650:  LDRB            R2, [R1,#1]
F2652:  CBZ             R2, loc_F267A
F2654:  MOV             R0, SP; int
F2656:  MOV             R2, R5
F2658:  BL              sub_F27F4
F265C:  CBZ             R0, loc_F2680
F265E:  LDR             R6, [SP,#0x18+var_18]
F2660:  MOV             R1, R5
F2662:  MOV             R0, R6
F2664:  BL              sub_EFAE4
F2668:  ADDS            R1, R0, #1
F266A:  BNE             loc_F267A
F266C:  MOVS            R0, #0x20 ; ' '
F266E:  MOVW            R1, #0x202F
F2672:  CMP             R6, R1
F2674:  IT NE
F2676:  CMPNE           R6, #0xA0
F2678:  BNE             loc_F2680
F267A:  STRB            R0, [R4]
F267C:  MOVS            R0, #1
F267E:  B               loc_F2682
F2680:  MOVS            R0, #0
F2682:  LDR             R1, [SP,#0x18+var_14]
F2684:  LDR             R2, =(__stack_chk_guard_ptr - 0xF268A)
F2686:  ADD             R2, PC; __stack_chk_guard_ptr
F2688:  LDR             R2, [R2]; __stack_chk_guard
F268A:  LDR             R2, [R2]
F268C:  CMP             R2, R1
F268E:  ITTT EQ
F2690:  ADDEQ           SP, SP, #8
F2692:  POPEQ.W         {R11}
F2696:  POPEQ           {R4-R7,PC}
F2698:  BLX             __stack_chk_fail
