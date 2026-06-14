; =========================================================
; Game Engine Function: sub_F005C
; Address            : 0xF005C - 0xF00B0
; =========================================================

F005C:  PUSH            {R4-R7,LR}
F005E:  ADD             R7, SP, #0xC
F0060:  PUSH.W          {R8}
F0064:  SUB             SP, SP, #8
F0066:  MOV             R4, R0
F0068:  LDR             R0, =(__stack_chk_guard_ptr - 0xF0072)
F006A:  MOV             R8, R3
F006C:  MOV             R5, R2
F006E:  ADD             R0, PC; __stack_chk_guard_ptr
F0070:  MOV             R6, R1
F0072:  LDR             R0, [R0]; __stack_chk_guard
F0074:  LDR             R0, [R0]
F0076:  STR             R0, [SP,#0x18+var_14]
F0078:  LDR             R0, [R7,#arg_0]
F007A:  BLX             uselocale
F007E:  STR             R0, [SP,#0x18+var_18]
F0080:  MOV             R0, R4; pwc
F0082:  MOV             R1, R6; s
F0084:  MOV             R2, R5; n
F0086:  MOV             R3, R8; p
F0088:  BLX             mbrtowc
F008C:  MOV             R4, R0
F008E:  MOV             R0, SP
F0090:  BL              sub_F61EC
F0094:  LDR             R0, [SP,#0x18+var_14]
F0096:  LDR             R1, =(__stack_chk_guard_ptr - 0xF009C)
F0098:  ADD             R1, PC; __stack_chk_guard_ptr
F009A:  LDR             R1, [R1]; __stack_chk_guard
F009C:  LDR             R1, [R1]
F009E:  CMP             R1, R0
F00A0:  ITTTT EQ
F00A2:  MOVEQ           R0, R4
F00A4:  ADDEQ           SP, SP, #8
F00A6:  POPEQ.W         {R8}
F00AA:  POPEQ           {R4-R7,PC}
F00AC:  BLX             __stack_chk_fail
