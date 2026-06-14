; =========================================================
; Game Engine Function: sub_107758
; Address            : 0x107758 - 0x10778C
; =========================================================

107758:  PUSH            {R3-R7,LR}
10775A:  ADD             R7, SP, #0x10
10775C:  STR             R2, [SP,#0x10+var_8]
10775E:  MOV             R3, R1
107760:  LDR             R1, =(__stack_chk_guard_ptr - 0x10776A)
107762:  MOV             R2, R3
107764:  MOVS            R3, #0
107766:  ADD             R1, PC; __stack_chk_guard_ptr
107768:  LDR             R1, [R1]; __stack_chk_guard
10776A:  LDR             R1, [R1]
10776C:  STR             R1, [SP,#0x10+var_4]
10776E:  ADD             R1, SP, #0x10+var_8
107770:  STR             R1, [SP,#0x10+var_10]
107772:  MOVS            R1, #0
107774:  BLX             sub_109D68
107778:  LDR             R0, [SP,#0x10+var_4]
10777A:  LDR             R1, =(__stack_chk_guard_ptr - 0x107780)
10777C:  ADD             R1, PC; __stack_chk_guard_ptr
10777E:  LDR             R1, [R1]; __stack_chk_guard
107780:  LDR             R1, [R1]
107782:  CMP             R1, R0
107784:  IT EQ
107786:  POPEQ           {R0-R3,R7,PC}
107788:  BLX             __stack_chk_fail
