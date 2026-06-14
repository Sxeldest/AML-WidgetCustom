; =========================================================
; Game Engine Function: sub_1F29A8
; Address            : 0x1F29A8 - 0x1F29D4
; =========================================================

1F29A8:  PUSH            {R5-R7,LR}
1F29AA:  ADD             R7, SP, #8
1F29AC:  MOV             R2, R1
1F29AE:  MOV             R1, R0
1F29B0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F29B6)
1F29B2:  ADD             R0, PC; __stack_chk_guard_ptr
1F29B4:  LDR             R0, [R0]; __stack_chk_guard
1F29B6:  LDR             R0, [R0]
1F29B8:  STR             R0, [SP,#8+var_4]
1F29BA:  MOV             R0, SP
1F29BC:  BL              sub_1F3320
1F29C0:  LDR             R1, [SP,#8+var_4]
1F29C2:  LDR             R2, =(__stack_chk_guard_ptr - 0x1F29C8)
1F29C4:  ADD             R2, PC; __stack_chk_guard_ptr
1F29C6:  LDR             R2, [R2]; __stack_chk_guard
1F29C8:  LDR             R2, [R2]
1F29CA:  CMP             R2, R1
1F29CC:  IT EQ
1F29CE:  POPEQ           {R2,R3,R7,PC}
1F29D0:  BLX             __stack_chk_fail
