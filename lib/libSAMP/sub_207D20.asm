; =========================================================
; Game Engine Function: sub_207D20
; Address            : 0x207D20 - 0x207D70
; =========================================================

207D20:  PUSH            {R4-R7,LR}
207D22:  ADD             R7, SP, #0xC
207D24:  PUSH.W          {R11}
207D28:  SUB             SP, SP, #8
207D2A:  MOV             R6, R0
207D2C:  LDR             R0, =(__stack_chk_guard_ptr - 0x207D36)
207D2E:  MOV             R4, R2
207D30:  MOV             R5, R1
207D32:  ADD             R0, PC; __stack_chk_guard_ptr
207D34:  LDR             R0, [R0]; __stack_chk_guard
207D36:  LDR             R0, [R0]
207D38:  STR             R0, [SP,#0x18+var_14]
207D3A:  MOV             R0, R3
207D3C:  BL              sub_21FCA0
207D40:  STR             R0, [SP,#0x18+var_18]
207D42:  MOV             R0, R6
207D44:  MOV             R1, R5
207D46:  MOV             R2, R4
207D48:  BL              sub_21FFA0
207D4C:  MOV             R4, R0
207D4E:  MOV             R0, SP
207D50:  BL              sub_20E0DC
207D54:  LDR             R0, [SP,#0x18+var_14]
207D56:  LDR             R1, =(__stack_chk_guard_ptr - 0x207D5C)
207D58:  ADD             R1, PC; __stack_chk_guard_ptr
207D5A:  LDR             R1, [R1]; __stack_chk_guard
207D5C:  LDR             R1, [R1]
207D5E:  CMP             R1, R0
207D60:  ITTTT EQ
207D62:  MOVEQ           R0, R4
207D64:  ADDEQ           SP, SP, #8
207D66:  POPEQ.W         {R11}
207D6A:  POPEQ           {R4-R7,PC}
207D6C:  BLX             __stack_chk_fail
