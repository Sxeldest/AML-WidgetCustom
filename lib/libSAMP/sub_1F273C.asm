; =========================================================
; Game Engine Function: sub_1F273C
; Address            : 0x1F273C - 0x1F277C
; =========================================================

1F273C:  PUSH            {R3-R7,LR}
1F273E:  ADD             R7, SP, #0x10
1F2740:  STRD.W          R0, R1, [SP,#0x10+var_C]
1F2744:  CMP             R1, R3
1F2746:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F274C)
1F2748:  ADD             R0, PC; __stack_chk_guard_ptr
1F274A:  LDR             R0, [R0]; __stack_chk_guard
1F274C:  LDR             R0, [R0]
1F274E:  STR             R0, [SP,#0x10+var_4]
1F2750:  BNE             loc_1F2764
1F2752:  ADD             R0, SP, #0x10+var_C; int
1F2754:  MOV             R1, R2; int
1F2756:  MOV             R2, R3; n
1F2758:  BL              sub_126DBE
1F275C:  CMP             R0, #0
1F275E:  IT NE
1F2760:  MOVNE           R0, #1
1F2762:  B               loc_1F2766
1F2764:  MOVS            R0, #1
1F2766:  LDR             R1, [SP,#0x10+var_4]
1F2768:  LDR             R2, =(__stack_chk_guard_ptr - 0x1F276E)
1F276A:  ADD             R2, PC; __stack_chk_guard_ptr
1F276C:  LDR             R2, [R2]; __stack_chk_guard
1F276E:  LDR             R2, [R2]
1F2770:  CMP             R2, R1
1F2772:  ITT EQ
1F2774:  ADDEQ           SP, SP, #0x10
1F2776:  POPEQ           {R7,PC}
1F2778:  BLX             __stack_chk_fail
