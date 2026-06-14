; =========================================================
; Game Engine Function: sub_207F50
; Address            : 0x207F50 - 0x207FA4
; =========================================================

207F50:  PUSH            {R4-R7,LR}
207F52:  ADD             R7, SP, #0xC
207F54:  PUSH.W          {R8}
207F58:  SUB             SP, SP, #8
207F5A:  MOV             R4, R0
207F5C:  LDR             R0, =(__stack_chk_guard_ptr - 0x207F66)
207F5E:  MOV             R8, R3
207F60:  MOV             R5, R2
207F62:  ADD             R0, PC; __stack_chk_guard_ptr
207F64:  MOV             R6, R1
207F66:  LDR             R0, [R0]; __stack_chk_guard
207F68:  LDR             R0, [R0]
207F6A:  STR             R0, [SP,#0x18+var_14]
207F6C:  LDR             R0, [R7,#arg_0]
207F6E:  BL              sub_21FCA0
207F72:  STR             R0, [SP,#0x18+var_18]
207F74:  MOV             R0, R4
207F76:  MOV             R1, R6
207F78:  MOV             R2, R5
207F7A:  MOV             R3, R8
207F7C:  BL              sub_21FE54
207F80:  MOV             R4, R0
207F82:  MOV             R0, SP
207F84:  BL              sub_20E0DC
207F88:  LDR             R0, [SP,#0x18+var_14]
207F8A:  LDR             R1, =(__stack_chk_guard_ptr - 0x207F90)
207F8C:  ADD             R1, PC; __stack_chk_guard_ptr
207F8E:  LDR             R1, [R1]; __stack_chk_guard
207F90:  LDR             R1, [R1]
207F92:  CMP             R1, R0
207F94:  ITTTT EQ
207F96:  MOVEQ           R0, R4
207F98:  ADDEQ           SP, SP, #8
207F9A:  POPEQ.W         {R8}
207F9E:  POPEQ           {R4-R7,PC}
207FA0:  BLX             __stack_chk_fail
