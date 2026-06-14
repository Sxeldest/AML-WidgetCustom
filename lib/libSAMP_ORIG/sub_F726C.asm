; =========================================================
; Game Engine Function: sub_F726C
; Address            : 0xF726C - 0xF72B4
; =========================================================

F726C:  PUSH            {R4-R7,LR}
F726E:  ADD             R7, SP, #0xC
F7270:  PUSH.W          {R11}
F7274:  SUB             SP, SP, #8
F7276:  STR             R2, [SP,#0x18+var_18]
F7278:  MOV             R5, R0
F727A:  LDR             R0, =(__stack_chk_guard_ptr - 0xF7284)
F727C:  MOV             R4, R1
F727E:  MOV             R6, SP
F7280:  ADD             R0, PC; __stack_chk_guard_ptr
F7282:  LDR             R0, [R0]; __stack_chk_guard
F7284:  LDR             R0, [R0]
F7286:  STR             R0, [SP,#0x18+var_14]
F7288:  CMP             R5, R4
F728A:  BEQ             loc_F7298
F728C:  LDRB.W          R1, [R5],#1
F7290:  MOV             R0, R6
F7292:  BL              sub_E150C
F7296:  B               loc_F7288
F7298:  LDR             R0, [SP,#0x18+var_18]
F729A:  LDR             R1, [SP,#0x18+var_14]
F729C:  LDR             R2, =(__stack_chk_guard_ptr - 0xF72A2)
F729E:  ADD             R2, PC; __stack_chk_guard_ptr
F72A0:  LDR             R2, [R2]; __stack_chk_guard
F72A2:  LDR             R2, [R2]
F72A4:  CMP             R2, R1
F72A6:  ITTT EQ
F72A8:  ADDEQ           SP, SP, #8
F72AA:  POPEQ.W         {R11}
F72AE:  POPEQ           {R4-R7,PC}
F72B0:  BLX             __stack_chk_fail
