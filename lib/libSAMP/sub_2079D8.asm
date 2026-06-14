; =========================================================
; Game Engine Function: sub_2079D8
; Address            : 0x2079D8 - 0x207A14
; =========================================================

2079D8:  PUSH            {R2-R4,R6,R7,LR}
2079DA:  ADD             R7, SP, #0x10
2079DC:  MOV             R4, R0
2079DE:  LDR             R0, =(__stack_chk_guard_ptr - 0x2079E4)
2079E0:  ADD             R0, PC; __stack_chk_guard_ptr
2079E2:  LDR             R0, [R0]; __stack_chk_guard
2079E4:  LDR             R0, [R0]
2079E6:  STR             R0, [SP,#0x10+var_C]
2079E8:  MOV             R0, R1
2079EA:  BL              sub_21FCA0
2079EE:  STR             R0, [SP,#0x10+var_10]
2079F0:  MOV             R0, R4; c
2079F2:  BLX             wctob
2079F6:  MOV             R4, R0
2079F8:  MOV             R0, SP
2079FA:  BL              sub_20E0DC
2079FE:  LDR             R0, [SP,#0x10+var_C]
207A00:  LDR             R1, =(__stack_chk_guard_ptr - 0x207A06)
207A02:  ADD             R1, PC; __stack_chk_guard_ptr
207A04:  LDR             R1, [R1]; __stack_chk_guard
207A06:  LDR             R1, [R1]
207A08:  CMP             R1, R0
207A0A:  ITT EQ
207A0C:  MOVEQ           R0, R4
207A0E:  POPEQ           {R2-R4,R6,R7,PC}
207A10:  BLX             __stack_chk_fail
