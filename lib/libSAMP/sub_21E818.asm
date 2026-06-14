; =========================================================
; Game Engine Function: sub_21E818
; Address            : 0x21E818 - 0x21E84C
; =========================================================

21E818:  PUSH            {R3-R7,LR}
21E81A:  ADD             R7, SP, #0x10
21E81C:  MOV             R2, R1
21E81E:  LDR             R1, =(__stack_chk_guard_ptr - 0x21E826)
21E820:  MOVS            R3, #0
21E822:  ADD             R1, PC; __stack_chk_guard_ptr
21E824:  LDR             R1, [R1]; __stack_chk_guard
21E826:  LDR             R1, [R1]
21E828:  STR             R1, [SP,#0x10+var_4]
21E82A:  ADD             R1, SP, #0x10+var_8
21E82C:  STR             R1, [SP,#0x10+var_10]
21E82E:  MOVS            R1, #0
21E830:  BLX             sub_221D60
21E834:  LDR             R0, [SP,#0x10+var_8]
21E836:  LDR             R1, [SP,#0x10+var_4]
21E838:  LDR             R2, =(__stack_chk_guard_ptr - 0x21E83E)
21E83A:  ADD             R2, PC; __stack_chk_guard_ptr
21E83C:  LDR             R2, [R2]; __stack_chk_guard
21E83E:  LDR             R2, [R2]
21E840:  CMP             R2, R1
21E842:  ITT EQ
21E844:  ADDEQ           SP, SP, #0x10
21E846:  POPEQ           {R7,PC}
21E848:  BLX             __stack_chk_fail
