; =========================================================
; Game Engine Function: sub_207940
; Address            : 0x207940 - 0x20797C
; =========================================================

207940:  PUSH            {R2-R4,R6,R7,LR}
207942:  ADD             R7, SP, #0x10
207944:  MOV             R4, R0
207946:  LDR             R0, =(__stack_chk_guard_ptr - 0x20794C)
207948:  ADD             R0, PC; __stack_chk_guard_ptr
20794A:  LDR             R0, [R0]; __stack_chk_guard
20794C:  LDR             R0, [R0]
20794E:  STR             R0, [SP,#0x10+var_C]
207950:  MOV             R0, R1
207952:  BL              sub_21FCA0
207956:  STR             R0, [SP,#0x10+var_10]
207958:  MOV             R0, R4; c
20795A:  BLX             btowc
20795E:  MOV             R4, R0
207960:  MOV             R0, SP
207962:  BL              sub_20E0DC
207966:  LDR             R0, [SP,#0x10+var_C]
207968:  LDR             R1, =(__stack_chk_guard_ptr - 0x20796E)
20796A:  ADD             R1, PC; __stack_chk_guard_ptr
20796C:  LDR             R1, [R1]; __stack_chk_guard
20796E:  LDR             R1, [R1]
207970:  CMP             R1, R0
207972:  ITT EQ
207974:  MOVEQ           R0, R4
207976:  POPEQ           {R2-R4,R6,R7,PC}
207978:  BLX             __stack_chk_fail
