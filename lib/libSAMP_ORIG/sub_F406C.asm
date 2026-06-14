; =========================================================
; Game Engine Function: sub_F406C
; Address            : 0xF406C - 0xF40C0
; =========================================================

F406C:  PUSH            {R4-R7,LR}
F406E:  ADD             R7, SP, #0xC
F4070:  PUSH.W          {R8}
F4074:  SUB             SP, SP, #8
F4076:  MOV             R4, R0
F4078:  LDR             R0, =(__stack_chk_guard_ptr - 0xF4082)
F407A:  MOV             R8, R3
F407C:  MOV             R5, R2
F407E:  ADD             R0, PC; __stack_chk_guard_ptr
F4080:  MOV             R6, R1
F4082:  LDR             R0, [R0]; __stack_chk_guard
F4084:  LDR             R0, [R0]
F4086:  STR             R0, [SP,#0x18+var_14]
F4088:  LDR             R0, [R7,#arg_0]
F408A:  BLX             uselocale
F408E:  STR             R0, [SP,#0x18+var_18]
F4090:  MOV             R0, R4; dst
F4092:  MOV             R1, R6; src
F4094:  MOV             R2, R5; len
F4096:  MOV             R3, R8; ps
F4098:  BLX             mbsrtowcs
F409C:  MOV             R4, R0
F409E:  MOV             R0, SP
F40A0:  BL              sub_F61EC
F40A4:  LDR             R0, [SP,#0x18+var_14]
F40A6:  LDR             R1, =(__stack_chk_guard_ptr - 0xF40AC)
F40A8:  ADD             R1, PC; __stack_chk_guard_ptr
F40AA:  LDR             R1, [R1]; __stack_chk_guard
F40AC:  LDR             R1, [R1]
F40AE:  CMP             R1, R0
F40B0:  ITTTT EQ
F40B2:  MOVEQ           R0, R4
F40B4:  ADDEQ           SP, SP, #8
F40B6:  POPEQ.W         {R8}
F40BA:  POPEQ           {R4-R7,PC}
F40BC:  BLX             __stack_chk_fail
