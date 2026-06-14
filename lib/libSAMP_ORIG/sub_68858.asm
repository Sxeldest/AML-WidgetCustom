; =========================================================
; Game Engine Function: sub_68858
; Address            : 0x68858 - 0x688A8
; =========================================================

68858:  PUSH            {R7,LR}
6885A:  MOV             R7, SP
6885C:  SUB             SP, SP, #0x10
6885E:  LDR             R0, =(__stack_chk_guard_ptr - 0x68866)
68860:  MOVS            R1, #0; tz
68862:  ADD             R0, PC; __stack_chk_guard_ptr
68864:  LDR             R0, [R0]; __stack_chk_guard
68866:  LDR             R0, [R0]
68868:  STR             R0, [SP,#0x18+var_C]
6886A:  ADD             R0, SP, #0x18+tv; tv
6886C:  BLX             gettimeofday
68870:  LDRD.W          R0, R1, [SP,#0x18+tv]
68874:  LDR             R2, [SP,#0x18+var_C]
68876:  LDR             R3, =(__stack_chk_guard_ptr - 0x6887C)
68878:  ADD             R3, PC; __stack_chk_guard_ptr
6887A:  LDR             R3, [R3]; __stack_chk_guard
6887C:  LDR             R3, [R3]
6887E:  CMP             R3, R2
68880:  ITTTT EQ
68882:  MOVWEQ          R2, #0x4DD3
68886:  MOVTEQ          R2, #0x1062
6888A:  SMMULEQ.W       R1, R1, R2
6888E:  ASREQ           R2, R1, #6
68890:  ITTTT EQ
68892:  ADDEQ.W         R1, R2, R1,LSR#31
68896:  MOVEQ.W         R2, #0x3E8
6889A:  MLAEQ.W         R0, R0, R2, R1
6889E:  ADDEQ           SP, SP, #0x10
688A0:  IT EQ
688A2:  POPEQ           {R7,PC}
688A4:  BLX             __stack_chk_fail
